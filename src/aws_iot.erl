%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS IoT</fullname>
%%
%% AWS IoT provides secure, bi-directional communication between
%% Internet-connected devices (such as sensors, actuators, embedded devices,
%% or smart appliances) and the AWS cloud. You can discover your custom
%% IoT-Data endpoint to communicate with, configure rules for data processing
%% and integration with other services, organize resources associated with
%% each device (Registry), configure logging, and create and manage policies
%% and credentials to authenticate devices.
%%
%% The service endpoints that expose this API are listed in <a
%% href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html">AWS IoT
%% Core Endpoints and Quotas</a>. You must use the endpoint for the region
%% that has the resources you want to access.
%%
%% The service name used by <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">AWS
%% Signature Version 4</a> to sign the request is: <i>execute-api</i>.
%%
%% For more information about how AWS IoT works, see the <a
%% href="https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer
%% Guide</a>.
%%
%% For information about how to use the credentials provider for AWS IoT, see
%% <a
%% href="https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html">Authorizing
%% Direct Calls to AWS Services</a>.
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
         cancel_job/3,
         cancel_job/4,
         cancel_job_execution/4,
         cancel_job_execution/5,
         clear_default_authorizer/2,
         clear_default_authorizer/3,
         confirm_topic_rule_destination/2,
         confirm_topic_rule_destination/3,
         create_authorizer/3,
         create_authorizer/4,
         create_billing_group/3,
         create_billing_group/4,
         create_certificate_from_csr/2,
         create_certificate_from_csr/3,
         create_dimension/3,
         create_dimension/4,
         create_domain_configuration/3,
         create_domain_configuration/4,
         create_dynamic_thing_group/3,
         create_dynamic_thing_group/4,
         create_job/3,
         create_job/4,
         create_keys_and_certificate/2,
         create_keys_and_certificate/3,
         create_mitigation_action/3,
         create_mitigation_action/4,
         create_o_t_a_update/3,
         create_o_t_a_update/4,
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
         delete_authorizer/3,
         delete_authorizer/4,
         delete_billing_group/3,
         delete_billing_group/4,
         delete_c_a_certificate/3,
         delete_c_a_certificate/4,
         delete_certificate/3,
         delete_certificate/4,
         delete_dimension/3,
         delete_dimension/4,
         delete_domain_configuration/3,
         delete_domain_configuration/4,
         delete_dynamic_thing_group/3,
         delete_dynamic_thing_group/4,
         delete_job/3,
         delete_job/4,
         delete_job_execution/5,
         delete_job_execution/6,
         delete_mitigation_action/3,
         delete_mitigation_action/4,
         delete_o_t_a_update/3,
         delete_o_t_a_update/4,
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
         describe_account_audit_configuration/2,
         describe_audit_finding/2,
         describe_audit_finding/3,
         describe_audit_mitigation_actions_task/2,
         describe_audit_mitigation_actions_task/3,
         describe_audit_task/2,
         describe_audit_task/3,
         describe_authorizer/2,
         describe_authorizer/3,
         describe_billing_group/2,
         describe_billing_group/3,
         describe_c_a_certificate/2,
         describe_c_a_certificate/3,
         describe_certificate/2,
         describe_certificate/3,
         describe_default_authorizer/1,
         describe_default_authorizer/2,
         describe_dimension/2,
         describe_dimension/3,
         describe_domain_configuration/2,
         describe_domain_configuration/3,
         describe_endpoint/2,
         describe_endpoint/3,
         describe_event_configurations/1,
         describe_event_configurations/2,
         describe_index/2,
         describe_index/3,
         describe_job/2,
         describe_job/3,
         describe_job_execution/4,
         describe_job_execution/5,
         describe_mitigation_action/2,
         describe_mitigation_action/3,
         describe_provisioning_template/2,
         describe_provisioning_template/3,
         describe_provisioning_template_version/3,
         describe_provisioning_template_version/4,
         describe_role_alias/2,
         describe_role_alias/3,
         describe_scheduled_audit/2,
         describe_scheduled_audit/3,
         describe_security_profile/2,
         describe_security_profile/3,
         describe_stream/2,
         describe_stream/3,
         describe_thing/2,
         describe_thing/3,
         describe_thing_group/2,
         describe_thing_group/3,
         describe_thing_registration_task/2,
         describe_thing_registration_task/3,
         describe_thing_type/2,
         describe_thing_type/3,
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
         get_cardinality/2,
         get_cardinality/3,
         get_effective_policies/2,
         get_effective_policies/3,
         get_indexing_configuration/1,
         get_indexing_configuration/2,
         get_job_document/2,
         get_job_document/3,
         get_logging_options/1,
         get_logging_options/2,
         get_o_t_a_update/2,
         get_o_t_a_update/3,
         get_percentiles/2,
         get_percentiles/3,
         get_policy/2,
         get_policy/3,
         get_policy_version/3,
         get_policy_version/4,
         get_registration_code/1,
         get_registration_code/2,
         get_statistics/2,
         get_statistics/3,
         get_topic_rule/2,
         get_topic_rule/3,
         get_topic_rule_destination/2,
         get_topic_rule_destination/3,
         get_v2_logging_options/1,
         get_v2_logging_options/2,
         list_active_violations/5,
         list_active_violations/6,
         list_attached_policies/3,
         list_attached_policies/4,
         list_audit_findings/2,
         list_audit_findings/3,
         list_audit_mitigation_actions_executions/6,
         list_audit_mitigation_actions_executions/7,
         list_audit_mitigation_actions_tasks/8,
         list_audit_mitigation_actions_tasks/9,
         list_audit_tasks/7,
         list_audit_tasks/8,
         list_authorizers/5,
         list_authorizers/6,
         list_billing_groups/4,
         list_billing_groups/5,
         list_c_a_certificates/4,
         list_c_a_certificates/5,
         list_certificates/4,
         list_certificates/5,
         list_certificates_by_c_a/5,
         list_certificates_by_c_a/6,
         list_dimensions/3,
         list_dimensions/4,
         list_domain_configurations/4,
         list_domain_configurations/5,
         list_indices/3,
         list_indices/4,
         list_job_executions_for_job/5,
         list_job_executions_for_job/6,
         list_job_executions_for_thing/5,
         list_job_executions_for_thing/6,
         list_jobs/7,
         list_jobs/8,
         list_mitigation_actions/4,
         list_mitigation_actions/5,
         list_o_t_a_updates/4,
         list_o_t_a_updates/5,
         list_outgoing_certificates/4,
         list_outgoing_certificates/5,
         list_policies/4,
         list_policies/5,
         list_policy_principals/5,
         list_policy_principals/6,
         list_policy_versions/2,
         list_policy_versions/3,
         list_principal_policies/5,
         list_principal_policies/6,
         list_principal_things/4,
         list_principal_things/5,
         list_provisioning_template_versions/4,
         list_provisioning_template_versions/5,
         list_provisioning_templates/3,
         list_provisioning_templates/4,
         list_role_aliases/4,
         list_role_aliases/5,
         list_scheduled_audits/3,
         list_scheduled_audits/4,
         list_security_profiles/4,
         list_security_profiles/5,
         list_security_profiles_for_target/5,
         list_security_profiles_for_target/6,
         list_streams/4,
         list_streams/5,
         list_tags_for_resource/3,
         list_tags_for_resource/4,
         list_targets_for_policy/3,
         list_targets_for_policy/4,
         list_targets_for_security_profile/4,
         list_targets_for_security_profile/5,
         list_thing_groups/6,
         list_thing_groups/7,
         list_thing_groups_for_thing/4,
         list_thing_groups_for_thing/5,
         list_thing_principals/2,
         list_thing_principals/3,
         list_thing_registration_task_reports/5,
         list_thing_registration_task_reports/6,
         list_thing_registration_tasks/4,
         list_thing_registration_tasks/5,
         list_thing_types/4,
         list_thing_types/5,
         list_things/6,
         list_things/7,
         list_things_in_billing_group/4,
         list_things_in_billing_group/5,
         list_things_in_thing_group/5,
         list_things_in_thing_group/6,
         list_topic_rule_destinations/3,
         list_topic_rule_destinations/4,
         list_topic_rules/5,
         list_topic_rules/6,
         list_v2_logging_levels/4,
         list_v2_logging_levels/5,
         list_violation_events/7,
         list_violation_events/8,
         register_c_a_certificate/2,
         register_c_a_certificate/3,
         register_certificate/2,
         register_certificate/3,
         register_certificate_without_c_a/2,
         register_certificate_without_c_a/3,
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
         update_authorizer/3,
         update_authorizer/4,
         update_billing_group/3,
         update_billing_group/4,
         update_c_a_certificate/3,
         update_c_a_certificate/4,
         update_certificate/3,
         update_certificate/4,
         update_dimension/3,
         update_dimension/4,
         update_domain_configuration/3,
         update_domain_configuration/4,
         update_dynamic_thing_group/3,
         update_dynamic_thing_group/4,
         update_event_configurations/2,
         update_event_configurations/3,
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

%% @doc Accepts a pending certificate transfer. The default state of the
%% certificate is INACTIVE.
%%
%% To check for pending certificate transfers, call <a>ListCertificates</a>
%% to enumerate your certificates.
accept_certificate_transfer(Client, CertificateId, Input) ->
    accept_certificate_transfer(Client, CertificateId, Input, []).
