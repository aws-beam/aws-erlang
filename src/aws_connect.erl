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
%%
%% Working with contact flows? Check out the Amazon Connect Flow language.
-module(aws_connect).

-export([associate_approved_origin/3,
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
         create_hours_of_operation/3,
         create_hours_of_operation/4,
         create_instance/2,
         create_instance/3,
         create_integration_association/3,
         create_integration_association/4,
         create_queue/3,
         create_queue/4,
         create_quick_connect/3,
         create_quick_connect/4,
         create_routing_profile/3,
         create_routing_profile/4,
         create_security_profile/3,
         create_security_profile/4,
         create_task_template/3,
         create_task_template/4,
         create_use_case/4,
         create_use_case/5,
         create_user/3,
         create_user/4,
         create_user_hierarchy_group/3,
         create_user_hierarchy_group/4,
         create_vocabulary/3,
         create_vocabulary/4,
         delete_contact_flow/4,
         delete_contact_flow/5,
         delete_contact_flow_module/4,
         delete_contact_flow_module/5,
         delete_hours_of_operation/4,
         delete_hours_of_operation/5,
         delete_instance/3,
         delete_instance/4,
         delete_integration_association/4,
         delete_integration_association/5,
         delete_quick_connect/4,
         delete_quick_connect/5,
         delete_security_profile/4,
         delete_security_profile/5,
         delete_task_template/4,
         delete_task_template/5,
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
         describe_contact_flow/3,
         describe_contact_flow/5,
         describe_contact_flow/6,
         describe_contact_flow_module/3,
         describe_contact_flow_module/5,
         describe_contact_flow_module/6,
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
         describe_queue/3,
         describe_queue/5,
         describe_queue/6,
         describe_quick_connect/3,
         describe_quick_connect/5,
         describe_quick_connect/6,
         describe_routing_profile/3,
         describe_routing_profile/5,
         describe_routing_profile/6,
         describe_security_profile/3,
         describe_security_profile/5,
         describe_security_profile/6,
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
         get_task_template/3,
         get_task_template/5,
         get_task_template/6,
         list_agent_statuses/2,
         list_agent_statuses/4,
         list_agent_statuses/5,
         list_approved_origins/2,
         list_approved_origins/4,
         list_approved_origins/5,
         list_bots/3,
         list_bots/5,
         list_bots/6,
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
         list_use_cases/3,
         list_use_cases/5,
         list_use_cases/6,
         list_user_hierarchy_groups/2,
         list_user_hierarchy_groups/4,
         list_user_hierarchy_groups/5,
         list_users/2,
         list_users/4,
         list_users/5,
         put_user_status/4,
         put_user_status/5,
         release_phone_number/3,
         release_phone_number/4,
         resume_contact_recording/2,
         resume_contact_recording/3,
         search_available_phone_numbers/2,
         search_available_phone_numbers/3,
         search_users/2,
         search_users/3,
         search_vocabularies/3,
         search_vocabularies/4,
         start_chat_contact/2,
         start_chat_contact/3,
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
         update_hours_of_operation/4,
         update_hours_of_operation/5,
         update_instance_attribute/4,
         update_instance_attribute/5,
         update_instance_storage_config/4,
         update_instance_storage_config/5,
         update_phone_number/3,
         update_phone_number/4,
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
         update_routing_profile_concurrency/4,
         update_routing_profile_concurrency/5,
         update_routing_profile_default_outbound_queue/4,
         update_routing_profile_default_outbound_queue/5,
         update_routing_profile_name/4,
         update_routing_profile_name/5,
         update_routing_profile_queues/4,
         update_routing_profile_queues/5,
         update_security_profile/4,
         update_security_profile/5,
         update_task_template/4,
         update_task_template/5,
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% for example, that you can't define an instance with multiple S3 buckets
%% for storing chat transcripts.
%%
%% This API does not create a resource that doesn't exist. It only associates
%% it to the instance. Ensure that the resource being specified in the
%% storage configuration, like an S3 bucket, exists when being used for
%% association.
associate_instance_storage_config(Client, InstanceId, Input) ->
    associate_instance_storage_config(Client, InstanceId, Input, []).
associate_instance_storage_config(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config"],
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
               {receive_body_as_binary, false}
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
%% Amazon Lex bot.
associate_lex_bot(Client, InstanceId, Input) ->
    associate_lex_bot(Client, InstanceId, Input, []).
associate_lex_bot(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bot"],
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

%% @doc Associates a contact flow with a phone number claimed to your Amazon
%% Connect instance.
associate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    associate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).
associate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Claims an available phone number to your Amazon Connect instance.
claim_phone_number(Client, Input) ->
    claim_phone_number(Client, Input, []).
claim_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/claim"],
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a contact flow for the specified Amazon Connect instance.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
create_contact_flow(Client, InstanceId, Input) ->
    create_contact_flow(Client, InstanceId, Input, []).
create_contact_flow(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a contact flow module for the specified Amazon Connect
%% instance.
create_contact_flow_module(Client, InstanceId, Input) ->
    create_contact_flow_module(Client, InstanceId, Input, []).
create_contact_flow_module(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), ""],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
create_queue(Client, InstanceId, Input) ->
    create_queue(Client, InstanceId, Input, []).
create_queue(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a quick connect for the specified Amazon Connect instance.
create_quick_connect(Client, InstanceId, Input) ->
    create_quick_connect(Client, InstanceId, Input, []).
create_quick_connect(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a new routing profile.
create_routing_profile(Client, InstanceId, Input) ->
    create_routing_profile(Client, InstanceId, Input, []).
create_routing_profile(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), ""],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a contact flow for the specified Amazon Connect instance.
delete_contact_flow(Client, ContactFlowId, InstanceId, Input) ->
    delete_contact_flow(Client, ContactFlowId, InstanceId, Input, []).
delete_contact_flow(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
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

%% @doc Deletes the specified contact flow module.
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input) ->
    delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input, []).
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), ""],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% For information about what happens to a user's data when their account is
%% deleted, see Delete Users from Your Amazon Connect Instance in the Amazon
%% Connect Administrator Guide.
delete_user(Client, InstanceId, UserId, Input) ->
    delete_user(Client, InstanceId, UserId, Input, []).
delete_user(Client, InstanceId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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

%% @doc Describes the specified contact flow.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
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

%% @doc Describes the specified contact flow module.
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
%% Amazon Connect instance
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

%% @doc Describes the specified user account.
%%
%% You can find the instance ID in the console (it’s the final part of the
%% ARN). The console does not display the user IDs. Instead, list the users
%% and note the IDs provided in the output.
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% relevant contact flow blocks.
disassociate_lambda_function(Client, InstanceId, Input) ->
    disassociate_lambda_function(Client, InstanceId, Input, []).
disassociate_lambda_function(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-function"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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

%% @doc Removes the contact flow association from a phone number claimed to
%% your Amazon Connect instance, if a contact flow association exists.
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
%% the Amazon Lex bots currently associated with the instance.
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

%% @doc Provides information about the contact flow modules for the specified
%% Amazon Connect instance.
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

%% @doc Provides information about the contact flows for the specified Amazon
%% Connect instance.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
%%
%% For more information about contact flows, see Contact Flows in the Amazon
%% Connect Administrator Guide.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
%% state, and failed state. Instances that aren't successfully created (they
%% are in a failed state) are returned only for 24 hours after the
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
%% dropdown options in the relevant contact flow blocks.
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
%% Returns a paginated list of all the Amazon Lex bots currently associated
%% with the instance.
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

%% @doc Lists phone numbers claimed to your Amazon Connect instance.
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
               {receive_body_as_binary, false}
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
%% If you do not specify a `QueueTypes' parameter, both standard and agent
%% queues are returned. This might cause an unexpected truncation of results
%% if you have more than 1000 agents and you limit the number of results of
%% the API call in code.
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

%% @doc Changes the current status of a user or agent in Amazon Connect.
%%
%% If the agent is currently handling a contact, this sets the agent's next
%% status.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Releases a phone number previously claimed to an Amazon Connect
%% instance.
release_phone_number(Client, PhoneNumberId, Input) ->
    release_phone_number(Client, PhoneNumberId, Input, []).
release_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc When a contact is being recorded, and the recording has been
%% suspended using SuspendContactRecording, this API resumes recording the
%% call.
%%
%% Only voice recordings are supported at this time.
resume_contact_recording(Client, Input) ->
    resume_contact_recording(Client, Input, []).
resume_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/resume-recording"],
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

%% @doc Searches for available phone numbers that you can claim to your
%% Amazon Connect instance.
search_available_phone_numbers(Client, Input) ->
    search_available_phone_numbers(Client, Input, []).
search_available_phone_numbers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/search-available"],
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

%% @doc Searches users in an Amazon Connect instance, with optional
%% filtering.
search_users(Client, Input) ->
    search_users(Client, Input, []).
search_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-users"],
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

%% @doc Searches for vocabularies within a specific Amazon Connect instance
%% using `State', `NameStartsWith', and `LanguageCode'.
search_vocabularies(Client, InstanceId, Input) ->
    search_vocabularies(Client, InstanceId, Input, []).
search_vocabularies(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Initiates a contact flow to start a new chat for the customer.
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
%% </li> </ul> If you use the `ChatDurationInMinutes' parameter and receive a
%% 400 error, your account may not support the ability to configure custom
%% chat durations. For more information, contact Amazon Web Services Support.
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
               {receive_body_as_binary, false}
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
%% you use StopContactRecording to stop recording an ongoing call, you can't
%% use StartContactRecording to restart it. For scenarios where the recording
%% has started and you want to suspend and resume it, such as when collecting
%% sensitive information (for example, a credit card number), use
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Places an outbound call to a contact, and then initiates the contact
%% flow.
%%
%% It performs the actions in the contact flow that's specified (in
%% `ContactFlowId').
%%
%% Agents do not initiate the outbound API, which means that they do not dial
%% the contact. If the contact flow places an outbound call to a contact, and
%% then puts the contact in queue, the call is then routed to the agent, like
%% any other inbound case.
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
%% `TrafficType' = `CAMPAIGN', you must submit a service quota increase
%% request. For more information, see Amazon Connect Service Quotas in the
%% Amazon Connect Administrator Guide.
start_outbound_voice_contact(Client, Input) ->
    start_outbound_voice_contact(Client, Input, []).
start_outbound_voice_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/outbound-voice"],
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

%% @doc Initiates a contact flow to start a new task.
start_task_contact(Client, Input) ->
    start_task_contact(Client, Input, []).
start_task_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/task"],
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
               {receive_body_as_binary, false}
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
%% to stop recording an ongoing call, you can't use StartContactRecording to
%% restart it. For scenarios where the recording has started and you want to
%% suspend it for sensitive information (for example, to collect a credit
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, this API suspends recording the
%% call.
%%
%% For example, you might suspend the call recording while collecting
%% sensitive information, such as a credit card number. Then use
%% ResumeContactRecording to restart recording.
%%
%% The period of time that the recording is suspended is filled with silence
%% in the final recording.
%%
%% Only voice recordings are supported at this time.
suspend_contact_recording(Client, Input) ->
    suspend_contact_recording(Client, Input, []).
suspend_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/suspend-recording"],
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

%% @doc Adds the specified tags to the specified resource.
%%
%% The supported resource types are users, routing profiles, queues, quick
%% connects, contact flows, agent status, hours of operation, phone number,
%% security profiles, and task templates.
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
               {receive_body_as_binary, false}
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
%% You can transfer a contact to another queue by providing the contact flow
%% which orchestrates the contact to the destination queue. This gives you
%% more control over contact handling and helps you adhere to the service
%% level agreement (SLA) guaranteed to your customers.
%%
%% Note the following requirements:
%%
%% <ul> <li> Transfer is supported for only `TASK' contacts.
%%
%% </li> <li> Do not use both `QueueId' and `UserId' in the same call.
%%
%% </li> <li> The following contact flow types are supported: Inbound contact
%% flow, Transfer to agent flow, and Transfer to queue flow.
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% the customer's name or the reason the customer called. You can add notes
%% about steps that the agent took during the call that display to the next
%% agent that takes the call. You can also update attributes for a contact
%% using data from your CRM application and save the data with the contact in
%% Amazon Connect. You could also flag calls for additional analysis, such as
%% legal review or to identify abusive callers.
%%
%% Contact attributes are available in Amazon Connect for 24 months, and are
%% then deleted. For information about CTR retention and the maximum size of
%% the CTR attributes section, see Feature specifications in the Amazon
%% Connect Administrator Guide.
%%
%% Important: You cannot use the operation to update attributes for contacts
%% that occurred prior to the release of the API, which was September 12,
%% 2018. You can update attributes only for contacts that started after the
%% release of the API. If you attempt to update attributes for a contact that
%% occurred prior to the release of the API, a 400 error is returned. This
%% applies also to queued callbacks that were initiated prior to the release
%% of the API but are still active in your instance.
update_contact_attributes(Client, Input) ->
    update_contact_attributes(Client, Input, []).
update_contact_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/attributes"],
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

%% @doc Updates the specified contact flow.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_content(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/content"],
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

%% @doc Updates metadata about specified contact flow.
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/metadata"],
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

%% @doc Updates specified contact flow module for the specified Amazon
%% Connect instance.
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input, []).
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/content"],
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

%% @doc Updates metadata about specified contact flow module.
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input, []).
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/metadata"],
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

%% @doc The name of the contact flow.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_name(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/name"],
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

%% @doc Updates the scheduled time of a task contact that is already
%% scheduled.
update_contact_schedule(Client, Input) ->
    update_contact_schedule(Client, Input, []).
update_contact_schedule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/schedule"],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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

%% @doc Updates your claimed phone number from its current Amazon Connect
%% instance to another Amazon Connect instance in the same Region.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input) ->
    update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input, []).
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/outbound-caller-config"],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% The request accepts the following data in JSON format. At least `Name' or
%% `Description' must be provided.
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input) ->
    update_quick_connect_name(Client, InstanceId, QuickConnectId, Input, []).
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = post,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), "/name"],
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

%% @doc Updates the channels that agents can handle in the Contact Control
%% Panel (CCP) for a routing profile.
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/concurrency"],
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

%% @doc Updates the default outbound queue of a routing profile.
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/default-outbound-queue"],
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

%% @doc Updates the name and description of a routing profile.
%%
%% The request accepts the following data in JSON format. At least `Name' or
%% `Description' must be provided.
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/name"],
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

%% @doc Updates the properties associated with a set of queues for a routing
%% profile.
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% `UpdateUserIdentityInfo'. Someone with that ability can change the login
%% credentials of other users by changing their email address. This poses a
%% security risk to your organization. They can change the email address of a
%% user to the attacker's email address, and then reset the password through
%% email. For more information, see Best Practices for Security Profiles in
%% the Amazon Connect Administrator Guide.
update_user_identity_info(Client, InstanceId, UserId, Input) ->
    update_user_identity_info(Client, InstanceId, UserId, Input, []).
update_user_identity_info(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/identity-info"],
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

%% @doc Updates the phone configuration settings for the specified user.
update_user_phone_config(Client, InstanceId, UserId, Input) ->
    update_user_phone_config(Client, InstanceId, UserId, Input, []).
update_user_phone_config(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/phone-config"],
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

%% @doc Assigns the specified routing profile to the specified user.
update_user_routing_profile(Client, InstanceId, UserId, Input) ->
    update_user_routing_profile(Client, InstanceId, UserId, Input, []).
update_user_routing_profile(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/routing-profile"],
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

%% @doc Assigns the specified security profiles to the specified user.
update_user_security_profiles(Client, InstanceId, UserId, Input) ->
    update_user_security_profiles(Client, InstanceId, UserId, Input, []).
update_user_security_profiles(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/security-profiles"],
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
    Client1 = Client#{service => <<"connect">>},
    Host = build_host(<<"connect">>, Client1),
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
