%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect is a cloud-based contact center solution that you use
%% to set up and manage a customer contact center and provide reliable
%% customer engagement at any scale.
%%
%% Amazon Connect provides metrics and real-time reporting that enable you to
%% optimize contact routing. You can also resolve customer issues more
%% efficiently by getting customers in touch with the appropriate agents.
%%
%% There are limits to the number of Amazon Connect resources that you can
%% create. There are also limits to the number of requests that you can make
%% per second. For more information, see Amazon Connect Service Quotas in the
%% Amazon Connect Administrator Guide.
%%
%% You can connect programmatically to an Amazon Web Services service by
%% using an endpoint. For a list of Amazon Connect endpoints, see Amazon
%% Connect Endpoints.
-module(aws_connect).

-export([activate_evaluation_form/4,
         activate_evaluation_form/5,
         associate_approved_origin/3,
         associate_approved_origin/4,
         associate_bot/3,
         associate_bot/4,
         associate_default_vocabulary/4,
         associate_default_vocabulary/5,
         associate_instance_storage_config/3,
         associate_instance_storage_config/4,
         associate_lambda_function/3,
         associate_lambda_function/4,
         associate_lex_bot/3,
         associate_lex_bot/4,
         associate_phone_number_contact_flow/3,
         associate_phone_number_contact_flow/4,
         associate_queue_quick_connects/4,
         associate_queue_quick_connects/5,
         associate_routing_profile_queues/4,
         associate_routing_profile_queues/5,
         associate_security_key/3,
         associate_security_key/4,
         claim_phone_number/2,
         claim_phone_number/3,
         create_agent_status/3,
         create_agent_status/4,
         create_contact_flow/3,
         create_contact_flow/4,
         create_contact_flow_module/3,
         create_contact_flow_module/4,
         create_evaluation_form/3,
         create_evaluation_form/4,
         create_hours_of_operation/3,
         create_hours_of_operation/4,
         create_instance/2,
         create_instance/3,
         create_integration_association/3,
         create_integration_association/4,
         create_participant/2,
         create_participant/3,
         create_prompt/3,
         create_prompt/4,
         create_queue/3,
         create_queue/4,
         create_quick_connect/3,
         create_quick_connect/4,
         create_routing_profile/3,
         create_routing_profile/4,
         create_rule/3,
         create_rule/4,
         create_security_profile/3,
         create_security_profile/4,
         create_task_template/3,
         create_task_template/4,
         create_traffic_distribution_group/2,
         create_traffic_distribution_group/3,
         create_use_case/4,
         create_use_case/5,
         create_user/3,
         create_user/4,
         create_user_hierarchy_group/3,
         create_user_hierarchy_group/4,
         create_vocabulary/3,
         create_vocabulary/4,
         deactivate_evaluation_form/4,
         deactivate_evaluation_form/5,
         delete_contact_evaluation/4,
         delete_contact_evaluation/5,
         delete_contact_flow/4,
         delete_contact_flow/5,
         delete_contact_flow_module/4,
         delete_contact_flow_module/5,
         delete_evaluation_form/4,
         delete_evaluation_form/5,
         delete_hours_of_operation/4,
         delete_hours_of_operation/5,
         delete_instance/3,
         delete_instance/4,
         delete_integration_association/4,
         delete_integration_association/5,
         delete_prompt/4,
         delete_prompt/5,
         delete_queue/4,
         delete_queue/5,
         delete_quick_connect/4,
         delete_quick_connect/5,
         delete_routing_profile/4,
         delete_routing_profile/5,
         delete_rule/4,
         delete_rule/5,
         delete_security_profile/4,
         delete_security_profile/5,
         delete_task_template/4,
         delete_task_template/5,
         delete_traffic_distribution_group/3,
         delete_traffic_distribution_group/4,
         delete_use_case/5,
         delete_use_case/6,
         delete_user/4,
         delete_user/5,
         delete_user_hierarchy_group/4,
         delete_user_hierarchy_group/5,
         delete_vocabulary/4,
         delete_vocabulary/5,
         describe_agent_status/3,
         describe_agent_status/5,
         describe_agent_status/6,
         describe_contact/3,
         describe_contact/5,
         describe_contact/6,
         describe_contact_evaluation/3,
         describe_contact_evaluation/5,
         describe_contact_evaluation/6,
         describe_contact_flow/3,
         describe_contact_flow/5,
         describe_contact_flow/6,
         describe_contact_flow_module/3,
         describe_contact_flow_module/5,
         describe_contact_flow_module/6,
         describe_evaluation_form/3,
         describe_evaluation_form/5,
         describe_evaluation_form/6,
         describe_hours_of_operation/3,
         describe_hours_of_operation/5,
         describe_hours_of_operation/6,
         describe_instance/2,
         describe_instance/4,
         describe_instance/5,
         describe_instance_attribute/3,
         describe_instance_attribute/5,
         describe_instance_attribute/6,
         describe_instance_storage_config/4,
         describe_instance_storage_config/6,
         describe_instance_storage_config/7,
         describe_phone_number/2,
         describe_phone_number/4,
         describe_phone_number/5,
         describe_prompt/3,
         describe_prompt/5,
         describe_prompt/6,
         describe_queue/3,
         describe_queue/5,
         describe_queue/6,
         describe_quick_connect/3,
         describe_quick_connect/5,
         describe_quick_connect/6,
         describe_routing_profile/3,
         describe_routing_profile/5,
         describe_routing_profile/6,
         describe_rule/3,
         describe_rule/5,
         describe_rule/6,
         describe_security_profile/3,
         describe_security_profile/5,
         describe_security_profile/6,
         describe_traffic_distribution_group/2,
         describe_traffic_distribution_group/4,
         describe_traffic_distribution_group/5,
         describe_user/3,
         describe_user/5,
         describe_user/6,
         describe_user_hierarchy_group/3,
         describe_user_hierarchy_group/5,
         describe_user_hierarchy_group/6,
         describe_user_hierarchy_structure/2,
         describe_user_hierarchy_structure/4,
         describe_user_hierarchy_structure/5,
         describe_vocabulary/3,
         describe_vocabulary/5,
         describe_vocabulary/6,
         disassociate_approved_origin/3,
         disassociate_approved_origin/4,
         disassociate_bot/3,
         disassociate_bot/4,
         disassociate_instance_storage_config/4,
         disassociate_instance_storage_config/5,
         disassociate_lambda_function/3,
         disassociate_lambda_function/4,
         disassociate_lex_bot/3,
         disassociate_lex_bot/4,
         disassociate_phone_number_contact_flow/3,
         disassociate_phone_number_contact_flow/4,
         disassociate_queue_quick_connects/4,
         disassociate_queue_quick_connects/5,
         disassociate_routing_profile_queues/4,
         disassociate_routing_profile_queues/5,
         disassociate_security_key/4,
         disassociate_security_key/5,
         dismiss_user_contact/4,
         dismiss_user_contact/5,
         get_contact_attributes/3,
         get_contact_attributes/5,
         get_contact_attributes/6,
         get_current_metric_data/3,
         get_current_metric_data/4,
         get_current_user_data/3,
         get_current_user_data/4,
         get_federation_token/2,
         get_federation_token/4,
         get_federation_token/5,
         get_metric_data/3,
         get_metric_data/4,
         get_metric_data_v2/2,
         get_metric_data_v2/3,
         get_prompt_file/3,
         get_prompt_file/5,
         get_prompt_file/6,
         get_task_template/3,
         get_task_template/5,
         get_task_template/6,
         get_traffic_distribution/2,
         get_traffic_distribution/4,
         get_traffic_distribution/5,
         list_agent_statuses/2,
         list_agent_statuses/4,
         list_agent_statuses/5,
         list_approved_origins/2,
         list_approved_origins/4,
         list_approved_origins/5,
         list_bots/3,
         list_bots/5,
         list_bots/6,
         list_contact_evaluations/3,
         list_contact_evaluations/5,
         list_contact_evaluations/6,
         list_contact_flow_modules/2,
         list_contact_flow_modules/4,
         list_contact_flow_modules/5,
         list_contact_flows/2,
         list_contact_flows/4,
         list_contact_flows/5,
         list_contact_references/4,
         list_contact_references/6,
         list_contact_references/7,
         list_default_vocabularies/3,
         list_default_vocabularies/4,
         list_evaluation_form_versions/3,
         list_evaluation_form_versions/5,
         list_evaluation_form_versions/6,
         list_evaluation_forms/2,
         list_evaluation_forms/4,
         list_evaluation_forms/5,
         list_hours_of_operations/2,
         list_hours_of_operations/4,
         list_hours_of_operations/5,
         list_instance_attributes/2,
         list_instance_attributes/4,
         list_instance_attributes/5,
         list_instance_storage_configs/3,
         list_instance_storage_configs/5,
         list_instance_storage_configs/6,
         list_instances/1,
         list_instances/3,
         list_instances/4,
         list_integration_associations/2,
         list_integration_associations/4,
         list_integration_associations/5,
         list_lambda_functions/2,
         list_lambda_functions/4,
         list_lambda_functions/5,
         list_lex_bots/2,
         list_lex_bots/4,
         list_lex_bots/5,
         list_phone_numbers/2,
         list_phone_numbers/4,
         list_phone_numbers/5,
         list_phone_numbers_v2/2,
         list_phone_numbers_v2/3,
         list_prompts/2,
         list_prompts/4,
         list_prompts/5,
         list_queue_quick_connects/3,
         list_queue_quick_connects/5,
         list_queue_quick_connects/6,
         list_queues/2,
         list_queues/4,
         list_queues/5,
         list_quick_connects/2,
         list_quick_connects/4,
         list_quick_connects/5,
         list_routing_profile_queues/3,
         list_routing_profile_queues/5,
         list_routing_profile_queues/6,
         list_routing_profiles/2,
         list_routing_profiles/4,
         list_routing_profiles/5,
         list_rules/2,
         list_rules/4,
         list_rules/5,
         list_security_keys/2,
         list_security_keys/4,
         list_security_keys/5,
         list_security_profile_permissions/3,
         list_security_profile_permissions/5,
         list_security_profile_permissions/6,
         list_security_profiles/2,
         list_security_profiles/4,
         list_security_profiles/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_task_templates/2,
         list_task_templates/4,
         list_task_templates/5,
         list_traffic_distribution_groups/1,
         list_traffic_distribution_groups/3,
         list_traffic_distribution_groups/4,
         list_use_cases/3,
         list_use_cases/5,
         list_use_cases/6,
         list_user_hierarchy_groups/2,
         list_user_hierarchy_groups/4,
         list_user_hierarchy_groups/5,
         list_users/2,
         list_users/4,
         list_users/5,
         monitor_contact/2,
         monitor_contact/3,
         put_user_status/4,
         put_user_status/5,
         release_phone_number/3,
         release_phone_number/4,
         replicate_instance/3,
         replicate_instance/4,
         resume_contact_recording/2,
         resume_contact_recording/3,
         search_available_phone_numbers/2,
         search_available_phone_numbers/3,
         search_hours_of_operations/2,
         search_hours_of_operations/3,
         search_prompts/2,
         search_prompts/3,
         search_queues/2,
         search_queues/3,
         search_quick_connects/2,
         search_quick_connects/3,
         search_resource_tags/2,
         search_resource_tags/3,
         search_routing_profiles/2,
         search_routing_profiles/3,
         search_security_profiles/2,
         search_security_profiles/3,
         search_users/2,
         search_users/3,
         search_vocabularies/3,
         search_vocabularies/4,
         start_chat_contact/2,
         start_chat_contact/3,
         start_contact_evaluation/3,
         start_contact_evaluation/4,
         start_contact_recording/2,
         start_contact_recording/3,
         start_contact_streaming/2,
         start_contact_streaming/3,
         start_outbound_voice_contact/2,
         start_outbound_voice_contact/3,
         start_task_contact/2,
         start_task_contact/3,
         stop_contact/2,
         stop_contact/3,
         stop_contact_recording/2,
         stop_contact_recording/3,
         stop_contact_streaming/2,
         stop_contact_streaming/3,
         submit_contact_evaluation/4,
         submit_contact_evaluation/5,
         suspend_contact_recording/2,
         suspend_contact_recording/3,
         tag_resource/3,
         tag_resource/4,
         transfer_contact/2,
         transfer_contact/3,
         untag_resource/3,
         untag_resource/4,
         update_agent_status/4,
         update_agent_status/5,
         update_contact/4,
         update_contact/5,
         update_contact_attributes/2,
         update_contact_attributes/3,
         update_contact_evaluation/4,
         update_contact_evaluation/5,
         update_contact_flow_content/4,
         update_contact_flow_content/5,
         update_contact_flow_metadata/4,
         update_contact_flow_metadata/5,
         update_contact_flow_module_content/4,
         update_contact_flow_module_content/5,
         update_contact_flow_module_metadata/4,
         update_contact_flow_module_metadata/5,
         update_contact_flow_name/4,
         update_contact_flow_name/5,
         update_contact_schedule/2,
         update_contact_schedule/3,
         update_evaluation_form/4,
         update_evaluation_form/5,
         update_hours_of_operation/4,
         update_hours_of_operation/5,
         update_instance_attribute/4,
         update_instance_attribute/5,
         update_instance_storage_config/4,
         update_instance_storage_config/5,
         update_participant_role_config/4,
         update_participant_role_config/5,
         update_phone_number/3,
         update_phone_number/4,
         update_prompt/4,
         update_prompt/5,
         update_queue_hours_of_operation/4,
         update_queue_hours_of_operation/5,
         update_queue_max_contacts/4,
         update_queue_max_contacts/5,
         update_queue_name/4,
         update_queue_name/5,
         update_queue_outbound_caller_config/4,
         update_queue_outbound_caller_config/5,
         update_queue_status/4,
         update_queue_status/5,
         update_quick_connect_config/4,
         update_quick_connect_config/5,
         update_quick_connect_name/4,
         update_quick_connect_name/5,
         update_routing_profile_agent_availability_timer/4,
         update_routing_profile_agent_availability_timer/5,
         update_routing_profile_concurrency/4,
         update_routing_profile_concurrency/5,
         update_routing_profile_default_outbound_queue/4,
         update_routing_profile_default_outbound_queue/5,
         update_routing_profile_name/4,
         update_routing_profile_name/5,
         update_routing_profile_queues/4,
         update_routing_profile_queues/5,
         update_rule/4,
         update_rule/5,
         update_security_profile/4,
         update_security_profile/5,
         update_task_template/4,
         update_task_template/5,
         update_traffic_distribution/3,
         update_traffic_distribution/4,
         update_user_hierarchy/4,
         update_user_hierarchy/5,
         update_user_hierarchy_group_name/4,
         update_user_hierarchy_group_name/5,
         update_user_hierarchy_structure/3,
         update_user_hierarchy_structure/4,
         update_user_identity_info/4,
         update_user_identity_info/5,
         update_user_phone_config/4,
         update_user_phone_config/5,
         update_user_routing_profile/4,
         update_user_routing_profile/5,
         update_user_security_profiles/4,
         update_user_security_profiles/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates an evaluation form in the specified Amazon Connect
%% instance.
%%
%% After the evaluation form is activated, it is available to start new
%% evaluations based on the form.
activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).
activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/activate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates an approved origin to an Amazon Connect instance.
associate_approved_origin(Client, InstanceId, Input) ->
    associate_approved_origin(Client, InstanceId, Input, []).
associate_approved_origin(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origin"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Amazon Lex or Amazon Lex V2 bot.
associate_bot(Client, InstanceId, Input) ->
    associate_bot(Client, InstanceId, Input, []).
associate_bot(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bot"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an existing vocabulary as the default.
%%
%% Contact Lens for Amazon Connect uses the vocabulary in post-call and
%% real-time analysis sessions for the given language.
associate_default_vocabulary(Client, InstanceId, LanguageCode, Input) ->
    associate_default_vocabulary(Client, InstanceId, LanguageCode, Input, []).
associate_default_vocabulary(Client, InstanceId, LanguageCode, Input0, Options0) ->
    Method = put,
    Path = ["/default-vocabulary/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(LanguageCode), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates a storage resource type for the first time. You can only
%% associate one type of storage configuration in a single call. This means,
%% for example, that you can't define an instance with multiple S3
%% buckets for storing chat transcripts.
%%
%% This API does not create a resource that doesn't exist. It only
%% associates it to the instance. Ensure that the resource being specified in
%% the storage configuration, like an S3 bucket, exists when being used for
%% association.
associate_instance_storage_config(Client, InstanceId, Input) ->
    associate_instance_storage_config(Client, InstanceId, Input, []).
associate_instance_storage_config(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Lambda function.
associate_lambda_function(Client, InstanceId, Input) ->
    associate_lambda_function(Client, InstanceId, Input, []).
associate_lambda_function(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-function"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Amazon Lex V1 bot. This API only supports the association of Amazon Lex V1
%% bots.
associate_lex_bot(Client, InstanceId, Input) ->
    associate_lex_bot(Client, InstanceId, Input, []).
associate_lex_bot(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bot"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a flow with a phone number claimed to your Amazon Connect
%% instance.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling this API using an instance in the Amazon Web Services Region where
%% the traffic distribution group was created, you can use either a full
%% phone number ARN or UUID value for the `PhoneNumberId' URI request
%% parameter. However, if the number is claimed to a traffic distribution
%% group and you are calling this API using an instance in the alternate
%% Amazon Web Services Region associated with the traffic distribution group,
%% you must provide a full phone number ARN. If a UUID is provided in this
%% scenario, you will receive a `ResourceNotFoundException'.
associate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    associate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).
associate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates a set of quick connects with a queue.
associate_queue_quick_connects(Client, InstanceId, QueueId, Input) ->
    associate_queue_quick_connects(Client, InstanceId, QueueId, Input, []).
associate_queue_quick_connects(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/associate-quick-connects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a set of queues with a routing profile.
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/associate-queues"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates a security key to the instance.
associate_security_key(Client, InstanceId, Input) ->
    associate_security_key(Client, InstanceId, Input, []).
associate_security_key(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-key"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Claims an available phone number to your Amazon Connect instance or
%% traffic distribution group.
%%
%% You can call this API only in the same Amazon Web Services Region where
%% the Amazon Connect instance or traffic distribution group was created.
%%
%% For more information about how to use this operation, see Claim a phone
%% number in your country and Claim phone numbers to traffic distribution
%% groups in the Amazon Connect Administrator Guide.
%%
%% You can call the SearchAvailablePhoneNumbers API for available phone
%% numbers that you can claim. Call the DescribePhoneNumber API to verify the
%% status of a previous ClaimPhoneNumber operation.
%%
%% If you plan to claim and release numbers frequently during a 30 day
%% period, contact us for a service quota exception. Otherwise, it is
%% possible you will be blocked from claiming and releasing any more numbers
%% until 30 days past the oldest number released has expired.
%%
%% By default you can claim and release up to 200% of your maximum number of
%% active phone numbers during any 30 day period. If you claim and release
%% phone numbers using the UI or API during a rolling 30 day cycle that
%% exceeds 200% of your phone number service level quota, you will be blocked
%% from claiming any more numbers until 30 days past the oldest number
%% released has expired.
%%
%% For example, if you already have 99 claimed numbers and a service level
%% quota of 99 phone numbers, and in any 30 day period you release 99, claim
%% 99, and then release 99, you will have exceeded the 200% limit. At that
%% point you are blocked from claiming any more numbers until you open an
%% Amazon Web Services support ticket.
claim_phone_number(Client, Input) ->
    claim_phone_number(Client, Input, []).
claim_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/claim"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Creates an agent status for the specified Amazon Connect instance.
create_agent_status(Client, InstanceId, Input) ->
    create_agent_status(Client, InstanceId, Input, []).
create_agent_status(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a flow for the specified Amazon Connect instance.
%%
%% You can also create and update flows using the Amazon Connect Flow
%% language.
create_contact_flow(Client, InstanceId, Input) ->
    create_contact_flow(Client, InstanceId, Input, []).
create_contact_flow(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a flow module for the specified Amazon Connect instance.
create_contact_flow_module(Client, InstanceId, Input) ->
    create_contact_flow_module(Client, InstanceId, Input, []).
create_contact_flow_module(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an evaluation form in the specified Amazon Connect instance.
%%
%% The form can be used to define questions related to agent performance, and
%% create sections to organize such questions. Question and section
%% identifiers cannot be duplicated within the same evaluation form.
create_evaluation_form(Client, InstanceId, Input) ->
    create_evaluation_form(Client, InstanceId, Input, []).
create_evaluation_form(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Creates hours of operation.
create_hours_of_operation(Client, InstanceId, Input) ->
    create_hours_of_operation(Client, InstanceId, Input, []).
create_hours_of_operation(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Initiates an Amazon Connect instance with all the supported channels
%% enabled. It does not attach any storage, such as Amazon Simple Storage
%% Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
%% configurations on features, such as Contact Lens for Amazon Connect.
%%
%% Amazon Connect enforces a limit on the total number of instances that you
%% can create or delete in 30 days. If you exceed this limit, you will get an
%% error message indicating there has been an excessive number of attempts at
%% creating or deleting instances. You must wait 30 days before you can
%% restart creating and deleting instances in your account.
create_instance(Client, Input) ->
    create_instance(Client, Input, []).
create_instance(Client, Input0, Options0) ->
    Method = put,
    Path = ["/instance"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Web Services resource association with an Amazon
%% Connect instance.
create_integration_association(Client, InstanceId, Input) ->
    create_integration_association(Client, InstanceId, Input, []).
create_integration_association(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new participant into an on-going chat contact.
%%
%% For more information, see Customize chat flow experiences by integrating
%% custom participants.
create_participant(Client, Input) ->
    create_participant(Client, Input, []).
create_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/create-participant"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a prompt.
%%
%% For more information about prompts, such as supported file types and
%% maximum length, see Create prompts in the Amazon Connect
%% Administrator's Guide.
create_prompt(Client, InstanceId, Input) ->
    create_prompt(Client, InstanceId, Input, []).
create_prompt(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Creates a new queue for the specified Amazon Connect instance.
%%
%% If the number being used in the input is claimed to a traffic distribution
%% group, and you are calling this API using an instance in the Amazon Web
%% Services Region where the traffic distribution group was created, you can
%% use either a full phone number ARN or UUID value for the
%% `OutboundCallerIdNumberId' value of the OutboundCallerConfig request
%% body parameter. However, if the number is claimed to a traffic
%% distribution group and you are calling this API using an instance in the
%% alternate Amazon Web Services Region associated with the traffic
%% distribution group, you must provide a full phone number ARN. If a UUID is
%% provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
%%
%% Only use the phone number ARN format that doesn't contain
%% `instance' in the path, for example,
%% `arn:aws:connect:us-east-1:1234567890:phone-number/uuid'. This is the
%% same ARN format that is returned when you call the ListPhoneNumbersV2 API.
create_queue(Client, InstanceId, Input) ->
    create_queue(Client, InstanceId, Input, []).
create_queue(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a quick connect for the specified Amazon Connect instance.
create_quick_connect(Client, InstanceId, Input) ->
    create_quick_connect(Client, InstanceId, Input, []).
create_quick_connect(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new routing profile.
create_routing_profile(Client, InstanceId, Input) ->
    create_routing_profile(Client, InstanceId, Input, []).
create_routing_profile(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a rule for the specified Amazon Connect instance.
%%
%% Use the Rules Function language to code conditions for the rule.
create_rule(Client, InstanceId, Input) ->
    create_rule(Client, InstanceId, Input, []).
create_rule(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Creates a security profile.
create_security_profile(Client, InstanceId, Input) ->
    create_security_profile(Client, InstanceId, Input, []).
create_security_profile(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new task template in the specified Amazon Connect instance.
create_task_template(Client, InstanceId, Input) ->
    create_task_template(Client, InstanceId, Input, []).
create_task_template(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a traffic distribution group given an Amazon Connect instance
%% that has been replicated.
%%
%% For more information about creating traffic distribution groups, see Set
%% up traffic distribution groups in the Amazon Connect Administrator Guide.
create_traffic_distribution_group(Client, Input) ->
    create_traffic_distribution_group(Client, Input, []).
create_traffic_distribution_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/traffic-distribution-group"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a use case for an integration association.
create_use_case(Client, InstanceId, IntegrationAssociationId, Input) ->
    create_use_case(Client, InstanceId, IntegrationAssociationId, Input, []).
create_use_case(Client, InstanceId, IntegrationAssociationId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a user account for the specified Amazon Connect instance.
%%
%% For information about how to create user accounts using the Amazon Connect
%% console, see Add Users in the Amazon Connect Administrator Guide.
create_user(Client, InstanceId, Input) ->
    create_user(Client, InstanceId, Input, []).
create_user(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/users/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new user hierarchy group.
create_user_hierarchy_group(Client, InstanceId, Input) ->
    create_user_hierarchy_group(Client, InstanceId, Input, []).
create_user_hierarchy_group(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom vocabulary associated with your Amazon Connect
%% instance.
%%
%% You can set a custom vocabulary to be your default vocabulary for a given
%% language. Contact Lens for Amazon Connect uses the default vocabulary in
%% post-call and real-time contact analysis sessions for that language.
create_vocabulary(Client, InstanceId, Input) ->
    create_vocabulary(Client, InstanceId, Input, []).
create_vocabulary(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates an evaluation form in the specified Amazon Connect
%% instance.
%%
%% After a form is deactivated, it is no longer available for users to start
%% new evaluations based on the form.
deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).
deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/deactivate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a contact evaluation in the specified Amazon Connect
%% instance.
delete_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    delete_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).
delete_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a flow for the specified Amazon Connect instance.
delete_contact_flow(Client, ContactFlowId, InstanceId, Input) ->
    delete_contact_flow(Client, ContactFlowId, InstanceId, Input, []).
delete_contact_flow(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified flow module.
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input) ->
    delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input, []).
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an evaluation form in the specified Amazon Connect instance.
%%
%% <ul> <li> If the version property is provided, only the specified version
%% of the evaluation form is deleted.
%%
%% </li> <li> If no version is provided, then the full form (all versions) is
%% deleted.
%%
%% </li> </ul>
delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).
delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"version">>, <<"EvaluationFormVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes an hours of operation.
delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input) ->
    delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input, []).
delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes the Amazon Connect instance.
%%
%% Amazon Connect enforces a limit on the total number of instances that you
%% can create or delete in 30 days. If you exceed this limit, you will get an
%% error message indicating there has been an excessive number of attempts at
%% creating or deleting instances. You must wait 30 days before you can
%% restart creating and deleting instances in your account.
delete_instance(Client, InstanceId, Input) ->
    delete_instance(Client, InstanceId, Input, []).
delete_instance(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Web Services resource association from an Amazon
%% Connect instance.
%%
%% The association must not have any use cases associated with it.
delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input) ->
    delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input, []).
delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a prompt.
delete_prompt(Client, InstanceId, PromptId, Input) ->
    delete_prompt(Client, InstanceId, PromptId, Input, []).
delete_prompt(Client, InstanceId, PromptId, Input0, Options0) ->
    Method = delete,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a queue.
delete_queue(Client, InstanceId, QueueId, Input) ->
    delete_queue(Client, InstanceId, QueueId, Input, []).
delete_queue(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a quick connect.
delete_quick_connect(Client, InstanceId, QuickConnectId, Input) ->
    delete_quick_connect(Client, InstanceId, QuickConnectId, Input, []).
delete_quick_connect(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = delete,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a routing profile.
delete_routing_profile(Client, InstanceId, RoutingProfileId, Input) ->
    delete_routing_profile(Client, InstanceId, RoutingProfileId, Input, []).
delete_routing_profile(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a rule for the specified Amazon Connect instance.
delete_rule(Client, InstanceId, RuleId, Input) ->
    delete_rule(Client, InstanceId, RuleId, Input, []).
delete_rule(Client, InstanceId, RuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes a security profile.
delete_security_profile(Client, InstanceId, SecurityProfileId, Input) ->
    delete_security_profile(Client, InstanceId, SecurityProfileId, Input, []).
delete_security_profile(Client, InstanceId, SecurityProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the task template.
delete_task_template(Client, InstanceId, TaskTemplateId, Input) ->
    delete_task_template(Client, InstanceId, TaskTemplateId, Input, []).
delete_task_template(Client, InstanceId, TaskTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic distribution group.
%%
%% This API can be called only in the Region where the traffic distribution
%% group is created.
%%
%% For more information about deleting traffic distribution groups, see
%% Delete traffic distribution groups in the Amazon Connect Administrator
%% Guide.
delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input) ->
    delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input, []).
delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a use case from an integration association.
delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input) ->
    delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input, []).
delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases/", aws_util:encode_uri(UseCaseId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user account from the specified Amazon Connect instance.
%%
%% For information about what happens to a user's data when their account
%% is deleted, see Delete Users from Your Amazon Connect Instance in the
%% Amazon Connect Administrator Guide.
delete_user(Client, InstanceId, UserId, Input) ->
    delete_user(Client, InstanceId, UserId, Input, []).
delete_user(Client, InstanceId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing user hierarchy group.
%%
%% It must not be associated with any agents or have any active child groups.
delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input) ->
    delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input, []).
delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the vocabulary that has the given identifier.
delete_vocabulary(Client, InstanceId, VocabularyId, Input) ->
    delete_vocabulary(Client, InstanceId, VocabularyId, Input, []).
delete_vocabulary(Client, InstanceId, VocabularyId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary-remove/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(VocabularyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes an agent status.
describe_agent_status(Client, AgentStatusId, InstanceId)
  when is_map(Client) ->
    describe_agent_status(Client, AgentStatusId, InstanceId, #{}, #{}).

describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap, []).

describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AgentStatusId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the specified contact.
%%
%% Contact information remains available in Amazon Connect for 24 months, and
%% then it is deleted.
%%
%% Only data from November 12, 2021, and later is returned by this API.
describe_contact(Client, ContactId, InstanceId)
  when is_map(Client) ->
    describe_contact(Client, ContactId, InstanceId, #{}, #{}).

describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap, []).

describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contacts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a contact evaluation in the specified Amazon Connect
%% instance.
describe_contact_evaluation(Client, EvaluationId, InstanceId)
  when is_map(Client) ->
    describe_contact_evaluation(Client, EvaluationId, InstanceId, #{}, #{}).

describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap, []).

describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified flow.
%%
%% You can also create and update flows using the Amazon Connect Flow
%% language.
describe_contact_flow(Client, ContactFlowId, InstanceId)
  when is_map(Client) ->
    describe_contact_flow(Client, ContactFlowId, InstanceId, #{}, #{}).

describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, []).

describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified flow module.
describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId)
  when is_map(Client) ->
    describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, #{}, #{}).

describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap, []).

describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an evaluation form in the specified Amazon Connect
%% instance.
%%
%% If the version property is not provided, the latest version of the
%% evaluation form is described.
describe_evaluation_form(Client, EvaluationFormId, InstanceId)
  when is_map(Client) ->
    describe_evaluation_form(Client, EvaluationFormId, InstanceId, #{}, #{}).

describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, []).

describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the hours of operation.
describe_hours_of_operation(Client, HoursOfOperationId, InstanceId)
  when is_map(Client) ->
    describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, #{}, #{}).

describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, []).

describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns the current state of the specified instance identifier. It tracks
%% the instance while it is being created and returns an error status, if
%% applicable.
%%
%% If an instance is not created successfully, the instance status reason
%% field returns details relevant to the reason. The instance in a failed
%% state is returned only for 24 hours after the CreateInstance API was
%% invoked.
describe_instance(Client, InstanceId)
  when is_map(Client) ->
    describe_instance(Client, InstanceId, #{}, #{}).

describe_instance(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance(Client, InstanceId, QueryMap, HeadersMap, []).

describe_instance(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the specified instance attribute.
describe_instance_attribute(Client, AttributeType, InstanceId)
  when is_map(Client) ->
    describe_instance_attribute(Client, AttributeType, InstanceId, #{}, #{}).

describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap, []).

describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attribute/", aws_util:encode_uri(AttributeType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Retrieves the current storage configurations for the specified resource
%% type, association ID, and instance ID.
describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType)
  when is_map(Client) ->
    describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, #{}, #{}).

describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap, []).

describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details and status of a phone number that’s claimed to your
%% Amazon Connect instance or traffic distribution group.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling in the Amazon Web Services Region where the traffic distribution
%% group was created, you can use either a phone number ARN or UUID value for
%% the `PhoneNumberId' URI request parameter. However, if the number is
%% claimed to a traffic distribution group and you are calling this API in
%% the alternate Amazon Web Services Region associated with the traffic
%% distribution group, you must provide a full phone number ARN. If a UUID is
%% provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
describe_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    describe_phone_number(Client, PhoneNumberId, #{}, #{}).

describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the prompt.
describe_prompt(Client, InstanceId, PromptId)
  when is_map(Client) ->
    describe_prompt(Client, InstanceId, PromptId, #{}, #{}).

describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap, []).

describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the specified queue.
describe_queue(Client, InstanceId, QueueId)
  when is_map(Client) ->
    describe_queue(Client, InstanceId, QueueId, #{}, #{}).

describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap, []).

describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the quick connect.
describe_quick_connect(Client, InstanceId, QuickConnectId)
  when is_map(Client) ->
    describe_quick_connect(Client, InstanceId, QuickConnectId, #{}, #{}).

describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap, []).

describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified routing profile.
describe_routing_profile(Client, InstanceId, RoutingProfileId)
  when is_map(Client) ->
    describe_routing_profile(Client, InstanceId, RoutingProfileId, #{}, #{}).

describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, []).

describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a rule for the specified Amazon Connect instance.
describe_rule(Client, InstanceId, RuleId)
  when is_map(Client) ->
    describe_rule(Client, InstanceId, RuleId, #{}, #{}).

describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap, []).

describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Gets basic information about the security profle.
describe_security_profile(Client, InstanceId, SecurityProfileId)
  when is_map(Client) ->
    describe_security_profile(Client, InstanceId, SecurityProfileId, #{}, #{}).

describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, []).

describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details and status of a traffic distribution group.
describe_traffic_distribution_group(Client, TrafficDistributionGroupId)
  when is_map(Client) ->
    describe_traffic_distribution_group(Client, TrafficDistributionGroupId, #{}, #{}).

describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, []).

describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified user account.
%%
%% You can find the instance ID in the Amazon Connect console (it’s the final
%% part of the ARN). The console does not display the user IDs. Instead, list
%% the users and note the IDs provided in the output.
describe_user(Client, InstanceId, UserId)
  when is_map(Client) ->
    describe_user(Client, InstanceId, UserId, #{}, #{}).

describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap, []).

describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified hierarchy group.
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, #{}, #{}).

describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap, []).

describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the hierarchy structure of the specified Amazon Connect
%% instance.
describe_user_hierarchy_structure(Client, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_structure(Client, InstanceId, #{}, #{}).

describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap, []).

describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-structure/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified vocabulary.
describe_vocabulary(Client, InstanceId, VocabularyId)
  when is_map(Client) ->
    describe_vocabulary(Client, InstanceId, VocabularyId, #{}, #{}).

describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap, []).

describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vocabulary/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(VocabularyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes access to integrated applications from Amazon Connect.
disassociate_approved_origin(Client, InstanceId, Input) ->
    disassociate_approved_origin(Client, InstanceId, Input, []).
disassociate_approved_origin(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origin"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"origin">>, <<"Origin">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes authorization from the specified instance to access the specified
%% Amazon Lex or Amazon Lex V2 bot.
disassociate_bot(Client, InstanceId, Input) ->
    disassociate_bot(Client, InstanceId, Input, []).
disassociate_bot(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bot"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Removes the storage type configurations for the specified resource type
%% and association ID.
disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input) ->
    disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input, []).
disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Remove the Lambda function from the dropdown options available in the
%% relevant flow blocks.
disassociate_lambda_function(Client, InstanceId, Input) ->
    disassociate_lambda_function(Client, InstanceId, Input, []).
disassociate_lambda_function(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-function"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"functionArn">>, <<"FunctionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes authorization from the specified instance to access the specified
%% Amazon Lex bot.
disassociate_lex_bot(Client, InstanceId, Input) ->
    disassociate_lex_bot(Client, InstanceId, Input, []).
disassociate_lex_bot(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bot"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"botName">>, <<"BotName">>},
                     {<<"lexRegion">>, <<"LexRegion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the flow association from a phone number claimed to your
%% Amazon Connect instance.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling this API using an instance in the Amazon Web Services Region where
%% the traffic distribution group was created, you can use either a full
%% phone number ARN or UUID value for the `PhoneNumberId' URI request
%% parameter. However, if the number is claimed to a traffic distribution
%% group and you are calling this API using an instance in the alternate
%% Amazon Web Services Region associated with the traffic distribution group,
%% you must provide a full phone number ARN. If a UUID is provided in this
%% scenario, you will receive a `ResourceNotFoundException'.
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"instanceId">>, <<"InstanceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Disassociates a set of quick connects from a queue.
disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input) ->
    disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input, []).
disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/disassociate-quick-connects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a set of queues from a routing profile.
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/disassociate-queues"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes the specified security key.
disassociate_security_key(Client, AssociationId, InstanceId, Input) ->
    disassociate_security_key(Client, AssociationId, InstanceId, Input, []).
disassociate_security_key(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-key/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Dismisses contacts from an agent’s CCP and returns the agent to an
%% available state, which allows the agent to receive a new routed contact.
%%
%% Contacts can only be dismissed if they are in a `MISSED', `ERROR',
%% `ENDED', or `REJECTED' state in the Agent Event Stream.
dismiss_user_contact(Client, InstanceId, UserId, Input) ->
    dismiss_user_contact(Client, InstanceId, UserId, Input, []).
dismiss_user_contact(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/contact"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the contact attributes for the specified contact.
get_contact_attributes(Client, InitialContactId, InstanceId)
  when is_map(Client) ->
    get_contact_attributes(Client, InitialContactId, InstanceId, #{}, #{}).

get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap, []).

get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(InitialContactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the real-time metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each metric, see Real-time Metrics Definitions in the
%% Amazon Connect Administrator Guide.
get_current_metric_data(Client, InstanceId, Input) ->
    get_current_metric_data(Client, InstanceId, Input, []).
get_current_metric_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/current/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the real-time active user data from the specified Amazon Connect
%% instance.
get_current_user_data(Client, InstanceId, Input) ->
    get_current_user_data(Client, InstanceId, Input, []).
get_current_user_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/userdata/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a token for federation.
%%
%% This API doesn't support root users. If you try to invoke
%% GetFederationToken with root credentials, an error message similar to the
%% following one appears:
%%
%% `Provided identity: Principal: .... User: .... cannot be used for
%% federation with Amazon Connect'
get_federation_token(Client, InstanceId)
  when is_map(Client) ->
    get_federation_token(Client, InstanceId, #{}, #{}).

get_federation_token(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_federation_token(Client, InstanceId, QueryMap, HeadersMap, []).

get_federation_token(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/federate/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets historical metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each historical metric, see Historical Metrics
%% Definitions in the Amazon Connect Administrator Guide.
get_metric_data(Client, InstanceId, Input) ->
    get_metric_data(Client, InstanceId, Input, []).
get_metric_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/historical/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets metric data from the specified Amazon Connect instance.
%%
%% `GetMetricDataV2' offers more features than GetMetricData, the
%% previous version of this API. It has new metrics, offers filtering at a
%% metric level, and offers the ability to filter and group data by channels,
%% queues, routing profiles, agents, and agent hierarchy levels. It can
%% retrieve historical data for the last 35 days, in 24-hour intervals.
%%
%% For a description of the historical metrics that are supported by
%% `GetMetricDataV2' and `GetMetricData', see Historical metrics
%% definitions in the Amazon Connect Administrator's Guide.
get_metric_data_v2(Client, Input) ->
    get_metric_data_v2(Client, Input, []).
get_metric_data_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/data"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the prompt file.
get_prompt_file(Client, InstanceId, PromptId)
  when is_map(Client) ->
    get_prompt_file(Client, InstanceId, PromptId, #{}, #{}).

get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap, []).

get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), "/file"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a specific task template in the specified Amazon
%% Connect instance.
get_task_template(Client, InstanceId, TaskTemplateId)
  when is_map(Client) ->
    get_task_template(Client, InstanceId, TaskTemplateId, #{}, #{}).

get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap, []).

get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"snapshotVersion">>, maps:get(<<"snapshotVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current traffic distribution for a given traffic
%% distribution group.
get_traffic_distribution(Client, Id)
  when is_map(Client) ->
    get_traffic_distribution(Client, Id, #{}, #{}).

get_traffic_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_distribution(Client, Id, QueryMap, HeadersMap, []).

get_traffic_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Lists agent statuses.
list_agent_statuses(Client, InstanceId)
  when is_map(Client) ->
    list_agent_statuses(Client, InstanceId, #{}, #{}).

list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap, []).

list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"AgentStatusTypes">>, maps:get(<<"AgentStatusTypes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all approved origins associated with the
%% instance.
list_approved_origins(Client, InstanceId)
  when is_map(Client) ->
    list_approved_origins(Client, InstanceId, #{}, #{}).

list_approved_origins(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_approved_origins(Client, InstanceId, QueryMap, HeadersMap, []).

list_approved_origins(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origins"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% For the specified version of Amazon Lex, returns a paginated list of all
%% the Amazon Lex bots currently associated with the instance. Use this API
%% to returns both Amazon Lex V1 and V2 bots.
list_bots(Client, InstanceId, LexVersion)
  when is_map(Client) ->
    list_bots(Client, InstanceId, LexVersion, #{}, #{}).

list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap, []).

list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bots"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"lexVersion">>, LexVersion},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists contact evaluations in the specified Amazon Connect instance.
list_contact_evaluations(Client, InstanceId, ContactId)
  when is_map(Client) ->
    list_contact_evaluations(Client, InstanceId, ContactId, #{}, #{}).

list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap, []).

list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"contactId">>, ContactId},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the flow modules for the specified Amazon
%% Connect instance.
list_contact_flow_modules(Client, InstanceId)
  when is_map(Client) ->
    list_contact_flow_modules(Client, InstanceId, #{}, #{}).

list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap, []).

list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flow-modules-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the flows for the specified Amazon Connect
%% instance.
%%
%% You can also create and update flows using the Amazon Connect Flow
%% language.
%%
%% For more information about flows, see Flows in the Amazon Connect
%% Administrator Guide.
list_contact_flows(Client, InstanceId)
  when is_map(Client) ->
    list_contact_flows(Client, InstanceId, #{}, #{}).

list_contact_flows(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_flows(Client, InstanceId, QueryMap, HeadersMap, []).

list_contact_flows(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flows-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"contactFlowTypes">>, maps:get(<<"contactFlowTypes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% For the specified `referenceTypes', returns a list of references
%% associated with the contact.
list_contact_references(Client, ContactId, InstanceId, ReferenceTypes)
  when is_map(Client) ->
    list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, #{}, #{}).

list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap, []).

list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/references/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"referenceTypes">>, ReferenceTypes}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the default vocabularies for the specified Amazon Connect
%% instance.
list_default_vocabularies(Client, InstanceId, Input) ->
    list_default_vocabularies(Client, InstanceId, Input, []).
list_default_vocabularies(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/default-vocabulary-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists versions of an evaluation form in the specified Amazon Connect
%% instance.
list_evaluation_form_versions(Client, EvaluationFormId, InstanceId)
  when is_map(Client) ->
    list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, #{}, #{}).

list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, []).

list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/versions"],
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

%% @doc Lists evaluation forms in the specified Amazon Connect instance.
list_evaluation_forms(Client, InstanceId)
  when is_map(Client) ->
    list_evaluation_forms(Client, InstanceId, #{}, #{}).

list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap, []).

list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Provides information about the hours of operation for the specified
%% Amazon Connect instance.
%%
%% For more information about hours of operation, see Set the Hours of
%% Operation for a Queue in the Amazon Connect Administrator Guide.
list_hours_of_operations(Client, InstanceId)
  when is_map(Client) ->
    list_hours_of_operations(Client, InstanceId, #{}, #{}).

list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap, []).

list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all attribute types for the given instance.
list_instance_attributes(Client, InstanceId)
  when is_map(Client) ->
    list_instance_attributes(Client, InstanceId, #{}, #{}).

list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap, []).

list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attributes"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of storage configs for the identified instance
%% and resource type.
list_instance_storage_configs(Client, InstanceId, ResourceType)
  when is_map(Client) ->
    list_instance_storage_configs(Client, InstanceId, ResourceType, #{}, #{}).

list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap, []).

list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-configs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Return a list of instances which are in active state, creation-in-progress
%% state, and failed state. Instances that aren't successfully created
%% (they are in a failed state) are returned only for 24 hours after the
%% CreateInstance API was invoked.
list_instances(Client)
  when is_map(Client) ->
    list_instances(Client, #{}, #{}).

list_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instances(Client, QueryMap, HeadersMap, []).

list_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance"],
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

%% @doc Provides summary information about the Amazon Web Services resource
%% associations for the specified Amazon Connect instance.
list_integration_associations(Client, InstanceId)
  when is_map(Client) ->
    list_integration_associations(Client, InstanceId, #{}, #{}).

list_integration_associations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_integration_associations(Client, InstanceId, QueryMap, HeadersMap, []).

list_integration_associations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"integrationType">>, maps:get(<<"integrationType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all Lambda functions that display in the
%% dropdown options in the relevant flow blocks.
list_lambda_functions(Client, InstanceId)
  when is_map(Client) ->
    list_lambda_functions(Client, InstanceId, #{}, #{}).

list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap, []).

list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-functions"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all the Amazon Lex V1 bots currently
%% associated with the instance. To return both Amazon Lex V1 and V2 bots,
%% use the ListBots API.
list_lex_bots(Client, InstanceId)
  when is_map(Client) ->
    list_lex_bots(Client, InstanceId, #{}, #{}).

list_lex_bots(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lex_bots(Client, InstanceId, QueryMap, HeadersMap, []).

list_lex_bots(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bots"],
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

%% @doc Provides information about the phone numbers for the specified Amazon
%% Connect instance.
%%
%% For more information about phone numbers, see Set Up Phone Numbers for
%% Your Contact Center in the Amazon Connect Administrator Guide.
%%
%% The phone number `Arn' value that is returned from each of the items
%% in the PhoneNumberSummaryList cannot be used to tag phone number
%% resources. It will fail with a `ResourceNotFoundException'. Instead,
%% use the ListPhoneNumbersV2 API. It returns the new phone number ARN that
%% can be used to tag phone number resources.
list_phone_numbers(Client, InstanceId)
  when is_map(Client) ->
    list_phone_numbers(Client, InstanceId, #{}, #{}).

list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap, []).

list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"phoneNumberCountryCodes">>, maps:get(<<"phoneNumberCountryCodes">>, QueryMap, undefined)},
        {<<"phoneNumberTypes">>, maps:get(<<"phoneNumberTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists phone numbers claimed to your Amazon Connect instance or
%% traffic distribution group.
%%
%% If the provided `TargetArn' is a traffic distribution group, you can
%% call this API in both Amazon Web Services Regions associated with traffic
%% distribution group.
%%
%% For more information about phone numbers, see Set Up Phone Numbers for
%% Your Contact Center in the Amazon Connect Administrator Guide.
list_phone_numbers_v2(Client, Input) ->
    list_phone_numbers_v2(Client, Input, []).
list_phone_numbers_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/list"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides information about the prompts for the specified Amazon
%% Connect instance.
list_prompts(Client, InstanceId)
  when is_map(Client) ->
    list_prompts(Client, InstanceId, #{}, #{}).

list_prompts(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_prompts(Client, InstanceId, QueryMap, HeadersMap, []).

list_prompts(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Lists the quick connects associated with a queue.
list_queue_quick_connects(Client, InstanceId, QueueId)
  when is_map(Client) ->
    list_queue_quick_connects(Client, InstanceId, QueueId, #{}, #{}).

list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap, []).

list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/quick-connects"],
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

%% @doc Provides information about the queues for the specified Amazon
%% Connect instance.
%%
%% If you do not specify a `QueueTypes' parameter, both standard and
%% agent queues are returned. This might cause an unexpected truncation of
%% results if you have more than 1000 agents and you limit the number of
%% results of the API call in code.
%%
%% For more information about queues, see Queues: Standard and Agent in the
%% Amazon Connect Administrator Guide.
list_queues(Client, InstanceId)
  when is_map(Client) ->
    list_queues(Client, InstanceId, #{}, #{}).

list_queues(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queues(Client, InstanceId, QueryMap, HeadersMap, []).

list_queues(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"queueTypes">>, maps:get(<<"queueTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the quick connects for the specified
%% Amazon Connect instance.
list_quick_connects(Client, InstanceId)
  when is_map(Client) ->
    list_quick_connects(Client, InstanceId, #{}, #{}).

list_quick_connects(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_quick_connects(Client, InstanceId, QueryMap, HeadersMap, []).

list_quick_connects(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"QuickConnectTypes">>, maps:get(<<"QuickConnectTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the queues associated with a routing profile.
list_routing_profile_queues(Client, InstanceId, RoutingProfileId)
  when is_map(Client) ->
    list_routing_profile_queues(Client, InstanceId, RoutingProfileId, #{}, #{}).

list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, []).

list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
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

%% @doc Provides summary information about the routing profiles for the
%% specified Amazon Connect instance.
%%
%% For more information about routing profiles, see Routing Profiles and
%% Create a Routing Profile in the Amazon Connect Administrator Guide.
list_routing_profiles(Client, InstanceId)
  when is_map(Client) ->
    list_routing_profiles(Client, InstanceId, #{}, #{}).

list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap, []).

list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc List all rules for the specified Amazon Connect instance.
list_rules(Client, InstanceId)
  when is_map(Client) ->
    list_rules(Client, InstanceId, #{}, #{}).

list_rules(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, InstanceId, QueryMap, HeadersMap, []).

list_rules(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"eventSourceName">>, maps:get(<<"eventSourceName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"publishStatus">>, maps:get(<<"publishStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all security keys associated with the
%% instance.
list_security_keys(Client, InstanceId)
  when is_map(Client) ->
    list_security_keys(Client, InstanceId, #{}, #{}).

list_security_keys(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_keys(Client, InstanceId, QueryMap, HeadersMap, []).

list_security_keys(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-keys"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Lists the permissions granted to a security profile.
list_security_profile_permissions(Client, InstanceId, SecurityProfileId)
  when is_map(Client) ->
    list_security_profile_permissions(Client, InstanceId, SecurityProfileId, #{}, #{}).

list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, []).

list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-permissions/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
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

%% @doc Provides summary information about the security profiles for the
%% specified Amazon Connect instance.
%%
%% For more information about security profiles, see Security Profiles in the
%% Amazon Connect Administrator Guide.
list_security_profiles(Client, InstanceId)
  when is_map(Client) ->
    list_security_profiles(Client, InstanceId, #{}, #{}).

list_security_profiles(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles(Client, InstanceId, QueryMap, HeadersMap, []).

list_security_profiles(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Lists the tags for the specified resource.
%%
%% For sample policies that use tags, see Amazon Connect Identity-Based
%% Policy Examples in the Amazon Connect Administrator Guide.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists task templates for the specified Amazon Connect instance.
list_task_templates(Client, InstanceId)
  when is_map(Client) ->
    list_task_templates(Client, InstanceId, #{}, #{}).

list_task_templates(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_task_templates(Client, InstanceId, QueryMap, HeadersMap, []).

list_task_templates(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists traffic distribution groups.
list_traffic_distribution_groups(Client)
  when is_map(Client) ->
    list_traffic_distribution_groups(Client, #{}, #{}).

list_traffic_distribution_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_distribution_groups(Client, QueryMap, HeadersMap, []).

list_traffic_distribution_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution-groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"instanceId">>, maps:get(<<"instanceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the use cases for the integration association.
list_use_cases(Client, InstanceId, IntegrationAssociationId)
  when is_map(Client) ->
    list_use_cases(Client, InstanceId, IntegrationAssociationId, #{}, #{}).

list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap, []).

list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases"],
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

%% @doc Provides summary information about the hierarchy groups for the
%% specified Amazon Connect instance.
%%
%% For more information about agent hierarchies, see Set Up Agent Hierarchies
%% in the Amazon Connect Administrator Guide.
list_user_hierarchy_groups(Client, InstanceId)
  when is_map(Client) ->
    list_user_hierarchy_groups(Client, InstanceId, #{}, #{}).

list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap, []).

list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-groups-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Provides summary information about the users for the specified Amazon
%% Connect instance.
list_users(Client, InstanceId)
  when is_map(Client) ->
    list_users(Client, InstanceId, #{}, #{}).

list_users(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, InstanceId, QueryMap, HeadersMap, []).

list_users(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/users-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Initiates silent monitoring of a contact.
%%
%% The Contact Control Panel (CCP) of the user specified by userId will be
%% set to silent monitoring mode on the contact.
monitor_contact(Client, Input) ->
    monitor_contact(Client, Input, []).
monitor_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/monitor"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the current status of a user or agent in Amazon Connect.
%%
%% If the agent is currently handling a contact, this sets the agent's
%% next status.
%%
%% For more information, see Agent status and Set your next status in the
%% Amazon Connect Administrator Guide.
put_user_status(Client, InstanceId, UserId, Input) ->
    put_user_status(Client, InstanceId, UserId, Input, []).
put_user_status(Client, InstanceId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Releases a phone number previously claimed to an Amazon Connect
%% instance or traffic distribution group.
%%
%% You can call this API only in the Amazon Web Services Region where the
%% number was claimed.
%%
%% To release phone numbers from a traffic distribution group, use the
%% `ReleasePhoneNumber' API, not the Amazon Connect console.
%%
%% After releasing a phone number, the phone number enters into a cooldown
%% period of 30 days. It cannot be searched for or claimed again until the
%% period has ended. If you accidentally release a phone number, contact
%% Amazon Web Services Support.
%%
%% If you plan to claim and release numbers frequently during a 30 day
%% period, contact us for a service quota exception. Otherwise, it is
%% possible you will be blocked from claiming and releasing any more numbers
%% until 30 days past the oldest number released has expired.
%%
%% By default you can claim and release up to 200% of your maximum number of
%% active phone numbers during any 30 day period. If you claim and release
%% phone numbers using the UI or API during a rolling 30 day cycle that
%% exceeds 200% of your phone number service level quota, you will be blocked
%% from claiming any more numbers until 30 days past the oldest number
%% released has expired.
%%
%% For example, if you already have 99 claimed numbers and a service level
%% quota of 99 phone numbers, and in any 30 day period you release 99, claim
%% 99, and then release 99, you will have exceeded the 200% limit. At that
%% point you are blocked from claiming any more numbers until you open an
%% Amazon Web Services support ticket.
release_phone_number(Client, PhoneNumberId, Input) ->
    release_phone_number(Client, PhoneNumberId, Input, []).
release_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"ClientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Replicates an Amazon Connect instance in the specified Amazon Web
%% Services Region.
%%
%% For more information about replicating an Amazon Connect instance, see
%% Create a replica of your existing Amazon Connect instance in the Amazon
%% Connect Administrator Guide.
replicate_instance(Client, InstanceId, Input) ->
    replicate_instance(Client, InstanceId, Input, []).
replicate_instance(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/replicate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, and the recording has been
%% suspended using SuspendContactRecording, this API resumes recording the
%% call or screen.
%%
%% Voice and screen recordings are supported.
resume_contact_recording(Client, Input) ->
    resume_contact_recording(Client, Input, []).
resume_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/resume-recording"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for available phone numbers that you can claim to your
%% Amazon Connect instance or traffic distribution group.
%%
%% If the provided `TargetArn' is a traffic distribution group, you can
%% call this API in both Amazon Web Services Regions associated with the
%% traffic distribution group.
search_available_phone_numbers(Client, Input) ->
    search_available_phone_numbers(Client, Input, []).
search_available_phone_numbers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/search-available"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches the hours of operation in an Amazon Connect instance, with
%% optional filtering.
search_hours_of_operations(Client, Input) ->
    search_hours_of_operations(Client, Input, []).
search_hours_of_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-hours-of-operations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches prompts in an Amazon Connect instance, with optional
%% filtering.
search_prompts(Client, Input) ->
    search_prompts(Client, Input, []).
search_prompts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-prompts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches queues in an Amazon Connect instance, with optional
%% filtering.
search_queues(Client, Input) ->
    search_queues(Client, Input, []).
search_queues(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-queues"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches quick connects in an Amazon Connect instance, with optional
%% filtering.
search_quick_connects(Client, Input) ->
    search_quick_connects(Client, Input, []).
search_quick_connects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-quick-connects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches tags used in an Amazon Connect instance using optional
%% search criteria.
search_resource_tags(Client, Input) ->
    search_resource_tags(Client, Input, []).
search_resource_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-resource-tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches routing profiles in an Amazon Connect instance, with
%% optional filtering.
search_routing_profiles(Client, Input) ->
    search_routing_profiles(Client, Input, []).
search_routing_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-routing-profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches security profiles in an Amazon Connect instance, with
%% optional filtering.
search_security_profiles(Client, Input) ->
    search_security_profiles(Client, Input, []).
search_security_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-security-profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches users in an Amazon Connect instance, with optional
%% filtering.
%%
%% `AfterContactWorkTimeLimit' is returned in milliseconds.
search_users(Client, Input) ->
    search_users(Client, Input, []).
search_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-users"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for vocabularies within a specific Amazon Connect instance
%% using `State', `NameStartsWith', and `LanguageCode'.
search_vocabularies(Client, InstanceId, Input) ->
    search_vocabularies(Client, InstanceId, Input, []).
search_vocabularies(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a flow to start a new chat for the customer.
%%
%% Response of this API provides a token required to obtain credentials from
%% the CreateParticipantConnection API in the Amazon Connect Participant
%% Service.
%%
%% When a new chat contact is successfully created, clients must subscribe to
%% the participant’s connection for the created chat within 5 minutes. This
%% is achieved by invoking CreateParticipantConnection with WEBSOCKET and
%% CONNECTION_CREDENTIALS.
%%
%% A 429 error occurs in the following situations:
%%
%% <ul> <li> API rate limit is exceeded. API TPS throttling returns a
%% `TooManyRequests' exception.
%%
%% </li> <li> The quota for concurrent active chats is exceeded. Active chat
%% throttling returns a `LimitExceededException'.
%%
%% </li> </ul> If you use the `ChatDurationInMinutes' parameter and
%% receive a 400 error, your account may not support the ability to configure
%% custom chat durations. For more information, contact Amazon Web Services
%% Support.
%%
%% For more information about chat, see Chat in the Amazon Connect
%% Administrator Guide.
start_chat_contact(Client, Input) ->
    start_chat_contact(Client, Input, []).
start_chat_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/chat"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an empty evaluation in the specified Amazon Connect instance,
%% using the given evaluation form for the particular contact.
%%
%% The evaluation form version used for the contact evaluation corresponds to
%% the currently activated version. If no version is activated for the
%% evaluation form, the contact evaluation cannot be started.
%%
%% Evaluations created through the public API do not contain answer values
%% suggested from automation.
start_contact_evaluation(Client, InstanceId, Input) ->
    start_contact_evaluation(Client, InstanceId, Input, []).
start_contact_evaluation(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts recording the contact:
%%
%% <ul> <li> If the API is called before the agent joins the call, recording
%% starts when the agent joins the call.
%%
%% </li> <li> If the API is called after the agent joins the call, recording
%% starts at the time of the API call.
%%
%% </li> </ul> StartContactRecording is a one-time action. For example, if
%% you use StopContactRecording to stop recording an ongoing call, you
%% can't use StartContactRecording to restart it. For scenarios where the
%% recording has started and you want to suspend and resume it, such as when
%% collecting sensitive information (for example, a credit card number), use
%% SuspendContactRecording and ResumeContactRecording.
%%
%% You can use this API to override the recording behavior configured in the
%% Set recording behavior block.
%%
%% Only voice recordings are supported at this time.
start_contact_recording(Client, Input) ->
    start_contact_recording(Client, Input, []).
start_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/start-recording"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates real-time message streaming for a new chat contact.
%%
%% For more information about message streaming, see Enable real-time chat
%% message streaming in the Amazon Connect Administrator Guide.
start_contact_streaming(Client, Input) ->
    start_contact_streaming(Client, Input, []).
start_contact_streaming(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/start-streaming"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Places an outbound call to a contact, and then initiates the flow.
%%
%% It performs the actions in the flow that's specified (in
%% `ContactFlowId').
%%
%% Agents do not initiate the outbound API, which means that they do not dial
%% the contact. If the flow places an outbound call to a contact, and then
%% puts the contact in queue, the call is then routed to the agent, like any
%% other inbound case.
%%
%% There is a 60-second dialing timeout for this operation. If the call is
%% not connected after 60 seconds, it fails.
%%
%% UK numbers with a 447 prefix are not allowed by default. Before you can
%% dial these UK mobile numbers, you must submit a service quota increase
%% request. For more information, see Amazon Connect Service Quotas in the
%% Amazon Connect Administrator Guide.
%%
%% Campaign calls are not allowed by default. Before you can make a call with
%% `TrafficType' = `CAMPAIGN', you must submit a service quota
%% increase request to the quota Amazon Connect campaigns.
start_outbound_voice_contact(Client, Input) ->
    start_outbound_voice_contact(Client, Input, []).
start_outbound_voice_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/outbound-voice"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a flow to start a new task.
start_task_contact(Client, Input) ->
    start_task_contact(Client, Input, []).
start_task_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/task"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Ends the specified contact.
%%
%% This call does not work for the following initiation methods:
%%
%% <ul> <li> DISCONNECT
%%
%% </li> <li> TRANSFER
%%
%% </li> <li> QUEUE_TRANSFER
%%
%% </li> </ul>
stop_contact(Client, Input) ->
    stop_contact(Client, Input, []).
stop_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops recording a call when a contact is being recorded.
%%
%% StopContactRecording is a one-time action. If you use StopContactRecording
%% to stop recording an ongoing call, you can't use StartContactRecording
%% to restart it. For scenarios where the recording has started and you want
%% to suspend it for sensitive information (for example, to collect a credit
%% card number), and then restart it, use SuspendContactRecording and
%% ResumeContactRecording.
%%
%% Only voice recordings are supported at this time.
stop_contact_recording(Client, Input) ->
    stop_contact_recording(Client, Input, []).
stop_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop-recording"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Ends message streaming on a specified contact.
%%
%% To restart message streaming on that contact, call the
%% StartContactStreaming API.
stop_contact_streaming(Client, Input) ->
    stop_contact_streaming(Client, Input, []).
stop_contact_streaming(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop-streaming"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Submits a contact evaluation in the specified Amazon Connect
%% instance.
%%
%% Answers included in the request are merged with existing answers for the
%% given evaluation. If no answers or notes are passed, the evaluation is
%% submitted with the existing answers and notes. You can delete an answer or
%% note by passing an empty object (`{}') to the question identifier.
%%
%% If a contact evaluation is already in submitted state, this operation will
%% trigger a resubmission.
submit_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    submit_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).
submit_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), "/submit"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, this API suspends recording the
%% call or screen.
%%
%% For example, you might suspend the call or screen recording while
%% collecting sensitive information, such as a credit card number. Then use
%% ResumeContactRecording to restart recording.
%%
%% The period of time that the recording is suspended is filled with silence
%% in the final recording.
%%
%% Voice and screen recordings are supported.
suspend_contact_recording(Client, Input) ->
    suspend_contact_recording(Client, Input, []).
suspend_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/suspend-recording"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
%%
%% Some of the supported resource types are agents, routing profiles, queues,
%% quick connects, contact flows, agent statuses, hours of operation, phone
%% numbers, security profiles, and task templates. For a complete list, see
%% Tagging resources in Amazon Connect.
%%
%% For sample policies that use tags, see Amazon Connect Identity-Based
%% Policy Examples in the Amazon Connect Administrator Guide.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Transfers contacts from one agent or queue to another agent or queue
%% at any point after a contact is created.
%%
%% You can transfer a contact to another queue by providing the flow which
%% orchestrates the contact to the destination queue. This gives you more
%% control over contact handling and helps you adhere to the service level
%% agreement (SLA) guaranteed to your customers.
%%
%% Note the following requirements:
%%
%% <ul> <li> Transfer is supported for only `TASK' contacts.
%%
%% </li> <li> Do not use both `QueueId' and `UserId' in the same
%% call.
%%
%% </li> <li> The following flow types are supported: Inbound flow, Transfer
%% to agent flow, and Transfer to queue flow.
%%
%% </li> <li> The `TransferContact' API can be called only on active
%% contacts.
%%
%% </li> <li> A contact cannot be transferred more than 11 times.
%%
%% </li> </ul>
transfer_contact(Client, Input) ->
    transfer_contact(Client, Input, []).
transfer_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/transfer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates agent status.
update_agent_status(Client, AgentStatusId, InstanceId, Input) ->
    update_agent_status(Client, AgentStatusId, InstanceId, Input, []).
update_agent_status(Client, AgentStatusId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AgentStatusId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Adds or updates user-defined contact information associated with the
%% specified contact. At least one field to be updated must be present in the
%% request.
%%
%% You can add or update user-defined contact information for both ongoing
%% and completed contacts.
update_contact(Client, ContactId, InstanceId, Input) ->
    update_contact(Client, ContactId, InstanceId, Input, []).
update_contact(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contacts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates user-defined contact attributes associated with
%% the specified contact.
%%
%% You can create or update user-defined attributes for both ongoing and
%% completed contacts. For example, while the call is active, you can update
%% the customer's name or the reason the customer called. You can add
%% notes about steps that the agent took during the call that display to the
%% next agent that takes the call. You can also update attributes for a
%% contact using data from your CRM application and save the data with the
%% contact in Amazon Connect. You could also flag calls for additional
%% analysis, such as legal review or to identify abusive callers.
%%
%% Contact attributes are available in Amazon Connect for 24 months, and are
%% then deleted. For information about contact record retention and the
%% maximum size of the contact record attributes section, see Feature
%% specifications in the Amazon Connect Administrator Guide.
update_contact_attributes(Client, Input) ->
    update_contact_attributes(Client, Input, []).
update_contact_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/attributes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details about a contact evaluation in the specified Amazon
%% Connect instance.
%%
%% A contact evaluation must be in draft state. Answers included in the
%% request are merged with existing answers for the given evaluation. An
%% answer or note can be deleted by passing an empty object (`{}') to the
%% question identifier.
update_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    update_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).
update_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified flow.
%%
%% You can also create and update flows using the Amazon Connect Flow
%% language.
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_content(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/content"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates metadata about specified flow.
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/metadata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates specified flow module for the specified Amazon Connect
%% instance.
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input, []).
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/content"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates metadata about specified flow module.
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input, []).
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/metadata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The name of the flow.
%%
%% You can also create and update flows using the Amazon Connect Flow
%% language.
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_name(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/name"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the scheduled time of a task contact that is already
%% scheduled.
update_contact_schedule(Client, Input) ->
    update_contact_schedule(Client, Input, []).
update_contact_schedule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/schedule"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details about a specific evaluation form version in the
%% specified Amazon Connect instance.
%%
%% Question and section identifiers cannot be duplicated within the same
%% evaluation form.
%%
%% This operation does not support partial updates. Instead it does a full
%% update of evaluation form content.
update_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    update_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).
update_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the hours of operation.
update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input) ->
    update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input, []).
update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the value for the specified attribute type.
update_instance_attribute(Client, AttributeType, InstanceId, Input) ->
    update_instance_attribute(Client, AttributeType, InstanceId, Input, []).
update_instance_attribute(Client, AttributeType, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attribute/", aws_util:encode_uri(AttributeType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates an existing configuration for a resource type. This API is
%% idempotent.
update_instance_storage_config(Client, AssociationId, InstanceId, Input) ->
    update_instance_storage_config(Client, AssociationId, InstanceId, Input, []).
update_instance_storage_config(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates timeouts for when human chat participants are to be
%% considered idle, and when agents are automatically disconnected from a
%% chat due to idleness.
%%
%% You can set four timers:
%%
%% <ul> <li> Customer idle timeout
%%
%% </li> <li> Customer auto-disconnect timeout
%%
%% </li> <li> Agent idle timeout
%%
%% </li> <li> Agent auto-disconnect timeout
%%
%% </li> </ul> For more information about how chat timeouts work, see Set up
%% chat timeouts for human participants.
update_participant_role_config(Client, ContactId, InstanceId, Input) ->
    update_participant_role_config(Client, ContactId, InstanceId, Input, []).
update_participant_role_config(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact/participant-role-config/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates your claimed phone number from its current Amazon Connect
%% instance or traffic distribution group to another Amazon Connect instance
%% or traffic distribution group in the same Amazon Web Services Region.
%%
%% After using this API, you must verify that the phone number is attached to
%% the correct flow in the target instance or traffic distribution group. You
%% need to do this because the API switches only the phone number to a new
%% instance or traffic distribution group. It doesn't migrate the flow
%% configuration of the phone number, too.
%%
%% You can call DescribePhoneNumber API to verify the status of a previous
%% UpdatePhoneNumber operation.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a prompt.
update_prompt(Client, InstanceId, PromptId, Input) ->
    update_prompt(Client, InstanceId, PromptId, Input, []).
update_prompt(Client, InstanceId, PromptId, Input0, Options0) ->
    Method = post,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the hours of operation for the specified queue.
update_queue_hours_of_operation(Client, InstanceId, QueueId, Input) ->
    update_queue_hours_of_operation(Client, InstanceId, QueueId, Input, []).
update_queue_hours_of_operation(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/hours-of-operation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the maximum number of contacts allowed in a queue before it is
%% considered full.
update_queue_max_contacts(Client, InstanceId, QueueId, Input) ->
    update_queue_max_contacts(Client, InstanceId, QueueId, Input, []).
update_queue_max_contacts(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/max-contacts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the name and description of a queue. At least `Name' or
%% `Description' must be provided.
update_queue_name(Client, InstanceId, QueueId, Input) ->
    update_queue_name(Client, InstanceId, QueueId, Input, []).
update_queue_name(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/name"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the outbound caller ID name, number, and outbound whisper flow for
%% a specified queue.
%%
%% If the number being used in the input is claimed to a traffic distribution
%% group, and you are calling this API using an instance in the Amazon Web
%% Services Region where the traffic distribution group was created, you can
%% use either a full phone number ARN or UUID value for the
%% `OutboundCallerIdNumberId' value of the OutboundCallerConfig request
%% body parameter. However, if the number is claimed to a traffic
%% distribution group and you are calling this API using an instance in the
%% alternate Amazon Web Services Region associated with the traffic
%% distribution group, you must provide a full phone number ARN. If a UUID is
%% provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
%%
%% Only use the phone number ARN format that doesn't contain
%% `instance' in the path, for example,
%% `arn:aws:connect:us-east-1:1234567890:phone-number/uuid'. This is the
%% same ARN format that is returned when you call the ListPhoneNumbersV2 API.
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input) ->
    update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input, []).
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/outbound-caller-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the status of the queue.
update_queue_status(Client, InstanceId, QueueId, Input) ->
    update_queue_status(Client, InstanceId, QueueId, Input, []).
update_queue_status(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration settings for the specified quick connect.
update_quick_connect_config(Client, InstanceId, QuickConnectId, Input) ->
    update_quick_connect_config(Client, InstanceId, QuickConnectId, Input, []).
update_quick_connect_config(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = post,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name and description of a quick connect.
%%
%% The request accepts the following data in JSON format. At least `Name'
%% or `Description' must be provided.
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input) ->
    update_quick_connect_name(Client, InstanceId, QuickConnectId, Input, []).
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = post,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), "/name"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Whether agents with this routing profile will have their routing
%% order calculated based on time since their last inbound contact or longest
%% idle time.
update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/agent-availability-timer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the channels that agents can handle in the Contact Control
%% Panel (CCP) for a routing profile.
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/concurrency"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the default outbound queue of a routing profile.
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/default-outbound-queue"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name and description of a routing profile.
%%
%% The request accepts the following data in JSON format. At least `Name'
%% or `Description' must be provided.
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/name"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the properties associated with a set of queues for a routing
%% profile.
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a rule for the specified Amazon Connect instance.
%%
%% Use the Rules Function language to code conditions for the rule.
update_rule(Client, InstanceId, RuleId, Input) ->
    update_rule(Client, InstanceId, RuleId, Input, []).
update_rule(Client, InstanceId, RuleId, Input0, Options0) ->
    Method = put,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates a security profile.
update_security_profile(Client, InstanceId, SecurityProfileId, Input) ->
    update_security_profile(Client, InstanceId, SecurityProfileId, Input, []).
update_security_profile(Client, InstanceId, SecurityProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details about a specific task template in the specified
%% Amazon Connect instance.
%%
%% This operation does not support partial updates. Instead it does a full
%% update of template content.
update_task_template(Client, InstanceId, TaskTemplateId, Input) ->
    update_task_template(Client, InstanceId, TaskTemplateId, Input, []).
update_task_template(Client, InstanceId, TaskTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the traffic distribution for a given traffic distribution
%% group.
%%
%% For more information about updating a traffic distribution group, see
%% Update telephony traffic distribution across Amazon Web Services Regions
%% in the Amazon Connect Administrator Guide.
update_traffic_distribution(Client, Id, Input) ->
    update_traffic_distribution(Client, Id, Input, []).
update_traffic_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/traffic-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified hierarchy group to the specified user.
update_user_hierarchy(Client, InstanceId, UserId, Input) ->
    update_user_hierarchy(Client, InstanceId, UserId, Input, []).
update_user_hierarchy(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/hierarchy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name of the user hierarchy group.
update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input) ->
    update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input, []).
update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), "/name"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the user hierarchy structure: add, remove, and rename user
%% hierarchy levels.
update_user_hierarchy_structure(Client, InstanceId, Input) ->
    update_user_hierarchy_structure(Client, InstanceId, Input, []).
update_user_hierarchy_structure(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/user-hierarchy-structure/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the identity information for the specified user.
%%
%% We strongly recommend limiting who has the ability to invoke
%% `UpdateUserIdentityInfo'. Someone with that ability can change the
%% login credentials of other users by changing their email address. This
%% poses a security risk to your organization. They can change the email
%% address of a user to the attacker's email address, and then reset the
%% password through email. For more information, see Best Practices for
%% Security Profiles in the Amazon Connect Administrator Guide.
update_user_identity_info(Client, InstanceId, UserId, Input) ->
    update_user_identity_info(Client, InstanceId, UserId, Input, []).
update_user_identity_info(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/identity-info"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the phone configuration settings for the specified user.
update_user_phone_config(Client, InstanceId, UserId, Input) ->
    update_user_phone_config(Client, InstanceId, UserId, Input, []).
update_user_phone_config(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/phone-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified routing profile to the specified user.
update_user_routing_profile(Client, InstanceId, UserId, Input) ->
    update_user_routing_profile(Client, InstanceId, UserId, Input, []).
update_user_routing_profile(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/routing-profile"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified security profiles to the specified user.
update_user_security_profiles(Client, InstanceId, UserId, Input) ->
    update_user_security_profiles(Client, InstanceId, UserId, Input, []).
update_user_security_profiles(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/security-profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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
    Client1 = Client#{service => <<"connect">>},
    Host = build_host(<<"connect">>, Client1),
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
