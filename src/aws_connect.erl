%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon Connect actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html
%%
%% Amazon Connect
%% data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Service.html
%%
%% Amazon Connect is a cloud-based contact center solution that you use to
%% set up and
%% manage a customer contact center and provide reliable customer engagement
%% at any scale.
%%
%% Amazon Connect provides metrics and real-time reporting that enable you to
%% optimize
%% contact routing. You can also resolve customer issues more efficiently by
%% getting customers in
%% touch with the appropriate agents.
%%
%% There are limits to the number of Amazon Connect resources that you can
%% create. There
%% are also limits to the number of requests that you can make per second.
%% For more information, see
%% Amazon Connect Service Quotas:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% You can use an endpoint to connect programmatically to an Amazon Web
%% Services service. For a
%% list of Amazon Connect endpoints, see Amazon Connect Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/connect_region.html.
-module(aws_connect).

-export([activate_evaluation_form/4,
         activate_evaluation_form/5,
         associate_analytics_data_set/3,
         associate_analytics_data_set/4,
         associate_approved_origin/3,
         associate_approved_origin/4,
         associate_bot/3,
         associate_bot/4,
         associate_default_vocabulary/4,
         associate_default_vocabulary/5,
         associate_flow/3,
         associate_flow/4,
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
         associate_traffic_distribution_group_user/3,
         associate_traffic_distribution_group_user/4,
         associate_user_proficiencies/4,
         associate_user_proficiencies/5,
         batch_associate_analytics_data_set/3,
         batch_associate_analytics_data_set/4,
         batch_disassociate_analytics_data_set/3,
         batch_disassociate_analytics_data_set/4,
         batch_get_attached_file_metadata/3,
         batch_get_attached_file_metadata/4,
         batch_get_flow_association/3,
         batch_get_flow_association/4,
         batch_put_contact/3,
         batch_put_contact/4,
         claim_phone_number/2,
         claim_phone_number/3,
         complete_attached_file_upload/4,
         complete_attached_file_upload/5,
         create_agent_status/3,
         create_agent_status/4,
         create_contact/2,
         create_contact/3,
         create_contact_flow/3,
         create_contact_flow/4,
         create_contact_flow_module/3,
         create_contact_flow_module/4,
         create_contact_flow_version/4,
         create_contact_flow_version/5,
         create_email_address/3,
         create_email_address/4,
         create_evaluation_form/3,
         create_evaluation_form/4,
         create_hours_of_operation/3,
         create_hours_of_operation/4,
         create_hours_of_operation_override/4,
         create_hours_of_operation_override/5,
         create_instance/2,
         create_instance/3,
         create_integration_association/3,
         create_integration_association/4,
         create_participant/2,
         create_participant/3,
         create_persistent_contact_association/4,
         create_persistent_contact_association/5,
         create_predefined_attribute/3,
         create_predefined_attribute/4,
         create_prompt/3,
         create_prompt/4,
         create_push_notification_registration/3,
         create_push_notification_registration/4,
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
         create_view/3,
         create_view/4,
         create_view_version/4,
         create_view_version/5,
         create_vocabulary/3,
         create_vocabulary/4,
         deactivate_evaluation_form/4,
         deactivate_evaluation_form/5,
         delete_attached_file/4,
         delete_attached_file/5,
         delete_contact_evaluation/4,
         delete_contact_evaluation/5,
         delete_contact_flow/4,
         delete_contact_flow/5,
         delete_contact_flow_module/4,
         delete_contact_flow_module/5,
         delete_contact_flow_version/5,
         delete_contact_flow_version/6,
         delete_email_address/4,
         delete_email_address/5,
         delete_evaluation_form/4,
         delete_evaluation_form/5,
         delete_hours_of_operation/4,
         delete_hours_of_operation/5,
         delete_hours_of_operation_override/5,
         delete_hours_of_operation_override/6,
         delete_instance/3,
         delete_instance/4,
         delete_integration_association/4,
         delete_integration_association/5,
         delete_predefined_attribute/4,
         delete_predefined_attribute/5,
         delete_prompt/4,
         delete_prompt/5,
         delete_push_notification_registration/4,
         delete_push_notification_registration/5,
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
         delete_view/4,
         delete_view/5,
         delete_view_version/5,
         delete_view_version/6,
         delete_vocabulary/4,
         delete_vocabulary/5,
         describe_agent_status/3,
         describe_agent_status/5,
         describe_agent_status/6,
         describe_authentication_profile/3,
         describe_authentication_profile/5,
         describe_authentication_profile/6,
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
         describe_email_address/3,
         describe_email_address/5,
         describe_email_address/6,
         describe_evaluation_form/3,
         describe_evaluation_form/5,
         describe_evaluation_form/6,
         describe_hours_of_operation/3,
         describe_hours_of_operation/5,
         describe_hours_of_operation/6,
         describe_hours_of_operation_override/4,
         describe_hours_of_operation_override/6,
         describe_hours_of_operation_override/7,
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
         describe_predefined_attribute/3,
         describe_predefined_attribute/5,
         describe_predefined_attribute/6,
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
         describe_view/3,
         describe_view/5,
         describe_view/6,
         describe_vocabulary/3,
         describe_vocabulary/5,
         describe_vocabulary/6,
         disassociate_analytics_data_set/3,
         disassociate_analytics_data_set/4,
         disassociate_approved_origin/3,
         disassociate_approved_origin/4,
         disassociate_bot/3,
         disassociate_bot/4,
         disassociate_flow/5,
         disassociate_flow/6,
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
         disassociate_traffic_distribution_group_user/3,
         disassociate_traffic_distribution_group_user/4,
         disassociate_user_proficiencies/4,
         disassociate_user_proficiencies/5,
         dismiss_user_contact/4,
         dismiss_user_contact/5,
         get_attached_file/4,
         get_attached_file/6,
         get_attached_file/7,
         get_contact_attributes/3,
         get_contact_attributes/5,
         get_contact_attributes/6,
         get_contact_metrics/2,
         get_contact_metrics/3,
         get_current_metric_data/3,
         get_current_metric_data/4,
         get_current_user_data/3,
         get_current_user_data/4,
         get_effective_hours_of_operations/5,
         get_effective_hours_of_operations/7,
         get_effective_hours_of_operations/8,
         get_federation_token/2,
         get_federation_token/4,
         get_federation_token/5,
         get_flow_association/4,
         get_flow_association/6,
         get_flow_association/7,
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
         import_phone_number/2,
         import_phone_number/3,
         list_agent_statuses/2,
         list_agent_statuses/4,
         list_agent_statuses/5,
         list_analytics_data_associations/2,
         list_analytics_data_associations/4,
         list_analytics_data_associations/5,
         list_analytics_data_lake_data_sets/2,
         list_analytics_data_lake_data_sets/4,
         list_analytics_data_lake_data_sets/5,
         list_approved_origins/2,
         list_approved_origins/4,
         list_approved_origins/5,
         list_associated_contacts/3,
         list_associated_contacts/5,
         list_associated_contacts/6,
         list_authentication_profiles/2,
         list_authentication_profiles/4,
         list_authentication_profiles/5,
         list_bots/3,
         list_bots/5,
         list_bots/6,
         list_contact_evaluations/3,
         list_contact_evaluations/5,
         list_contact_evaluations/6,
         list_contact_flow_modules/2,
         list_contact_flow_modules/4,
         list_contact_flow_modules/5,
         list_contact_flow_versions/3,
         list_contact_flow_versions/5,
         list_contact_flow_versions/6,
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
         list_flow_associations/2,
         list_flow_associations/4,
         list_flow_associations/5,
         list_hours_of_operation_overrides/3,
         list_hours_of_operation_overrides/5,
         list_hours_of_operation_overrides/6,
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
         list_predefined_attributes/2,
         list_predefined_attributes/4,
         list_predefined_attributes/5,
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
         list_realtime_contact_analysis_segments_v2/4,
         list_realtime_contact_analysis_segments_v2/5,
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
         list_security_profile_applications/3,
         list_security_profile_applications/5,
         list_security_profile_applications/6,
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
         list_traffic_distribution_group_users/2,
         list_traffic_distribution_group_users/4,
         list_traffic_distribution_group_users/5,
         list_traffic_distribution_groups/1,
         list_traffic_distribution_groups/3,
         list_traffic_distribution_groups/4,
         list_use_cases/3,
         list_use_cases/5,
         list_use_cases/6,
         list_user_hierarchy_groups/2,
         list_user_hierarchy_groups/4,
         list_user_hierarchy_groups/5,
         list_user_proficiencies/3,
         list_user_proficiencies/5,
         list_user_proficiencies/6,
         list_users/2,
         list_users/4,
         list_users/5,
         list_view_versions/3,
         list_view_versions/5,
         list_view_versions/6,
         list_views/2,
         list_views/4,
         list_views/5,
         monitor_contact/2,
         monitor_contact/3,
         pause_contact/2,
         pause_contact/3,
         put_user_status/4,
         put_user_status/5,
         release_phone_number/3,
         release_phone_number/4,
         replicate_instance/3,
         replicate_instance/4,
         resume_contact/2,
         resume_contact/3,
         resume_contact_recording/2,
         resume_contact_recording/3,
         search_agent_statuses/2,
         search_agent_statuses/3,
         search_available_phone_numbers/2,
         search_available_phone_numbers/3,
         search_contact_flow_modules/2,
         search_contact_flow_modules/3,
         search_contact_flows/2,
         search_contact_flows/3,
         search_contacts/2,
         search_contacts/3,
         search_email_addresses/2,
         search_email_addresses/3,
         search_hours_of_operation_overrides/2,
         search_hours_of_operation_overrides/3,
         search_hours_of_operations/2,
         search_hours_of_operations/3,
         search_predefined_attributes/2,
         search_predefined_attributes/3,
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
         search_user_hierarchy_groups/2,
         search_user_hierarchy_groups/3,
         search_users/2,
         search_users/3,
         search_vocabularies/3,
         search_vocabularies/4,
         send_chat_integration_event/2,
         send_chat_integration_event/3,
         send_outbound_email/3,
         send_outbound_email/4,
         start_attached_file_upload/3,
         start_attached_file_upload/4,
         start_chat_contact/2,
         start_chat_contact/3,
         start_contact_evaluation/3,
         start_contact_evaluation/4,
         start_contact_recording/2,
         start_contact_recording/3,
         start_contact_streaming/2,
         start_contact_streaming/3,
         start_email_contact/2,
         start_email_contact/3,
         start_outbound_chat_contact/2,
         start_outbound_chat_contact/3,
         start_outbound_email_contact/2,
         start_outbound_email_contact/3,
         start_outbound_voice_contact/2,
         start_outbound_voice_contact/3,
         start_screen_sharing/2,
         start_screen_sharing/3,
         start_task_contact/2,
         start_task_contact/3,
         start_web_r_t_c_contact/2,
         start_web_r_t_c_contact/3,
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
         tag_contact/2,
         tag_contact/3,
         tag_resource/3,
         tag_resource/4,
         transfer_contact/2,
         transfer_contact/3,
         untag_contact/4,
         untag_contact/5,
         untag_resource/3,
         untag_resource/4,
         update_agent_status/4,
         update_agent_status/5,
         update_authentication_profile/4,
         update_authentication_profile/5,
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
         update_contact_routing_data/4,
         update_contact_routing_data/5,
         update_contact_schedule/2,
         update_contact_schedule/3,
         update_email_address_metadata/4,
         update_email_address_metadata/5,
         update_evaluation_form/4,
         update_evaluation_form/5,
         update_hours_of_operation/4,
         update_hours_of_operation/5,
         update_hours_of_operation_override/5,
         update_hours_of_operation_override/6,
         update_instance_attribute/4,
         update_instance_attribute/5,
         update_instance_storage_config/4,
         update_instance_storage_config/5,
         update_participant_authentication/2,
         update_participant_authentication/3,
         update_participant_role_config/4,
         update_participant_role_config/5,
         update_phone_number/3,
         update_phone_number/4,
         update_phone_number_metadata/3,
         update_phone_number_metadata/4,
         update_predefined_attribute/4,
         update_predefined_attribute/5,
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
         update_queue_outbound_email_config/4,
         update_queue_outbound_email_config/5,
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
         update_user_proficiencies/4,
         update_user_proficiencies/5,
         update_user_routing_profile/4,
         update_user_routing_profile/5,
         update_user_security_profiles/4,
         update_user_security_profiles/5,
         update_view_content/4,
         update_view_content/5,
         update_view_metadata/4,
         update_view_metadata/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% associate_instance_storage_config_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"StorageConfig">> := instance_storage_config()
%% }
-type associate_instance_storage_config_request() :: #{binary() => any()}.


%% Example:
%% delete_attached_file_request() :: #{
%%   <<"AssociatedResourceArn">> := string()
%% }
-type delete_attached_file_request() :: #{binary() => any()}.


%% Example:
%% contact_filter() :: #{
%%   <<"ContactStates">> => list(list(any())())
%% }
-type contact_filter() :: #{binary() => any()}.


%% Example:
%% answer_machine_detection_config() :: #{
%%   <<"AwaitAnswerMachinePrompt">> => boolean(),
%%   <<"EnableAnswerMachineDetection">> => boolean()
%% }
-type answer_machine_detection_config() :: #{binary() => any()}.


%% Example:
%% update_user_identity_info_request() :: #{
%%   <<"IdentityInfo">> := user_identity_info()
%% }
-type update_user_identity_info_request() :: #{binary() => any()}.


%% Example:
%% list_contact_evaluations_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_contact_evaluations_request() :: #{binary() => any()}.


%% Example:
%% outbound_caller_config() :: #{
%%   <<"OutboundCallerIdName">> => string(),
%%   <<"OutboundCallerIdNumberId">> => string(),
%%   <<"OutboundFlowId">> => string()
%% }
-type outbound_caller_config() :: #{binary() => any()}.


%% Example:
%% queue_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type queue_search_filter() :: #{binary() => any()}.


%% Example:
%% action_summary() :: #{
%%   <<"ActionType">> => list(any())
%% }
-type action_summary() :: #{binary() => any()}.


%% Example:
%% update_user_proficiencies_request() :: #{
%%   <<"UserProficiencies">> := list(user_proficiency())
%% }
-type update_user_proficiencies_request() :: #{binary() => any()}.


%% Example:
%% associate_default_vocabulary_request() :: #{
%%   <<"VocabularyId">> => string()
%% }
-type associate_default_vocabulary_request() :: #{binary() => any()}.


%% Example:
%% create_persistent_contact_association_response() :: #{
%%   <<"ContinuedFromContactId">> => string()
%% }
-type create_persistent_contact_association_response() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_module_request() :: #{}
-type delete_contact_flow_module_request() :: #{}.

%% Example:
%% delete_view_version_response() :: #{}
-type delete_view_version_response() :: #{}.


%% Example:
%% get_current_user_data_request() :: #{
%%   <<"Filters">> := user_data_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_current_user_data_request() :: #{binary() => any()}.


%% Example:
%% chat_streaming_configuration() :: #{
%%   <<"StreamingEndpointArn">> => string()
%% }
-type chat_streaming_configuration() :: #{binary() => any()}.


%% Example:
%% get_effective_hours_of_operations_request() :: #{
%%   <<"FromDate">> := string(),
%%   <<"ToDate">> := string()
%% }
-type get_effective_hours_of_operations_request() :: #{binary() => any()}.


%% Example:
%% view_input_content() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"Template">> => string()
%% }
-type view_input_content() :: #{binary() => any()}.


%% Example:
%% list_contact_references_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReferenceSummaryList">> => list(list())
%% }
-type list_contact_references_response() :: #{binary() => any()}.


%% Example:
%% search_vocabularies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VocabularySummaryList">> => list(vocabulary_summary())
%% }
-type search_vocabularies_response() :: #{binary() => any()}.


%% Example:
%% get_current_metric_data_request() :: #{
%%   <<"CurrentMetrics">> := list(current_metric()),
%%   <<"Filters">> := filters(),
%%   <<"Groupings">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(current_metric_sort_criteria())
%% }
-type get_current_metric_data_request() :: #{binary() => any()}.


%% Example:
%% participant_capabilities() :: #{
%%   <<"ScreenShare">> => list(any()),
%%   <<"Video">> => list(any())
%% }
-type participant_capabilities() :: #{binary() => any()}.


%% Example:
%% create_rule_request() :: #{
%%   <<"Actions">> := list(rule_action()),
%%   <<"ClientToken">> => string(),
%%   <<"Function">> := string(),
%%   <<"Name">> := string(),
%%   <<"PublishStatus">> := list(any()),
%%   <<"TriggerEventSource">> := rule_trigger_event_source()
%% }
-type create_rule_request() :: #{binary() => any()}.


%% Example:
%% update_evaluation_form_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"EvaluationFormVersion">> := integer(),
%%   <<"Items">> := list(list()),
%%   <<"ScoringStrategy">> => evaluation_form_scoring_strategy(),
%%   <<"Title">> := string()
%% }
-type update_evaluation_form_request() :: #{binary() => any()}.


%% Example:
%% start_outbound_email_contact_response() :: #{
%%   <<"ContactId">> => string()
%% }
-type start_outbound_email_contact_response() :: #{binary() => any()}.


%% Example:
%% security_profile_search_criteria() :: #{
%%   <<"AndConditions">> => list(security_profile_search_criteria()),
%%   <<"OrConditions">> => list(security_profile_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type security_profile_search_criteria() :: #{binary() => any()}.


%% Example:
%% disassociate_traffic_distribution_group_user_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"UserId">> := string()
%% }
-type disassociate_traffic_distribution_group_user_request() :: #{binary() => any()}.


%% Example:
%% email_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type email_reference() :: #{binary() => any()}.


%% Example:
%% number_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type number_reference() :: #{binary() => any()}.


%% Example:
%% create_participant_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"ParticipantDetails">> := participant_details_to_add()
%% }
-type create_participant_request() :: #{binary() => any()}.


%% Example:
%% output_type_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type output_type_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% chat_contact_metrics() :: #{
%%   <<"AgentFirstResponseTimeInMillis">> => float(),
%%   <<"AgentFirstResponseTimestamp">> => non_neg_integer(),
%%   <<"ConversationCloseTimeInMillis">> => float(),
%%   <<"ConversationTurnCount">> => integer(),
%%   <<"MultiParty">> => boolean(),
%%   <<"TotalBotMessageLengthInChars">> => integer(),
%%   <<"TotalBotMessages">> => integer(),
%%   <<"TotalMessages">> => integer()
%% }
-type chat_contact_metrics() :: #{binary() => any()}.


%% Example:
%% traffic_distribution_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type traffic_distribution_group_summary() :: #{binary() => any()}.


%% Example:
%% contact_flow_module() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type contact_flow_module() :: #{binary() => any()}.


%% Example:
%% user_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Username">> => string()
%% }
-type user_summary() :: #{binary() => any()}.


%% Example:
%% range() :: #{
%%   <<"MaxProficiencyLevel">> => float(),
%%   <<"MinProficiencyLevel">> => float()
%% }
-type range() :: #{binary() => any()}.

%% Example:
%% describe_user_hierarchy_structure_request() :: #{}
-type describe_user_hierarchy_structure_request() :: #{}.

%% Example:
%% get_federation_token_request() :: #{}
-type get_federation_token_request() :: #{}.


%% Example:
%% list_queues_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueueTypes">> => list(list(any())())
%% }
-type list_queues_request() :: #{binary() => any()}.


%% Example:
%% list_lambda_functions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_lambda_functions_request() :: #{binary() => any()}.


%% Example:
%% encryption_config() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"KeyId">> => string()
%% }
-type encryption_config() :: #{binary() => any()}.


%% Example:
%% search_contact_flow_modules_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => contact_flow_module_search_criteria(),
%%   <<"SearchFilter">> => contact_flow_module_search_filter()
%% }
-type search_contact_flow_modules_request() :: #{binary() => any()}.


%% Example:
%% list_phone_numbers_summary() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => string(),
%%   <<"PhoneNumberCountryCode">> => list(any()),
%%   <<"PhoneNumberDescription">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"PhoneNumberType">> => list(any()),
%%   <<"SourcePhoneNumberArn">> => string(),
%%   <<"TargetArn">> => string()
%% }
-type list_phone_numbers_summary() :: #{binary() => any()}.


%% Example:
%% campaign() :: #{
%%   <<"CampaignId">> => string()
%% }
-type campaign() :: #{binary() => any()}.

%% Example:
%% describe_user_hierarchy_group_request() :: #{}
-type describe_user_hierarchy_group_request() :: #{}.


%% Example:
%% contact_flow_search_criteria() :: #{
%%   <<"AndConditions">> => list(contact_flow_search_criteria()),
%%   <<"OrConditions">> => list(contact_flow_search_criteria()),
%%   <<"StateCondition">> => list(any()),
%%   <<"StatusCondition">> => list(any()),
%%   <<"StringCondition">> => string_condition(),
%%   <<"TypeCondition">> => list(any())
%% }
-type contact_flow_search_criteria() :: #{binary() => any()}.


%% Example:
%% search_users_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user_search_summary())
%% }
-type search_users_response() :: #{binary() => any()}.


%% Example:
%% start_outbound_chat_contact_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ChatDurationInMinutes">> => integer(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> := string(),
%%   <<"DestinationEndpoint">> := endpoint(),
%%   <<"InitialSystemMessage">> => chat_message(),
%%   <<"InstanceId">> := string(),
%%   <<"ParticipantDetails">> => participant_details(),
%%   <<"RelatedContactId">> => string(),
%%   <<"SegmentAttributes">> := map(),
%%   <<"SourceEndpoint">> := endpoint(),
%%   <<"SupportedMessagingContentTypes">> => list(string())
%% }
-type start_outbound_chat_contact_request() :: #{binary() => any()}.


%% Example:
%% start_contact_recording_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InitialContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"VoiceRecordingConfiguration">> := voice_recording_configuration()
%% }
-type start_contact_recording_request() :: #{binary() => any()}.


%% Example:
%% list_traffic_distribution_group_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrafficDistributionGroupUserSummaryList">> => list(traffic_distribution_group_user_summary())
%% }
-type list_traffic_distribution_group_users_response() :: #{binary() => any()}.


%% Example:
%% routing_criteria_input() :: #{
%%   <<"Steps">> => list(routing_criteria_input_step())
%% }
-type routing_criteria_input() :: #{binary() => any()}.


%% Example:
%% user_hierarchy_group_search_filter() :: #{
%%   <<"AttributeFilter">> => control_plane_attribute_filter()
%% }
-type user_hierarchy_group_search_filter() :: #{binary() => any()}.


%% Example:
%% email_recipient() :: #{
%%   <<"Address">> => string(),
%%   <<"DisplayName">> => string()
%% }
-type email_recipient() :: #{binary() => any()}.

%% Example:
%% describe_traffic_distribution_group_request() :: #{}
-type describe_traffic_distribution_group_request() :: #{}.


%% Example:
%% attribute_condition() :: #{
%%   <<"ComparisonOperator">> => string(),
%%   <<"MatchCriteria">> => match_criteria(),
%%   <<"Name">> => string(),
%%   <<"ProficiencyLevel">> => float(),
%%   <<"Range">> => range(),
%%   <<"Value">> => string()
%% }
-type attribute_condition() :: #{binary() => any()}.


%% Example:
%% prompt_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type prompt_summary() :: #{binary() => any()}.

%% Example:
%% delete_hours_of_operation_override_request() :: #{}
-type delete_hours_of_operation_override_request() :: #{}.

%% Example:
%% disassociate_flow_request() :: #{}
-type disassociate_flow_request() :: #{}.


%% Example:
%% list_condition() :: #{
%%   <<"Conditions">> => list(condition()),
%%   <<"TargetListType">> => list(any())
%% }
-type list_condition() :: #{binary() => any()}.


%% Example:
%% routing_criteria_input_step_expiry() :: #{
%%   <<"DurationInSeconds">> => integer()
%% }
-type routing_criteria_input_step_expiry() :: #{binary() => any()}.


%% Example:
%% create_use_case_response() :: #{
%%   <<"UseCaseArn">> => string(),
%%   <<"UseCaseId">> => string()
%% }
-type create_use_case_response() :: #{binary() => any()}.


%% Example:
%% replicate_instance_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ReplicaAlias">> := string(),
%%   <<"ReplicaRegion">> := string()
%% }
-type replicate_instance_request() :: #{binary() => any()}.


%% Example:
%% deactivate_evaluation_form_response() :: #{
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer()
%% }
-type deactivate_evaluation_form_response() :: #{binary() => any()}.


%% Example:
%% contact_flow_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type contact_flow_search_filter() :: #{binary() => any()}.


%% Example:
%% search_hours_of_operations_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"HoursOfOperations">> => list(hours_of_operation()),
%%   <<"NextToken">> => string()
%% }
-type search_hours_of_operations_response() :: #{binary() => any()}.


%% Example:
%% view_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type view_summary() :: #{binary() => any()}.


%% Example:
%% searchable_segment_attributes() :: #{
%%   <<"Criteria">> => list(searchable_segment_attributes_criteria()),
%%   <<"MatchType">> => list(any())
%% }
-type searchable_segment_attributes() :: #{binary() => any()}.


%% Example:
%% activate_evaluation_form_request() :: #{
%%   <<"EvaluationFormVersion">> := integer()
%% }
-type activate_evaluation_form_request() :: #{binary() => any()}.


%% Example:
%% successful_request() :: #{
%%   <<"ContactId">> => string(),
%%   <<"RequestIdentifier">> => string()
%% }
-type successful_request() :: #{binary() => any()}.


%% Example:
%% describe_instance_storage_config_response() :: #{
%%   <<"StorageConfig">> => instance_storage_config()
%% }
-type describe_instance_storage_config_response() :: #{binary() => any()}.

%% Example:
%% describe_contact_request() :: #{}
-type describe_contact_request() :: #{}.


%% Example:
%% agent_status() :: #{
%%   <<"AgentStatusARN">> => string(),
%%   <<"AgentStatusId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayOrder">> => integer(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any())
%% }
-type agent_status() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_response() :: #{
%%   <<"AvailableNumbersList">> => list(available_number_summary()),
%%   <<"NextToken">> => string()
%% }
-type search_available_phone_numbers_response() :: #{binary() => any()}.


%% Example:
%% dimensions() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"Queue">> => queue_reference(),
%%   <<"RoutingProfile">> => routing_profile_reference(),
%%   <<"RoutingStepExpression">> => string()
%% }
-type dimensions() :: #{binary() => any()}.


%% Example:
%% get_task_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Constraints">> => task_template_constraints(),
%%   <<"ContactFlowId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Defaults">> => task_template_defaults(),
%%   <<"Description">> => string(),
%%   <<"Fields">> => list(task_template_field()),
%%   <<"Id">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SelfAssignFlowId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_task_template_response() :: #{binary() => any()}.

%% Example:
%% delete_use_case_request() :: #{}
-type delete_use_case_request() :: #{}.


%% Example:
%% describe_prompt_response() :: #{
%%   <<"Prompt">> => prompt()
%% }
-type describe_prompt_response() :: #{binary() => any()}.


%% Example:
%% list_hours_of_operations_response() :: #{
%%   <<"HoursOfOperationSummaryList">> => list(hours_of_operation_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_hours_of_operations_response() :: #{binary() => any()}.


%% Example:
%% property_validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"PropertyList">> => list(property_validation_exception_property())
%% }
-type property_validation_exception() :: #{binary() => any()}.

%% Example:
%% send_outbound_email_response() :: #{}
-type send_outbound_email_response() :: #{}.


%% Example:
%% user_identity_info_lite() :: #{
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type user_identity_info_lite() :: #{binary() => any()}.


%% Example:
%% describe_contact_response() :: #{
%%   <<"Contact">> => contact()
%% }
-type describe_contact_response() :: #{binary() => any()}.


%% Example:
%% list_flow_associations_response() :: #{
%%   <<"FlowAssociationSummaryList">> => list(flow_association_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_flow_associations_response() :: #{binary() => any()}.


%% Example:
%% search_contacts_time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type search_contacts_time_range() :: #{binary() => any()}.


%% Example:
%% threshold_v2() :: #{
%%   <<"Comparison">> => string(),
%%   <<"ThresholdValue">> => float()
%% }
-type threshold_v2() :: #{binary() => any()}.

%% Example:
%% update_contact_attributes_response() :: #{}
-type update_contact_attributes_response() :: #{}.


%% Example:
%% create_contact_flow_request() :: #{
%%   <<"Content">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> := list(any())
%% }
-type create_contact_flow_request() :: #{binary() => any()}.


%% Example:
%% metric_interval() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Interval">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type metric_interval() :: #{binary() => any()}.


%% Example:
%% upload_url_metadata() :: #{
%%   <<"HeadersToInclude">> => map(),
%%   <<"Url">> => string(),
%%   <<"UrlExpiry">> => string()
%% }
-type upload_url_metadata() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_transcript_item_with_content() :: #{
%%   <<"CharacterOffsets">> => real_time_contact_analysis_character_interval(),
%%   <<"Content">> => string(),
%%   <<"Id">> => string()
%% }
-type real_time_contact_analysis_transcript_item_with_content() :: #{binary() => any()}.


%% Example:
%% search_predefined_attributes_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"PredefinedAttributes">> => list(predefined_attribute())
%% }
-type search_predefined_attributes_response() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% search_hours_of_operations_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => hours_of_operation_search_criteria(),
%%   <<"SearchFilter">> => hours_of_operation_search_filter()
%% }
-type search_hours_of_operations_request() :: #{binary() => any()}.

%% Example:
%% describe_predefined_attribute_request() :: #{}
-type describe_predefined_attribute_request() :: #{}.


%% Example:
%% get_prompt_file_response() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PromptPresignedUrl">> => string()
%% }
-type get_prompt_file_response() :: #{binary() => any()}.


%% Example:
%% hierarchy_path_reference() :: #{
%%   <<"LevelFive">> => hierarchy_group_summary_reference(),
%%   <<"LevelFour">> => hierarchy_group_summary_reference(),
%%   <<"LevelOne">> => hierarchy_group_summary_reference(),
%%   <<"LevelThree">> => hierarchy_group_summary_reference(),
%%   <<"LevelTwo">> => hierarchy_group_summary_reference()
%% }
-type hierarchy_path_reference() :: #{binary() => any()}.


%% Example:
%% get_flow_association_response() :: #{
%%   <<"FlowId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type get_flow_association_response() :: #{binary() => any()}.


%% Example:
%% evaluation_form_version_summary() :: #{
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Locked">> => boolean(),
%%   <<"Status">> => list(any())
%% }
-type evaluation_form_version_summary() :: #{binary() => any()}.


%% Example:
%% routing_criteria() :: #{
%%   <<"ActivationTimestamp">> => non_neg_integer(),
%%   <<"Index">> => integer(),
%%   <<"Steps">> => list(step())
%% }
-type routing_criteria() :: #{binary() => any()}.


%% Example:
%% email_attachment() :: #{
%%   <<"FileName">> => string(),
%%   <<"S3Url">> => string()
%% }
-type email_attachment() :: #{binary() => any()}.


%% Example:
%% list_user_proficiencies_response() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserProficiencyList">> => list(user_proficiency())
%% }
-type list_user_proficiencies_response() :: #{binary() => any()}.


%% Example:
%% historical_metric_result() :: #{
%%   <<"Collections">> => list(historical_metric_data()),
%%   <<"Dimensions">> => dimensions()
%% }
-type historical_metric_result() :: #{binary() => any()}.


%% Example:
%% describe_agent_status_response() :: #{
%%   <<"AgentStatus">> => agent_status()
%% }
-type describe_agent_status_response() :: #{binary() => any()}.


%% Example:
%% send_chat_integration_event_response() :: #{
%%   <<"InitialContactId">> => string(),
%%   <<"NewChatCreated">> => boolean()
%% }
-type send_chat_integration_event_response() :: #{binary() => any()}.


%% Example:
%% meeting() :: #{
%%   <<"MediaPlacement">> => media_placement(),
%%   <<"MediaRegion">> => string(),
%%   <<"MeetingFeatures">> => meeting_features_configuration(),
%%   <<"MeetingId">> => string()
%% }
-type meeting() :: #{binary() => any()}.


%% Example:
%% attached_file() :: #{
%%   <<"AssociatedResourceArn">> => string(),
%%   <<"CreatedBy">> => list(),
%%   <<"CreationTime">> => string(),
%%   <<"FileArn">> => string(),
%%   <<"FileId">> => string(),
%%   <<"FileName">> => string(),
%%   <<"FileSizeInBytes">> => float(),
%%   <<"FileStatus">> => list(any()),
%%   <<"FileUseCaseType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type attached_file() :: #{binary() => any()}.


%% Example:
%% search_resource_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag_set())
%% }
-type search_resource_tags_response() :: #{binary() => any()}.

%% Example:
%% delete_email_address_response() :: #{}
-type delete_email_address_response() :: #{}.


%% Example:
%% phone_number_quick_connect_config() :: #{
%%   <<"PhoneNumber">> => string()
%% }
-type phone_number_quick_connect_config() :: #{binary() => any()}.


%% Example:
%% searchable_segment_attributes_criteria() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type searchable_segment_attributes_criteria() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_version_request() :: #{}
-type delete_contact_flow_version_request() :: #{}.


%% Example:
%% participant_metrics() :: #{
%%   <<"ConversationAbandon">> => boolean(),
%%   <<"LastMessageTimestamp">> => non_neg_integer(),
%%   <<"MaxResponseTimeInMillis">> => float(),
%%   <<"MessageLengthInChars">> => integer(),
%%   <<"MessagesSent">> => integer(),
%%   <<"NumResponses">> => integer(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"TotalResponseTimeInMillis">> => float()
%% }
-type participant_metrics() :: #{binary() => any()}.


%% Example:
%% describe_security_profile_response() :: #{
%%   <<"SecurityProfile">> => security_profile()
%% }
-type describe_security_profile_response() :: #{binary() => any()}.


%% Example:
%% delete_evaluation_form_request() :: #{
%%   <<"EvaluationFormVersion">> => integer()
%% }
-type delete_evaluation_form_request() :: #{binary() => any()}.


%% Example:
%% agent_status_search_criteria() :: #{
%%   <<"AndConditions">> => list(agent_status_search_criteria()),
%%   <<"OrConditions">> => list(agent_status_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type agent_status_search_criteria() :: #{binary() => any()}.


%% Example:
%% create_security_profile_response() :: #{
%%   <<"SecurityProfileArn">> => string(),
%%   <<"SecurityProfileId">> => string()
%% }
-type create_security_profile_response() :: #{binary() => any()}.


%% Example:
%% outbound_contact_not_permitted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type outbound_contact_not_permitted_exception() :: #{binary() => any()}.


%% Example:
%% list_prompts_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PromptSummaryList">> => list(prompt_summary())
%% }
-type list_prompts_response() :: #{binary() => any()}.


%% Example:
%% user_data_filters() :: #{
%%   <<"Agents">> => list(string()),
%%   <<"ContactFilter">> => contact_filter(),
%%   <<"Queues">> => list(string()),
%%   <<"RoutingProfiles">> => list(string()),
%%   <<"UserHierarchyGroups">> => list(string())
%% }
-type user_data_filters() :: #{binary() => any()}.

%% Example:
%% delete_view_request() :: #{}
-type delete_view_request() :: #{}.


%% Example:
%% chat_message() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string()
%% }
-type chat_message() :: #{binary() => any()}.


%% Example:
%% create_push_notification_registration_response() :: #{
%%   <<"RegistrationId">> => string()
%% }
-type create_push_notification_registration_response() :: #{binary() => any()}.


%% Example:
%% create_hours_of_operation_request() :: #{
%%   <<"Config">> := list(hours_of_operation_config()),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map(),
%%   <<"TimeZone">> := string()
%% }
-type create_hours_of_operation_request() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_point_of_interest() :: #{
%%   <<"TranscriptItems">> => list(real_time_contact_analysis_transcript_item_with_character_offsets())
%% }
-type real_time_contact_analysis_point_of_interest() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_version_response() :: #{}
-type delete_contact_flow_version_response() :: #{}.

%% Example:
%% update_contact_flow_metadata_response() :: #{}
-type update_contact_flow_metadata_response() :: #{}.


%% Example:
%% disassociate_lex_bot_request() :: #{
%%   <<"BotName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"LexRegion">> := string()
%% }
-type disassociate_lex_bot_request() :: #{binary() => any()}.


%% Example:
%% outbound_email_content() :: #{
%%   <<"MessageSourceType">> => list(any()),
%%   <<"RawMessage">> => outbound_raw_message(),
%%   <<"TemplatedMessageConfig">> => templated_message_config()
%% }
-type outbound_email_content() :: #{binary() => any()}.


%% Example:
%% update_security_profile_request() :: #{
%%   <<"AllowedAccessControlHierarchyGroupId">> => string(),
%%   <<"AllowedAccessControlTags">> => map(),
%%   <<"Applications">> => list(application()),
%%   <<"Description">> => string(),
%%   <<"HierarchyRestrictedResources">> => list(string()),
%%   <<"Permissions">> => list(string()),
%%   <<"TagRestrictedResources">> => list(string())
%% }
-type update_security_profile_request() :: #{binary() => any()}.


%% Example:
%% search_user_hierarchy_groups_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"UserHierarchyGroups">> => list(hierarchy_group())
%% }
-type search_user_hierarchy_groups_response() :: #{binary() => any()}.


%% Example:
%% credentials() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"AccessTokenExpiration">> => non_neg_integer(),
%%   <<"RefreshToken">> => string(),
%%   <<"RefreshTokenExpiration">> => non_neg_integer()
%% }
-type credentials() :: #{binary() => any()}.


%% Example:
%% search_contact_flow_modules_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"ContactFlowModules">> => list(contact_flow_module()),
%%   <<"NextToken">> => string()
%% }
-type search_contact_flow_modules_response() :: #{binary() => any()}.


%% Example:
%% get_contact_metrics_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"Metrics">> := list(contact_metric_info())
%% }
-type get_contact_metrics_request() :: #{binary() => any()}.

%% Example:
%% describe_vocabulary_request() :: #{}
-type describe_vocabulary_request() :: #{}.


%% Example:
%% hours_of_operation_override_search_criteria() :: #{
%%   <<"AndConditions">> => list(hours_of_operation_override_search_criteria()),
%%   <<"DateCondition">> => date_condition(),
%%   <<"OrConditions">> => list(hours_of_operation_override_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type hours_of_operation_override_search_criteria() :: #{binary() => any()}.


%% Example:
%% list_associated_contacts_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_associated_contacts_request() :: #{binary() => any()}.


%% Example:
%% update_instance_storage_config_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"StorageConfig">> := instance_storage_config()
%% }
-type update_instance_storage_config_request() :: #{binary() => any()}.


%% Example:
%% tag_condition() :: #{
%%   <<"TagKey">> => string(),
%%   <<"TagValue">> => string()
%% }
-type tag_condition() :: #{binary() => any()}.


%% Example:
%% contact_flow_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Version">> => float(),
%%   <<"VersionDescription">> => string()
%% }
-type contact_flow_version_summary() :: #{binary() => any()}.


%% Example:
%% view() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => view_content(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => integer(),
%%   <<"VersionDescription">> => string(),
%%   <<"ViewContentSha256">> => string()
%% }
-type view() :: #{binary() => any()}.


%% Example:
%% list_contact_flow_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flow_versions_request() :: #{binary() => any()}.


%% Example:
%% describe_queue_response() :: #{
%%   <<"Queue">> => queue()
%% }
-type describe_queue_response() :: #{binary() => any()}.

%% Example:
%% delete_attached_file_response() :: #{}
-type delete_attached_file_response() :: #{}.


%% Example:
%% control_plane_attribute_filter() :: #{
%%   <<"AndCondition">> => common_attribute_and_condition(),
%%   <<"OrConditions">> => list(common_attribute_and_condition()),
%%   <<"TagCondition">> => tag_condition()
%% }
-type control_plane_attribute_filter() :: #{binary() => any()}.


%% Example:
%% hours_of_operation() :: #{
%%   <<"Config">> => list(hours_of_operation_config()),
%%   <<"Description">> => string(),
%%   <<"HoursOfOperationArn">> => string(),
%%   <<"HoursOfOperationId">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TimeZone">> => string()
%% }
-type hours_of_operation() :: #{binary() => any()}.


%% Example:
%% read_only_field_info() :: #{
%%   <<"Id">> => task_template_field_identifier()
%% }
-type read_only_field_info() :: #{binary() => any()}.


%% Example:
%% update_quick_connect_name_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_quick_connect_name_request() :: #{binary() => any()}.

%% Example:
%% stop_contact_recording_response() :: #{}
-type stop_contact_recording_response() :: #{}.


%% Example:
%% metric_filter_v2() :: #{
%%   <<"MetricFilterKey">> => string(),
%%   <<"MetricFilterValues">> => list(string()),
%%   <<"Negate">> => boolean()
%% }
-type metric_filter_v2() :: #{binary() => any()}.


%% Example:
%% routing_profile_queue_config_summary() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"Delay">> => integer(),
%%   <<"Priority">> => integer(),
%%   <<"QueueArn">> => string(),
%%   <<"QueueId">> => string(),
%%   <<"QueueName">> => string()
%% }
-type routing_profile_queue_config_summary() :: #{binary() => any()}.


%% Example:
%% date_condition() :: #{
%%   <<"ComparisonType">> => list(any()),
%%   <<"FieldName">> => string(),
%%   <<"Value">> => string()
%% }
-type date_condition() :: #{binary() => any()}.


%% Example:
%% get_metric_data_v2_response() :: #{
%%   <<"MetricResults">> => list(metric_result_v2()),
%%   <<"NextToken">> => string()
%% }
-type get_metric_data_v2_response() :: #{binary() => any()}.


%% Example:
%% list_flow_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type list_flow_associations_request() :: #{binary() => any()}.


%% Example:
%% hours_of_operation_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type hours_of_operation_search_filter() :: #{binary() => any()}.


%% Example:
%% create_task_template_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Constraints">> => task_template_constraints(),
%%   <<"ContactFlowId">> => string(),
%%   <<"Defaults">> => task_template_defaults(),
%%   <<"Description">> => string(),
%%   <<"Fields">> := list(task_template_field()),
%%   <<"Name">> := string(),
%%   <<"SelfAssignFlowId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_task_template_request() :: #{binary() => any()}.


%% Example:
%% error_result() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_result() :: #{binary() => any()}.


%% Example:
%% kinesis_firehose_config() :: #{
%%   <<"FirehoseArn">> => string()
%% }
-type kinesis_firehose_config() :: #{binary() => any()}.


%% Example:
%% task_template_field() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => task_template_field_identifier(),
%%   <<"SingleSelectOptions">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type task_template_field() :: #{binary() => any()}.


%% Example:
%% describe_evaluation_form_response() :: #{
%%   <<"EvaluationForm">> => evaluation_form()
%% }
-type describe_evaluation_form_response() :: #{binary() => any()}.


%% Example:
%% task_template_defaults() :: #{
%%   <<"DefaultFieldValues">> => list(task_template_default_field_value())
%% }
-type task_template_defaults() :: #{binary() => any()}.


%% Example:
%% update_queue_max_contacts_request() :: #{
%%   <<"MaxContacts">> => integer()
%% }
-type update_queue_max_contacts_request() :: #{binary() => any()}.

%% Example:
%% delete_task_template_response() :: #{}
-type delete_task_template_response() :: #{}.


%% Example:
%% create_integration_association_response() :: #{
%%   <<"IntegrationAssociationArn">> => string(),
%%   <<"IntegrationAssociationId">> => string()
%% }
-type create_integration_association_response() :: #{binary() => any()}.


%% Example:
%% required_field_info() :: #{
%%   <<"Id">> => task_template_field_identifier()
%% }
-type required_field_info() :: #{binary() => any()}.


%% Example:
%% user_search_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"DirectoryUserId">> => string(),
%%   <<"HierarchyGroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"IdentityInfo">> => user_identity_info_lite(),
%%   <<"PhoneConfig">> => user_phone_config(),
%%   <<"RoutingProfileId">> => string(),
%%   <<"SecurityProfileIds">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"Username">> => string()
%% }
-type user_search_summary() :: #{binary() => any()}.


%% Example:
%% attached_file_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"FileId">> => string()
%% }
-type attached_file_error() :: #{binary() => any()}.


%% Example:
%% start_outbound_email_contact_request() :: #{
%%   <<"AdditionalRecipients">> => outbound_additional_recipients(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"DestinationEmailAddress">> := email_address_info(),
%%   <<"EmailMessage">> := outbound_email_content(),
%%   <<"FromEmailAddress">> => email_address_info(),
%%   <<"InstanceId">> := string()
%% }
-type start_outbound_email_contact_request() :: #{binary() => any()}.


%% Example:
%% lex_v2_bot() :: #{
%%   <<"AliasArn">> => string()
%% }
-type lex_v2_bot() :: #{binary() => any()}.


%% Example:
%% create_traffic_distribution_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_traffic_distribution_group_response() :: #{binary() => any()}.


%% Example:
%% contact_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type contact_not_found_exception() :: #{binary() => any()}.


%% Example:
%% contact_flow_not_published_exception() :: #{
%%   <<"Message">> => string()
%% }
-type contact_flow_not_published_exception() :: #{binary() => any()}.


%% Example:
%% contact_flow_module_search_criteria() :: #{
%%   <<"AndConditions">> => list(contact_flow_module_search_criteria()),
%%   <<"OrConditions">> => list(contact_flow_module_search_criteria()),
%%   <<"StateCondition">> => list(any()),
%%   <<"StatusCondition">> => list(any()),
%%   <<"StringCondition">> => string_condition()
%% }
-type contact_flow_module_search_criteria() :: #{binary() => any()}.


%% Example:
%% traffic_distribution_group_user_summary() :: #{
%%   <<"UserId">> => string()
%% }
-type traffic_distribution_group_user_summary() :: #{binary() => any()}.


%% Example:
%% use_case() :: #{
%%   <<"UseCaseArn">> => string(),
%%   <<"UseCaseId">> => string(),
%%   <<"UseCaseType">> => list(any())
%% }
-type use_case() :: #{binary() => any()}.


%% Example:
%% update_hours_of_operation_request() :: #{
%%   <<"Config">> => list(hours_of_operation_config()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"TimeZone">> => string()
%% }
-type update_hours_of_operation_request() :: #{binary() => any()}.


%% Example:
%% customer_quality_metrics() :: #{
%%   <<"Audio">> => audio_quality_metrics_info()
%% }
-type customer_quality_metrics() :: #{binary() => any()}.


%% Example:
%% number_condition() :: #{
%%   <<"ComparisonType">> => list(any()),
%%   <<"FieldName">> => string(),
%%   <<"MaxValue">> => integer(),
%%   <<"MinValue">> => integer()
%% }
-type number_condition() :: #{binary() => any()}.


%% Example:
%% search_routing_profiles_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => routing_profile_search_criteria(),
%%   <<"SearchFilter">> => routing_profile_search_filter()
%% }
-type search_routing_profiles_request() :: #{binary() => any()}.


%% Example:
%% update_rule_request() :: #{
%%   <<"Actions">> := list(rule_action()),
%%   <<"Function">> := string(),
%%   <<"Name">> := string(),
%%   <<"PublishStatus">> := list(any())
%% }
-type update_rule_request() :: #{binary() => any()}.


%% Example:
%% start_outbound_voice_contact_response() :: #{
%%   <<"ContactId">> => string()
%% }
-type start_outbound_voice_contact_response() :: #{binary() => any()}.


%% Example:
%% list_contact_flows_request() :: #{
%%   <<"ContactFlowTypes">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flows_request() :: #{binary() => any()}.


%% Example:
%% user_identity_info() :: #{
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Mobile">> => string(),
%%   <<"SecondaryEmail">> => string()
%% }
-type user_identity_info() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_post_contact_summary() :: #{
%%   <<"Content">> => string(),
%%   <<"FailureCode">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type real_time_contact_analysis_segment_post_contact_summary() :: #{binary() => any()}.


%% Example:
%% list_instance_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_instance_attributes_request() :: #{binary() => any()}.


%% Example:
%% create_vocabulary_response() :: #{
%%   <<"State">> => list(any()),
%%   <<"VocabularyArn">> => string(),
%%   <<"VocabularyId">> => string()
%% }
-type create_vocabulary_response() :: #{binary() => any()}.


%% Example:
%% wisdom_info() :: #{
%%   <<"SessionArn">> => string()
%% }
-type wisdom_info() :: #{binary() => any()}.


%% Example:
%% release_phone_number_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type release_phone_number_request() :: #{binary() => any()}.


%% Example:
%% analytics_data_sets_result() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"DataSetName">> => string()
%% }
-type analytics_data_sets_result() :: #{binary() => any()}.


%% Example:
%% stop_contact_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"DisconnectReason">> => disconnect_reason(),
%%   <<"InstanceId">> := string()
%% }
-type stop_contact_request() :: #{binary() => any()}.

%% Example:
%% describe_hours_of_operation_override_request() :: #{}
-type describe_hours_of_operation_override_request() :: #{}.


%% Example:
%% update_phone_number_response() :: #{
%%   <<"PhoneNumberArn">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type update_phone_number_response() :: #{binary() => any()}.


%% Example:
%% contact_configuration() :: #{
%%   <<"ContactId">> => string(),
%%   <<"IncludeRawMessage">> => boolean(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type contact_configuration() :: #{binary() => any()}.

%% Example:
%% delete_user_hierarchy_group_request() :: #{}
-type delete_user_hierarchy_group_request() :: #{}.


%% Example:
%% lex_bot_config() :: #{
%%   <<"LexBot">> => lex_bot(),
%%   <<"LexV2Bot">> => lex_v2_bot()
%% }
-type lex_bot_config() :: #{binary() => any()}.


%% Example:
%% agent_hierarchy_group() :: #{
%%   <<"Arn">> => string()
%% }
-type agent_hierarchy_group() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_issues() :: #{
%%   <<"IssuesDetected">> => list(real_time_contact_analysis_issue_detected())
%% }
-type real_time_contact_analysis_segment_issues() :: #{binary() => any()}.


%% Example:
%% create_instance_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_instance_response() :: #{binary() => any()}.


%% Example:
%% list_contact_evaluations_response() :: #{
%%   <<"EvaluationSummaryList">> => list(evaluation_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_evaluations_response() :: #{binary() => any()}.


%% Example:
%% task_template_default_field_value() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Id">> => task_template_field_identifier()
%% }
-type task_template_default_field_value() :: #{binary() => any()}.


%% Example:
%% authentication_profile() :: #{
%%   <<"AllowedIps">> => list(string()),
%%   <<"Arn">> => string(),
%%   <<"BlockedIps">> => list(string()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MaxSessionDuration">> => integer(),
%%   <<"Name">> => string(),
%%   <<"PeriodicSessionDuration">> => integer()
%% }
-type authentication_profile() :: #{binary() => any()}.


%% Example:
%% evaluation_note() :: #{
%%   <<"Value">> => string()
%% }
-type evaluation_note() :: #{binary() => any()}.


%% Example:
%% update_contact_flow_module_metadata_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type update_contact_flow_module_metadata_request() :: #{binary() => any()}.


%% Example:
%% list_hours_of_operation_overrides_response() :: #{
%%   <<"HoursOfOperationOverrideList">> => list(hours_of_operation_override()),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hours_of_operation_overrides_response() :: #{binary() => any()}.


%% Example:
%% update_prompt_response() :: #{
%%   <<"PromptARN">> => string(),
%%   <<"PromptId">> => string()
%% }
-type update_prompt_response() :: #{binary() => any()}.


%% Example:
%% invalid_contact_flow_exception() :: #{
%%   <<"problems">> => list(problem_detail())
%% }
-type invalid_contact_flow_exception() :: #{binary() => any()}.

%% Example:
%% update_view_metadata_response() :: #{}
-type update_view_metadata_response() :: #{}.


%% Example:
%% list_evaluation_form_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_evaluation_form_versions_request() :: #{binary() => any()}.


%% Example:
%% search_agent_statuses_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => agent_status_search_criteria(),
%%   <<"SearchFilter">> => agent_status_search_filter()
%% }
-type search_agent_statuses_request() :: #{binary() => any()}.


%% Example:
%% inbound_email_content() :: #{
%%   <<"MessageSourceType">> => list(any()),
%%   <<"RawMessage">> => inbound_raw_message()
%% }
-type inbound_email_content() :: #{binary() => any()}.

%% Example:
%% delete_view_version_request() :: #{}
-type delete_view_version_request() :: #{}.


%% Example:
%% import_phone_number_response() :: #{
%%   <<"PhoneNumberArn">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type import_phone_number_response() :: #{binary() => any()}.


%% Example:
%% persistent_chat() :: #{
%%   <<"RehydrationType">> => list(any()),
%%   <<"SourceContactId">> => string()
%% }
-type persistent_chat() :: #{binary() => any()}.

%% Example:
%% update_contact_schedule_response() :: #{}
-type update_contact_schedule_response() :: #{}.


%% Example:
%% queue() :: #{
%%   <<"Description">> => string(),
%%   <<"HoursOfOperationId">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MaxContacts">> => integer(),
%%   <<"Name">> => string(),
%%   <<"OutboundCallerConfig">> => outbound_caller_config(),
%%   <<"OutboundEmailConfig">> => outbound_email_config(),
%%   <<"QueueArn">> => string(),
%%   <<"QueueId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type queue() :: #{binary() => any()}.

%% Example:
%% delete_email_address_request() :: #{}
-type delete_email_address_request() :: #{}.


%% Example:
%% replication_status_summary() :: #{
%%   <<"Region">> => string(),
%%   <<"ReplicationStatus">> => list(any()),
%%   <<"ReplicationStatusReason">> => string()
%% }
-type replication_status_summary() :: #{binary() => any()}.


%% Example:
%% override_time_slice() :: #{
%%   <<"Hours">> => integer(),
%%   <<"Minutes">> => integer()
%% }
-type override_time_slice() :: #{binary() => any()}.


%% Example:
%% user_proficiency_disassociate() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string()
%% }
-type user_proficiency_disassociate() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% list_use_cases_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_use_cases_request() :: #{binary() => any()}.


%% Example:
%% disassociate_approved_origin_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Origin">> := string()
%% }
-type disassociate_approved_origin_request() :: #{binary() => any()}.


%% Example:
%% segment_attribute_value() :: #{
%%   <<"ValueInteger">> => integer(),
%%   <<"ValueMap">> => map(),
%%   <<"ValueString">> => string()
%% }
-type segment_attribute_value() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_categories() :: #{
%%   <<"MatchedDetails">> => map()
%% }
-type real_time_contact_analysis_segment_categories() :: #{binary() => any()}.


%% Example:
%% associate_lambda_function_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"FunctionArn">> := string()
%% }
-type associate_lambda_function_request() :: #{binary() => any()}.


%% Example:
%% transcript() :: #{
%%   <<"Criteria">> => list(transcript_criteria()),
%%   <<"MatchType">> => list(any())
%% }
-type transcript() :: #{binary() => any()}.


%% Example:
%% download_url_metadata() :: #{
%%   <<"Url">> => string(),
%%   <<"UrlExpiry">> => string()
%% }
-type download_url_metadata() :: #{binary() => any()}.

%% Example:
%% suspend_contact_recording_response() :: #{}
-type suspend_contact_recording_response() :: #{}.

%% Example:
%% update_participant_role_config_response() :: #{}
-type update_participant_role_config_response() :: #{}.


%% Example:
%% disassociate_queue_quick_connects_request() :: #{
%%   <<"QuickConnectIds">> := list(string())
%% }
-type disassociate_queue_quick_connects_request() :: #{binary() => any()}.

%% Example:
%% complete_attached_file_upload_response() :: #{}
-type complete_attached_file_upload_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_hours_of_operation_override_request() :: #{
%%   <<"Config">> => list(hours_of_operation_override_config()),
%%   <<"Description">> => string(),
%%   <<"EffectiveFrom">> => string(),
%%   <<"EffectiveTill">> => string(),
%%   <<"Name">> => string()
%% }
-type update_hours_of_operation_override_request() :: #{binary() => any()}.


%% Example:
%% list_security_profile_applications_response() :: #{
%%   <<"Applications">> => list(application()),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_profile_applications_response() :: #{binary() => any()}.


%% Example:
%% update_quick_connect_config_request() :: #{
%%   <<"QuickConnectConfig">> := quick_connect_config()
%% }
-type update_quick_connect_config_request() :: #{binary() => any()}.


%% Example:
%% update_queue_hours_of_operation_request() :: #{
%%   <<"HoursOfOperationId">> := string()
%% }
-type update_queue_hours_of_operation_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% participant_details_to_add() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"ParticipantCapabilities">> => participant_capabilities(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type participant_details_to_add() :: #{binary() => any()}.


%% Example:
%% start_contact_streaming_request() :: #{
%%   <<"ChatStreamingConfiguration">> := chat_streaming_configuration(),
%%   <<"ClientToken">> := string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type start_contact_streaming_request() :: #{binary() => any()}.


%% Example:
%% associate_analytics_data_set_response() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"ResourceShareArn">> => string(),
%%   <<"ResourceShareId">> => string(),
%%   <<"TargetAccountId">> => string()
%% }
-type associate_analytics_data_set_response() :: #{binary() => any()}.


%% Example:
%% queue_info_input() :: #{
%%   <<"Id">> => string()
%% }
-type queue_info_input() :: #{binary() => any()}.


%% Example:
%% list_rules_request() :: #{
%%   <<"EventSourceName">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PublishStatus">> => list(any())
%% }
-type list_rules_request() :: #{binary() => any()}.


%% Example:
%% import_phone_number_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"PhoneNumberDescription">> => string(),
%%   <<"SourcePhoneNumberArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type import_phone_number_request() :: #{binary() => any()}.


%% Example:
%% claim_phone_number_response() :: #{
%%   <<"PhoneNumberArn">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type claim_phone_number_response() :: #{binary() => any()}.


%% Example:
%% queue_info() :: #{
%%   <<"EnqueueTimestamp">> => non_neg_integer(),
%%   <<"Id">> => string()
%% }
-type queue_info() :: #{binary() => any()}.

%% Example:
%% delete_push_notification_registration_response() :: #{}
-type delete_push_notification_registration_response() :: #{}.


%% Example:
%% evaluation_answer_output() :: #{
%%   <<"SystemSuggestedValue">> => list(),
%%   <<"Value">> => list()
%% }
-type evaluation_answer_output() :: #{binary() => any()}.


%% Example:
%% available_number_summary() :: #{
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberCountryCode">> => list(any()),
%%   <<"PhoneNumberType">> => list(any())
%% }
-type available_number_summary() :: #{binary() => any()}.


%% Example:
%% get_effective_hours_of_operations_response() :: #{
%%   <<"EffectiveHoursOfOperationList">> => list(effective_hours_of_operations()),
%%   <<"TimeZone">> => string()
%% }
-type get_effective_hours_of_operations_response() :: #{binary() => any()}.


%% Example:
%% create_view_version_response() :: #{
%%   <<"View">> => view()
%% }
-type create_view_version_response() :: #{binary() => any()}.


%% Example:
%% describe_phone_number_response() :: #{
%%   <<"ClaimedPhoneNumberSummary">> => claimed_phone_number_summary()
%% }
-type describe_phone_number_response() :: #{binary() => any()}.


%% Example:
%% hierarchy_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type hierarchy_group_summary() :: #{binary() => any()}.


%% Example:
%% participant_token_credentials() :: #{
%%   <<"Expiry">> => string(),
%%   <<"ParticipantToken">> => string()
%% }
-type participant_token_credentials() :: #{binary() => any()}.

%% Example:
%% describe_contact_flow_module_request() :: #{}
-type describe_contact_flow_module_request() :: #{}.


%% Example:
%% pause_contact_request() :: #{
%%   <<"ContactFlowId">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type pause_contact_request() :: #{binary() => any()}.


%% Example:
%% describe_instance_attribute_response() :: #{
%%   <<"Attribute">> => attribute()
%% }
-type describe_instance_attribute_response() :: #{binary() => any()}.


%% Example:
%% participant_timer_configuration() :: #{
%%   <<"ParticipantRole">> => list(any()),
%%   <<"TimerType">> => list(any()),
%%   <<"TimerValue">> => list()
%% }
-type participant_timer_configuration() :: #{binary() => any()}.


%% Example:
%% associate_approved_origin_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Origin">> := string()
%% }
-type associate_approved_origin_request() :: #{binary() => any()}.


%% Example:
%% email_address_search_criteria() :: #{
%%   <<"AndConditions">> => list(email_address_search_criteria()),
%%   <<"OrConditions">> => list(email_address_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type email_address_search_criteria() :: #{binary() => any()}.


%% Example:
%% destination_not_allowed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type destination_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% invisible_field_info() :: #{
%%   <<"Id">> => task_template_field_identifier()
%% }
-type invisible_field_info() :: #{binary() => any()}.


%% Example:
%% create_quick_connect_response() :: #{
%%   <<"QuickConnectARN">> => string(),
%%   <<"QuickConnectId">> => string()
%% }
-type create_quick_connect_response() :: #{binary() => any()}.


%% Example:
%% list_lex_bots_response() :: #{
%%   <<"LexBots">> => list(lex_bot()),
%%   <<"NextToken">> => string()
%% }
-type list_lex_bots_response() :: #{binary() => any()}.


%% Example:
%% contact_search_summary_segment_attribute_value() :: #{
%%   <<"ValueString">> => string()
%% }
-type contact_search_summary_segment_attribute_value() :: #{binary() => any()}.


%% Example:
%% create_vocabulary_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Content">> := string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Tags">> => map(),
%%   <<"VocabularyName">> := string()
%% }
-type create_vocabulary_request() :: #{binary() => any()}.


%% Example:
%% metric_result_v2() :: #{
%%   <<"Collections">> => list(metric_data_v2()),
%%   <<"Dimensions">> => map(),
%%   <<"MetricInterval">> => metric_interval()
%% }
-type metric_result_v2() :: #{binary() => any()}.


%% Example:
%% batch_get_attached_file_metadata_response() :: #{
%%   <<"Errors">> => list(attached_file_error()),
%%   <<"Files">> => list(attached_file())
%% }
-type batch_get_attached_file_metadata_response() :: #{binary() => any()}.


%% Example:
%% email_message_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type email_message_reference() :: #{binary() => any()}.


%% Example:
%% update_email_address_metadata_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string()
%% }
-type update_email_address_metadata_request() :: #{binary() => any()}.


%% Example:
%% get_attached_file_request() :: #{
%%   <<"AssociatedResourceArn">> := string(),
%%   <<"UrlExpiryInSeconds">> => integer()
%% }
-type get_attached_file_request() :: #{binary() => any()}.


%% Example:
%% transfer_contact_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> := string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"QueueId">> => string(),
%%   <<"UserId">> => string()
%% }
-type transfer_contact_request() :: #{binary() => any()}.

%% Example:
%% describe_phone_number_request() :: #{}
-type describe_phone_number_request() :: #{}.

%% Example:
%% resume_contact_recording_response() :: #{}
-type resume_contact_recording_response() :: #{}.


%% Example:
%% list_agent_status_request() :: #{
%%   <<"AgentStatusTypes">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_agent_status_request() :: #{binary() => any()}.


%% Example:
%% queue_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"QueueType">> => list(any())
%% }
-type queue_summary() :: #{binary() => any()}.


%% Example:
%% create_contact_response() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"ContactId">> => string()
%% }
-type create_contact_response() :: #{binary() => any()}.

%% Example:
%% update_contact_flow_name_response() :: #{}
-type update_contact_flow_name_response() :: #{}.

%% Example:
%% update_participant_authentication_response() :: #{}
-type update_participant_authentication_response() :: #{}.


%% Example:
%% list_task_templates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TaskTemplates">> => list(task_template_metadata())
%% }
-type list_task_templates_response() :: #{binary() => any()}.


%% Example:
%% get_current_user_data_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"UserDataList">> => list(user_data())
%% }
-type get_current_user_data_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{}
-type delete_rule_request() :: #{}.

%% Example:
%% describe_authentication_profile_request() :: #{}
-type describe_authentication_profile_request() :: #{}.


%% Example:
%% contact_flow_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ContactFlowState">> => list(any()),
%%   <<"ContactFlowStatus">> => list(any()),
%%   <<"ContactFlowType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type contact_flow_summary() :: #{binary() => any()}.


%% Example:
%% update_contact_evaluation_request() :: #{
%%   <<"Answers">> => map(),
%%   <<"Notes">> => map()
%% }
-type update_contact_evaluation_request() :: #{binary() => any()}.


%% Example:
%% list_analytics_data_lake_data_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_analytics_data_lake_data_sets_request() :: #{binary() => any()}.


%% Example:
%% list_lex_bots_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_lex_bots_request() :: #{binary() => any()}.


%% Example:
%% list_phone_numbers_v2_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberCountryCodes">> => list(list(any())()),
%%   <<"PhoneNumberPrefix">> => string(),
%%   <<"PhoneNumberTypes">> => list(list(any())()),
%%   <<"TargetArn">> => string()
%% }
-type list_phone_numbers_v2_request() :: #{binary() => any()}.

%% Example:
%% delete_prompt_request() :: #{}
-type delete_prompt_request() :: #{}.


%% Example:
%% send_chat_integration_event_request() :: #{
%%   <<"DestinationId">> := string(),
%%   <<"Event">> := chat_event(),
%%   <<"NewSessionDetails">> => new_session_details(),
%%   <<"SourceId">> := string(),
%%   <<"Subtype">> => string()
%% }
-type send_chat_integration_event_request() :: #{binary() => any()}.


%% Example:
%% describe_user_hierarchy_structure_response() :: #{
%%   <<"HierarchyStructure">> => hierarchy_structure()
%% }
-type describe_user_hierarchy_structure_response() :: #{binary() => any()}.


%% Example:
%% user_data() :: #{
%%   <<"ActiveSlotsByChannel">> => map(),
%%   <<"AvailableSlotsByChannel">> => map(),
%%   <<"Contacts">> => list(agent_contact_reference()),
%%   <<"HierarchyPath">> => hierarchy_path_reference(),
%%   <<"MaxSlotsByChannel">> => map(),
%%   <<"NextStatus">> => string(),
%%   <<"RoutingProfile">> => routing_profile_reference(),
%%   <<"Status">> => agent_status_reference(),
%%   <<"User">> => user_reference()
%% }
-type user_data() :: #{binary() => any()}.


%% Example:
%% outbound_email_config() :: #{
%%   <<"OutboundEmailAddressId">> => string()
%% }
-type outbound_email_config() :: #{binary() => any()}.


%% Example:
%% connect_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type connect_reference() :: #{binary() => any()}.


%% Example:
%% describe_predefined_attribute_response() :: #{
%%   <<"PredefinedAttribute">> => predefined_attribute()
%% }
-type describe_predefined_attribute_response() :: #{binary() => any()}.


%% Example:
%% start_email_contact_response() :: #{
%%   <<"ContactId">> => string()
%% }
-type start_email_contact_response() :: #{binary() => any()}.


%% Example:
%% get_federation_token_response() :: #{
%%   <<"Credentials">> => credentials(),
%%   <<"SignInUrl">> => string(),
%%   <<"UserArn">> => string(),
%%   <<"UserId">> => string()
%% }
-type get_federation_token_response() :: #{binary() => any()}.


%% Example:
%% list_traffic_distribution_groups_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_traffic_distribution_groups_request() :: #{binary() => any()}.


%% Example:
%% quick_connect_search_criteria() :: #{
%%   <<"AndConditions">> => list(quick_connect_search_criteria()),
%%   <<"OrConditions">> => list(quick_connect_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type quick_connect_search_criteria() :: #{binary() => any()}.


%% Example:
%% describe_view_response() :: #{
%%   <<"View">> => view()
%% }
-type describe_view_response() :: #{binary() => any()}.


%% Example:
%% monitor_contact_request() :: #{
%%   <<"AllowedMonitorCapabilities">> => list(list(any())()),
%%   <<"ClientToken">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"UserId">> := string()
%% }
-type monitor_contact_request() :: #{binary() => any()}.


%% Example:
%% create_quick_connect_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"QuickConnectConfig">> := quick_connect_config(),
%%   <<"Tags">> => map()
%% }
-type create_quick_connect_request() :: #{binary() => any()}.


%% Example:
%% task_action_definition() :: #{
%%   <<"ContactFlowId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"References">> => map()
%% }
-type task_action_definition() :: #{binary() => any()}.


%% Example:
%% associate_traffic_distribution_group_user_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"UserId">> := string()
%% }
-type associate_traffic_distribution_group_user_request() :: #{binary() => any()}.


%% Example:
%% customer() :: #{
%%   <<"Capabilities">> => participant_capabilities(),
%%   <<"DeviceInfo">> => device_info()
%% }
-type customer() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_response() :: #{}
-type delete_contact_flow_response() :: #{}.


%% Example:
%% update_instance_attribute_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Value">> := string()
%% }
-type update_instance_attribute_request() :: #{binary() => any()}.


%% Example:
%% hours_of_operation_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type hours_of_operation_summary() :: #{binary() => any()}.


%% Example:
%% create_evaluation_form_response() :: #{
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string()
%% }
-type create_evaluation_form_response() :: #{binary() => any()}.


%% Example:
%% agent_contact_reference() :: #{
%%   <<"AgentContactState">> => list(any()),
%%   <<"Channel">> => list(any()),
%%   <<"ConnectedToAgentTimestamp">> => non_neg_integer(),
%%   <<"ContactId">> => string(),
%%   <<"InitiationMethod">> => list(any()),
%%   <<"Queue">> => queue_reference(),
%%   <<"StateStartTimestamp">> => non_neg_integer()
%% }
-type agent_contact_reference() :: #{binary() => any()}.


%% Example:
%% list_lambda_functions_response() :: #{
%%   <<"LambdaFunctions">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_lambda_functions_response() :: #{binary() => any()}.

%% Example:
%% delete_routing_profile_request() :: #{}
-type delete_routing_profile_request() :: #{}.


%% Example:
%% cross_channel_behavior() :: #{
%%   <<"BehaviorType">> => list(any())
%% }
-type cross_channel_behavior() :: #{binary() => any()}.

%% Example:
%% empty_field_value() :: #{}
-type empty_field_value() :: #{}.


%% Example:
%% view_content() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"InputSchema">> => string(),
%%   <<"Template">> => string()
%% }
-type view_content() :: #{binary() => any()}.


%% Example:
%% update_queue_outbound_email_config_request() :: #{
%%   <<"OutboundEmailConfig">> := outbound_email_config()
%% }
-type update_queue_outbound_email_config_request() :: #{binary() => any()}.


%% Example:
%% evaluation_form_summary() :: #{
%%   <<"ActiveVersion">> => integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"LastActivatedBy">> => string(),
%%   <<"LastActivatedTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LatestVersion">> => integer(),
%%   <<"Title">> => string()
%% }
-type evaluation_form_summary() :: #{binary() => any()}.


%% Example:
%% get_task_template_request() :: #{
%%   <<"SnapshotVersion">> => string()
%% }
-type get_task_template_request() :: #{binary() => any()}.


%% Example:
%% disassociate_analytics_data_set_request() :: #{
%%   <<"DataSetId">> := string(),
%%   <<"TargetAccountId">> => string()
%% }
-type disassociate_analytics_data_set_request() :: #{binary() => any()}.

%% Example:
%% describe_agent_status_request() :: #{}
-type describe_agent_status_request() :: #{}.


%% Example:
%% list_security_keys_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_keys_request() :: #{binary() => any()}.


%% Example:
%% authentication_profile_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type authentication_profile_summary() :: #{binary() => any()}.


%% Example:
%% create_prompt_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"S3Uri">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_prompt_request() :: #{binary() => any()}.


%% Example:
%% associate_routing_profile_queues_request() :: #{
%%   <<"QueueConfigs">> := list(routing_profile_queue_config())
%% }
-type associate_routing_profile_queues_request() :: #{binary() => any()}.


%% Example:
%% search_prompts_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"Prompts">> => list(prompt())
%% }
-type search_prompts_response() :: #{binary() => any()}.


%% Example:
%% list_bots_request() :: #{
%%   <<"LexVersion">> := list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_bots_request() :: #{binary() => any()}.


%% Example:
%% replication_configuration() :: #{
%%   <<"GlobalSignInEndpoint">> => string(),
%%   <<"ReplicationStatusSummaryList">> => list(replication_status_summary()),
%%   <<"SourceRegion">> => string()
%% }
-type replication_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_security_profile_request() :: #{
%%   <<"AllowedAccessControlHierarchyGroupId">> => string(),
%%   <<"AllowedAccessControlTags">> => map(),
%%   <<"Applications">> => list(application()),
%%   <<"Description">> => string(),
%%   <<"HierarchyRestrictedResources">> => list(string()),
%%   <<"Permissions">> => list(string()),
%%   <<"SecurityProfileName">> := string(),
%%   <<"TagRestrictedResources">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type create_security_profile_request() :: #{binary() => any()}.


%% Example:
%% create_view_version_request() :: #{
%%   <<"VersionDescription">> => string(),
%%   <<"ViewContentSha256">> => string()
%% }
-type create_view_version_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_attribute_request() :: #{}
-type describe_instance_attribute_request() :: #{}.


%% Example:
%% list_security_profile_permissions_response() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(string())
%% }
-type list_security_profile_permissions_response() :: #{binary() => any()}.


%% Example:
%% create_predefined_attribute_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Values">> := list()
%% }
-type create_predefined_attribute_request() :: #{binary() => any()}.


%% Example:
%% get_contact_metrics_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"MetricResults">> => list(contact_metric_result())
%% }
-type get_contact_metrics_response() :: #{binary() => any()}.


%% Example:
%% stop_contact_recording_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"ContactRecordingType">> => list(any()),
%%   <<"InitialContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type stop_contact_recording_request() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_category_details() :: #{
%%   <<"PointsOfInterest">> => list(real_time_contact_analysis_point_of_interest())
%% }
-type real_time_contact_analysis_category_details() :: #{binary() => any()}.


%% Example:
%% create_traffic_distribution_group_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_traffic_distribution_group_request() :: #{binary() => any()}.


%% Example:
%% security_profile_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type security_profile_summary() :: #{binary() => any()}.


%% Example:
%% describe_contact_evaluation_response() :: #{
%%   <<"Evaluation">> => evaluation(),
%%   <<"EvaluationForm">> => evaluation_form_content()
%% }
-type describe_contact_evaluation_response() :: #{binary() => any()}.


%% Example:
%% describe_evaluation_form_request() :: #{
%%   <<"EvaluationFormVersion">> => integer()
%% }
-type describe_evaluation_form_request() :: #{binary() => any()}.


%% Example:
%% send_notification_action_definition() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => list(any()),
%%   <<"DeliveryMethod">> => list(any()),
%%   <<"Recipient">> => notification_recipient_type(),
%%   <<"Subject">> => string()
%% }
-type send_notification_action_definition() :: #{binary() => any()}.


%% Example:
%% user_quick_connect_config() :: #{
%%   <<"ContactFlowId">> => string(),
%%   <<"UserId">> => string()
%% }
-type user_quick_connect_config() :: #{binary() => any()}.


%% Example:
%% phone_number_status() :: #{
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any())
%% }
-type phone_number_status() :: #{binary() => any()}.


%% Example:
%% agent_info() :: #{
%%   <<"AfterContactWorkDuration">> => integer(),
%%   <<"AfterContactWorkEndTimestamp">> => non_neg_integer(),
%%   <<"AfterContactWorkStartTimestamp">> => non_neg_integer(),
%%   <<"AgentInitiatedHoldDuration">> => integer(),
%%   <<"AgentPauseDurationInSeconds">> => integer(),
%%   <<"Capabilities">> => participant_capabilities(),
%%   <<"ConnectedToAgentTimestamp">> => non_neg_integer(),
%%   <<"DeviceInfo">> => device_info(),
%%   <<"HierarchyGroups">> => hierarchy_groups(),
%%   <<"Id">> => string(),
%%   <<"StateTransitions">> => list(state_transition())
%% }
-type agent_info() :: #{binary() => any()}.


%% Example:
%% describe_hours_of_operation_response() :: #{
%%   <<"HoursOfOperation">> => hours_of_operation()
%% }
-type describe_hours_of_operation_response() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_analytics_data_set_request() :: #{
%%   <<"DataSetIds">> := list(string()),
%%   <<"TargetAccountId">> => string()
%% }
-type batch_disassociate_analytics_data_set_request() :: #{binary() => any()}.


%% Example:
%% create_prompt_response() :: #{
%%   <<"PromptARN">> => string(),
%%   <<"PromptId">> => string()
%% }
-type create_prompt_response() :: #{binary() => any()}.


%% Example:
%% create_integration_association_request() :: #{
%%   <<"IntegrationArn">> := string(),
%%   <<"IntegrationType">> := list(any()),
%%   <<"SourceApplicationName">> => string(),
%%   <<"SourceApplicationUrl">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_integration_association_request() :: #{binary() => any()}.


%% Example:
%% audio_features() :: #{
%%   <<"EchoReduction">> => list(any())
%% }
-type audio_features() :: #{binary() => any()}.


%% Example:
%% routing_profile_queue_config() :: #{
%%   <<"Delay">> => integer(),
%%   <<"Priority">> => integer(),
%%   <<"QueueReference">> => routing_profile_queue_reference()
%% }
-type routing_profile_queue_config() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% update_task_template_request() :: #{
%%   <<"Constraints">> => task_template_constraints(),
%%   <<"ContactFlowId">> => string(),
%%   <<"Defaults">> => task_template_defaults(),
%%   <<"Description">> => string(),
%%   <<"Fields">> => list(task_template_field()),
%%   <<"Name">> => string(),
%%   <<"SelfAssignFlowId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_task_template_request() :: #{binary() => any()}.

%% Example:
%% update_contact_response() :: #{}
-type update_contact_response() :: #{}.


%% Example:
%% disassociate_bot_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LexBot">> => lex_bot(),
%%   <<"LexV2Bot">> => lex_v2_bot()
%% }
-type disassociate_bot_request() :: #{binary() => any()}.


%% Example:
%% evaluation_score() :: #{
%%   <<"AutomaticFail">> => boolean(),
%%   <<"NotApplicable">> => boolean(),
%%   <<"Percentage">> => float()
%% }
-type evaluation_score() :: #{binary() => any()}.


%% Example:
%% batch_put_contact_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactDataRequestList">> := list(contact_data_request())
%% }
-type batch_put_contact_request() :: #{binary() => any()}.


%% Example:
%% list_task_templates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_task_templates_request() :: #{binary() => any()}.


%% Example:
%% telephony_config() :: #{
%%   <<"Distributions">> => list(distribution())
%% }
-type telephony_config() :: #{binary() => any()}.


%% Example:
%% list_security_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecurityProfileSummaryList">> => list(security_profile_summary())
%% }
-type list_security_profiles_response() :: #{binary() => any()}.


%% Example:
%% create_participant_response() :: #{
%%   <<"ParticipantCredentials">> => participant_token_credentials(),
%%   <<"ParticipantId">> => string()
%% }
-type create_participant_response() :: #{binary() => any()}.


%% Example:
%% hierarchy_group_condition() :: #{
%%   <<"HierarchyGroupMatchType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type hierarchy_group_condition() :: #{binary() => any()}.


%% Example:
%% vocabulary_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"Id">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type vocabulary_summary() :: #{binary() => any()}.


%% Example:
%% list_view_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_view_versions_request() :: #{binary() => any()}.


%% Example:
%% create_contact_flow_module_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Content">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_contact_flow_module_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_request() :: #{}
-type describe_instance_request() :: #{}.


%% Example:
%% security_profiles_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type security_profiles_search_filter() :: #{binary() => any()}.


%% Example:
%% batch_get_attached_file_metadata_request() :: #{
%%   <<"AssociatedResourceArn">> := string(),
%%   <<"FileIds">> := list(string())
%% }
-type batch_get_attached_file_metadata_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_flow_association_request() :: #{
%%   <<"ResourceIds">> := list(string()),
%%   <<"ResourceType">> => list(any())
%% }
-type batch_get_flow_association_request() :: #{binary() => any()}.


%% Example:
%% s3_config() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketPrefix">> => string(),
%%   <<"EncryptionConfig">> => encryption_config()
%% }
-type s3_config() :: #{binary() => any()}.


%% Example:
%% list_authentication_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_authentication_profiles_request() :: #{binary() => any()}.


%% Example:
%% update_contact_flow_content_request() :: #{
%%   <<"Content">> := string()
%% }
-type update_contact_flow_content_request() :: #{binary() => any()}.


%% Example:
%% user_phone_config() :: #{
%%   <<"AfterContactWorkTimeLimit">> => integer(),
%%   <<"AutoAccept">> => boolean(),
%%   <<"DeskPhoneNumber">> => string(),
%%   <<"PhoneType">> => list(any())
%% }
-type user_phone_config() :: #{binary() => any()}.

%% Example:
%% describe_email_address_request() :: #{}
-type describe_email_address_request() :: #{}.


%% Example:
%% submit_contact_evaluation_response() :: #{
%%   <<"EvaluationArn">> => string(),
%%   <<"EvaluationId">> => string()
%% }
-type submit_contact_evaluation_response() :: #{binary() => any()}.


%% Example:
%% evaluation_form() :: #{
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer(),
%%   <<"Items">> => list(list()),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Locked">> => boolean(),
%%   <<"ScoringStrategy">> => evaluation_form_scoring_strategy(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Title">> => string()
%% }
-type evaluation_form() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_transcript_item_with_character_offsets() :: #{
%%   <<"CharacterOffsets">> => real_time_contact_analysis_character_interval(),
%%   <<"Id">> => string()
%% }
-type real_time_contact_analysis_transcript_item_with_character_offsets() :: #{binary() => any()}.


%% Example:
%% view_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => integer(),
%%   <<"VersionDescription">> => string()
%% }
-type view_version_summary() :: #{binary() => any()}.


%% Example:
%% numeric_question_property_value_automation() :: #{
%%   <<"Label">> => list(any())
%% }
-type numeric_question_property_value_automation() :: #{binary() => any()}.


%% Example:
%% update_traffic_distribution_request() :: #{
%%   <<"AgentConfig">> => agent_config(),
%%   <<"SignInConfig">> => sign_in_config(),
%%   <<"TelephonyConfig">> => telephony_config()
%% }
-type update_traffic_distribution_request() :: #{binary() => any()}.

%% Example:
%% delete_task_template_request() :: #{}
-type delete_task_template_request() :: #{}.

%% Example:
%% tag_contact_response() :: #{}
-type tag_contact_response() :: #{}.


%% Example:
%% list_phone_numbers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberCountryCodes">> => list(list(any())()),
%%   <<"PhoneNumberTypes">> => list(list(any())())
%% }
-type list_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% create_contact_flow_version_response() :: #{
%%   <<"ContactFlowArn">> => string(),
%%   <<"Version">> => float()
%% }
-type create_contact_flow_version_response() :: #{binary() => any()}.


%% Example:
%% get_metric_data_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Filters">> := filters(),
%%   <<"Groupings">> => list(list(any())()),
%%   <<"HistoricalMetrics">> := list(historical_metric()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_metric_data_request() :: #{binary() => any()}.


%% Example:
%% vocabulary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"Id">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type vocabulary() :: #{binary() => any()}.


%% Example:
%% inbound_raw_message() :: #{
%%   <<"Body">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Headers">> => map(),
%%   <<"Subject">> => string()
%% }
-type inbound_raw_message() :: #{binary() => any()}.


%% Example:
%% disassociate_routing_profile_queues_request() :: #{
%%   <<"QueueReferences">> := list(routing_profile_queue_reference())
%% }
-type disassociate_routing_profile_queues_request() :: #{binary() => any()}.


%% Example:
%% filter_v2() :: #{
%%   <<"FilterKey">> => string(),
%%   <<"FilterValues">> => list(string())
%% }
-type filter_v2() :: #{binary() => any()}.


%% Example:
%% update_agent_status_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayOrder">> => integer(),
%%   <<"Name">> => string(),
%%   <<"ResetOrderNumber">> => boolean(),
%%   <<"State">> => list(any())
%% }
-type update_agent_status_request() :: #{binary() => any()}.

%% Example:
%% associate_default_vocabulary_response() :: #{}
-type associate_default_vocabulary_response() :: #{}.


%% Example:
%% routing_profile_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type routing_profile_search_filter() :: #{binary() => any()}.


%% Example:
%% update_view_metadata_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_view_metadata_request() :: #{binary() => any()}.


%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserSummaryList">> => list(user_summary())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"ApplicationPermissions">> => list(string()),
%%   <<"Namespace">> => string()
%% }
-type application() :: #{binary() => any()}.


%% Example:
%% hierarchy_level() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type hierarchy_level() :: #{binary() => any()}.

%% Example:
%% describe_view_request() :: #{}
-type describe_view_request() :: #{}.


%% Example:
%% get_attached_file_response() :: #{
%%   <<"AssociatedResourceArn">> => string(),
%%   <<"CreatedBy">> => list(),
%%   <<"CreationTime">> => string(),
%%   <<"DownloadUrlMetadata">> => download_url_metadata(),
%%   <<"FileArn">> => string(),
%%   <<"FileId">> => string(),
%%   <<"FileName">> => string(),
%%   <<"FileSizeInBytes">> => float(),
%%   <<"FileStatus">> => list(any()),
%%   <<"FileUseCaseType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_attached_file_response() :: #{binary() => any()}.


%% Example:
%% update_evaluation_form_response() :: #{
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer()
%% }
-type update_evaluation_form_response() :: #{binary() => any()}.


%% Example:
%% user_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type user_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_evaluation_form_versions_response() :: #{
%%   <<"EvaluationFormVersionSummaryList">> => list(evaluation_form_version_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_evaluation_form_versions_response() :: #{binary() => any()}.


%% Example:
%% create_evaluation_form_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Items">> := list(list()),
%%   <<"ScoringStrategy">> => evaluation_form_scoring_strategy(),
%%   <<"Title">> := string()
%% }
-type create_evaluation_form_request() :: #{binary() => any()}.

%% Example:
%% start_contact_recording_response() :: #{}
-type start_contact_recording_response() :: #{}.


%% Example:
%% get_metric_data_v2_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Filters">> := list(filter_v2()),
%%   <<"Groupings">> => list(string()),
%%   <<"Interval">> => interval_details(),
%%   <<"MaxResults">> => integer(),
%%   <<"Metrics">> := list(metric_v2()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_metric_data_v2_request() :: #{binary() => any()}.


%% Example:
%% claim_phone_number_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"PhoneNumber">> := string(),
%%   <<"PhoneNumberDescription">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TargetArn">> => string()
%% }
-type claim_phone_number_request() :: #{binary() => any()}.


%% Example:
%% email_address_info() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"EmailAddress">> => string()
%% }
-type email_address_info() :: #{binary() => any()}.


%% Example:
%% untag_contact_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_contact_request() :: #{binary() => any()}.


%% Example:
%% search_quick_connects_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"QuickConnects">> => list(quick_connect())
%% }
-type search_quick_connects_response() :: #{binary() => any()}.


%% Example:
%% contact_metric_result() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => list()
%% }
-type contact_metric_result() :: #{binary() => any()}.


%% Example:
%% list_realtime_contact_analysis_segments_v2_response() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"Segments">> => list(list()),
%%   <<"Status">> => list(any())
%% }
-type list_realtime_contact_analysis_segments_v2_response() :: #{binary() => any()}.


%% Example:
%% integration_association_summary() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationAssociationArn">> => string(),
%%   <<"IntegrationAssociationId">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"SourceApplicationName">> => string(),
%%   <<"SourceApplicationUrl">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type integration_association_summary() :: #{binary() => any()}.


%% Example:
%% list_analytics_data_associations_request() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_analytics_data_associations_request() :: #{binary() => any()}.


%% Example:
%% search_contacts_response() :: #{
%%   <<"Contacts">> => list(contact_search_summary()),
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => float()
%% }
-type search_contacts_response() :: #{binary() => any()}.


%% Example:
%% list_predefined_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_predefined_attributes_request() :: #{binary() => any()}.


%% Example:
%% list_quick_connects_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuickConnectTypes">> => list(list(any())())
%% }
-type list_quick_connects_request() :: #{binary() => any()}.


%% Example:
%% distribution() :: #{
%%   <<"Percentage">> => integer(),
%%   <<"Region">> => string()
%% }
-type distribution() :: #{binary() => any()}.


%% Example:
%% agent_quality_metrics() :: #{
%%   <<"Audio">> => audio_quality_metrics_info()
%% }
-type agent_quality_metrics() :: #{binary() => any()}.


%% Example:
%% create_push_notification_registration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactConfiguration">> := contact_configuration(),
%%   <<"DeviceToken">> := string(),
%%   <<"DeviceType">> := list(any()),
%%   <<"PinpointAppArn">> := string()
%% }
-type create_push_notification_registration_request() :: #{binary() => any()}.


%% Example:
%% start_contact_streaming_response() :: #{
%%   <<"StreamingId">> => string()
%% }
-type start_contact_streaming_response() :: #{binary() => any()}.


%% Example:
%% update_user_hierarchy_request() :: #{
%%   <<"HierarchyGroupId">> => string()
%% }
-type update_user_hierarchy_request() :: #{binary() => any()}.


%% Example:
%% quick_connect_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type quick_connect_search_filter() :: #{binary() => any()}.


%% Example:
%% disassociate_lambda_function_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"FunctionArn">> := string()
%% }
-type disassociate_lambda_function_request() :: #{binary() => any()}.


%% Example:
%% assign_sla_action_definition() :: #{
%%   <<"CaseSlaConfiguration">> => case_sla_configuration(),
%%   <<"SlaAssignmentType">> => list(any())
%% }
-type assign_sla_action_definition() :: #{binary() => any()}.


%% Example:
%% disassociate_instance_storage_config_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ResourceType">> := list(any())
%% }
-type disassociate_instance_storage_config_request() :: #{binary() => any()}.


%% Example:
%% update_routing_profile_queues_request() :: #{
%%   <<"QueueConfigs">> := list(routing_profile_queue_config())
%% }
-type update_routing_profile_queues_request() :: #{binary() => any()}.


%% Example:
%% conditional_operation_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conditional_operation_failed_exception() :: #{binary() => any()}.


%% Example:
%% update_user_phone_config_request() :: #{
%%   <<"PhoneConfig">> := user_phone_config()
%% }
-type update_user_phone_config_request() :: #{binary() => any()}.


%% Example:
%% evaluation_form_question() :: #{
%%   <<"Instructions">> => string(),
%%   <<"NotApplicableEnabled">> => boolean(),
%%   <<"QuestionType">> => list(any()),
%%   <<"QuestionTypeProperties">> => list(),
%%   <<"RefId">> => string(),
%%   <<"Title">> => string(),
%%   <<"Weight">> => float()
%% }
-type evaluation_form_question() :: #{binary() => any()}.


%% Example:
%% notification_recipient_type() :: #{
%%   <<"UserIds">> => list(string()),
%%   <<"UserTags">> => map()
%% }
-type notification_recipient_type() :: #{binary() => any()}.


%% Example:
%% kinesis_stream_config() :: #{
%%   <<"StreamArn">> => string()
%% }
-type kinesis_stream_config() :: #{binary() => any()}.


%% Example:
%% describe_email_address_response() :: #{
%%   <<"CreateTimestamp">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"EmailAddressArn">> => string(),
%%   <<"EmailAddressId">> => string(),
%%   <<"ModifiedTimestamp">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_email_address_response() :: #{binary() => any()}.


%% Example:
%% template_attributes() :: #{
%%   <<"CustomAttributes">> => map(),
%%   <<"CustomerProfileAttributes">> => string()
%% }
-type template_attributes() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_event() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"EventType">> => string(),
%%   <<"Id">> => string(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"Time">> => list()
%% }
-type real_time_contact_analysis_segment_event() :: #{binary() => any()}.


%% Example:
%% agent_hierarchy_groups() :: #{
%%   <<"L1Ids">> => list(string()),
%%   <<"L2Ids">> => list(string()),
%%   <<"L3Ids">> => list(string()),
%%   <<"L4Ids">> => list(string()),
%%   <<"L5Ids">> => list(string())
%% }
-type agent_hierarchy_groups() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_use_cases_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UseCaseSummaryList">> => list(use_case())
%% }
-type list_use_cases_response() :: #{binary() => any()}.


%% Example:
%% tag_set() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_set() :: #{binary() => any()}.


%% Example:
%% match_criteria() :: #{
%%   <<"AgentsCriteria">> => agents_criteria()
%% }
-type match_criteria() :: #{binary() => any()}.


%% Example:
%% problem_detail() :: #{
%%   <<"message">> => string()
%% }
-type problem_detail() :: #{binary() => any()}.


%% Example:
%% search_queues_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => queue_search_criteria(),
%%   <<"SearchFilter">> => queue_search_filter()
%% }
-type search_queues_request() :: #{binary() => any()}.


%% Example:
%% start_screen_sharing_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type start_screen_sharing_request() :: #{binary() => any()}.


%% Example:
%% associate_analytics_data_set_request() :: #{
%%   <<"DataSetId">> := string(),
%%   <<"TargetAccountId">> => string()
%% }
-type associate_analytics_data_set_request() :: #{binary() => any()}.


%% Example:
%% search_users_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => user_search_criteria(),
%%   <<"SearchFilter">> => user_search_filter()
%% }
-type search_users_request() :: #{binary() => any()}.


%% Example:
%% create_user_hierarchy_group_response() :: #{
%%   <<"HierarchyGroupArn">> => string(),
%%   <<"HierarchyGroupId">> => string()
%% }
-type create_user_hierarchy_group_response() :: #{binary() => any()}.


%% Example:
%% disassociate_user_proficiencies_request() :: #{
%%   <<"UserProficiencies">> := list(user_proficiency_disassociate())
%% }
-type disassociate_user_proficiencies_request() :: #{binary() => any()}.


%% Example:
%% contact_data_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Campaign">> => campaign(),
%%   <<"CustomerEndpoint">> => endpoint(),
%%   <<"QueueId">> => string(),
%%   <<"RequestIdentifier">> => string(),
%%   <<"SystemEndpoint">> => endpoint()
%% }
-type contact_data_request() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_number_contact_flow_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type disassociate_phone_number_contact_flow_request() :: #{binary() => any()}.


%% Example:
%% contact_analysis() :: #{
%%   <<"Transcript">> => transcript()
%% }
-type contact_analysis() :: #{binary() => any()}.


%% Example:
%% recording_info() :: #{
%%   <<"DeletionReason">> => string(),
%%   <<"FragmentStartNumber">> => string(),
%%   <<"FragmentStopNumber">> => string(),
%%   <<"Location">> => string(),
%%   <<"MediaStreamType">> => list(any()),
%%   <<"ParticipantType">> => list(any()),
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StopTimestamp">> => non_neg_integer(),
%%   <<"StorageType">> => list(any())
%% }
-type recording_info() :: #{binary() => any()}.


%% Example:
%% list_approved_origins_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Origins">> => list(string())
%% }
-type list_approved_origins_response() :: #{binary() => any()}.


%% Example:
%% security_profile_search_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"OrganizationResourceId">> => string(),
%%   <<"SecurityProfileName">> => string(),
%%   <<"Tags">> => map()
%% }
-type security_profile_search_summary() :: #{binary() => any()}.


%% Example:
%% agents_criteria() :: #{
%%   <<"AgentIds">> => list(string())
%% }
-type agents_criteria() :: #{binary() => any()}.


%% Example:
%% effective_hours_of_operations() :: #{
%%   <<"Date">> => string(),
%%   <<"OperationalHours">> => list(operational_hour())
%% }
-type effective_hours_of_operations() :: #{binary() => any()}.


%% Example:
%% create_view_response() :: #{
%%   <<"View">> => view()
%% }
-type create_view_response() :: #{binary() => any()}.


%% Example:
%% routing_profile_search_criteria() :: #{
%%   <<"AndConditions">> => list(routing_profile_search_criteria()),
%%   <<"OrConditions">> => list(routing_profile_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type routing_profile_search_criteria() :: #{binary() => any()}.


%% Example:
%% evaluation_form_numeric_question_option() :: #{
%%   <<"AutomaticFail">> => boolean(),
%%   <<"MaxValue">> => integer(),
%%   <<"MinValue">> => integer(),
%%   <<"Score">> => integer()
%% }
-type evaluation_form_numeric_question_option() :: #{binary() => any()}.


%% Example:
%% start_task_contact_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> := string(),
%%   <<"PreviousContactId">> => string(),
%%   <<"QuickConnectId">> => string(),
%%   <<"References">> => map(),
%%   <<"RelatedContactId">> => string(),
%%   <<"ScheduledTime">> => non_neg_integer(),
%%   <<"SegmentAttributes">> => map(),
%%   <<"TaskTemplateId">> => string()
%% }
-type start_task_contact_request() :: #{binary() => any()}.


%% Example:
%% create_case_action_definition() :: #{
%%   <<"Fields">> => list(field_value()),
%%   <<"TemplateId">> => string()
%% }
-type create_case_action_definition() :: #{binary() => any()}.


%% Example:
%% create_rule_response() :: #{
%%   <<"RuleArn">> => string(),
%%   <<"RuleId">> => string()
%% }
-type create_rule_response() :: #{binary() => any()}.


%% Example:
%% current_metric_result() :: #{
%%   <<"Collections">> => list(current_metric_data()),
%%   <<"Dimensions">> => dimensions()
%% }
-type current_metric_result() :: #{binary() => any()}.


%% Example:
%% condition() :: #{
%%   <<"NumberCondition">> => number_condition(),
%%   <<"StringCondition">> => string_condition()
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% associate_phone_number_contact_flow_request() :: #{
%%   <<"ContactFlowId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type associate_phone_number_contact_flow_request() :: #{binary() => any()}.


%% Example:
%% update_predefined_attribute_request() :: #{
%%   <<"Values">> => list()
%% }
-type update_predefined_attribute_request() :: #{binary() => any()}.


%% Example:
%% search_email_addresses_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => email_address_search_criteria(),
%%   <<"SearchFilter">> => email_address_search_filter()
%% }
-type search_email_addresses_request() :: #{binary() => any()}.


%% Example:
%% list_integration_associations_request() :: #{
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_integration_associations_request() :: #{binary() => any()}.


%% Example:
%% create_queue_request() :: #{
%%   <<"Description">> => string(),
%%   <<"HoursOfOperationId">> := string(),
%%   <<"MaxContacts">> => integer(),
%%   <<"Name">> := string(),
%%   <<"OutboundCallerConfig">> => outbound_caller_config(),
%%   <<"OutboundEmailConfig">> => outbound_email_config(),
%%   <<"QuickConnectIds">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type create_queue_request() :: #{binary() => any()}.


%% Example:
%% attribute_and_condition() :: #{
%%   <<"HierarchyGroupCondition">> => hierarchy_group_condition(),
%%   <<"TagConditions">> => list(tag_condition())
%% }
-type attribute_and_condition() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_module_response() :: #{}
-type delete_contact_flow_module_response() :: #{}.


%% Example:
%% email_address_metadata() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"EmailAddressArn">> => string(),
%%   <<"EmailAddressId">> => string()
%% }
-type email_address_metadata() :: #{binary() => any()}.


%% Example:
%% chat_participant_role_config() :: #{
%%   <<"ParticipantTimerConfigList">> => list(participant_timer_configuration())
%% }
-type chat_participant_role_config() :: #{binary() => any()}.


%% Example:
%% single_select_question_rule_category_automation() :: #{
%%   <<"Category">> => string(),
%%   <<"Condition">> => list(any()),
%%   <<"OptionRefId">> => string()
%% }
-type single_select_question_rule_category_automation() :: #{binary() => any()}.


%% Example:
%% lex_bot() :: #{
%%   <<"LexRegion">> => string(),
%%   <<"Name">> => string()
%% }
-type lex_bot() :: #{binary() => any()}.


%% Example:
%% device_info() :: #{
%%   <<"OperatingSystem">> => string(),
%%   <<"PlatformName">> => string(),
%%   <<"PlatformVersion">> => string()
%% }
-type device_info() :: #{binary() => any()}.


%% Example:
%% hierarchy_path() :: #{
%%   <<"LevelFive">> => hierarchy_group_summary(),
%%   <<"LevelFour">> => hierarchy_group_summary(),
%%   <<"LevelOne">> => hierarchy_group_summary(),
%%   <<"LevelThree">> => hierarchy_group_summary(),
%%   <<"LevelTwo">> => hierarchy_group_summary()
%% }
-type hierarchy_path() :: #{binary() => any()}.


%% Example:
%% quick_connect_config() :: #{
%%   <<"PhoneConfig">> => phone_number_quick_connect_config(),
%%   <<"QueueConfig">> => queue_quick_connect_config(),
%%   <<"QuickConnectType">> => list(any()),
%%   <<"UserConfig">> => user_quick_connect_config()
%% }
-type quick_connect_config() :: #{binary() => any()}.


%% Example:
%% list_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_instances_request() :: #{binary() => any()}.


%% Example:
%% connection_data() :: #{
%%   <<"Attendee">> => attendee(),
%%   <<"Meeting">> => meeting()
%% }
-type connection_data() :: #{binary() => any()}.


%% Example:
%% monitor_contact_response() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"ContactId">> => string()
%% }
-type monitor_contact_response() :: #{binary() => any()}.


%% Example:
%% associate_instance_storage_config_response() :: #{
%%   <<"AssociationId">> => string()
%% }
-type associate_instance_storage_config_response() :: #{binary() => any()}.


%% Example:
%% list_traffic_distribution_group_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_traffic_distribution_group_users_request() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{}
-type delete_user_request() :: #{}.


%% Example:
%% get_metric_data_response() :: #{
%%   <<"MetricResults">> => list(historical_metric_result()),
%%   <<"NextToken">> => string()
%% }
-type get_metric_data_response() :: #{binary() => any()}.


%% Example:
%% list_evaluation_forms_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_evaluation_forms_request() :: #{binary() => any()}.


%% Example:
%% contact_flow_module_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type contact_flow_module_summary() :: #{binary() => any()}.


%% Example:
%% flow_association_summary() :: #{
%%   <<"FlowId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type flow_association_summary() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"Actions">> => list(rule_action()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Function">> => string(),
%%   <<"LastUpdatedBy">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublishStatus">> => list(any()),
%%   <<"RuleArn">> => string(),
%%   <<"RuleId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TriggerEventSource">> => rule_trigger_event_source()
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% list_user_hierarchy_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_user_hierarchy_groups_request() :: #{binary() => any()}.


%% Example:
%% sort() :: #{
%%   <<"FieldName">> => list(any()),
%%   <<"Order">> => list(any())
%% }
-type sort() :: #{binary() => any()}.


%% Example:
%% contact() :: #{
%%   <<"AdditionalEmailRecipients">> => additional_email_recipients(),
%%   <<"Campaign">> => campaign(),
%%   <<"ContactEvaluations">> => map(),
%%   <<"InitiationMethod">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"DisconnectReason">> => string(),
%%   <<"LastResumedTimestamp">> => non_neg_integer(),
%%   <<"AnsweringMachineDetectionStatus">> => list(any()),
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"PreviousContactId">> => string(),
%%   <<"SystemEndpoint">> => endpoint_info(),
%%   <<"ScheduledTimestamp">> => non_neg_integer(),
%%   <<"Attributes">> => map(),
%%   <<"RoutingCriteria">> => routing_criteria(),
%%   <<"TotalPauseCount">> => integer(),
%%   <<"InitialContactId">> => string(),
%%   <<"ContactDetails">> => contact_details(),
%%   <<"ConnectedToSystemTimestamp">> => non_neg_integer(),
%%   <<"LastPausedTimestamp">> => non_neg_integer(),
%%   <<"ChatMetrics">> => chat_metrics(),
%%   <<"CustomerId">> => string(),
%%   <<"CustomerVoiceActivity">> => customer_voice_activity(),
%%   <<"QualityMetrics">> => quality_metrics(),
%%   <<"CustomerEndpoint">> => endpoint_info(),
%%   <<"QueueInfo">> => queue_info(),
%%   <<"Arn">> => string(),
%%   <<"QueueTimeAdjustmentSeconds">> => integer(),
%%   <<"InitiationTimestamp">> => non_neg_integer(),
%%   <<"DisconnectTimestamp">> => non_neg_integer(),
%%   <<"Tags">> => map(),
%%   <<"RelatedContactId">> => string(),
%%   <<"Recordings">> => list(recording_info()),
%%   <<"SegmentAttributes">> => map(),
%%   <<"Name">> => string(),
%%   <<"DisconnectDetails">> => disconnect_details(),
%%   <<"TotalPauseDurationInSeconds">> => integer(),
%%   <<"WisdomInfo">> => wisdom_info(),
%%   <<"ContactAssociationId">> => string(),
%%   <<"AgentInfo">> => agent_info(),
%%   <<"Description">> => string(),
%%   <<"Channel">> => list(any()),
%%   <<"QueuePriority">> => float(),
%%   <<"Customer">> => customer()
%% }
-type contact() :: #{binary() => any()}.


%% Example:
%% update_routing_profile_default_outbound_queue_request() :: #{
%%   <<"DefaultOutboundQueueId">> := string()
%% }
-type update_routing_profile_default_outbound_queue_request() :: #{binary() => any()}.


%% Example:
%% update_routing_profile_concurrency_request() :: #{
%%   <<"MediaConcurrencies">> := list(media_concurrency())
%% }
-type update_routing_profile_concurrency_request() :: #{binary() => any()}.


%% Example:
%% routing_profile_queue_reference() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"QueueId">> => string()
%% }
-type routing_profile_queue_reference() :: #{binary() => any()}.


%% Example:
%% control_plane_user_attribute_filter() :: #{
%%   <<"AndCondition">> => attribute_and_condition(),
%%   <<"HierarchyGroupCondition">> => hierarchy_group_condition(),
%%   <<"OrConditions">> => list(attribute_and_condition()),
%%   <<"TagCondition">> => tag_condition()
%% }
-type control_plane_user_attribute_filter() :: #{binary() => any()}.


%% Example:
%% create_agent_status_response() :: #{
%%   <<"AgentStatusARN">> => string(),
%%   <<"AgentStatusId">> => string()
%% }
-type create_agent_status_response() :: #{binary() => any()}.


%% Example:
%% list_views_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_views_request() :: #{binary() => any()}.


%% Example:
%% stop_contact_streaming_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"StreamingId">> := string()
%% }
-type stop_contact_streaming_request() :: #{binary() => any()}.


%% Example:
%% user_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type user_reference() :: #{binary() => any()}.


%% Example:
%% update_contact_flow_metadata_request() :: #{
%%   <<"ContactFlowState">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_contact_flow_metadata_request() :: #{binary() => any()}.


%% Example:
%% state_transition() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateEndTimestamp">> => non_neg_integer(),
%%   <<"StateStartTimestamp">> => non_neg_integer()
%% }
-type state_transition() :: #{binary() => any()}.


%% Example:
%% search_hours_of_operation_overrides_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => hours_of_operation_override_search_criteria(),
%%   <<"SearchFilter">> => hours_of_operation_search_filter()
%% }
-type search_hours_of_operation_overrides_request() :: #{binary() => any()}.


%% Example:
%% routing_profile_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type routing_profile_summary() :: #{binary() => any()}.


%% Example:
%% dismiss_user_contact_request() :: #{
%%   <<"ContactId">> := string()
%% }
-type dismiss_user_contact_request() :: #{binary() => any()}.


%% Example:
%% voice_recording_configuration() :: #{
%%   <<"IvrRecordingTrack">> => list(any()),
%%   <<"VoiceRecordingTrack">> => list(any())
%% }
-type voice_recording_configuration() :: #{binary() => any()}.


%% Example:
%% evaluation_form_numeric_question_properties() :: #{
%%   <<"Automation">> => list(),
%%   <<"MaxValue">> => integer(),
%%   <<"MinValue">> => integer(),
%%   <<"Options">> => list(evaluation_form_numeric_question_option())
%% }
-type evaluation_form_numeric_question_properties() :: #{binary() => any()}.


%% Example:
%% additional_email_recipients() :: #{
%%   <<"CcList">> => list(email_recipient()),
%%   <<"ToList">> => list(email_recipient())
%% }
-type additional_email_recipients() :: #{binary() => any()}.


%% Example:
%% list_instance_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute()),
%%   <<"NextToken">> => string()
%% }
-type list_instance_attributes_response() :: #{binary() => any()}.


%% Example:
%% put_user_status_request() :: #{
%%   <<"AgentStatusId">> := string()
%% }
-type put_user_status_request() :: #{binary() => any()}.


%% Example:
%% hierarchy_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"HierarchyPath">> => hierarchy_path(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LevelId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type hierarchy_group() :: #{binary() => any()}.


%% Example:
%% searchable_contact_attributes_criteria() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type searchable_contact_attributes_criteria() :: #{binary() => any()}.


%% Example:
%% list_view_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ViewVersionSummaryList">> => list(view_version_summary())
%% }
-type list_view_versions_response() :: #{binary() => any()}.


%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Type">> => list(any())
%% }
-type endpoint() :: #{binary() => any()}.


%% Example:
%% queue_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type queue_reference() :: #{binary() => any()}.


%% Example:
%% interval_details() :: #{
%%   <<"IntervalPeriod">> => list(any()),
%%   <<"TimeZone">> => string()
%% }
-type interval_details() :: #{binary() => any()}.


%% Example:
%% contact_evaluation() :: #{
%%   <<"DeleteTimestamp">> => non_neg_integer(),
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"EvaluationArn">> => string(),
%%   <<"ExportLocation">> => string(),
%%   <<"FormId">> => string(),
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type contact_evaluation() :: #{binary() => any()}.


%% Example:
%% list_contact_flow_modules_response() :: #{
%%   <<"ContactFlowModulesSummaryList">> => list(contact_flow_module_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flow_modules_response() :: #{binary() => any()}.


%% Example:
%% rule_action() :: #{
%%   <<"ActionType">> => list(any()),
%%   <<"AssignContactCategoryAction">> => assign_contact_category_action_definition(),
%%   <<"AssignSlaAction">> => assign_sla_action_definition(),
%%   <<"CreateCaseAction">> => create_case_action_definition(),
%%   <<"EndAssociatedTasksAction">> => end_associated_tasks_action_definition(),
%%   <<"EventBridgeAction">> => event_bridge_action_definition(),
%%   <<"SendNotificationAction">> => send_notification_action_definition(),
%%   <<"SubmitAutoEvaluationAction">> => submit_auto_evaluation_action_definition(),
%%   <<"TaskAction">> => task_action_definition(),
%%   <<"UpdateCaseAction">> => update_case_action_definition()
%% }
-type rule_action() :: #{binary() => any()}.


%% Example:
%% list_instances_response() :: #{
%%   <<"InstanceSummaryList">> => list(instance_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_instances_response() :: #{binary() => any()}.


%% Example:
%% update_routing_profile_agent_availability_timer_request() :: #{
%%   <<"AgentAvailabilityTimer">> := list(any())
%% }
-type update_routing_profile_agent_availability_timer_request() :: #{binary() => any()}.

%% Example:
%% resume_contact_response() :: #{}
-type resume_contact_response() :: #{}.


%% Example:
%% list_prompts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_prompts_request() :: #{binary() => any()}.


%% Example:
%% search_email_addresses_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"EmailAddresses">> => list(email_address_metadata()),
%%   <<"NextToken">> => string()
%% }
-type search_email_addresses_response() :: #{binary() => any()}.

%% Example:
%% delete_contact_evaluation_request() :: #{}
-type delete_contact_evaluation_request() :: #{}.


%% Example:
%% list_security_profile_permissions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_profile_permissions_request() :: #{binary() => any()}.


%% Example:
%% update_case_action_definition() :: #{
%%   <<"Fields">> => list(field_value())
%% }
-type update_case_action_definition() :: #{binary() => any()}.

%% Example:
%% untag_contact_response() :: #{}
-type untag_contact_response() :: #{}.


%% Example:
%% security_profile() :: #{
%%   <<"AllowedAccessControlHierarchyGroupId">> => string(),
%%   <<"AllowedAccessControlTags">> => map(),
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"HierarchyRestrictedResources">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OrganizationResourceId">> => string(),
%%   <<"SecurityProfileName">> => string(),
%%   <<"TagRestrictedResources">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type security_profile() :: #{binary() => any()}.


%% Example:
%% quick_connect_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"QuickConnectType">> => list(any())
%% }
-type quick_connect_summary() :: #{binary() => any()}.


%% Example:
%% associate_security_key_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Key">> := string()
%% }
-type associate_security_key_request() :: #{binary() => any()}.


%% Example:
%% current_metric() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Unit">> => list(any())
%% }
-type current_metric() :: #{binary() => any()}.


%% Example:
%% traffic_distribution_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type traffic_distribution_group() :: #{binary() => any()}.


%% Example:
%% user_hierarchy_group_search_criteria() :: #{
%%   <<"AndConditions">> => list(user_hierarchy_group_search_criteria()),
%%   <<"OrConditions">> => list(user_hierarchy_group_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type user_hierarchy_group_search_criteria() :: #{binary() => any()}.


%% Example:
%% hours_of_operation_override() :: #{
%%   <<"Config">> => list(hours_of_operation_override_config()),
%%   <<"Description">> => string(),
%%   <<"EffectiveFrom">> => string(),
%%   <<"EffectiveTill">> => string(),
%%   <<"HoursOfOperationArn">> => string(),
%%   <<"HoursOfOperationId">> => string(),
%%   <<"HoursOfOperationOverrideId">> => string(),
%%   <<"Name">> => string()
%% }
-type hours_of_operation_override() :: #{binary() => any()}.


%% Example:
%% list_analytics_data_lake_data_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(analytics_data_sets_result())
%% }
-type list_analytics_data_lake_data_sets_response() :: #{binary() => any()}.


%% Example:
%% rule_summary() :: #{
%%   <<"ActionSummaries">> => list(action_summary()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EventSourceName">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublishStatus">> => list(any()),
%%   <<"RuleArn">> => string(),
%%   <<"RuleId">> => string()
%% }
-type rule_summary() :: #{binary() => any()}.


%% Example:
%% list_security_profile_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_profile_applications_request() :: #{binary() => any()}.


%% Example:
%% update_routing_profile_name_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_routing_profile_name_request() :: #{binary() => any()}.


%% Example:
%% contact_flow_module_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type contact_flow_module_search_filter() :: #{binary() => any()}.


%% Example:
%% describe_hours_of_operation_override_response() :: #{
%%   <<"HoursOfOperationOverride">> => hours_of_operation_override()
%% }
-type describe_hours_of_operation_override_response() :: #{binary() => any()}.


%% Example:
%% list_routing_profile_queues_response() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"RoutingProfileQueueConfigSummaryList">> => list(routing_profile_queue_config_summary())
%% }
-type list_routing_profile_queues_response() :: #{binary() => any()}.


%% Example:
%% list_contact_flow_modules_request() :: #{
%%   <<"ContactFlowModuleState">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flow_modules_request() :: #{binary() => any()}.


%% Example:
%% associate_bot_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LexBot">> => lex_bot(),
%%   <<"LexV2Bot">> => lex_v2_bot()
%% }
-type associate_bot_request() :: #{binary() => any()}.


%% Example:
%% associate_lex_bot_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"LexBot">> := lex_bot()
%% }
-type associate_lex_bot_request() :: #{binary() => any()}.

%% Example:
%% delete_security_profile_request() :: #{}
-type delete_security_profile_request() :: #{}.


%% Example:
%% describe_user_response() :: #{
%%   <<"User">> => user()
%% }
-type describe_user_response() :: #{binary() => any()}.


%% Example:
%% string_condition() :: #{
%%   <<"ComparisonType">> => list(any()),
%%   <<"FieldName">> => string(),
%%   <<"Value">> => string()
%% }
-type string_condition() :: #{binary() => any()}.


%% Example:
%% list_bots_response() :: #{
%%   <<"LexBots">> => list(lex_bot_config()),
%%   <<"NextToken">> => string()
%% }
-type list_bots_response() :: #{binary() => any()}.


%% Example:
%% routing_criteria_input_step() :: #{
%%   <<"Expiry">> => routing_criteria_input_step_expiry(),
%%   <<"Expression">> => expression()
%% }
-type routing_criteria_input_step() :: #{binary() => any()}.


%% Example:
%% contact_search_summary_agent_info() :: #{
%%   <<"ConnectedToAgentTimestamp">> => non_neg_integer(),
%%   <<"Id">> => string()
%% }
-type contact_search_summary_agent_info() :: #{binary() => any()}.


%% Example:
%% quality_metrics() :: #{
%%   <<"Agent">> => agent_quality_metrics(),
%%   <<"Customer">> => customer_quality_metrics()
%% }
-type quality_metrics() :: #{binary() => any()}.


%% Example:
%% update_user_hierarchy_structure_request() :: #{
%%   <<"HierarchyStructure">> := hierarchy_structure_update()
%% }
-type update_user_hierarchy_structure_request() :: #{binary() => any()}.

%% Example:
%% delete_traffic_distribution_group_request() :: #{}
-type delete_traffic_distribution_group_request() :: #{}.


%% Example:
%% list_contact_flow_versions_response() :: #{
%%   <<"ContactFlowVersionSummaryList">> => list(contact_flow_version_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flow_versions_response() :: #{binary() => any()}.


%% Example:
%% outbound_raw_message() :: #{
%%   <<"Body">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Subject">> => string()
%% }
-type outbound_raw_message() :: #{binary() => any()}.

%% Example:
%% describe_rule_request() :: #{}
-type describe_rule_request() :: #{}.


%% Example:
%% deactivate_evaluation_form_request() :: #{
%%   <<"EvaluationFormVersion">> := integer()
%% }
-type deactivate_evaluation_form_request() :: #{binary() => any()}.


%% Example:
%% update_user_security_profiles_request() :: #{
%%   <<"SecurityProfileIds">> := list(string())
%% }
-type update_user_security_profiles_request() :: #{binary() => any()}.


%% Example:
%% instance_status_reason() :: #{
%%   <<"Message">> => string()
%% }
-type instance_status_reason() :: #{binary() => any()}.


%% Example:
%% create_agent_status_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayOrder">> => integer(),
%%   <<"Name">> := string(),
%%   <<"State">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_agent_status_request() :: #{binary() => any()}.


%% Example:
%% delete_push_notification_registration_request() :: #{
%%   <<"ContactId">> := string()
%% }
-type delete_push_notification_registration_request() :: #{binary() => any()}.


%% Example:
%% resume_contact_request() :: #{
%%   <<"ContactFlowId">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type resume_contact_request() :: #{binary() => any()}.

%% Example:
%% associate_traffic_distribution_group_user_response() :: #{}
-type associate_traffic_distribution_group_user_response() :: #{}.


%% Example:
%% customer_voice_activity() :: #{
%%   <<"GreetingEndTimestamp">> => non_neg_integer(),
%%   <<"GreetingStartTimestamp">> => non_neg_integer()
%% }
-type customer_voice_activity() :: #{binary() => any()}.

%% Example:
%% update_contact_routing_data_response() :: #{}
-type update_contact_routing_data_response() :: #{}.

%% Example:
%% get_flow_association_request() :: #{}
-type get_flow_association_request() :: #{}.

%% Example:
%% delete_integration_association_request() :: #{}
-type delete_integration_association_request() :: #{}.


%% Example:
%% list_security_keys_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecurityKeys">> => list(security_key())
%% }
-type list_security_keys_response() :: #{binary() => any()}.


%% Example:
%% create_view_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Content">> := view_input_content(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_view_request() :: #{binary() => any()}.


%% Example:
%% update_prompt_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type update_prompt_request() :: #{binary() => any()}.


%% Example:
%% user_search_criteria() :: #{
%%   <<"AndConditions">> => list(user_search_criteria()),
%%   <<"HierarchyGroupCondition">> => hierarchy_group_condition(),
%%   <<"ListCondition">> => list_condition(),
%%   <<"OrConditions">> => list(user_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type user_search_criteria() :: #{binary() => any()}.

%% Example:
%% describe_contact_evaluation_request() :: #{}
-type describe_contact_evaluation_request() :: #{}.


%% Example:
%% agent_status_search_filter() :: #{
%%   <<"AttributeFilter">> => control_plane_attribute_filter()
%% }
-type agent_status_search_filter() :: #{binary() => any()}.


%% Example:
%% get_traffic_distribution_response() :: #{
%%   <<"AgentConfig">> => agent_config(),
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"SignInConfig">> => sign_in_config(),
%%   <<"TelephonyConfig">> => telephony_config()
%% }
-type get_traffic_distribution_response() :: #{binary() => any()}.


%% Example:
%% transfer_contact_response() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"ContactId">> => string()
%% }
-type transfer_contact_response() :: #{binary() => any()}.


%% Example:
%% update_view_content_request() :: #{
%%   <<"Content">> := view_input_content(),
%%   <<"Status">> := list(any())
%% }
-type update_view_content_request() :: #{binary() => any()}.


%% Example:
%% update_contact_evaluation_response() :: #{
%%   <<"EvaluationArn">> => string(),
%%   <<"EvaluationId">> => string()
%% }
-type update_contact_evaluation_response() :: #{binary() => any()}.


%% Example:
%% evaluation_form_single_select_question_option() :: #{
%%   <<"AutomaticFail">> => boolean(),
%%   <<"RefId">> => string(),
%%   <<"Score">> => integer(),
%%   <<"Text">> => string()
%% }
-type evaluation_form_single_select_question_option() :: #{binary() => any()}.


%% Example:
%% update_view_content_response() :: #{
%%   <<"View">> => view()
%% }
-type update_view_content_response() :: #{binary() => any()}.


%% Example:
%% start_email_contact_request() :: #{
%%   <<"AdditionalRecipients">> => inbound_additional_recipients(),
%%   <<"Attachments">> => list(email_attachment()),
%%   <<"Attributes">> => map(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DestinationEmailAddress">> := string(),
%%   <<"EmailMessage">> := inbound_email_content(),
%%   <<"FromEmailAddress">> := email_address_info(),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> => string(),
%%   <<"References">> => map(),
%%   <<"RelatedContactId">> => string(),
%%   <<"SegmentAttributes">> => map()
%% }
-type start_email_contact_request() :: #{binary() => any()}.


%% Example:
%% create_instance_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"IdentityManagementType">> := list(any()),
%%   <<"InboundCallsEnabled">> := boolean(),
%%   <<"InstanceAlias">> => string(),
%%   <<"OutboundCallsEnabled">> := boolean(),
%%   <<"Tags">> => map()
%% }
-type create_instance_request() :: #{binary() => any()}.


%% Example:
%% hierarchy_group_summary_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type hierarchy_group_summary_reference() :: #{binary() => any()}.


%% Example:
%% hierarchy_structure() :: #{
%%   <<"LevelFive">> => hierarchy_level(),
%%   <<"LevelFour">> => hierarchy_level(),
%%   <<"LevelOne">> => hierarchy_level(),
%%   <<"LevelThree">> => hierarchy_level(),
%%   <<"LevelTwo">> => hierarchy_level()
%% }
-type hierarchy_structure() :: #{binary() => any()}.

%% Example:
%% stop_contact_streaming_response() :: #{}
-type stop_contact_streaming_response() :: #{}.


%% Example:
%% describe_instance_response() :: #{
%%   <<"Instance">> => instance(),
%%   <<"ReplicationConfiguration">> => replication_configuration()
%% }
-type describe_instance_response() :: #{binary() => any()}.


%% Example:
%% new_session_details() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ParticipantDetails">> => participant_details(),
%%   <<"StreamingConfiguration">> => chat_streaming_configuration(),
%%   <<"SupportedMessagingContentTypes">> => list(string())
%% }
-type new_session_details() :: #{binary() => any()}.


%% Example:
%% hierarchy_groups() :: #{
%%   <<"Level1">> => agent_hierarchy_group(),
%%   <<"Level2">> => agent_hierarchy_group(),
%%   <<"Level3">> => agent_hierarchy_group(),
%%   <<"Level4">> => agent_hierarchy_group(),
%%   <<"Level5">> => agent_hierarchy_group()
%% }
-type hierarchy_groups() :: #{binary() => any()}.


%% Example:
%% update_queue_outbound_caller_config_request() :: #{
%%   <<"OutboundCallerConfig">> := outbound_caller_config()
%% }
-type update_queue_outbound_caller_config_request() :: #{binary() => any()}.


%% Example:
%% get_contact_attributes_response() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_contact_attributes_response() :: #{binary() => any()}.


%% Example:
%% instance() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"IdentityManagementType">> => list(any()),
%%   <<"InboundCallsEnabled">> => boolean(),
%%   <<"InstanceAccessUrl">> => string(),
%%   <<"InstanceAlias">> => string(),
%%   <<"InstanceStatus">> => list(any()),
%%   <<"OutboundCallsEnabled">> => boolean(),
%%   <<"ServiceRole">> => string(),
%%   <<"StatusReason">> => instance_status_reason(),
%%   <<"Tags">> => map()
%% }
-type instance() :: #{binary() => any()}.


%% Example:
%% sign_in_config() :: #{
%%   <<"Distributions">> => list(sign_in_distribution())
%% }
-type sign_in_config() :: #{binary() => any()}.


%% Example:
%% list_routing_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoutingProfileSummaryList">> => list(routing_profile_summary())
%% }
-type list_routing_profiles_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% search_hours_of_operation_overrides_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"HoursOfOperationOverrides">> => list(hours_of_operation_override()),
%%   <<"NextToken">> => string()
%% }
-type search_hours_of_operation_overrides_response() :: #{binary() => any()}.


%% Example:
%% create_contact_flow_module_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_contact_flow_module_response() :: #{binary() => any()}.


%% Example:
%% start_web_r_t_c_contact_response() :: #{
%%   <<"ConnectionData">> => connection_data(),
%%   <<"ContactId">> => string(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantToken">> => string()
%% }
-type start_web_r_t_c_contact_response() :: #{binary() => any()}.


%% Example:
%% current_metric_sort_criteria() :: #{
%%   <<"SortByMetric">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type current_metric_sort_criteria() :: #{binary() => any()}.

%% Example:
%% update_traffic_distribution_response() :: #{}
-type update_traffic_distribution_response() :: #{}.


%% Example:
%% security_key() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Key">> => string()
%% }
-type security_key() :: #{binary() => any()}.


%% Example:
%% list_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuleSummaryList">> => list(rule_summary())
%% }
-type list_rules_response() :: #{binary() => any()}.


%% Example:
%% create_hours_of_operation_override_response() :: #{
%%   <<"HoursOfOperationOverrideId">> => string()
%% }
-type create_hours_of_operation_override_response() :: #{binary() => any()}.


%% Example:
%% search_resource_tags_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceTypes">> => list(string()),
%%   <<"SearchCriteria">> => resource_tags_search_criteria()
%% }
-type search_resource_tags_request() :: #{binary() => any()}.


%% Example:
%% disconnect_reason() :: #{
%%   <<"Code">> => string()
%% }
-type disconnect_reason() :: #{binary() => any()}.


%% Example:
%% replicate_instance_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type replicate_instance_response() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_character_interval() :: #{
%%   <<"BeginOffsetChar">> => integer(),
%%   <<"EndOffsetChar">> => integer()
%% }
-type real_time_contact_analysis_character_interval() :: #{binary() => any()}.


%% Example:
%% field_value() :: #{
%%   <<"Id">> => string(),
%%   <<"Value">> => field_value_union()
%% }
-type field_value() :: #{binary() => any()}.


%% Example:
%% task_template_constraints() :: #{
%%   <<"InvisibleFields">> => list(invisible_field_info()),
%%   <<"ReadOnlyFields">> => list(read_only_field_info()),
%%   <<"RequiredFields">> => list(required_field_info())
%% }
-type task_template_constraints() :: #{binary() => any()}.


%% Example:
%% update_contact_routing_data_request() :: #{
%%   <<"QueuePriority">> => float(),
%%   <<"QueueTimeAdjustmentSeconds">> => integer(),
%%   <<"RoutingCriteria">> => routing_criteria_input()
%% }
-type update_contact_routing_data_request() :: #{binary() => any()}.


%% Example:
%% describe_traffic_distribution_group_response() :: #{
%%   <<"TrafficDistributionGroup">> => traffic_distribution_group()
%% }
-type describe_traffic_distribution_group_response() :: #{binary() => any()}.


%% Example:
%% list_hours_of_operations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hours_of_operations_request() :: #{binary() => any()}.


%% Example:
%% describe_user_hierarchy_group_response() :: #{
%%   <<"HierarchyGroup">> => hierarchy_group()
%% }
-type describe_user_hierarchy_group_response() :: #{binary() => any()}.


%% Example:
%% audio_quality_metrics_info() :: #{
%%   <<"PotentialQualityIssues">> => list(string()),
%%   <<"QualityScore">> => float()
%% }
-type audio_quality_metrics_info() :: #{binary() => any()}.


%% Example:
%% update_queue_name_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_queue_name_request() :: #{binary() => any()}.


%% Example:
%% tag_contact_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_contact_request() :: #{binary() => any()}.


%% Example:
%% start_contact_evaluation_response() :: #{
%%   <<"EvaluationArn">> => string(),
%%   <<"EvaluationId">> => string()
%% }
-type start_contact_evaluation_response() :: #{binary() => any()}.


%% Example:
%% search_routing_profiles_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"RoutingProfiles">> => list(routing_profile())
%% }
-type search_routing_profiles_response() :: #{binary() => any()}.


%% Example:
%% queue_quick_connect_config() :: #{
%%   <<"ContactFlowId">> => string(),
%%   <<"QueueId">> => string()
%% }
-type queue_quick_connect_config() :: #{binary() => any()}.


%% Example:
%% user_proficiency() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string(),
%%   <<"Level">> => float()
%% }
-type user_proficiency() :: #{binary() => any()}.


%% Example:
%% endpoint_info() :: #{
%%   <<"Address">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type endpoint_info() :: #{binary() => any()}.


%% Example:
%% source_campaign() :: #{
%%   <<"CampaignId">> => string(),
%%   <<"OutboundRequestId">> => string()
%% }
-type source_campaign() :: #{binary() => any()}.


%% Example:
%% queue_search_criteria() :: #{
%%   <<"AndConditions">> => list(queue_search_criteria()),
%%   <<"OrConditions">> => list(queue_search_criteria()),
%%   <<"QueueTypeCondition">> => list(any()),
%%   <<"StringCondition">> => string_condition()
%% }
-type queue_search_criteria() :: #{binary() => any()}.


%% Example:
%% submit_contact_evaluation_request() :: #{
%%   <<"Answers">> => map(),
%%   <<"Notes">> => map()
%% }
-type submit_contact_evaluation_request() :: #{binary() => any()}.


%% Example:
%% common_attribute_and_condition() :: #{
%%   <<"TagConditions">> => list(tag_condition())
%% }
-type common_attribute_and_condition() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{}
-type describe_user_request() :: #{}.


%% Example:
%% associate_user_proficiencies_request() :: #{
%%   <<"UserProficiencies">> := list(user_proficiency())
%% }
-type associate_user_proficiencies_request() :: #{binary() => any()}.


%% Example:
%% search_security_profiles_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => security_profile_search_criteria(),
%%   <<"SearchFilter">> => security_profiles_search_filter()
%% }
-type search_security_profiles_request() :: #{binary() => any()}.


%% Example:
%% search_prompts_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => prompt_search_criteria(),
%%   <<"SearchFilter">> => prompt_search_filter()
%% }
-type search_prompts_request() :: #{binary() => any()}.

%% Example:
%% describe_security_profile_request() :: #{}
-type describe_security_profile_request() :: #{}.


%% Example:
%% search_security_profiles_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"SecurityProfiles">> => list(security_profile_search_summary())
%% }
-type search_security_profiles_response() :: #{binary() => any()}.


%% Example:
%% agent_config() :: #{
%%   <<"Distributions">> => list(distribution())
%% }
-type agent_config() :: #{binary() => any()}.


%% Example:
%% evaluation_answer_input() :: #{
%%   <<"Value">> => list()
%% }
-type evaluation_answer_input() :: #{binary() => any()}.


%% Example:
%% event_bridge_action_definition() :: #{
%%   <<"Name">> => string()
%% }
-type event_bridge_action_definition() :: #{binary() => any()}.


%% Example:
%% list_default_vocabularies_request() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_default_vocabularies_request() :: #{binary() => any()}.


%% Example:
%% update_participant_authentication_request() :: #{
%%   <<"Code">> => string(),
%%   <<"Error">> => string(),
%%   <<"ErrorDescription">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"State">> := string()
%% }
-type update_participant_authentication_request() :: #{binary() => any()}.


%% Example:
%% list_contact_references_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReferenceTypes">> := list(list(any())())
%% }
-type list_contact_references_request() :: #{binary() => any()}.


%% Example:
%% meeting_features_configuration() :: #{
%%   <<"Audio">> => audio_features()
%% }
-type meeting_features_configuration() :: #{binary() => any()}.


%% Example:
%% update_contact_attributes_request() :: #{
%%   <<"Attributes">> := map(),
%%   <<"InitialContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type update_contact_attributes_request() :: #{binary() => any()}.


%% Example:
%% update_contact_request() :: #{
%%   <<"CustomerEndpoint">> => endpoint(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"QueueInfo">> => queue_info_input(),
%%   <<"References">> => map(),
%%   <<"SegmentAttributes">> => map(),
%%   <<"SystemEndpoint">> => endpoint(),
%%   <<"UserInfo">> => user_info()
%% }
-type update_contact_request() :: #{binary() => any()}.

%% Example:
%% describe_contact_flow_request() :: #{}
-type describe_contact_flow_request() :: #{}.


%% Example:
%% list_queue_quick_connects_response() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuickConnectSummaryList">> => list(quick_connect_summary())
%% }
-type list_queue_quick_connects_response() :: #{binary() => any()}.


%% Example:
%% list_associated_contacts_response() :: #{
%%   <<"ContactSummaryList">> => list(associated_contact_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_associated_contacts_response() :: #{binary() => any()}.


%% Example:
%% outbound_additional_recipients() :: #{
%%   <<"CcEmailAddresses">> => list(email_address_info())
%% }
-type outbound_additional_recipients() :: #{binary() => any()}.


%% Example:
%% searchable_contact_attributes() :: #{
%%   <<"Criteria">> => list(searchable_contact_attributes_criteria()),
%%   <<"MatchType">> => list(any())
%% }
-type searchable_contact_attributes() :: #{binary() => any()}.


%% Example:
%% list_routing_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routing_profiles_request() :: #{binary() => any()}.


%% Example:
%% batch_put_contact_response() :: #{
%%   <<"FailedRequestList">> => list(failed_request()),
%%   <<"SuccessfulRequestList">> => list(successful_request())
%% }
-type batch_put_contact_response() :: #{binary() => any()}.


%% Example:
%% describe_contact_flow_response() :: #{
%%   <<"ContactFlow">> => contact_flow()
%% }
-type describe_contact_flow_response() :: #{binary() => any()}.

%% Example:
%% update_contact_flow_content_response() :: #{}
-type update_contact_flow_content_response() :: #{}.

%% Example:
%% stop_contact_response() :: #{}
-type stop_contact_response() :: #{}.


%% Example:
%% invalid_contact_flow_module_exception() :: #{
%%   <<"Problems">> => list(problem_detail())
%% }
-type invalid_contact_flow_module_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% contact_flow() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => string(),
%%   <<"Description">> => string(),
%%   <<"FlowContentSha256">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionDescription">> => string()
%% }
-type contact_flow() :: #{binary() => any()}.


%% Example:
%% list_traffic_distribution_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrafficDistributionGroupSummaryList">> => list(traffic_distribution_group_summary())
%% }
-type list_traffic_distribution_groups_response() :: #{binary() => any()}.


%% Example:
%% list_contact_flows_response() :: #{
%%   <<"ContactFlowSummaryList">> => list(contact_flow_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_flows_response() :: #{binary() => any()}.


%% Example:
%% idempotency_exception() :: #{
%%   <<"Message">> => string()
%% }
-type idempotency_exception() :: #{binary() => any()}.


%% Example:
%% search_quick_connects_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => quick_connect_search_criteria(),
%%   <<"SearchFilter">> => quick_connect_search_filter()
%% }
-type search_quick_connects_request() :: #{binary() => any()}.


%% Example:
%% evaluation_form_section() :: #{
%%   <<"Instructions">> => string(),
%%   <<"Items">> => list(list()),
%%   <<"RefId">> => string(),
%%   <<"Title">> => string(),
%%   <<"Weight">> => float()
%% }
-type evaluation_form_section() :: #{binary() => any()}.


%% Example:
%% search_contacts_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => search_criteria(),
%%   <<"Sort">> => sort(),
%%   <<"TimeRange">> := search_contacts_time_range()
%% }
-type search_contacts_request() :: #{binary() => any()}.

%% Example:
%% delete_quick_connect_request() :: #{}
-type delete_quick_connect_request() :: #{}.


%% Example:
%% contact_metric_info() :: #{
%%   <<"Name">> => list(any())
%% }
-type contact_metric_info() :: #{binary() => any()}.


%% Example:
%% start_outbound_chat_contact_response() :: #{
%%   <<"ContactId">> => string()
%% }
-type start_outbound_chat_contact_response() :: #{binary() => any()}.


%% Example:
%% list_integration_associations_response() :: #{
%%   <<"IntegrationAssociationSummaryList">> => list(integration_association_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_integration_associations_response() :: #{binary() => any()}.


%% Example:
%% field_value_union() :: #{
%%   <<"BooleanValue">> => boolean(),
%%   <<"DoubleValue">> => float(),
%%   <<"EmptyValue">> => empty_field_value(),
%%   <<"StringValue">> => string()
%% }
-type field_value_union() :: #{binary() => any()}.


%% Example:
%% phone_number_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberCountryCode">> => list(any()),
%%   <<"PhoneNumberType">> => list(any())
%% }
-type phone_number_summary() :: #{binary() => any()}.


%% Example:
%% hierarchy_level_update() :: #{
%%   <<"Name">> => string()
%% }
-type hierarchy_level_update() :: #{binary() => any()}.


%% Example:
%% resume_contact_recording_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"ContactRecordingType">> => list(any()),
%%   <<"InitialContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type resume_contact_recording_request() :: #{binary() => any()}.


%% Example:
%% disassociate_security_key_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type disassociate_security_key_request() :: #{binary() => any()}.


%% Example:
%% instance_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"IdentityManagementType">> => list(any()),
%%   <<"InboundCallsEnabled">> => boolean(),
%%   <<"InstanceAccessUrl">> => string(),
%%   <<"InstanceAlias">> => string(),
%%   <<"InstanceStatus">> => list(any()),
%%   <<"OutboundCallsEnabled">> => boolean(),
%%   <<"ServiceRole">> => string()
%% }
-type instance_summary() :: #{binary() => any()}.


%% Example:
%% describe_instance_storage_config_request() :: #{
%%   <<"ResourceType">> := list(any())
%% }
-type describe_instance_storage_config_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_participant_role_config_request() :: #{
%%   <<"ChannelConfiguration">> := list()
%% }
-type update_participant_role_config_request() :: #{binary() => any()}.


%% Example:
%% search_predefined_attributes_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => predefined_attribute_search_criteria()
%% }
-type search_predefined_attributes_request() :: #{binary() => any()}.


%% Example:
%% delete_instance_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_instance_request() :: #{binary() => any()}.


%% Example:
%% current_metric_data() :: #{
%%   <<"Metric">> => current_metric(),
%%   <<"Value">> => float()
%% }
-type current_metric_data() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"Arn">> => string(),
%%   <<"DirectoryUserId">> => string(),
%%   <<"HierarchyGroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"IdentityInfo">> => user_identity_info(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PhoneConfig">> => user_phone_config(),
%%   <<"RoutingProfileId">> => string(),
%%   <<"SecurityProfileIds">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"Username">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% update_contact_flow_name_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_contact_flow_name_request() :: #{binary() => any()}.

%% Example:
%% delete_vocabulary_request() :: #{}
-type delete_vocabulary_request() :: #{}.


%% Example:
%% expression() :: #{
%%   <<"AndExpression">> => list(expression()),
%%   <<"AttributeCondition">> => attribute_condition(),
%%   <<"NotAttributeCondition">> => attribute_condition(),
%%   <<"OrExpression">> => list(expression())
%% }
-type expression() :: #{binary() => any()}.


%% Example:
%% contact_search_summary() :: #{
%%   <<"AgentInfo">> => contact_search_summary_agent_info(),
%%   <<"Arn">> => string(),
%%   <<"Channel">> => list(any()),
%%   <<"DisconnectTimestamp">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InitialContactId">> => string(),
%%   <<"InitiationMethod">> => list(any()),
%%   <<"InitiationTimestamp">> => non_neg_integer(),
%%   <<"PreviousContactId">> => string(),
%%   <<"QueueInfo">> => contact_search_summary_queue_info(),
%%   <<"ScheduledTimestamp">> => non_neg_integer(),
%%   <<"SegmentAttributes">> => map()
%% }
-type contact_search_summary() :: #{binary() => any()}.


%% Example:
%% create_hours_of_operation_override_request() :: #{
%%   <<"Config">> := list(hours_of_operation_override_config()),
%%   <<"Description">> => string(),
%%   <<"EffectiveFrom">> := string(),
%%   <<"EffectiveTill">> := string(),
%%   <<"Name">> := string()
%% }
-type create_hours_of_operation_override_request() :: #{binary() => any()}.


%% Example:
%% create_email_address_response() :: #{
%%   <<"EmailAddressArn">> => string(),
%%   <<"EmailAddressId">> => string()
%% }
-type create_email_address_response() :: #{binary() => any()}.


%% Example:
%% describe_contact_flow_module_response() :: #{
%%   <<"ContactFlowModule">> => contact_flow_module()
%% }
-type describe_contact_flow_module_response() :: #{binary() => any()}.


%% Example:
%% create_contact_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Channel">> := list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ExpiryDurationInMinutes">> => integer(),
%%   <<"InitiateAs">> => list(any()),
%%   <<"InitiationMethod">> := list(any()),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> => string(),
%%   <<"PreviousContactId">> => string(),
%%   <<"References">> => map(),
%%   <<"RelatedContactId">> => string(),
%%   <<"SegmentAttributes">> => map(),
%%   <<"UserInfo">> => user_info()
%% }
-type create_contact_request() :: #{binary() => any()}.

%% Example:
%% disassociate_flow_response() :: #{}
-type disassociate_flow_response() :: #{}.


%% Example:
%% predefined_attribute_search_criteria() :: #{
%%   <<"AndConditions">> => list(predefined_attribute_search_criteria()),
%%   <<"OrConditions">> => list(predefined_attribute_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type predefined_attribute_search_criteria() :: #{binary() => any()}.


%% Example:
%% describe_quick_connect_response() :: #{
%%   <<"QuickConnect">> => quick_connect()
%% }
-type describe_quick_connect_response() :: #{binary() => any()}.


%% Example:
%% predefined_attribute_summary() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type predefined_attribute_summary() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_transcript_item_redaction() :: #{
%%   <<"CharacterOffsets">> => list(real_time_contact_analysis_character_interval())
%% }
-type real_time_contact_analysis_transcript_item_redaction() :: #{binary() => any()}.


%% Example:
%% create_user_hierarchy_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"ParentGroupId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_user_hierarchy_group_request() :: #{binary() => any()}.


%% Example:
%% create_hours_of_operation_response() :: #{
%%   <<"HoursOfOperationArn">> => string(),
%%   <<"HoursOfOperationId">> => string()
%% }
-type create_hours_of_operation_response() :: #{binary() => any()}.


%% Example:
%% hours_of_operation_search_criteria() :: #{
%%   <<"AndConditions">> => list(hours_of_operation_search_criteria()),
%%   <<"OrConditions">> => list(hours_of_operation_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type hours_of_operation_search_criteria() :: #{binary() => any()}.


%% Example:
%% create_routing_profile_response() :: #{
%%   <<"RoutingProfileArn">> => string(),
%%   <<"RoutingProfileId">> => string()
%% }
-type create_routing_profile_response() :: #{binary() => any()}.

%% Example:
%% assign_contact_category_action_definition() :: #{}
-type assign_contact_category_action_definition() :: #{}.


%% Example:
%% search_contact_flows_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => contact_flow_search_criteria(),
%%   <<"SearchFilter">> => contact_flow_search_filter()
%% }
-type search_contact_flows_request() :: #{binary() => any()}.

%% Example:
%% get_prompt_file_request() :: #{}
-type get_prompt_file_request() :: #{}.


%% Example:
%% analytics_data_association_result() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"ResourceShareArn">> => string(),
%%   <<"ResourceShareId">> => string(),
%%   <<"ResourceShareStatus">> => string(),
%%   <<"TargetAccountId">> => string()
%% }
-type analytics_data_association_result() :: #{binary() => any()}.


%% Example:
%% start_attached_file_upload_response() :: #{
%%   <<"CreatedBy">> => list(),
%%   <<"CreationTime">> => string(),
%%   <<"FileArn">> => string(),
%%   <<"FileId">> => string(),
%%   <<"FileStatus">> => list(any()),
%%   <<"UploadUrlMetadata">> => upload_url_metadata()
%% }
-type start_attached_file_upload_response() :: #{binary() => any()}.

%% Example:
%% delete_view_response() :: #{}
-type delete_view_response() :: #{}.


%% Example:
%% list_phone_numbers_v2_response() :: #{
%%   <<"ListPhoneNumbersSummaryList">> => list(list_phone_numbers_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_phone_numbers_v2_response() :: #{binary() => any()}.


%% Example:
%% list_user_proficiencies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_user_proficiencies_request() :: #{binary() => any()}.


%% Example:
%% update_task_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Constraints">> => task_template_constraints(),
%%   <<"ContactFlowId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Defaults">> => task_template_defaults(),
%%   <<"Description">> => string(),
%%   <<"Fields">> => list(task_template_field()),
%%   <<"Id">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SelfAssignFlowId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_task_template_response() :: #{binary() => any()}.


%% Example:
%% metric_v2() :: #{
%%   <<"MetricFilters">> => list(metric_filter_v2()),
%%   <<"Name">> => string(),
%%   <<"Threshold">> => list(threshold_v2())
%% }
-type metric_v2() :: #{binary() => any()}.


%% Example:
%% threshold() :: #{
%%   <<"Comparison">> => list(any()),
%%   <<"ThresholdValue">> => float()
%% }
-type threshold() :: #{binary() => any()}.


%% Example:
%% create_contact_flow_version_request() :: #{
%%   <<"ContactFlowVersion">> => float(),
%%   <<"Description">> => string(),
%%   <<"FlowContentSha256">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type create_contact_flow_version_request() :: #{binary() => any()}.


%% Example:
%% start_outbound_voice_contact_request() :: #{
%%   <<"AnswerMachineDetectionConfig">> => answer_machine_detection_config(),
%%   <<"Attributes">> => map(),
%%   <<"CampaignId">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> := string(),
%%   <<"Description">> => string(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> => string(),
%%   <<"QueueId">> => string(),
%%   <<"References">> => map(),
%%   <<"RelatedContactId">> => string(),
%%   <<"SourcePhoneNumber">> => string(),
%%   <<"TrafficType">> => list(any())
%% }
-type start_outbound_voice_contact_request() :: #{binary() => any()}.


%% Example:
%% attribute() :: #{
%%   <<"AttributeType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type attribute() :: #{binary() => any()}.


%% Example:
%% create_use_case_request() :: #{
%%   <<"Tags">> => map(),
%%   <<"UseCaseType">> := list(any())
%% }
-type create_use_case_request() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.


%% Example:
%% default_vocabulary() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"VocabularyId">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type default_vocabulary() :: #{binary() => any()}.


%% Example:
%% start_task_contact_response() :: #{
%%   <<"ContactId">> => string()
%% }
-type start_task_contact_response() :: #{binary() => any()}.


%% Example:
%% chat_event() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Type">> => list(any())
%% }
-type chat_event() :: #{binary() => any()}.


%% Example:
%% filters() :: #{
%%   <<"Channels">> => list(list(any())()),
%%   <<"Queues">> => list(string()),
%%   <<"RoutingProfiles">> => list(string()),
%%   <<"RoutingStepExpressions">> => list(string())
%% }
-type filters() :: #{binary() => any()}.


%% Example:
%% list_agent_status_response() :: #{
%%   <<"AgentStatusSummaryList">> => list(agent_status_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_agent_status_response() :: #{binary() => any()}.


%% Example:
%% update_user_routing_profile_request() :: #{
%%   <<"RoutingProfileId">> := string()
%% }
-type update_user_routing_profile_request() :: #{binary() => any()}.


%% Example:
%% task_template_field_identifier() :: #{
%%   <<"Name">> => string()
%% }
-type task_template_field_identifier() :: #{binary() => any()}.


%% Example:
%% list_queue_quick_connects_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_queue_quick_connects_request() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_queues_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueueSummaryList">> => list(queue_summary())
%% }
-type list_queues_response() :: #{binary() => any()}.


%% Example:
%% list_evaluation_forms_response() :: #{
%%   <<"EvaluationFormSummaryList">> => list(evaluation_form_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_evaluation_forms_response() :: #{binary() => any()}.


%% Example:
%% evaluation_form_single_select_question_properties() :: #{
%%   <<"Automation">> => evaluation_form_single_select_question_automation(),
%%   <<"DisplayAs">> => list(any()),
%%   <<"Options">> => list(evaluation_form_single_select_question_option())
%% }
-type evaluation_form_single_select_question_properties() :: #{binary() => any()}.

%% Example:
%% get_traffic_distribution_request() :: #{}
-type get_traffic_distribution_request() :: #{}.


%% Example:
%% complete_attached_file_upload_request() :: #{
%%   <<"AssociatedResourceArn">> := string()
%% }
-type complete_attached_file_upload_request() :: #{binary() => any()}.


%% Example:
%% attendee() :: #{
%%   <<"AttendeeId">> => string(),
%%   <<"JoinToken">> => string()
%% }
-type attendee() :: #{binary() => any()}.


%% Example:
%% describe_authentication_profile_response() :: #{
%%   <<"AuthenticationProfile">> => authentication_profile()
%% }
-type describe_authentication_profile_response() :: #{binary() => any()}.


%% Example:
%% disconnect_details() :: #{
%%   <<"PotentialDisconnectIssue">> => string()
%% }
-type disconnect_details() :: #{binary() => any()}.


%% Example:
%% send_outbound_email_request() :: #{
%%   <<"AdditionalRecipients">> => outbound_additional_recipients(),
%%   <<"ClientToken">> => string(),
%%   <<"DestinationEmailAddress">> := email_address_info(),
%%   <<"EmailMessage">> := outbound_email_content(),
%%   <<"FromEmailAddress">> := email_address_info(),
%%   <<"SourceCampaign">> => source_campaign(),
%%   <<"TrafficType">> := list(any())
%% }
-type send_outbound_email_request() :: #{binary() => any()}.


%% Example:
%% agent_status_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type agent_status_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_traffic_distribution_group_user_response() :: #{}
-type disassociate_traffic_distribution_group_user_response() :: #{}.


%% Example:
%% search_vocabularies_request() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NameStartsWith">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"State">> => list(any())
%% }
-type search_vocabularies_request() :: #{binary() => any()}.


%% Example:
%% prompt_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type prompt_search_filter() :: #{binary() => any()}.


%% Example:
%% list_hours_of_operation_overrides_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hours_of_operation_overrides_request() :: #{binary() => any()}.


%% Example:
%% update_queue_status_request() :: #{
%%   <<"Status">> := list(any())
%% }
-type update_queue_status_request() :: #{binary() => any()}.


%% Example:
%% chat_metrics() :: #{
%%   <<"AgentMetrics">> => participant_metrics(),
%%   <<"ChatContactMetrics">> => chat_contact_metrics(),
%%   <<"CustomerMetrics">> => participant_metrics()
%% }
-type chat_metrics() :: #{binary() => any()}.


%% Example:
%% describe_vocabulary_response() :: #{
%%   <<"Vocabulary">> => vocabulary()
%% }
-type describe_vocabulary_response() :: #{binary() => any()}.


%% Example:
%% associate_flow_request() :: #{
%%   <<"FlowId">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any())
%% }
-type associate_flow_request() :: #{binary() => any()}.


%% Example:
%% operational_hour() :: #{
%%   <<"End">> => override_time_slice(),
%%   <<"Start">> => override_time_slice()
%% }
-type operational_hour() :: #{binary() => any()}.


%% Example:
%% contact_details() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type contact_details() :: #{binary() => any()}.


%% Example:
%% metric_data_v2() :: #{
%%   <<"Metric">> => metric_v2(),
%%   <<"Value">> => float()
%% }
-type metric_data_v2() :: #{binary() => any()}.


%% Example:
%% email_address_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter()
%% }
-type email_address_search_filter() :: #{binary() => any()}.

%% Example:
%% describe_prompt_request() :: #{}
-type describe_prompt_request() :: #{}.


%% Example:
%% list_phone_numbers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberSummaryList">> => list(phone_number_summary())
%% }
-type list_phone_numbers_response() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_attachment() :: #{
%%   <<"AttachmentId">> => string(),
%%   <<"AttachmentName">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Status">> => list(any())
%% }
-type real_time_contact_analysis_attachment() :: #{binary() => any()}.


%% Example:
%% contact_search_summary_queue_info() :: #{
%%   <<"EnqueueTimestamp">> => non_neg_integer(),
%%   <<"Id">> => string()
%% }
-type contact_search_summary_queue_info() :: #{binary() => any()}.


%% Example:
%% create_email_address_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmailAddress">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_email_address_request() :: #{binary() => any()}.

%% Example:
%% delete_queue_request() :: #{}
-type delete_queue_request() :: #{}.


%% Example:
%% evaluation() :: #{
%%   <<"Answers">> => map(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EvaluationArn">> => string(),
%%   <<"EvaluationId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Metadata">> => evaluation_metadata(),
%%   <<"Notes">> => map(),
%%   <<"Scores">> => map(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type evaluation() :: #{binary() => any()}.


%% Example:
%% delete_vocabulary_response() :: #{
%%   <<"State">> => list(any()),
%%   <<"VocabularyArn">> => string(),
%%   <<"VocabularyId">> => string()
%% }
-type delete_vocabulary_response() :: #{binary() => any()}.


%% Example:
%% update_phone_number_metadata_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"PhoneNumberDescription">> => string()
%% }
-type update_phone_number_metadata_request() :: #{binary() => any()}.


%% Example:
%% sign_in_distribution() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Region">> => string()
%% }
-type sign_in_distribution() :: #{binary() => any()}.

%% Example:
%% start_screen_sharing_response() :: #{}
-type start_screen_sharing_response() :: #{}.


%% Example:
%% media_concurrency() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"Concurrency">> => integer(),
%%   <<"CrossChannelBehavior">> => cross_channel_behavior()
%% }
-type media_concurrency() :: #{binary() => any()}.


%% Example:
%% control_plane_tag_filter() :: #{
%%   <<"AndConditions">> => list(tag_condition()),
%%   <<"OrConditions">> => list(list(tag_condition())()),
%%   <<"TagCondition">> => tag_condition()
%% }
-type control_plane_tag_filter() :: #{binary() => any()}.


%% Example:
%% evaluation_metadata() :: #{
%%   <<"ContactAgentId">> => string(),
%%   <<"ContactId">> => string(),
%%   <<"EvaluatorArn">> => string(),
%%   <<"Score">> => evaluation_score()
%% }
-type evaluation_metadata() :: #{binary() => any()}.


%% Example:
%% templated_message_config() :: #{
%%   <<"KnowledgeBaseId">> => string(),
%%   <<"MessageTemplateId">> => string(),
%%   <<"TemplateAttributes">> => template_attributes()
%% }
-type templated_message_config() :: #{binary() => any()}.


%% Example:
%% evaluation_form_scoring_strategy() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type evaluation_form_scoring_strategy() :: #{binary() => any()}.


%% Example:
%% search_agent_statuses_response() :: #{
%%   <<"AgentStatuses">> => list(agent_status()),
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string()
%% }
-type search_agent_statuses_response() :: #{binary() => any()}.


%% Example:
%% quick_connect() :: #{
%%   <<"Description">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"QuickConnectARN">> => string(),
%%   <<"QuickConnectConfig">> => quick_connect_config(),
%%   <<"QuickConnectId">> => string(),
%%   <<"Tags">> => map()
%% }
-type quick_connect() :: #{binary() => any()}.


%% Example:
%% search_contact_flows_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"ContactFlows">> => list(contact_flow()),
%%   <<"NextToken">> => string()
%% }
-type search_contact_flows_response() :: #{binary() => any()}.


%% Example:
%% associated_contact_summary() :: #{
%%   <<"Channel">> => list(any()),
%%   <<"ContactArn">> => string(),
%%   <<"ContactId">> => string(),
%%   <<"DisconnectTimestamp">> => non_neg_integer(),
%%   <<"InitialContactId">> => string(),
%%   <<"InitiationMethod">> => list(any()),
%%   <<"InitiationTimestamp">> => non_neg_integer(),
%%   <<"PreviousContactId">> => string(),
%%   <<"RelatedContactId">> => string()
%% }
-type associated_contact_summary() :: #{binary() => any()}.

%% Example:
%% pause_contact_response() :: #{}
-type pause_contact_response() :: #{}.


%% Example:
%% associate_security_key_response() :: #{
%%   <<"AssociationId">> => string()
%% }
-type associate_security_key_response() :: #{binary() => any()}.


%% Example:
%% hours_of_operation_config() :: #{
%%   <<"Day">> => list(any()),
%%   <<"EndTime">> => hours_of_operation_time_slice(),
%%   <<"StartTime">> => hours_of_operation_time_slice()
%% }
-type hours_of_operation_config() :: #{binary() => any()}.


%% Example:
%% start_attached_file_upload_request() :: #{
%%   <<"AssociatedResourceArn">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"CreatedBy">> => list(),
%%   <<"FileName">> := string(),
%%   <<"FileSizeInBytes">> := float(),
%%   <<"FileUseCaseType">> := list(any()),
%%   <<"Tags">> => map(),
%%   <<"UrlExpiryInSeconds">> => integer()
%% }
-type start_attached_file_upload_request() :: #{binary() => any()}.


%% Example:
%% activate_evaluation_form_response() :: #{
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer()
%% }
-type activate_evaluation_form_response() :: #{binary() => any()}.


%% Example:
%% list_approved_origins_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_approved_origins_request() :: #{binary() => any()}.


%% Example:
%% case_sla_configuration() :: #{
%%   <<"FieldId">> => string(),
%%   <<"Name">> => string(),
%%   <<"TargetFieldValues">> => list(field_value_union()),
%%   <<"TargetSlaMinutes">> => float(),
%%   <<"Type">> => list(any())
%% }
-type case_sla_configuration() :: #{binary() => any()}.


%% Example:
%% historical_metric() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Statistic">> => list(any()),
%%   <<"Threshold">> => threshold(),
%%   <<"Unit">> => list(any())
%% }
-type historical_metric() :: #{binary() => any()}.


%% Example:
%% failed_request() :: #{
%%   <<"FailureReasonCode">> => list(any()),
%%   <<"FailureReasonMessage">> => string(),
%%   <<"RequestIdentifier">> => string()
%% }
-type failed_request() :: #{binary() => any()}.


%% Example:
%% batch_associate_analytics_data_set_request() :: #{
%%   <<"DataSetIds">> := list(string()),
%%   <<"TargetAccountId">> => string()
%% }
-type batch_associate_analytics_data_set_request() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"Expiry">> => expiry(),
%%   <<"Expression">> => expression(),
%%   <<"Status">> => list(any())
%% }
-type step() :: #{binary() => any()}.


%% Example:
%% associate_queue_quick_connects_request() :: #{
%%   <<"QuickConnectIds">> := list(string())
%% }
-type associate_queue_quick_connects_request() :: #{binary() => any()}.


%% Example:
%% tag_search_condition() :: #{
%%   <<"tagKey">> => string(),
%%   <<"tagKeyComparisonType">> => list(any()),
%%   <<"tagValue">> => string(),
%%   <<"tagValueComparisonType">> => list(any())
%% }
-type tag_search_condition() :: #{binary() => any()}.


%% Example:
%% task_template_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type task_template_metadata() :: #{binary() => any()}.


%% Example:
%% attachment_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Value">> => string()
%% }
-type attachment_reference() :: #{binary() => any()}.


%% Example:
%% url_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type url_reference() :: #{binary() => any()}.


%% Example:
%% string_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type string_reference() :: #{binary() => any()}.


%% Example:
%% list_predefined_attributes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PredefinedAttributeSummaryList">> => list(predefined_attribute_summary())
%% }
-type list_predefined_attributes_response() :: #{binary() => any()}.


%% Example:
%% routing_profile() :: #{
%%   <<"AgentAvailabilityTimer">> => list(any()),
%%   <<"AssociatedQueueIds">> => list(string()),
%%   <<"DefaultOutboundQueueId">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MediaConcurrencies">> => list(media_concurrency()),
%%   <<"Name">> => string(),
%%   <<"NumberOfAssociatedQueues">> => float(),
%%   <<"NumberOfAssociatedUsers">> => float(),
%%   <<"RoutingProfileArn">> => string(),
%%   <<"RoutingProfileId">> => string(),
%%   <<"Tags">> => map()
%% }
-type routing_profile() :: #{binary() => any()}.


%% Example:
%% describe_routing_profile_response() :: #{
%%   <<"RoutingProfile">> => routing_profile()
%% }
-type describe_routing_profile_response() :: #{binary() => any()}.


%% Example:
%% rule_trigger_event_source() :: #{
%%   <<"EventSourceName">> => list(any()),
%%   <<"IntegrationAssociationId">> => string()
%% }
-type rule_trigger_event_source() :: #{binary() => any()}.


%% Example:
%% create_routing_profile_request() :: #{
%%   <<"AgentAvailabilityTimer">> => list(any()),
%%   <<"DefaultOutboundQueueId">> := string(),
%%   <<"Description">> := string(),
%%   <<"MediaConcurrencies">> := list(media_concurrency()),
%%   <<"Name">> := string(),
%%   <<"QueueConfigs">> => list(routing_profile_queue_config()),
%%   <<"Tags">> => map()
%% }
-type create_routing_profile_request() :: #{binary() => any()}.


%% Example:
%% start_chat_contact_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ChatDurationInMinutes">> => integer(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> := string(),
%%   <<"CustomerId">> => string(),
%%   <<"InitialMessage">> => chat_message(),
%%   <<"InstanceId">> := string(),
%%   <<"ParticipantDetails">> := participant_details(),
%%   <<"PersistentChat">> => persistent_chat(),
%%   <<"RelatedContactId">> => string(),
%%   <<"SegmentAttributes">> => map(),
%%   <<"SupportedMessagingContentTypes">> => list(string())
%% }
-type start_chat_contact_request() :: #{binary() => any()}.


%% Example:
%% start_chat_contact_response() :: #{
%%   <<"ContactId">> => string(),
%%   <<"ContinuedFromContactId">> => string(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantToken">> => string()
%% }
-type start_chat_contact_response() :: #{binary() => any()}.


%% Example:
%% update_phone_number_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"TargetArn">> => string()
%% }
-type update_phone_number_request() :: #{binary() => any()}.


%% Example:
%% update_contact_schedule_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"ScheduledTime">> := non_neg_integer()
%% }
-type update_contact_schedule_request() :: #{binary() => any()}.

%% Example:
%% put_user_status_response() :: #{}
-type put_user_status_response() :: #{}.


%% Example:
%% hours_of_operation_time_slice() :: #{
%%   <<"Hours">> => integer(),
%%   <<"Minutes">> => integer()
%% }
-type hours_of_operation_time_slice() :: #{binary() => any()}.


%% Example:
%% prompt_search_criteria() :: #{
%%   <<"AndConditions">> => list(prompt_search_criteria()),
%%   <<"OrConditions">> => list(prompt_search_criteria()),
%%   <<"StringCondition">> => string_condition()
%% }
-type prompt_search_criteria() :: #{binary() => any()}.


%% Example:
%% search_criteria() :: #{
%%   <<"AgentHierarchyGroups">> => agent_hierarchy_groups(),
%%   <<"AgentIds">> => list(string()),
%%   <<"Channels">> => list(list(any())()),
%%   <<"ContactAnalysis">> => contact_analysis(),
%%   <<"InitiationMethods">> => list(list(any())()),
%%   <<"QueueIds">> => list(string()),
%%   <<"SearchableContactAttributes">> => searchable_contact_attributes(),
%%   <<"SearchableSegmentAttributes">> => searchable_segment_attributes()
%% }
-type search_criteria() :: #{binary() => any()}.

%% Example:
%% update_contact_flow_module_metadata_response() :: #{}
-type update_contact_flow_module_metadata_response() :: #{}.


%% Example:
%% list_security_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_profiles_request() :: #{binary() => any()}.

%% Example:
%% describe_hours_of_operation_request() :: #{}
-type describe_hours_of_operation_request() :: #{}.

%% Example:
%% describe_routing_profile_request() :: #{}
-type describe_routing_profile_request() :: #{}.


%% Example:
%% kinesis_video_stream_config() :: #{
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"Prefix">> => string(),
%%   <<"RetentionPeriodHours">> => integer()
%% }
-type kinesis_video_stream_config() :: #{binary() => any()}.


%% Example:
%% start_contact_evaluation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContactId">> := string(),
%%   <<"EvaluationFormId">> := string()
%% }
-type start_contact_evaluation_request() :: #{binary() => any()}.


%% Example:
%% claimed_phone_number_summary() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => string(),
%%   <<"PhoneNumberCountryCode">> => list(any()),
%%   <<"PhoneNumberDescription">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"PhoneNumberStatus">> => phone_number_status(),
%%   <<"PhoneNumberType">> => list(any()),
%%   <<"SourcePhoneNumberArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TargetArn">> => string()
%% }
-type claimed_phone_number_summary() :: #{binary() => any()}.


%% Example:
%% list_quick_connects_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QuickConnectSummaryList">> => list(quick_connect_summary())
%% }
-type list_quick_connects_response() :: #{binary() => any()}.


%% Example:
%% create_task_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_task_template_response() :: #{binary() => any()}.


%% Example:
%% search_user_hierarchy_groups_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchCriteria">> => user_hierarchy_group_search_criteria(),
%%   <<"SearchFilter">> => user_hierarchy_group_search_filter()
%% }
-type search_user_hierarchy_groups_request() :: #{binary() => any()}.


%% Example:
%% evaluation_summary() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EvaluationArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormTitle">> => string(),
%%   <<"EvaluationId">> => string(),
%%   <<"EvaluatorArn">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Score">> => evaluation_score(),
%%   <<"Status">> => list(any())
%% }
-type evaluation_summary() :: #{binary() => any()}.

%% Example:
%% end_associated_tasks_action_definition() :: #{}
-type end_associated_tasks_action_definition() :: #{}.


%% Example:
%% historical_metric_data() :: #{
%%   <<"Metric">> => historical_metric(),
%%   <<"Value">> => float()
%% }
-type historical_metric_data() :: #{binary() => any()}.

%% Example:
%% associate_flow_response() :: #{}
-type associate_flow_response() :: #{}.


%% Example:
%% list_instance_storage_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StorageConfigs">> => list(instance_storage_config())
%% }
-type list_instance_storage_configs_response() :: #{binary() => any()}.


%% Example:
%% resource_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% evaluation_form_single_select_question_automation() :: #{
%%   <<"DefaultOptionRefId">> => string(),
%%   <<"Options">> => list(list())
%% }
-type evaluation_form_single_select_question_automation() :: #{binary() => any()}.


%% Example:
%% search_queues_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"NextToken">> => string(),
%%   <<"Queues">> => list(queue())
%% }
-type search_queues_response() :: #{binary() => any()}.


%% Example:
%% routing_profile_reference() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type routing_profile_reference() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_issue_detected() :: #{
%%   <<"TranscriptItems">> => list(real_time_contact_analysis_transcript_item_with_content())
%% }
-type real_time_contact_analysis_issue_detected() :: #{binary() => any()}.


%% Example:
%% update_authentication_profile_request() :: #{
%%   <<"AllowedIps">> => list(string()),
%%   <<"BlockedIps">> => list(string()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PeriodicSessionDuration">> => integer()
%% }
-type update_authentication_profile_request() :: #{binary() => any()}.

%% Example:
%% describe_quick_connect_request() :: #{}
-type describe_quick_connect_request() :: #{}.

%% Example:
%% delete_predefined_attribute_request() :: #{}
-type delete_predefined_attribute_request() :: #{}.


%% Example:
%% create_user_response() :: #{
%%   <<"UserArn">> => string(),
%%   <<"UserId">> => string()
%% }
-type create_user_response() :: #{binary() => any()}.


%% Example:
%% inbound_additional_recipients() :: #{
%%   <<"CcAddresses">> => list(email_address_info()),
%%   <<"ToAddresses">> => list(email_address_info())
%% }
-type inbound_additional_recipients() :: #{binary() => any()}.


%% Example:
%% list_instance_storage_configs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> := list(any())
%% }
-type list_instance_storage_configs_request() :: #{binary() => any()}.


%% Example:
%% list_views_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ViewsSummaryList">> => list(view_summary())
%% }
-type list_views_response() :: #{binary() => any()}.


%% Example:
%% duplicate_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_resource_exception() :: #{binary() => any()}.

%% Example:
%% delete_hours_of_operation_request() :: #{}
-type delete_hours_of_operation_request() :: #{}.


%% Example:
%% maximum_result_returned_exception() :: #{
%%   <<"Message">> => string()
%% }
-type maximum_result_returned_exception() :: #{binary() => any()}.


%% Example:
%% create_persistent_contact_association_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"RehydrationType">> := list(any()),
%%   <<"SourceContactId">> := string()
%% }
-type create_persistent_contact_association_request() :: #{binary() => any()}.


%% Example:
%% list_analytics_data_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(analytics_data_association_result())
%% }
-type list_analytics_data_associations_response() :: #{binary() => any()}.

%% Example:
%% delete_traffic_distribution_group_response() :: #{}
-type delete_traffic_distribution_group_response() :: #{}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_user_hierarchy_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserHierarchyGroupSummaryList">> => list(hierarchy_group_summary())
%% }
-type list_user_hierarchy_groups_response() :: #{binary() => any()}.


%% Example:
%% start_web_r_t_c_contact_request() :: #{
%%   <<"AllowedCapabilities">> => allowed_capabilities(),
%%   <<"Attributes">> => map(),
%%   <<"ClientToken">> => string(),
%%   <<"ContactFlowId">> := string(),
%%   <<"Description">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"ParticipantDetails">> := participant_details(),
%%   <<"References">> => map(),
%%   <<"RelatedContactId">> => string()
%% }
-type start_web_r_t_c_contact_request() :: #{binary() => any()}.


%% Example:
%% hierarchy_structure_update() :: #{
%%   <<"LevelFive">> => hierarchy_level_update(),
%%   <<"LevelFour">> => hierarchy_level_update(),
%%   <<"LevelOne">> => hierarchy_level_update(),
%%   <<"LevelThree">> => hierarchy_level_update(),
%%   <<"LevelTwo">> => hierarchy_level_update()
%% }
-type hierarchy_structure_update() :: #{binary() => any()}.


%% Example:
%% list_default_vocabularies_response() :: #{
%%   <<"DefaultVocabularyList">> => list(default_vocabulary()),
%%   <<"NextToken">> => string()
%% }
-type list_default_vocabularies_response() :: #{binary() => any()}.


%% Example:
%% user_search_filter() :: #{
%%   <<"TagFilter">> => control_plane_tag_filter(),
%%   <<"UserAttributeFilter">> => control_plane_user_attribute_filter()
%% }
-type user_search_filter() :: #{binary() => any()}.


%% Example:
%% prompt() :: #{
%%   <<"Description">> => string(),
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PromptARN">> => string(),
%%   <<"PromptId">> => string(),
%%   <<"Tags">> => map()
%% }
-type prompt() :: #{binary() => any()}.


%% Example:
%% media_placement() :: #{
%%   <<"AudioFallbackUrl">> => string(),
%%   <<"AudioHostUrl">> => string(),
%%   <<"EventIngestionUrl">> => string(),
%%   <<"SignalingUrl">> => string(),
%%   <<"TurnControlUrl">> => string()
%% }
-type media_placement() :: #{binary() => any()}.


%% Example:
%% list_realtime_contact_analysis_segments_v2_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutputType">> := list(any()),
%%   <<"SegmentTypes">> := list(list(any())())
%% }
-type list_realtime_contact_analysis_segments_v2_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_flow_request() :: #{}
-type delete_contact_flow_request() :: #{}.


%% Example:
%% get_current_metric_data_response() :: #{
%%   <<"ApproximateTotalCount">> => float(),
%%   <<"DataSnapshotTime">> => non_neg_integer(),
%%   <<"MetricResults">> => list(current_metric_result()),
%%   <<"NextToken">> => string()
%% }
-type get_current_metric_data_response() :: #{binary() => any()}.


%% Example:
%% list_authentication_profiles_response() :: #{
%%   <<"AuthenticationProfileSummaryList">> => list(authentication_profile_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_authentication_profiles_response() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberCountryCode">> := list(any()),
%%   <<"PhoneNumberPrefix">> => string(),
%%   <<"PhoneNumberType">> := list(any()),
%%   <<"TargetArn">> => string()
%% }
-type search_available_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% describe_rule_response() :: #{
%%   <<"Rule">> => rule()
%% }
-type describe_rule_response() :: #{binary() => any()}.


%% Example:
%% participant_details() :: #{
%%   <<"DisplayName">> => string()
%% }
-type participant_details() :: #{binary() => any()}.


%% Example:
%% date_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type date_reference() :: #{binary() => any()}.


%% Example:
%% create_queue_response() :: #{
%%   <<"QueueArn">> => string(),
%%   <<"QueueId">> => string()
%% }
-type create_queue_response() :: #{binary() => any()}.


%% Example:
%% update_email_address_metadata_response() :: #{
%%   <<"EmailAddressArn">> => string(),
%%   <<"EmailAddressId">> => string()
%% }
-type update_email_address_metadata_response() :: #{binary() => any()}.


%% Example:
%% predefined_attribute() :: #{
%%   <<"LastModifiedRegion">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Values">> => list()
%% }
-type predefined_attribute() :: #{binary() => any()}.


%% Example:
%% update_user_hierarchy_group_name_request() :: #{
%%   <<"Name">> := string()
%% }
-type update_user_hierarchy_group_name_request() :: #{binary() => any()}.


%% Example:
%% user_info() :: #{
%%   <<"UserId">> => string()
%% }
-type user_info() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_attachments() :: #{
%%   <<"Attachments">> => list(real_time_contact_analysis_attachment()),
%%   <<"DisplayName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"Time">> => list()
%% }
-type real_time_contact_analysis_segment_attachments() :: #{binary() => any()}.


%% Example:
%% expiry() :: #{
%%   <<"DurationInSeconds">> => integer(),
%%   <<"ExpiryTimestamp">> => non_neg_integer()
%% }
-type expiry() :: #{binary() => any()}.


%% Example:
%% real_time_contact_analysis_segment_transcript() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"Redaction">> => real_time_contact_analysis_transcript_item_redaction(),
%%   <<"Sentiment">> => list(any()),
%%   <<"Time">> => list()
%% }
-type real_time_contact_analysis_segment_transcript() :: #{binary() => any()}.


%% Example:
%% transcript_criteria() :: #{
%%   <<"MatchType">> => list(any()),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"SearchText">> => list(string())
%% }
-type transcript_criteria() :: #{binary() => any()}.


%% Example:
%% create_contact_flow_response() :: #{
%%   <<"ContactFlowArn">> => string(),
%%   <<"ContactFlowId">> => string(),
%%   <<"FlowContentSha256">> => string()
%% }
-type create_contact_flow_response() :: #{binary() => any()}.

%% Example:
%% describe_queue_request() :: #{}
-type describe_queue_request() :: #{}.


%% Example:
%% batch_disassociate_analytics_data_set_response() :: #{
%%   <<"Deleted">> => list(string()),
%%   <<"Errors">> => list(error_result())
%% }
-type batch_disassociate_analytics_data_set_response() :: #{binary() => any()}.


%% Example:
%% submit_auto_evaluation_action_definition() :: #{
%%   <<"EvaluationFormId">> => string()
%% }
-type submit_auto_evaluation_action_definition() :: #{binary() => any()}.

%% Example:
%% update_contact_flow_module_content_response() :: #{}
-type update_contact_flow_module_content_response() :: #{}.


%% Example:
%% batch_get_flow_association_response() :: #{
%%   <<"FlowAssociationSummaryList">> => list(flow_association_summary())
%% }
-type batch_get_flow_association_response() :: #{binary() => any()}.


%% Example:
%% resource_tags_search_criteria() :: #{
%%   <<"TagSearchCondition">> => tag_search_condition()
%% }
-type resource_tags_search_criteria() :: #{binary() => any()}.


%% Example:
%% suspend_contact_recording_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"ContactRecordingType">> => list(any()),
%%   <<"InitialContactId">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type suspend_contact_recording_request() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"DirectoryUserId">> => string(),
%%   <<"HierarchyGroupId">> => string(),
%%   <<"IdentityInfo">> => user_identity_info(),
%%   <<"Password">> => string(),
%%   <<"PhoneConfig">> := user_phone_config(),
%%   <<"RoutingProfileId">> := string(),
%%   <<"SecurityProfileIds">> := list(string()),
%%   <<"Tags">> => map(),
%%   <<"Username">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.


%% Example:
%% property_validation_exception_property() :: #{
%%   <<"Message">> => string(),
%%   <<"PropertyPath">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type property_validation_exception_property() :: #{binary() => any()}.


%% Example:
%% evaluation_form_content() :: #{
%%   <<"Description">> => string(),
%%   <<"EvaluationFormArn">> => string(),
%%   <<"EvaluationFormId">> => string(),
%%   <<"EvaluationFormVersion">> => integer(),
%%   <<"Items">> => list(list()),
%%   <<"ScoringStrategy">> => evaluation_form_scoring_strategy(),
%%   <<"Title">> => string()
%% }
-type evaluation_form_content() :: #{binary() => any()}.

%% Example:
%% dismiss_user_contact_response() :: #{}
-type dismiss_user_contact_response() :: #{}.


%% Example:
%% update_contact_flow_module_content_request() :: #{
%%   <<"Content">> := string()
%% }
-type update_contact_flow_module_content_request() :: #{binary() => any()}.


%% Example:
%% instance_storage_config() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"KinesisFirehoseConfig">> => kinesis_firehose_config(),
%%   <<"KinesisStreamConfig">> => kinesis_stream_config(),
%%   <<"KinesisVideoStreamConfig">> => kinesis_video_stream_config(),
%%   <<"S3Config">> => s3_config(),
%%   <<"StorageType">> => list(any())
%% }
-type instance_storage_config() :: #{binary() => any()}.


%% Example:
%% list_routing_profile_queues_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routing_profile_queues_request() :: #{binary() => any()}.


%% Example:
%% agent_status_reference() :: #{
%%   <<"StatusArn">> => string(),
%%   <<"StatusName">> => string(),
%%   <<"StatusStartTimestamp">> => non_neg_integer()
%% }
-type agent_status_reference() :: #{binary() => any()}.


%% Example:
%% allowed_capabilities() :: #{
%%   <<"Agent">> => participant_capabilities(),
%%   <<"Customer">> => participant_capabilities()
%% }
-type allowed_capabilities() :: #{binary() => any()}.

%% Example:
%% get_contact_attributes_request() :: #{}
-type get_contact_attributes_request() :: #{}.


%% Example:
%% hours_of_operation_override_config() :: #{
%%   <<"Day">> => list(any()),
%%   <<"EndTime">> => override_time_slice(),
%%   <<"StartTime">> => override_time_slice()
%% }
-type hours_of_operation_override_config() :: #{binary() => any()}.


%% Example:
%% batch_associate_analytics_data_set_response() :: #{
%%   <<"Created">> => list(analytics_data_association_result()),
%%   <<"Errors">> => list(error_result())
%% }
-type batch_associate_analytics_data_set_response() :: #{binary() => any()}.

-type activate_evaluation_form_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_analytics_data_set_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_approved_origin_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_bot_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_default_vocabulary_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_instance_storage_config_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_lambda_function_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_lex_bot_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_phone_number_contact_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_queue_quick_connects_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_routing_profile_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_security_key_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_traffic_distribution_group_user_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type associate_user_proficiencies_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type batch_associate_analytics_data_set_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type batch_disassociate_analytics_data_set_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type batch_get_attached_file_metadata_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type batch_get_flow_association_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type batch_put_contact_errors() ::
    limit_exceeded_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type claim_phone_number_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type complete_attached_file_upload_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_agent_status_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_contact_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type create_contact_flow_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    invalid_contact_flow_exception().

-type create_contact_flow_module_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    idempotency_exception() | 
    invalid_contact_flow_module_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_contact_flow_version_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_email_address_errors() ::
    resource_conflict_exception() | 
    duplicate_resource_exception() | 
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_evaluation_form_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_hours_of_operation_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_hours_of_operation_override_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_instance_errors() ::
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_integration_association_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_participant_errors() ::
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type create_persistent_contact_association_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_predefined_attribute_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_prompt_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type create_push_notification_registration_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_queue_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_quick_connect_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_routing_profile_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_rule_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_security_profile_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_task_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    property_validation_exception().

-type create_traffic_distribution_group_errors() ::
    resource_conflict_exception() | 
    resource_not_ready_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_use_case_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_user_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_user_hierarchy_group_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_view_errors() ::
    duplicate_resource_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type create_view_version_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type create_vocabulary_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type deactivate_evaluation_form_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_attached_file_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_contact_evaluation_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_contact_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_contact_flow_module_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_contact_flow_version_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_email_address_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_evaluation_form_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_hours_of_operation_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_hours_of_operation_override_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_instance_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_integration_association_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_predefined_attribute_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_prompt_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_push_notification_registration_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_queue_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_quick_connect_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_routing_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_security_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_task_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_traffic_distribution_group_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_use_case_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_user_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type delete_user_hierarchy_group_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_view_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_view_version_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_vocabulary_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type describe_agent_status_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_authentication_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_contact_evaluation_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_contact_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    contact_flow_not_published_exception().

-type describe_contact_flow_module_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_email_address_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_evaluation_form_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_hours_of_operation_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_hours_of_operation_override_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_instance_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_instance_attribute_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_instance_storage_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_phone_number_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_predefined_attribute_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_prompt_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_queue_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_quick_connect_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_routing_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_security_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_traffic_distribution_group_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_user_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_user_hierarchy_group_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_user_hierarchy_structure_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_view_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type describe_vocabulary_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_analytics_data_set_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_approved_origin_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_bot_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_instance_storage_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_lambda_function_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_lex_bot_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_phone_number_contact_flow_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_queue_quick_connects_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_routing_profile_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_security_key_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_traffic_distribution_group_user_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type disassociate_user_proficiencies_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type dismiss_user_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_attached_file_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_contact_attributes_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_contact_metrics_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_current_metric_data_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_current_user_data_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_effective_hours_of_operations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_federation_token_errors() ::
    duplicate_resource_exception() | 
    invalid_parameter_exception() | 
    user_not_found_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_flow_association_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_metric_data_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_metric_data_v2_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_prompt_file_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_task_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_traffic_distribution_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type import_phone_number_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_agent_statuses_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_analytics_data_associations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_analytics_data_lake_data_sets_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_approved_origins_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_associated_contacts_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_authentication_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_bots_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_contact_evaluations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_contact_flow_modules_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_contact_flow_versions_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_contact_flows_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_contact_references_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_default_vocabularies_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type list_evaluation_form_versions_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_evaluation_forms_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_flow_associations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_hours_of_operation_overrides_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_hours_of_operations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_instance_attributes_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_instance_storage_configs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_instances_errors() ::
    invalid_request_exception() | 
    internal_service_exception().

-type list_integration_associations_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_lambda_functions_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_lex_bots_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_phone_numbers_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_phone_numbers_v2_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_predefined_attributes_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_prompts_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_queue_quick_connects_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_quick_connects_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_realtime_contact_analysis_segments_v2_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    output_type_not_found_exception().

-type list_routing_profile_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_routing_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_rules_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_security_keys_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_security_profile_applications_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_security_profile_permissions_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_security_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_task_templates_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_traffic_distribution_group_users_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_traffic_distribution_groups_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type list_use_cases_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_user_hierarchy_groups_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_user_proficiencies_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_users_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_view_versions_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type list_views_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type monitor_contact_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type pause_contact_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type put_user_status_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type release_phone_number_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type replicate_instance_errors() ::
    resource_conflict_exception() | 
    resource_not_ready_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type resume_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type resume_contact_recording_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_agent_statuses_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_available_phone_numbers_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type search_contact_flow_modules_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_contact_flows_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_contacts_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_email_addresses_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_hours_of_operation_overrides_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_hours_of_operations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_predefined_attributes_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_prompts_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_quick_connects_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_resource_tags_errors() ::
    maximum_result_returned_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_routing_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_security_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_user_hierarchy_groups_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_users_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_vocabularies_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type send_chat_integration_event_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type send_outbound_email_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_attached_file_upload_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type start_chat_contact_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_contact_evaluation_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_contact_recording_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_contact_streaming_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_email_contact_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_outbound_chat_contact_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type start_outbound_email_contact_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_outbound_voice_contact_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    destination_not_allowed_exception() | 
    internal_service_exception() | 
    outbound_contact_not_permitted_exception().

-type start_screen_sharing_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_task_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_web_r_t_c_contact_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type stop_contact_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    contact_not_found_exception().

-type stop_contact_recording_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type stop_contact_streaming_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type submit_contact_evaluation_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type suspend_contact_recording_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type tag_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type transfer_contact_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type untag_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_agent_status_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_authentication_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type update_contact_attributes_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_evaluation_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_flow_content_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    invalid_contact_flow_exception().

-type update_contact_flow_metadata_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_flow_module_content_errors() ::
    throttling_exception() | 
    invalid_contact_flow_module_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_flow_module_metadata_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_flow_name_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_routing_data_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_contact_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_email_address_metadata_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_evaluation_form_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_hours_of_operation_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_hours_of_operation_override_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    conditional_operation_failed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_instance_attribute_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_instance_storage_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_participant_authentication_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type update_participant_role_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_phone_number_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_phone_number_metadata_errors() ::
    throttling_exception() | 
    idempotency_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_predefined_attribute_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_prompt_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_hours_of_operation_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_max_contacts_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_name_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_outbound_caller_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_outbound_email_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    conditional_operation_failed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_queue_status_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_quick_connect_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_quick_connect_name_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_routing_profile_agent_availability_timer_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_routing_profile_concurrency_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_routing_profile_default_outbound_queue_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_routing_profile_name_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_routing_profile_queues_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_rule_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_security_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_task_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    property_validation_exception().

-type update_traffic_distribution_errors() ::
    resource_conflict_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_hierarchy_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_hierarchy_group_name_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_hierarchy_structure_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_user_identity_info_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_phone_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_proficiencies_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_routing_profile_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_user_security_profiles_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_view_content_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_view_metadata_errors() ::
    duplicate_resource_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates an evaluation form in the specified Amazon Connect
%% instance.
%%
%% After the
%% evaluation form is activated, it is available to start new evaluations
%% based on the form.
-spec activate_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), activate_evaluation_form_request()) ->
    {ok, activate_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, activate_evaluation_form_errors(), tuple()}.
activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).

-spec activate_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), activate_evaluation_form_request(), proplists:proplist()) ->
    {ok, activate_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, activate_evaluation_form_errors(), tuple()}.
activate_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/activate"],
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

%% @doc Associates the specified dataset for a Amazon Connect instance with
%% the target account.
%%
%% You can associate only one dataset in a single call.
-spec associate_analytics_data_set(aws_client:aws_client(), binary() | list(), associate_analytics_data_set_request()) ->
    {ok, associate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, associate_analytics_data_set_errors(), tuple()}.
associate_analytics_data_set(Client, InstanceId, Input) ->
    associate_analytics_data_set(Client, InstanceId, Input, []).

-spec associate_analytics_data_set(aws_client:aws_client(), binary() | list(), associate_analytics_data_set_request(), proplists:proplist()) ->
    {ok, associate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, associate_analytics_data_set_errors(), tuple()}.
associate_analytics_data_set(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/association"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates an approved origin to an Amazon Connect instance.
-spec associate_approved_origin(aws_client:aws_client(), binary() | list(), associate_approved_origin_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_approved_origin_errors(), tuple()}.
associate_approved_origin(Client, InstanceId, Input) ->
    associate_approved_origin(Client, InstanceId, Input, []).

-spec associate_approved_origin(aws_client:aws_client(), binary() | list(), associate_approved_origin_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_approved_origin_errors(), tuple()}.
associate_approved_origin(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origin"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Amazon Lex
%% or Amazon Lex V2 bot.
-spec associate_bot(aws_client:aws_client(), binary() | list(), associate_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_bot_errors(), tuple()}.
associate_bot(Client, InstanceId, Input) ->
    associate_bot(Client, InstanceId, Input, []).

-spec associate_bot(aws_client:aws_client(), binary() | list(), associate_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_bot_errors(), tuple()}.
associate_bot(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bot"],
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

%% @doc Associates an existing vocabulary as the default.
%%
%% Contact Lens for Amazon Connect uses the vocabulary in post-call
%% and real-time analysis sessions for the given language.
-spec associate_default_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), associate_default_vocabulary_request()) ->
    {ok, associate_default_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, associate_default_vocabulary_errors(), tuple()}.
associate_default_vocabulary(Client, InstanceId, LanguageCode, Input) ->
    associate_default_vocabulary(Client, InstanceId, LanguageCode, Input, []).

-spec associate_default_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), associate_default_vocabulary_request(), proplists:proplist()) ->
    {ok, associate_default_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, associate_default_vocabulary_errors(), tuple()}.
associate_default_vocabulary(Client, InstanceId, LanguageCode, Input0, Options0) ->
    Method = put,
    Path = ["/default-vocabulary/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(LanguageCode), ""],
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

%% @doc Associates a connect resource to a flow.
-spec associate_flow(aws_client:aws_client(), binary() | list(), associate_flow_request()) ->
    {ok, associate_flow_response(), tuple()} |
    {error, any()} |
    {error, associate_flow_errors(), tuple()}.
associate_flow(Client, InstanceId, Input) ->
    associate_flow(Client, InstanceId, Input, []).

-spec associate_flow(aws_client:aws_client(), binary() | list(), associate_flow_request(), proplists:proplist()) ->
    {ok, associate_flow_response(), tuple()} |
    {error, any()} |
    {error, associate_flow_errors(), tuple()}.
associate_flow(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/flow-associations/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates a storage resource type for the first time. You can only
%% associate one type of
%% storage configuration in a single call. This means, for example, that you
%% can't define an
%% instance with multiple S3 buckets for storing chat transcripts.
%%
%% This API does not create a resource that doesn't exist. It only
%% associates it to the
%% instance. Ensure that the resource being specified in the storage
%% configuration, like an S3
%% bucket, exists when being used for association.
-spec associate_instance_storage_config(aws_client:aws_client(), binary() | list(), associate_instance_storage_config_request()) ->
    {ok, associate_instance_storage_config_response(), tuple()} |
    {error, any()} |
    {error, associate_instance_storage_config_errors(), tuple()}.
associate_instance_storage_config(Client, InstanceId, Input) ->
    associate_instance_storage_config(Client, InstanceId, Input, []).

-spec associate_instance_storage_config(aws_client:aws_client(), binary() | list(), associate_instance_storage_config_request(), proplists:proplist()) ->
    {ok, associate_instance_storage_config_response(), tuple()} |
    {error, any()} |
    {error, associate_instance_storage_config_errors(), tuple()}.
associate_instance_storage_config(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Lambda
%% function.
-spec associate_lambda_function(aws_client:aws_client(), binary() | list(), associate_lambda_function_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lambda_function_errors(), tuple()}.
associate_lambda_function(Client, InstanceId, Input) ->
    associate_lambda_function(Client, InstanceId, Input, []).

-spec associate_lambda_function(aws_client:aws_client(), binary() | list(), associate_lambda_function_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lambda_function_errors(), tuple()}.
associate_lambda_function(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-function"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Allows the specified Amazon Connect instance to access the specified
%% Amazon Lex
%% V1 bot. This API only supports the association of Amazon Lex V1 bots.
-spec associate_lex_bot(aws_client:aws_client(), binary() | list(), associate_lex_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lex_bot_errors(), tuple()}.
associate_lex_bot(Client, InstanceId, Input) ->
    associate_lex_bot(Client, InstanceId, Input, []).

-spec associate_lex_bot(aws_client:aws_client(), binary() | list(), associate_lex_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lex_bot_errors(), tuple()}.
associate_lex_bot(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bot"],
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

%% @doc Associates a flow with a phone number claimed to your Amazon Connect
%% instance.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling this API using an instance in the
%% Amazon Web Services Region where the traffic distribution group was
%% created, you can use either a full phone number
%% ARN or UUID value for the `PhoneNumberId' URI request parameter.
%% However, if the
%% number is claimed to a traffic distribution group and you are calling this
%% API using an instance in the alternate
%% Amazon Web Services Region associated with the traffic distribution group,
%% you must provide a full phone number ARN.
%% If a UUID is provided
%% in
%% this scenario, you will receive a
%% `ResourceNotFoundException'.
-spec associate_phone_number_contact_flow(aws_client:aws_client(), binary() | list(), associate_phone_number_contact_flow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_phone_number_contact_flow_errors(), tuple()}.
associate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    associate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).

-spec associate_phone_number_contact_flow(aws_client:aws_client(), binary() | list(), associate_phone_number_contact_flow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_phone_number_contact_flow_errors(), tuple()}.
associate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
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

%% @doc Associates a set of quick connects with a queue.
-spec associate_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), associate_queue_quick_connects_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_queue_quick_connects_errors(), tuple()}.
associate_queue_quick_connects(Client, InstanceId, QueueId, Input) ->
    associate_queue_quick_connects(Client, InstanceId, QueueId, Input, []).

-spec associate_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), associate_queue_quick_connects_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_queue_quick_connects_errors(), tuple()}.
associate_queue_quick_connects(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/associate-quick-connects"],
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

%% @doc Associates a set of queues with a routing profile.
-spec associate_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), associate_routing_profile_queues_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_routing_profile_queues_errors(), tuple()}.
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).

-spec associate_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), associate_routing_profile_queues_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_routing_profile_queues_errors(), tuple()}.
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/associate-queues"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Associates a security key to the instance.
-spec associate_security_key(aws_client:aws_client(), binary() | list(), associate_security_key_request()) ->
    {ok, associate_security_key_response(), tuple()} |
    {error, any()} |
    {error, associate_security_key_errors(), tuple()}.
associate_security_key(Client, InstanceId, Input) ->
    associate_security_key(Client, InstanceId, Input, []).

-spec associate_security_key(aws_client:aws_client(), binary() | list(), associate_security_key_request(), proplists:proplist()) ->
    {ok, associate_security_key_response(), tuple()} |
    {error, any()} |
    {error, associate_security_key_errors(), tuple()}.
associate_security_key(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-key"],
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

%% @doc Associates an agent with a traffic distribution group.
%%
%% This API can be called only in the
%% Region where the traffic distribution group is created.
-spec associate_traffic_distribution_group_user(aws_client:aws_client(), binary() | list(), associate_traffic_distribution_group_user_request()) ->
    {ok, associate_traffic_distribution_group_user_response(), tuple()} |
    {error, any()} |
    {error, associate_traffic_distribution_group_user_errors(), tuple()}.
associate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input) ->
    associate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input, []).

-spec associate_traffic_distribution_group_user(aws_client:aws_client(), binary() | list(), associate_traffic_distribution_group_user_request(), proplists:proplist()) ->
    {ok, associate_traffic_distribution_group_user_response(), tuple()} |
    {error, any()} |
    {error, associate_traffic_distribution_group_user_errors(), tuple()}.
associate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), "/user"],
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

%% @doc Associates a set of proficiencies with a user.
-spec associate_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), associate_user_proficiencies_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_user_proficiencies_errors(), tuple()}.
associate_user_proficiencies(Client, InstanceId, UserId, Input) ->
    associate_user_proficiencies(Client, InstanceId, UserId, Input, []).

-spec associate_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), associate_user_proficiencies_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_user_proficiencies_errors(), tuple()}.
associate_user_proficiencies(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/associate-proficiencies"],
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

%% @doc Associates a list of analytics datasets for a given Amazon Connect
%% instance to a target
%% account.
%%
%% You can associate multiple datasets in a single call.
-spec batch_associate_analytics_data_set(aws_client:aws_client(), binary() | list(), batch_associate_analytics_data_set_request()) ->
    {ok, batch_associate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_analytics_data_set_errors(), tuple()}.
batch_associate_analytics_data_set(Client, InstanceId, Input) ->
    batch_associate_analytics_data_set(Client, InstanceId, Input, []).

-spec batch_associate_analytics_data_set(aws_client:aws_client(), binary() | list(), batch_associate_analytics_data_set_request(), proplists:proplist()) ->
    {ok, batch_associate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_analytics_data_set_errors(), tuple()}.
batch_associate_analytics_data_set(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/associations"],
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

%% @doc Removes a list of analytics datasets associated with a given Amazon
%% Connect instance.
%%
%% You can disassociate multiple datasets in a single call.
-spec batch_disassociate_analytics_data_set(aws_client:aws_client(), binary() | list(), batch_disassociate_analytics_data_set_request()) ->
    {ok, batch_disassociate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_analytics_data_set_errors(), tuple()}.
batch_disassociate_analytics_data_set(Client, InstanceId, Input) ->
    batch_disassociate_analytics_data_set(Client, InstanceId, Input, []).

-spec batch_disassociate_analytics_data_set(aws_client:aws_client(), binary() | list(), batch_disassociate_analytics_data_set_request(), proplists:proplist()) ->
    {ok, batch_disassociate_analytics_data_set_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_analytics_data_set_errors(), tuple()}.
batch_disassociate_analytics_data_set(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/associations"],
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

%% @doc Allows you to retrieve metadata about multiple attached files on an
%% associated resource.
%%
%% Each attached file provided in the input list must be associated with the
%% input
%% AssociatedResourceArn.
-spec batch_get_attached_file_metadata(aws_client:aws_client(), binary() | list(), batch_get_attached_file_metadata_request()) ->
    {ok, batch_get_attached_file_metadata_response(), tuple()} |
    {error, any()} |
    {error, batch_get_attached_file_metadata_errors(), tuple()}.
batch_get_attached_file_metadata(Client, InstanceId, Input) ->
    batch_get_attached_file_metadata(Client, InstanceId, Input, []).

-spec batch_get_attached_file_metadata(aws_client:aws_client(), binary() | list(), batch_get_attached_file_metadata_request(), proplists:proplist()) ->
    {ok, batch_get_attached_file_metadata_response(), tuple()} |
    {error, any()} |
    {error, batch_get_attached_file_metadata_errors(), tuple()}.
batch_get_attached_file_metadata(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/attached-files/", aws_util:encode_uri(InstanceId), ""],
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
                     {<<"associatedResourceArn">>, <<"AssociatedResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieve the flow associations for the given resources.
-spec batch_get_flow_association(aws_client:aws_client(), binary() | list(), batch_get_flow_association_request()) ->
    {ok, batch_get_flow_association_response(), tuple()} |
    {error, any()} |
    {error, batch_get_flow_association_errors(), tuple()}.
batch_get_flow_association(Client, InstanceId, Input) ->
    batch_get_flow_association(Client, InstanceId, Input, []).

-spec batch_get_flow_association(aws_client:aws_client(), binary() | list(), batch_get_flow_association_request(), proplists:proplist()) ->
    {ok, batch_get_flow_association_response(), tuple()} |
    {error, any()} |
    {error, batch_get_flow_association_errors(), tuple()}.
batch_get_flow_association(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/flow-associations-batch/", aws_util:encode_uri(InstanceId), ""],
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
%% Only the Amazon Connect outbound campaigns service principal is allowed to
%% assume a
%% role in your account and call this API.
%%
%% Allows you to create a batch of contacts in Amazon Connect. The outbound
%% campaigns
%% capability ingests dial requests via the PutDialRequestBatch:
%% https://docs.aws.amazon.com/connect-outbound/latest/APIReference/API_PutDialRequestBatch.html
%% API. It then uses BatchPutContact to create contacts corresponding
%% to those dial requests. If agents are available, the dial requests are
%% dialed out, which results
%% in a voice call. The resulting voice call uses the same contactId that was
%% created by
%% BatchPutContact.
-spec batch_put_contact(aws_client:aws_client(), binary() | list(), batch_put_contact_request()) ->
    {ok, batch_put_contact_response(), tuple()} |
    {error, any()} |
    {error, batch_put_contact_errors(), tuple()}.
batch_put_contact(Client, InstanceId, Input) ->
    batch_put_contact(Client, InstanceId, Input, []).

-spec batch_put_contact(aws_client:aws_client(), binary() | list(), batch_put_contact_request(), proplists:proplist()) ->
    {ok, batch_put_contact_response(), tuple()} |
    {error, any()} |
    {error, batch_put_contact_errors(), tuple()}.
batch_put_contact(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact/batch/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Claims an available phone number to your Amazon Connect instance or
%% traffic distribution
%% group.
%%
%% You can call this API only in the same Amazon Web Services Region where
%% the Amazon Connect instance or traffic distribution group was created.
%%
%% For more information about how to use this operation, see Claim a phone
%% number in your
%% country:
%% https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html
%% and Claim phone
%% numbers to traffic distribution groups:
%% https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% You can call the SearchAvailablePhoneNumbers:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html
%% API for available phone numbers that you can claim. Call
%% the DescribePhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
%% API to verify the status of a previous ClaimPhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html
%% operation.
%%
%% If you plan to claim and release numbers frequently,
%% contact us for a service quota exception. Otherwise, it is possible you
%% will be blocked from
%% claiming and releasing any more numbers until up to 180 days past the
%% oldest number
%% released has expired.
%%
%% By default you can claim and release up to 200% of your maximum number of
%% active
%% phone numbers. If you claim and release phone numbers using
%% the UI or API during a rolling 180 day cycle that exceeds 200% of your
%% phone number
%% service level quota, you will be blocked from claiming any more numbers
%% until 180
%% days past the oldest number released has expired.
%%
%% For example, if you already have 99 claimed numbers and a service level
%% quota of 99 phone numbers, and in any 180
%% day period you release 99, claim 99, and then release 99, you will have
%% exceeded the
%% 200% limit. At that point you are blocked from claiming any more numbers
%% until you
%% open an Amazon Web Services support ticket.
-spec claim_phone_number(aws_client:aws_client(), claim_phone_number_request()) ->
    {ok, claim_phone_number_response(), tuple()} |
    {error, any()} |
    {error, claim_phone_number_errors(), tuple()}.
claim_phone_number(Client, Input) ->
    claim_phone_number(Client, Input, []).

-spec claim_phone_number(aws_client:aws_client(), claim_phone_number_request(), proplists:proplist()) ->
    {ok, claim_phone_number_response(), tuple()} |
    {error, any()} |
    {error, claim_phone_number_errors(), tuple()}.
claim_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/claim"],
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

%% @doc Allows you to confirm that the attached file has been uploaded using
%% the pre-signed URL
%% provided in the StartAttachedFileUpload API.
-spec complete_attached_file_upload(aws_client:aws_client(), binary() | list(), binary() | list(), complete_attached_file_upload_request()) ->
    {ok, complete_attached_file_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_attached_file_upload_errors(), tuple()}.
complete_attached_file_upload(Client, FileId, InstanceId, Input) ->
    complete_attached_file_upload(Client, FileId, InstanceId, Input, []).

-spec complete_attached_file_upload(aws_client:aws_client(), binary() | list(), binary() | list(), complete_attached_file_upload_request(), proplists:proplist()) ->
    {ok, complete_attached_file_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_attached_file_upload_errors(), tuple()}.
complete_attached_file_upload(Client, FileId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/attached-files/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(FileId), ""],
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
                     {<<"associatedResourceArn">>, <<"AssociatedResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an agent status for the specified Amazon Connect instance.
-spec create_agent_status(aws_client:aws_client(), binary() | list(), create_agent_status_request()) ->
    {ok, create_agent_status_response(), tuple()} |
    {error, any()} |
    {error, create_agent_status_errors(), tuple()}.
create_agent_status(Client, InstanceId, Input) ->
    create_agent_status(Client, InstanceId, Input, []).

-spec create_agent_status(aws_client:aws_client(), binary() | list(), create_agent_status_request(), proplists:proplist()) ->
    {ok, create_agent_status_response(), tuple()} |
    {error, any()} |
    {error, create_agent_status_errors(), tuple()}.
create_agent_status(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), ""],
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
%% Only the VOICE, EMAIL, and TASK channels are supported.
%%
%% For VOICE: The supported initiation method is `TRANSFER'. The contacts
%% created
%% with this initiation method have a subtype `connect:ExternalAudio'.
%%
%% For EMAIL: The supported initiation methods are `OUTBOUND',
%% `AGENT_REPLY', and `FLOW'.
%%
%% For TASK: The supported initiation method is `API'. Contacts created
%% with this
%% API have a sub-type of `connect:ExternalTask'.
%%
%% Creates a new VOICE, EMAIL, or TASK contact.
%%
%% After a contact is created, you can move it to the desired state by using
%% the
%% `InitiateAs' parameter. While you can use API to create task contacts
%% that are in the
%% `COMPLETED' state, you must contact Amazon Web Services Support before
%% using it for
%% bulk import use cases. Bulk import causes your requests to be throttled or
%% fail if your
%% CreateContact limits aren't high enough.
-spec create_contact(aws_client:aws_client(), create_contact_request()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input) ->
    create_contact(Client, Input, []).

-spec create_contact(aws_client:aws_client(), create_contact_request(), proplists:proplist()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/create-contact"],
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

%% @doc Creates a flow for the specified Amazon Connect instance.
%%
%% You can also create and update flows using the Amazon Connect
%% Flow language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html.
-spec create_contact_flow(aws_client:aws_client(), binary() | list(), create_contact_flow_request()) ->
    {ok, create_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_errors(), tuple()}.
create_contact_flow(Client, InstanceId, Input) ->
    create_contact_flow(Client, InstanceId, Input, []).

-spec create_contact_flow(aws_client:aws_client(), binary() | list(), create_contact_flow_request(), proplists:proplist()) ->
    {ok, create_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_errors(), tuple()}.
create_contact_flow(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a flow module for the specified Amazon Connect instance.
-spec create_contact_flow_module(aws_client:aws_client(), binary() | list(), create_contact_flow_module_request()) ->
    {ok, create_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_module_errors(), tuple()}.
create_contact_flow_module(Client, InstanceId, Input) ->
    create_contact_flow_module(Client, InstanceId, Input, []).

-spec create_contact_flow_module(aws_client:aws_client(), binary() | list(), create_contact_flow_module_request(), proplists:proplist()) ->
    {ok, create_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_module_errors(), tuple()}.
create_contact_flow_module(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Publishes a new version of the flow provided.
%%
%% Versions are immutable and monotonically
%% increasing. If the `FlowContentSha256' provided is different from the
%% `FlowContentSha256' of the `$LATEST' published flow content, then
%% an error
%% is returned. This API only supports creating versions for flows of type
%% `Campaign'.
-spec create_contact_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_contact_flow_version_request()) ->
    {ok, create_contact_flow_version_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_version_errors(), tuple()}.
create_contact_flow_version(Client, ContactFlowId, InstanceId, Input) ->
    create_contact_flow_version(Client, ContactFlowId, InstanceId, Input, []).

-spec create_contact_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_contact_flow_version_request(), proplists:proplist()) ->
    {ok, create_contact_flow_version_response(), tuple()} |
    {error, any()} |
    {error, create_contact_flow_version_errors(), tuple()}.
create_contact_flow_version(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/version"],
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

%% @doc Create new email address in the specified Amazon Connect instance.
%%
%% For more information
%% about email addresses, see Create email addresses:
%% https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html
%% in the
%% Amazon Connect Administrator Guide.
-spec create_email_address(aws_client:aws_client(), binary() | list(), create_email_address_request()) ->
    {ok, create_email_address_response(), tuple()} |
    {error, any()} |
    {error, create_email_address_errors(), tuple()}.
create_email_address(Client, InstanceId, Input) ->
    create_email_address(Client, InstanceId, Input, []).

-spec create_email_address(aws_client:aws_client(), binary() | list(), create_email_address_request(), proplists:proplist()) ->
    {ok, create_email_address_response(), tuple()} |
    {error, any()} |
    {error, create_email_address_errors(), tuple()}.
create_email_address(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/email-addresses/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates an evaluation form in the specified Amazon Connect instance.
%%
%% The form can be
%% used to define questions related to agent performance, and create sections
%% to organize such
%% questions. Question and section identifiers cannot be duplicated within
%% the same evaluation
%% form.
-spec create_evaluation_form(aws_client:aws_client(), binary() | list(), create_evaluation_form_request()) ->
    {ok, create_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, create_evaluation_form_errors(), tuple()}.
create_evaluation_form(Client, InstanceId, Input) ->
    create_evaluation_form(Client, InstanceId, Input, []).

-spec create_evaluation_form(aws_client:aws_client(), binary() | list(), create_evaluation_form_request(), proplists:proplist()) ->
    {ok, create_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, create_evaluation_form_errors(), tuple()}.
create_evaluation_form(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates hours of operation.
-spec create_hours_of_operation(aws_client:aws_client(), binary() | list(), create_hours_of_operation_request()) ->
    {ok, create_hours_of_operation_response(), tuple()} |
    {error, any()} |
    {error, create_hours_of_operation_errors(), tuple()}.
create_hours_of_operation(Client, InstanceId, Input) ->
    create_hours_of_operation(Client, InstanceId, Input, []).

-spec create_hours_of_operation(aws_client:aws_client(), binary() | list(), create_hours_of_operation_request(), proplists:proplist()) ->
    {ok, create_hours_of_operation_response(), tuple()} |
    {error, any()} |
    {error, create_hours_of_operation_errors(), tuple()}.
create_hours_of_operation(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates an hours of operation override in an Amazon Connect hours of
%% operation
%% resource.
-spec create_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), create_hours_of_operation_override_request()) ->
    {ok, create_hours_of_operation_override_response(), tuple()} |
    {error, any()} |
    {error, create_hours_of_operation_override_errors(), tuple()}.
create_hours_of_operation_override(Client, HoursOfOperationId, InstanceId, Input) ->
    create_hours_of_operation_override(Client, HoursOfOperationId, InstanceId, Input, []).

-spec create_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), create_hours_of_operation_override_request(), proplists:proplist()) ->
    {ok, create_hours_of_operation_override_response(), tuple()} |
    {error, any()} |
    {error, create_hours_of_operation_override_errors(), tuple()}.
create_hours_of_operation_override(Client, HoursOfOperationId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), "/overrides"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Initiates an Amazon Connect instance with all the supported channels
%% enabled. It does
%% not attach any storage, such as Amazon Simple Storage Service (Amazon S3)
%% or Amazon Kinesis. It
%% also does not allow for any configurations on features, such as Contact
%% Lens for Amazon Connect.
%%
%% For more information, see Create an Amazon Connect
%% instance:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html
%% in the Amazon Connect Administrator Guide.
%%
%% Amazon Connect enforces a limit on the total number of instances that you
%% can create or delete in 30 days.
%% If you exceed this limit, you will get an error message indicating there
%% has been an excessive number of attempts at creating or deleting
%% instances.
%% You must wait 30 days before you can restart creating and deleting
%% instances in your account.
-spec create_instance(aws_client:aws_client(), create_instance_request()) ->
    {ok, create_instance_response(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input) ->
    create_instance(Client, Input, []).

-spec create_instance(aws_client:aws_client(), create_instance_request(), proplists:proplist()) ->
    {ok, create_instance_response(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input0, Options0) ->
    Method = put,
    Path = ["/instance"],
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

%% @doc Creates an Amazon Web Services resource association with an Amazon
%% Connect
%% instance.
-spec create_integration_association(aws_client:aws_client(), binary() | list(), create_integration_association_request()) ->
    {ok, create_integration_association_response(), tuple()} |
    {error, any()} |
    {error, create_integration_association_errors(), tuple()}.
create_integration_association(Client, InstanceId, Input) ->
    create_integration_association(Client, InstanceId, Input, []).

-spec create_integration_association(aws_client:aws_client(), binary() | list(), create_integration_association_request(), proplists:proplist()) ->
    {ok, create_integration_association_response(), tuple()} |
    {error, any()} |
    {error, create_integration_association_errors(), tuple()}.
create_integration_association(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations"],
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

%% @doc Adds a new participant into an on-going chat contact or webRTC call.
%%
%% For more information, see Customize chat
%% flow experiences by integrating custom participants:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html
%% or Enable multi-user web, in-app, and video calling:
%% https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html.
-spec create_participant(aws_client:aws_client(), create_participant_request()) ->
    {ok, create_participant_response(), tuple()} |
    {error, any()} |
    {error, create_participant_errors(), tuple()}.
create_participant(Client, Input) ->
    create_participant(Client, Input, []).

-spec create_participant(aws_client:aws_client(), create_participant_request(), proplists:proplist()) ->
    {ok, create_participant_response(), tuple()} |
    {error, any()} |
    {error, create_participant_errors(), tuple()}.
create_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/create-participant"],
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

%% @doc Enables rehydration of chats for the lifespan of a contact.
%%
%% For more information about chat
%% rehydration, see Enable persistent chat:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
%% in the
%% Amazon Connect Administrator Guide.
-spec create_persistent_contact_association(aws_client:aws_client(), binary() | list(), binary() | list(), create_persistent_contact_association_request()) ->
    {ok, create_persistent_contact_association_response(), tuple()} |
    {error, any()} |
    {error, create_persistent_contact_association_errors(), tuple()}.
create_persistent_contact_association(Client, InitialContactId, InstanceId, Input) ->
    create_persistent_contact_association(Client, InitialContactId, InstanceId, Input, []).

-spec create_persistent_contact_association(aws_client:aws_client(), binary() | list(), binary() | list(), create_persistent_contact_association_request(), proplists:proplist()) ->
    {ok, create_persistent_contact_association_response(), tuple()} |
    {error, any()} |
    {error, create_persistent_contact_association_errors(), tuple()}.
create_persistent_contact_association(Client, InitialContactId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact/persistent-contact-association/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(InitialContactId), ""],
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

%% @doc Creates a new predefined attribute for the specified Amazon Connect
%% instance.
%%
%% Predefined
%% attributes are attributes in an Amazon Connect instance that can be used
%% to route
%% contacts to an agent or pools of agents within a queue. For more
%% information, see Create
%% predefined attributes for routing contacts to agents:
%% https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html.
-spec create_predefined_attribute(aws_client:aws_client(), binary() | list(), create_predefined_attribute_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_predefined_attribute_errors(), tuple()}.
create_predefined_attribute(Client, InstanceId, Input) ->
    create_predefined_attribute(Client, InstanceId, Input, []).

-spec create_predefined_attribute(aws_client:aws_client(), binary() | list(), create_predefined_attribute_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_predefined_attribute_errors(), tuple()}.
create_predefined_attribute(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/predefined-attributes/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a prompt.
%%
%% For more information about prompts, such as supported file types and
%% maximum length, see Create prompts:
%% https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html in the
%% Amazon Connect Administrator
%% Guide.
-spec create_prompt(aws_client:aws_client(), binary() | list(), create_prompt_request()) ->
    {ok, create_prompt_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_errors(), tuple()}.
create_prompt(Client, InstanceId, Input) ->
    create_prompt(Client, InstanceId, Input, []).

-spec create_prompt(aws_client:aws_client(), binary() | list(), create_prompt_request(), proplists:proplist()) ->
    {ok, create_prompt_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_errors(), tuple()}.
create_prompt(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates registration for a device token and a chat contact to receive
%% real-time push
%% notifications.
%%
%% For more information about push notifications, see Set up push
%% notifications in Amazon Connect for mobile chat:
%% https://docs.aws.amazon.com/connect/latest/adminguide/enable-push-notifications-for-mobile-chat.html
%% in the Amazon Connect
%% Administrator Guide.
-spec create_push_notification_registration(aws_client:aws_client(), binary() | list(), create_push_notification_registration_request()) ->
    {ok, create_push_notification_registration_response(), tuple()} |
    {error, any()} |
    {error, create_push_notification_registration_errors(), tuple()}.
create_push_notification_registration(Client, InstanceId, Input) ->
    create_push_notification_registration(Client, InstanceId, Input, []).

-spec create_push_notification_registration(aws_client:aws_client(), binary() | list(), create_push_notification_registration_request(), proplists:proplist()) ->
    {ok, create_push_notification_registration_response(), tuple()} |
    {error, any()} |
    {error, create_push_notification_registration_errors(), tuple()}.
create_push_notification_registration(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/push-notification/", aws_util:encode_uri(InstanceId), "/registrations"],
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

%% @doc Creates a new queue for the specified Amazon Connect instance.
%%
%% If the phone number is claimed to a traffic distribution group that was
%% created in the
%% same Region as the Amazon Connect instance where you are calling this API,
%% then you can use a
%% full phone number ARN or a UUID for `OutboundCallerIdNumberId'.
%% However, if the phone number is claimed
%% to a traffic distribution group that is in one Region, and you are calling
%% this API from an instance in another Amazon Web Services Region that is
%% associated with the traffic distribution group, you must provide a full
%% phone number ARN. If a
%% UUID is provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
%%
%% Only use the phone number ARN format that doesn't contain
%% `instance' in the
%% path, for example,
%% `arn:aws:connect:us-east-1:1234567890:phone-number/uuid'. This
%% is the same ARN format that is returned when you call the
%% ListPhoneNumbersV2:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
%% API.
%%
%% If you plan to use IAM policies to allow/deny access to this API for phone
%% number resources claimed to a traffic distribution group, see Allow or
%% Deny queue API actions for phone numbers in a replica Region:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region.
-spec create_queue(aws_client:aws_client(), binary() | list(), create_queue_request()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, InstanceId, Input) ->
    create_queue(Client, InstanceId, Input, []).

-spec create_queue(aws_client:aws_client(), binary() | list(), create_queue_request(), proplists:proplist()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a quick connect for the specified Amazon Connect instance.
-spec create_quick_connect(aws_client:aws_client(), binary() | list(), create_quick_connect_request()) ->
    {ok, create_quick_connect_response(), tuple()} |
    {error, any()} |
    {error, create_quick_connect_errors(), tuple()}.
create_quick_connect(Client, InstanceId, Input) ->
    create_quick_connect(Client, InstanceId, Input, []).

-spec create_quick_connect(aws_client:aws_client(), binary() | list(), create_quick_connect_request(), proplists:proplist()) ->
    {ok, create_quick_connect_response(), tuple()} |
    {error, any()} |
    {error, create_quick_connect_errors(), tuple()}.
create_quick_connect(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a new routing profile.
-spec create_routing_profile(aws_client:aws_client(), binary() | list(), create_routing_profile_request()) ->
    {ok, create_routing_profile_response(), tuple()} |
    {error, any()} |
    {error, create_routing_profile_errors(), tuple()}.
create_routing_profile(Client, InstanceId, Input) ->
    create_routing_profile(Client, InstanceId, Input, []).

-spec create_routing_profile(aws_client:aws_client(), binary() | list(), create_routing_profile_request(), proplists:proplist()) ->
    {ok, create_routing_profile_response(), tuple()} |
    {error, any()} |
    {error, create_routing_profile_errors(), tuple()}.
create_routing_profile(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a rule for the specified Amazon Connect instance.
%%
%% Use the Rules Function language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
%% to
%% code conditions for the rule.
-spec create_rule(aws_client:aws_client(), binary() | list(), create_rule_request()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, InstanceId, Input) ->
    create_rule(Client, InstanceId, Input, []).

-spec create_rule(aws_client:aws_client(), binary() | list(), create_rule_request(), proplists:proplist()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a security profile.
%%
%% For information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec create_security_profile(aws_client:aws_client(), binary() | list(), create_security_profile_request()) ->
    {ok, create_security_profile_response(), tuple()} |
    {error, any()} |
    {error, create_security_profile_errors(), tuple()}.
create_security_profile(Client, InstanceId, Input) ->
    create_security_profile(Client, InstanceId, Input, []).

-spec create_security_profile(aws_client:aws_client(), binary() | list(), create_security_profile_request(), proplists:proplist()) ->
    {ok, create_security_profile_response(), tuple()} |
    {error, any()} |
    {error, create_security_profile_errors(), tuple()}.
create_security_profile(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a new task template in the specified Amazon Connect instance.
-spec create_task_template(aws_client:aws_client(), binary() | list(), create_task_template_request()) ->
    {ok, create_task_template_response(), tuple()} |
    {error, any()} |
    {error, create_task_template_errors(), tuple()}.
create_task_template(Client, InstanceId, Input) ->
    create_task_template(Client, InstanceId, Input, []).

-spec create_task_template(aws_client:aws_client(), binary() | list(), create_task_template_request(), proplists:proplist()) ->
    {ok, create_task_template_response(), tuple()} |
    {error, any()} |
    {error, create_task_template_errors(), tuple()}.
create_task_template(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template"],
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

%% @doc Creates a traffic distribution group given an Amazon Connect instance
%% that has been replicated.
%%
%% The `SignInConfig' distribution is available only on a
%% default `TrafficDistributionGroup' (see the `IsDefault' parameter
%% in the
%% TrafficDistributionGroup:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html
%% data type). If you call
%% `UpdateTrafficDistribution' with a modified `SignInConfig' and a
%% non-default `TrafficDistributionGroup',
%% an `InvalidRequestException' is returned.
%%
%% For more information about creating traffic distribution groups, see Set
%% up traffic distribution groups:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html
%% in
%% the Amazon Connect Administrator Guide.
-spec create_traffic_distribution_group(aws_client:aws_client(), create_traffic_distribution_group_request()) ->
    {ok, create_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_distribution_group_errors(), tuple()}.
create_traffic_distribution_group(Client, Input) ->
    create_traffic_distribution_group(Client, Input, []).

-spec create_traffic_distribution_group(aws_client:aws_client(), create_traffic_distribution_group_request(), proplists:proplist()) ->
    {ok, create_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_distribution_group_errors(), tuple()}.
create_traffic_distribution_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/traffic-distribution-group"],
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

%% @doc Creates a use case for an integration association.
-spec create_use_case(aws_client:aws_client(), binary() | list(), binary() | list(), create_use_case_request()) ->
    {ok, create_use_case_response(), tuple()} |
    {error, any()} |
    {error, create_use_case_errors(), tuple()}.
create_use_case(Client, InstanceId, IntegrationAssociationId, Input) ->
    create_use_case(Client, InstanceId, IntegrationAssociationId, Input, []).

-spec create_use_case(aws_client:aws_client(), binary() | list(), binary() | list(), create_use_case_request(), proplists:proplist()) ->
    {ok, create_use_case_response(), tuple()} |
    {error, any()} |
    {error, create_use_case_errors(), tuple()}.
create_use_case(Client, InstanceId, IntegrationAssociationId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases"],
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

%% @doc Creates a user account for the specified Amazon Connect instance.
%%
%% Certain UserIdentityInfo:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html
%% parameters
%% are required in some situations. For example, `Email', `FirstName'
%% and
%% `LastName' are required if you are using Amazon Connect or SAML for
%% identity
%% management.
%%
%% For information about how to create users using the Amazon Connect admin
%% website, see Add Users:
%% https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html
%% in the Amazon Connect Administrator Guide.
-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, InstanceId, Input) ->
    create_user(Client, InstanceId, Input, []).

-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/users/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a new user hierarchy group.
-spec create_user_hierarchy_group(aws_client:aws_client(), binary() | list(), create_user_hierarchy_group_request()) ->
    {ok, create_user_hierarchy_group_response(), tuple()} |
    {error, any()} |
    {error, create_user_hierarchy_group_errors(), tuple()}.
create_user_hierarchy_group(Client, InstanceId, Input) ->
    create_user_hierarchy_group(Client, InstanceId, Input, []).

-spec create_user_hierarchy_group(aws_client:aws_client(), binary() | list(), create_user_hierarchy_group_request(), proplists:proplist()) ->
    {ok, create_user_hierarchy_group_response(), tuple()} |
    {error, any()} |
    {error, create_user_hierarchy_group_errors(), tuple()}.
create_user_hierarchy_group(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Creates a new view with the possible status of `SAVED' or
%% `PUBLISHED'.
%%
%% The views will have a unique name for each connect instance.
%%
%% It performs basic content validation if the status is `SAVED' or full
%% content
%% validation if the status is set to `PUBLISHED'. An error is returned
%% if validation
%% fails. It associates either the `$SAVED' qualifier or both of the
%% `$SAVED'
%% and `$LATEST' qualifiers with the provided view content based on the
%% status. The view
%% is idempotent if ClientToken is provided.
-spec create_view(aws_client:aws_client(), binary() | list(), create_view_request()) ->
    {ok, create_view_response(), tuple()} |
    {error, any()} |
    {error, create_view_errors(), tuple()}.
create_view(Client, InstanceId, Input) ->
    create_view(Client, InstanceId, Input, []).

-spec create_view(aws_client:aws_client(), binary() | list(), create_view_request(), proplists:proplist()) ->
    {ok, create_view_response(), tuple()} |
    {error, any()} |
    {error, create_view_errors(), tuple()}.
create_view(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/views/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Publishes a new version of the view identifier.
%%
%% Versions are immutable and monotonically increasing.
%%
%% It returns the highest version if there is no change in content compared
%% to that version. An
%% error is displayed if the supplied ViewContentSha256 is different from the
%% ViewContentSha256 of
%% the `$LATEST' alias.
-spec create_view_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_view_version_request()) ->
    {ok, create_view_version_response(), tuple()} |
    {error, any()} |
    {error, create_view_version_errors(), tuple()}.
create_view_version(Client, InstanceId, ViewId, Input) ->
    create_view_version(Client, InstanceId, ViewId, Input, []).

-spec create_view_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_view_version_request(), proplists:proplist()) ->
    {ok, create_view_version_response(), tuple()} |
    {error, any()} |
    {error, create_view_version_errors(), tuple()}.
create_view_version(Client, InstanceId, ViewId, Input0, Options0) ->
    Method = put,
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), "/versions"],
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

%% @doc Creates a custom vocabulary associated with your Amazon Connect
%% instance.
%%
%% You can set a
%% custom vocabulary to be your default vocabulary for a given language.
%% Contact Lens for Amazon Connect uses the default
%% vocabulary in post-call and real-time contact analysis sessions for that
%% language.
-spec create_vocabulary(aws_client:aws_client(), binary() | list(), create_vocabulary_request()) ->
    {ok, create_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_errors(), tuple()}.
create_vocabulary(Client, InstanceId, Input) ->
    create_vocabulary(Client, InstanceId, Input, []).

-spec create_vocabulary(aws_client:aws_client(), binary() | list(), create_vocabulary_request(), proplists:proplist()) ->
    {ok, create_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_errors(), tuple()}.
create_vocabulary(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Deactivates an evaluation form in the specified Amazon Connect
%% instance.
%%
%% After a form is deactivated,
%% it is no longer available for users to start new evaluations based on the
%% form.
-spec deactivate_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_evaluation_form_request()) ->
    {ok, deactivate_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, deactivate_evaluation_form_errors(), tuple()}.
deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).

-spec deactivate_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_evaluation_form_request(), proplists:proplist()) ->
    {ok, deactivate_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, deactivate_evaluation_form_errors(), tuple()}.
deactivate_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/deactivate"],
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

%% @doc Deletes an attached file along with the underlying S3 Object.
%%
%% The attached file is permanently deleted if S3 bucket
%% versioning is not enabled.
-spec delete_attached_file(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attached_file_request()) ->
    {ok, delete_attached_file_response(), tuple()} |
    {error, any()} |
    {error, delete_attached_file_errors(), tuple()}.
delete_attached_file(Client, FileId, InstanceId, Input) ->
    delete_attached_file(Client, FileId, InstanceId, Input, []).

-spec delete_attached_file(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attached_file_request(), proplists:proplist()) ->
    {ok, delete_attached_file_response(), tuple()} |
    {error, any()} |
    {error, delete_attached_file_errors(), tuple()}.
delete_attached_file(Client, FileId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/attached-files/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(FileId), ""],
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
                     {<<"associatedResourceArn">>, <<"AssociatedResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a contact evaluation in the specified Amazon Connect
%% instance.
-spec delete_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_evaluation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_contact_evaluation_errors(), tuple()}.
delete_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    delete_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).

-spec delete_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_evaluation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_contact_evaluation_errors(), tuple()}.
delete_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
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

%% @doc Deletes a flow for the specified Amazon Connect instance.
-spec delete_contact_flow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_flow_request()) ->
    {ok, delete_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_errors(), tuple()}.
delete_contact_flow(Client, ContactFlowId, InstanceId, Input) ->
    delete_contact_flow(Client, ContactFlowId, InstanceId, Input, []).

-spec delete_contact_flow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_flow_request(), proplists:proplist()) ->
    {ok, delete_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_errors(), tuple()}.
delete_contact_flow(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
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

%% @doc Deletes the specified flow module.
-spec delete_contact_flow_module(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_flow_module_request()) ->
    {ok, delete_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_module_errors(), tuple()}.
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input) ->
    delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input, []).

-spec delete_contact_flow_module(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_flow_module_request(), proplists:proplist()) ->
    {ok, delete_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_module_errors(), tuple()}.
delete_contact_flow_module(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), ""],
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

%% @doc Deletes the particular version specified in flow version identifier.
-spec delete_contact_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_contact_flow_version_request()) ->
    {ok, delete_contact_flow_version_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_version_errors(), tuple()}.
delete_contact_flow_version(Client, ContactFlowId, ContactFlowVersion, InstanceId, Input) ->
    delete_contact_flow_version(Client, ContactFlowId, ContactFlowVersion, InstanceId, Input, []).

-spec delete_contact_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_contact_flow_version_request(), proplists:proplist()) ->
    {ok, delete_contact_flow_version_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_flow_version_errors(), tuple()}.
delete_contact_flow_version(Client, ContactFlowId, ContactFlowVersion, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/version/", aws_util:encode_uri(ContactFlowVersion), ""],
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

%% @doc Deletes email address from the specified Amazon Connect instance.
-spec delete_email_address(aws_client:aws_client(), binary() | list(), binary() | list(), delete_email_address_request()) ->
    {ok, delete_email_address_response(), tuple()} |
    {error, any()} |
    {error, delete_email_address_errors(), tuple()}.
delete_email_address(Client, EmailAddressId, InstanceId, Input) ->
    delete_email_address(Client, EmailAddressId, InstanceId, Input, []).

-spec delete_email_address(aws_client:aws_client(), binary() | list(), binary() | list(), delete_email_address_request(), proplists:proplist()) ->
    {ok, delete_email_address_response(), tuple()} |
    {error, any()} |
    {error, delete_email_address_errors(), tuple()}.
delete_email_address(Client, EmailAddressId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/email-addresses/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EmailAddressId), ""],
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

%% @doc Deletes an evaluation form in the specified Amazon Connect instance.
%%
%% If the version property is provided, only the specified version of the
%% evaluation form is
%% deleted.
%%
%% If no version is provided, then the full form (all versions) is deleted.
-spec delete_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), delete_evaluation_form_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_evaluation_form_errors(), tuple()}.
delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).

-spec delete_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), delete_evaluation_form_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_evaluation_form_errors(), tuple()}.
delete_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
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
                     {<<"version">>, <<"EvaluationFormVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an hours of operation.
-spec delete_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_hours_of_operation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hours_of_operation_errors(), tuple()}.
delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input) ->
    delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input, []).

-spec delete_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_hours_of_operation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hours_of_operation_errors(), tuple()}.
delete_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
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

%% @doc Deletes an hours of operation override in an Amazon Connect hours of
%% operation
%% resource.
-spec delete_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_hours_of_operation_override_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hours_of_operation_override_errors(), tuple()}.
delete_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input) ->
    delete_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input, []).

-spec delete_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_hours_of_operation_override_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hours_of_operation_override_errors(), tuple()}.
delete_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), "/overrides/", aws_util:encode_uri(HoursOfOperationOverrideId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes the Amazon Connect instance. For more information, see Delete your
%% Amazon Connect instance:
%% https://docs.aws.amazon.com/connect/latest/adminguide/delete-connect-instance.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% Amazon Connect enforces a limit on the total number of instances that you
%% can create or delete in 30 days.
%% If you exceed this limit, you will get an error message indicating there
%% has been an excessive number of attempts at creating or deleting
%% instances.
%% You must wait 30 days before you can restart creating and deleting
%% instances in your account.
-spec delete_instance(aws_client:aws_client(), binary() | list(), delete_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, InstanceId, Input) ->
    delete_instance(Client, InstanceId, Input, []).

-spec delete_instance(aws_client:aws_client(), binary() | list(), delete_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Web Services resource association from an Amazon
%% Connect instance.
%%
%% The
%% association must not have any use cases associated with it.
-spec delete_integration_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_integration_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_association_errors(), tuple()}.
delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input) ->
    delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input, []).

-spec delete_integration_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_integration_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_association_errors(), tuple()}.
delete_integration_association(Client, InstanceId, IntegrationAssociationId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), ""],
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

%% @doc Deletes a predefined attribute from the specified Amazon Connect
%% instance.
-spec delete_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), delete_predefined_attribute_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predefined_attribute_errors(), tuple()}.
delete_predefined_attribute(Client, InstanceId, Name, Input) ->
    delete_predefined_attribute(Client, InstanceId, Name, Input, []).

-spec delete_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), delete_predefined_attribute_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predefined_attribute_errors(), tuple()}.
delete_predefined_attribute(Client, InstanceId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/predefined-attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a prompt.
-spec delete_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), delete_prompt_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_prompt_errors(), tuple()}.
delete_prompt(Client, InstanceId, PromptId, Input) ->
    delete_prompt(Client, InstanceId, PromptId, Input, []).

-spec delete_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), delete_prompt_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_prompt_errors(), tuple()}.
delete_prompt(Client, InstanceId, PromptId, Input0, Options0) ->
    Method = delete,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
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

%% @doc Deletes registration for a device token and a chat contact.
-spec delete_push_notification_registration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_push_notification_registration_request()) ->
    {ok, delete_push_notification_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_push_notification_registration_errors(), tuple()}.
delete_push_notification_registration(Client, InstanceId, RegistrationId, Input) ->
    delete_push_notification_registration(Client, InstanceId, RegistrationId, Input, []).

-spec delete_push_notification_registration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_push_notification_registration_request(), proplists:proplist()) ->
    {ok, delete_push_notification_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_push_notification_registration_errors(), tuple()}.
delete_push_notification_registration(Client, InstanceId, RegistrationId, Input0, Options0) ->
    Method = delete,
    Path = ["/push-notification/", aws_util:encode_uri(InstanceId), "/registrations/", aws_util:encode_uri(RegistrationId), ""],
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
                     {<<"contactId">>, <<"ContactId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a queue.
-spec delete_queue(aws_client:aws_client(), binary() | list(), binary() | list(), delete_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, InstanceId, QueueId, Input) ->
    delete_queue(Client, InstanceId, QueueId, Input, []).

-spec delete_queue(aws_client:aws_client(), binary() | list(), binary() | list(), delete_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), ""],
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

%% @doc Deletes a quick connect.
%%
%% After calling DeleteUser:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteUser.html,
%% it's important to
%% call `DeleteQuickConnect' to delete any records related to the deleted
%% users. This
%% will help you:
%%
%% Avoid dangling resources that impact your service quotas.
%%
%% Remove deleted users so they don't appear to agents as transfer
%% options.
%%
%% Avoid the disruption of other Amazon Connect processes, such as instance
%% replication
%% and syncing if you're using Amazon Connect
%% Global Resiliency:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html.
-spec delete_quick_connect(aws_client:aws_client(), binary() | list(), binary() | list(), delete_quick_connect_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_quick_connect_errors(), tuple()}.
delete_quick_connect(Client, InstanceId, QuickConnectId, Input) ->
    delete_quick_connect(Client, InstanceId, QuickConnectId, Input, []).

-spec delete_quick_connect(aws_client:aws_client(), binary() | list(), binary() | list(), delete_quick_connect_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_quick_connect_errors(), tuple()}.
delete_quick_connect(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = delete,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), ""],
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

%% @doc Deletes a routing profile.
-spec delete_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_routing_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_routing_profile_errors(), tuple()}.
delete_routing_profile(Client, InstanceId, RoutingProfileId, Input) ->
    delete_routing_profile(Client, InstanceId, RoutingProfileId, Input, []).

-spec delete_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_routing_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_routing_profile_errors(), tuple()}.
delete_routing_profile(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), ""],
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

%% @doc Deletes a rule for the specified Amazon Connect instance.
-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, InstanceId, RuleId, Input) ->
    delete_rule(Client, InstanceId, RuleId, Input, []).

-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, InstanceId, RuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
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

%% @doc Deletes a security profile.
-spec delete_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_security_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_security_profile_errors(), tuple()}.
delete_security_profile(Client, InstanceId, SecurityProfileId, Input) ->
    delete_security_profile(Client, InstanceId, SecurityProfileId, Input, []).

-spec delete_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_security_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_security_profile_errors(), tuple()}.
delete_security_profile(Client, InstanceId, SecurityProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
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

%% @doc Deletes the task template.
-spec delete_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_task_template_request()) ->
    {ok, delete_task_template_response(), tuple()} |
    {error, any()} |
    {error, delete_task_template_errors(), tuple()}.
delete_task_template(Client, InstanceId, TaskTemplateId, Input) ->
    delete_task_template(Client, InstanceId, TaskTemplateId, Input, []).

-spec delete_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_task_template_request(), proplists:proplist()) ->
    {ok, delete_task_template_response(), tuple()} |
    {error, any()} |
    {error, delete_task_template_errors(), tuple()}.
delete_task_template(Client, InstanceId, TaskTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
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

%% @doc Deletes a traffic distribution group.
%%
%% This API can be called only in the Region where the traffic distribution
%% group is
%% created.
%%
%% For more information about deleting traffic distribution groups, see
%% Delete traffic distribution groups:
%% https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html
%% in
%% the Amazon Connect Administrator Guide.
-spec delete_traffic_distribution_group(aws_client:aws_client(), binary() | list(), delete_traffic_distribution_group_request()) ->
    {ok, delete_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_distribution_group_errors(), tuple()}.
delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input) ->
    delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input, []).

-spec delete_traffic_distribution_group(aws_client:aws_client(), binary() | list(), delete_traffic_distribution_group_request(), proplists:proplist()) ->
    {ok, delete_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_distribution_group_errors(), tuple()}.
delete_traffic_distribution_group(Client, TrafficDistributionGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), ""],
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

%% @doc Deletes a use case from an integration association.
-spec delete_use_case(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_use_case_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_use_case_errors(), tuple()}.
delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input) ->
    delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input, []).

-spec delete_use_case(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_use_case_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_use_case_errors(), tuple()}.
delete_use_case(Client, InstanceId, IntegrationAssociationId, UseCaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases/", aws_util:encode_uri(UseCaseId), ""],
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

%% @doc Deletes a user account from the specified Amazon Connect instance.
%%
%% For information about what happens to a user's data when their account
%% is deleted, see
%% Delete Users from
%% Your Amazon Connect Instance:
%% https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html in
%% the Amazon Connect Administrator
%% Guide.
%%
%% After calling DeleteUser, call DeleteQuickConnect:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteQuickConnect.html
%% to
%% delete any records related to the deleted users. This will help you:
%%
%% Avoid dangling resources that impact your service quotas.
%%
%% Remove deleted users so they don't appear to agents as transfer
%% options.
%%
%% Avoid the disruption of other Amazon Connect processes, such as instance
%% replication
%% and syncing if you're using Amazon Connect
%% Global Resiliency:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html.
-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, InstanceId, UserId, Input) ->
    delete_user(Client, InstanceId, UserId, Input, []).

-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, InstanceId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
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

%% @doc Deletes an existing user hierarchy group.
%%
%% It must not be associated with any agents or have
%% any active child groups.
-spec delete_user_hierarchy_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_hierarchy_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_hierarchy_group_errors(), tuple()}.
delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input) ->
    delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input, []).

-spec delete_user_hierarchy_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_hierarchy_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_hierarchy_group_errors(), tuple()}.
delete_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), ""],
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

%% @doc Deletes the view entirely.
%%
%% It deletes the view and all associated qualifiers (versions and
%% aliases).
-spec delete_view(aws_client:aws_client(), binary() | list(), binary() | list(), delete_view_request()) ->
    {ok, delete_view_response(), tuple()} |
    {error, any()} |
    {error, delete_view_errors(), tuple()}.
delete_view(Client, InstanceId, ViewId, Input) ->
    delete_view(Client, InstanceId, ViewId, Input, []).

-spec delete_view(aws_client:aws_client(), binary() | list(), binary() | list(), delete_view_request(), proplists:proplist()) ->
    {ok, delete_view_response(), tuple()} |
    {error, any()} |
    {error, delete_view_errors(), tuple()}.
delete_view(Client, InstanceId, ViewId, Input0, Options0) ->
    Method = delete,
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), ""],
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

%% @doc Deletes the particular version specified in `ViewVersion'
%% identifier.
-spec delete_view_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_view_version_request()) ->
    {ok, delete_view_version_response(), tuple()} |
    {error, any()} |
    {error, delete_view_version_errors(), tuple()}.
delete_view_version(Client, InstanceId, ViewId, ViewVersion, Input) ->
    delete_view_version(Client, InstanceId, ViewId, ViewVersion, Input, []).

-spec delete_view_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_view_version_request(), proplists:proplist()) ->
    {ok, delete_view_version_response(), tuple()} |
    {error, any()} |
    {error, delete_view_version_errors(), tuple()}.
delete_view_version(Client, InstanceId, ViewId, ViewVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), "/versions/", aws_util:encode_uri(ViewVersion), ""],
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

%% @doc Deletes the vocabulary that has the given identifier.
-spec delete_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vocabulary_request()) ->
    {ok, delete_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, delete_vocabulary_errors(), tuple()}.
delete_vocabulary(Client, InstanceId, VocabularyId, Input) ->
    delete_vocabulary(Client, InstanceId, VocabularyId, Input, []).

-spec delete_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vocabulary_request(), proplists:proplist()) ->
    {ok, delete_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, delete_vocabulary_errors(), tuple()}.
delete_vocabulary(Client, InstanceId, VocabularyId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary-remove/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(VocabularyId), ""],
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

%% @doc Describes an agent status.
-spec describe_agent_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_agent_status_response(), tuple()} |
    {error, any()} |
    {error, describe_agent_status_errors(), tuple()}.
describe_agent_status(Client, AgentStatusId, InstanceId)
  when is_map(Client) ->
    describe_agent_status(Client, AgentStatusId, InstanceId, #{}, #{}).

-spec describe_agent_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_agent_status_response(), tuple()} |
    {error, any()} |
    {error, describe_agent_status_errors(), tuple()}.
describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_agent_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_agent_status_response(), tuple()} |
    {error, any()} |
    {error, describe_agent_status_errors(), tuple()}.
describe_agent_status(Client, AgentStatusId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AgentStatusId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% To
%% request access to this API, contact Amazon Web ServicesSupport.
%%
%% Describes the target authentication profile.
-spec describe_authentication_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_authentication_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_authentication_profile_errors(), tuple()}.
describe_authentication_profile(Client, AuthenticationProfileId, InstanceId)
  when is_map(Client) ->
    describe_authentication_profile(Client, AuthenticationProfileId, InstanceId, #{}, #{}).

-spec describe_authentication_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_authentication_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_authentication_profile_errors(), tuple()}.
describe_authentication_profile(Client, AuthenticationProfileId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_authentication_profile(Client, AuthenticationProfileId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_authentication_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_authentication_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_authentication_profile_errors(), tuple()}.
describe_authentication_profile(Client, AuthenticationProfileId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authentication-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AuthenticationProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the specified contact.
%%
%% `SystemEndpoint' is not populated for contacts with initiation method
%% of
%% MONITOR, QUEUE_TRANSFER, or CALLBACK
%%
%% Contact information remains available in Amazon Connect for 24 months from
%% the
%% `InitiationTimestamp', and then it is deleted. Only contact
%% information that is
%% available in Amazon Connect is returned by this API.
-spec describe_contact(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId, InstanceId)
  when is_map(Client) ->
    describe_contact(Client, ContactId, InstanceId, #{}, #{}).

-spec describe_contact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_contact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contacts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a contact evaluation in the specified Amazon Connect
%% instance.
-spec describe_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_evaluation_errors(), tuple()}.
describe_contact_evaluation(Client, EvaluationId, InstanceId)
  when is_map(Client) ->
    describe_contact_evaluation(Client, EvaluationId, InstanceId, #{}, #{}).

-spec describe_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_evaluation_errors(), tuple()}.
describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_evaluation_errors(), tuple()}.
describe_contact_evaluation(Client, EvaluationId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified flow.
%%
%% You can also create and update flows using the Amazon Connect
%% Flow language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html.
%%
%% Use the `$SAVED' alias in the request to describe the `SAVED'
%% content
%% of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED'. After
%% a flow is
%% published, `$SAVED' needs to be supplied to view saved content that
%% has not been
%% published.
%%
%% Use `arn:aws:.../contact-flow/{id}:{version}' to retrieve the content
%% of a
%% specific flow version.
%%
%% In the response, Status indicates the flow status as either
%% `SAVED' or `PUBLISHED'. The `PUBLISHED' status will initiate
%% validation on the content. `SAVED' does not initiate validation of the
%% content.
%% `SAVED' | `PUBLISHED'
-spec describe_contact_flow(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_errors(), tuple()}.
describe_contact_flow(Client, ContactFlowId, InstanceId)
  when is_map(Client) ->
    describe_contact_flow(Client, ContactFlowId, InstanceId, #{}, #{}).

-spec describe_contact_flow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_errors(), tuple()}.
describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_contact_flow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_contact_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_errors(), tuple()}.
describe_contact_flow(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified flow module.
%%
%% Use the `$SAVED' alias in the request to describe the `SAVED'
%% content
%% of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED'. After
%% a flow is
%% published, `$SAVED' needs to be supplied to view saved content that
%% has not been
%% published.
-spec describe_contact_flow_module(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_module_errors(), tuple()}.
describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId)
  when is_map(Client) ->
    describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, #{}, #{}).

-spec describe_contact_flow_module(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_module_errors(), tuple()}.
describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_contact_flow_module(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_contact_flow_module_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_flow_module_errors(), tuple()}.
describe_contact_flow_module(Client, ContactFlowModuleId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe email address form the specified Amazon Connect instance.
-spec describe_email_address(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_email_address_response(), tuple()} |
    {error, any()} |
    {error, describe_email_address_errors(), tuple()}.
describe_email_address(Client, EmailAddressId, InstanceId)
  when is_map(Client) ->
    describe_email_address(Client, EmailAddressId, InstanceId, #{}, #{}).

-spec describe_email_address(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_email_address_response(), tuple()} |
    {error, any()} |
    {error, describe_email_address_errors(), tuple()}.
describe_email_address(Client, EmailAddressId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_email_address(Client, EmailAddressId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_email_address(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_email_address_response(), tuple()} |
    {error, any()} |
    {error, describe_email_address_errors(), tuple()}.
describe_email_address(Client, EmailAddressId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/email-addresses/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EmailAddressId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an evaluation form in the specified Amazon Connect
%% instance.
%%
%% If the version
%% property is not provided, the latest version of the evaluation form is
%% described.
-spec describe_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, describe_evaluation_form_errors(), tuple()}.
describe_evaluation_form(Client, EvaluationFormId, InstanceId)
  when is_map(Client) ->
    describe_evaluation_form(Client, EvaluationFormId, InstanceId, #{}, #{}).

-spec describe_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, describe_evaluation_form_errors(), tuple()}.
describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, describe_evaluation_form_errors(), tuple()}.
describe_evaluation_form(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the hours of operation.
-spec describe_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_hours_of_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_errors(), tuple()}.
describe_hours_of_operation(Client, HoursOfOperationId, InstanceId)
  when is_map(Client) ->
    describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, #{}, #{}).

-spec describe_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_hours_of_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_errors(), tuple()}.
describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_hours_of_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_errors(), tuple()}.
describe_hours_of_operation(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the hours of operation override.
-spec describe_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_hours_of_operation_override_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_override_errors(), tuple()}.
describe_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId)
  when is_map(Client) ->
    describe_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, #{}, #{}).

-spec describe_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_hours_of_operation_override_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_override_errors(), tuple()}.
describe_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_hours_of_operation_override_response(), tuple()} |
    {error, any()} |
    {error, describe_hours_of_operation_override_errors(), tuple()}.
describe_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), "/overrides/", aws_util:encode_uri(HoursOfOperationOverrideId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns the current state of the specified instance identifier. It tracks
%% the instance while
%% it is being created and returns an error status, if applicable.
%%
%% If an instance is not created successfully, the instance status reason
%% field returns details
%% relevant to the reason. The instance in a failed state is returned only
%% for 24 hours after the
%% CreateInstance API was invoked.
-spec describe_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_errors(), tuple()}.
describe_instance(Client, InstanceId)
  when is_map(Client) ->
    describe_instance(Client, InstanceId, #{}, #{}).

-spec describe_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_errors(), tuple()}.
describe_instance(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance(Client, InstanceId, QueryMap, HeadersMap, []).

-spec describe_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_errors(), tuple()}.
describe_instance(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Describes the specified instance attribute.
-spec describe_instance_attribute(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_instance_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_attribute_errors(), tuple()}.
describe_instance_attribute(Client, AttributeType, InstanceId)
  when is_map(Client) ->
    describe_instance_attribute(Client, AttributeType, InstanceId, #{}, #{}).

-spec describe_instance_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_instance_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_attribute_errors(), tuple()}.
describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap, []).

-spec describe_instance_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_instance_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_attribute_errors(), tuple()}.
describe_instance_attribute(Client, AttributeType, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attribute/", aws_util:encode_uri(AttributeType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Retrieves the current storage configurations for the specified resource
%% type, association
%% ID, and instance ID.
-spec describe_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_instance_storage_config_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_storage_config_errors(), tuple()}.
describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType)
  when is_map(Client) ->
    describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, #{}, #{}).

-spec describe_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_instance_storage_config_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_storage_config_errors(), tuple()}.
describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap, []).

-spec describe_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_instance_storage_config_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_storage_config_errors(), tuple()}.
describe_instance_storage_config(Client, AssociationId, InstanceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details and status of a phone number that’s claimed to your
%% Amazon Connect instance
%% or traffic distribution group.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling in the Amazon Web Services Region
%% where the traffic distribution group was created, you can use either a
%% phone number ARN or UUID value for the
%% `PhoneNumberId' URI request parameter. However, if the number is
%% claimed to a traffic distribution group
%% and you are calling this API in the alternate Amazon Web Services Region
%% associated with the
%% traffic distribution group, you must provide a full phone number ARN. If a
%% UUID is provided
%% in
%% this scenario, you receive a `ResourceNotFoundException'.
-spec describe_phone_number(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_phone_number_response(), tuple()} |
    {error, any()} |
    {error, describe_phone_number_errors(), tuple()}.
describe_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    describe_phone_number(Client, PhoneNumberId, #{}, #{}).

-spec describe_phone_number(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_phone_number_response(), tuple()} |
    {error, any()} |
    {error, describe_phone_number_errors(), tuple()}.
describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

-spec describe_phone_number(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_phone_number_response(), tuple()} |
    {error, any()} |
    {error, describe_phone_number_errors(), tuple()}.
describe_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a predefined attribute for the specified Amazon Connect
%% instance.
%%
%% Predefined
%% attributes are attributes in an Amazon Connect instance that can be used
%% to route
%% contacts to an agent or pools of agents within a queue. For more
%% information, see Create
%% predefined attributes for routing contacts to agents:
%% https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html.
-spec describe_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_predefined_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_predefined_attribute_errors(), tuple()}.
describe_predefined_attribute(Client, InstanceId, Name)
  when is_map(Client) ->
    describe_predefined_attribute(Client, InstanceId, Name, #{}, #{}).

-spec describe_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_predefined_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_predefined_attribute_errors(), tuple()}.
describe_predefined_attribute(Client, InstanceId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_predefined_attribute(Client, InstanceId, Name, QueryMap, HeadersMap, []).

-spec describe_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_predefined_attribute_response(), tuple()} |
    {error, any()} |
    {error, describe_predefined_attribute_errors(), tuple()}.
describe_predefined_attribute(Client, InstanceId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/predefined-attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the prompt.
-spec describe_prompt(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_prompt_response(), tuple()} |
    {error, any()} |
    {error, describe_prompt_errors(), tuple()}.
describe_prompt(Client, InstanceId, PromptId)
  when is_map(Client) ->
    describe_prompt(Client, InstanceId, PromptId, #{}, #{}).

-spec describe_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_prompt_response(), tuple()} |
    {error, any()} |
    {error, describe_prompt_errors(), tuple()}.
describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap, []).

-spec describe_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_prompt_response(), tuple()} |
    {error, any()} |
    {error, describe_prompt_errors(), tuple()}.
describe_prompt(Client, InstanceId, PromptId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified queue.
-spec describe_queue(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_queue_response(), tuple()} |
    {error, any()} |
    {error, describe_queue_errors(), tuple()}.
describe_queue(Client, InstanceId, QueueId)
  when is_map(Client) ->
    describe_queue(Client, InstanceId, QueueId, #{}, #{}).

-spec describe_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_queue_response(), tuple()} |
    {error, any()} |
    {error, describe_queue_errors(), tuple()}.
describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap, []).

-spec describe_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_queue_response(), tuple()} |
    {error, any()} |
    {error, describe_queue_errors(), tuple()}.
describe_queue(Client, InstanceId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the quick connect.
-spec describe_quick_connect(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_quick_connect_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_connect_errors(), tuple()}.
describe_quick_connect(Client, InstanceId, QuickConnectId)
  when is_map(Client) ->
    describe_quick_connect(Client, InstanceId, QuickConnectId, #{}, #{}).

-spec describe_quick_connect(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_quick_connect_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_connect_errors(), tuple()}.
describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap, []).

-spec describe_quick_connect(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_quick_connect_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_connect_errors(), tuple()}.
describe_quick_connect(Client, InstanceId, QuickConnectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified routing profile.
%%
%% `DescribeRoutingProfile' does not populate AssociatedQueueIds in its
%% response.
%% The example Response Syntax shown on this page is incorrect; we are
%% working to update it. SearchRoutingProfiles:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html
%% does include AssociatedQueueIds.
-spec describe_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_routing_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_profile_errors(), tuple()}.
describe_routing_profile(Client, InstanceId, RoutingProfileId)
  when is_map(Client) ->
    describe_routing_profile(Client, InstanceId, RoutingProfileId, #{}, #{}).

-spec describe_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_routing_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_profile_errors(), tuple()}.
describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, []).

-spec describe_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_routing_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_profile_errors(), tuple()}.
describe_routing_profile(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a rule for the specified Amazon Connect instance.
-spec describe_rule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_errors(), tuple()}.
describe_rule(Client, InstanceId, RuleId)
  when is_map(Client) ->
    describe_rule(Client, InstanceId, RuleId, #{}, #{}).

-spec describe_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_errors(), tuple()}.
describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap, []).

-spec describe_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_errors(), tuple()}.
describe_rule(Client, InstanceId, RuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets basic information about the security profile.
%%
%% For information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec describe_security_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, InstanceId, SecurityProfileId)
  when is_map(Client) ->
    describe_security_profile(Client, InstanceId, SecurityProfileId, #{}, #{}).

-spec describe_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, []).

-spec describe_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details and status of a traffic distribution group.
-spec describe_traffic_distribution_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, describe_traffic_distribution_group_errors(), tuple()}.
describe_traffic_distribution_group(Client, TrafficDistributionGroupId)
  when is_map(Client) ->
    describe_traffic_distribution_group(Client, TrafficDistributionGroupId, #{}, #{}).

-spec describe_traffic_distribution_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, describe_traffic_distribution_group_errors(), tuple()}.
describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, []).

-spec describe_traffic_distribution_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_traffic_distribution_group_response(), tuple()} |
    {error, any()} |
    {error, describe_traffic_distribution_group_errors(), tuple()}.
describe_traffic_distribution_group(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified user.
%%
%% You can find the instance ID in the Amazon Connect console:
%% https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
%% (it’s the final part of the ARN). The console does not display the
%% user IDs. Instead, list the users and note the IDs provided in the output.
-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, InstanceId, UserId)
  when is_map(Client) ->
    describe_user(Client, InstanceId, UserId, #{}, #{}).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap, []).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, InstanceId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified hierarchy group.
-spec describe_user_hierarchy_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_user_hierarchy_group_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_group_errors(), tuple()}.
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, #{}, #{}).

-spec describe_user_hierarchy_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_user_hierarchy_group_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_group_errors(), tuple()}.
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_user_hierarchy_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_user_hierarchy_group_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_group_errors(), tuple()}.
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the hierarchy structure of the specified Amazon Connect
%% instance.
-spec describe_user_hierarchy_structure(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_user_hierarchy_structure_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_structure_errors(), tuple()}.
describe_user_hierarchy_structure(Client, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_structure(Client, InstanceId, #{}, #{}).

-spec describe_user_hierarchy_structure(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_user_hierarchy_structure_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_structure_errors(), tuple()}.
describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap, []).

-spec describe_user_hierarchy_structure(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_user_hierarchy_structure_response(), tuple()} |
    {error, any()} |
    {error, describe_user_hierarchy_structure_errors(), tuple()}.
describe_user_hierarchy_structure(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-structure/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the view for the specified Amazon Connect instance and view
%% identifier.
%%
%% The view identifier can be supplied as a ViewId or ARN.
%%
%% `$SAVED' needs to be supplied if a view is unpublished.
%%
%% The view identifier can contain an optional qualifier, for example,
%% `:$SAVED', which is either an actual version number or an Amazon
%% Connect managed qualifier `$SAVED | $LATEST'. If it is not supplied,
%% then
%% `$LATEST' is assumed for customer managed views and an error is
%% returned if there is
%% no published content available. Version 1 is assumed for Amazon Web
%% Services managed views.
-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, InstanceId, ViewId)
  when is_map(Client) ->
    describe_view(Client, InstanceId, ViewId, #{}, #{}).

-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, InstanceId, ViewId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_view(Client, InstanceId, ViewId, QueryMap, HeadersMap, []).

-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, InstanceId, ViewId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified vocabulary.
-spec describe_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, describe_vocabulary_errors(), tuple()}.
describe_vocabulary(Client, InstanceId, VocabularyId)
  when is_map(Client) ->
    describe_vocabulary(Client, InstanceId, VocabularyId, #{}, #{}).

-spec describe_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, describe_vocabulary_errors(), tuple()}.
describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap, []).

-spec describe_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, describe_vocabulary_errors(), tuple()}.
describe_vocabulary(Client, InstanceId, VocabularyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vocabulary/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(VocabularyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the dataset ID associated with a given Amazon Connect
%% instance.
-spec disassociate_analytics_data_set(aws_client:aws_client(), binary() | list(), disassociate_analytics_data_set_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_analytics_data_set_errors(), tuple()}.
disassociate_analytics_data_set(Client, InstanceId, Input) ->
    disassociate_analytics_data_set(Client, InstanceId, Input, []).

-spec disassociate_analytics_data_set(aws_client:aws_client(), binary() | list(), disassociate_analytics_data_set_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_analytics_data_set_errors(), tuple()}.
disassociate_analytics_data_set(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/association"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes access to integrated applications from Amazon Connect.
-spec disassociate_approved_origin(aws_client:aws_client(), binary() | list(), disassociate_approved_origin_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_approved_origin_errors(), tuple()}.
disassociate_approved_origin(Client, InstanceId, Input) ->
    disassociate_approved_origin(Client, InstanceId, Input, []).

-spec disassociate_approved_origin(aws_client:aws_client(), binary() | list(), disassociate_approved_origin_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_approved_origin_errors(), tuple()}.
disassociate_approved_origin(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origin"],
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
                     {<<"clientToken">>, <<"ClientToken">>},
                     {<<"origin">>, <<"Origin">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes authorization from the specified instance to access the specified
%% Amazon Lex or Amazon Lex V2
%% bot.
-spec disassociate_bot(aws_client:aws_client(), binary() | list(), disassociate_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_bot_errors(), tuple()}.
disassociate_bot(Client, InstanceId, Input) ->
    disassociate_bot(Client, InstanceId, Input, []).

-spec disassociate_bot(aws_client:aws_client(), binary() | list(), disassociate_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_bot_errors(), tuple()}.
disassociate_bot(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bot"],
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

%% @doc Disassociates a connect resource from a flow.
-spec disassociate_flow(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_flow_request()) ->
    {ok, disassociate_flow_response(), tuple()} |
    {error, any()} |
    {error, disassociate_flow_errors(), tuple()}.
disassociate_flow(Client, InstanceId, ResourceId, ResourceType, Input) ->
    disassociate_flow(Client, InstanceId, ResourceId, ResourceType, Input, []).

-spec disassociate_flow(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_flow_request(), proplists:proplist()) ->
    {ok, disassociate_flow_response(), tuple()} |
    {error, any()} |
    {error, disassociate_flow_errors(), tuple()}.
disassociate_flow(Client, InstanceId, ResourceId, ResourceType, Input0, Options0) ->
    Method = delete,
    Path = ["/flow-associations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ResourceId), "/", aws_util:encode_uri(ResourceType), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Removes the storage type configurations for the specified resource type
%% and association
%% ID.
-spec disassociate_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_instance_storage_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_instance_storage_config_errors(), tuple()}.
disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input) ->
    disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input, []).

-spec disassociate_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_instance_storage_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_instance_storage_config_errors(), tuple()}.
disassociate_instance_storage_config(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>},
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Remove the Lambda function from the dropdown options available in the
%% relevant
%% flow blocks.
-spec disassociate_lambda_function(aws_client:aws_client(), binary() | list(), disassociate_lambda_function_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lambda_function_errors(), tuple()}.
disassociate_lambda_function(Client, InstanceId, Input) ->
    disassociate_lambda_function(Client, InstanceId, Input, []).

-spec disassociate_lambda_function(aws_client:aws_client(), binary() | list(), disassociate_lambda_function_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lambda_function_errors(), tuple()}.
disassociate_lambda_function(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-function"],
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
                     {<<"clientToken">>, <<"ClientToken">>},
                     {<<"functionArn">>, <<"FunctionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Revokes authorization from the specified instance to access the specified
%% Amazon Lex
%% bot.
-spec disassociate_lex_bot(aws_client:aws_client(), binary() | list(), disassociate_lex_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lex_bot_errors(), tuple()}.
disassociate_lex_bot(Client, InstanceId, Input) ->
    disassociate_lex_bot(Client, InstanceId, Input, []).

-spec disassociate_lex_bot(aws_client:aws_client(), binary() | list(), disassociate_lex_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lex_bot_errors(), tuple()}.
disassociate_lex_bot(Client, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bot"],
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
                     {<<"botName">>, <<"BotName">>},
                     {<<"clientToken">>, <<"ClientToken">>},
                     {<<"lexRegion">>, <<"LexRegion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the flow association from a phone number claimed to your
%% Amazon Connect
%% instance.
%%
%% If the number is claimed to a traffic distribution group, and you are
%% calling this API using an instance in the
%% Amazon Web Services Region where the traffic distribution group was
%% created, you can use either a full phone number
%% ARN or UUID value for the `PhoneNumberId' URI request parameter.
%% However, if the
%% number is claimed to a traffic distribution group and you are calling this
%% API using an instance in the alternate
%% Amazon Web Services Region associated with the traffic distribution group,
%% you must provide a full phone number ARN.
%% If a UUID is provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
-spec disassociate_phone_number_contact_flow(aws_client:aws_client(), binary() | list(), disassociate_phone_number_contact_flow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_phone_number_contact_flow_errors(), tuple()}.
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input) ->
    disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input, []).

-spec disassociate_phone_number_contact_flow(aws_client:aws_client(), binary() | list(), disassociate_phone_number_contact_flow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_phone_number_contact_flow_errors(), tuple()}.
disassociate_phone_number_contact_flow(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/contact-flow"],
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
                     {<<"instanceId">>, <<"InstanceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a set of quick connects from a queue.
-spec disassociate_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_queue_quick_connects_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_queue_quick_connects_errors(), tuple()}.
disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input) ->
    disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input, []).

-spec disassociate_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_queue_quick_connects_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_queue_quick_connects_errors(), tuple()}.
disassociate_queue_quick_connects(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/disassociate-quick-connects"],
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

%% @doc Disassociates a set of queues from a routing profile.
-spec disassociate_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_routing_profile_queues_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_routing_profile_queues_errors(), tuple()}.
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).

-spec disassociate_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_routing_profile_queues_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_routing_profile_queues_errors(), tuple()}.
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/disassociate-queues"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Deletes the specified security key.
-spec disassociate_security_key(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_security_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_security_key_errors(), tuple()}.
disassociate_security_key(Client, AssociationId, InstanceId, Input) ->
    disassociate_security_key(Client, AssociationId, InstanceId, Input, []).

-spec disassociate_security_key(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_security_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_security_key_errors(), tuple()}.
disassociate_security_key(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-key/", aws_util:encode_uri(AssociationId), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an agent from a traffic distribution group.
%%
%% This API can be called only in the
%% Region where the traffic distribution group is created.
-spec disassociate_traffic_distribution_group_user(aws_client:aws_client(), binary() | list(), disassociate_traffic_distribution_group_user_request()) ->
    {ok, disassociate_traffic_distribution_group_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_traffic_distribution_group_user_errors(), tuple()}.
disassociate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input) ->
    disassociate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input, []).

-spec disassociate_traffic_distribution_group_user(aws_client:aws_client(), binary() | list(), disassociate_traffic_distribution_group_user_request(), proplists:proplist()) ->
    {ok, disassociate_traffic_distribution_group_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_traffic_distribution_group_user_errors(), tuple()}.
disassociate_traffic_distribution_group_user(Client, TrafficDistributionGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), "/user"],
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
                     {<<"InstanceId">>, <<"InstanceId">>},
                     {<<"UserId">>, <<"UserId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a set of proficiencies from a user.
-spec disassociate_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_user_proficiencies_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_user_proficiencies_errors(), tuple()}.
disassociate_user_proficiencies(Client, InstanceId, UserId, Input) ->
    disassociate_user_proficiencies(Client, InstanceId, UserId, Input, []).

-spec disassociate_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_user_proficiencies_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_user_proficiencies_errors(), tuple()}.
disassociate_user_proficiencies(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/disassociate-proficiencies"],
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

%% @doc Dismisses contacts from an agent’s CCP and returns the agent to an
%% available state, which
%% allows the agent to receive a new routed contact.
%%
%% Contacts can only be dismissed if they are in a
%% `MISSED', `ERROR', `ENDED', or `REJECTED' state in
%% the Agent
%% Event Stream:
%% https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html.
-spec dismiss_user_contact(aws_client:aws_client(), binary() | list(), binary() | list(), dismiss_user_contact_request()) ->
    {ok, dismiss_user_contact_response(), tuple()} |
    {error, any()} |
    {error, dismiss_user_contact_errors(), tuple()}.
dismiss_user_contact(Client, InstanceId, UserId, Input) ->
    dismiss_user_contact(Client, InstanceId, UserId, Input, []).

-spec dismiss_user_contact(aws_client:aws_client(), binary() | list(), binary() | list(), dismiss_user_contact_request(), proplists:proplist()) ->
    {ok, dismiss_user_contact_response(), tuple()} |
    {error, any()} |
    {error, dismiss_user_contact_errors(), tuple()}.
dismiss_user_contact(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/contact"],
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

%% @doc Provides a pre-signed URL for download of an approved attached file.
%%
%% This API also returns
%% metadata about the attached file. It will only return a downloadURL if the
%% status of the attached
%% file is `APPROVED'.
-spec get_attached_file(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_attached_file_response(), tuple()} |
    {error, any()} |
    {error, get_attached_file_errors(), tuple()}.
get_attached_file(Client, FileId, InstanceId, AssociatedResourceArn)
  when is_map(Client) ->
    get_attached_file(Client, FileId, InstanceId, AssociatedResourceArn, #{}, #{}).

-spec get_attached_file(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_attached_file_response(), tuple()} |
    {error, any()} |
    {error, get_attached_file_errors(), tuple()}.
get_attached_file(Client, FileId, InstanceId, AssociatedResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attached_file(Client, FileId, InstanceId, AssociatedResourceArn, QueryMap, HeadersMap, []).

-spec get_attached_file(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_attached_file_response(), tuple()} |
    {error, any()} |
    {error, get_attached_file_errors(), tuple()}.
get_attached_file(Client, FileId, InstanceId, AssociatedResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attached-files/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(FileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"associatedResourceArn">>, AssociatedResourceArn},
        {<<"urlExpiryInSeconds">>, maps:get(<<"urlExpiryInSeconds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the contact attributes for the specified contact.
-spec get_contact_attributes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_contact_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_contact_attributes_errors(), tuple()}.
get_contact_attributes(Client, InitialContactId, InstanceId)
  when is_map(Client) ->
    get_contact_attributes(Client, InitialContactId, InstanceId, #{}, #{}).

-spec get_contact_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_contact_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_contact_attributes_errors(), tuple()}.
get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap, []).

-spec get_contact_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_contact_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_contact_attributes_errors(), tuple()}.
get_contact_attributes(Client, InitialContactId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(InitialContactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the real-time metrics of the specified contact.
%%
%% Use cases
%%
%% Following are common uses cases for this API:
%%
%% You can use this API to retrieve the position of the contact in the queue.
%%
%% Endpoints: See Amazon Connect endpoints and
%% quotas: https://docs.aws.amazon.com/general/latest/gr/connect_region.html.
-spec get_contact_metrics(aws_client:aws_client(), get_contact_metrics_request()) ->
    {ok, get_contact_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_contact_metrics_errors(), tuple()}.
get_contact_metrics(Client, Input) ->
    get_contact_metrics(Client, Input, []).

-spec get_contact_metrics(aws_client:aws_client(), get_contact_metrics_request(), proplists:proplist()) ->
    {ok, get_contact_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_contact_metrics_errors(), tuple()}.
get_contact_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/contact"],
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

%% @doc Gets the real-time metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each metric, see Metrics definitions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
%% in the
%% Amazon Connect Administrator Guide.
%%
%% When you make a successful API request, you can expect the following
%% metric values in the response:
%%
%% Metric value is null: The calculation cannot be performed due to divide by
%% zero or insufficient data
%%
%% Metric value is a number (including 0) of defined type: The number
%% provided is the calculation result
%%
%% MetricResult list is empty: The request cannot find any data in the system
%%
%% The following guidelines can help you work with the API:
%%
%% Each dimension in the metric response must contain a value
%%
%% Each item in MetricResult must include all requested metrics
%%
%% If the response is slow due to large result sets, try these approaches:
%%
%% Add filters to reduce the amount of data returned
-spec get_current_metric_data(aws_client:aws_client(), binary() | list(), get_current_metric_data_request()) ->
    {ok, get_current_metric_data_response(), tuple()} |
    {error, any()} |
    {error, get_current_metric_data_errors(), tuple()}.
get_current_metric_data(Client, InstanceId, Input) ->
    get_current_metric_data(Client, InstanceId, Input, []).

-spec get_current_metric_data(aws_client:aws_client(), binary() | list(), get_current_metric_data_request(), proplists:proplist()) ->
    {ok, get_current_metric_data_response(), tuple()} |
    {error, any()} |
    {error, get_current_metric_data_errors(), tuple()}.
get_current_metric_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/current/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Gets the real-time active user data from the specified Amazon Connect
%% instance.
-spec get_current_user_data(aws_client:aws_client(), binary() | list(), get_current_user_data_request()) ->
    {ok, get_current_user_data_response(), tuple()} |
    {error, any()} |
    {error, get_current_user_data_errors(), tuple()}.
get_current_user_data(Client, InstanceId, Input) ->
    get_current_user_data(Client, InstanceId, Input, []).

-spec get_current_user_data(aws_client:aws_client(), binary() | list(), get_current_user_data_request(), proplists:proplist()) ->
    {ok, get_current_user_data_response(), tuple()} |
    {error, any()} |
    {error, get_current_user_data_errors(), tuple()}.
get_current_user_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/userdata/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Get the hours of operations with the effective override applied.
-spec get_effective_hours_of_operations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_effective_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, get_effective_hours_of_operations_errors(), tuple()}.
get_effective_hours_of_operations(Client, HoursOfOperationId, InstanceId, FromDate, ToDate)
  when is_map(Client) ->
    get_effective_hours_of_operations(Client, HoursOfOperationId, InstanceId, FromDate, ToDate, #{}, #{}).

-spec get_effective_hours_of_operations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_effective_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, get_effective_hours_of_operations_errors(), tuple()}.
get_effective_hours_of_operations(Client, HoursOfOperationId, InstanceId, FromDate, ToDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_effective_hours_of_operations(Client, HoursOfOperationId, InstanceId, FromDate, ToDate, QueryMap, HeadersMap, []).

-spec get_effective_hours_of_operations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_effective_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, get_effective_hours_of_operations_errors(), tuple()}.
get_effective_hours_of_operations(Client, HoursOfOperationId, InstanceId, FromDate, ToDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/effective-hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fromDate">>, FromDate},
        {<<"toDate">>, ToDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Supports SAML sign-in for Amazon Connect.
%%
%% Retrieves a token for federation. The token is
%% for the Amazon Connect user which corresponds to the IAM credentials that
%% were
%% used to invoke this action.
%%
%% For more information about how SAML sign-in works in Amazon Connect, see
%% Configure SAML with
%% IAM for Amazon Connect in the Amazon Connect Administrator
%% Guide.:
%% https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html
%%
%% This API doesn't support root users. If you try to invoke
%% GetFederationToken with root
%% credentials, an error message similar to the following one appears:
%%
%% ```
%% Provided identity: Principal: (...). User: (...). cannot be used for
%% federation with Amazon Connect'''
-spec get_federation_token(aws_client:aws_client(), binary() | list()) ->
    {ok, get_federation_token_response(), tuple()} |
    {error, any()} |
    {error, get_federation_token_errors(), tuple()}.
get_federation_token(Client, InstanceId)
  when is_map(Client) ->
    get_federation_token(Client, InstanceId, #{}, #{}).

-spec get_federation_token(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_federation_token_response(), tuple()} |
    {error, any()} |
    {error, get_federation_token_errors(), tuple()}.
get_federation_token(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_federation_token(Client, InstanceId, QueryMap, HeadersMap, []).

-spec get_federation_token(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_federation_token_response(), tuple()} |
    {error, any()} |
    {error, get_federation_token_errors(), tuple()}.
get_federation_token(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/federate/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the flow associated for a given resource.
-spec get_flow_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_flow_association_response(), tuple()} |
    {error, any()} |
    {error, get_flow_association_errors(), tuple()}.
get_flow_association(Client, InstanceId, ResourceId, ResourceType)
  when is_map(Client) ->
    get_flow_association(Client, InstanceId, ResourceId, ResourceType, #{}, #{}).

-spec get_flow_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_flow_association_response(), tuple()} |
    {error, any()} |
    {error, get_flow_association_errors(), tuple()}.
get_flow_association(Client, InstanceId, ResourceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow_association(Client, InstanceId, ResourceId, ResourceType, QueryMap, HeadersMap, []).

-spec get_flow_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_association_response(), tuple()} |
    {error, any()} |
    {error, get_flow_association_errors(), tuple()}.
get_flow_association(Client, InstanceId, ResourceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flow-associations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ResourceId), "/", aws_util:encode_uri(ResourceType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets historical metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each historical metric, see Metrics definitions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
%% in the
%% Amazon Connect Administrator Guide.
%%
%% We recommend using the GetMetricDataV2:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html
%% API. It
%% provides more flexibility, features, and the ability to query longer time
%% ranges than
%% `GetMetricData'. Use it to retrieve historical agent and contact
%% metrics for the
%% last 3 months, at varying intervals. You can also use it to build custom
%% dashboards to measure
%% historical queue and agent performance. For example, you can track the
%% number of incoming
%% contacts for the last 7 days, with data split by day, to see how contact
%% volume changed per day
%% of the week.
-spec get_metric_data(aws_client:aws_client(), binary() | list(), get_metric_data_request()) ->
    {ok, get_metric_data_response(), tuple()} |
    {error, any()} |
    {error, get_metric_data_errors(), tuple()}.
get_metric_data(Client, InstanceId, Input) ->
    get_metric_data(Client, InstanceId, Input, []).

-spec get_metric_data(aws_client:aws_client(), binary() | list(), get_metric_data_request(), proplists:proplist()) ->
    {ok, get_metric_data_response(), tuple()} |
    {error, any()} |
    {error, get_metric_data_errors(), tuple()}.
get_metric_data(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/historical/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Gets metric data from the specified Amazon Connect instance.
%%
%% `GetMetricDataV2' offers more features than GetMetricData:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html,
%% the previous
%% version of this API. It has new metrics, offers filtering at a metric
%% level, and offers the
%% ability to filter and group data by channels, queues, routing profiles,
%% agents, and agent
%% hierarchy levels. It can retrieve historical data for the last 3 months,
%% at varying intervals. It
%% does not support agent queues.
%%
%% For a description of the historical metrics that are supported by
%% `GetMetricDataV2' and `GetMetricData', see Metrics definitions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
%% in the
%% Amazon Connect Administrator Guide.
%%
%% When you make a successful API request, you can expect the following
%% metric values in the response:
%%
%% Metric value is null: The calculation cannot be performed due to divide by
%% zero or insufficient data
%%
%% Metric value is a number (including 0) of defined type: The number
%% provided is the calculation result
%%
%% MetricResult list is empty: The request cannot find any data in the system
%%
%% The following guidelines can help you work with the API:
%%
%% Each dimension in the metric response must contain a value
%%
%% Each item in MetricResult must include all requested metrics
%%
%% If the response is slow due to large result sets, try these approaches:
%%
%% Narrow the time range of your request
%%
%% Add filters to reduce the amount of data returned
-spec get_metric_data_v2(aws_client:aws_client(), get_metric_data_v2_request()) ->
    {ok, get_metric_data_v2_response(), tuple()} |
    {error, any()} |
    {error, get_metric_data_v2_errors(), tuple()}.
get_metric_data_v2(Client, Input) ->
    get_metric_data_v2(Client, Input, []).

-spec get_metric_data_v2(aws_client:aws_client(), get_metric_data_v2_request(), proplists:proplist()) ->
    {ok, get_metric_data_v2_response(), tuple()} |
    {error, any()} |
    {error, get_metric_data_v2_errors(), tuple()}.
get_metric_data_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/data"],
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

%% @doc Gets the prompt file.
-spec get_prompt_file(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_prompt_file_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_file_errors(), tuple()}.
get_prompt_file(Client, InstanceId, PromptId)
  when is_map(Client) ->
    get_prompt_file(Client, InstanceId, PromptId, #{}, #{}).

-spec get_prompt_file(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_prompt_file_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_file_errors(), tuple()}.
get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap, []).

-spec get_prompt_file(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_prompt_file_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_file_errors(), tuple()}.
get_prompt_file(Client, InstanceId, PromptId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), "/file"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a specific task template in the specified Amazon
%% Connect
%% instance.
-spec get_task_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_task_template_response(), tuple()} |
    {error, any()} |
    {error, get_task_template_errors(), tuple()}.
get_task_template(Client, InstanceId, TaskTemplateId)
  when is_map(Client) ->
    get_task_template(Client, InstanceId, TaskTemplateId, #{}, #{}).

-spec get_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_task_template_response(), tuple()} |
    {error, any()} |
    {error, get_task_template_errors(), tuple()}.
get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap, []).

-spec get_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_task_template_response(), tuple()} |
    {error, any()} |
    {error, get_task_template_errors(), tuple()}.
get_task_template(Client, InstanceId, TaskTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"snapshotVersion">>, maps:get(<<"snapshotVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current traffic distribution for a given traffic
%% distribution group.
-spec get_traffic_distribution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_traffic_distribution_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_distribution_errors(), tuple()}.
get_traffic_distribution(Client, Id)
  when is_map(Client) ->
    get_traffic_distribution(Client, Id, #{}, #{}).

-spec get_traffic_distribution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_traffic_distribution_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_distribution_errors(), tuple()}.
get_traffic_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_distribution(Client, Id, QueryMap, HeadersMap, []).

-spec get_traffic_distribution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_traffic_distribution_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_distribution_errors(), tuple()}.
get_traffic_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a claimed phone number from an external service, such as
%% Amazon Web Services End User
%% Messaging, into an Amazon Connect instance.
%%
%% You can call this API only in the same Amazon Web Services Region where
%% the Amazon Connect instance was created.
%%
%% Call the DescribePhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
%% API
%% to verify the status of a previous `ImportPhoneNumber' operation.
%%
%% If you plan to claim or import numbers and then release numbers
%% frequently, contact us for a
%% service quota exception. Otherwise, it is possible you will be blocked
%% from claiming and
%% releasing any more numbers until up to 180 days past the oldest number
%% released has expired.
%%
%% By default you can claim or import and then release up to 200% of your
%% maximum number of
%% active phone numbers. If you claim or import and then release phone
%% numbers using the UI or API
%% during a rolling 180 day cycle that exceeds 200% of your phone number
%% service level quota, you
%% will be blocked from claiming or importing any more numbers until 180 days
%% past the oldest number
%% released has expired.
%%
%% For example, if you already have 99 claimed or imported numbers and a
%% service level quota of
%% 99 phone numbers, and in any 180 day period you release 99, claim 99, and
%% then release 99, you
%% will have exceeded the 200% limit. At that point you are blocked from
%% claiming any more numbers
%% until you open an Amazon Web ServicesSupport ticket.
-spec import_phone_number(aws_client:aws_client(), import_phone_number_request()) ->
    {ok, import_phone_number_response(), tuple()} |
    {error, any()} |
    {error, import_phone_number_errors(), tuple()}.
import_phone_number(Client, Input) ->
    import_phone_number(Client, Input, []).

-spec import_phone_number(aws_client:aws_client(), import_phone_number_request(), proplists:proplist()) ->
    {ok, import_phone_number_response(), tuple()} |
    {error, any()} |
    {error, import_phone_number_errors(), tuple()}.
import_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/import"],
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

%% @doc Lists agent statuses.
-spec list_agent_statuses(aws_client:aws_client(), binary() | list()) ->
    {ok, list_agent_status_response(), tuple()} |
    {error, any()} |
    {error, list_agent_statuses_errors(), tuple()}.
list_agent_statuses(Client, InstanceId)
  when is_map(Client) ->
    list_agent_statuses(Client, InstanceId, #{}, #{}).

-spec list_agent_statuses(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_agent_status_response(), tuple()} |
    {error, any()} |
    {error, list_agent_statuses_errors(), tuple()}.
list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_agent_statuses(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_agent_status_response(), tuple()} |
    {error, any()} |
    {error, list_agent_statuses_errors(), tuple()}.
list_agent_statuses(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AgentStatusTypes">>, maps:get(<<"AgentStatusTypes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the association status of requested dataset ID for a given
%% Amazon Connect
%% instance.
-spec list_analytics_data_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_analytics_data_associations_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_associations_errors(), tuple()}.
list_analytics_data_associations(Client, InstanceId)
  when is_map(Client) ->
    list_analytics_data_associations(Client, InstanceId, #{}, #{}).

-spec list_analytics_data_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_analytics_data_associations_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_associations_errors(), tuple()}.
list_analytics_data_associations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analytics_data_associations(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_analytics_data_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_analytics_data_associations_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_associations_errors(), tuple()}.
list_analytics_data_associations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/association"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"DataSetId">>, maps:get(<<"DataSetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data lake datasets available to associate with for a given
%% Amazon Connect
%% instance.
-spec list_analytics_data_lake_data_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_analytics_data_lake_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_lake_data_sets_errors(), tuple()}.
list_analytics_data_lake_data_sets(Client, InstanceId)
  when is_map(Client) ->
    list_analytics_data_lake_data_sets(Client, InstanceId, #{}, #{}).

-spec list_analytics_data_lake_data_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_analytics_data_lake_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_lake_data_sets_errors(), tuple()}.
list_analytics_data_lake_data_sets(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analytics_data_lake_data_sets(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_analytics_data_lake_data_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_analytics_data_lake_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_analytics_data_lake_data_sets_errors(), tuple()}.
list_analytics_data_lake_data_sets(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analytics-data/instance/", aws_util:encode_uri(InstanceId), "/datasets"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all approved origins associated with the
%% instance.
-spec list_approved_origins(aws_client:aws_client(), binary() | list()) ->
    {ok, list_approved_origins_response(), tuple()} |
    {error, any()} |
    {error, list_approved_origins_errors(), tuple()}.
list_approved_origins(Client, InstanceId)
  when is_map(Client) ->
    list_approved_origins(Client, InstanceId, #{}, #{}).

-spec list_approved_origins(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_approved_origins_response(), tuple()} |
    {error, any()} |
    {error, list_approved_origins_errors(), tuple()}.
list_approved_origins(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_approved_origins(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_approved_origins(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_approved_origins_response(), tuple()} |
    {error, any()} |
    {error, list_approved_origins_errors(), tuple()}.
list_approved_origins(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/approved-origins"],
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

%% @doc Provides information about contact tree, a list of associated
%% contacts with a unique
%% identifier.
-spec list_associated_contacts(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_associated_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_associated_contacts_errors(), tuple()}.
list_associated_contacts(Client, InstanceId, ContactId)
  when is_map(Client) ->
    list_associated_contacts(Client, InstanceId, ContactId, #{}, #{}).

-spec list_associated_contacts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_associated_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_associated_contacts_errors(), tuple()}.
list_associated_contacts(Client, InstanceId, ContactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_contacts(Client, InstanceId, ContactId, QueryMap, HeadersMap, []).

-spec list_associated_contacts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_associated_contacts_errors(), tuple()}.
list_associated_contacts(Client, InstanceId, ContactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/associated/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"contactId">>, ContactId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% To
%% request access to this API, contact Amazon Web ServicesSupport.
%%
%% Provides summary information about the authentication profiles in a
%% specified Amazon Connect instance.
-spec list_authentication_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_authentication_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_authentication_profiles_errors(), tuple()}.
list_authentication_profiles(Client, InstanceId)
  when is_map(Client) ->
    list_authentication_profiles(Client, InstanceId, #{}, #{}).

-spec list_authentication_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_authentication_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_authentication_profiles_errors(), tuple()}.
list_authentication_profiles(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_authentication_profiles(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_authentication_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_authentication_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_authentication_profiles_errors(), tuple()}.
list_authentication_profiles(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authentication-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% For the specified version of Amazon Lex, returns a paginated list of all
%% the Amazon Lex bots currently associated with the instance. Use this API
%% to return both Amazon Lex V1 and V2 bots.
-spec list_bots(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, InstanceId, LexVersion)
  when is_map(Client) ->
    list_bots(Client, InstanceId, LexVersion, #{}, #{}).

-spec list_bots(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap, []).

-spec list_bots(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, InstanceId, LexVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_contact_evaluations(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_contact_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_contact_evaluations_errors(), tuple()}.
list_contact_evaluations(Client, InstanceId, ContactId)
  when is_map(Client) ->
    list_contact_evaluations(Client, InstanceId, ContactId, #{}, #{}).

-spec list_contact_evaluations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_contact_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_contact_evaluations_errors(), tuple()}.
list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap, []).

-spec list_contact_evaluations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_contact_evaluations_errors(), tuple()}.
list_contact_evaluations(Client, InstanceId, ContactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"contactId">>, ContactId},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the flow modules for the specified Amazon
%% Connect
%% instance.
-spec list_contact_flow_modules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_contact_flow_modules_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_modules_errors(), tuple()}.
list_contact_flow_modules(Client, InstanceId)
  when is_map(Client) ->
    list_contact_flow_modules(Client, InstanceId, #{}, #{}).

-spec list_contact_flow_modules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_contact_flow_modules_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_modules_errors(), tuple()}.
list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_contact_flow_modules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_flow_modules_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_modules_errors(), tuple()}.
list_contact_flow_modules(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flow-modules-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all the available versions for the specified Amazon Connect
%% instance and flow
%% identifier.
-spec list_contact_flow_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_contact_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_versions_errors(), tuple()}.
list_contact_flow_versions(Client, ContactFlowId, InstanceId)
  when is_map(Client) ->
    list_contact_flow_versions(Client, ContactFlowId, InstanceId, #{}, #{}).

-spec list_contact_flow_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_contact_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_versions_errors(), tuple()}.
list_contact_flow_versions(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_flow_versions(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, []).

-spec list_contact_flow_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flow_versions_errors(), tuple()}.
list_contact_flow_versions(Client, ContactFlowId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/versions"],
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

%% @doc Provides information about the flows for the specified Amazon Connect
%% instance.
%%
%% You can also create and update flows using the Amazon Connect
%% Flow language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html.
%%
%% For more information about flows, see Flows:
%% https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html
%% in the
%% Amazon Connect Administrator Guide.
-spec list_contact_flows(aws_client:aws_client(), binary() | list()) ->
    {ok, list_contact_flows_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flows_errors(), tuple()}.
list_contact_flows(Client, InstanceId)
  when is_map(Client) ->
    list_contact_flows(Client, InstanceId, #{}, #{}).

-spec list_contact_flows(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_contact_flows_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flows_errors(), tuple()}.
list_contact_flows(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_flows(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_contact_flows(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_flows_response(), tuple()} |
    {error, any()} |
    {error, list_contact_flows_errors(), tuple()}.
list_contact_flows(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact-flows-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% associated with
%% the contact. References are links to documents that are related to a
%% contact, such as emails, attachments, or URLs.
-spec list_contact_references(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_contact_references_response(), tuple()} |
    {error, any()} |
    {error, list_contact_references_errors(), tuple()}.
list_contact_references(Client, ContactId, InstanceId, ReferenceTypes)
  when is_map(Client) ->
    list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, #{}, #{}).

-spec list_contact_references(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_contact_references_response(), tuple()} |
    {error, any()} |
    {error, list_contact_references_errors(), tuple()}.
list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap, []).

-spec list_contact_references(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_references_response(), tuple()} |
    {error, any()} |
    {error, list_contact_references_errors(), tuple()}.
list_contact_references(Client, ContactId, InstanceId, ReferenceTypes, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/references/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
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
        {<<"referenceTypes">>, ReferenceTypes}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the default vocabularies for the specified Amazon Connect
%% instance.
-spec list_default_vocabularies(aws_client:aws_client(), binary() | list(), list_default_vocabularies_request()) ->
    {ok, list_default_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_default_vocabularies_errors(), tuple()}.
list_default_vocabularies(Client, InstanceId, Input) ->
    list_default_vocabularies(Client, InstanceId, Input, []).

-spec list_default_vocabularies(aws_client:aws_client(), binary() | list(), list_default_vocabularies_request(), proplists:proplist()) ->
    {ok, list_default_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_default_vocabularies_errors(), tuple()}.
list_default_vocabularies(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/default-vocabulary-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Lists versions of an evaluation form in the specified Amazon Connect
%% instance.
-spec list_evaluation_form_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_evaluation_form_versions_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_form_versions_errors(), tuple()}.
list_evaluation_form_versions(Client, EvaluationFormId, InstanceId)
  when is_map(Client) ->
    list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, #{}, #{}).

-spec list_evaluation_form_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_evaluation_form_versions_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_form_versions_errors(), tuple()}.
list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, []).

-spec list_evaluation_form_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_evaluation_form_versions_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_form_versions_errors(), tuple()}.
list_evaluation_form_versions(Client, EvaluationFormId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), "/versions"],
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

%% @doc Lists evaluation forms in the specified Amazon Connect instance.
-spec list_evaluation_forms(aws_client:aws_client(), binary() | list()) ->
    {ok, list_evaluation_forms_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_forms_errors(), tuple()}.
list_evaluation_forms(Client, InstanceId)
  when is_map(Client) ->
    list_evaluation_forms(Client, InstanceId, #{}, #{}).

-spec list_evaluation_forms(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_evaluation_forms_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_forms_errors(), tuple()}.
list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_evaluation_forms(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_evaluation_forms_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_forms_errors(), tuple()}.
list_evaluation_forms(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc List the flow association based on the filters.
-spec list_flow_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_flow_associations_response(), tuple()} |
    {error, any()} |
    {error, list_flow_associations_errors(), tuple()}.
list_flow_associations(Client, InstanceId)
  when is_map(Client) ->
    list_flow_associations(Client, InstanceId, #{}, #{}).

-spec list_flow_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_flow_associations_response(), tuple()} |
    {error, any()} |
    {error, list_flow_associations_errors(), tuple()}.
list_flow_associations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flow_associations(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_flow_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_flow_associations_response(), tuple()} |
    {error, any()} |
    {error, list_flow_associations_errors(), tuple()}.
list_flow_associations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flow-associations-summary/", aws_util:encode_uri(InstanceId), ""],
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
        {<<"ResourceType">>, maps:get(<<"ResourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the hours of operation overrides.
-spec list_hours_of_operation_overrides(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_hours_of_operation_overrides_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operation_overrides_errors(), tuple()}.
list_hours_of_operation_overrides(Client, HoursOfOperationId, InstanceId)
  when is_map(Client) ->
    list_hours_of_operation_overrides(Client, HoursOfOperationId, InstanceId, #{}, #{}).

-spec list_hours_of_operation_overrides(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_hours_of_operation_overrides_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operation_overrides_errors(), tuple()}.
list_hours_of_operation_overrides(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hours_of_operation_overrides(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, []).

-spec list_hours_of_operation_overrides(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_hours_of_operation_overrides_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operation_overrides_errors(), tuple()}.
list_hours_of_operation_overrides(Client, HoursOfOperationId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), "/overrides"],
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

%% @doc Provides information about the hours of operation for the specified
%% Amazon Connect
%% instance.
%%
%% For more information about hours of operation, see Set the Hours of
%% Operation for a
%% Queue:
%% https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html
%% in the Amazon Connect Administrator Guide.
-spec list_hours_of_operations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operations_errors(), tuple()}.
list_hours_of_operations(Client, InstanceId)
  when is_map(Client) ->
    list_hours_of_operations(Client, InstanceId, #{}, #{}).

-spec list_hours_of_operations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operations_errors(), tuple()}.
list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_hours_of_operations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, list_hours_of_operations_errors(), tuple()}.
list_hours_of_operations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hours-of-operations-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all attribute types for the given instance.
-spec list_instance_attributes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_instance_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_instance_attributes_errors(), tuple()}.
list_instance_attributes(Client, InstanceId)
  when is_map(Client) ->
    list_instance_attributes(Client, InstanceId, #{}, #{}).

-spec list_instance_attributes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_instance_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_instance_attributes_errors(), tuple()}.
list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_instance_attributes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_instance_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_instance_attributes_errors(), tuple()}.
list_instance_attributes(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attributes"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of storage configs for the identified instance
%% and resource
%% type.
-spec list_instance_storage_configs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_instance_storage_configs_response(), tuple()} |
    {error, any()} |
    {error, list_instance_storage_configs_errors(), tuple()}.
list_instance_storage_configs(Client, InstanceId, ResourceType)
  when is_map(Client) ->
    list_instance_storage_configs(Client, InstanceId, ResourceType, #{}, #{}).

-spec list_instance_storage_configs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_instance_storage_configs_response(), tuple()} |
    {error, any()} |
    {error, list_instance_storage_configs_errors(), tuple()}.
list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap, []).

-spec list_instance_storage_configs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_instance_storage_configs_response(), tuple()} |
    {error, any()} |
    {error, list_instance_storage_configs_errors(), tuple()}.
list_instance_storage_configs(Client, InstanceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-configs"],
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
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Return a list of instances which are in active state, creation-in-progress
%% state, and failed
%% state. Instances that aren't successfully created (they are in a
%% failed state) are returned only
%% for 24 hours after the CreateInstance API was invoked.
-spec list_instances(aws_client:aws_client()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client)
  when is_map(Client) ->
    list_instances(Client, #{}, #{}).

-spec list_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instances(Client, QueryMap, HeadersMap, []).

-spec list_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance"],
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

%% @doc Provides summary information about the Amazon Web Services resource
%% associations for the
%% specified Amazon Connect instance.
-spec list_integration_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_integration_associations_errors(), tuple()}.
list_integration_associations(Client, InstanceId)
  when is_map(Client) ->
    list_integration_associations(Client, InstanceId, #{}, #{}).

-spec list_integration_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_integration_associations_errors(), tuple()}.
list_integration_associations(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_integration_associations(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_integration_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_integration_associations_errors(), tuple()}.
list_integration_associations(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"integrationArn">>, maps:get(<<"integrationArn">>, QueryMap, undefined)},
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
%% dropdown options in the
%% relevant flow blocks.
-spec list_lambda_functions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_lambda_functions_response(), tuple()} |
    {error, any()} |
    {error, list_lambda_functions_errors(), tuple()}.
list_lambda_functions(Client, InstanceId)
  when is_map(Client) ->
    list_lambda_functions(Client, InstanceId, #{}, #{}).

-spec list_lambda_functions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_lambda_functions_response(), tuple()} |
    {error, any()} |
    {error, list_lambda_functions_errors(), tuple()}.
list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_lambda_functions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lambda_functions_response(), tuple()} |
    {error, any()} |
    {error, list_lambda_functions_errors(), tuple()}.
list_lambda_functions(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lambda-functions"],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Returns a paginated list of all the Amazon Lex V1 bots currently
%% associated with the
%% instance. To return both Amazon Lex V1 and V2 bots, use the ListBots:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html
%% API.
-spec list_lex_bots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_lex_bots_response(), tuple()} |
    {error, any()} |
    {error, list_lex_bots_errors(), tuple()}.
list_lex_bots(Client, InstanceId)
  when is_map(Client) ->
    list_lex_bots(Client, InstanceId, #{}, #{}).

-spec list_lex_bots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_lex_bots_response(), tuple()} |
    {error, any()} |
    {error, list_lex_bots_errors(), tuple()}.
list_lex_bots(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lex_bots(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_lex_bots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lex_bots_response(), tuple()} |
    {error, any()} |
    {error, list_lex_bots_errors(), tuple()}.
list_lex_bots(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/lex-bots"],
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

%% @doc Provides information about the phone numbers for the specified Amazon
%% Connect instance.
%%
%% For more information about phone numbers, see Set Up Phone Numbers for
%% Your
%% Contact Center:
%% https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% We recommend using ListPhoneNumbersV2:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
%% to
%% return phone number types. ListPhoneNumbers doesn't support number
%% types `UIFN',
%% `SHARED', `THIRD_PARTY_TF', and `THIRD_PARTY_DID'. While it
%% returns numbers of those types, it incorrectly lists them as
%% `TOLL_FREE' or
%% `DID'.
%%
%% The phone number `Arn' value that is returned from each of the items
%% in the
%% PhoneNumberSummaryList:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList
%% cannot be used to tag phone number resources. It will fail
%% with a `ResourceNotFoundException'. Instead, use the
%% ListPhoneNumbersV2:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
%% API.
%% It returns the new phone number ARN that can be used to tag phone number
%% resources.
-spec list_phone_numbers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, InstanceId)
  when is_map(Client) ->
    list_phone_numbers(Client, InstanceId, #{}, #{}).

-spec list_phone_numbers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_phone_numbers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers-summary/", aws_util:encode_uri(InstanceId), ""],
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
        {<<"phoneNumberCountryCodes">>, maps:get(<<"phoneNumberCountryCodes">>, QueryMap, undefined)},
        {<<"phoneNumberTypes">>, maps:get(<<"phoneNumberTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists phone numbers claimed to your Amazon Connect instance or
%% traffic distribution group.
%%
%% If the provided
%% `TargetArn' is a traffic distribution group, you can call this API in
%% both Amazon Web Services Regions
%% associated with traffic distribution group.
%%
%% For more information about phone numbers, see Set Up Phone Numbers for
%% Your
%% Contact Center:
%% https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% When given an instance ARN, `ListPhoneNumbersV2' returns only the
%% phone
%% numbers claimed to the instance.
%%
%% When given a traffic distribution group ARN `ListPhoneNumbersV2'
%% returns only the phone numbers
%% claimed to the traffic distribution group.
-spec list_phone_numbers_v2(aws_client:aws_client(), list_phone_numbers_v2_request()) ->
    {ok, list_phone_numbers_v2_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_v2_errors(), tuple()}.
list_phone_numbers_v2(Client, Input) ->
    list_phone_numbers_v2(Client, Input, []).

-spec list_phone_numbers_v2(aws_client:aws_client(), list_phone_numbers_v2_request(), proplists:proplist()) ->
    {ok, list_phone_numbers_v2_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_v2_errors(), tuple()}.
list_phone_numbers_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/list"],
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

%% @doc Lists predefined attributes for the specified Amazon Connect
%% instance.
%%
%% Predefined
%% attributes are attributes in an Amazon Connect instance that can be used
%% to route
%% contacts to an agent or pools of agents within a queue. For more
%% information, see Create
%% predefined attributes for routing contacts to agents:
%% https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html.
-spec list_predefined_attributes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_predefined_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_predefined_attributes_errors(), tuple()}.
list_predefined_attributes(Client, InstanceId)
  when is_map(Client) ->
    list_predefined_attributes(Client, InstanceId, #{}, #{}).

-spec list_predefined_attributes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_predefined_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_predefined_attributes_errors(), tuple()}.
list_predefined_attributes(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_predefined_attributes(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_predefined_attributes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_predefined_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_predefined_attributes_errors(), tuple()}.
list_predefined_attributes(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/predefined-attributes/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Provides information about the prompts for the specified Amazon
%% Connect instance.
-spec list_prompts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client, InstanceId)
  when is_map(Client) ->
    list_prompts(Client, InstanceId, #{}, #{}).

-spec list_prompts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_prompts(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_prompts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Lists the quick connects associated with a queue.
-spec list_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_queue_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_queue_quick_connects_errors(), tuple()}.
list_queue_quick_connects(Client, InstanceId, QueueId)
  when is_map(Client) ->
    list_queue_quick_connects(Client, InstanceId, QueueId, #{}, #{}).

-spec list_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_queue_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_queue_quick_connects_errors(), tuple()}.
list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap, []).

-spec list_queue_quick_connects(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queue_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_queue_quick_connects_errors(), tuple()}.
list_queue_quick_connects(Client, InstanceId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/quick-connects"],
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

%% @doc Provides information about the queues for the specified Amazon
%% Connect instance.
%%
%% If you do not specify a `QueueTypes'
%% parameter, both standard and agent queues are returned. This might cause
%% an unexpected truncation
%% of results if you have more than 1000 agents and you limit the number of
%% results of the API call
%% in code.
%%
%% For more information about queues, see Queues: Standard and
%% Agent:
%% https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html
%% in the Amazon Connect Administrator Guide.
-spec list_queues(aws_client:aws_client(), binary() | list()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, InstanceId)
  when is_map(Client) ->
    list_queues(Client, InstanceId, #{}, #{}).

-spec list_queues(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queues(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_queues(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/queues-summary/", aws_util:encode_uri(InstanceId), ""],
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
        {<<"queueTypes">>, maps:get(<<"queueTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the quick connects for the specified
%% Amazon Connect instance.
-spec list_quick_connects(aws_client:aws_client(), binary() | list()) ->
    {ok, list_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_quick_connects_errors(), tuple()}.
list_quick_connects(Client, InstanceId)
  when is_map(Client) ->
    list_quick_connects(Client, InstanceId, #{}, #{}).

-spec list_quick_connects(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_quick_connects_errors(), tuple()}.
list_quick_connects(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_quick_connects(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_quick_connects(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, list_quick_connects_errors(), tuple()}.
list_quick_connects(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), ""],
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
        {<<"QuickConnectTypes">>, maps:get(<<"QuickConnectTypes">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of analysis segments for a real-time chat analysis
%% session.
%%
%% This API
%% supports CHAT channels only.
%%
%% This API does not support VOICE. If you attempt to use it for VOICE, an
%% `InvalidRequestException' occurs.
-spec list_realtime_contact_analysis_segments_v2(aws_client:aws_client(), binary() | list(), binary() | list(), list_realtime_contact_analysis_segments_v2_request()) ->
    {ok, list_realtime_contact_analysis_segments_v2_response(), tuple()} |
    {error, any()} |
    {error, list_realtime_contact_analysis_segments_v2_errors(), tuple()}.
list_realtime_contact_analysis_segments_v2(Client, ContactId, InstanceId, Input) ->
    list_realtime_contact_analysis_segments_v2(Client, ContactId, InstanceId, Input, []).

-spec list_realtime_contact_analysis_segments_v2(aws_client:aws_client(), binary() | list(), binary() | list(), list_realtime_contact_analysis_segments_v2_request(), proplists:proplist()) ->
    {ok, list_realtime_contact_analysis_segments_v2_response(), tuple()} |
    {error, any()} |
    {error, list_realtime_contact_analysis_segments_v2_errors(), tuple()}.
list_realtime_contact_analysis_segments_v2(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact/list-real-time-analysis-segments-v2/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
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

%% @doc Lists the queues associated with a routing profile.
-spec list_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_routing_profile_queues_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profile_queues_errors(), tuple()}.
list_routing_profile_queues(Client, InstanceId, RoutingProfileId)
  when is_map(Client) ->
    list_routing_profile_queues(Client, InstanceId, RoutingProfileId, #{}, #{}).

-spec list_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_routing_profile_queues_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profile_queues_errors(), tuple()}.
list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, []).

-spec list_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routing_profile_queues_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profile_queues_errors(), tuple()}.
list_routing_profile_queues(Client, InstanceId, RoutingProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
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

%% @doc Provides summary information about the routing profiles for the
%% specified Amazon Connect
%% instance.
%%
%% For more information about routing profiles, see Routing Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html
%% and Create a Routing
%% Profile:
%% https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html
%% in the Amazon Connect Administrator Guide.
-spec list_routing_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_routing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profiles_errors(), tuple()}.
list_routing_profiles(Client, InstanceId)
  when is_map(Client) ->
    list_routing_profiles(Client, InstanceId, #{}, #{}).

-spec list_routing_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_routing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profiles_errors(), tuple()}.
list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_routing_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_routing_profiles_errors(), tuple()}.
list_routing_profiles(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routing-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc List all rules for the specified Amazon Connect instance.
-spec list_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, InstanceId)
  when is_map(Client) ->
    list_rules(Client, InstanceId, #{}, #{}).

-spec list_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_security_keys(aws_client:aws_client(), binary() | list()) ->
    {ok, list_security_keys_response(), tuple()} |
    {error, any()} |
    {error, list_security_keys_errors(), tuple()}.
list_security_keys(Client, InstanceId)
  when is_map(Client) ->
    list_security_keys(Client, InstanceId, #{}, #{}).

-spec list_security_keys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_security_keys_response(), tuple()} |
    {error, any()} |
    {error, list_security_keys_errors(), tuple()}.
list_security_keys(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_keys(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_security_keys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_keys_response(), tuple()} |
    {error, any()} |
    {error, list_security_keys_errors(), tuple()}.
list_security_keys(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/security-keys"],
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

%% @doc Returns a list of third-party applications in a specific security
%% profile.
-spec list_security_profile_applications(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_security_profile_applications_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_applications_errors(), tuple()}.
list_security_profile_applications(Client, InstanceId, SecurityProfileId)
  when is_map(Client) ->
    list_security_profile_applications(Client, InstanceId, SecurityProfileId, #{}, #{}).

-spec list_security_profile_applications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_security_profile_applications_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_applications_errors(), tuple()}.
list_security_profile_applications(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profile_applications(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, []).

-spec list_security_profile_applications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_profile_applications_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_applications_errors(), tuple()}.
list_security_profile_applications(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-applications/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
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

%% @doc Lists the permissions granted to a security profile.
%%
%% For information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec list_security_profile_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_security_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_permissions_errors(), tuple()}.
list_security_profile_permissions(Client, InstanceId, SecurityProfileId)
  when is_map(Client) ->
    list_security_profile_permissions(Client, InstanceId, SecurityProfileId, #{}, #{}).

-spec list_security_profile_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_security_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_permissions_errors(), tuple()}.
list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, []).

-spec list_security_profile_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_security_profile_permissions_errors(), tuple()}.
list_security_profile_permissions(Client, InstanceId, SecurityProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-permissions/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
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

%% @doc Provides summary information about the security profiles for the
%% specified Amazon Connect instance.
%%
%% For more information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec list_security_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client, InstanceId)
  when is_map(Client) ->
    list_security_profiles(Client, InstanceId, #{}, #{}).

-spec list_security_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_security_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Lists the tags for the specified resource.
%%
%% For sample policies that use tags, see Amazon Connect
%% Identity-Based Policy Examples:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
%% in the Amazon Connect Administrator
%% Guide.
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

%% @doc Lists task templates for the specified Amazon Connect instance.
-spec list_task_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_task_templates_response(), tuple()} |
    {error, any()} |
    {error, list_task_templates_errors(), tuple()}.
list_task_templates(Client, InstanceId)
  when is_map(Client) ->
    list_task_templates(Client, InstanceId, #{}, #{}).

-spec list_task_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_task_templates_response(), tuple()} |
    {error, any()} |
    {error, list_task_templates_errors(), tuple()}.
list_task_templates(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_task_templates(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_task_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_task_templates_response(), tuple()} |
    {error, any()} |
    {error, list_task_templates_errors(), tuple()}.
list_task_templates(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template"],
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
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists traffic distribution group users.
-spec list_traffic_distribution_group_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_traffic_distribution_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_group_users_errors(), tuple()}.
list_traffic_distribution_group_users(Client, TrafficDistributionGroupId)
  when is_map(Client) ->
    list_traffic_distribution_group_users(Client, TrafficDistributionGroupId, #{}, #{}).

-spec list_traffic_distribution_group_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_traffic_distribution_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_group_users_errors(), tuple()}.
list_traffic_distribution_group_users(Client, TrafficDistributionGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_distribution_group_users(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, []).

-spec list_traffic_distribution_group_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_distribution_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_group_users_errors(), tuple()}.
list_traffic_distribution_group_users(Client, TrafficDistributionGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution-group/", aws_util:encode_uri(TrafficDistributionGroupId), "/user"],
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

%% @doc Lists traffic distribution groups.
-spec list_traffic_distribution_groups(aws_client:aws_client()) ->
    {ok, list_traffic_distribution_groups_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_groups_errors(), tuple()}.
list_traffic_distribution_groups(Client)
  when is_map(Client) ->
    list_traffic_distribution_groups(Client, #{}, #{}).

-spec list_traffic_distribution_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_traffic_distribution_groups_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_groups_errors(), tuple()}.
list_traffic_distribution_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_distribution_groups(Client, QueryMap, HeadersMap, []).

-spec list_traffic_distribution_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_distribution_groups_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_distribution_groups_errors(), tuple()}.
list_traffic_distribution_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/traffic-distribution-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_use_cases(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_use_cases_response(), tuple()} |
    {error, any()} |
    {error, list_use_cases_errors(), tuple()}.
list_use_cases(Client, InstanceId, IntegrationAssociationId)
  when is_map(Client) ->
    list_use_cases(Client, InstanceId, IntegrationAssociationId, #{}, #{}).

-spec list_use_cases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_use_cases_response(), tuple()} |
    {error, any()} |
    {error, list_use_cases_errors(), tuple()}.
list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap, []).

-spec list_use_cases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_use_cases_response(), tuple()} |
    {error, any()} |
    {error, list_use_cases_errors(), tuple()}.
list_use_cases(Client, InstanceId, IntegrationAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/integration-associations/", aws_util:encode_uri(IntegrationAssociationId), "/use-cases"],
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

%% @doc Provides summary information about the hierarchy groups for the
%% specified Amazon Connect
%% instance.
%%
%% For more information about agent hierarchies, see Set Up Agent
%% Hierarchies:
%% https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html
%% in the
%% Amazon Connect Administrator Guide.
-spec list_user_hierarchy_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_user_hierarchy_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_hierarchy_groups_errors(), tuple()}.
list_user_hierarchy_groups(Client, InstanceId)
  when is_map(Client) ->
    list_user_hierarchy_groups(Client, InstanceId, #{}, #{}).

-spec list_user_hierarchy_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_user_hierarchy_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_hierarchy_groups_errors(), tuple()}.
list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_user_hierarchy_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_user_hierarchy_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_hierarchy_groups_errors(), tuple()}.
list_user_hierarchy_groups(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user-hierarchy-groups-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Lists proficiencies associated with a user.
-spec list_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_user_proficiencies_response(), tuple()} |
    {error, any()} |
    {error, list_user_proficiencies_errors(), tuple()}.
list_user_proficiencies(Client, InstanceId, UserId)
  when is_map(Client) ->
    list_user_proficiencies(Client, InstanceId, UserId, #{}, #{}).

-spec list_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_user_proficiencies_response(), tuple()} |
    {error, any()} |
    {error, list_user_proficiencies_errors(), tuple()}.
list_user_proficiencies(Client, InstanceId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_proficiencies(Client, InstanceId, UserId, QueryMap, HeadersMap, []).

-spec list_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_user_proficiencies_response(), tuple()} |
    {error, any()} |
    {error, list_user_proficiencies_errors(), tuple()}.
list_user_proficiencies(Client, InstanceId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/proficiencies"],
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

%% @doc Provides summary information about the users for the specified Amazon
%% Connect
%% instance.
-spec list_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, InstanceId)
  when is_map(Client) ->
    list_users(Client, InstanceId, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/users-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Returns all the available versions for the specified Amazon Connect
%% instance and view
%% identifier.
%%
%% Results will be sorted from highest to lowest.
-spec list_view_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_view_versions_response(), tuple()} |
    {error, any()} |
    {error, list_view_versions_errors(), tuple()}.
list_view_versions(Client, InstanceId, ViewId)
  when is_map(Client) ->
    list_view_versions(Client, InstanceId, ViewId, #{}, #{}).

-spec list_view_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_view_versions_response(), tuple()} |
    {error, any()} |
    {error, list_view_versions_errors(), tuple()}.
list_view_versions(Client, InstanceId, ViewId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_view_versions(Client, InstanceId, ViewId, QueryMap, HeadersMap, []).

-spec list_view_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_view_versions_response(), tuple()} |
    {error, any()} |
    {error, list_view_versions_errors(), tuple()}.
list_view_versions(Client, InstanceId, ViewId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), "/versions"],
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

%% @doc Returns views in the given instance.
%%
%% Results are sorted primarily by type, and secondarily by name.
-spec list_views(aws_client:aws_client(), binary() | list()) ->
    {ok, list_views_response(), tuple()} |
    {error, any()} |
    {error, list_views_errors(), tuple()}.
list_views(Client, InstanceId)
  when is_map(Client) ->
    list_views(Client, InstanceId, #{}, #{}).

-spec list_views(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_views_response(), tuple()} |
    {error, any()} |
    {error, list_views_errors(), tuple()}.
list_views(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_views(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_views(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_views_response(), tuple()} |
    {error, any()} |
    {error, list_views_errors(), tuple()}.
list_views(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/views/", aws_util:encode_uri(InstanceId), ""],
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
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Initiates silent monitoring of a contact.
%%
%% The Contact Control Panel (CCP) of the user
%% specified by userId will be set to silent monitoring mode on the
%% contact.
-spec monitor_contact(aws_client:aws_client(), monitor_contact_request()) ->
    {ok, monitor_contact_response(), tuple()} |
    {error, any()} |
    {error, monitor_contact_errors(), tuple()}.
monitor_contact(Client, Input) ->
    monitor_contact(Client, Input, []).

-spec monitor_contact(aws_client:aws_client(), monitor_contact_request(), proplists:proplist()) ->
    {ok, monitor_contact_response(), tuple()} |
    {error, any()} |
    {error, monitor_contact_errors(), tuple()}.
monitor_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/monitor"],
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

%% @doc Allows pausing an ongoing task contact.
-spec pause_contact(aws_client:aws_client(), pause_contact_request()) ->
    {ok, pause_contact_response(), tuple()} |
    {error, any()} |
    {error, pause_contact_errors(), tuple()}.
pause_contact(Client, Input) ->
    pause_contact(Client, Input, []).

-spec pause_contact(aws_client:aws_client(), pause_contact_request(), proplists:proplist()) ->
    {ok, pause_contact_response(), tuple()} |
    {error, any()} |
    {error, pause_contact_errors(), tuple()}.
pause_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/pause"],
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

%% @doc Changes the current status of a user or agent in Amazon Connect.
%%
%% If the agent is
%% currently handling a contact, this sets the agent's next status.
%%
%% For more information, see Agent status:
%% https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html
%% and Set your next
%% status:
%% https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html
%% in the Amazon Connect Administrator Guide.
-spec put_user_status(aws_client:aws_client(), binary() | list(), binary() | list(), put_user_status_request()) ->
    {ok, put_user_status_response(), tuple()} |
    {error, any()} |
    {error, put_user_status_errors(), tuple()}.
put_user_status(Client, InstanceId, UserId, Input) ->
    put_user_status(Client, InstanceId, UserId, Input, []).

-spec put_user_status(aws_client:aws_client(), binary() | list(), binary() | list(), put_user_status_request(), proplists:proplist()) ->
    {ok, put_user_status_response(), tuple()} |
    {error, any()} |
    {error, put_user_status_errors(), tuple()}.
put_user_status(Client, InstanceId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/status"],
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

%% @doc Releases a phone number previously claimed to an Amazon Connect
%% instance or traffic distribution group.
%%
%% You
%% can call this API only in the Amazon Web Services Region where the number
%% was claimed.
%%
%% To release phone numbers from a traffic distribution group, use the
%% `ReleasePhoneNumber' API, not the
%% Amazon Connect admin website.
%%
%% After releasing a phone number, the phone number enters into a cooldown
%% period for up to
%% 180 days. It cannot be searched for or claimed again until the period has
%% ended. If you
%% accidentally release a phone number, contact Amazon Web ServicesSupport.
%%
%% If you plan to claim and release numbers frequently,
%% contact us for a service quota exception. Otherwise, it is possible you
%% will be blocked from
%% claiming and releasing any more numbers until up to 180 days past the
%% oldest number
%% released has expired.
%%
%% By default you can claim and release up to 200% of your maximum number of
%% active
%% phone numbers. If you claim and release phone numbers using
%% the UI or API during a rolling 180 day cycle that exceeds 200% of your
%% phone number
%% service level quota, you will be blocked from claiming any more numbers
%% until 180
%% days past the oldest number released has expired.
%%
%% For example, if you already have 99 claimed numbers and a service level
%% quota of 99 phone numbers, and in any 180
%% day period you release 99, claim 99, and then release 99, you will have
%% exceeded the
%% 200% limit. At that point you are blocked from claiming any more numbers
%% until you
%% open an Amazon Web Services support ticket.
-spec release_phone_number(aws_client:aws_client(), binary() | list(), release_phone_number_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, release_phone_number_errors(), tuple()}.
release_phone_number(Client, PhoneNumberId, Input) ->
    release_phone_number(Client, PhoneNumberId, Input, []).

-spec release_phone_number(aws_client:aws_client(), binary() | list(), release_phone_number_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, release_phone_number_errors(), tuple()}.
release_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
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
                     {<<"clientToken">>, <<"ClientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Replicates an Amazon Connect instance in the specified Amazon Web
%% Services Region and
%% copies configuration information for Amazon Connect resources across
%% Amazon Web Services Regions.
%%
%% For more information about replicating an Amazon Connect instance, see
%% Create
%% a replica of your existing Amazon Connect instance:
%% https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html
%% in the Amazon Connect
%% Administrator Guide.
-spec replicate_instance(aws_client:aws_client(), binary() | list(), replicate_instance_request()) ->
    {ok, replicate_instance_response(), tuple()} |
    {error, any()} |
    {error, replicate_instance_errors(), tuple()}.
replicate_instance(Client, InstanceId, Input) ->
    replicate_instance(Client, InstanceId, Input, []).

-spec replicate_instance(aws_client:aws_client(), binary() | list(), replicate_instance_request(), proplists:proplist()) ->
    {ok, replicate_instance_response(), tuple()} |
    {error, any()} |
    {error, replicate_instance_errors(), tuple()}.
replicate_instance(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/replicate"],
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

%% @doc Allows resuming a task contact in a paused state.
-spec resume_contact(aws_client:aws_client(), resume_contact_request()) ->
    {ok, resume_contact_response(), tuple()} |
    {error, any()} |
    {error, resume_contact_errors(), tuple()}.
resume_contact(Client, Input) ->
    resume_contact(Client, Input, []).

-spec resume_contact(aws_client:aws_client(), resume_contact_request(), proplists:proplist()) ->
    {ok, resume_contact_response(), tuple()} |
    {error, any()} |
    {error, resume_contact_errors(), tuple()}.
resume_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/resume"],
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

%% @doc When a contact is being recorded, and the recording has been
%% suspended using
%% SuspendContactRecording, this API resumes recording whatever recording is
%% selected in the flow
%% configuration: call, screen, or both.
%%
%% If only call recording or only screen recording is enabled,
%% then it would resume.
%%
%% Voice and screen recordings are supported.
-spec resume_contact_recording(aws_client:aws_client(), resume_contact_recording_request()) ->
    {ok, resume_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, resume_contact_recording_errors(), tuple()}.
resume_contact_recording(Client, Input) ->
    resume_contact_recording(Client, Input, []).

-spec resume_contact_recording(aws_client:aws_client(), resume_contact_recording_request(), proplists:proplist()) ->
    {ok, resume_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, resume_contact_recording_errors(), tuple()}.
resume_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/resume-recording"],
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

%% @doc Searches AgentStatuses in an Amazon Connect instance, with optional
%% filtering.
-spec search_agent_statuses(aws_client:aws_client(), search_agent_statuses_request()) ->
    {ok, search_agent_statuses_response(), tuple()} |
    {error, any()} |
    {error, search_agent_statuses_errors(), tuple()}.
search_agent_statuses(Client, Input) ->
    search_agent_statuses(Client, Input, []).

-spec search_agent_statuses(aws_client:aws_client(), search_agent_statuses_request(), proplists:proplist()) ->
    {ok, search_agent_statuses_response(), tuple()} |
    {error, any()} |
    {error, search_agent_statuses_errors(), tuple()}.
search_agent_statuses(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-agent-statuses"],
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

%% @doc Searches for available phone numbers that you can claim to your
%% Amazon Connect instance
%% or traffic distribution group.
%%
%% If the provided `TargetArn' is a traffic distribution group, you can
%% call this API in both
%% Amazon Web Services Regions associated with the traffic distribution
%% group.
-spec search_available_phone_numbers(aws_client:aws_client(), search_available_phone_numbers_request()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, Input) ->
    search_available_phone_numbers(Client, Input, []).

-spec search_available_phone_numbers(aws_client:aws_client(), search_available_phone_numbers_request(), proplists:proplist()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number/search-available"],
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

%% @doc Searches the flow modules in an Amazon Connect instance, with
%% optional filtering.
-spec search_contact_flow_modules(aws_client:aws_client(), search_contact_flow_modules_request()) ->
    {ok, search_contact_flow_modules_response(), tuple()} |
    {error, any()} |
    {error, search_contact_flow_modules_errors(), tuple()}.
search_contact_flow_modules(Client, Input) ->
    search_contact_flow_modules(Client, Input, []).

-spec search_contact_flow_modules(aws_client:aws_client(), search_contact_flow_modules_request(), proplists:proplist()) ->
    {ok, search_contact_flow_modules_response(), tuple()} |
    {error, any()} |
    {error, search_contact_flow_modules_errors(), tuple()}.
search_contact_flow_modules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-contact-flow-modules"],
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

%% @doc Searches the flows in an Amazon Connect instance, with optional
%% filtering.
-spec search_contact_flows(aws_client:aws_client(), search_contact_flows_request()) ->
    {ok, search_contact_flows_response(), tuple()} |
    {error, any()} |
    {error, search_contact_flows_errors(), tuple()}.
search_contact_flows(Client, Input) ->
    search_contact_flows(Client, Input, []).

-spec search_contact_flows(aws_client:aws_client(), search_contact_flows_request(), proplists:proplist()) ->
    {ok, search_contact_flows_response(), tuple()} |
    {error, any()} |
    {error, search_contact_flows_errors(), tuple()}.
search_contact_flows(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-contact-flows"],
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

%% @doc Searches contacts in an Amazon Connect instance.
-spec search_contacts(aws_client:aws_client(), search_contacts_request()) ->
    {ok, search_contacts_response(), tuple()} |
    {error, any()} |
    {error, search_contacts_errors(), tuple()}.
search_contacts(Client, Input) ->
    search_contacts(Client, Input, []).

-spec search_contacts(aws_client:aws_client(), search_contacts_request(), proplists:proplist()) ->
    {ok, search_contacts_response(), tuple()} |
    {error, any()} |
    {error, search_contacts_errors(), tuple()}.
search_contacts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-contacts"],
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

%% @doc Searches email address in an instance, with optional filtering.
-spec search_email_addresses(aws_client:aws_client(), search_email_addresses_request()) ->
    {ok, search_email_addresses_response(), tuple()} |
    {error, any()} |
    {error, search_email_addresses_errors(), tuple()}.
search_email_addresses(Client, Input) ->
    search_email_addresses(Client, Input, []).

-spec search_email_addresses(aws_client:aws_client(), search_email_addresses_request(), proplists:proplist()) ->
    {ok, search_email_addresses_response(), tuple()} |
    {error, any()} |
    {error, search_email_addresses_errors(), tuple()}.
search_email_addresses(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-email-addresses"],
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

%% @doc Searches the hours of operation overrides.
-spec search_hours_of_operation_overrides(aws_client:aws_client(), search_hours_of_operation_overrides_request()) ->
    {ok, search_hours_of_operation_overrides_response(), tuple()} |
    {error, any()} |
    {error, search_hours_of_operation_overrides_errors(), tuple()}.
search_hours_of_operation_overrides(Client, Input) ->
    search_hours_of_operation_overrides(Client, Input, []).

-spec search_hours_of_operation_overrides(aws_client:aws_client(), search_hours_of_operation_overrides_request(), proplists:proplist()) ->
    {ok, search_hours_of_operation_overrides_response(), tuple()} |
    {error, any()} |
    {error, search_hours_of_operation_overrides_errors(), tuple()}.
search_hours_of_operation_overrides(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-hours-of-operation-overrides"],
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

%% @doc Searches the hours of operation in an Amazon Connect instance, with
%% optional
%% filtering.
-spec search_hours_of_operations(aws_client:aws_client(), search_hours_of_operations_request()) ->
    {ok, search_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, search_hours_of_operations_errors(), tuple()}.
search_hours_of_operations(Client, Input) ->
    search_hours_of_operations(Client, Input, []).

-spec search_hours_of_operations(aws_client:aws_client(), search_hours_of_operations_request(), proplists:proplist()) ->
    {ok, search_hours_of_operations_response(), tuple()} |
    {error, any()} |
    {error, search_hours_of_operations_errors(), tuple()}.
search_hours_of_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-hours-of-operations"],
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

%% @doc Searches predefined attributes that meet certain criteria.
%%
%% Predefined
%% attributes are attributes in an Amazon Connect instance that can be used
%% to route
%% contacts to an agent or pools of agents within a queue. For more
%% information, see Create
%% predefined attributes for routing contacts to agents:
%% https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html.
-spec search_predefined_attributes(aws_client:aws_client(), search_predefined_attributes_request()) ->
    {ok, search_predefined_attributes_response(), tuple()} |
    {error, any()} |
    {error, search_predefined_attributes_errors(), tuple()}.
search_predefined_attributes(Client, Input) ->
    search_predefined_attributes(Client, Input, []).

-spec search_predefined_attributes(aws_client:aws_client(), search_predefined_attributes_request(), proplists:proplist()) ->
    {ok, search_predefined_attributes_response(), tuple()} |
    {error, any()} |
    {error, search_predefined_attributes_errors(), tuple()}.
search_predefined_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-predefined-attributes"],
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

%% @doc Searches prompts in an Amazon Connect instance, with optional
%% filtering.
-spec search_prompts(aws_client:aws_client(), search_prompts_request()) ->
    {ok, search_prompts_response(), tuple()} |
    {error, any()} |
    {error, search_prompts_errors(), tuple()}.
search_prompts(Client, Input) ->
    search_prompts(Client, Input, []).

-spec search_prompts(aws_client:aws_client(), search_prompts_request(), proplists:proplist()) ->
    {ok, search_prompts_response(), tuple()} |
    {error, any()} |
    {error, search_prompts_errors(), tuple()}.
search_prompts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-prompts"],
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

%% @doc Searches queues in an Amazon Connect instance, with optional
%% filtering.
-spec search_queues(aws_client:aws_client(), search_queues_request()) ->
    {ok, search_queues_response(), tuple()} |
    {error, any()} |
    {error, search_queues_errors(), tuple()}.
search_queues(Client, Input) ->
    search_queues(Client, Input, []).

-spec search_queues(aws_client:aws_client(), search_queues_request(), proplists:proplist()) ->
    {ok, search_queues_response(), tuple()} |
    {error, any()} |
    {error, search_queues_errors(), tuple()}.
search_queues(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-queues"],
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

%% @doc Searches quick connects in an Amazon Connect instance, with optional
%% filtering.
-spec search_quick_connects(aws_client:aws_client(), search_quick_connects_request()) ->
    {ok, search_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, search_quick_connects_errors(), tuple()}.
search_quick_connects(Client, Input) ->
    search_quick_connects(Client, Input, []).

-spec search_quick_connects(aws_client:aws_client(), search_quick_connects_request(), proplists:proplist()) ->
    {ok, search_quick_connects_response(), tuple()} |
    {error, any()} |
    {error, search_quick_connects_errors(), tuple()}.
search_quick_connects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-quick-connects"],
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

%% @doc Searches tags used in an Amazon Connect instance using optional
%% search criteria.
-spec search_resource_tags(aws_client:aws_client(), search_resource_tags_request()) ->
    {ok, search_resource_tags_response(), tuple()} |
    {error, any()} |
    {error, search_resource_tags_errors(), tuple()}.
search_resource_tags(Client, Input) ->
    search_resource_tags(Client, Input, []).

-spec search_resource_tags(aws_client:aws_client(), search_resource_tags_request(), proplists:proplist()) ->
    {ok, search_resource_tags_response(), tuple()} |
    {error, any()} |
    {error, search_resource_tags_errors(), tuple()}.
search_resource_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-resource-tags"],
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

%% @doc Searches routing profiles in an Amazon Connect instance, with
%% optional filtering.
%%
%% `SearchRoutingProfiles' does not populate LastModifiedRegion,
%% LastModifiedTime,
%% MediaConcurrencies.CrossChannelBehavior, and AgentAvailabilityTimer in its
%% response, but DescribeRoutingProfile:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html
%% does.
-spec search_routing_profiles(aws_client:aws_client(), search_routing_profiles_request()) ->
    {ok, search_routing_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_routing_profiles_errors(), tuple()}.
search_routing_profiles(Client, Input) ->
    search_routing_profiles(Client, Input, []).

-spec search_routing_profiles(aws_client:aws_client(), search_routing_profiles_request(), proplists:proplist()) ->
    {ok, search_routing_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_routing_profiles_errors(), tuple()}.
search_routing_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-routing-profiles"],
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

%% @doc Searches security profiles in an Amazon Connect instance, with
%% optional
%% filtering.
%%
%% For information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec search_security_profiles(aws_client:aws_client(), search_security_profiles_request()) ->
    {ok, search_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_security_profiles_errors(), tuple()}.
search_security_profiles(Client, Input) ->
    search_security_profiles(Client, Input, []).

-spec search_security_profiles(aws_client:aws_client(), search_security_profiles_request(), proplists:proplist()) ->
    {ok, search_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_security_profiles_errors(), tuple()}.
search_security_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-security-profiles"],
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

%% @doc Searches UserHierarchyGroups in an Amazon Connect instance, with
%% optional
%% filtering.
%%
%% The UserHierarchyGroup with `&quot;LevelId&quot;: &quot;0&quot;' is
%% the foundation for building
%% levels on top of an instance. It is not user-definable, nor is it visible
%% in the UI.
-spec search_user_hierarchy_groups(aws_client:aws_client(), search_user_hierarchy_groups_request()) ->
    {ok, search_user_hierarchy_groups_response(), tuple()} |
    {error, any()} |
    {error, search_user_hierarchy_groups_errors(), tuple()}.
search_user_hierarchy_groups(Client, Input) ->
    search_user_hierarchy_groups(Client, Input, []).

-spec search_user_hierarchy_groups(aws_client:aws_client(), search_user_hierarchy_groups_request(), proplists:proplist()) ->
    {ok, search_user_hierarchy_groups_response(), tuple()} |
    {error, any()} |
    {error, search_user_hierarchy_groups_errors(), tuple()}.
search_user_hierarchy_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-user-hierarchy-groups"],
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

%% @doc Searches users in an Amazon Connect instance, with optional
%% filtering.
%%
%% `AfterContactWorkTimeLimit' is returned in milliseconds.
-spec search_users(aws_client:aws_client(), search_users_request()) ->
    {ok, search_users_response(), tuple()} |
    {error, any()} |
    {error, search_users_errors(), tuple()}.
search_users(Client, Input) ->
    search_users(Client, Input, []).

-spec search_users(aws_client:aws_client(), search_users_request(), proplists:proplist()) ->
    {ok, search_users_response(), tuple()} |
    {error, any()} |
    {error, search_users_errors(), tuple()}.
search_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-users"],
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

%% @doc Searches for vocabularies within a specific Amazon Connect instance
%% using
%% `State', `NameStartsWith', and `LanguageCode'.
-spec search_vocabularies(aws_client:aws_client(), binary() | list(), search_vocabularies_request()) ->
    {ok, search_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, search_vocabularies_errors(), tuple()}.
search_vocabularies(Client, InstanceId, Input) ->
    search_vocabularies(Client, InstanceId, Input, []).

-spec search_vocabularies(aws_client:aws_client(), binary() | list(), search_vocabularies_request(), proplists:proplist()) ->
    {ok, search_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, search_vocabularies_errors(), tuple()}.
search_vocabularies(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/vocabulary-summary/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Processes chat integration events from Amazon Web Services or
%% external integrations to
%% Amazon Connect.
%%
%% A chat integration event includes:
%%
%% SourceId, DestinationId, and Subtype: a set of identifiers, uniquely
%% representing a
%% chat
%%
%% ChatEvent: details of the chat action to perform such as sending a
%% message, event, or
%% disconnecting from a chat
%%
%% When a chat integration event is sent with chat identifiers that do not
%% map to an active
%% chat contact, a new chat contact is also created before handling chat
%% action.
%%
%% Access to this API is currently restricted to Amazon Web Services End User
%% Messaging for
%% supporting SMS integration.
-spec send_chat_integration_event(aws_client:aws_client(), send_chat_integration_event_request()) ->
    {ok, send_chat_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_chat_integration_event_errors(), tuple()}.
send_chat_integration_event(Client, Input) ->
    send_chat_integration_event(Client, Input, []).

-spec send_chat_integration_event(aws_client:aws_client(), send_chat_integration_event_request(), proplists:proplist()) ->
    {ok, send_chat_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_chat_integration_event_errors(), tuple()}.
send_chat_integration_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/chat-integration-event"],
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

%% @doc Send outbound email for outbound campaigns.
%%
%% For more information about outbound campaigns,
%% see Set up Amazon Connect outbound campaigns:
%% https://docs.aws.amazon.com/connect/latest/adminguide/enable-outbound-campaigns.html.
%%
%% Only the Amazon Connect outbound campaigns service principal is allowed to
%% assume a
%% role in your account and call this API.
-spec send_outbound_email(aws_client:aws_client(), binary() | list(), send_outbound_email_request()) ->
    {ok, send_outbound_email_response(), tuple()} |
    {error, any()} |
    {error, send_outbound_email_errors(), tuple()}.
send_outbound_email(Client, InstanceId, Input) ->
    send_outbound_email(Client, InstanceId, Input, []).

-spec send_outbound_email(aws_client:aws_client(), binary() | list(), send_outbound_email_request(), proplists:proplist()) ->
    {ok, send_outbound_email_response(), tuple()} |
    {error, any()} |
    {error, send_outbound_email_errors(), tuple()}.
send_outbound_email(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/outbound-email"],
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

%% @doc Provides a pre-signed Amazon S3 URL in response for uploading your
%% content.
%%
%% You may only use this API to upload attachments to an Amazon Connect Case:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html
%% or
%% Amazon Connect
%% Email:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html.
-spec start_attached_file_upload(aws_client:aws_client(), binary() | list(), start_attached_file_upload_request()) ->
    {ok, start_attached_file_upload_response(), tuple()} |
    {error, any()} |
    {error, start_attached_file_upload_errors(), tuple()}.
start_attached_file_upload(Client, InstanceId, Input) ->
    start_attached_file_upload(Client, InstanceId, Input, []).

-spec start_attached_file_upload(aws_client:aws_client(), binary() | list(), start_attached_file_upload_request(), proplists:proplist()) ->
    {ok, start_attached_file_upload_response(), tuple()} |
    {error, any()} |
    {error, start_attached_file_upload_errors(), tuple()}.
start_attached_file_upload(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/attached-files/", aws_util:encode_uri(InstanceId), ""],
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
                     {<<"associatedResourceArn">>, <<"AssociatedResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a flow to start a new chat for the customer.
%%
%% Response of this API provides a token
%% required to obtain credentials from the CreateParticipantConnection:
%% https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
%% API in the Amazon Connect Participant Service.
%%
%% When a new chat contact is successfully created, clients must subscribe to
%% the participant’s
%% connection for the created chat within 5 minutes. This is achieved by
%% invoking CreateParticipantConnection:
%% https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
%% with WEBSOCKET and CONNECTION_CREDENTIALS.
%%
%% A 429 error occurs in the following situations:
%%
%% API rate limit is exceeded. API TPS throttling returns a
%% `TooManyRequests'
%% exception.
%%
%% The quota for concurrent active
%% chats:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
%% is exceeded. Active chat throttling returns a
%% `LimitExceededException'.
%%
%% If you use the `ChatDurationInMinutes' parameter and receive a 400
%% error, your
%% account may not support the ability to configure custom chat durations.
%% For more information,
%% contact Amazon Web ServicesSupport.
%%
%% For more information about chat, see the following topics in the Amazon
%% Connect
%% Administrator Guide:
%%
%% Concepts: Web and mobile messaging capabilities in Amazon Connect:
%% https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html
%%
%% Amazon Connect Chat security best practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
-spec start_chat_contact(aws_client:aws_client(), start_chat_contact_request()) ->
    {ok, start_chat_contact_response(), tuple()} |
    {error, any()} |
    {error, start_chat_contact_errors(), tuple()}.
start_chat_contact(Client, Input) ->
    start_chat_contact(Client, Input, []).

-spec start_chat_contact(aws_client:aws_client(), start_chat_contact_request(), proplists:proplist()) ->
    {ok, start_chat_contact_response(), tuple()} |
    {error, any()} |
    {error, start_chat_contact_errors(), tuple()}.
start_chat_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/chat"],
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

%% @doc Starts an empty evaluation in the specified Amazon Connect instance,
%% using the given
%% evaluation form for the particular contact.
%%
%% The evaluation form version used for the contact
%% evaluation corresponds to the currently activated version. If no version
%% is activated for the
%% evaluation form, the contact evaluation cannot be started.
%%
%% Evaluations created through the public API do not contain answer values
%% suggested from
%% automation.
-spec start_contact_evaluation(aws_client:aws_client(), binary() | list(), start_contact_evaluation_request()) ->
    {ok, start_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_contact_evaluation_errors(), tuple()}.
start_contact_evaluation(Client, InstanceId, Input) ->
    start_contact_evaluation(Client, InstanceId, Input, []).

-spec start_contact_evaluation(aws_client:aws_client(), binary() | list(), start_contact_evaluation_request(), proplists:proplist()) ->
    {ok, start_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_contact_evaluation_errors(), tuple()}.
start_contact_evaluation(Client, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Starts recording the contact:
%%
%% If the API is called before the agent joins the call, recording
%% starts when the agent joins the call.
%%
%% If the API is called after the agent joins the call, recording starts
%% at the time of the API call.
%%
%% StartContactRecording is a one-time action. For example, if you use
%% StopContactRecording to
%% stop recording an ongoing call, you can't use StartContactRecording to
%% restart it. For scenarios
%% where the recording has started and you want to suspend and resume it,
%% such as when collecting
%% sensitive information (for example, a credit card number), use
%% SuspendContactRecording and
%% ResumeContactRecording.
%%
%% You can use this API to override the recording behavior configured in the
%% Set recording
%% behavior:
%% https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html
%% block.
%%
%% Only voice recordings are supported at this time.
-spec start_contact_recording(aws_client:aws_client(), start_contact_recording_request()) ->
    {ok, start_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, start_contact_recording_errors(), tuple()}.
start_contact_recording(Client, Input) ->
    start_contact_recording(Client, Input, []).

-spec start_contact_recording(aws_client:aws_client(), start_contact_recording_request(), proplists:proplist()) ->
    {ok, start_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, start_contact_recording_errors(), tuple()}.
start_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/start-recording"],
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

%% @doc Initiates real-time message streaming for a new chat contact.
%%
%% For more information about message streaming, see Enable real-time chat
%% message
%% streaming:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
%% in the Amazon Connect Administrator Guide.
%%
%% For more information about chat, see the following topics in the Amazon
%% Connect
%% Administrator Guide:
%%
%% Concepts: Web and mobile messaging capabilities in Amazon Connect:
%% https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html
%%
%% Amazon Connect Chat security best practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
-spec start_contact_streaming(aws_client:aws_client(), start_contact_streaming_request()) ->
    {ok, start_contact_streaming_response(), tuple()} |
    {error, any()} |
    {error, start_contact_streaming_errors(), tuple()}.
start_contact_streaming(Client, Input) ->
    start_contact_streaming(Client, Input, []).

-spec start_contact_streaming(aws_client:aws_client(), start_contact_streaming_request(), proplists:proplist()) ->
    {ok, start_contact_streaming_response(), tuple()} |
    {error, any()} |
    {error, start_contact_streaming_errors(), tuple()}.
start_contact_streaming(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/start-streaming"],
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

%% @doc Creates an inbound email contact and initiates a flow to start the
%% email contact for the
%% customer.
%%
%% Response of this API provides the ContactId of the email contact created.
-spec start_email_contact(aws_client:aws_client(), start_email_contact_request()) ->
    {ok, start_email_contact_response(), tuple()} |
    {error, any()} |
    {error, start_email_contact_errors(), tuple()}.
start_email_contact(Client, Input) ->
    start_email_contact(Client, Input, []).

-spec start_email_contact(aws_client:aws_client(), start_email_contact_request(), proplists:proplist()) ->
    {ok, start_email_contact_response(), tuple()} |
    {error, any()} |
    {error, start_email_contact_errors(), tuple()}.
start_email_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/email"],
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

%% @doc Initiates a new outbound SMS contact to a customer.
%%
%% Response of this API provides the
%% `ContactId' of the outbound SMS contact created.
%%
%% SourceEndpoint only supports Endpoints with
%% `CONNECT_PHONENUMBER_ARN' as Type and DestinationEndpoint only
%% supports Endpoints with `TELEPHONE_NUMBER' as
%% Type. ContactFlowId initiates the flow to manage the new SMS
%% contact created.
%%
%% This API can be used to initiate outbound SMS contacts for an agent, or it
%% can also deflect
%% an ongoing contact to an outbound SMS contact by using the
%% StartOutboundChatContact:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html
%% Flow Action.
%%
%% For more information about using SMS in Amazon Connect, see the following
%% topics in the
%% Amazon Connect Administrator Guide:
%%
%% Set
%% up SMS messaging:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-sms-messaging.html
%%
%% Request an
%% SMS-enabled phone number through AWS End User Messaging SMS:
%% https://docs.aws.amazon.com/connect/latest/adminguide/sms-number.html
-spec start_outbound_chat_contact(aws_client:aws_client(), start_outbound_chat_contact_request()) ->
    {ok, start_outbound_chat_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_chat_contact_errors(), tuple()}.
start_outbound_chat_contact(Client, Input) ->
    start_outbound_chat_contact(Client, Input, []).

-spec start_outbound_chat_contact(aws_client:aws_client(), start_outbound_chat_contact_request(), proplists:proplist()) ->
    {ok, start_outbound_chat_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_chat_contact_errors(), tuple()}.
start_outbound_chat_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/outbound-chat"],
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

%% @doc Initiates a flow to send an agent reply or outbound email contact
%% (created from the
%% CreateContact API) to a customer.
-spec start_outbound_email_contact(aws_client:aws_client(), start_outbound_email_contact_request()) ->
    {ok, start_outbound_email_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_email_contact_errors(), tuple()}.
start_outbound_email_contact(Client, Input) ->
    start_outbound_email_contact(Client, Input, []).

-spec start_outbound_email_contact(aws_client:aws_client(), start_outbound_email_contact_request(), proplists:proplist()) ->
    {ok, start_outbound_email_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_email_contact_errors(), tuple()}.
start_outbound_email_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/outbound-email"],
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

%% @doc Places an outbound call to a contact, and then initiates the flow.
%%
%% It performs the actions
%% in the flow that's specified (in `ContactFlowId').
%%
%% Agents do not initiate the outbound API, which means that they do not dial
%% the contact. If
%% the flow places an outbound call to a contact, and then puts the contact
%% in queue, the call is
%% then routed to the agent, like any other inbound case.
%%
%% There is a 60-second dialing timeout for this operation. If the call is
%% not connected after
%% 60 seconds, it fails.
%%
%% UK numbers with a 447 prefix are not allowed by default. Before you can
%% dial these UK
%% mobile numbers, you must submit a service quota increase request. For more
%% information, see
%% Amazon Connect Service Quotas:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% Campaign calls are not allowed by default. Before you can make a call with
%% `TrafficType' = `CAMPAIGN', you must submit a service quota
%% increase
%% request to the quota Amazon Connect campaigns:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas.
-spec start_outbound_voice_contact(aws_client:aws_client(), start_outbound_voice_contact_request()) ->
    {ok, start_outbound_voice_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_voice_contact_errors(), tuple()}.
start_outbound_voice_contact(Client, Input) ->
    start_outbound_voice_contact(Client, Input, []).

-spec start_outbound_voice_contact(aws_client:aws_client(), start_outbound_voice_contact_request(), proplists:proplist()) ->
    {ok, start_outbound_voice_contact_response(), tuple()} |
    {error, any()} |
    {error, start_outbound_voice_contact_errors(), tuple()}.
start_outbound_voice_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/outbound-voice"],
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

%% @doc Starts screen sharing for a contact.
%%
%% For more information about screen sharing, see Set up in-app, web,
%% video calling, and screen sharing capabilities:
%% https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html
%% in the Amazon Connect Administrator
%% Guide.
-spec start_screen_sharing(aws_client:aws_client(), start_screen_sharing_request()) ->
    {ok, start_screen_sharing_response(), tuple()} |
    {error, any()} |
    {error, start_screen_sharing_errors(), tuple()}.
start_screen_sharing(Client, Input) ->
    start_screen_sharing(Client, Input, []).

-spec start_screen_sharing(aws_client:aws_client(), start_screen_sharing_request(), proplists:proplist()) ->
    {ok, start_screen_sharing_response(), tuple()} |
    {error, any()} |
    {error, start_screen_sharing_errors(), tuple()}.
start_screen_sharing(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/screen-sharing"],
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

%% @doc Initiates a flow to start a new task contact.
%%
%% For more information about task contacts, see
%% Concepts: Tasks in
%% Amazon Connect:
%% https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html in the
%% Amazon Connect Administrator Guide.
%%
%% When using `PreviousContactId' and `RelatedContactId' input
%% parameters, note the following:
%%
%% `PreviousContactId'
%%
%% Any updates to user-defined task contact attributes on any contact linked
%% through the
%% same `PreviousContactId' will affect every contact in the chain.
%%
%% There can be a maximum of 12 linked task contacts in a chain. That is, 12
%% task contacts
%% can be created that share the same `PreviousContactId'.
%%
%% `RelatedContactId'
%%
%% Copies contact attributes from the related task contact to the new
%% contact.
%%
%% Any update on attributes in a new task contact does not update attributes
%% on previous
%% contact.
%%
%% There’s no limit on the number of task contacts that can be created that
%% use the same
%% `RelatedContactId'.
%%
%% In addition, when calling StartTaskContact include only one of these
%% parameters:
%% `ContactFlowID', `QuickConnectID', or `TaskTemplateID'. Only
%% one parameter is required as long as the task template has a flow
%% configured to run it. If more
%% than one parameter is specified, or only the `TaskTemplateID' is
%% specified but it does
%% not have a flow configured, the request returns an error because Amazon
%% Connect cannot
%% identify the unique flow to run when the task is created.
%%
%% A `ServiceQuotaExceededException' occurs when the number of open tasks
%% exceeds
%% the active tasks quota or there are already 12 tasks referencing the same
%% `PreviousContactId'. For more information about service quotas for
%% task contacts, see
%% Amazon Connect service quotas:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
%% in the Amazon Connect Administrator
%% Guide.
-spec start_task_contact(aws_client:aws_client(), start_task_contact_request()) ->
    {ok, start_task_contact_response(), tuple()} |
    {error, any()} |
    {error, start_task_contact_errors(), tuple()}.
start_task_contact(Client, Input) ->
    start_task_contact(Client, Input, []).

-spec start_task_contact(aws_client:aws_client(), start_task_contact_request(), proplists:proplist()) ->
    {ok, start_task_contact_response(), tuple()} |
    {error, any()} |
    {error, start_task_contact_errors(), tuple()}.
start_task_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/task"],
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

%% @doc Places an inbound in-app, web, or video call to a contact, and then
%% initiates the flow.
%%
%% It
%% performs the actions in the flow that are specified (in ContactFlowId) and
%% present in the Amazon Connect instance (specified as InstanceId).
-spec start_web_r_t_c_contact(aws_client:aws_client(), start_web_r_t_c_contact_request()) ->
    {ok, start_web_r_t_c_contact_response(), tuple()} |
    {error, any()} |
    {error, start_web_r_t_c_contact_errors(), tuple()}.
start_web_r_t_c_contact(Client, Input) ->
    start_web_r_t_c_contact(Client, Input, []).

-spec start_web_r_t_c_contact(aws_client:aws_client(), start_web_r_t_c_contact_request(), proplists:proplist()) ->
    {ok, start_web_r_t_c_contact_response(), tuple()} |
    {error, any()} |
    {error, start_web_r_t_c_contact_errors(), tuple()}.
start_web_r_t_c_contact(Client, Input0, Options0) ->
    Method = put,
    Path = ["/contact/webrtc"],
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

%% @doc Ends the specified contact.
%%
%% Use this API to stop queued callbacks. It does not work for
%% voice contacts that use the following initiation methods:
%%
%% DISCONNECT
%%
%% TRANSFER
%%
%% QUEUE_TRANSFER
%%
%% EXTERNAL_OUTBOUND
%%
%% MONITOR
%%
%% Chat and task contacts can be terminated in any state, regardless of
%% initiation
%% method.
-spec stop_contact(aws_client:aws_client(), stop_contact_request()) ->
    {ok, stop_contact_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_errors(), tuple()}.
stop_contact(Client, Input) ->
    stop_contact(Client, Input, []).

-spec stop_contact(aws_client:aws_client(), stop_contact_request(), proplists:proplist()) ->
    {ok, stop_contact_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_errors(), tuple()}.
stop_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop"],
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

%% @doc Stops recording a call when a contact is being recorded.
%%
%% StopContactRecording is a one-time
%% action. If you use StopContactRecording to stop recording an ongoing call,
%% you can't use
%% StartContactRecording to restart it. For scenarios where the recording has
%% started and you want
%% to suspend it for sensitive information (for example, to collect a credit
%% card number), and then
%% restart it, use SuspendContactRecording and ResumeContactRecording.
%%
%% Only voice recordings are supported at this time.
-spec stop_contact_recording(aws_client:aws_client(), stop_contact_recording_request()) ->
    {ok, stop_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_recording_errors(), tuple()}.
stop_contact_recording(Client, Input) ->
    stop_contact_recording(Client, Input, []).

-spec stop_contact_recording(aws_client:aws_client(), stop_contact_recording_request(), proplists:proplist()) ->
    {ok, stop_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_recording_errors(), tuple()}.
stop_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop-recording"],
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

%% @doc Ends message streaming on a specified contact.
%%
%% To restart message streaming on that
%% contact, call the StartContactStreaming:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
%% API.
-spec stop_contact_streaming(aws_client:aws_client(), stop_contact_streaming_request()) ->
    {ok, stop_contact_streaming_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_streaming_errors(), tuple()}.
stop_contact_streaming(Client, Input) ->
    stop_contact_streaming(Client, Input, []).

-spec stop_contact_streaming(aws_client:aws_client(), stop_contact_streaming_request(), proplists:proplist()) ->
    {ok, stop_contact_streaming_response(), tuple()} |
    {error, any()} |
    {error, stop_contact_streaming_errors(), tuple()}.
stop_contact_streaming(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/stop-streaming"],
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

%% @doc Submits a contact evaluation in the specified Amazon Connect
%% instance.
%%
%% Answers included
%% in the request are merged with existing answers for the given evaluation.
%% If no answers or notes
%% are passed, the evaluation is submitted with the existing answers and
%% notes. You can delete an
%% answer or note by passing an empty object (`{}') to the question
%% identifier.
%%
%% If a contact evaluation is already in submitted state, this operation will
%% trigger a
%% resubmission.
-spec submit_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), submit_contact_evaluation_request()) ->
    {ok, submit_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, submit_contact_evaluation_errors(), tuple()}.
submit_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    submit_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).

-spec submit_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), submit_contact_evaluation_request(), proplists:proplist()) ->
    {ok, submit_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, submit_contact_evaluation_errors(), tuple()}.
submit_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), "/submit"],
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

%% @doc When a contact is being recorded, this API suspends recording
%% whatever is selected in the
%% flow configuration: call (IVR or agent), screen, or both.
%%
%% If only call recording or only screen
%% recording is enabled, then it would be suspended. For example, you might
%% suspend the screen
%% recording while collecting sensitive information, such as a credit card
%% number. Then use ResumeContactRecording:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ResumeContactRecording.html
%% to restart recording the screen.
%%
%% The period of time that the recording is suspended is filled with silence
%% in the final
%% recording.
%%
%% Voice (IVR, agent) and screen recordings are supported.
-spec suspend_contact_recording(aws_client:aws_client(), suspend_contact_recording_request()) ->
    {ok, suspend_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, suspend_contact_recording_errors(), tuple()}.
suspend_contact_recording(Client, Input) ->
    suspend_contact_recording(Client, Input, []).

-spec suspend_contact_recording(aws_client:aws_client(), suspend_contact_recording_request(), proplists:proplist()) ->
    {ok, suspend_contact_recording_response(), tuple()} |
    {error, any()} |
    {error, suspend_contact_recording_errors(), tuple()}.
suspend_contact_recording(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/suspend-recording"],
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

%% @doc Adds the specified tags to the contact resource.
%%
%% For more information about this API is
%% used, see Set
%% up granular billing for a detailed view of your Amazon Connect usage:
%% https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html.
-spec tag_contact(aws_client:aws_client(), tag_contact_request()) ->
    {ok, tag_contact_response(), tuple()} |
    {error, any()} |
    {error, tag_contact_errors(), tuple()}.
tag_contact(Client, Input) ->
    tag_contact(Client, Input, []).

-spec tag_contact(aws_client:aws_client(), tag_contact_request(), proplists:proplist()) ->
    {ok, tag_contact_response(), tuple()} |
    {error, any()} |
    {error, tag_contact_errors(), tuple()}.
tag_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/tags"],
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

%% @doc Adds the specified tags to the specified resource.
%%
%% Some of the supported resource types are agents, routing profiles, queues,
%% quick connects,
%% flows, agent statuses, hours of operation, phone numbers, security
%% profiles, and task templates.
%% For a complete list, see Tagging resources in Amazon Connect:
%% https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html.
%%
%% For sample policies that use tags, see Amazon Connect
%% Identity-Based Policy Examples:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
%% in the Amazon Connect Administrator
%% Guide.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Transfers `TASK' or `EMAIL'
%% contacts from one agent or queue to another agent or queue at any point
%% after a contact is created.
%%
%% You can transfer a contact to another queue by providing the flow
%% which orchestrates the contact to the destination queue. This gives you
%% more control over contact
%% handling and helps you adhere to the service level agreement (SLA)
%% guaranteed to your
%% customers.
%%
%% Note the following requirements:
%%
%% Transfer is only supported for `TASK' and `EMAIL' contacts.
%%
%% Do not use both `QueueId' and `UserId' in the same call.
%%
%% The following flow types are supported: Inbound flow, Transfer to agent
%% flow, and Transfer
%% to queue flow.
%%
%% The `TransferContact' API can be called only on active contacts.
%%
%% A contact cannot be transferred more than 11 times.
-spec transfer_contact(aws_client:aws_client(), transfer_contact_request()) ->
    {ok, transfer_contact_response(), tuple()} |
    {error, any()} |
    {error, transfer_contact_errors(), tuple()}.
transfer_contact(Client, Input) ->
    transfer_contact(Client, Input, []).

-spec transfer_contact(aws_client:aws_client(), transfer_contact_request(), proplists:proplist()) ->
    {ok, transfer_contact_response(), tuple()} |
    {error, any()} |
    {error, transfer_contact_errors(), tuple()}.
transfer_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/transfer"],
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

%% @doc Removes the specified tags from the contact resource.
%%
%% For more information about this API is
%% used, see Set
%% up granular billing for a detailed view of your Amazon Connect usage:
%% https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html.
-spec untag_contact(aws_client:aws_client(), binary() | list(), binary() | list(), untag_contact_request()) ->
    {ok, untag_contact_response(), tuple()} |
    {error, any()} |
    {error, untag_contact_errors(), tuple()}.
untag_contact(Client, ContactId, InstanceId, Input) ->
    untag_contact(Client, ContactId, InstanceId, Input, []).

-spec untag_contact(aws_client:aws_client(), binary() | list(), binary() | list(), untag_contact_request(), proplists:proplist()) ->
    {ok, untag_contact_response(), tuple()} |
    {error, any()} |
    {error, untag_contact_errors(), tuple()}.
untag_contact(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact/tags/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
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
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Updates agent status.
-spec update_agent_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_status_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_agent_status_errors(), tuple()}.
update_agent_status(Client, AgentStatusId, InstanceId, Input) ->
    update_agent_status(Client, AgentStatusId, InstanceId, Input, []).

-spec update_agent_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_status_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_agent_status_errors(), tuple()}.
update_agent_status(Client, AgentStatusId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/agent-status/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AgentStatusId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% To
%% request access to this API, contact Amazon Web ServicesSupport.
%%
%% Updates the selected authentication profile.
-spec update_authentication_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_authentication_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_authentication_profile_errors(), tuple()}.
update_authentication_profile(Client, AuthenticationProfileId, InstanceId, Input) ->
    update_authentication_profile(Client, AuthenticationProfileId, InstanceId, Input, []).

-spec update_authentication_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_authentication_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_authentication_profile_errors(), tuple()}.
update_authentication_profile(Client, AuthenticationProfileId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/authentication-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(AuthenticationProfileId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Adds or updates user-defined contact information associated with the
%% specified contact. At
%% least one field to be updated must be present in the request.
%%
%% You can add or update user-defined contact information for both ongoing
%% and completed
%% contacts.
-spec update_contact(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_request()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, ContactId, InstanceId, Input) ->
    update_contact(Client, ContactId, InstanceId, Input, []).

-spec update_contact(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_request(), proplists:proplist()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contacts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
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

%% @doc Creates or updates
%% user-defined contact attributes
%% associated with the specified contact.
%%
%% You can create or update user-defined attributes for both ongoing and
%% completed contacts.
%% For example, while the call is active, you can update the customer's
%% name or the reason the
%% customer called. You can add notes about steps that the agent took during
%% the call that display
%% to the next agent that takes the call. You can also update attributes for
%% a contact using data
%% from your CRM application and save the data with the contact in Amazon
%% Connect. You could
%% also flag calls for additional analysis, such as legal review or to
%% identify abusive
%% callers.
%%
%% Contact attributes are available in Amazon Connect for 24 months, and are
%% then deleted.
%% For information about contact record retention and the maximum size of the
%% contact record
%% attributes section, see Feature
%% specifications:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
%% in the Amazon Connect Administrator Guide.
-spec update_contact_attributes(aws_client:aws_client(), update_contact_attributes_request()) ->
    {ok, update_contact_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_contact_attributes_errors(), tuple()}.
update_contact_attributes(Client, Input) ->
    update_contact_attributes(Client, Input, []).

-spec update_contact_attributes(aws_client:aws_client(), update_contact_attributes_request(), proplists:proplist()) ->
    {ok, update_contact_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_contact_attributes_errors(), tuple()}.
update_contact_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/attributes"],
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

%% @doc Updates details about a contact evaluation in the specified Amazon
%% Connect instance.
%%
%% A
%% contact evaluation must be in draft state. Answers included in the request
%% are merged with
%% existing answers for the given evaluation. An answer or note can be
%% deleted by passing an empty
%% object (`{}') to the question identifier.
-spec update_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_evaluation_request()) ->
    {ok, update_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, update_contact_evaluation_errors(), tuple()}.
update_contact_evaluation(Client, EvaluationId, InstanceId, Input) ->
    update_contact_evaluation(Client, EvaluationId, InstanceId, Input, []).

-spec update_contact_evaluation(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_evaluation_request(), proplists:proplist()) ->
    {ok, update_contact_evaluation_response(), tuple()} |
    {error, any()} |
    {error, update_contact_evaluation_errors(), tuple()}.
update_contact_evaluation(Client, EvaluationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-evaluations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationId), ""],
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

%% @doc Updates the specified flow.
%%
%% You can also create and update flows using the Amazon Connect
%% Flow language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html.
%%
%% Use the `$SAVED' alias in the request to describe the `SAVED'
%% content
%% of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED'. After
%% a flow is
%% published, `$SAVED' needs to be supplied to view saved content that
%% has not been
%% published.
-spec update_contact_flow_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_content_request()) ->
    {ok, update_contact_flow_content_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_content_errors(), tuple()}.
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_content(Client, ContactFlowId, InstanceId, Input, []).

-spec update_contact_flow_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_content_request(), proplists:proplist()) ->
    {ok, update_contact_flow_content_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_content_errors(), tuple()}.
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/content"],
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

%% @doc Updates metadata about specified flow.
-spec update_contact_flow_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_metadata_request()) ->
    {ok, update_contact_flow_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_metadata_errors(), tuple()}.
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input, []).

-spec update_contact_flow_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_metadata_request(), proplists:proplist()) ->
    {ok, update_contact_flow_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_metadata_errors(), tuple()}.
update_contact_flow_metadata(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/metadata"],
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

%% @doc Updates specified flow module for the specified Amazon Connect
%% instance.
%%
%% Use the `$SAVED' alias in the request to describe the `SAVED'
%% content
%% of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED'. After
%% a flow is
%% published, `$SAVED' needs to be supplied to view saved content that
%% has not been
%% published.
-spec update_contact_flow_module_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_module_content_request()) ->
    {ok, update_contact_flow_module_content_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_module_content_errors(), tuple()}.
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input, []).

-spec update_contact_flow_module_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_module_content_request(), proplists:proplist()) ->
    {ok, update_contact_flow_module_content_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_module_content_errors(), tuple()}.
update_contact_flow_module_content(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/content"],
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

%% @doc Updates metadata about specified flow module.
-spec update_contact_flow_module_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_module_metadata_request()) ->
    {ok, update_contact_flow_module_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_module_metadata_errors(), tuple()}.
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input) ->
    update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input, []).

-spec update_contact_flow_module_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_module_metadata_request(), proplists:proplist()) ->
    {ok, update_contact_flow_module_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_module_metadata_errors(), tuple()}.
update_contact_flow_module_metadata(Client, ContactFlowModuleId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flow-modules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowModuleId), "/metadata"],
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

%% @doc The name of the flow.
%%
%% You can also create and update flows using the Amazon Connect
%% Flow language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html.
-spec update_contact_flow_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_name_request()) ->
    {ok, update_contact_flow_name_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_name_errors(), tuple()}.
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_name(Client, ContactFlowId, InstanceId, Input, []).

-spec update_contact_flow_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_flow_name_request(), proplists:proplist()) ->
    {ok, update_contact_flow_name_response(), tuple()} |
    {error, any()} |
    {error, update_contact_flow_name_errors(), tuple()}.
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/name"],
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

%% @doc Updates routing priority and age on the contact (QueuePriority and
%% QueueTimeAdjustmentInSeconds).
%%
%% These properties can be used to change a customer's position in the
%% queue. For example, you can
%% move a contact to the back of the queue by setting a lower routing
%% priority relative to other
%% contacts in queue; or you can move a contact to the front of the queue by
%% increasing the routing
%% age which will make the contact look artificially older and therefore
%% higher up in the
%% first-in-first-out routing order. Note that adjusting the routing age of a
%% contact affects only
%% its position in queue, and not its actual queue wait time as reported
%% through metrics. These
%% properties can also be updated by using the Set routing priority / age
%% flow
%% block:
%% https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html.
%%
%% Either QueuePriority or QueueTimeAdjustmentInSeconds should be provided
%% within the request body, but not
%% both.
-spec update_contact_routing_data(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_routing_data_request()) ->
    {ok, update_contact_routing_data_response(), tuple()} |
    {error, any()} |
    {error, update_contact_routing_data_errors(), tuple()}.
update_contact_routing_data(Client, ContactId, InstanceId, Input) ->
    update_contact_routing_data(Client, ContactId, InstanceId, Input, []).

-spec update_contact_routing_data(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_routing_data_request(), proplists:proplist()) ->
    {ok, update_contact_routing_data_response(), tuple()} |
    {error, any()} |
    {error, update_contact_routing_data_errors(), tuple()}.
update_contact_routing_data(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/contacts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), "/routing-data"],
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

%% @doc Updates the scheduled time of a task contact that is already
%% scheduled.
-spec update_contact_schedule(aws_client:aws_client(), update_contact_schedule_request()) ->
    {ok, update_contact_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_contact_schedule_errors(), tuple()}.
update_contact_schedule(Client, Input) ->
    update_contact_schedule(Client, Input, []).

-spec update_contact_schedule(aws_client:aws_client(), update_contact_schedule_request(), proplists:proplist()) ->
    {ok, update_contact_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_contact_schedule_errors(), tuple()}.
update_contact_schedule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/schedule"],
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

%% @doc Updates an email address metadata.
%%
%% For more information about email addresses, see Create email
%% addresses:
%% https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html
%% in the Amazon Connect Administrator Guide.
-spec update_email_address_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_email_address_metadata_request()) ->
    {ok, update_email_address_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_email_address_metadata_errors(), tuple()}.
update_email_address_metadata(Client, EmailAddressId, InstanceId, Input) ->
    update_email_address_metadata(Client, EmailAddressId, InstanceId, Input, []).

-spec update_email_address_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_email_address_metadata_request(), proplists:proplist()) ->
    {ok, update_email_address_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_email_address_metadata_errors(), tuple()}.
update_email_address_metadata(Client, EmailAddressId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/email-addresses/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EmailAddressId), ""],
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

%% @doc Updates details about a specific evaluation form version in the
%% specified Amazon Connect
%% instance.
%%
%% Question and section identifiers cannot be duplicated within the same
%% evaluation
%% form.
%%
%% This operation does not support partial updates. Instead it does a full
%% update of evaluation
%% form content.
-spec update_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), update_evaluation_form_request()) ->
    {ok, update_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, update_evaluation_form_errors(), tuple()}.
update_evaluation_form(Client, EvaluationFormId, InstanceId, Input) ->
    update_evaluation_form(Client, EvaluationFormId, InstanceId, Input, []).

-spec update_evaluation_form(aws_client:aws_client(), binary() | list(), binary() | list(), update_evaluation_form_request(), proplists:proplist()) ->
    {ok, update_evaluation_form_response(), tuple()} |
    {error, any()} |
    {error, update_evaluation_form_errors(), tuple()}.
update_evaluation_form(Client, EvaluationFormId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/evaluation-forms/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(EvaluationFormId), ""],
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

%% @doc Updates the hours of operation.
-spec update_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), update_hours_of_operation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_hours_of_operation_errors(), tuple()}.
update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input) ->
    update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input, []).

-spec update_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), update_hours_of_operation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_hours_of_operation_errors(), tuple()}.
update_hours_of_operation(Client, HoursOfOperationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), ""],
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

%% @doc Update the hours of operation override.
-spec update_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_hours_of_operation_override_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_hours_of_operation_override_errors(), tuple()}.
update_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input) ->
    update_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input, []).

-spec update_hours_of_operation_override(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_hours_of_operation_override_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_hours_of_operation_override_errors(), tuple()}.
update_hours_of_operation_override(Client, HoursOfOperationId, HoursOfOperationOverrideId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/hours-of-operations/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HoursOfOperationId), "/overrides/", aws_util:encode_uri(HoursOfOperationOverrideId), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates the value for the specified attribute type.
-spec update_instance_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_instance_attribute_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_attribute_errors(), tuple()}.
update_instance_attribute(Client, AttributeType, InstanceId, Input) ->
    update_instance_attribute(Client, AttributeType, InstanceId, Input, []).

-spec update_instance_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_instance_attribute_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_attribute_errors(), tuple()}.
update_instance_attribute(Client, AttributeType, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/attribute/", aws_util:encode_uri(AttributeType), ""],
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

%% @doc This API is in preview release for Amazon Connect and is subject to
%% change.
%%
%% Updates an existing configuration for a resource type. This API is
%% idempotent.
-spec update_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_instance_storage_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_storage_config_errors(), tuple()}.
update_instance_storage_config(Client, AssociationId, InstanceId, Input) ->
    update_instance_storage_config(Client, AssociationId, InstanceId, Input, []).

-spec update_instance_storage_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_instance_storage_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_storage_config_errors(), tuple()}.
update_instance_storage_config(Client, AssociationId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/storage-config/", aws_util:encode_uri(AssociationId), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Instructs Amazon Connect to resume the authentication process.
%%
%% The subsequent actions
%% depend on the request body contents:
%%
%% If a code is provided: Connect retrieves the identity
%% information from Amazon Cognito and imports it into Connect Customer
%% Profiles.
%%
%% If an error is provided: The error branch of the
%% Authenticate Customer block is executed.
%%
%% The API returns a success response to acknowledge the request. However,
%% the interaction and
%% exchange of identity information occur asynchronously after the response
%% is returned.
-spec update_participant_authentication(aws_client:aws_client(), update_participant_authentication_request()) ->
    {ok, update_participant_authentication_response(), tuple()} |
    {error, any()} |
    {error, update_participant_authentication_errors(), tuple()}.
update_participant_authentication(Client, Input) ->
    update_participant_authentication(Client, Input, []).

-spec update_participant_authentication(aws_client:aws_client(), update_participant_authentication_request(), proplists:proplist()) ->
    {ok, update_participant_authentication_response(), tuple()} |
    {error, any()} |
    {error, update_participant_authentication_errors(), tuple()}.
update_participant_authentication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact/update-participant-authentication"],
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

%% @doc Updates timeouts for when human chat participants are to be
%% considered idle, and when agents
%% are automatically disconnected from a chat due to idleness.
%%
%% You can set four timers:
%%
%% Customer idle timeout
%%
%% Customer auto-disconnect timeout
%%
%% Agent idle timeout
%%
%% Agent auto-disconnect timeout
%%
%% For more information about how chat timeouts work, see
%% Set up chat timeouts for human participants:
%% https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html.
-spec update_participant_role_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_participant_role_config_request()) ->
    {ok, update_participant_role_config_response(), tuple()} |
    {error, any()} |
    {error, update_participant_role_config_errors(), tuple()}.
update_participant_role_config(Client, ContactId, InstanceId, Input) ->
    update_participant_role_config(Client, ContactId, InstanceId, Input, []).

-spec update_participant_role_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_participant_role_config_request(), proplists:proplist()) ->
    {ok, update_participant_role_config_response(), tuple()} |
    {error, any()} |
    {error, update_participant_role_config_errors(), tuple()}.
update_participant_role_config(Client, ContactId, InstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/contact/participant-role-config/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactId), ""],
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

%% @doc Updates your claimed phone number from its current Amazon Connect
%% instance or traffic distribution group to
%% another Amazon Connect instance or traffic distribution group in the same
%% Amazon Web Services Region.
%%
%% After using this API, you must verify that the phone number is attached to
%% the correct flow
%% in the target instance or traffic distribution group. You need to do this
%% because the API
%% switches only the phone number to a new instance or traffic distribution
%% group. It doesn't
%% migrate the flow configuration of the phone number, too.
%%
%% You can call DescribePhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
%% API
%% to verify the status of a previous UpdatePhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
%% operation.
-spec update_phone_number(aws_client:aws_client(), binary() | list(), update_phone_number_request()) ->
    {ok, update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).

-spec update_phone_number(aws_client:aws_client(), binary() | list(), update_phone_number_request(), proplists:proplist()) ->
    {ok, update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Updates a phone number’s metadata.
%%
%% To verify the status of a previous UpdatePhoneNumberMetadata operation,
%% call the DescribePhoneNumber:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
%% API.
-spec update_phone_number_metadata(aws_client:aws_client(), binary() | list(), update_phone_number_metadata_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_metadata_errors(), tuple()}.
update_phone_number_metadata(Client, PhoneNumberId, Input) ->
    update_phone_number_metadata(Client, PhoneNumberId, Input, []).

-spec update_phone_number_metadata(aws_client:aws_client(), binary() | list(), update_phone_number_metadata_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_metadata_errors(), tuple()}.
update_phone_number_metadata(Client, PhoneNumberId, Input0, Options0) ->
    Method = put,
    Path = ["/phone-number/", aws_util:encode_uri(PhoneNumberId), "/metadata"],
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

%% @doc Updates a predefined attribute for the specified Amazon Connect
%% instance.
%%
%% Predefined
%% attributes are attributes in an Amazon Connect instance that can be used
%% to route
%% contacts to an agent or pools of agents within a queue. For more
%% information, see Create
%% predefined attributes for routing contacts to agents:
%% https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html.
-spec update_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_predefined_attribute_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_predefined_attribute_errors(), tuple()}.
update_predefined_attribute(Client, InstanceId, Name, Input) ->
    update_predefined_attribute(Client, InstanceId, Name, Input, []).

-spec update_predefined_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_predefined_attribute_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_predefined_attribute_errors(), tuple()}.
update_predefined_attribute(Client, InstanceId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/predefined-attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a prompt.
-spec update_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), update_prompt_request()) ->
    {ok, update_prompt_response(), tuple()} |
    {error, any()} |
    {error, update_prompt_errors(), tuple()}.
update_prompt(Client, InstanceId, PromptId, Input) ->
    update_prompt(Client, InstanceId, PromptId, Input, []).

-spec update_prompt(aws_client:aws_client(), binary() | list(), binary() | list(), update_prompt_request(), proplists:proplist()) ->
    {ok, update_prompt_response(), tuple()} |
    {error, any()} |
    {error, update_prompt_errors(), tuple()}.
update_prompt(Client, InstanceId, PromptId, Input0, Options0) ->
    Method = post,
    Path = ["/prompts/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(PromptId), ""],
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

%% @doc Updates the hours of operation for the specified queue.
-spec update_queue_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_hours_of_operation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_hours_of_operation_errors(), tuple()}.
update_queue_hours_of_operation(Client, InstanceId, QueueId, Input) ->
    update_queue_hours_of_operation(Client, InstanceId, QueueId, Input, []).

-spec update_queue_hours_of_operation(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_hours_of_operation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_hours_of_operation_errors(), tuple()}.
update_queue_hours_of_operation(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/hours-of-operation"],
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

%% @doc Updates the maximum number of contacts allowed in a queue before it
%% is considered
%% full.
-spec update_queue_max_contacts(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_max_contacts_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_max_contacts_errors(), tuple()}.
update_queue_max_contacts(Client, InstanceId, QueueId, Input) ->
    update_queue_max_contacts(Client, InstanceId, QueueId, Input, []).

-spec update_queue_max_contacts(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_max_contacts_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_max_contacts_errors(), tuple()}.
update_queue_max_contacts(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/max-contacts"],
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

%% @doc Updates the name and description of a queue.
%%
%% At least `Name' or `Description' must be provided.
-spec update_queue_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_name_errors(), tuple()}.
update_queue_name(Client, InstanceId, QueueId, Input) ->
    update_queue_name(Client, InstanceId, QueueId, Input, []).

-spec update_queue_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_name_errors(), tuple()}.
update_queue_name(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/name"],
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

%% @doc Updates the outbound caller ID name, number, and outbound whisper
%% flow for a specified
%% queue.
%%
%% If the phone number is claimed to a traffic distribution group that was
%% created in the
%% same Region as the Amazon Connect instance where you are calling this API,
%% then you can use a
%% full phone number ARN or a UUID for `OutboundCallerIdNumberId'.
%% However, if the phone number is claimed
%% to a traffic distribution group that is in one Region, and you are calling
%% this API from an instance in another Amazon Web Services Region that is
%% associated with the traffic distribution group, you must provide a full
%% phone number ARN. If a
%% UUID is provided in this scenario, you will receive a
%% `ResourceNotFoundException'.
%%
%% Only use the phone number ARN format that doesn't contain
%% `instance' in the
%% path, for example,
%% `arn:aws:connect:us-east-1:1234567890:phone-number/uuid'. This
%% is the same ARN format that is returned when you call the
%% ListPhoneNumbersV2:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
%% API.
%%
%% If you plan to use IAM policies to allow/deny access to this API for phone
%% number resources claimed to a traffic distribution group, see Allow or
%% Deny queue API actions for phone numbers in a replica Region:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region.
-spec update_queue_outbound_caller_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_outbound_caller_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_outbound_caller_config_errors(), tuple()}.
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input) ->
    update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input, []).

-spec update_queue_outbound_caller_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_outbound_caller_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_outbound_caller_config_errors(), tuple()}.
update_queue_outbound_caller_config(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/outbound-caller-config"],
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

%% @doc Updates the outbound email address Id for a specified queue.
-spec update_queue_outbound_email_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_outbound_email_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_outbound_email_config_errors(), tuple()}.
update_queue_outbound_email_config(Client, InstanceId, QueueId, Input) ->
    update_queue_outbound_email_config(Client, InstanceId, QueueId, Input, []).

-spec update_queue_outbound_email_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_outbound_email_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_outbound_email_config_errors(), tuple()}.
update_queue_outbound_email_config(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/outbound-email-config"],
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
-spec update_queue_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_status_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_status_errors(), tuple()}.
update_queue_status(Client, InstanceId, QueueId, Input) ->
    update_queue_status(Client, InstanceId, QueueId, Input, []).

-spec update_queue_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_status_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_queue_status_errors(), tuple()}.
update_queue_status(Client, InstanceId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/queues/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QueueId), "/status"],
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

%% @doc Updates the configuration settings for the specified quick connect.
-spec update_quick_connect_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_connect_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_quick_connect_config_errors(), tuple()}.
update_quick_connect_config(Client, InstanceId, QuickConnectId, Input) ->
    update_quick_connect_config(Client, InstanceId, QuickConnectId, Input, []).

-spec update_quick_connect_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_connect_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_quick_connect_config_errors(), tuple()}.
update_quick_connect_config(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = post,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), "/config"],
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

%% @doc Updates the name and description of a quick connect.
%%
%% The request accepts the following data in JSON format. At least `Name'
%% or `Description' must be provided.
-spec update_quick_connect_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_connect_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_quick_connect_name_errors(), tuple()}.
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input) ->
    update_quick_connect_name(Client, InstanceId, QuickConnectId, Input, []).

-spec update_quick_connect_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_connect_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_quick_connect_name_errors(), tuple()}.
update_quick_connect_name(Client, InstanceId, QuickConnectId, Input0, Options0) ->
    Method = post,
    Path = ["/quick-connects/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(QuickConnectId), "/name"],
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

%% @doc Whether agents with this routing profile will have their routing
%% order calculated based on
%% time since their last inbound contact or longest idle
%% time.
-spec update_routing_profile_agent_availability_timer(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_agent_availability_timer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_agent_availability_timer_errors(), tuple()}.
update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input, []).

-spec update_routing_profile_agent_availability_timer(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_agent_availability_timer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_agent_availability_timer_errors(), tuple()}.
update_routing_profile_agent_availability_timer(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/agent-availability-timer"],
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

%% @doc Updates the channels that agents can handle in the Contact Control
%% Panel (CCP) for a routing
%% profile.
-spec update_routing_profile_concurrency(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_concurrency_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_concurrency_errors(), tuple()}.
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input, []).

-spec update_routing_profile_concurrency(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_concurrency_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_concurrency_errors(), tuple()}.
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/concurrency"],
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

%% @doc Updates the default outbound queue of a routing profile.
-spec update_routing_profile_default_outbound_queue(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_default_outbound_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_default_outbound_queue_errors(), tuple()}.
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input, []).

-spec update_routing_profile_default_outbound_queue(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_default_outbound_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_default_outbound_queue_errors(), tuple()}.
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/default-outbound-queue"],
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

%% @doc Updates the name and description of a routing profile.
%%
%% The request accepts the following data in JSON format.
%% At least `Name' or `Description' must be provided.
-spec update_routing_profile_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_name_errors(), tuple()}.
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input, []).

-spec update_routing_profile_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_name_errors(), tuple()}.
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/name"],
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

%% @doc Updates the properties associated with a set of queues for a routing
%% profile.
-spec update_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_queues_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_queues_errors(), tuple()}.
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).

-spec update_routing_profile_queues(aws_client:aws_client(), binary() | list(), binary() | list(), update_routing_profile_queues_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_routing_profile_queues_errors(), tuple()}.
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
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

%% @doc Updates a rule for the specified Amazon Connect instance.
%%
%% Use the Rules Function language:
%% https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
%% to
%% code conditions for the rule.
-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, InstanceId, RuleId, Input) ->
    update_rule(Client, InstanceId, RuleId, Input, []).

-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, InstanceId, RuleId, Input0, Options0) ->
    Method = put,
    Path = ["/rules/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RuleId), ""],
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

%% @doc Updates a security profile.
%%
%% For information about security profiles, see Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
%% in the
%% Amazon Connect Administrator Guide. For a mapping of the API name and
%% user interface name of the security profile permissions, see List of
%% security profile
%% permissions:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html.
-spec update_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_security_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_security_profile_errors(), tuple()}.
update_security_profile(Client, InstanceId, SecurityProfileId, Input) ->
    update_security_profile(Client, InstanceId, SecurityProfileId, Input, []).

-spec update_security_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_security_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_security_profile_errors(), tuple()}.
update_security_profile(Client, InstanceId, SecurityProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/security-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(SecurityProfileId), ""],
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

%% @doc Updates details about a specific task template in the specified
%% Amazon Connect instance.
%%
%% This operation does not support partial updates. Instead it does a full
%% update of template
%% content.
-spec update_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_task_template_request()) ->
    {ok, update_task_template_response(), tuple()} |
    {error, any()} |
    {error, update_task_template_errors(), tuple()}.
update_task_template(Client, InstanceId, TaskTemplateId, Input) ->
    update_task_template(Client, InstanceId, TaskTemplateId, Input, []).

-spec update_task_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_task_template_request(), proplists:proplist()) ->
    {ok, update_task_template_response(), tuple()} |
    {error, any()} |
    {error, update_task_template_errors(), tuple()}.
update_task_template(Client, InstanceId, TaskTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/instance/", aws_util:encode_uri(InstanceId), "/task/template/", aws_util:encode_uri(TaskTemplateId), ""],
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

%% @doc Updates the traffic distribution for a given traffic distribution
%% group.
%%
%% When you shift telephony traffic, also shift agents and/or agent sign-ins
%% to ensure they
%% can handle the calls in the other Region. If you don't shift the
%% agents, voice calls will go to
%% the shifted Region but there won't be any agents available to receive
%% the calls.
%%
%% The `SignInConfig' distribution is available only on a
%% default `TrafficDistributionGroup' (see the `IsDefault' parameter
%% in the
%% TrafficDistributionGroup:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html
%% data type). If you call
%% `UpdateTrafficDistribution' with a modified `SignInConfig' and a
%% non-default `TrafficDistributionGroup',
%% an `InvalidRequestException' is returned.
%%
%% For more information about updating a traffic distribution group, see
%% Update telephony
%% traffic distribution across Amazon Web Services Regions
%% :
%% https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html
%% in the Amazon Connect Administrator Guide.
-spec update_traffic_distribution(aws_client:aws_client(), binary() | list(), update_traffic_distribution_request()) ->
    {ok, update_traffic_distribution_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_distribution_errors(), tuple()}.
update_traffic_distribution(Client, Id, Input) ->
    update_traffic_distribution(Client, Id, Input, []).

-spec update_traffic_distribution(aws_client:aws_client(), binary() | list(), update_traffic_distribution_request(), proplists:proplist()) ->
    {ok, update_traffic_distribution_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_distribution_errors(), tuple()}.
update_traffic_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/traffic-distribution/", aws_util:encode_uri(Id), ""],
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

%% @doc Assigns the specified hierarchy group to the specified user.
-spec update_user_hierarchy(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_hierarchy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_errors(), tuple()}.
update_user_hierarchy(Client, InstanceId, UserId, Input) ->
    update_user_hierarchy(Client, InstanceId, UserId, Input, []).

-spec update_user_hierarchy(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_hierarchy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_errors(), tuple()}.
update_user_hierarchy(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/hierarchy"],
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

%% @doc Updates the name of the user hierarchy group.
-spec update_user_hierarchy_group_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_hierarchy_group_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_group_name_errors(), tuple()}.
update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input) ->
    update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input, []).

-spec update_user_hierarchy_group_name(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_hierarchy_group_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_group_name_errors(), tuple()}.
update_user_hierarchy_group_name(Client, HierarchyGroupId, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), "/name"],
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

%% @doc Updates the user hierarchy structure: add, remove, and rename user
%% hierarchy levels.
-spec update_user_hierarchy_structure(aws_client:aws_client(), binary() | list(), update_user_hierarchy_structure_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_structure_errors(), tuple()}.
update_user_hierarchy_structure(Client, InstanceId, Input) ->
    update_user_hierarchy_structure(Client, InstanceId, Input, []).

-spec update_user_hierarchy_structure(aws_client:aws_client(), binary() | list(), update_user_hierarchy_structure_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_hierarchy_structure_errors(), tuple()}.
update_user_hierarchy_structure(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/user-hierarchy-structure/", aws_util:encode_uri(InstanceId), ""],
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

%% @doc Updates the identity information for the specified user.
%%
%% We strongly recommend limiting who has the ability to invoke
%% `UpdateUserIdentityInfo'. Someone with that ability can change the
%% login credentials
%% of other users by changing their email address. This poses a security risk
%% to your organization.
%% They can change the email address of a user to the attacker's email
%% address, and then reset the
%% password through email. For more information, see Best Practices for
%% Security Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html
%% in the Amazon Connect Administrator
%% Guide.
-spec update_user_identity_info(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_identity_info_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_identity_info_errors(), tuple()}.
update_user_identity_info(Client, InstanceId, UserId, Input) ->
    update_user_identity_info(Client, InstanceId, UserId, Input, []).

-spec update_user_identity_info(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_identity_info_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_identity_info_errors(), tuple()}.
update_user_identity_info(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/identity-info"],
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

%% @doc Updates the phone configuration settings for the specified user.
-spec update_user_phone_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_phone_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_phone_config_errors(), tuple()}.
update_user_phone_config(Client, InstanceId, UserId, Input) ->
    update_user_phone_config(Client, InstanceId, UserId, Input, []).

-spec update_user_phone_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_phone_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_phone_config_errors(), tuple()}.
update_user_phone_config(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/phone-config"],
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

%% @doc Updates the properties associated with the proficiencies of a user.
-spec update_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_proficiencies_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_proficiencies_errors(), tuple()}.
update_user_proficiencies(Client, InstanceId, UserId, Input) ->
    update_user_proficiencies(Client, InstanceId, UserId, Input, []).

-spec update_user_proficiencies(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_proficiencies_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_proficiencies_errors(), tuple()}.
update_user_proficiencies(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/proficiencies"],
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

%% @doc Assigns the specified routing profile to the specified user.
-spec update_user_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_routing_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_routing_profile_errors(), tuple()}.
update_user_routing_profile(Client, InstanceId, UserId, Input) ->
    update_user_routing_profile(Client, InstanceId, UserId, Input, []).

-spec update_user_routing_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_routing_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_routing_profile_errors(), tuple()}.
update_user_routing_profile(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/routing-profile"],
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

%% @doc Assigns the specified security profiles to the specified user.
-spec update_user_security_profiles(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_security_profiles_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_security_profiles_errors(), tuple()}.
update_user_security_profiles(Client, InstanceId, UserId, Input) ->
    update_user_security_profiles(Client, InstanceId, UserId, Input, []).

-spec update_user_security_profiles(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_security_profiles_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_security_profiles_errors(), tuple()}.
update_user_security_profiles(Client, InstanceId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/security-profiles"],
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

%% @doc Updates the view content of the given view identifier in the
%% specified Amazon Connect
%% instance.
%%
%% It performs content validation if `Status' is set to `SAVED' and
%% performs full content validation if `Status' is `PUBLISHED'. Note
%% that the
%% `$SAVED' alias' content will always be updated, but the
%% `$LATEST' alias'
%% content will only be updated if `Status' is `PUBLISHED'.
-spec update_view_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_view_content_request()) ->
    {ok, update_view_content_response(), tuple()} |
    {error, any()} |
    {error, update_view_content_errors(), tuple()}.
update_view_content(Client, InstanceId, ViewId, Input) ->
    update_view_content(Client, InstanceId, ViewId, Input, []).

-spec update_view_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_view_content_request(), proplists:proplist()) ->
    {ok, update_view_content_response(), tuple()} |
    {error, any()} |
    {error, update_view_content_errors(), tuple()}.
update_view_content(Client, InstanceId, ViewId, Input0, Options0) ->
    Method = post,
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), ""],
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

%% @doc Updates the view metadata.
%%
%% Note that either `Name' or `Description'
%% must be provided.
-spec update_view_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_view_metadata_request()) ->
    {ok, update_view_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_view_metadata_errors(), tuple()}.
update_view_metadata(Client, InstanceId, ViewId, Input) ->
    update_view_metadata(Client, InstanceId, ViewId, Input, []).

-spec update_view_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_view_metadata_request(), proplists:proplist()) ->
    {ok, update_view_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_view_metadata_errors(), tuple()}.
update_view_metadata(Client, InstanceId, ViewId, Input0, Options0) ->
    Method = post,
    Path = ["/views/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ViewId), "/metadata"],
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
