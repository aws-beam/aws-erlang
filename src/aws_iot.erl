%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT
%%
%% IoT provides secure, bi-directional communication between
%% Internet-connected devices (such as sensors, actuators, embedded devices,
%% or smart appliances) and the Amazon Web Services cloud.
%%
%% You can discover your custom IoT-Data endpoint to communicate with,
%% configure rules for data processing and integration with other services,
%% organize resources associated with each device (Registry), configure
%% logging, and create and manage policies and credentials to authenticate
%% devices.
%%
%% The service endpoints that expose this API are listed in Amazon Web
%% Services IoT Core Endpoints and Quotas. You must use the endpoint for the
%% region that has the resources you want to access.
%%
%% The service name used by Amazon Web Services Signature Version 4 to sign
%% the request is: execute-api.
%%
%% For more information about how IoT works, see the Developer Guide.
%%
%% For information about how to use the credentials provider for IoT, see
%% Authorizing Direct Calls to Amazon Web Services Services.
-module(aws_iot).

-export([accept_certificate_transfer/3,
         accept_certificate_transfer/4,
         add_thing_to_billing_group/2,
         add_thing_to_billing_group/3,
         add_thing_to_thing_group/2,
         add_thing_to_thing_group/3,
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
         enable_topic_rule/3,
         enable_topic_rule/4,
         get_behavior_model_training_summaries/1,
         get_behavior_model_training_summaries/3,
         get_behavior_model_training_summaries/4,
         get_buckets_aggregation/2,
         get_buckets_aggregation/3,
         get_cardinality/2,
         get_cardinality/3,
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
         list_certificates/1,
         list_certificates/3,
         list_certificates/4,
         list_certificates_by_ca/2,
         list_certificates_by_ca/4,
         list_certificates_by_ca/5,
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
         list_provisioning_template_versions/2,
         list_provisioning_template_versions/4,
         list_provisioning_template_versions/5,
         list_provisioning_templates/1,
         list_provisioning_templates/3,
         list_provisioning_templates/4,
         list_role_aliases/1,
         list_role_aliases/3,
         list_role_aliases/4,
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
         update_topic_rule_destination/2,
         update_topic_rule_destination/3,
         validate_security_profile_behaviors/2,
         validate_security_profile_behaviors/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a pending certificate transfer.
%%
%% The default state of the certificate is INACTIVE.
%%
%% To check for pending certificate transfers, call `ListCertificates' to
%% enumerate your certificates.
%%
%% Requires permission to access the AcceptCertificateTransfer action.
accept_certificate_transfer(Client, CertificateId, Input) ->
    accept_certificate_transfer(Client, CertificateId, Input, []).
accept_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/accept-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the AddThingToBillingGroup action.
add_thing_to_billing_group(Client, Input) ->
    add_thing_to_billing_group(Client, Input, []).
add_thing_to_billing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/billing-groups/addThingToBillingGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a thing to a thing group.
%%
%% Requires permission to access the AddThingToThingGroup action.
add_thing_to_thing_group(Client, Input) ->
    add_thing_to_thing_group(Client, Input, []).
add_thing_to_thing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/addThingToThingGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group with a continuous job.
%%
%% The following criteria must be met:
%%
%% <ul> <li> The job must have been created with the `targetSelection' field
%% set to "CONTINUOUS".
%%
%% </li> <li> The job status must currently be "IN_PROGRESS".
%%
%% </li> <li> The total number of targets associated with a job must not
%% exceed 100.
%%
%% </li> </ul> Requires permission to access the AssociateTargetsWithJob
%% action.
associate_targets_with_job(Client, JobId, Input) ->
    associate_targets_with_job(Client, JobId, Input, []).
associate_targets_with_job(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/targets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% or other credential).
%%
%% Requires permission to access the AttachPolicy action.
attach_policy(Client, PolicyName, Input) ->
    attach_policy(Client, PolicyName, Input, []).
attach_policy(Client, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/target-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified policy to the specified principal (certificate
%% or other credential).
%%
%% Note: This action is deprecated. Please use `AttachPolicy' instead.
%%
%% Requires permission to access the AttachPrincipalPolicy action.
attach_principal_policy(Client, PolicyName, Input) ->
    attach_principal_policy(Client, PolicyName, Input, []).
attach_principal_policy(Client, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/principal-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Each thing group or account can have up to five security profiles
%% associated with it.
%%
%% Requires permission to access the AttachSecurityProfile action.
attach_security_profile(Client, SecurityProfileName, Input) ->
    attach_security_profile(Client, SecurityProfileName, Input, []).
attach_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = put,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% A principal can be X.509 certificates, IAM users, groups, and roles,
%% Amazon Cognito identities or federated identities.
%%
%% Requires permission to access the AttachThingPrincipal action.
attach_thing_principal(Client, ThingName, Input) ->
    attach_thing_principal(Client, ThingName, Input, []).
attach_thing_principal(Client, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amzn-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a mitigation action task that is in progress.
%%
%% If the task is not in progress, an InvalidRequestException occurs.
%%
%% Requires permission to access the CancelAuditMitigationActionsTask action.
cancel_audit_mitigation_actions_task(Client, TaskId, Input) ->
    cancel_audit_mitigation_actions_task(Client, TaskId, Input, []).
cancel_audit_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% progress, an "InvalidRequestException" occurs.
%%
%% Requires permission to access the CancelAuditTask action.
cancel_audit_task(Client, TaskId, Input) ->
    cancel_audit_task(Client, TaskId, Input, []).
cancel_audit_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/audit/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a pending transfer for the specified certificate.
%%
%% Note Only the transfer source account can use this operation to cancel a
%% transfer. (Transfer destinations can use `RejectCertificateTransfer'
%% instead.) After transfer, IoT returns the certificate to the source
%% account in the INACTIVE state. After the destination account has accepted
%% the transfer, the transfer cannot be cancelled.
%%
%% After a certificate transfer is cancelled, the status of the certificate
%% changes from PENDING_TRANSFER to INACTIVE.
%%
%% Requires permission to access the CancelCertificateTransfer action.
cancel_certificate_transfer(Client, CertificateId, Input) ->
    cancel_certificate_transfer(Client, CertificateId, Input, []).
cancel_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/cancel-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a Device Defender ML Detect mitigation action.
%%
%% Requires permission to access the CancelDetectMitigationActionsTask
%% action.
cancel_detect_mitigation_actions_task(Client, TaskId, Input) ->
    cancel_detect_mitigation_actions_task(Client, TaskId, Input, []).
cancel_detect_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a job.
%%
%% Requires permission to access the CancelJob action.
cancel_job(Client, JobId, Input) ->
    cancel_job(Client, JobId, Input, []).
cancel_job(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CancelJobExecution action.
cancel_job_execution(Client, JobId, ThingName, Input) ->
    cancel_job_execution(Client, JobId, ThingName, Input, []).
cancel_job_execution(Client, JobId, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the ClearDefaultAuthorizer action.
clear_default_authorizer(Client, Input) ->
    clear_default_authorizer(Client, Input, []).
clear_default_authorizer(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Confirms a topic rule destination.
%%
%% When you create a rule requiring a destination, IoT sends a confirmation
%% message to the endpoint or base address you specify. The message includes
%% a token which you pass back when calling `ConfirmTopicRuleDestination' to
%% confirm that you own or have access to the endpoint.
%%
%% Requires permission to access the ConfirmTopicRuleDestination action.
confirm_topic_rule_destination(Client, ConfirmationToken)
  when is_map(Client) ->
    confirm_topic_rule_destination(Client, ConfirmationToken, #{}, #{}).

confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap, []).

confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/confirmdestination/", aws_util:encode_multi_segment_uri(ConfirmationToken), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a Device Defender audit suppression.
%%
%% Requires permission to access the CreateAuditSuppression action.
create_audit_suppression(Client, Input) ->
    create_audit_suppression(Client, Input, []).
create_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/create"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an authorizer.
%%
%% Requires permission to access the CreateAuthorizer action.
create_authorizer(Client, AuthorizerName, Input) ->
    create_authorizer(Client, AuthorizerName, Input, []).
create_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = post,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a billing group.
%%
%% Requires permission to access the CreateBillingGroup action.
create_billing_group(Client, BillingGroupName, Input) ->
    create_billing_group(Client, BillingGroupName, Input, []).
create_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Note: The CSR must include a public key that is either an RSA key with a
%% length of at least 2048 bits or an ECC key from NIST P-256, NIST P-384, or
%% NIST P-512 curves. For supported certificates, consult Certificate signing
%% algorithms supported by IoT.
%%
%% Note: Reusing the same certificate signing request (CSR) results in a
%% distinct certificate.
%%
%% Requires permission to access the CreateCertificateFromCsr action.
%%
%% You can create multiple certificates in a batch by creating a directory,
%% copying multiple .csr files into that directory, and then specifying that
%% directory on the command line. The following commands show how to create a
%% batch of certificates given a batch of CSRs.
%%
%% Assuming a set of CSRs are located inside of the directory
%% my-csr-directory:
%%
%% On Linux and OS X, the command is:
%%
%% $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
%% --certificate-signing-request file://my-csr-directory/{}
%%
%% This command lists all of the CSRs in my-csr-directory and pipes each CSR
%% file name to the aws iot create-certificate-from-csr Amazon Web Services
%% CLI command to create a certificate for the corresponding CSR.
%%
%% The aws iot create-certificate-from-csr part of the command can also be
%% run in parallel to speed up the certificate creation process:
%%
%% $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
%% create-certificate-from-csr --certificate-signing-request
%% file://my-csr-directory/{}
%%
%% On Windows PowerShell, the command to create certificates for all CSRs in
%% my-csr-directory is:
%%
%% > ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
%% --certificate-signing-request file://my-csr-directory/$_}
%%
%% On a Windows command prompt, the command to create certificates for all
%% CSRs in my-csr-directory is:
%%
%% > forfiles /p my-csr-directory /c "cmd /c aws iot
%% create-certificate-from-csr --certificate-signing-request file://@path"
create_certificate_from_csr(Client, Input) ->
    create_certificate_from_csr(Client, Input, []).
create_certificate_from_csr(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this API to define a Custom Metric published by your devices to
%% Device Defender.
%%
%% Requires permission to access the CreateCustomMetric action.
create_custom_metric(Client, MetricName, Input) ->
    create_custom_metric(Client, MetricName, Input, []).
create_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = post,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CreateDimension action.
create_dimension(Client, Name, Input) ->
    create_dimension(Client, Name, Input, []).
create_dimension(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a domain configuration.
%%
%% Requires permission to access the CreateDomainConfiguration action.
create_domain_configuration(Client, DomainConfigurationName, Input) ->
    create_domain_configuration(Client, DomainConfigurationName, Input, []).
create_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dynamic thing group.
%%
%% Requires permission to access the CreateDynamicThingGroup action.
create_dynamic_thing_group(Client, ThingGroupName, Input) ->
    create_dynamic_thing_group(Client, ThingGroupName, Input, []).
create_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a fleet metric.
%%
%% Requires permission to access the CreateFleetMetric action.
create_fleet_metric(Client, MetricName, Input) ->
    create_fleet_metric(Client, MetricName, Input, []).
create_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = put,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a job.
%%
%% Requires permission to access the CreateJob action.
create_job(Client, JobId, Input) ->
    create_job(Client, JobId, Input, []).
create_job(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a job template.
%%
%% Requires permission to access the CreateJobTemplate action.
create_job_template(Client, JobTemplateId, Input) ->
    create_job_template(Client, JobTemplateId, Input, []).
create_job_template(Client, JobTemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a 2048-bit RSA key pair and issues an X.509 certificate using
%% the issued public key.
%%
%% You can also call `CreateKeysAndCertificate' over MQTT from a device, for
%% more information, see Provisioning MQTT API.
%%
%% Note This is the only time IoT issues the private key for this
%% certificate, so it is important to keep it in a secure location.
%%
%% Requires permission to access the CreateKeysAndCertificate action.
create_keys_and_certificate(Client, Input) ->
    create_keys_and_certificate(Client, Input, []).
create_keys_and_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/keys-and-certificate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% names. For more information, see Mitigation actions. Each mitigation
%% action can apply only one type of change.
%%
%% Requires permission to access the CreateMitigationAction action.
create_mitigation_action(Client, ActionName, Input) ->
    create_mitigation_action(Client, ActionName, Input, []).
create_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = post,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an IoT OTA update on a target group of things or groups.
%%
%% Requires permission to access the CreateOTAUpdate action.
create_ota_update(Client, OtaUpdateId, Input) ->
    create_ota_update(Client, OtaUpdateId, Input, []).
create_ota_update(Client, OtaUpdateId, Input0, Options0) ->
    Method = post,
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an IoT policy.
%%
%% The created policy is the default version for the policy. This operation
%% creates a policy version with a version identifier of 1 and sets 1 as the
%% policy's default version.
%%
%% Requires permission to access the CreatePolicy action.
create_policy(Client, PolicyName, Input) ->
    create_policy(Client, PolicyName, Input, []).
create_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the specified IoT policy.
%%
%% To update a policy, create a new policy version. A managed policy can have
%% up to five versions. If the policy has five versions, you must use
%% `DeletePolicyVersion' to delete an existing version before you create a
%% new one.
%%
%% Optionally, you can set the new version as the policy's default version.
%% The default version is the operative version (that is, the version that is
%% in effect for the certificates to which the policy is attached).
%%
%% Requires permission to access the CreatePolicyVersion action.
create_policy_version(Client, PolicyName, Input) ->
    create_policy_version(Client, PolicyName, Input, []).
create_policy_version(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CreateProvisioningClaim action.
create_provisioning_claim(Client, TemplateName, Input) ->
    create_provisioning_claim(Client, TemplateName, Input, []).
create_provisioning_claim(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/provisioning-claim"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a fleet provisioning template.
%%
%% Requires permission to access the CreateProvisioningTemplate action.
create_provisioning_template(Client, Input) ->
    create_provisioning_template(Client, Input, []).
create_provisioning_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of a fleet provisioning template.
%%
%% Requires permission to access the CreateProvisioningTemplateVersion
%% action.
create_provisioning_template_version(Client, TemplateName, Input) ->
    create_provisioning_template_version(Client, TemplateName, Input, []).
create_provisioning_template_version(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CreateRoleAlias action.
create_role_alias(Client, RoleAlias, Input) ->
    create_role_alias(Client, RoleAlias, Input, []).
create_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = post,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a scheduled audit that is run at a specified time interval.
%%
%% Requires permission to access the CreateScheduledAudit action.
create_scheduled_audit(Client, ScheduledAuditName, Input) ->
    create_scheduled_audit(Client, ScheduledAuditName, Input, []).
create_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = post,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Device Defender security profile.
%%
%% Requires permission to access the CreateSecurityProfile action.
create_security_profile(Client, SecurityProfileName, Input) ->
    create_security_profile(Client, SecurityProfileName, Input, []).
create_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = post,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% A stream transports data bytes in chunks or blocks packaged as MQTT
%% messages from a source like S3. You can have one or more files associated
%% with a stream.
%%
%% Requires permission to access the CreateStream action.
create_stream(Client, StreamId, Input) ->
    create_stream(Client, StreamId, Input, []).
create_stream(Client, StreamId, Input0, Options0) ->
    Method = post,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a thing record in the registry.
%%
%% If this call is made multiple times using the same thing name and
%% configuration, the call will succeed. If this call is made with the same
%% thing name but different configuration a `ResourceAlreadyExistsException'
%% is thrown.
%%
%% This is a control plane operation. See Authorization for information about
%% authorizing control plane actions.
%%
%% Requires permission to access the CreateThing action.
create_thing(Client, ThingName, Input) ->
    create_thing(Client, ThingName, Input, []).
create_thing(Client, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a thing group.
%%
%% This is a control plane operation. See Authorization for information about
%% authorizing control plane actions.
%%
%% Requires permission to access the CreateThingGroup action.
create_thing_group(Client, ThingGroupName, Input) ->
    create_thing_group(Client, ThingGroupName, Input, []).
create_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new thing type.
%%
%% Requires permission to access the CreateThingType action.
create_thing_type(Client, ThingTypeName, Input) ->
    create_thing_type(Client, ThingTypeName, Input, []).
create_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CreateTopicRule action.
create_topic_rule(Client, RuleName, Input) ->
    create_topic_rule(Client, RuleName, Input, []).
create_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the CreateTopicRuleDestination action.
create_topic_rule_destination(Client, Input) ->
    create_topic_rule_destination(Client, Input, []).
create_topic_rule_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Any configuration data you entered is deleted and all audit checks are
%% reset to disabled.
%%
%% Requires permission to access the DeleteAccountAuditConfiguration action.
delete_account_audit_configuration(Client, Input) ->
    delete_account_audit_configuration(Client, Input, []).
delete_account_audit_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteScheduledAudits">>, <<"deleteScheduledAudits">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Defender audit suppression.
%%
%% Requires permission to access the DeleteAuditSuppression action.
delete_audit_suppression(Client, Input) ->
    delete_audit_suppression(Client, Input, []).
delete_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an authorizer.
%%
%% Requires permission to access the DeleteAuthorizer action.
delete_authorizer(Client, AuthorizerName, Input) ->
    delete_authorizer(Client, AuthorizerName, Input, []).
delete_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = delete,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the billing group.
%%
%% Requires permission to access the DeleteBillingGroup action.
delete_billing_group(Client, BillingGroupName, Input) ->
    delete_billing_group(Client, BillingGroupName, Input, []).
delete_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteCACertificate action.
delete_ca_certificate(Client, CertificateId, Input) ->
    delete_ca_certificate(Client, CertificateId, Input, []).
delete_ca_certificate(Client, CertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% to it or if its status is set to ACTIVE. To delete a certificate, first
%% use the `DetachPolicy' action to detach all policies. Next, use the
%% `UpdateCertificate' action to set the certificate to the INACTIVE status.
%%
%% Requires permission to access the DeleteCertificate action.
delete_certificate(Client, CertificateId, Input) ->
    delete_certificate(Client, CertificateId, Input, []).
delete_certificate(Client, CertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"forceDelete">>, <<"forceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Defender detect custom metric.
%%
%% Requires permission to access the DeleteCustomMetric action.
%%
%% Before you can delete a custom metric, you must first remove the custom
%% metric from all security profiles it's a part of. The security profile
%% associated with the custom metric can be found using the
%% ListSecurityProfiles API with `metricName' set to your custom metric name.
delete_custom_metric(Client, MetricName, Input) ->
    delete_custom_metric(Client, MetricName, Input, []).
delete_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = delete,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteDimension action.
delete_dimension(Client, Name, Input) ->
    delete_dimension(Client, Name, Input, []).
delete_dimension(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified domain configuration.
%%
%% Requires permission to access the DeleteDomainConfiguration action.
delete_domain_configuration(Client, DomainConfigurationName, Input) ->
    delete_domain_configuration(Client, DomainConfigurationName, Input, []).
delete_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = delete,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dynamic thing group.
%%
%% Requires permission to access the DeleteDynamicThingGroup action.
delete_dynamic_thing_group(Client, ThingGroupName, Input) ->
    delete_dynamic_thing_group(Client, ThingGroupName, Input, []).
delete_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteFleetMetric action.
delete_fleet_metric(Client, MetricName, Input) ->
    delete_fleet_metric(Client, MetricName, Input, []).
delete_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = delete,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% created for the job and various other factors. While the job is being
%% deleted, the status of the job will be shown as "DELETION_IN_PROGRESS".
%% Attempting to delete or cancel a job whose status is already
%% "DELETION_IN_PROGRESS" will result in an error.
%%
%% Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a
%% LimitExceededException will occur.
%%
%% Requires permission to access the DeleteJob action.
delete_job(Client, JobId, Input) ->
    delete_job(Client, JobId, Input, []).
delete_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteJobExecution action.
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input) ->
    delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input, []).
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), "/executionNumber/", aws_util:encode_uri(ExecutionNumber), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_job_template(Client, JobTemplateId, Input) ->
    delete_job_template(Client, JobTemplateId, Input, []).
delete_job_template(Client, JobTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteMitigationAction action.
delete_mitigation_action(Client, ActionName, Input) ->
    delete_mitigation_action(Client, ActionName, Input, []).
delete_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = delete,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an OTA update.
%%
%% Requires permission to access the DeleteOTAUpdate action.
delete_ota_update(Client, OtaUpdateId, Input) ->
    delete_ota_update(Client, OtaUpdateId, Input, []).
delete_ota_update(Client, OtaUpdateId, Input0, Options0) ->
    Method = delete,
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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

%% @doc Deletes the specified policy.
%%
%% A policy cannot be deleted if it has non-default versions or it is
%% attached to any certificate.
%%
%% To delete a policy, use the `DeletePolicyVersion' action to delete all
%% non-default versions of the policy; use the `DetachPolicy' action to
%% detach the policy from any certificate; and then use the DeletePolicy
%% action to delete the policy.
%%
%% When a policy is deleted using DeletePolicy, its default version is
%% deleted with it.
%%
%% Because of the distributed nature of Amazon Web Services, it can take up
%% to five minutes after a policy is detached before it's ready to be
%% deleted.
%%
%% Requires permission to access the DeletePolicy action.
delete_policy(Client, PolicyName, Input) ->
    delete_policy(Client, PolicyName, Input, []).
delete_policy(Client, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified version of the specified policy.
%%
%% You cannot delete the default version of a policy using this action. To
%% delete the default version of a policy, use `DeletePolicy'. To find out
%% which version of a policy is marked as the default version, use
%% ListPolicyVersions.
%%
%% Requires permission to access the DeletePolicyVersion action.
delete_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    delete_policy_version(Client, PolicyName, PolicyVersionId, Input, []).
delete_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a fleet provisioning template.
%%
%% Requires permission to access the DeleteProvisioningTemplate action.
delete_provisioning_template(Client, TemplateName, Input) ->
    delete_provisioning_template(Client, TemplateName, Input, []).
delete_provisioning_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a fleet provisioning template version.
%%
%% Requires permission to access the DeleteProvisioningTemplateVersion
%% action.
delete_provisioning_template_version(Client, TemplateName, VersionId, Input) ->
    delete_provisioning_template_version(Client, TemplateName, VersionId, Input, []).
delete_provisioning_template_version(Client, TemplateName, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CA certificate registration code.
%%
%% Requires permission to access the DeleteRegistrationCode action.
delete_registration_code(Client, Input) ->
    delete_registration_code(Client, Input, []).
delete_registration_code(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/registrationcode"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a role alias
%%
%% Requires permission to access the DeleteRoleAlias action.
delete_role_alias(Client, RoleAlias, Input) ->
    delete_role_alias(Client, RoleAlias, Input, []).
delete_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = delete,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a scheduled audit.
%%
%% Requires permission to access the DeleteScheduledAudit action.
delete_scheduled_audit(Client, ScheduledAuditName, Input) ->
    delete_scheduled_audit(Client, ScheduledAuditName, Input, []).
delete_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Defender security profile.
%%
%% Requires permission to access the DeleteSecurityProfile action.
delete_security_profile(Client, SecurityProfileName, Input) ->
    delete_security_profile(Client, SecurityProfileName, Input, []).
delete_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteStream action.
delete_stream(Client, StreamId, Input) ->
    delete_stream(Client, StreamId, Input, []).
delete_stream(Client, StreamId, Input0, Options0) ->
    Method = delete,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified thing.
%%
%% Returns successfully with no error if the deletion is successful or you
%% specify a thing that doesn't exist.
%%
%% Requires permission to access the DeleteThing action.
delete_thing(Client, ThingName, Input) ->
    delete_thing(Client, ThingName, Input, []).
delete_thing(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DeleteThingGroup action.
delete_thing_group(Client, ThingGroupName, Input) ->
    delete_thing_group(Client, ThingGroupName, Input, []).
delete_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% You cannot delete a thing type if it has things associated with it. To
%% delete a thing type, first mark it as deprecated by calling
%% `DeprecateThingType', then remove any associated things by calling
%% `UpdateThing' to change the thing type on any associated thing, and
%% finally use `DeleteThingType' to delete the thing type.
%%
%% Requires permission to access the DeleteThingType action.
delete_thing_type(Client, ThingTypeName, Input) ->
    delete_thing_type(Client, ThingTypeName, Input, []).
delete_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the rule.
%%
%% Requires permission to access the DeleteTopicRule action.
delete_topic_rule(Client, RuleName, Input) ->
    delete_topic_rule(Client, RuleName, Input, []).
delete_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a topic rule destination.
%%
%% Requires permission to access the DeleteTopicRuleDestination action.
delete_topic_rule_destination(Client, Arn, Input) ->
    delete_topic_rule_destination(Client, Arn, Input, []).
delete_topic_rule_destination(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_multi_segment_uri(Arn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a logging level.
%%
%% Requires permission to access the DeleteV2LoggingLevel action.
delete_v2_logging_level(Client, Input) ->
    delete_v2_logging_level(Client, Input, []).
delete_v2_logging_level(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% You can not associate new things with deprecated thing type.
%%
%% Requires permission to access the DeprecateThingType action.
deprecate_thing_type(Client, ThingTypeName, Input) ->
    deprecate_thing_type(Client, ThingTypeName, Input, []).
deprecate_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), "/deprecate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% are enabled or disabled.
%%
%% Requires permission to access the DescribeAccountAuditConfiguration
%% action.
describe_account_audit_configuration(Client)
  when is_map(Client) ->
    describe_account_audit_configuration(Client, #{}, #{}).

describe_account_audit_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_audit_configuration(Client, QueryMap, HeadersMap, []).

describe_account_audit_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a single audit finding.
%%
%% Properties include the reason for noncompliance, the severity of the
%% issue, and the start time when the audit that returned the finding.
%%
%% Requires permission to access the DescribeAuditFinding action.
describe_audit_finding(Client, FindingId)
  when is_map(Client) ->
    describe_audit_finding(Client, FindingId, #{}, #{}).

describe_audit_finding(Client, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_finding(Client, FindingId, QueryMap, HeadersMap, []).

describe_audit_finding(Client, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/findings/", aws_util:encode_uri(FindingId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an audit mitigation task that is used to apply
%% mitigation actions to a set of audit findings.
%%
%% Properties include the actions being applied, the audit checks to which
%% they're being applied, the task status, and aggregated task statistics.
describe_audit_mitigation_actions_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_mitigation_actions_task(Client, TaskId, #{}, #{}).

describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, []).

describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender audit suppression.
describe_audit_suppression(Client, Input) ->
    describe_audit_suppression(Client, Input, []).
describe_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/describe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender audit.
%%
%% Requires permission to access the DescribeAuditTask action.
describe_audit_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_task(Client, TaskId, #{}, #{}).

describe_audit_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_task(Client, TaskId, QueryMap, HeadersMap, []).

describe_audit_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an authorizer.
%%
%% Requires permission to access the DescribeAuthorizer action.
describe_authorizer(Client, AuthorizerName)
  when is_map(Client) ->
    describe_authorizer(Client, AuthorizerName, #{}, #{}).

describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap, []).

describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a billing group.
%%
%% Requires permission to access the DescribeBillingGroup action.
describe_billing_group(Client, BillingGroupName)
  when is_map(Client) ->
    describe_billing_group(Client, BillingGroupName, #{}, #{}).

describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, []).

describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a registered CA certificate.
%%
%% Requires permission to access the DescribeCACertificate action.
describe_ca_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_ca_certificate(Client, CertificateId, #{}, #{}).

describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap, []).

describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified certificate.
%%
%% Requires permission to access the DescribeCertificate action.
describe_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_certificate(Client, CertificateId, #{}, #{}).

describe_certificate(Client, CertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_certificate(Client, CertificateId, QueryMap, HeadersMap, []).

describe_certificate(Client, CertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender detect custom metric.
%%
%% Requires permission to access the DescribeCustomMetric action.
describe_custom_metric(Client, MetricName)
  when is_map(Client) ->
    describe_custom_metric(Client, MetricName, #{}, #{}).

describe_custom_metric(Client, MetricName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_metric(Client, MetricName, QueryMap, HeadersMap, []).

describe_custom_metric(Client, MetricName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the default authorizer.
%%
%% Requires permission to access the DescribeDefaultAuthorizer action.
describe_default_authorizer(Client)
  when is_map(Client) ->
    describe_default_authorizer(Client, #{}, #{}).

describe_default_authorizer(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_default_authorizer(Client, QueryMap, HeadersMap, []).

describe_default_authorizer(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender ML Detect mitigation action.
%%
%% Requires permission to access the DescribeDetectMitigationActionsTask
%% action.
describe_detect_mitigation_actions_task(Client, TaskId)
  when is_map(Client) ->
    describe_detect_mitigation_actions_task(Client, TaskId, #{}, #{}).

describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, []).

describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about a dimension that is defined in your Amazon Web
%% Services accounts.
%%
%% Requires permission to access the DescribeDimension action.
describe_dimension(Client, Name)
  when is_map(Client) ->
    describe_dimension(Client, Name, #{}, #{}).

describe_dimension(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dimension(Client, Name, QueryMap, HeadersMap, []).

describe_dimension(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets summary information about a domain configuration.
%%
%% Requires permission to access the DescribeDomainConfiguration action.
describe_domain_configuration(Client, DomainConfigurationName)
  when is_map(Client) ->
    describe_domain_configuration(Client, DomainConfigurationName, #{}, #{}).

describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap, []).

describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a unique endpoint specific to the Amazon Web Services account
%% making the call.
%%
%% Requires permission to access the DescribeEndpoint action.
describe_endpoint(Client)
  when is_map(Client) ->
    describe_endpoint(Client, #{}, #{}).

describe_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_endpoint(Client, QueryMap, HeadersMap, []).

describe_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endpointType">>, maps:get(<<"endpointType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes event configurations.
%%
%% Requires permission to access the DescribeEventConfigurations action.
describe_event_configurations(Client)
  when is_map(Client) ->
    describe_event_configurations(Client, #{}, #{}).

describe_event_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_event_configurations(Client, QueryMap, HeadersMap, []).

describe_event_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-configurations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified fleet metric.
%%
%% Requires permission to access the DescribeFleetMetric action.
describe_fleet_metric(Client, MetricName)
  when is_map(Client) ->
    describe_fleet_metric(Client, MetricName, #{}, #{}).

describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap, []).

describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a search index.
%%
%% Requires permission to access the DescribeIndex action.
describe_index(Client, IndexName)
  when is_map(Client) ->
    describe_index(Client, IndexName, #{}, #{}).

describe_index(Client, IndexName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_index(Client, IndexName, QueryMap, HeadersMap, []).

describe_index(Client, IndexName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indices/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job.
%%
%% Requires permission to access the DescribeJob action.
describe_job(Client, JobId)
  when is_map(Client) ->
    describe_job(Client, JobId, #{}, #{}).

describe_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, JobId, QueryMap, HeadersMap, []).

describe_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job execution.
%%
%% Requires permission to access the DescribeJobExecution action.
describe_job_execution(Client, JobId, ThingName)
  when is_map(Client) ->
    describe_job_execution(Client, JobId, ThingName, #{}, #{}).

describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, []).

describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"executionNumber">>, maps:get(<<"executionNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a job template.
describe_job_template(Client, JobTemplateId)
  when is_map(Client) ->
    describe_job_template(Client, JobTemplateId, #{}, #{}).

describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap, []).

describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc View details of a managed job template.
describe_managed_job_template(Client, TemplateName)
  when is_map(Client) ->
    describe_managed_job_template(Client, TemplateName, #{}, #{}).

describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap, []).

describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-job-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"templateVersion">>, maps:get(<<"templateVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a mitigation action.
%%
%% Requires permission to access the DescribeMitigationAction action.
describe_mitigation_action(Client, ActionName)
  when is_map(Client) ->
    describe_mitigation_action(Client, ActionName, #{}, #{}).

describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap, []).

describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a fleet provisioning template.
%%
%% Requires permission to access the DescribeProvisioningTemplate action.
describe_provisioning_template(Client, TemplateName)
  when is_map(Client) ->
    describe_provisioning_template(Client, TemplateName, #{}, #{}).

describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap, []).

describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a fleet provisioning template version.
%%
%% Requires permission to access the DescribeProvisioningTemplateVersion
%% action.
describe_provisioning_template_version(Client, TemplateName, VersionId)
  when is_map(Client) ->
    describe_provisioning_template_version(Client, TemplateName, VersionId, #{}, #{}).

describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap, []).

describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a role alias.
%%
%% Requires permission to access the DescribeRoleAlias action.
describe_role_alias(Client, RoleAlias)
  when is_map(Client) ->
    describe_role_alias(Client, RoleAlias, #{}, #{}).

describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap, []).

describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a scheduled audit.
%%
%% Requires permission to access the DescribeScheduledAudit action.
describe_scheduled_audit(Client, ScheduledAuditName)
  when is_map(Client) ->
    describe_scheduled_audit(Client, ScheduledAuditName, #{}, #{}).

describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap, []).

describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender security profile.
%%
%% Requires permission to access the DescribeSecurityProfile action.
describe_security_profile(Client, SecurityProfileName)
  when is_map(Client) ->
    describe_security_profile(Client, SecurityProfileName, #{}, #{}).

describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, []).

describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a stream.
%%
%% Requires permission to access the DescribeStream action.
describe_stream(Client, StreamId)
  when is_map(Client) ->
    describe_stream(Client, StreamId, #{}, #{}).

describe_stream(Client, StreamId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_stream(Client, StreamId, QueryMap, HeadersMap, []).

describe_stream(Client, StreamId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing.
%%
%% Requires permission to access the DescribeThing action.
describe_thing(Client, ThingName)
  when is_map(Client) ->
    describe_thing(Client, ThingName, #{}, #{}).

describe_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing(Client, ThingName, QueryMap, HeadersMap, []).

describe_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a thing group.
%%
%% Requires permission to access the DescribeThingGroup action.
describe_thing_group(Client, ThingGroupName)
  when is_map(Client) ->
    describe_thing_group(Client, ThingGroupName, #{}, #{}).

describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, []).

describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a bulk thing provisioning task.
%%
%% Requires permission to access the DescribeThingRegistrationTask action.
describe_thing_registration_task(Client, TaskId)
  when is_map(Client) ->
    describe_thing_registration_task(Client, TaskId, #{}, #{}).

describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap, []).

describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing type.
%%
%% Requires permission to access the DescribeThingType action.
describe_thing_type(Client, ThingTypeName)
  when is_map(Client) ->
    describe_thing_type(Client, ThingTypeName, #{}, #{}).

describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap, []).

describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Detaches a policy from the specified target.
%%
%% Because of the distributed nature of Amazon Web Services, it can take up
%% to five minutes after a policy is detached before it's ready to be
%% deleted.
%%
%% Requires permission to access the DetachPolicy action.
detach_policy(Client, PolicyName, Input) ->
    detach_policy(Client, PolicyName, Input, []).
detach_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/target-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified policy from the specified certificate.
%%
%% This action is deprecated. Please use `DetachPolicy' instead.
%%
%% Requires permission to access the DetachPrincipalPolicy action.
detach_principal_policy(Client, PolicyName, Input) ->
    detach_principal_policy(Client, PolicyName, Input, []).
detach_principal_policy(Client, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/principal-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DetachSecurityProfile action.
detach_security_profile(Client, SecurityProfileName, Input) ->
    detach_security_profile(Client, SecurityProfileName, Input, []).
detach_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% A principal can be X.509 certificates, IAM users, groups, and roles,
%% Amazon Cognito identities or federated identities.
%%
%% This call is asynchronous. It might take several seconds for the
%% detachment to propagate.
%%
%% Requires permission to access the DetachThingPrincipal action.
detach_thing_principal(Client, ThingName, Input) ->
    detach_thing_principal(Client, ThingName, Input, []).
detach_thing_principal(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the DisableTopicRule action.
disable_topic_rule(Client, RuleName, Input) ->
    disable_topic_rule(Client, RuleName, Input, []).
disable_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), "/disable"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the rule.
%%
%% Requires permission to access the EnableTopicRule action.
enable_topic_rule(Client, RuleName, Input) ->
    enable_topic_rule(Client, RuleName, Input, []).
enable_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), "/enable"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a Device Defender's ML Detect Security Profile training
%% model's status.
%%
%% Requires permission to access the GetBehaviorModelTrainingSummaries
%% action.
get_behavior_model_training_summaries(Client)
  when is_map(Client) ->
    get_behavior_model_training_summaries(Client, #{}, #{}).

get_behavior_model_training_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_behavior_model_training_summaries(Client, QueryMap, HeadersMap, []).

get_behavior_model_training_summaries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/behavior-model-training/summaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the GetBucketsAggregation action.
get_buckets_aggregation(Client, Input) ->
    get_buckets_aggregation(Client, Input, []).
get_buckets_aggregation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/buckets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the approximate count of unique values that match the query.
%%
%% Requires permission to access the GetCardinality action.
get_cardinality(Client, Input) ->
    get_cardinality(Client, Input, []).
get_cardinality(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/cardinality"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of the policies that have an effect on the authorization
%% behavior of the specified device when it connects to the IoT device
%% gateway.
%%
%% Requires permission to access the GetEffectivePolicies action.
get_effective_policies(Client, Input) ->
    get_effective_policies(Client, Input, []).
get_effective_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/effective-policies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the GetIndexingConfiguration action.
get_indexing_configuration(Client)
  when is_map(Client) ->
    get_indexing_configuration(Client, #{}, #{}).

get_indexing_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_indexing_configuration(Client, QueryMap, HeadersMap, []).

get_indexing_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indexing/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a job document.
%%
%% Requires permission to access the GetJobDocument action.
get_job_document(Client, JobId)
  when is_map(Client) ->
    get_job_document(Client, JobId, #{}, #{}).

get_job_document(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_document(Client, JobId, QueryMap, HeadersMap, []).

get_job_document(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/job-document"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the logging options.
%%
%% NOTE: use of this command is not recommended. Use `GetV2LoggingOptions'
%% instead.
%%
%% Requires permission to access the GetLoggingOptions action.
get_logging_options(Client)
  when is_map(Client) ->
    get_logging_options(Client, #{}, #{}).

get_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_logging_options(Client, QueryMap, HeadersMap, []).

get_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/loggingOptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an OTA update.
%%
%% Requires permission to access the GetOTAUpdate action.
get_ota_update(Client, OtaUpdateId)
  when is_map(Client) ->
    get_ota_update(Client, OtaUpdateId, #{}, #{}).

get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap, []).

get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Groups the aggregated values that match the query into percentile
%% groupings.
%%
%% The default percentile groupings are: 1,5,25,50,75,95,99, although you can
%% specify your own when you call `GetPercentiles'. This function returns a
%% value for each percentile group specified (or the default percentile
%% groupings). The percentile group "1" contains the aggregated field value
%% that occurs in approximately one percent of the values that match the
%% query. The percentile group "5" contains the aggregated field value that
%% occurs in approximately five percent of the values that match the query,
%% and so on. The result is an approximation, the more values that match the
%% query, the more accurate the percentile values.
%%
%% Requires permission to access the GetPercentiles action.
get_percentiles(Client, Input) ->
    get_percentiles(Client, Input, []).
get_percentiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/percentiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the specified policy with the policy document
%% of the default version.
%%
%% Requires permission to access the GetPolicy action.
get_policy(Client, PolicyName)
  when is_map(Client) ->
    get_policy(Client, PolicyName, #{}, #{}).

get_policy(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, PolicyName, QueryMap, HeadersMap, []).

get_policy(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified policy version.
%%
%% Requires permission to access the GetPolicyVersion action.
get_policy_version(Client, PolicyName, PolicyVersionId)
  when is_map(Client) ->
    get_policy_version(Client, PolicyName, PolicyVersionId, #{}, #{}).

get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap, []).

get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a registration code used to register a CA certificate with IoT.
%%
%% Requires permission to access the GetRegistrationCode action.
get_registration_code(Client)
  when is_map(Client) ->
    get_registration_code(Client, #{}, #{}).

get_registration_code(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_registration_code(Client, QueryMap, HeadersMap, []).

get_registration_code(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/registrationcode"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the count, average, sum, minimum, maximum, sum of squares,
%% variance, and standard deviation for the specified aggregated field.
%%
%% If the aggregation field is of type `String', only the count statistic is
%% returned.
%%
%% Requires permission to access the GetStatistics action.
get_statistics(Client, Input) ->
    get_statistics(Client, Input, []).
get_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/statistics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the rule.
%%
%% Requires permission to access the GetTopicRule action.
get_topic_rule(Client, RuleName)
  when is_map(Client) ->
    get_topic_rule(Client, RuleName, #{}, #{}).

get_topic_rule(Client, RuleName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_topic_rule(Client, RuleName, QueryMap, HeadersMap, []).

get_topic_rule(Client, RuleName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a topic rule destination.
%%
%% Requires permission to access the GetTopicRuleDestination action.
get_topic_rule_destination(Client, Arn)
  when is_map(Client) ->
    get_topic_rule_destination(Client, Arn, #{}, #{}).

get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap, []).

get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations/", aws_util:encode_multi_segment_uri(Arn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the fine grained logging options.
%%
%% Requires permission to access the GetV2LoggingOptions action.
get_v2_logging_options(Client)
  when is_map(Client) ->
    get_v2_logging_options(Client, #{}, #{}).

get_v2_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_v2_logging_options(Client, QueryMap, HeadersMap, []).

get_v2_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2LoggingOptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the active violations for a given Device Defender security
%% profile.
%%
%% Requires permission to access the ListActiveViolations action.
list_active_violations(Client)
  when is_map(Client) ->
    list_active_violations(Client, #{}, #{}).

list_active_violations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_active_violations(Client, QueryMap, HeadersMap, []).

list_active_violations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/active-violations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListAttachedPolicies action.
list_attached_policies(Client, Target, Input) ->
    list_attached_policies(Client, Target, Input, []).
list_attached_policies(Client, Target, Input0, Options0) ->
    Method = post,
    Path = ["/attached-policies/", aws_util:encode_uri(Target), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% audits performed during a specified time period.
%%
%% (Findings are retained for 90 days.)
%%
%% Requires permission to access the ListAuditFindings action.
list_audit_findings(Client, Input) ->
    list_audit_findings(Client, Input, []).
list_audit_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/findings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the status of audit mitigation action tasks that were executed.
%%
%% Requires permission to access the ListAuditMitigationActionsExecutions
%% action.
list_audit_mitigation_actions_executions(Client, FindingId, TaskId)
  when is_map(Client) ->
    list_audit_mitigation_actions_executions(Client, FindingId, TaskId, #{}, #{}).

list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap, []).

list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/executions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListAuditMitigationActionsTasks action.
list_audit_mitigation_actions_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, #{}, #{}).

list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Lists your Device Defender audit listings.
%%
%% Requires permission to access the ListAuditSuppressions action.
list_audit_suppressions(Client, Input) ->
    list_audit_suppressions(Client, Input, []).
list_audit_suppressions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/list"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the Device Defender audits that have been performed during a
%% given time period.
%%
%% Requires permission to access the ListAuditTasks action.
list_audit_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_audit_tasks(Client, EndTime, StartTime, #{}, #{}).

list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListAuthorizers action.
list_authorizers(Client)
  when is_map(Client) ->
    list_authorizers(Client, #{}, #{}).

list_authorizers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_authorizers(Client, QueryMap, HeadersMap, []).

list_authorizers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authorizers/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListBillingGroups action.
list_billing_groups(Client)
  when is_map(Client) ->
    list_billing_groups(Client, #{}, #{}).

list_billing_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_billing_groups(Client, QueryMap, HeadersMap, []).

list_billing_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% returned marker to retrieve additional results.
%%
%% Requires permission to access the ListCACertificates action.
list_ca_certificates(Client)
  when is_map(Client) ->
    list_ca_certificates(Client, #{}, #{}).

list_ca_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ca_certificates(Client, QueryMap, HeadersMap, []).

list_ca_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cacertificates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the certificates registered in your Amazon Web Services
%% account.
%%
%% The results are paginated with a default page size of 25. You can use the
%% returned marker to retrieve additional results.
%%
%% Requires permission to access the ListCertificates action.
list_certificates(Client)
  when is_map(Client) ->
    list_certificates(Client, #{}, #{}).

list_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_certificates(Client, QueryMap, HeadersMap, []).

list_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListCertificatesByCA action.
list_certificates_by_ca(Client, CaCertificateId)
  when is_map(Client) ->
    list_certificates_by_ca(Client, CaCertificateId, #{}, #{}).

list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap, []).

list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates-by-ca/", aws_util:encode_uri(CaCertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your Device Defender detect custom metrics.
%%
%% Requires permission to access the ListCustomMetrics action.
list_custom_metrics(Client)
  when is_map(Client) ->
    list_custom_metrics(Client, #{}, #{}).

list_custom_metrics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_metrics(Client, QueryMap, HeadersMap, []).

list_custom_metrics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-metrics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists mitigation actions executions for a Device Defender ML Detect
%% Security Profile.
%%
%% Requires permission to access the ListDetectMitigationActionsExecutions
%% action.
list_detect_mitigation_actions_executions(Client)
  when is_map(Client) ->
    list_detect_mitigation_actions_executions(Client, #{}, #{}).

list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap, []).

list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/executions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc List of Device Defender ML Detect mitigation actions tasks.
%%
%% Requires permission to access the ListDetectMitigationActionsTasks action.
list_detect_mitigation_actions_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, #{}, #{}).

list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListDimensions action.
list_dimensions(Client)
  when is_map(Client) ->
    list_dimensions(Client, #{}, #{}).

list_dimensions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dimensions(Client, QueryMap, HeadersMap, []).

list_dimensions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dimensions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% This list is sorted alphabetically by domain configuration name.
%%
%% Requires permission to access the ListDomainConfigurations action.
list_domain_configurations(Client)
  when is_map(Client) ->
    list_domain_configurations(Client, #{}, #{}).

list_domain_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_configurations(Client, QueryMap, HeadersMap, []).

list_domain_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainConfigurations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListFleetMetrics action.
list_fleet_metrics(Client)
  when is_map(Client) ->
    list_fleet_metrics(Client, #{}, #{}).

list_fleet_metrics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fleet_metrics(Client, QueryMap, HeadersMap, []).

list_fleet_metrics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fleet-metrics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListIndices action.
list_indices(Client)
  when is_map(Client) ->
    list_indices(Client, #{}, #{}).

list_indices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_indices(Client, QueryMap, HeadersMap, []).

list_indices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indices"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListJobExecutionsForJob action.
list_job_executions_for_job(Client, JobId)
  when is_map(Client) ->
    list_job_executions_for_job(Client, JobId, #{}, #{}).

list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap, []).

list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListJobExecutionsForThing action.
list_job_executions_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_job_executions_for_thing(Client, ThingName, #{}, #{}).

list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListJobTemplates action.
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/job-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListJobs action.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_managed_job_templates(Client)
  when is_map(Client) ->
    list_managed_job_templates(Client, #{}, #{}).

list_managed_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_job_templates(Client, QueryMap, HeadersMap, []).

list_managed_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-job-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% (device-side metric, cloud-side metric, or custom metric) by the given
%% thing during the specified time period.
list_metric_values(Client, EndTime, MetricName, StartTime, ThingName)
  when is_map(Client) ->
    list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, #{}, #{}).

list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap, []).

list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metric-values"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListMitigationActions action.
list_mitigation_actions(Client)
  when is_map(Client) ->
    list_mitigation_actions(Client, #{}, #{}).

list_mitigation_actions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_mitigation_actions(Client, QueryMap, HeadersMap, []).

list_mitigation_actions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mitigationactions/actions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListOTAUpdates action.
list_ota_updates(Client)
  when is_map(Client) ->
    list_ota_updates(Client, #{}, #{}).

list_ota_updates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ota_updates(Client, QueryMap, HeadersMap, []).

list_ota_updates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/otaUpdates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListOutgoingCertificates action.
list_outgoing_certificates(Client)
  when is_map(Client) ->
    list_outgoing_certificates(Client, #{}, #{}).

list_outgoing_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_outgoing_certificates(Client, QueryMap, HeadersMap, []).

list_outgoing_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates-out-going"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your policies.
%%
%% Requires permission to access the ListPolicies action.
list_policies(Client)
  when is_map(Client) ->
    list_policies(Client, #{}, #{}).

list_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policies(Client, QueryMap, HeadersMap, []).

list_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Note: This action is deprecated. Please use `ListTargetsForPolicy'
%% instead.
%%
%% Requires permission to access the ListPolicyPrincipals action.
list_policy_principals(Client, PolicyName)
  when is_map(Client) ->
    list_policy_principals(Client, PolicyName, #{}, #{}).

list_policy_principals(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_principals(Client, PolicyName, QueryMap, HeadersMap, []).

list_policy_principals(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy-principals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListPolicyVersions action.
list_policy_versions(Client, PolicyName)
  when is_map(Client) ->
    list_policy_versions(Client, PolicyName, #{}, #{}).

list_policy_versions(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_versions(Client, PolicyName, QueryMap, HeadersMap, []).

list_policy_versions(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies attached to the specified principal.
%%
%% If you use an Cognito identity, the ID must be in AmazonCognito Identity
%% format.
%%
%% Note: This action is deprecated. Please use `ListAttachedPolicies'
%% instead.
%%
%% Requires permission to access the ListPrincipalPolicies action.
list_principal_policies(Client, Principal)
  when is_map(Client) ->
    list_principal_policies(Client, Principal, #{}, #{}).

list_principal_policies(Client, Principal, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_principal_policies(Client, Principal, QueryMap, HeadersMap, []).

list_principal_policies(Client, Principal, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/principal-policies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% A principal can be X.509 certificates, IAM users, groups, and roles,
%% Amazon Cognito identities or federated identities.
%%
%% Requires permission to access the ListPrincipalThings action.
list_principal_things(Client, Principal)
  when is_map(Client) ->
    list_principal_things(Client, Principal, #{}, #{}).

list_principal_things(Client, Principal, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_principal_things(Client, Principal, QueryMap, HeadersMap, []).

list_principal_things(Client, Principal, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/principals/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc A list of fleet provisioning template versions.
%%
%% Requires permission to access the ListProvisioningTemplateVersions action.
list_provisioning_template_versions(Client, TemplateName)
  when is_map(Client) ->
    list_provisioning_template_versions(Client, TemplateName, #{}, #{}).

list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap, []).

list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the fleet provisioning templates in your Amazon Web Services
%% account.
%%
%% Requires permission to access the ListProvisioningTemplates action.
list_provisioning_templates(Client)
  when is_map(Client) ->
    list_provisioning_templates(Client, #{}, #{}).

list_provisioning_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioning_templates(Client, QueryMap, HeadersMap, []).

list_provisioning_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the role aliases registered in your account.
%%
%% Requires permission to access the ListRoleAliases action.
list_role_aliases(Client)
  when is_map(Client) ->
    list_role_aliases(Client, #{}, #{}).

list_role_aliases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_role_aliases(Client, QueryMap, HeadersMap, []).

list_role_aliases(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/role-aliases"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of your scheduled audits.
%%
%% Requires permission to access the ListScheduledAudits action.
list_scheduled_audits(Client)
  when is_map(Client) ->
    list_scheduled_audits(Client, #{}, #{}).

list_scheduled_audits(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scheduled_audits(Client, QueryMap, HeadersMap, []).

list_scheduled_audits(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/scheduledaudits"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profiles you've created.
%%
%% You can filter security profiles by dimension or custom metric.
%%
%% Requires permission to access the ListSecurityProfiles action.
%%
%% `dimensionName' and `metricName' cannot be used in the same request.
list_security_profiles(Client)
  when is_map(Client) ->
    list_security_profiles(Client, #{}, #{}).

list_security_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles(Client, QueryMap, HeadersMap, []).

list_security_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListSecurityProfilesForTarget action.
list_security_profiles_for_target(Client, SecurityProfileTargetArn)
  when is_map(Client) ->
    list_security_profiles_for_target(Client, SecurityProfileTargetArn, #{}, #{}).

list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap, []).

list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-for-target"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListStreams action.
list_streams(Client)
  when is_map(Client) ->
    list_streams(Client, #{}, #{}).

list_streams(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streams(Client, QueryMap, HeadersMap, []).

list_streams(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streams"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListTagsForResource action.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListTargetsForPolicy action.
list_targets_for_policy(Client, PolicyName, Input) ->
    list_targets_for_policy(Client, PolicyName, Input, []).
list_targets_for_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policy-targets/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the ListTargetsForSecurityProfile action.
list_targets_for_security_profile(Client, SecurityProfileName)
  when is_map(Client) ->
    list_targets_for_security_profile(Client, SecurityProfileName, #{}, #{}).

list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, []).

list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingGroups action.
list_thing_groups(Client)
  when is_map(Client) ->
    list_thing_groups(Client, #{}, #{}).

list_thing_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_groups(Client, QueryMap, HeadersMap, []).

list_thing_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingGroupsForThing action.
list_thing_groups_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_thing_groups_for_thing(Client, ThingName, #{}, #{}).

list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/thing-groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% A principal can be X.509 certificates, IAM users, groups, and roles,
%% Amazon Cognito identities or federated identities.
%%
%% Requires permission to access the ListThingPrincipals action.
list_thing_principals(Client, ThingName)
  when is_map(Client) ->
    list_thing_principals(Client, ThingName, #{}, #{}).

list_thing_principals(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_principals(Client, ThingName, QueryMap, HeadersMap, []).

list_thing_principals(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Information about the thing registration tasks.
list_thing_registration_task_reports(Client, TaskId, ReportType)
  when is_map(Client) ->
    list_thing_registration_task_reports(Client, TaskId, ReportType, #{}, #{}).

list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap, []).

list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), "/reports"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingRegistrationTasks action.
list_thing_registration_tasks(Client)
  when is_map(Client) ->
    list_thing_registration_tasks(Client, #{}, #{}).

list_thing_registration_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_registration_tasks(Client, QueryMap, HeadersMap, []).

list_thing_registration_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingTypes action.
list_thing_types(Client)
  when is_map(Client) ->
    list_thing_types(Client, #{}, #{}).

list_thing_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_types(Client, QueryMap, HeadersMap, []).

list_thing_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-types"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% For example, calling `ListThings' with attributeName=Color and
%% attributeValue=Red retrieves all things in the registry that contain an
%% attribute Color with the value Red.
%%
%% Requires permission to access the ListThings action.
%%
%% You will not be charged for calling this API if an `Access denied' error
%% is returned. You will also not be charged if no attributes or pagination
%% token was provided in request and no pagination token and no results were
%% returned.
list_things(Client)
  when is_map(Client) ->
    list_things(Client, #{}, #{}).

list_things(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things(Client, QueryMap, HeadersMap, []).

list_things(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingsInBillingGroup action.
list_things_in_billing_group(Client, BillingGroupName)
  when is_map(Client) ->
    list_things_in_billing_group(Client, BillingGroupName, #{}, #{}).

list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, []).

list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), "/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListThingsInThingGroup action.
list_things_in_thing_group(Client, ThingGroupName)
  when is_map(Client) ->
    list_things_in_thing_group(Client, ThingGroupName, #{}, #{}).

list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, []).

list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), "/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListTopicRuleDestinations action.
list_topic_rule_destinations(Client)
  when is_map(Client) ->
    list_topic_rule_destinations(Client, #{}, #{}).

list_topic_rule_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_rule_destinations(Client, QueryMap, HeadersMap, []).

list_topic_rule_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListTopicRules action.
list_topic_rules(Client)
  when is_map(Client) ->
    list_topic_rules(Client, #{}, #{}).

list_topic_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_rules(Client, QueryMap, HeadersMap, []).

list_topic_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Requires permission to access the ListV2LoggingLevels action.
list_v2_logging_levels(Client)
  when is_map(Client) ->
    list_v2_logging_levels(Client, #{}, #{}).

list_v2_logging_levels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_v2_logging_levels(Client, QueryMap, HeadersMap, []).

list_v2_logging_levels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% particular security profile, behavior, or thing (device).
%%
%% Requires permission to access the ListViolationEvents action.
list_violation_events(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_violation_events(Client, EndTime, StartTime, #{}, #{}).

list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/violation-events"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
put_verification_state_on_violation(Client, ViolationId, Input) ->
    put_verification_state_on_violation(Client, ViolationId, Input, []).
put_verification_state_on_violation(Client, ViolationId, Input0, Options0) ->
    Method = post,
    Path = ["/violations/verification-state/", aws_util:encode_uri(ViolationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Registers a CA certificate with IoT.
%%
%% This CA certificate can then be used to sign device certificates, which
%% can be then registered with IoT. You can register up to 10 CA certificates
%% per Amazon Web Services account that have the same subject field. This
%% enables you to have up to 10 certificate authorities sign your device
%% certificates. If you have more than one CA certificate registered, make
%% sure you pass the CA certificate when you register your device
%% certificates with the `RegisterCertificate' action.
%%
%% Requires permission to access the RegisterCACertificate action.
register_ca_certificate(Client, Input) ->
    register_ca_certificate(Client, Input, []).
register_ca_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cacertificate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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

%% @doc Registers a device certificate with IoT.
%%
%% If you have more than one CA certificate that has the same subject field,
%% you must specify the CA certificate that was used to sign the device
%% certificate being registered.
%%
%% Requires permission to access the RegisterCertificate action.
register_certificate(Client, Input) ->
    register_certificate(Client, Input, []).
register_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificate/register"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% For supported certificates, consult Certificate signing algorithms
%% supported by IoT.
register_certificate_without_ca(Client, Input) ->
    register_certificate_without_ca(Client, Input, []).
register_certificate_without_ca(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificate/register-no-ca"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provisions a thing in the device registry.
%%
%% RegisterThing calls other IoT control plane APIs. These calls might exceed
%% your account level IoT Throttling Limits and cause throttle errors. Please
%% contact Amazon Web Services Customer Support to raise your throttling
%% limits if necessary.
%%
%% Requires permission to access the RegisterThing action.
register_thing(Client, Input) ->
    register_thing(Client, Input, []).
register_thing(Client, Input0, Options0) ->
    Method = post,
    Path = ["/things"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects a pending certificate transfer.
%%
%% After IoT rejects a certificate transfer, the certificate status changes
%% from PENDING_TRANSFER to INACTIVE.
%%
%% To check for pending certificate transfers, call `ListCertificates' to
%% enumerate your certificates.
%%
%% This operation can only be called by the transfer destination. After it is
%% called, the certificate will be returned to the source's account in the
%% INACTIVE state.
%%
%% Requires permission to access the RejectCertificateTransfer action.
reject_certificate_transfer(Client, CertificateId, Input) ->
    reject_certificate_transfer(Client, CertificateId, Input, []).
reject_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/reject-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given thing from the billing group.
%%
%% Requires permission to access the RemoveThingFromBillingGroup action.
%%
%% This call is asynchronous. It might take several seconds for the
%% detachment to propagate.
remove_thing_from_billing_group(Client, Input) ->
    remove_thing_from_billing_group(Client, Input, []).
remove_thing_from_billing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/billing-groups/removeThingFromBillingGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove the specified thing from the specified group.
%%
%% You must specify either a `thingGroupArn' or a `thingGroupName' to
%% identify the thing group and either a `thingArn' or a `thingName' to
%% identify the thing to remove from the thing group.
%%
%% Requires permission to access the RemoveThingFromThingGroup action.
remove_thing_from_thing_group(Client, Input) ->
    remove_thing_from_thing_group(Client, Input, []).
remove_thing_from_thing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/removeThingFromThingGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Replaces the rule.
%%
%% You must specify all parameters for the new rule. Creating rules is an
%% administrator-level action. Any user who has permission to create rules
%% will be able to access data processed by the rule.
%%
%% Requires permission to access the ReplaceTopicRule action.
replace_topic_rule(Client, RuleName, Input) ->
    replace_topic_rule(Client, RuleName, Input, []).
replace_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The query search index.
%%
%% Requires permission to access the SearchIndex action.
search_index(Client, Input) ->
    search_index(Client, Input, []).
search_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/search"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the default authorizer.
%%
%% This will be used if a websocket connection is made without specifying an
%% authorizer.
%%
%% Requires permission to access the SetDefaultAuthorizer action.
set_default_authorizer(Client, Input) ->
    set_default_authorizer(Client, Input, []).
set_default_authorizer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the specified version of the specified policy as the policy's
%% default (operative) version.
%%
%% This action affects all certificates to which the policy is attached. To
%% list the principals the policy is attached to, use the
%% `ListPrincipalPolicies' action.
%%
%% Requires permission to access the SetDefaultPolicyVersion action.
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    set_default_policy_version(Client, PolicyName, PolicyVersionId, Input, []).
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options0) ->
    Method = patch,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging options.
%%
%% NOTE: use of this command is not recommended. Use `SetV2LoggingOptions'
%% instead.
%%
%% Requires permission to access the SetLoggingOptions action.
set_logging_options(Client, Input) ->
    set_logging_options(Client, Input, []).
set_logging_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/loggingOptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging level.
%%
%% Requires permission to access the SetV2LoggingLevel action.
set_v2_logging_level(Client, Input) ->
    set_v2_logging_level(Client, Input, []).
set_v2_logging_level(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging options for the V2 logging service.
%%
%% Requires permission to access the SetV2LoggingOptions action.
set_v2_logging_options(Client, Input) ->
    set_v2_logging_options(Client, Input, []).
set_v2_logging_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2LoggingOptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the StartAuditMitigationActionsTask action.
start_audit_mitigation_actions_task(Client, TaskId, Input) ->
    start_audit_mitigation_actions_task(Client, TaskId, Input, []).
start_audit_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = post,
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a Device Defender ML Detect mitigation actions task.
%%
%% Requires permission to access the StartDetectMitigationActionsTask action.
start_detect_mitigation_actions_task(Client, TaskId, Input) ->
    start_detect_mitigation_actions_task(Client, TaskId, Input, []).
start_detect_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an on-demand Device Defender audit.
%%
%% Requires permission to access the StartOnDemandAuditTask action.
start_on_demand_audit_task(Client, Input) ->
    start_on_demand_audit_task(Client, Input, []).
start_on_demand_audit_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a bulk thing provisioning task.
%%
%% Requires permission to access the StartThingRegistrationTask action.
start_thing_registration_task(Client, Input) ->
    start_thing_registration_task(Client, Input, []).
start_thing_registration_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/thing-registration-tasks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a bulk thing provisioning task.
%%
%% Requires permission to access the StopThingRegistrationTask action.
stop_thing_registration_task(Client, TaskId, Input) ->
    stop_thing_registration_task(Client, TaskId, Input, []).
stop_thing_registration_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), "/cancel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be used to manage a resource.
%%
%% Requires permission to access the TagResource action.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tests if a specified principal is authorized to perform an IoT action
%% on a specified resource.
%%
%% Use this to test and debug the authorization behavior of devices that
%% connect to the IoT device gateway.
%%
%% Requires permission to access the TestAuthorization action.
test_authorization(Client, Input) ->
    test_authorization(Client, Input, []).
test_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/test-authorization"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Use this to test and debug the custom authorization behavior of devices
%% that connect to the IoT device gateway.
%%
%% Requires permission to access the TestInvokeAuthorizer action.
test_invoke_authorizer(Client, AuthorizerName, Input) ->
    test_invoke_authorizer(Client, AuthorizerName, Input, []).
test_invoke_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = post,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), "/test"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the TransferCertificate action.
%%
%% You can cancel the transfer until it is acknowledged by the recipient.
%%
%% No notification is sent to the transfer destination's account. It is up to
%% the caller to notify the transfer target.
%%
%% The certificate being transferred must not be in the ACTIVE state. You can
%% use the `UpdateCertificate' action to deactivate it.
%%
%% The certificate must not have any policies attached to it. You can use the
%% `DetachPolicy' action to detach them.
transfer_certificate(Client, CertificateId, Input) ->
    transfer_certificate(Client, CertificateId, Input, []).
transfer_certificate(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/transfer-certificate/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the UntagResource action.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untag"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% are enabled or disabled.
%%
%% Requires permission to access the UpdateAccountAuditConfiguration action.
update_account_audit_configuration(Client, Input) ->
    update_account_audit_configuration(Client, Input, []).
update_account_audit_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Defender audit suppression.
update_audit_suppression(Client, Input) ->
    update_audit_suppression(Client, Input, []).
update_audit_suppression(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/suppressions/update"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an authorizer.
%%
%% Requires permission to access the UpdateAuthorizer action.
update_authorizer(Client, AuthorizerName, Input) ->
    update_authorizer(Client, AuthorizerName, Input, []).
update_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = put,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information about the billing group.
%%
%% Requires permission to access the UpdateBillingGroup action.
update_billing_group(Client, BillingGroupName, Input) ->
    update_billing_group(Client, BillingGroupName, Input, []).
update_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a registered CA certificate.
%%
%% Requires permission to access the UpdateCACertificate action.
update_ca_certificate(Client, CertificateId, Input) ->
    update_ca_certificate(Client, CertificateId, Input, []).
update_ca_certificate(Client, CertificateId, Input0, Options0) ->
    Method = put,
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% This operation is idempotent.
%%
%% Requires permission to access the UpdateCertificate action.
%%
%% Certificates must be in the ACTIVE state to authenticate devices that use
%% a certificate to connect to IoT.
%%
%% Within a few minutes of updating a certificate from the ACTIVE state to
%% any other state, IoT disconnects all devices that used that certificate to
%% connect. Devices cannot use a certificate that is not in the ACTIVE state
%% to reconnect.
update_certificate(Client, CertificateId, Input) ->
    update_certificate(Client, CertificateId, Input, []).
update_certificate(Client, CertificateId, Input0, Options0) ->
    Method = put,
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"newStatus">>, <<"newStatus">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Defender detect custom metric.
%%
%% Requires permission to access the UpdateCustomMetric action.
update_custom_metric(Client, MetricName, Input) ->
    update_custom_metric(Client, MetricName, Input, []).
update_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = patch,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the definition for a dimension.
%%
%% You cannot change the type of a dimension after it is created (you can
%% delete it and recreate it).
%%
%% Requires permission to access the UpdateDimension action.
update_dimension(Client, Name, Input) ->
    update_dimension(Client, Name, Input, []).
update_dimension(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates values stored in the domain configuration.
%%
%% Domain configurations for default endpoints can't be updated.
%%
%% Requires permission to access the UpdateDomainConfiguration action.
update_domain_configuration(Client, DomainConfigurationName, Input) ->
    update_domain_configuration(Client, DomainConfigurationName, Input, []).
update_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = put,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a dynamic thing group.
%%
%% Requires permission to access the UpdateDynamicThingGroup action.
update_dynamic_thing_group(Client, ThingGroupName, Input) ->
    update_dynamic_thing_group(Client, ThingGroupName, Input, []).
update_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the event configurations.
%%
%% Requires permission to access the UpdateEventConfigurations action.
update_event_configurations(Client, Input) ->
    update_event_configurations(Client, Input, []).
update_event_configurations(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/event-configurations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the data for a fleet metric.
%%
%% Requires permission to access the UpdateFleetMetric action.
update_fleet_metric(Client, MetricName, Input) ->
    update_fleet_metric(Client, MetricName, Input, []).
update_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = patch,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the search configuration.
%%
%% Requires permission to access the UpdateIndexingConfiguration action.
update_indexing_configuration(Client, Input) ->
    update_indexing_configuration(Client, Input, []).
update_indexing_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indexing/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates supported fields of the specified job.
%%
%% Requires permission to access the UpdateJob action.
update_job(Client, JobId, Input) ->
    update_job(Client, JobId, Input, []).
update_job(Client, JobId, Input0, Options0) ->
    Method = patch,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the UpdateMitigationAction action.
update_mitigation_action(Client, ActionName, Input) ->
    update_mitigation_action(Client, ActionName, Input, []).
update_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = patch,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a fleet provisioning template.
%%
%% Requires permission to access the UpdateProvisioningTemplate action.
update_provisioning_template(Client, TemplateName, Input) ->
    update_provisioning_template(Client, TemplateName, Input, []).
update_provisioning_template(Client, TemplateName, Input0, Options0) ->
    Method = patch,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a role alias.
%%
%% Requires permission to access the UpdateRoleAlias action.
update_role_alias(Client, RoleAlias, Input) ->
    update_role_alias(Client, RoleAlias, Input, []).
update_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = put,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the UpdateScheduledAudit action.
update_scheduled_audit(Client, ScheduledAuditName, Input) ->
    update_scheduled_audit(Client, ScheduledAuditName, Input, []).
update_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Defender security profile.
%%
%% Requires permission to access the UpdateSecurityProfile action.
update_security_profile(Client, SecurityProfileName, Input) ->
    update_security_profile(Client, SecurityProfileName, Input, []).
update_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = patch,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Requires permission to access the UpdateStream action.
update_stream(Client, StreamId, Input) ->
    update_stream(Client, StreamId, Input, []).
update_stream(Client, StreamId, Input0, Options0) ->
    Method = put,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the data for a thing.
%%
%% Requires permission to access the UpdateThing action.
update_thing(Client, ThingName, Input) ->
    update_thing(Client, ThingName, Input, []).
update_thing(Client, ThingName, Input0, Options0) ->
    Method = patch,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a thing group.
%%
%% Requires permission to access the UpdateThingGroup action.
update_thing_group(Client, ThingGroupName, Input) ->
    update_thing_group(Client, ThingGroupName, Input, []).
update_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the groups to which the thing belongs.
%%
%% Requires permission to access the UpdateThingGroupsForThing action.
update_thing_groups_for_thing(Client, Input) ->
    update_thing_groups_for_thing(Client, Input, []).
update_thing_groups_for_thing(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/updateThingGroupsForThing"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a topic rule destination.
%%
%% You use this to change the status, endpoint URL, or confirmation URL of
%% the destination.
%%
%% Requires permission to access the UpdateTopicRuleDestination action.
update_topic_rule_destination(Client, Input) ->
    update_topic_rule_destination(Client, Input, []).
update_topic_rule_destination(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Validates a Device Defender security profile behaviors specification.
%%
%% Requires permission to access the ValidateSecurityProfileBehaviors action.
validate_security_profile_behaviors(Client, Input) ->
    validate_security_profile_behaviors(Client, Input, []).
validate_security_profile_behaviors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/security-profile-behaviors/validate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"execute-api">>},
    Host = build_host(<<"iot">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