accept_certificate_transfer(Client, CertificateId, Input0, Options) ->
    Method = patch,
    Path = ["/accept-certificate-transfer/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a thing to a billing group.
add_thing_to_billing_group(Client, Input) ->
    add_thing_to_billing_group(Client, Input, []).
add_thing_to_billing_group(Client, Input0, Options) ->
    Method = put,
    Path = ["/billing-groups/addThingToBillingGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a thing to a thing group.
add_thing_to_thing_group(Client, Input) ->
    add_thing_to_thing_group(Client, Input, []).
add_thing_to_thing_group(Client, Input0, Options) ->
    Method = put,
    Path = ["/thing-groups/addThingToThingGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group with a continuous job. The following criteria must
%% be met:
%%
%% <ul> <li> The job must have been created with the
%% <code>targetSelection</code> field set to "CONTINUOUS".
%%
%% </li> <li> The job status must currently be "IN_PROGRESS".
%%
%% </li> <li> The total number of targets associated with a job must not
%% exceed 100.
%%
%% </li> </ul>
associate_targets_with_job(Client, JobId, Input) ->
    associate_targets_with_job(Client, JobId, Input, []).
associate_targets_with_job(Client, JobId, Input0, Options) ->
    Method = post,
    Path = ["/jobs/", http_uri:encode(JobId), "/targets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches a policy to the specified target.
attach_policy(Client, PolicyName, Input) ->
    attach_policy(Client, PolicyName, Input, []).
attach_policy(Client, PolicyName, Input0, Options) ->
    Method = put,
    Path = ["/target-policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified policy to the specified principal (certificate
%% or other credential).
%%
%% <b>Note:</b> This API is deprecated. Please use <a>AttachPolicy</a>
%% instead.
attach_principal_policy(Client, PolicyName, Input) ->
    attach_principal_policy(Client, PolicyName, Input, []).
attach_principal_policy(Client, PolicyName, Input0, Options) ->
    Method = put,
    Path = ["/principal-policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-iot-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a Device Defender security profile with a thing group or
%% this account. Each thing group or account can have up to five security
%% profiles associated with it.
attach_security_profile(Client, SecurityProfileName, Input) ->
    attach_security_profile(Client, SecurityProfileName, Input, []).
attach_security_profile(Client, SecurityProfileName, Input0, Options) ->
    Method = put,
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"securityProfileTargetArn">>, <<"securityProfileTargetArn">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified principal to the specified thing. A principal
%% can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
%% identities or federated identities.
attach_thing_principal(Client, ThingName, Input) ->
    attach_thing_principal(Client, ThingName, Input, []).
attach_thing_principal(Client, ThingName, Input0, Options) ->
    Method = put,
    Path = ["/things/", http_uri:encode(ThingName), "/principals"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a mitigation action task that is in progress. If the task is
%% not in progress, an InvalidRequestException occurs.
cancel_audit_mitigation_actions_task(Client, TaskId, Input) ->
    cancel_audit_mitigation_actions_task(Client, TaskId, Input, []).
cancel_audit_mitigation_actions_task(Client, TaskId, Input0, Options) ->
    Method = put,
    Path = ["/audit/mitigationactions/tasks/", http_uri:encode(TaskId), "/cancel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels an audit that is in progress. The audit can be either
%% scheduled or on-demand. If the audit is not in progress, an
%% "InvalidRequestException" occurs.
cancel_audit_task(Client, TaskId, Input) ->
    cancel_audit_task(Client, TaskId, Input, []).
cancel_audit_task(Client, TaskId, Input0, Options) ->
    Method = put,
    Path = ["/audit/tasks/", http_uri:encode(TaskId), "/cancel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a pending transfer for the specified certificate.
%%
%% <b>Note</b> Only the transfer source account can use this operation to
%% cancel a transfer. (Transfer destinations can use
%% <a>RejectCertificateTransfer</a> instead.) After transfer, AWS IoT returns
%% the certificate to the source account in the INACTIVE state. After the
%% destination account has accepted the transfer, the transfer cannot be
%% cancelled.
%%
%% After a certificate transfer is cancelled, the status of the certificate
%% changes from PENDING_TRANSFER to INACTIVE.
cancel_certificate_transfer(Client, CertificateId, Input) ->
    cancel_certificate_transfer(Client, CertificateId, Input, []).
cancel_certificate_transfer(Client, CertificateId, Input0, Options) ->
    Method = patch,
    Path = ["/cancel-certificate-transfer/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a job.
cancel_job(Client, JobId, Input) ->
    cancel_job(Client, JobId, Input, []).
cancel_job(Client, JobId, Input0, Options) ->
    Method = put,
    Path = ["/jobs/", http_uri:encode(JobId), "/cancel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels the execution of a job for a given thing.
cancel_job_execution(Client, JobId, ThingName, Input) ->
    cancel_job_execution(Client, JobId, ThingName, Input, []).
cancel_job_execution(Client, JobId, ThingName, Input0, Options) ->
    Method = put,
    Path = ["/things/", http_uri:encode(ThingName), "/jobs/", http_uri:encode(JobId), "/cancel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Clears the default authorizer.
clear_default_authorizer(Client, Input) ->
    clear_default_authorizer(Client, Input, []).
clear_default_authorizer(Client, Input0, Options) ->
    Method = delete,
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Confirms a topic rule destination. When you create a rule requiring a
%% destination, AWS IoT sends a confirmation message to the endpoint or base
%% address you specify. The message includes a token which you pass back when
%% calling <code>ConfirmTopicRuleDestination</code> to confirm that you own
%% or have access to the endpoint.
confirm_topic_rule_destination(Client, ConfirmationToken)
  when is_map(Client) ->
    confirm_topic_rule_destination(Client, ConfirmationToken, []).
confirm_topic_rule_destination(Client, ConfirmationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/confirmdestination/", aws_util:encode_uri(ConfirmationToken, true), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an authorizer.
create_authorizer(Client, AuthorizerName, Input) ->
    create_authorizer(Client, AuthorizerName, Input, []).
create_authorizer(Client, AuthorizerName, Input0, Options) ->
    Method = post,
    Path = ["/authorizer/", http_uri:encode(AuthorizerName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a billing group.
create_billing_group(Client, BillingGroupName, Input) ->
    create_billing_group(Client, BillingGroupName, Input, []).
create_billing_group(Client, BillingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/billing-groups/", http_uri:encode(BillingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an X.509 certificate using the specified certificate signing
%% request.
%%
%% <b>Note:</b> The CSR must include a public key that is either an RSA key
%% with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST
%% P-384 curves.
%%
%% <b>Note:</b> Reusing the same certificate signing request (CSR) results in
%% a distinct certificate.
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
%% file name to the aws iot create-certificate-from-csr AWS CLI command to
%% create a certificate for the corresponding CSR.
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
%% &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
%% --certificate-signing-request file://my-csr-directory/$_}
%%
%% On a Windows command prompt, the command to create certificates for all
%% CSRs in my-csr-directory is:
%%
%% &gt; forfiles /p my-csr-directory /c "cmd /c aws iot
%% create-certificate-from-csr --certificate-signing-request file://@path"
create_certificate_from_csr(Client, Input) ->
    create_certificate_from_csr(Client, Input, []).
create_certificate_from_csr(Client, Input0, Options) ->
    Method = post,
    Path = ["/certificates"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a dimension that you can use to limit the scope of a metric
%% used in a security profile for AWS IoT Device Defender. For example, using
%% a <code>TOPIC_FILTER</code> dimension, you can narrow down the scope of
%% the metric only to MQTT topics whose name match the pattern specified in
%% the dimension.
create_dimension(Client, Name, Input) ->
    create_dimension(Client, Name, Input, []).
create_dimension(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/dimensions/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a domain configuration.
%%
%% <note> The domain configuration feature is in public preview and is
%% subject to change.
%%
%% </note>
create_domain_configuration(Client, DomainConfigurationName, Input) ->
    create_domain_configuration(Client, DomainConfigurationName, Input, []).
create_domain_configuration(Client, DomainConfigurationName, Input0, Options) ->
    Method = post,
    Path = ["/domainConfigurations/", http_uri:encode(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dynamic thing group.
create_dynamic_thing_group(Client, ThingGroupName, Input) ->
    create_dynamic_thing_group(Client, ThingGroupName, Input, []).
create_dynamic_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/dynamic-thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a job.
create_job(Client, JobId, Input) ->
    create_job(Client, JobId, Input, []).
create_job(Client, JobId, Input0, Options) ->
    Method = put,
    Path = ["/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a 2048-bit RSA key pair and issues an X.509 certificate using
%% the issued public key. You can also call
%% <code>CreateKeysAndCertificate</code> over MQTT from a device, for more
%% information, see <a
%% href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api">Provisioning
%% MQTT API</a>.
%%
%% <b>Note</b> This is the only time AWS IoT issues the private key for this
%% certificate, so it is important to keep it in a secure location.
create_keys_and_certificate(Client, Input) ->
    create_keys_and_certificate(Client, Input, []).
create_keys_and_certificate(Client, Input0, Options) ->
    Method = post,
    Path = ["/keys-and-certificate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Defines an action that can be applied to audit findings by using
%% StartAuditMitigationActionsTask. Each mitigation action can apply only one
%% type of change.
create_mitigation_action(Client, ActionName, Input) ->
    create_mitigation_action(Client, ActionName, Input, []).
create_mitigation_action(Client, ActionName, Input0, Options) ->
    Method = post,
    Path = ["/mitigationactions/actions/", http_uri:encode(ActionName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS IoT OTAUpdate on a target group of things or groups.
create_o_t_a_update(Client, OtaUpdateId, Input) ->
    create_o_t_a_update(Client, OtaUpdateId, Input, []).
create_o_t_a_update(Client, OtaUpdateId, Input0, Options) ->
    Method = post,
    Path = ["/otaUpdates/", http_uri:encode(OtaUpdateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS IoT policy.
%%
%% The created policy is the default version for the policy. This operation
%% creates a policy version with a version identifier of <b>1</b> and sets
%% <b>1</b> as the policy's default version.
create_policy(Client, PolicyName, Input) ->
    create_policy(Client, PolicyName, Input, []).
create_policy(Client, PolicyName, Input0, Options) ->
    Method = post,
    Path = ["/policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the specified AWS IoT policy. To update a
%% policy, create a new policy version. A managed policy can have up to five
%% versions. If the policy has five versions, you must use
%% <a>DeletePolicyVersion</a> to delete an existing version before you create
%% a new one.
%%
%% Optionally, you can set the new version as the policy's default version.
%% The default version is the operative version (that is, the version that is
%% in effect for the certificates to which the policy is attached).
create_policy_version(Client, PolicyName, Input) ->
    create_policy_version(Client, PolicyName, Input, []).
create_policy_version(Client, PolicyName, Input0, Options) ->
    Method = post,
    Path = ["/policies/", http_uri:encode(PolicyName), "/version"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsDefault">>, <<"setAsDefault">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a provisioning claim.
create_provisioning_claim(Client, TemplateName, Input) ->
    create_provisioning_claim(Client, TemplateName, Input, []).
create_provisioning_claim(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), "/provisioning-claim"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a fleet provisioning template.
create_provisioning_template(Client, Input) ->
    create_provisioning_template(Client, Input, []).
create_provisioning_template(Client, Input0, Options) ->
    Method = post,
    Path = ["/provisioning-templates"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of a fleet provisioning template.
create_provisioning_template_version(Client, TemplateName, Input) ->
    create_provisioning_template_version(Client, TemplateName, Input, []).
create_provisioning_template_version(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsDefault">>, <<"setAsDefault">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a role alias.
create_role_alias(Client, RoleAlias, Input) ->
    create_role_alias(Client, RoleAlias, Input, []).
create_role_alias(Client, RoleAlias, Input0, Options) ->
    Method = post,
    Path = ["/role-aliases/", http_uri:encode(RoleAlias), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a scheduled audit that is run at a specified time interval.
create_scheduled_audit(Client, ScheduledAuditName, Input) ->
    create_scheduled_audit(Client, ScheduledAuditName, Input, []).
create_scheduled_audit(Client, ScheduledAuditName, Input0, Options) ->
    Method = post,
    Path = ["/audit/scheduledaudits/", http_uri:encode(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Device Defender security profile.
create_security_profile(Client, SecurityProfileName, Input) ->
    create_security_profile(Client, SecurityProfileName, Input, []).
create_security_profile(Client, SecurityProfileName, Input0, Options) ->
    Method = post,
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a stream for delivering one or more large files in chunks
%% over MQTT. A stream transports data bytes in chunks or blocks packaged as
%% MQTT messages from a source like S3. You can have one or more files
%% associated with a stream.
create_stream(Client, StreamId, Input) ->
    create_stream(Client, StreamId, Input, []).
create_stream(Client, StreamId, Input0, Options) ->
    Method = post,
    Path = ["/streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a thing record in the registry. If this call is made multiple
%% times using the same thing name and configuration, the call will succeed.
%% If this call is made with the same thing name but different configuration
%% a <code>ResourceAlreadyExistsException</code> is thrown.
%%
%% <note> This is a control plane operation. See <a
%% href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a>
%% for information about authorizing control plane actions.
%%
%% </note>
create_thing(Client, ThingName, Input) ->
    create_thing(Client, ThingName, Input, []).
create_thing(Client, ThingName, Input0, Options) ->
    Method = post,
    Path = ["/things/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a thing group.
%%
%% <note> This is a control plane operation. See <a
%% href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a>
%% for information about authorizing control plane actions.
%%
%% </note>
create_thing_group(Client, ThingGroupName, Input) ->
    create_thing_group(Client, ThingGroupName, Input, []).
create_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new thing type.
create_thing_type(Client, ThingTypeName, Input) ->
    create_thing_type(Client, ThingTypeName, Input, []).
create_thing_type(Client, ThingTypeName, Input0, Options) ->
    Method = post,
    Path = ["/thing-types/", http_uri:encode(ThingTypeName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a rule. Creating rules is an administrator-level action. Any
%% user who has permission to create rules will be able to access data
%% processed by the rule.
create_topic_rule(Client, RuleName, Input) ->
    create_topic_rule(Client, RuleName, Input, []).
create_topic_rule(Client, RuleName, Input0, Options) ->
    Method = post,
    Path = ["/rules/", http_uri:encode(RuleName), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-tagging">>, <<"tags">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a topic rule destination. The destination must be confirmed
%% prior to use.
create_topic_rule_destination(Client, Input) ->
    create_topic_rule_destination(Client, Input, []).
create_topic_rule_destination(Client, Input0, Options) ->
    Method = post,
    Path = ["/destinations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Restores the default settings for Device Defender audits for this
%% account. Any configuration data you entered is deleted and all audit
%% checks are reset to disabled.
delete_account_audit_configuration(Client, Input) ->
    delete_account_audit_configuration(Client, Input, []).
delete_account_audit_configuration(Client, Input0, Options) ->
    Method = delete,
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"deleteScheduledAudits">>, <<"deleteScheduledAudits">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an authorizer.
delete_authorizer(Client, AuthorizerName, Input) ->
    delete_authorizer(Client, AuthorizerName, Input, []).
delete_authorizer(Client, AuthorizerName, Input0, Options) ->
    Method = delete,
    Path = ["/authorizer/", http_uri:encode(AuthorizerName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the billing group.
delete_billing_group(Client, BillingGroupName, Input) ->
    delete_billing_group(Client, BillingGroupName, Input, []).
delete_billing_group(Client, BillingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/billing-groups/", http_uri:encode(BillingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a registered CA certificate.
delete_c_a_certificate(Client, CertificateId, Input) ->
    delete_c_a_certificate(Client, CertificateId, Input, []).
delete_c_a_certificate(Client, CertificateId, Input0, Options) ->
    Method = delete,
    Path = ["/cacertificate/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified certificate.
%%
%% A certificate cannot be deleted if it has a policy or IoT thing attached
%% to it or if its status is set to ACTIVE. To delete a certificate, first
%% use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use
%% the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE
%% status.
delete_certificate(Client, CertificateId, Input) ->
    delete_certificate(Client, CertificateId, Input, []).
delete_certificate(Client, CertificateId, Input0, Options) ->
    Method = delete,
    Path = ["/certificates/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"forceDelete">>, <<"forceDelete">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified dimension from your AWS account.
delete_dimension(Client, Name, Input) ->
    delete_dimension(Client, Name, Input, []).
delete_dimension(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/dimensions/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified domain configuration.
%%
%% <note> The domain configuration feature is in public preview and is
%% subject to change.
%%
%% </note>
delete_domain_configuration(Client, DomainConfigurationName, Input) ->
    delete_domain_configuration(Client, DomainConfigurationName, Input, []).
delete_domain_configuration(Client, DomainConfigurationName, Input0, Options) ->
    Method = delete,
    Path = ["/domainConfigurations/", http_uri:encode(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dynamic thing group.
delete_dynamic_thing_group(Client, ThingGroupName, Input) ->
    delete_dynamic_thing_group(Client, ThingGroupName, Input, []).
delete_dynamic_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/dynamic-thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

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
delete_job(Client, JobId, Input) ->
    delete_job(Client, JobId, Input, []).
delete_job(Client, JobId, Input0, Options) ->
    Method = delete,
    Path = ["/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a job execution.
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input) ->
    delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input, []).
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input0, Options) ->
    Method = delete,
    Path = ["/things/", http_uri:encode(ThingName), "/jobs/", http_uri:encode(JobId), "/executionNumber/", http_uri:encode(ExecutionNumber), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a defined mitigation action from your AWS account.
delete_mitigation_action(Client, ActionName, Input) ->
    delete_mitigation_action(Client, ActionName, Input, []).
delete_mitigation_action(Client, ActionName, Input0, Options) ->
    Method = delete,
    Path = ["/mitigationactions/actions/", http_uri:encode(ActionName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an OTA update.
delete_o_t_a_update(Client, OtaUpdateId, Input) ->
    delete_o_t_a_update(Client, OtaUpdateId, Input, []).
delete_o_t_a_update(Client, OtaUpdateId, Input0, Options) ->
    Method = delete,
    Path = ["/otaUpdates/", http_uri:encode(OtaUpdateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"deleteStream">>, <<"deleteStream">>},
                     {<<"forceDeleteAWSJob">>, <<"forceDeleteAWSJob">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified policy.
%%
%% A policy cannot be deleted if it has non-default versions or it is
%% attached to any certificate.
%%
%% To delete a policy, use the DeletePolicyVersion API to delete all
%% non-default versions of the policy; use the DetachPrincipalPolicy API to
%% detach the policy from any certificate; and then use the DeletePolicy API
%% to delete the policy.
%%
%% When a policy is deleted using DeletePolicy, its default version is
%% deleted with it.
delete_policy(Client, PolicyName, Input) ->
    delete_policy(Client, PolicyName, Input, []).
delete_policy(Client, PolicyName, Input0, Options) ->
    Method = delete,
    Path = ["/policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified version of the specified policy. You cannot
%% delete the default version of a policy using this API. To delete the
%% default version of a policy, use <a>DeletePolicy</a>. To find out which
%% version of a policy is marked as the default version, use
%% ListPolicyVersions.
delete_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    delete_policy_version(Client, PolicyName, PolicyVersionId, Input, []).
delete_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options) ->
    Method = delete,
    Path = ["/policies/", http_uri:encode(PolicyName), "/version/", http_uri:encode(PolicyVersionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a fleet provisioning template.
delete_provisioning_template(Client, TemplateName, Input) ->
    delete_provisioning_template(Client, TemplateName, Input, []).
delete_provisioning_template(Client, TemplateName, Input0, Options) ->
    Method = delete,
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a fleet provisioning template version.
delete_provisioning_template_version(Client, TemplateName, VersionId, Input) ->
    delete_provisioning_template_version(Client, TemplateName, VersionId, Input, []).
delete_provisioning_template_version(Client, TemplateName, VersionId, Input0, Options) ->
    Method = delete,
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), "/versions/", http_uri:encode(VersionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CA certificate registration code.
delete_registration_code(Client, Input) ->
    delete_registration_code(Client, Input, []).
delete_registration_code(Client, Input0, Options) ->
    Method = delete,
    Path = ["/registrationcode"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a role alias
delete_role_alias(Client, RoleAlias, Input) ->
    delete_role_alias(Client, RoleAlias, Input, []).
delete_role_alias(Client, RoleAlias, Input0, Options) ->
    Method = delete,
    Path = ["/role-aliases/", http_uri:encode(RoleAlias), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a scheduled audit.
delete_scheduled_audit(Client, ScheduledAuditName, Input) ->
    delete_scheduled_audit(Client, ScheduledAuditName, Input, []).
delete_scheduled_audit(Client, ScheduledAuditName, Input0, Options) ->
    Method = delete,
    Path = ["/audit/scheduledaudits/", http_uri:encode(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Defender security profile.
delete_security_profile(Client, SecurityProfileName, Input) ->
    delete_security_profile(Client, SecurityProfileName, Input, []).
delete_security_profile(Client, SecurityProfileName, Input0, Options) ->
    Method = delete,
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a stream.
delete_stream(Client, StreamId, Input) ->
    delete_stream(Client, StreamId, Input, []).
delete_stream(Client, StreamId, Input0, Options) ->
    Method = delete,
    Path = ["/streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified thing. Returns successfully with no error if
%% the deletion is successful or you specify a thing that doesn't exist.
delete_thing(Client, ThingName, Input) ->
    delete_thing(Client, ThingName, Input, []).
delete_thing(Client, ThingName, Input0, Options) ->
    Method = delete,
    Path = ["/things/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a thing group.
delete_thing_group(Client, ThingGroupName, Input) ->
    delete_thing_group(Client, ThingGroupName, Input, []).
delete_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified thing type. You cannot delete a thing type if
%% it has things associated with it. To delete a thing type, first mark it as
%% deprecated by calling <a>DeprecateThingType</a>, then remove any
%% associated things by calling <a>UpdateThing</a> to change the thing type
%% on any associated thing, and finally use <a>DeleteThingType</a> to delete
%% the thing type.
delete_thing_type(Client, ThingTypeName, Input) ->
    delete_thing_type(Client, ThingTypeName, Input, []).
delete_thing_type(Client, ThingTypeName, Input0, Options) ->
    Method = delete,
    Path = ["/thing-types/", http_uri:encode(ThingTypeName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the rule.
delete_topic_rule(Client, RuleName, Input) ->
    delete_topic_rule(Client, RuleName, Input, []).
delete_topic_rule(Client, RuleName, Input0, Options) ->
    Method = delete,
    Path = ["/rules/", http_uri:encode(RuleName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a topic rule destination.
delete_topic_rule_destination(Client, Arn, Input) ->
    delete_topic_rule_destination(Client, Arn, Input, []).
delete_topic_rule_destination(Client, Arn, Input0, Options) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_uri(Arn, true), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a logging level.
delete_v2_logging_level(Client, Input) ->
    delete_v2_logging_level(Client, Input, []).
delete_v2_logging_level(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"targetName">>, <<"targetName">>},
                     {<<"targetType">>, <<"targetType">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deprecates a thing type. You can not associate new things with
%% deprecated thing type.
deprecate_thing_type(Client, ThingTypeName, Input) ->
    deprecate_thing_type(Client, ThingTypeName, Input, []).
deprecate_thing_type(Client, ThingTypeName, Input0, Options) ->
    Method = post,
    Path = ["/thing-types/", http_uri:encode(ThingTypeName), "/deprecate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the Device Defender audit settings for this
%% account. Settings include how audit notifications are sent and which audit
%% checks are enabled or disabled.
describe_account_audit_configuration(Client)
  when is_map(Client) ->
    describe_account_audit_configuration(Client, []).
describe_account_audit_configuration(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a single audit finding. Properties include the
%% reason for noncompliance, the severity of the issue, and when the audit
%% that returned the finding was started.
describe_audit_finding(Client, FindingId)
  when is_map(Client) ->
    describe_audit_finding(Client, FindingId, []).
describe_audit_finding(Client, FindingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/findings/", http_uri:encode(FindingId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an audit mitigation task that is used to apply
%% mitigation actions to a set of audit findings. Properties include the
%% actions being applied, the audit checks to which they're being applied,
%% the task status, and aggregated task statistics.
describe_audit_mitigation_actions_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_mitigation_actions_task(Client, TaskId, []).
describe_audit_mitigation_actions_task(Client, TaskId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/mitigationactions/tasks/", http_uri:encode(TaskId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender audit.
describe_audit_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_task(Client, TaskId, []).
describe_audit_task(Client, TaskId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/tasks/", http_uri:encode(TaskId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an authorizer.
describe_authorizer(Client, AuthorizerName)
  when is_map(Client) ->
    describe_authorizer(Client, AuthorizerName, []).
describe_authorizer(Client, AuthorizerName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/authorizer/", http_uri:encode(AuthorizerName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a billing group.
describe_billing_group(Client, BillingGroupName)
  when is_map(Client) ->
    describe_billing_group(Client, BillingGroupName, []).
describe_billing_group(Client, BillingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/billing-groups/", http_uri:encode(BillingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a registered CA certificate.
describe_c_a_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_c_a_certificate(Client, CertificateId, []).
describe_c_a_certificate(Client, CertificateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/cacertificate/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified certificate.
describe_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_certificate(Client, CertificateId, []).
describe_certificate(Client, CertificateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/certificates/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the default authorizer.
describe_default_authorizer(Client)
  when is_map(Client) ->
    describe_default_authorizer(Client, []).
describe_default_authorizer(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about a dimension that is defined in your AWS
%% account.
describe_dimension(Client, Name)
  when is_map(Client) ->
    describe_dimension(Client, Name, []).
describe_dimension(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dimensions/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets summary information about a domain configuration.
%%
%% <note> The domain configuration feature is in public preview and is
%% subject to change.
%%
%% </note>
describe_domain_configuration(Client, DomainConfigurationName)
  when is_map(Client) ->
    describe_domain_configuration(Client, DomainConfigurationName, []).
describe_domain_configuration(Client, DomainConfigurationName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainConfigurations/", http_uri:encode(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a unique endpoint specific to the AWS account making the
%% call.
describe_endpoint(Client, EndpointType)
  when is_map(Client) ->
    describe_endpoint(Client, EndpointType, []).
describe_endpoint(Client, EndpointType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/endpoint"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"endpointType">>, EndpointType}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes event configurations.
describe_event_configurations(Client)
  when is_map(Client) ->
    describe_event_configurations(Client, []).
describe_event_configurations(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/event-configurations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a search index.
describe_index(Client, IndexName)
  when is_map(Client) ->
    describe_index(Client, IndexName, []).
describe_index(Client, IndexName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/indices/", http_uri:encode(IndexName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job.
describe_job(Client, JobId)
  when is_map(Client) ->
    describe_job(Client, JobId, []).
describe_job(Client, JobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job execution.
describe_job_execution(Client, JobId, ThingName, ExecutionNumber)
  when is_map(Client) ->
    describe_job_execution(Client, JobId, ThingName, ExecutionNumber, []).
describe_job_execution(Client, JobId, ThingName, ExecutionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"executionNumber">>, ExecutionNumber}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a mitigation action.
describe_mitigation_action(Client, ActionName)
  when is_map(Client) ->
    describe_mitigation_action(Client, ActionName, []).
describe_mitigation_action(Client, ActionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/mitigationactions/actions/", http_uri:encode(ActionName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a fleet provisioning template.
describe_provisioning_template(Client, TemplateName)
  when is_map(Client) ->
    describe_provisioning_template(Client, TemplateName, []).
describe_provisioning_template(Client, TemplateName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a fleet provisioning template version.
describe_provisioning_template_version(Client, TemplateName, VersionId)
  when is_map(Client) ->
    describe_provisioning_template_version(Client, TemplateName, VersionId, []).
describe_provisioning_template_version(Client, TemplateName, VersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), "/versions/", http_uri:encode(VersionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a role alias.
describe_role_alias(Client, RoleAlias)
  when is_map(Client) ->
    describe_role_alias(Client, RoleAlias, []).
describe_role_alias(Client, RoleAlias, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/role-aliases/", http_uri:encode(RoleAlias), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a scheduled audit.
describe_scheduled_audit(Client, ScheduledAuditName)
  when is_map(Client) ->
    describe_scheduled_audit(Client, ScheduledAuditName, []).
describe_scheduled_audit(Client, ScheduledAuditName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/scheduledaudits/", http_uri:encode(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender security profile.
describe_security_profile(Client, SecurityProfileName)
  when is_map(Client) ->
    describe_security_profile(Client, SecurityProfileName, []).
describe_security_profile(Client, SecurityProfileName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a stream.
describe_stream(Client, StreamId)
  when is_map(Client) ->
    describe_stream(Client, StreamId, []).
describe_stream(Client, StreamId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing.
describe_thing(Client, ThingName)
  when is_map(Client) ->
    describe_thing(Client, ThingName, []).
describe_thing(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a thing group.
describe_thing_group(Client, ThingGroupName)
  when is_map(Client) ->
    describe_thing_group(Client, ThingGroupName, []).
describe_thing_group(Client, ThingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a bulk thing provisioning task.
describe_thing_registration_task(Client, TaskId)
  when is_map(Client) ->
    describe_thing_registration_task(Client, TaskId, []).
describe_thing_registration_task(Client, TaskId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-registration-tasks/", http_uri:encode(TaskId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing type.
describe_thing_type(Client, ThingTypeName)
  when is_map(Client) ->
    describe_thing_type(Client, ThingTypeName, []).
describe_thing_type(Client, ThingTypeName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-types/", http_uri:encode(ThingTypeName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Detaches a policy from the specified target.
detach_policy(Client, PolicyName, Input) ->
    detach_policy(Client, PolicyName, Input, []).
detach_policy(Client, PolicyName, Input0, Options) ->
    Method = post,
    Path = ["/target-policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified policy from the specified certificate.
%%
%% <b>Note:</b> This API is deprecated. Please use <a>DetachPolicy</a>
%% instead.
detach_principal_policy(Client, PolicyName, Input) ->
    detach_principal_policy(Client, PolicyName, Input, []).
detach_principal_policy(Client, PolicyName, Input0, Options) ->
    Method = delete,
    Path = ["/principal-policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-iot-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a Device Defender security profile from a thing group
%% or from this account.
detach_security_profile(Client, SecurityProfileName, Input) ->
    detach_security_profile(Client, SecurityProfileName, Input, []).
detach_security_profile(Client, SecurityProfileName, Input0, Options) ->
    Method = delete,
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"securityProfileTargetArn">>, <<"securityProfileTargetArn">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches the specified principal from the specified thing. A
%% principal can be X.509 certificates, IAM users, groups, and roles, Amazon
%% Cognito identities or federated identities.
%%
%% <note> This call is asynchronous. It might take several seconds for the
%% detachment to propagate.
%%
%% </note>
detach_thing_principal(Client, ThingName, Input) ->
    detach_thing_principal(Client, ThingName, Input, []).
detach_thing_principal(Client, ThingName, Input0, Options) ->
    Method = delete,
    Path = ["/things/", http_uri:encode(ThingName), "/principals"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the rule.
disable_topic_rule(Client, RuleName, Input) ->
    disable_topic_rule(Client, RuleName, Input, []).
disable_topic_rule(Client, RuleName, Input0, Options) ->
    Method = post,
    Path = ["/rules/", http_uri:encode(RuleName), "/disable"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the rule.
enable_topic_rule(Client, RuleName, Input) ->
    enable_topic_rule(Client, RuleName, Input, []).
enable_topic_rule(Client, RuleName, Input0, Options) ->
    Method = post,
    Path = ["/rules/", http_uri:encode(RuleName), "/enable"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the approximate count of unique values that match the query.
get_cardinality(Client, Input) ->
    get_cardinality(Client, Input, []).
get_cardinality(Client, Input0, Options) ->
    Method = post,
    Path = ["/indices/cardinality"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of the policies that have an effect on the authorization
%% behavior of the specified device when it connects to the AWS IoT device
%% gateway.
get_effective_policies(Client, Input) ->
    get_effective_policies(Client, Input, []).
get_effective_policies(Client, Input0, Options) ->
    Method = post,
    Path = ["/effective-policies"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"thingName">>, <<"thingName">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the indexing configuration.
get_indexing_configuration(Client)
  when is_map(Client) ->
    get_indexing_configuration(Client, []).
get_indexing_configuration(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/indexing/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a job document.
get_job_document(Client, JobId)
  when is_map(Client) ->
    get_job_document(Client, JobId, []).
get_job_document(Client, JobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs/", http_uri:encode(JobId), "/job-document"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the logging options.
%%
%% NOTE: use of this command is not recommended. Use
%% <code>GetV2LoggingOptions</code> instead.
get_logging_options(Client)
  when is_map(Client) ->
    get_logging_options(Client, []).
get_logging_options(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/loggingOptions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an OTA update.
get_o_t_a_update(Client, OtaUpdateId)
  when is_map(Client) ->
    get_o_t_a_update(Client, OtaUpdateId, []).
get_o_t_a_update(Client, OtaUpdateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/otaUpdates/", http_uri:encode(OtaUpdateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Groups the aggregated values that match the query into percentile
%% groupings. The default percentile groupings are: 1,5,25,50,75,95,99,
%% although you can specify your own when you call
%% <code>GetPercentiles</code>. This function returns a value for each
%% percentile group specified (or the default percentile groupings). The
%% percentile group "1" contains the aggregated field value that occurs in
%% approximately one percent of the values that match the query. The
%% percentile group "5" contains the aggregated field value that occurs in
%% approximately five percent of the values that match the query, and so on.
%% The result is an approximation, the more values that match the query, the
%% more accurate the percentile values.
get_percentiles(Client, Input) ->
    get_percentiles(Client, Input, []).
get_percentiles(Client, Input0, Options) ->
    Method = post,
    Path = ["/indices/percentiles"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the specified policy with the policy document
%% of the default version.
get_policy(Client, PolicyName)
  when is_map(Client) ->
    get_policy(Client, PolicyName, []).
get_policy(Client, PolicyName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified policy version.
get_policy_version(Client, PolicyName, PolicyVersionId)
  when is_map(Client) ->
    get_policy_version(Client, PolicyName, PolicyVersionId, []).
get_policy_version(Client, PolicyName, PolicyVersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies/", http_uri:encode(PolicyName), "/version/", http_uri:encode(PolicyVersionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a registration code used to register a CA certificate with AWS
%% IoT.
get_registration_code(Client)
  when is_map(Client) ->
    get_registration_code(Client, []).
get_registration_code(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/registrationcode"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the count, average, sum, minimum, maximum, sum of squares,
%% variance, and standard deviation for the specified aggregated field. If
%% the aggregation field is of type <code>String</code>, only the count
%% statistic is returned.
get_statistics(Client, Input) ->
    get_statistics(Client, Input, []).
get_statistics(Client, Input0, Options) ->
    Method = post,
    Path = ["/indices/statistics"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the rule.
get_topic_rule(Client, RuleName)
  when is_map(Client) ->
    get_topic_rule(Client, RuleName, []).
get_topic_rule(Client, RuleName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/rules/", http_uri:encode(RuleName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a topic rule destination.
get_topic_rule_destination(Client, Arn)
  when is_map(Client) ->
    get_topic_rule_destination(Client, Arn, []).
get_topic_rule_destination(Client, Arn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/destinations/", aws_util:encode_uri(Arn, true), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the fine grained logging options.
get_v2_logging_options(Client)
  when is_map(Client) ->
    get_v2_logging_options(Client, []).
get_v2_logging_options(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2LoggingOptions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the active violations for a given Device Defender security
%% profile.
list_active_violations(Client, MaxResults, NextToken, SecurityProfileName, ThingName)
  when is_map(Client) ->
    list_active_violations(Client, MaxResults, NextToken, SecurityProfileName, ThingName, []).
list_active_violations(Client, MaxResults, NextToken, SecurityProfileName, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/active-violations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"securityProfileName">>, SecurityProfileName},
        {<<"thingName">>, ThingName}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies attached to the specified thing group.
list_attached_policies(Client, Target, Input) ->
    list_attached_policies(Client, Target, Input, []).
list_attached_policies(Client, Target, Input0, Options) ->
    Method = post,
    Path = ["/attached-policies/", http_uri:encode(Target), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"marker">>, <<"marker">>},
                     {<<"pageSize">>, <<"pageSize">>},
                     {<<"recursive">>, <<"recursive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the findings (results) of a Device Defender audit or of the
%% audits performed during a specified time period. (Findings are retained
%% for 180 days.)
list_audit_findings(Client, Input) ->
    list_audit_findings(Client, Input, []).
list_audit_findings(Client, Input0, Options) ->
    Method = post,
    Path = ["/audit/findings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the status of audit mitigation action tasks that were executed.
list_audit_mitigation_actions_executions(Client, ActionStatus, FindingId, MaxResults, NextToken, TaskId)
  when is_map(Client) ->
    list_audit_mitigation_actions_executions(Client, ActionStatus, FindingId, MaxResults, NextToken, TaskId, []).
list_audit_mitigation_actions_executions(Client, ActionStatus, FindingId, MaxResults, NextToken, TaskId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/mitigationactions/executions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"actionStatus">>, ActionStatus},
        {<<"findingId">>, FindingId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"taskId">>, TaskId}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of audit mitigation action tasks that match the specified
%% filters.
list_audit_mitigation_actions_tasks(Client, AuditTaskId, EndTime, FindingId, MaxResults, NextToken, StartTime, TaskStatus)
  when is_map(Client) ->
    list_audit_mitigation_actions_tasks(Client, AuditTaskId, EndTime, FindingId, MaxResults, NextToken, StartTime, TaskStatus, []).
list_audit_mitigation_actions_tasks(Client, AuditTaskId, EndTime, FindingId, MaxResults, NextToken, StartTime, TaskStatus, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/mitigationactions/tasks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"auditTaskId">>, AuditTaskId},
        {<<"endTime">>, EndTime},
        {<<"findingId">>, FindingId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"startTime">>, StartTime},
        {<<"taskStatus">>, TaskStatus}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender audits that have been performed during a
%% given time period.
list_audit_tasks(Client, EndTime, MaxResults, NextToken, StartTime, TaskStatus, TaskType)
  when is_map(Client) ->
    list_audit_tasks(Client, EndTime, MaxResults, NextToken, StartTime, TaskStatus, TaskType, []).
list_audit_tasks(Client, EndTime, MaxResults, NextToken, StartTime, TaskStatus, TaskType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/tasks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"startTime">>, StartTime},
        {<<"taskStatus">>, TaskStatus},
        {<<"taskType">>, TaskType}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the authorizers registered in your account.
list_authorizers(Client, AscendingOrder, Marker, PageSize, Status)
  when is_map(Client) ->
    list_authorizers(Client, AscendingOrder, Marker, PageSize, Status, []).
list_authorizers(Client, AscendingOrder, Marker, PageSize, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/authorizers/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize},
        {<<"status">>, Status}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the billing groups you have created.
list_billing_groups(Client, MaxResults, NamePrefixFilter, NextToken)
  when is_map(Client) ->
    list_billing_groups(Client, MaxResults, NamePrefixFilter, NextToken, []).
list_billing_groups(Client, MaxResults, NamePrefixFilter, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/billing-groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"namePrefixFilter">>, NamePrefixFilter},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the CA certificates registered for your AWS account.
%%
%% The results are paginated with a default page size of 25. You can use the
%% returned marker to retrieve additional results.
list_c_a_certificates(Client, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_c_a_certificates(Client, AscendingOrder, Marker, PageSize, []).
list_c_a_certificates(Client, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/cacertificates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the certificates registered in your AWS account.
%%
%% The results are paginated with a default page size of 25. You can use the
%% returned marker to retrieve additional results.
list_certificates(Client, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_certificates(Client, AscendingOrder, Marker, PageSize, []).
list_certificates(Client, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/certificates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the device certificates signed by the specified CA certificate.
list_certificates_by_c_a(Client, CaCertificateId, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_certificates_by_c_a(Client, CaCertificateId, AscendingOrder, Marker, PageSize, []).
list_certificates_by_c_a(Client, CaCertificateId, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/certificates-by-ca/", http_uri:encode(CaCertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the set of dimensions that are defined for your AWS account.
list_dimensions(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_dimensions(Client, MaxResults, NextToken, []).
list_dimensions(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dimensions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of domain configurations for the user. This list is
%% sorted alphabetically by domain configuration name.
%%
%% <note> The domain configuration feature is in public preview and is
%% subject to change.
%%
%% </note>
list_domain_configurations(Client, Marker, PageSize, ServiceType)
  when is_map(Client) ->
    list_domain_configurations(Client, Marker, PageSize, ServiceType, []).
list_domain_configurations(Client, Marker, PageSize, ServiceType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/domainConfigurations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize},
        {<<"serviceType">>, ServiceType}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the search indices.
list_indices(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_indices(Client, MaxResults, NextToken, []).
list_indices(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/indices"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the job executions for a job.
list_job_executions_for_job(Client, JobId, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_job_executions_for_job(Client, JobId, MaxResults, NextToken, Status, []).
list_job_executions_for_job(Client, JobId, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs/", http_uri:encode(JobId), "/things"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the job executions for the specified thing.
list_job_executions_for_thing(Client, ThingName, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_job_executions_for_thing(Client, ThingName, MaxResults, NextToken, Status, []).
list_job_executions_for_thing(Client, ThingName, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists jobs.
list_jobs(Client, MaxResults, NextToken, Status, TargetSelection, ThingGroupId, ThingGroupName)
  when is_map(Client) ->
    list_jobs(Client, MaxResults, NextToken, Status, TargetSelection, ThingGroupId, ThingGroupName, []).
list_jobs(Client, MaxResults, NextToken, Status, TargetSelection, ThingGroupId, ThingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status},
        {<<"targetSelection">>, TargetSelection},
        {<<"thingGroupId">>, ThingGroupId},
        {<<"thingGroupName">>, ThingGroupName}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of all mitigation actions that match the specified filter
%% criteria.
list_mitigation_actions(Client, ActionType, MaxResults, NextToken)
  when is_map(Client) ->
    list_mitigation_actions(Client, ActionType, MaxResults, NextToken, []).
list_mitigation_actions(Client, ActionType, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/mitigationactions/actions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"actionType">>, ActionType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists OTA updates.
list_o_t_a_updates(Client, MaxResults, NextToken, OtaUpdateStatus)
  when is_map(Client) ->
    list_o_t_a_updates(Client, MaxResults, NextToken, OtaUpdateStatus, []).
list_o_t_a_updates(Client, MaxResults, NextToken, OtaUpdateStatus, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/otaUpdates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"otaUpdateStatus">>, OtaUpdateStatus}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists certificates that are being transferred but not yet accepted.
list_outgoing_certificates(Client, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_outgoing_certificates(Client, AscendingOrder, Marker, PageSize, []).
list_outgoing_certificates(Client, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/certificates-out-going"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your policies.
list_policies(Client, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_policies(Client, AscendingOrder, Marker, PageSize, []).
list_policies(Client, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the principals associated with the specified policy.
%%
%% <b>Note:</b> This API is deprecated. Please use
%% <a>ListTargetsForPolicy</a> instead.
list_policy_principals(Client, AscendingOrder, Marker, PageSize, PolicyName)
  when is_map(Client) ->
    list_policy_principals(Client, AscendingOrder, Marker, PageSize, PolicyName, []).
list_policy_principals(Client, AscendingOrder, Marker, PageSize, PolicyName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policy-principals"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amzn-iot-policy">>, PolicyName}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of the specified policy and identifies the default
%% version.
list_policy_versions(Client, PolicyName)
  when is_map(Client) ->
    list_policy_versions(Client, PolicyName, []).
list_policy_versions(Client, PolicyName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies/", http_uri:encode(PolicyName), "/version"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies attached to the specified principal. If you use an
%% Cognito identity, the ID must be in <a
%% href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito
%% Identity format</a>.
%%
%% <b>Note:</b> This API is deprecated. Please use
%% <a>ListAttachedPolicies</a> instead.
list_principal_policies(Client, AscendingOrder, Marker, PageSize, Principal)
  when is_map(Client) ->
    list_principal_policies(Client, AscendingOrder, Marker, PageSize, Principal, []).
list_principal_policies(Client, AscendingOrder, Marker, PageSize, Principal, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/principal-policies"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amzn-iot-principal">>, Principal}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things associated with the specified principal. A principal
%% can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
%% identities or federated identities.
list_principal_things(Client, MaxResults, NextToken, Principal)
  when is_map(Client) ->
    list_principal_things(Client, MaxResults, NextToken, Principal, []).
list_principal_things(Client, MaxResults, NextToken, Principal, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/principals/things"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amzn-principal">>, Principal}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of fleet provisioning template versions.
list_provisioning_template_versions(Client, TemplateName, MaxResults, NextToken)
  when is_map(Client) ->
    list_provisioning_template_versions(Client, TemplateName, MaxResults, NextToken, []).
list_provisioning_template_versions(Client, TemplateName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the fleet provisioning templates in your AWS account.
list_provisioning_templates(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_provisioning_templates(Client, MaxResults, NextToken, []).
list_provisioning_templates(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/provisioning-templates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the role aliases registered in your account.
list_role_aliases(Client, AscendingOrder, Marker, PageSize)
  when is_map(Client) ->
    list_role_aliases(Client, AscendingOrder, Marker, PageSize, []).
list_role_aliases(Client, AscendingOrder, Marker, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/role-aliases"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"marker">>, Marker},
        {<<"pageSize">>, PageSize}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of your scheduled audits.
list_scheduled_audits(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_scheduled_audits(Client, MaxResults, NextToken, []).
list_scheduled_audits(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/audit/scheduledaudits"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profiles you have created. You can
%% use filters to list only those security profiles associated with a thing
%% group or only those associated with your account.
list_security_profiles(Client, DimensionName, MaxResults, NextToken)
  when is_map(Client) ->
    list_security_profiles(Client, DimensionName, MaxResults, NextToken, []).
list_security_profiles(Client, DimensionName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/security-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"dimensionName">>, DimensionName},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profiles attached to a target
%% (thing group).
list_security_profiles_for_target(Client, MaxResults, NextToken, Recursive, SecurityProfileTargetArn)
  when is_map(Client) ->
    list_security_profiles_for_target(Client, MaxResults, NextToken, Recursive, SecurityProfileTargetArn, []).
list_security_profiles_for_target(Client, MaxResults, NextToken, Recursive, SecurityProfileTargetArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/security-profiles-for-target"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"recursive">>, Recursive},
        {<<"securityProfileTargetArn">>, SecurityProfileTargetArn}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the streams in your AWS account.
list_streams(Client, AscendingOrder, MaxResults, NextToken)
  when is_map(Client) ->
    list_streams(Client, AscendingOrder, MaxResults, NextToken, []).
list_streams(Client, AscendingOrder, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/streams"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"isAscendingOrder">>, AscendingOrder},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) you have assigned to the resource.
list_tags_for_resource(Client, NextToken, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, NextToken, ResourceArn, []).
list_tags_for_resource(Client, NextToken, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"nextToken">>, NextToken},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List targets for the specified policy.
list_targets_for_policy(Client, PolicyName, Input) ->
    list_targets_for_policy(Client, PolicyName, Input, []).
list_targets_for_policy(Client, PolicyName, Input0, Options) ->
    Method = post,
    Path = ["/policy-targets/", http_uri:encode(PolicyName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"marker">>, <<"marker">>},
                     {<<"pageSize">>, <<"pageSize">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the targets (thing groups) associated with a given Device
%% Defender security profile.
list_targets_for_security_profile(Client, SecurityProfileName, MaxResults, NextToken)
  when is_map(Client) ->
    list_targets_for_security_profile(Client, SecurityProfileName, MaxResults, NextToken, []).
list_targets_for_security_profile(Client, SecurityProfileName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), "/targets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the thing groups in your account.
list_thing_groups(Client, MaxResults, NamePrefixFilter, NextToken, ParentGroup, Recursive)
  when is_map(Client) ->
    list_thing_groups(Client, MaxResults, NamePrefixFilter, NextToken, ParentGroup, Recursive, []).
list_thing_groups(Client, MaxResults, NamePrefixFilter, NextToken, ParentGroup, Recursive, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"namePrefixFilter">>, NamePrefixFilter},
        {<<"nextToken">>, NextToken},
        {<<"parentGroup">>, ParentGroup},
        {<<"recursive">>, Recursive}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the thing groups to which the specified thing belongs.
list_thing_groups_for_thing(Client, ThingName, MaxResults, NextToken)
  when is_map(Client) ->
    list_thing_groups_for_thing(Client, ThingName, MaxResults, NextToken, []).
list_thing_groups_for_thing(Client, ThingName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/thing-groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the principals associated with the specified thing. A principal
%% can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
%% identities or federated identities.
list_thing_principals(Client, ThingName)
  when is_map(Client) ->
    list_thing_principals(Client, ThingName, []).
list_thing_principals(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/principals"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Information about the thing registration tasks.
list_thing_registration_task_reports(Client, TaskId, MaxResults, NextToken, ReportType)
  when is_map(Client) ->
    list_thing_registration_task_reports(Client, TaskId, MaxResults, NextToken, ReportType, []).
list_thing_registration_task_reports(Client, TaskId, MaxResults, NextToken, ReportType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-registration-tasks/", http_uri:encode(TaskId), "/reports"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"reportType">>, ReportType}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc List bulk thing provisioning tasks.
list_thing_registration_tasks(Client, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_thing_registration_tasks(Client, MaxResults, NextToken, Status, []).
list_thing_registration_tasks(Client, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-registration-tasks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the existing thing types.
list_thing_types(Client, MaxResults, NextToken, ThingTypeName)
  when is_map(Client) ->
    list_thing_types(Client, MaxResults, NextToken, ThingTypeName, []).
list_thing_types(Client, MaxResults, NextToken, ThingTypeName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-types"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"thingTypeName">>, ThingTypeName}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your things. Use the <b>attributeName</b> and
%% <b>attributeValue</b> parameters to filter your things. For example,
%% calling <code>ListThings</code> with attributeName=Color and
%% attributeValue=Red retrieves all things in the registry that contain an
%% attribute <b>Color</b> with the value <b>Red</b>.
list_things(Client, AttributeName, AttributeValue, MaxResults, NextToken, ThingTypeName)
  when is_map(Client) ->
    list_things(Client, AttributeName, AttributeValue, MaxResults, NextToken, ThingTypeName, []).
list_things(Client, AttributeName, AttributeValue, MaxResults, NextToken, ThingTypeName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"attributeName">>, AttributeName},
        {<<"attributeValue">>, AttributeValue},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"thingTypeName">>, ThingTypeName}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things you have added to the given billing group.
list_things_in_billing_group(Client, BillingGroupName, MaxResults, NextToken)
  when is_map(Client) ->
    list_things_in_billing_group(Client, BillingGroupName, MaxResults, NextToken, []).
list_things_in_billing_group(Client, BillingGroupName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/billing-groups/", http_uri:encode(BillingGroupName), "/things"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things in the specified group.
list_things_in_thing_group(Client, ThingGroupName, MaxResults, NextToken, Recursive)
  when is_map(Client) ->
    list_things_in_thing_group(Client, ThingGroupName, MaxResults, NextToken, Recursive, []).
list_things_in_thing_group(Client, ThingGroupName, MaxResults, NextToken, Recursive, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/thing-groups/", http_uri:encode(ThingGroupName), "/things"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"recursive">>, Recursive}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the topic rule destinations in your AWS account.
list_topic_rule_destinations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_topic_rule_destinations(Client, MaxResults, NextToken, []).
list_topic_rule_destinations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/destinations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the rules for the specific topic.
list_topic_rules(Client, MaxResults, NextToken, RuleDisabled, Topic)
  when is_map(Client) ->
    list_topic_rules(Client, MaxResults, NextToken, RuleDisabled, Topic, []).
list_topic_rules(Client, MaxResults, NextToken, RuleDisabled, Topic, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/rules"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"ruleDisabled">>, RuleDisabled},
        {<<"topic">>, Topic}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists logging levels.
list_v2_logging_levels(Client, MaxResults, NextToken, TargetType)
  when is_map(Client) ->
    list_v2_logging_levels(Client, MaxResults, NextToken, TargetType, []).
list_v2_logging_levels(Client, MaxResults, NextToken, TargetType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"targetType">>, TargetType}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profile violations discovered
%% during the given time period. You can use filters to limit the results to
%% those alerts issued for a particular security profile, behavior, or thing
%% (device).
list_violation_events(Client, EndTime, MaxResults, NextToken, SecurityProfileName, StartTime, ThingName)
  when is_map(Client) ->
    list_violation_events(Client, EndTime, MaxResults, NextToken, SecurityProfileName, StartTime, ThingName, []).
list_violation_events(Client, EndTime, MaxResults, NextToken, SecurityProfileName, StartTime, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/violation-events"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"securityProfileName">>, SecurityProfileName},
        {<<"startTime">>, StartTime},
        {<<"thingName">>, ThingName}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers a CA certificate with AWS IoT. This CA certificate can then
%% be used to sign device certificates, which can be then registered with AWS
%% IoT. You can register up to 10 CA certificates per AWS account that have
%% the same subject field. This enables you to have up to 10 certificate
%% authorities sign your device certificates. If you have more than one CA
%% certificate registered, make sure you pass the CA certificate when you
%% register your device certificates with the RegisterCertificate API.
register_c_a_certificate(Client, Input) ->
    register_c_a_certificate(Client, Input, []).
register_c_a_certificate(Client, Input0, Options) ->
    Method = post,
    Path = ["/cacertificate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"allowAutoRegistration">>, <<"allowAutoRegistration">>},
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Registers a device certificate with AWS IoT. If you have more than
%% one CA certificate that has the same subject field, you must specify the
%% CA certificate that was used to sign the device certificate being
%% registered.
register_certificate(Client, Input) ->
    register_certificate(Client, Input, []).
register_certificate(Client, Input0, Options) ->
    Method = post,
    Path = ["/certificate/register"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Register a certificate that does not have a certificate authority
%% (CA).
register_certificate_without_c_a(Client, Input) ->
    register_certificate_without_c_a(Client, Input, []).
register_certificate_without_c_a(Client, Input0, Options) ->
    Method = post,
    Path = ["/certificate/register-no-ca"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Provisions a thing in the device registry. RegisterThing calls other
%% AWS IoT control plane APIs. These calls might exceed your account level <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot">
%% AWS IoT Throttling Limits</a> and cause throttle errors. Please contact <a
%% href="https://console.aws.amazon.com/support/home">AWS Customer
%% Support</a> to raise your throttling limits if necessary.
register_thing(Client, Input) ->
    register_thing(Client, Input, []).
register_thing(Client, Input0, Options) ->
    Method = post,
    Path = ["/things"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects a pending certificate transfer. After AWS IoT rejects a
%% certificate transfer, the certificate status changes from
%% <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.
%%
%% To check for pending certificate transfers, call <a>ListCertificates</a>
%% to enumerate your certificates.
%%
%% This operation can only be called by the transfer destination. After it is
%% called, the certificate will be returned to the source's account in the
%% INACTIVE state.
reject_certificate_transfer(Client, CertificateId, Input) ->
    reject_certificate_transfer(Client, CertificateId, Input, []).
reject_certificate_transfer(Client, CertificateId, Input0, Options) ->
    Method = patch,
    Path = ["/reject-certificate-transfer/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given thing from the billing group.
remove_thing_from_billing_group(Client, Input) ->
    remove_thing_from_billing_group(Client, Input, []).
remove_thing_from_billing_group(Client, Input0, Options) ->
    Method = put,
    Path = ["/billing-groups/removeThingFromBillingGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove the specified thing from the specified group.
%%
%% You must specify either a <code>thingGroupArn</code> or a
%% <code>thingGroupName</code> to identify the thing group and either a
%% <code>thingArn</code> or a <code>thingName</code> to identify the thing to
%% remove from the thing group.
remove_thing_from_thing_group(Client, Input) ->
    remove_thing_from_thing_group(Client, Input, []).
remove_thing_from_thing_group(Client, Input0, Options) ->
    Method = put,
    Path = ["/thing-groups/removeThingFromThingGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Replaces the rule. You must specify all parameters for the new rule.
%% Creating rules is an administrator-level action. Any user who has
%% permission to create rules will be able to access data processed by the
%% rule.
replace_topic_rule(Client, RuleName, Input) ->
    replace_topic_rule(Client, RuleName, Input, []).
replace_topic_rule(Client, RuleName, Input0, Options) ->
    Method = patch,
    Path = ["/rules/", http_uri:encode(RuleName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The query search index.
search_index(Client, Input) ->
    search_index(Client, Input, []).
search_index(Client, Input0, Options) ->
    Method = post,
    Path = ["/indices/search"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the default authorizer. This will be used if a websocket
%% connection is made without specifying an authorizer.
set_default_authorizer(Client, Input) ->
    set_default_authorizer(Client, Input, []).
set_default_authorizer(Client, Input0, Options) ->
    Method = post,
    Path = ["/default-authorizer"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the specified version of the specified policy as the policy's
%% default (operative) version. This action affects all certificates to which
%% the policy is attached. To list the principals the policy is attached to,
%% use the ListPrincipalPolicy API.
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    set_default_policy_version(Client, PolicyName, PolicyVersionId, Input, []).
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options) ->
    Method = patch,
    Path = ["/policies/", http_uri:encode(PolicyName), "/version/", http_uri:encode(PolicyVersionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging options.
%%
%% NOTE: use of this command is not recommended. Use
%% <code>SetV2LoggingOptions</code> instead.
set_logging_options(Client, Input) ->
    set_logging_options(Client, Input, []).
set_logging_options(Client, Input0, Options) ->
    Method = post,
    Path = ["/loggingOptions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging level.
set_v2_logging_level(Client, Input) ->
    set_v2_logging_level(Client, Input, []).
set_v2_logging_level(Client, Input0, Options) ->
    Method = post,
    Path = ["/v2LoggingLevel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the logging options for the V2 logging service.
set_v2_logging_options(Client, Input) ->
    set_v2_logging_options(Client, Input, []).
set_v2_logging_options(Client, Input0, Options) ->
    Method = post,
    Path = ["/v2LoggingOptions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a task that applies a set of mitigation actions to the
%% specified target.
start_audit_mitigation_actions_task(Client, TaskId, Input) ->
    start_audit_mitigation_actions_task(Client, TaskId, Input, []).
start_audit_mitigation_actions_task(Client, TaskId, Input0, Options) ->
    Method = post,
    Path = ["/audit/mitigationactions/tasks/", http_uri:encode(TaskId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an on-demand Device Defender audit.
start_on_demand_audit_task(Client, Input) ->
    start_on_demand_audit_task(Client, Input, []).
start_on_demand_audit_task(Client, Input0, Options) ->
    Method = post,
    Path = ["/audit/tasks"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a bulk thing provisioning task.
start_thing_registration_task(Client, Input) ->
    start_thing_registration_task(Client, Input, []).
start_thing_registration_task(Client, Input0, Options) ->
    Method = post,
    Path = ["/thing-registration-tasks"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a bulk thing provisioning task.
stop_thing_registration_task(Client, TaskId, Input) ->
    stop_thing_registration_task(Client, TaskId, Input, []).
stop_thing_registration_task(Client, TaskId, Input0, Options) ->
    Method = put,
    Path = ["/thing-registration-tasks/", http_uri:encode(TaskId), "/cancel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to or modifies the tags of the given resource. Tags are metadata
%% which can be used to manage a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Tests if a specified principal is authorized to perform an AWS IoT
%% action on a specified resource. Use this to test and debug the
%% authorization behavior of devices that connect to the AWS IoT device
%% gateway.
test_authorization(Client, Input) ->
    test_authorization(Client, Input, []).
test_authorization(Client, Input0, Options) ->
    Method = post,
    Path = ["/test-authorization"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientId">>, <<"clientId">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Tests a custom authorization behavior by invoking a specified custom
%% authorizer. Use this to test and debug the custom authorization behavior
%% of devices that connect to the AWS IoT device gateway.
test_invoke_authorizer(Client, AuthorizerName, Input) ->
    test_invoke_authorizer(Client, AuthorizerName, Input, []).
test_invoke_authorizer(Client, AuthorizerName, Input0, Options) ->
    Method = post,
    Path = ["/authorizer/", http_uri:encode(AuthorizerName), "/test"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Transfers the specified certificate to the specified AWS account.
%%
%% You can cancel the transfer until it is acknowledged by the recipient.
%%
%% No notification is sent to the transfer destination's account. It is up to
%% the caller to notify the transfer target.
%%
%% The certificate being transferred must not be in the ACTIVE state. You can
%% use the UpdateCertificate API to deactivate it.
%%
%% The certificate must not have any policies attached to it. You can use the
%% DetachPrincipalPolicy API to detach them.
transfer_certificate(Client, CertificateId, Input) ->
    transfer_certificate(Client, CertificateId, Input, []).
transfer_certificate(Client, CertificateId, Input0, Options) ->
    Method = patch,
    Path = ["/transfer-certificate/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"targetAwsAccount">>, <<"targetAwsAccount">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/untag"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Configures or reconfigures the Device Defender audit settings for
%% this account. Settings include how audit notifications are sent and which
%% audit checks are enabled or disabled.
update_account_audit_configuration(Client, Input) ->
    update_account_audit_configuration(Client, Input, []).
update_account_audit_configuration(Client, Input0, Options) ->
    Method = patch,
    Path = ["/audit/configuration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an authorizer.
update_authorizer(Client, AuthorizerName, Input) ->
    update_authorizer(Client, AuthorizerName, Input, []).
update_authorizer(Client, AuthorizerName, Input0, Options) ->
    Method = put,
    Path = ["/authorizer/", http_uri:encode(AuthorizerName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information about the billing group.
update_billing_group(Client, BillingGroupName, Input) ->
    update_billing_group(Client, BillingGroupName, Input, []).
update_billing_group(Client, BillingGroupName, Input0, Options) ->
    Method = patch,
    Path = ["/billing-groups/", http_uri:encode(BillingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a registered CA certificate.
update_c_a_certificate(Client, CertificateId, Input) ->
    update_c_a_certificate(Client, CertificateId, Input, []).
update_c_a_certificate(Client, CertificateId, Input0, Options) ->
    Method = put,
    Path = ["/cacertificate/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"newAutoRegistrationStatus">>, <<"newAutoRegistrationStatus">>},
                     {<<"newStatus">>, <<"newStatus">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of the specified certificate. This operation is
%% idempotent.
%%
%% Moving a certificate from the ACTIVE state (including REVOKED) will not
%% disconnect currently connected devices, but these devices will be unable
%% to reconnect.
%%
%% The ACTIVE state is required to authenticate devices connecting to AWS IoT
%% using a certificate.
update_certificate(Client, CertificateId, Input) ->
    update_certificate(Client, CertificateId, Input, []).
update_certificate(Client, CertificateId, Input0, Options) ->
    Method = put,
    Path = ["/certificates/", http_uri:encode(CertificateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"newStatus">>, <<"newStatus">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the definition for a dimension. You cannot change the type of
%% a dimension after it is created (you can delete it and re-create it).
update_dimension(Client, Name, Input) ->
    update_dimension(Client, Name, Input, []).
update_dimension(Client, Name, Input0, Options) ->
    Method = patch,
    Path = ["/dimensions/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates values stored in the domain configuration. Domain
%% configurations for default endpoints can't be updated.
%%
%% <note> The domain configuration feature is in public preview and is
%% subject to change.
%%
%% </note>
update_domain_configuration(Client, DomainConfigurationName, Input) ->
    update_domain_configuration(Client, DomainConfigurationName, Input, []).
update_domain_configuration(Client, DomainConfigurationName, Input0, Options) ->
    Method = put,
    Path = ["/domainConfigurations/", http_uri:encode(DomainConfigurationName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a dynamic thing group.
update_dynamic_thing_group(Client, ThingGroupName, Input) ->
    update_dynamic_thing_group(Client, ThingGroupName, Input, []).
update_dynamic_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = patch,
    Path = ["/dynamic-thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the event configurations.
update_event_configurations(Client, Input) ->
    update_event_configurations(Client, Input, []).
update_event_configurations(Client, Input0, Options) ->
    Method = patch,
    Path = ["/event-configurations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the search configuration.
update_indexing_configuration(Client, Input) ->
    update_indexing_configuration(Client, Input, []).
update_indexing_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/indexing/config"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates supported fields of the specified job.
update_job(Client, JobId, Input) ->
    update_job(Client, JobId, Input, []).
update_job(Client, JobId, Input0, Options) ->
    Method = patch,
    Path = ["/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the definition for the specified mitigation action.
update_mitigation_action(Client, ActionName, Input) ->
    update_mitigation_action(Client, ActionName, Input, []).
update_mitigation_action(Client, ActionName, Input0, Options) ->
    Method = patch,
    Path = ["/mitigationactions/actions/", http_uri:encode(ActionName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a fleet provisioning template.
update_provisioning_template(Client, TemplateName, Input) ->
    update_provisioning_template(Client, TemplateName, Input, []).
update_provisioning_template(Client, TemplateName, Input0, Options) ->
    Method = patch,
    Path = ["/provisioning-templates/", http_uri:encode(TemplateName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a role alias.
update_role_alias(Client, RoleAlias, Input) ->
    update_role_alias(Client, RoleAlias, Input, []).
update_role_alias(Client, RoleAlias, Input0, Options) ->
    Method = put,
    Path = ["/role-aliases/", http_uri:encode(RoleAlias), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a scheduled audit, including which checks are performed and
%% how often the audit takes place.
update_scheduled_audit(Client, ScheduledAuditName, Input) ->
    update_scheduled_audit(Client, ScheduledAuditName, Input, []).
update_scheduled_audit(Client, ScheduledAuditName, Input0, Options) ->
    Method = patch,
    Path = ["/audit/scheduledaudits/", http_uri:encode(ScheduledAuditName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Defender security profile.
update_security_profile(Client, SecurityProfileName, Input) ->
    update_security_profile(Client, SecurityProfileName, Input, []).
update_security_profile(Client, SecurityProfileName, Input0, Options) ->
    Method = patch,
    Path = ["/security-profiles/", http_uri:encode(SecurityProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing stream. The stream version will be incremented by
%% one.
update_stream(Client, StreamId, Input) ->
    update_stream(Client, StreamId, Input, []).
update_stream(Client, StreamId, Input0, Options) ->
    Method = put,
    Path = ["/streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the data for a thing.
update_thing(Client, ThingName, Input) ->
    update_thing(Client, ThingName, Input, []).
update_thing(Client, ThingName, Input0, Options) ->
    Method = patch,
    Path = ["/things/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Update a thing group.
update_thing_group(Client, ThingGroupName, Input) ->
    update_thing_group(Client, ThingGroupName, Input, []).
update_thing_group(Client, ThingGroupName, Input0, Options) ->
    Method = patch,
    Path = ["/thing-groups/", http_uri:encode(ThingGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the groups to which the thing belongs.
update_thing_groups_for_thing(Client, Input) ->
    update_thing_groups_for_thing(Client, Input, []).
update_thing_groups_for_thing(Client, Input0, Options) ->
    Method = put,
    Path = ["/thing-groups/updateThingGroupsForThing"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a topic rule destination. You use this to change the status,
%% endpoint URL, or confirmation URL of the destination.
update_topic_rule_destination(Client, Input) ->
    update_topic_rule_destination(Client, Input, []).
update_topic_rule_destination(Client, Input0, Options) ->
    Method = patch,
    Path = ["/destinations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Validates a Device Defender security profile behaviors specification.
validate_security_profile_behaviors(Client, Input) ->
    validate_security_profile_behaviors(Client, Input, []).
validate_security_profile_behaviors(Client, Input0, Options) ->
    Method = post,
    Path = ["/security-profile-behaviors/validate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"execute-api">>},
    Host = get_host(<<"iot">>, Client1),
    URL0 = get_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
