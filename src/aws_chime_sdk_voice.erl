%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK telephony APIs in this section enable developers
%% to create PSTN calling solutions that use Amazon Chime SDK Voice
%% Connectors, and Amazon Chime SDK SIP media applications.
%%
%% Developers can
%% also order and manage phone numbers, create and manage Voice Connectors
%% and SIP media applications, and run voice analytics.
-module(aws_chime_sdk_voice).

-export([associate_phone_numbers_with_voice_connector/3,
         associate_phone_numbers_with_voice_connector/4,
         associate_phone_numbers_with_voice_connector_group/3,
         associate_phone_numbers_with_voice_connector_group/4,
         batch_delete_phone_number/2,
         batch_delete_phone_number/3,
         batch_update_phone_number/2,
         batch_update_phone_number/3,
         create_phone_number_order/2,
         create_phone_number_order/3,
         create_proxy_session/3,
         create_proxy_session/4,
         create_sip_media_application/2,
         create_sip_media_application/3,
         create_sip_media_application_call/3,
         create_sip_media_application_call/4,
         create_sip_rule/2,
         create_sip_rule/3,
         create_voice_connector/2,
         create_voice_connector/3,
         create_voice_connector_group/2,
         create_voice_connector_group/3,
         create_voice_profile/2,
         create_voice_profile/3,
         create_voice_profile_domain/2,
         create_voice_profile_domain/3,
         delete_phone_number/3,
         delete_phone_number/4,
         delete_proxy_session/4,
         delete_proxy_session/5,
         delete_sip_media_application/3,
         delete_sip_media_application/4,
         delete_sip_rule/3,
         delete_sip_rule/4,
         delete_voice_connector/3,
         delete_voice_connector/4,
         delete_voice_connector_emergency_calling_configuration/3,
         delete_voice_connector_emergency_calling_configuration/4,
         delete_voice_connector_external_systems_configuration/3,
         delete_voice_connector_external_systems_configuration/4,
         delete_voice_connector_group/3,
         delete_voice_connector_group/4,
         delete_voice_connector_origination/3,
         delete_voice_connector_origination/4,
         delete_voice_connector_proxy/3,
         delete_voice_connector_proxy/4,
         delete_voice_connector_streaming_configuration/3,
         delete_voice_connector_streaming_configuration/4,
         delete_voice_connector_termination/3,
         delete_voice_connector_termination/4,
         delete_voice_connector_termination_credentials/3,
         delete_voice_connector_termination_credentials/4,
         delete_voice_profile/3,
         delete_voice_profile/4,
         delete_voice_profile_domain/3,
         delete_voice_profile_domain/4,
         disassociate_phone_numbers_from_voice_connector/3,
         disassociate_phone_numbers_from_voice_connector/4,
         disassociate_phone_numbers_from_voice_connector_group/3,
         disassociate_phone_numbers_from_voice_connector_group/4,
         get_global_settings/1,
         get_global_settings/3,
         get_global_settings/4,
         get_phone_number/2,
         get_phone_number/4,
         get_phone_number/5,
         get_phone_number_order/2,
         get_phone_number_order/4,
         get_phone_number_order/5,
         get_phone_number_settings/1,
         get_phone_number_settings/3,
         get_phone_number_settings/4,
         get_proxy_session/3,
         get_proxy_session/5,
         get_proxy_session/6,
         get_sip_media_application/2,
         get_sip_media_application/4,
         get_sip_media_application/5,
         get_sip_media_application_alexa_skill_configuration/2,
         get_sip_media_application_alexa_skill_configuration/4,
         get_sip_media_application_alexa_skill_configuration/5,
         get_sip_media_application_logging_configuration/2,
         get_sip_media_application_logging_configuration/4,
         get_sip_media_application_logging_configuration/5,
         get_sip_rule/2,
         get_sip_rule/4,
         get_sip_rule/5,
         get_speaker_search_task/3,
         get_speaker_search_task/5,
         get_speaker_search_task/6,
         get_voice_connector/2,
         get_voice_connector/4,
         get_voice_connector/5,
         get_voice_connector_emergency_calling_configuration/2,
         get_voice_connector_emergency_calling_configuration/4,
         get_voice_connector_emergency_calling_configuration/5,
         get_voice_connector_external_systems_configuration/2,
         get_voice_connector_external_systems_configuration/4,
         get_voice_connector_external_systems_configuration/5,
         get_voice_connector_group/2,
         get_voice_connector_group/4,
         get_voice_connector_group/5,
         get_voice_connector_logging_configuration/2,
         get_voice_connector_logging_configuration/4,
         get_voice_connector_logging_configuration/5,
         get_voice_connector_origination/2,
         get_voice_connector_origination/4,
         get_voice_connector_origination/5,
         get_voice_connector_proxy/2,
         get_voice_connector_proxy/4,
         get_voice_connector_proxy/5,
         get_voice_connector_streaming_configuration/2,
         get_voice_connector_streaming_configuration/4,
         get_voice_connector_streaming_configuration/5,
         get_voice_connector_termination/2,
         get_voice_connector_termination/4,
         get_voice_connector_termination/5,
         get_voice_connector_termination_health/2,
         get_voice_connector_termination_health/4,
         get_voice_connector_termination_health/5,
         get_voice_profile/2,
         get_voice_profile/4,
         get_voice_profile/5,
         get_voice_profile_domain/2,
         get_voice_profile_domain/4,
         get_voice_profile_domain/5,
         get_voice_tone_analysis_task/4,
         get_voice_tone_analysis_task/6,
         get_voice_tone_analysis_task/7,
         list_available_voice_connector_regions/1,
         list_available_voice_connector_regions/3,
         list_available_voice_connector_regions/4,
         list_phone_number_orders/1,
         list_phone_number_orders/3,
         list_phone_number_orders/4,
         list_phone_numbers/1,
         list_phone_numbers/3,
         list_phone_numbers/4,
         list_proxy_sessions/2,
         list_proxy_sessions/4,
         list_proxy_sessions/5,
         list_sip_media_applications/1,
         list_sip_media_applications/3,
         list_sip_media_applications/4,
         list_sip_rules/1,
         list_sip_rules/3,
         list_sip_rules/4,
         list_supported_phone_number_countries/2,
         list_supported_phone_number_countries/4,
         list_supported_phone_number_countries/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_voice_connector_groups/1,
         list_voice_connector_groups/3,
         list_voice_connector_groups/4,
         list_voice_connector_termination_credentials/2,
         list_voice_connector_termination_credentials/4,
         list_voice_connector_termination_credentials/5,
         list_voice_connectors/1,
         list_voice_connectors/3,
         list_voice_connectors/4,
         list_voice_profile_domains/1,
         list_voice_profile_domains/3,
         list_voice_profile_domains/4,
         list_voice_profiles/2,
         list_voice_profiles/4,
         list_voice_profiles/5,
         put_sip_media_application_alexa_skill_configuration/3,
         put_sip_media_application_alexa_skill_configuration/4,
         put_sip_media_application_logging_configuration/3,
         put_sip_media_application_logging_configuration/4,
         put_voice_connector_emergency_calling_configuration/3,
         put_voice_connector_emergency_calling_configuration/4,
         put_voice_connector_external_systems_configuration/3,
         put_voice_connector_external_systems_configuration/4,
         put_voice_connector_logging_configuration/3,
         put_voice_connector_logging_configuration/4,
         put_voice_connector_origination/3,
         put_voice_connector_origination/4,
         put_voice_connector_proxy/3,
         put_voice_connector_proxy/4,
         put_voice_connector_streaming_configuration/3,
         put_voice_connector_streaming_configuration/4,
         put_voice_connector_termination/3,
         put_voice_connector_termination/4,
         put_voice_connector_termination_credentials/3,
         put_voice_connector_termination_credentials/4,
         restore_phone_number/3,
         restore_phone_number/4,
         search_available_phone_numbers/1,
         search_available_phone_numbers/3,
         search_available_phone_numbers/4,
         start_speaker_search_task/3,
         start_speaker_search_task/4,
         start_voice_tone_analysis_task/3,
         start_voice_tone_analysis_task/4,
         stop_speaker_search_task/4,
         stop_speaker_search_task/5,
         stop_voice_tone_analysis_task/4,
         stop_voice_tone_analysis_task/5,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_global_settings/2,
         update_global_settings/3,
         update_phone_number/3,
         update_phone_number/4,
         update_phone_number_settings/2,
         update_phone_number_settings/3,
         update_proxy_session/4,
         update_proxy_session/5,
         update_sip_media_application/3,
         update_sip_media_application/4,
         update_sip_media_application_call/4,
         update_sip_media_application_call/5,
         update_sip_rule/3,
         update_sip_rule/4,
         update_voice_connector/3,
         update_voice_connector/4,
         update_voice_connector_group/3,
         update_voice_connector_group/4,
         update_voice_profile/3,
         update_voice_profile/4,
         update_voice_profile_domain/3,
         update_voice_profile_domain/4,
         validate_e911_address/2,
         validate_e911_address/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% put_voice_connector_external_systems_configuration_request() :: #{
%%   <<"ContactCenterSystemTypes">> => list(list(any())()),
%%   <<"SessionBorderControllerTypes">> => list(list(any())())
%% }
-type put_voice_connector_external_systems_configuration_request() :: #{binary() => any()}.


%% Example:
%% streaming_configuration() :: #{
%%   <<"DataRetentionInHours">> => integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"MediaInsightsConfiguration">> => media_insights_configuration(),
%%   <<"StreamingNotificationTargets">> => list(streaming_notification_target())
%% }
-type streaming_configuration() :: #{binary() => any()}.


%% Example:
%% batch_delete_phone_number_request() :: #{
%%   <<"PhoneNumberIds">> := list(string())
%% }
-type batch_delete_phone_number_request() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_termination_credentials_request() :: #{
%%   <<"Credentials">> => list(credential())
%% }
-type put_voice_connector_termination_credentials_request() :: #{binary() => any()}.


%% Example:
%% update_sip_rule_request() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"TargetApplications">> => list(sip_rule_target_application())
%% }
-type update_sip_rule_request() :: #{binary() => any()}.


%% Example:
%% sip_rule() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"SipRuleId">> => string(),
%%   <<"TargetApplications">> => list(sip_rule_target_application()),
%%   <<"TriggerType">> => list(any()),
%%   <<"TriggerValue">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type sip_rule() :: #{binary() => any()}.


%% Example:
%% call_details() :: #{
%%   <<"IsCaller">> => boolean(),
%%   <<"TransactionId">> => string(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type call_details() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type create_phone_number_order_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_request() :: #{
%%   <<"AwsRegion">> := string(),
%%   <<"Endpoints">> := list(sip_media_application_endpoint()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_sip_media_application_request() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_call_response() :: #{
%%   <<"SipMediaApplicationCall">> => sip_media_application_call()
%% }
-type update_sip_media_application_call_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_logging_configuration_request() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type put_sip_media_application_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% proxy() :: #{
%%   <<"DefaultSessionExpiryMinutes">> => integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"FallBackPhoneNumber">> => string(),
%%   <<"PhoneNumberCountries">> => list(string())
%% }
-type proxy() :: #{binary() => any()}.


%% Example:
%% update_proxy_session_request() :: #{
%%   <<"Capabilities">> := list(list(any())()),
%%   <<"ExpiryMinutes">> => integer()
%% }
-type update_proxy_session_request() :: #{binary() => any()}.


%% Example:
%% batch_update_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type batch_update_phone_number_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_termination_health_request() :: #{}
-type get_voice_connector_termination_health_request() :: #{}.


%% Example:
%% validate_e911_address_response() :: #{
%%   <<"Address">> => address(),
%%   <<"AddressExternalId">> => string(),
%%   <<"CandidateAddressList">> => list(candidate_address()),
%%   <<"ValidationResult">> => integer()
%% }
-type validate_e911_address_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type update_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% list_phone_number_orders_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberOrders">> => list(phone_number_order())
%% }
-type list_phone_number_orders_response() :: #{binary() => any()}.


%% Example:
%% start_voice_tone_analysis_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"TransactionId">> := string()
%% }
-type start_voice_tone_analysis_task_request() :: #{binary() => any()}.


%% Example:
%% speaker_search_result() :: #{
%%   <<"ConfidenceScore">> => float(),
%%   <<"VoiceProfileId">> => string()
%% }
-type speaker_search_result() :: #{binary() => any()}.


%% Example:
%% termination_health() :: #{
%%   <<"Source">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type termination_health() :: #{binary() => any()}.


%% Example:
%% participant() :: #{
%%   <<"PhoneNumber">> => string(),
%%   <<"ProxyPhoneNumber">> => string()
%% }
-type participant() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_request() :: #{
%%   <<"Endpoints">> => list(sip_media_application_endpoint()),
%%   <<"Name">> => string()
%% }
-type update_sip_media_application_request() :: #{binary() => any()}.


%% Example:
%% voice_profile_domain_summary() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceProfileDomainArn">> => string(),
%%   <<"VoiceProfileDomainId">> => string()
%% }
-type voice_profile_domain_summary() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_group_request() :: #{}
-type delete_voice_connector_group_request() :: #{}.


%% Example:
%% origination() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Routes">> => list(origination_route())
%% }
-type origination() :: #{binary() => any()}.


%% Example:
%% start_speaker_search_task_response() :: #{
%%   <<"SpeakerSearchTask">> => speaker_search_task()
%% }
-type start_speaker_search_task_response() :: #{binary() => any()}.


%% Example:
%% list_voice_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_voice_connectors_request() :: #{binary() => any()}.


%% Example:
%% phone_number_country() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"SupportedPhoneNumberTypes">> => list(list(any())())
%% }
-type phone_number_country() :: #{binary() => any()}.


%% Example:
%% geo_match_params() :: #{
%%   <<"AreaCode">> => string(),
%%   <<"Country">> => string()
%% }
-type geo_match_params() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_response() :: #{
%%   <<"E164PhoneNumbers">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type search_available_phone_numbers_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_request() :: #{}
-type get_voice_connector_request() :: #{}.


%% Example:
%% put_voice_connector_origination_response() :: #{
%%   <<"Origination">> => origination()
%% }
-type put_voice_connector_origination_response() :: #{binary() => any()}.


%% Example:
%% create_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type create_sip_rule_response() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_group_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()),
%%   <<"ForceAssociate">> => boolean()
%% }
-type associate_phone_numbers_with_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type create_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% list_voice_profile_domains_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceProfileDomains">> => list(voice_profile_domain_summary())
%% }
-type list_voice_profile_domains_response() :: #{binary() => any()}.

%% Example:
%% list_voice_connector_termination_credentials_request() :: #{}
-type list_voice_connector_termination_credentials_request() :: #{}.


%% Example:
%% update_phone_number_settings_request() :: #{
%%   <<"CallingName">> := string()
%% }
-type update_phone_number_settings_request() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_proxy_response() :: #{
%%   <<"Proxy">> => proxy()
%% }
-type get_voice_connector_proxy_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_logging_configuration_request() :: #{}
-type get_voice_connector_logging_configuration_request() :: #{}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.

%% Example:
%% delete_sip_rule_request() :: #{}
-type delete_sip_rule_request() :: #{}.

%% Example:
%% get_voice_connector_emergency_calling_configuration_request() :: #{}
-type get_voice_connector_emergency_calling_configuration_request() :: #{}.

%% Example:
%% restore_phone_number_request() :: #{}
-type restore_phone_number_request() :: #{}.


%% Example:
%% put_voice_connector_emergency_calling_configuration_request() :: #{
%%   <<"EmergencyCallingConfiguration">> := emergency_calling_configuration()
%% }
-type put_voice_connector_emergency_calling_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_voice_profile_response() :: #{
%%   <<"VoiceProfile">> => voice_profile()
%% }
-type create_voice_profile_response() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type get_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% update_voice_profile_response() :: #{
%%   <<"VoiceProfile">> => voice_profile()
%% }
-type update_voice_profile_response() :: #{binary() => any()}.


%% Example:
%% create_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type create_proxy_session_response() :: #{binary() => any()}.

%% Example:
%% get_voice_profile_domain_request() :: #{}
-type get_voice_profile_domain_request() :: #{}.


%% Example:
%% put_voice_connector_termination_request() :: #{
%%   <<"Termination">> := termination()
%% }
-type put_voice_connector_termination_request() :: #{binary() => any()}.


%% Example:
%% phone_number_association() :: #{
%%   <<"AssociatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type phone_number_association() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_streaming_configuration_request() :: #{}
-type get_voice_connector_streaming_configuration_request() :: #{}.


%% Example:
%% phone_number() :: #{
%%   <<"Associations">> => list(phone_number_association()),
%%   <<"CallingName">> => string(),
%%   <<"CallingNameStatus">> => list(any()),
%%   <<"Capabilities">> => phone_number_capabilities(),
%%   <<"Country">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DeletionTimestamp">> => non_neg_integer(),
%%   <<"E164PhoneNumber">> => string(),
%%   <<"Name">> => string(),
%%   <<"OrderId">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type phone_number() :: #{binary() => any()}.


%% Example:
%% termination() :: #{
%%   <<"CallingRegions">> => list(string()),
%%   <<"CidrAllowedList">> => list(string()),
%%   <<"CpsLimit">> => integer(),
%%   <<"DefaultPhoneNumber">> => string(),
%%   <<"Disabled">> => boolean()
%% }
-type termination() :: #{binary() => any()}.

%% Example:
%% get_phone_number_order_request() :: #{}
-type get_phone_number_order_request() :: #{}.


%% Example:
%% create_voice_profile_domain_response() :: #{
%%   <<"VoiceProfileDomain">> => voice_profile_domain()
%% }
-type create_voice_profile_domain_response() :: #{binary() => any()}.


%% Example:
%% speaker_search_task() :: #{
%%   <<"CallDetails">> => call_details(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"SpeakerSearchDetails">> => speaker_search_details(),
%%   <<"SpeakerSearchTaskId">> => string(),
%%   <<"SpeakerSearchTaskStatus">> => string(),
%%   <<"StartedTimestamp">> => non_neg_integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type speaker_search_task() :: #{binary() => any()}.


%% Example:
%% update_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type update_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_speaker_search_task_response() :: #{
%%   <<"SpeakerSearchTask">> => speaker_search_task()
%% }
-type get_speaker_search_task_response() :: #{binary() => any()}.

%% Example:
%% stop_speaker_search_task_request() :: #{}
-type stop_speaker_search_task_request() :: #{}.


%% Example:
%% throttled_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type throttled_client_exception() :: #{binary() => any()}.


%% Example:
%% gone_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type gone_exception() :: #{binary() => any()}.


%% Example:
%% update_voice_profile_request() :: #{
%%   <<"SpeakerSearchTaskId">> := string()
%% }
-type update_voice_profile_request() :: #{binary() => any()}.


%% Example:
%% media_insights_configuration() :: #{
%%   <<"ConfigurationArn">> => string(),
%%   <<"Disabled">> => boolean()
%% }
-type media_insights_configuration() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_termination_health_response() :: #{
%%   <<"TerminationHealth">> => termination_health()
%% }
-type get_voice_connector_termination_health_response() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()),
%%   <<"ForceAssociate">> => boolean()
%% }
-type associate_phone_numbers_with_voice_connector_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_origination_request() :: #{}
-type delete_voice_connector_origination_request() :: #{}.


%% Example:
%% list_sip_media_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sip_media_applications_request() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_external_systems_configuration_response() :: #{
%%   <<"ExternalSystemsConfiguration">> => external_systems_configuration()
%% }
-type get_voice_connector_external_systems_configuration_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% ordered_phone_number() :: #{
%%   <<"E164PhoneNumber">> => string(),
%%   <<"Status">> => list(any())
%% }
-type ordered_phone_number() :: #{binary() => any()}.


%% Example:
%% get_sip_media_application_logging_configuration_response() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type get_sip_media_application_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type update_proxy_session_response() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()),
%%   <<"Name">> => string(),
%%   <<"ProductType">> := list(any())
%% }
-type create_phone_number_order_request() :: #{binary() => any()}.


%% Example:
%% external_systems_configuration() :: #{
%%   <<"ContactCenterSystemTypes">> => list(list(any())()),
%%   <<"SessionBorderControllerTypes">> => list(list(any())())
%% }
-type external_systems_configuration() :: #{binary() => any()}.

%% Example:
%% delete_sip_media_application_request() :: #{}
-type delete_sip_media_application_request() :: #{}.


%% Example:
%% get_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type get_sip_media_application_response() :: #{binary() => any()}.


%% Example:
%% get_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type get_sip_rule_response() :: #{binary() => any()}.


%% Example:
%% update_voice_profile_domain_response() :: #{
%%   <<"VoiceProfileDomain">> => voice_profile_domain()
%% }
-type update_voice_profile_domain_response() :: #{binary() => any()}.


%% Example:
%% voice_connector_settings() :: #{
%%   <<"CdrBucket">> => string()
%% }
-type voice_connector_settings() :: #{binary() => any()}.


%% Example:
%% get_voice_tone_analysis_task_response() :: #{
%%   <<"VoiceToneAnalysisTask">> => voice_tone_analysis_task()
%% }
-type get_voice_tone_analysis_task_response() :: #{binary() => any()}.

%% Example:
%% delete_proxy_session_request() :: #{}
-type delete_proxy_session_request() :: #{}.


%% Example:
%% logging_configuration() :: #{
%%   <<"EnableMediaMetricLogs">> => boolean(),
%%   <<"EnableSIPLogs">> => boolean()
%% }
-type logging_configuration() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_external_systems_configuration_response() :: #{
%%   <<"ExternalSystemsConfiguration">> => external_systems_configuration()
%% }
-type put_voice_connector_external_systems_configuration_response() :: #{binary() => any()}.


%% Example:
%% voice_profile_domain() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServerSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceProfileDomainArn">> => string(),
%%   <<"VoiceProfileDomainId">> => string()
%% }
-type voice_profile_domain() :: #{binary() => any()}.


%% Example:
%% restore_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type restore_phone_number_response() :: #{binary() => any()}.


%% Example:
%% speaker_search_details() :: #{
%%   <<"Results">> => list(speaker_search_result()),
%%   <<"VoiceprintGenerationStatus">> => string()
%% }
-type speaker_search_details() :: #{binary() => any()}.


%% Example:
%% list_phone_number_orders_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_phone_number_orders_request() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_termination_response() :: #{
%%   <<"Termination">> => termination()
%% }
-type put_voice_connector_termination_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"VoiceConnectorItems">> := list(voice_connector_item())
%% }
-type update_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% list_supported_phone_number_countries_response() :: #{
%%   <<"PhoneNumberCountries">> => list(phone_number_country())
%% }
-type list_supported_phone_number_countries_response() :: #{binary() => any()}.


%% Example:
%% start_voice_tone_analysis_task_response() :: #{
%%   <<"VoiceToneAnalysisTask">> => voice_tone_analysis_task()
%% }
-type start_voice_tone_analysis_task_response() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type update_sip_media_application_response() :: #{binary() => any()}.


%% Example:
%% d_n_i_s_emergency_calling_configuration() :: #{
%%   <<"CallingCountry">> => string(),
%%   <<"EmergencyPhoneNumber">> => string(),
%%   <<"TestPhoneNumber">> => string()
%% }
-type d_n_i_s_emergency_calling_configuration() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type get_voice_connector_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string())
%% }
-type disassociate_phone_numbers_from_voice_connector_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_proxy_request() :: #{}
-type delete_voice_connector_proxy_request() :: #{}.


%% Example:
%% list_voice_connector_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceConnectorGroups">> => list(voice_connector_group())
%% }
-type list_voice_connector_groups_response() :: #{binary() => any()}.


%% Example:
%% list_sip_rules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SipMediaApplicationId">> => string()
%% }
-type list_sip_rules_request() :: #{binary() => any()}.

%% Example:
%% get_voice_profile_request() :: #{}
-type get_voice_profile_request() :: #{}.


%% Example:
%% list_proxy_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProxySessions">> => list(proxy_session())
%% }
-type list_proxy_sessions_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_sip_media_application_alexa_skill_configuration_response() :: #{
%%   <<"SipMediaApplicationAlexaSkillConfiguration">> => sip_media_application_alexa_skill_configuration()
%% }
-type get_sip_media_application_alexa_skill_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_streaming_configuration_response() :: #{
%%   <<"StreamingConfiguration">> => streaming_configuration()
%% }
-type put_voice_connector_streaming_configuration_response() :: #{binary() => any()}.


%% Example:
%% validate_e911_address_request() :: #{
%%   <<"AwsAccountId">> := string(),
%%   <<"City">> := string(),
%%   <<"Country">> := string(),
%%   <<"PostalCode">> := string(),
%%   <<"State">> := string(),
%%   <<"StreetInfo">> := string(),
%%   <<"StreetNumber">> := string()
%% }
-type validate_e911_address_request() :: #{binary() => any()}.


%% Example:
%% list_voice_connector_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_voice_connector_groups_request() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type disassociate_phone_numbers_from_voice_connector_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_termination_request() :: #{}
-type get_voice_connector_termination_request() :: #{}.


%% Example:
%% list_sip_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SipRules">> => list(sip_rule())
%% }
-type list_sip_rules_response() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_group_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string())
%% }
-type disassociate_phone_numbers_from_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% create_sip_rule_request() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"TargetApplications">> => list(sip_rule_target_application()),
%%   <<"TriggerType">> := list(any()),
%%   <<"TriggerValue">> := string()
%% }
-type create_sip_rule_request() :: #{binary() => any()}.


%% Example:
%% voice_profile() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ExpirationTimestamp">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceProfileArn">> => string(),
%%   <<"VoiceProfileDomainId">> => string(),
%%   <<"VoiceProfileId">> => string()
%% }
-type voice_profile() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_streaming_configuration_request() :: #{
%%   <<"StreamingConfiguration">> := streaming_configuration()
%% }
-type put_voice_connector_streaming_configuration_request() :: #{binary() => any()}.


%% Example:
%% start_speaker_search_task_request() :: #{
%%   <<"CallLeg">> => list(any()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"TransactionId">> := string(),
%%   <<"VoiceProfileDomainId">> := string()
%% }
-type start_speaker_search_task_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type batch_delete_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_streaming_configuration_response() :: #{
%%   <<"StreamingConfiguration">> => streaming_configuration()
%% }
-type get_voice_connector_streaming_configuration_response() :: #{binary() => any()}.


%% Example:
%% proxy_session() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndedTimestamp">> => non_neg_integer(),
%%   <<"ExpiryMinutes">> => integer(),
%%   <<"GeoMatchLevel">> => list(any()),
%%   <<"GeoMatchParams">> => geo_match_params(),
%%   <<"Name">> => string(),
%%   <<"NumberSelectionBehavior">> => list(any()),
%%   <<"Participants">> => list(participant()),
%%   <<"ProxySessionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type proxy_session() :: #{binary() => any()}.


%% Example:
%% get_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type get_phone_number_order_response() :: #{binary() => any()}.


%% Example:
%% list_phone_numbers_request() :: #{
%%   <<"FilterName">> => list(any()),
%%   <<"FilterValue">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => string()
%% }
-type list_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_request() :: #{
%%   <<"AwsRegion">> => list(any()),
%%   <<"IntegrationType">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"RequireEncryption">> := boolean(),
%%   <<"Tags">> => list(tag())
%% }
-type create_voice_connector_request() :: #{binary() => any()}.

%% Example:
%% get_phone_number_request() :: #{}
-type get_phone_number_request() :: #{}.


%% Example:
%% create_voice_profile_request() :: #{
%%   <<"SpeakerSearchTaskId">> := string()
%% }
-type create_voice_profile_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_proxy_request() :: #{
%%   <<"DefaultSessionExpiryMinutes">> := integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"FallBackPhoneNumber">> => string(),
%%   <<"PhoneNumberPoolCountries">> := list(string())
%% }
-type put_voice_connector_proxy_request() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type associate_phone_numbers_with_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_logging_configuration_request() :: #{
%%   <<"LoggingConfiguration">> := logging_configuration()
%% }
-type put_voice_connector_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% phone_number_order() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"FocDate">> => non_neg_integer(),
%%   <<"OrderType">> => list(any()),
%%   <<"OrderedPhoneNumbers">> => list(ordered_phone_number()),
%%   <<"PhoneNumberOrderId">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type phone_number_order() :: #{binary() => any()}.

%% Example:
%% delete_phone_number_request() :: #{}
-type delete_phone_number_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% sip_media_application_endpoint() :: #{
%%   <<"LambdaArn">> => string()
%% }
-type sip_media_application_endpoint() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_group_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type disassociate_phone_numbers_from_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% get_global_settings_response() :: #{
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type get_global_settings_response() :: #{binary() => any()}.


%% Example:
%% voice_connector() :: #{
%%   <<"AwsRegion">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"OutboundHostName">> => string(),
%%   <<"RequireEncryption">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorArn">> => string(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type voice_connector() :: #{binary() => any()}.


%% Example:
%% list_proxy_sessions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_proxy_sessions_request() :: #{binary() => any()}.


%% Example:
%% origination_route() :: #{
%%   <<"Host">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Priority">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"Weight">> => integer()
%% }
-type origination_route() :: #{binary() => any()}.


%% Example:
%% list_voice_profile_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_voice_profile_domains_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% voice_tone_analysis_task() :: #{
%%   <<"CallDetails">> => call_details(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"StartedTimestamp">> => non_neg_integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceToneAnalysisTaskId">> => string(),
%%   <<"VoiceToneAnalysisTaskStatus">> => string()
%% }
-type voice_tone_analysis_task() :: #{binary() => any()}.


%% Example:
%% streaming_notification_target() :: #{
%%   <<"NotificationTarget">> => list(any())
%% }
-type streaming_notification_target() :: #{binary() => any()}.


%% Example:
%% create_voice_profile_domain_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"ServerSideEncryptionConfiguration">> := server_side_encryption_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_voice_profile_domain_request() :: #{binary() => any()}.


%% Example:
%% voice_connector_item() :: #{
%%   <<"Priority">> => integer(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type voice_connector_item() :: #{binary() => any()}.


%% Example:
%% list_available_voice_connector_regions_response() :: #{
%%   <<"VoiceConnectorRegions">> => list(list(any())())
%% }
-type list_available_voice_connector_regions_response() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_logging_configuration_response() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type put_sip_media_application_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type update_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% get_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type get_phone_number_response() :: #{binary() => any()}.


%% Example:
%% list_voice_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VoiceProfileDomainId">> := string()
%% }
-type list_voice_profiles_request() :: #{binary() => any()}.


%% Example:
%% list_voice_connector_termination_credentials_response() :: #{
%%   <<"Usernames">> => list(string())
%% }
-type list_voice_connector_termination_credentials_response() :: #{binary() => any()}.


%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"KmsKeyArn">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% update_global_settings_request() :: #{
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type update_global_settings_request() :: #{binary() => any()}.


%% Example:
%% sip_media_application_alexa_skill_configuration() :: #{
%%   <<"AlexaSkillIds">> => list(string()),
%%   <<"AlexaSkillStatus">> => list(any())
%% }
-type sip_media_application_alexa_skill_configuration() :: #{binary() => any()}.


%% Example:
%% create_proxy_session_request() :: #{
%%   <<"Capabilities">> := list(list(any())()),
%%   <<"ExpiryMinutes">> => integer(),
%%   <<"GeoMatchLevel">> => list(any()),
%%   <<"GeoMatchParams">> => geo_match_params(),
%%   <<"Name">> => string(),
%%   <<"NumberSelectionBehavior">> => list(any()),
%%   <<"ParticipantPhoneNumbers">> := list(string())
%% }
-type create_proxy_session_request() :: #{binary() => any()}.


%% Example:
%% candidate_address() :: #{
%%   <<"city">> => string(),
%%   <<"country">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"postalCodePlus4">> => string(),
%%   <<"state">> => string(),
%%   <<"streetInfo">> => string(),
%%   <<"streetNumber">> => string()
%% }
-type candidate_address() :: #{binary() => any()}.

%% Example:
%% get_sip_rule_request() :: #{}
-type get_sip_rule_request() :: #{}.

%% Example:
%% get_voice_connector_external_systems_configuration_request() :: #{}
-type get_voice_connector_external_systems_configuration_request() :: #{}.

%% Example:
%% get_voice_connector_proxy_request() :: #{}
-type get_voice_connector_proxy_request() :: #{}.


%% Example:
%% list_sip_media_applications_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SipMediaApplications">> => list(sip_media_application())
%% }
-type list_sip_media_applications_response() :: #{binary() => any()}.

%% Example:
%% get_sip_media_application_logging_configuration_request() :: #{}
-type get_sip_media_application_logging_configuration_request() :: #{}.

%% Example:
%% delete_voice_connector_external_systems_configuration_request() :: #{}
-type delete_voice_connector_external_systems_configuration_request() :: #{}.

%% Example:
%% stop_voice_tone_analysis_task_request() :: #{}
-type stop_voice_tone_analysis_task_request() :: #{}.


%% Example:
%% sip_media_application_logging_configuration() :: #{
%%   <<"EnableSipMediaApplicationMessageLogs">> => boolean()
%% }
-type sip_media_application_logging_configuration() :: #{binary() => any()}.


%% Example:
%% get_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type get_proxy_session_response() :: #{binary() => any()}.


%% Example:
%% list_voice_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceProfiles">> => list(voice_profile_summary())
%% }
-type list_voice_profiles_response() :: #{binary() => any()}.


%% Example:
%% update_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type update_sip_rule_response() :: #{binary() => any()}.


%% Example:
%% voice_profile_summary() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ExpirationTimestamp">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceProfileArn">> => string(),
%%   <<"VoiceProfileDomainId">> => string(),
%%   <<"VoiceProfileId">> => string()
%% }
-type voice_profile_summary() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"VoiceConnectorItems">> => list(voice_connector_item())
%% }
-type create_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_voice_profile_response() :: #{
%%   <<"VoiceProfile">> => voice_profile()
%% }
-type get_voice_profile_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_call_response() :: #{
%%   <<"SipMediaApplicationCall">> => sip_media_application_call()
%% }
-type create_sip_media_application_call_response() :: #{binary() => any()}.


%% Example:
%% phone_number_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type phone_number_error() :: #{binary() => any()}.


%% Example:
%% update_phone_number_request_item() :: #{
%%   <<"CallingName">> => string(),
%%   <<"Name">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"ProductType">> => list(any())
%% }
-type update_phone_number_request_item() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_group_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type associate_phone_numbers_with_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_origination_request() :: #{
%%   <<"Origination">> := origination()
%% }
-type put_voice_connector_origination_request() :: #{binary() => any()}.


%% Example:
%% delete_voice_connector_termination_credentials_request() :: #{
%%   <<"Usernames">> := list(string())
%% }
-type delete_voice_connector_termination_credentials_request() :: #{binary() => any()}.


%% Example:
%% list_voice_connectors_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceConnectors">> => list(voice_connector())
%% }
-type list_voice_connectors_response() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_alexa_skill_configuration_response() :: #{
%%   <<"SipMediaApplicationAlexaSkillConfiguration">> => sip_media_application_alexa_skill_configuration()
%% }
-type put_sip_media_application_alexa_skill_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_group_request() :: #{}
-type get_voice_connector_group_request() :: #{}.


%% Example:
%% voice_connector_group() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorGroupArn">> => string(),
%%   <<"VoiceConnectorGroupId">> => string(),
%%   <<"VoiceConnectorItems">> => list(voice_connector_item())
%% }
-type voice_connector_group() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_origination_response() :: #{
%%   <<"Origination">> => origination()
%% }
-type get_voice_connector_origination_response() :: #{binary() => any()}.

%% Example:
%% delete_voice_profile_request() :: #{}
-type delete_voice_profile_request() :: #{}.

%% Example:
%% delete_voice_profile_domain_request() :: #{}
-type delete_voice_profile_domain_request() :: #{}.


%% Example:
%% get_phone_number_settings_response() :: #{
%%   <<"CallingName">> => string(),
%%   <<"CallingNameUpdatedTimestamp">> => non_neg_integer()
%% }
-type get_phone_number_settings_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_call_request() :: #{
%%   <<"ArgumentsMap">> => map(),
%%   <<"FromPhoneNumber">> := string(),
%%   <<"SipHeaders">> => map(),
%%   <<"ToPhoneNumber">> := string()
%% }
-type create_sip_media_application_call_request() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_call_request() :: #{
%%   <<"Arguments">> := map()
%% }
-type update_sip_media_application_call_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_termination_request() :: #{}
-type delete_voice_connector_termination_request() :: #{}.


%% Example:
%% get_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type get_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type put_voice_connector_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type create_voice_connector_response() :: #{binary() => any()}.

%% Example:
%% get_proxy_session_request() :: #{}
-type get_proxy_session_request() :: #{}.


%% Example:
%% sip_media_application_call() :: #{
%%   <<"TransactionId">> => string()
%% }
-type sip_media_application_call() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% list_phone_numbers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number())
%% }
-type list_phone_numbers_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RequireEncryption">> := boolean()
%% }
-type update_voice_connector_request() :: #{binary() => any()}.


%% Example:
%% get_voice_tone_analysis_task_request() :: #{
%%   <<"IsCaller">> := boolean()
%% }
-type get_voice_tone_analysis_task_request() :: #{binary() => any()}.


%% Example:
%% update_voice_profile_domain_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_voice_profile_domain_request() :: #{binary() => any()}.


%% Example:
%% credential() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type credential() :: #{binary() => any()}.


%% Example:
%% phone_number_capabilities() :: #{
%%   <<"InboundCall">> => boolean(),
%%   <<"InboundMMS">> => boolean(),
%%   <<"InboundSMS">> => boolean(),
%%   <<"OutboundCall">> => boolean(),
%%   <<"OutboundMMS">> => boolean(),
%%   <<"OutboundSMS">> => boolean()
%% }
-type phone_number_capabilities() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_streaming_configuration_request() :: #{}
-type delete_voice_connector_streaming_configuration_request() :: #{}.

%% Example:
%% delete_voice_connector_emergency_calling_configuration_request() :: #{}
-type delete_voice_connector_emergency_calling_configuration_request() :: #{}.

%% Example:
%% get_sip_media_application_request() :: #{}
-type get_sip_media_application_request() :: #{}.


%% Example:
%% create_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type create_sip_media_application_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_proxy_response() :: #{
%%   <<"Proxy">> => proxy()
%% }
-type put_voice_connector_proxy_response() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"city">> => string(),
%%   <<"country">> => string(),
%%   <<"postDirectional">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"postalCodePlus4">> => string(),
%%   <<"preDirectional">> => string(),
%%   <<"state">> => string(),
%%   <<"streetName">> => string(),
%%   <<"streetNumber">> => string(),
%%   <<"streetSuffix">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% sip_rule_target_application() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"SipMediaApplicationId">> => string()
%% }
-type sip_rule_target_application() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_emergency_calling_configuration_response() :: #{
%%   <<"EmergencyCallingConfiguration">> => emergency_calling_configuration()
%% }
-type get_voice_connector_emergency_calling_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_speaker_search_task_request() :: #{}
-type get_speaker_search_task_request() :: #{}.

%% Example:
%% delete_voice_connector_request() :: #{}
-type delete_voice_connector_request() :: #{}.


%% Example:
%% update_phone_number_request() :: #{
%%   <<"CallingName">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProductType">> => list(any())
%% }
-type update_phone_number_request() :: #{binary() => any()}.


%% Example:
%% get_voice_profile_domain_response() :: #{
%%   <<"VoiceProfileDomain">> => voice_profile_domain()
%% }
-type get_voice_profile_domain_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_origination_request() :: #{}
-type get_voice_connector_origination_request() :: #{}.


%% Example:
%% put_voice_connector_emergency_calling_configuration_response() :: #{
%%   <<"EmergencyCallingConfiguration">> => emergency_calling_configuration()
%% }
-type put_voice_connector_emergency_calling_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_termination_response() :: #{
%%   <<"Termination">> => termination()
%% }
-type get_voice_connector_termination_response() :: #{binary() => any()}.

%% Example:
%% get_sip_media_application_alexa_skill_configuration_request() :: #{}
-type get_sip_media_application_alexa_skill_configuration_request() :: #{}.


%% Example:
%% batch_update_phone_number_request() :: #{
%%   <<"UpdatePhoneNumberRequestItems">> := list(update_phone_number_request_item())
%% }
-type batch_update_phone_number_request() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_alexa_skill_configuration_request() :: #{
%%   <<"SipMediaApplicationAlexaSkillConfiguration">> => sip_media_application_alexa_skill_configuration()
%% }
-type put_sip_media_application_alexa_skill_configuration_request() :: #{binary() => any()}.


%% Example:
%% sip_media_application() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Endpoints">> => list(sip_media_application_endpoint()),
%%   <<"Name">> => string(),
%%   <<"SipMediaApplicationArn">> => string(),
%%   <<"SipMediaApplicationId">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type sip_media_application() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_request() :: #{
%%   <<"AreaCode">> => string(),
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberType">> => list(any()),
%%   <<"State">> => string(),
%%   <<"TollFreePrefix">> => string()
%% }
-type search_available_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% list_supported_phone_number_countries_request() :: #{
%%   <<"ProductType">> := list(any())
%% }
-type list_supported_phone_number_countries_request() :: #{binary() => any()}.


%% Example:
%% emergency_calling_configuration() :: #{
%%   <<"DNIS">> => list(d_n_i_s_emergency_calling_configuration())
%% }
-type emergency_calling_configuration() :: #{binary() => any()}.

-type associate_phone_numbers_with_voice_connector_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type associate_phone_numbers_with_voice_connector_group_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_delete_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_update_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_phone_number_order_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_media_application_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_media_application_call_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_rule_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_connector_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_connector_group_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_profile_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    gone_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_profile_domain_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_external_systems_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_termination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_profile_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_profile_domain_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_phone_numbers_from_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_phone_numbers_from_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_global_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_order_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_media_application_alexa_skill_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_media_application_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_speaker_search_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_external_systems_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_termination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_termination_health_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_profile_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_profile_domain_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_available_voice_connector_regions_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_phone_number_orders_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_phone_numbers_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_proxy_sessions_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_sip_media_applications_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_sip_rules_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_supported_phone_number_countries_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connector_groups_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connectors_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_profile_domains_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_profiles_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_sip_media_application_alexa_skill_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_sip_media_application_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_external_systems_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_termination_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type restore_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type search_available_phone_numbers_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type start_speaker_search_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    gone_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type start_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    gone_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type stop_speaker_search_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type stop_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_global_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_phone_number_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_media_application_call_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_profile_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    gone_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_profile_domain_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type validate_e911_address_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates phone numbers with the specified Amazon Chime SDK Voice
%% Connector.
-spec associate_phone_numbers_with_voice_connector(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_request()) ->
    {ok, associate_phone_numbers_with_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_errors(), tuple()}.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input) ->
    associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input, []).

-spec associate_phone_numbers_with_voice_connector(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_request(), proplists:proplist()) ->
    {ok, associate_phone_numbers_with_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_errors(), tuple()}.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates phone numbers with the specified Amazon Chime SDK Voice
%% Connector group.
-spec associate_phone_numbers_with_voice_connector_group(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_group_request()) ->
    {ok, associate_phone_numbers_with_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_group_errors(), tuple()}.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec associate_phone_numbers_with_voice_connector_group(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_group_request(), proplists:proplist()) ->
    {ok, associate_phone_numbers_with_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_group_errors(), tuple()}.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
%% Moves phone numbers into the
%% Deletion queue.
%%
%% Phone numbers must be disassociated from any users or Amazon Chime SDK
%% Voice Connectors before they can be deleted.
%%
%% Phone numbers remain in the
%% Deletion queue for 7 days before they are deleted permanently.
-spec batch_delete_phone_number(aws_client:aws_client(), batch_delete_phone_number_request()) ->
    {ok, batch_delete_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_phone_number_errors(), tuple()}.
batch_delete_phone_number(Client, Input) ->
    batch_delete_phone_number(Client, Input, []).

-spec batch_delete_phone_number(aws_client:aws_client(), batch_delete_phone_number_request(), proplists:proplist()) ->
    {ok, batch_delete_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_phone_number_errors(), tuple()}.
batch_delete_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates phone number product types, calling names, or phone number
%% names.
%%
%% You can update one attribute at a time for each
%% `UpdatePhoneNumberRequestItem'. For example, you can update the
%% product type, the calling name, or phone name.
%%
%% You cannot have a duplicate `phoneNumberId' in a request.
-spec batch_update_phone_number(aws_client:aws_client(), batch_update_phone_number_request()) ->
    {ok, batch_update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_update_phone_number_errors(), tuple()}.
batch_update_phone_number(Client, Input) ->
    batch_update_phone_number(Client, Input, []).

-spec batch_update_phone_number(aws_client:aws_client(), batch_update_phone_number_request(), proplists:proplist()) ->
    {ok, batch_update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_update_phone_number_errors(), tuple()}.
batch_update_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an order for phone numbers to be provisioned.
%%
%% For numbers outside the U.S., you must use the Amazon Chime SDK SIP media
%% application dial-in product type.
-spec create_phone_number_order(aws_client:aws_client(), create_phone_number_order_request()) ->
    {ok, create_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, create_phone_number_order_errors(), tuple()}.
create_phone_number_order(Client, Input) ->
    create_phone_number_order(Client, Input, []).

-spec create_phone_number_order(aws_client:aws_client(), create_phone_number_order_request(), proplists:proplist()) ->
    {ok, create_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, create_phone_number_order_errors(), tuple()}.
create_phone_number_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number-orders"],
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

%% @doc Creates a proxy session for the specified Amazon Chime SDK Voice
%% Connector for
%% the specified participant phone numbers.
-spec create_proxy_session(aws_client:aws_client(), binary() | list(), create_proxy_session_request()) ->
    {ok, create_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, create_proxy_session_errors(), tuple()}.
create_proxy_session(Client, VoiceConnectorId, Input) ->
    create_proxy_session(Client, VoiceConnectorId, Input, []).

-spec create_proxy_session(aws_client:aws_client(), binary() | list(), create_proxy_session_request(), proplists:proplist()) ->
    {ok, create_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, create_proxy_session_errors(), tuple()}.
create_proxy_session(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
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

%% @doc Creates a SIP media application.
%%
%% For more information about SIP media applications, see Managing SIP media
%% applications
%% and rules:
%% https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html
%% in the Amazon Chime SDK Administrator Guide.
-spec create_sip_media_application(aws_client:aws_client(), create_sip_media_application_request()) ->
    {ok, create_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_errors(), tuple()}.
create_sip_media_application(Client, Input) ->
    create_sip_media_application(Client, Input, []).

-spec create_sip_media_application(aws_client:aws_client(), create_sip_media_application_request(), proplists:proplist()) ->
    {ok, create_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_errors(), tuple()}.
create_sip_media_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications"],
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

%% @doc Creates an outbound call to a phone number from the phone number
%% specified
%% in the request, and it invokes the endpoint of the specified
%% `sipMediaApplicationId'.
-spec create_sip_media_application_call(aws_client:aws_client(), binary() | list(), create_sip_media_application_call_request()) ->
    {ok, create_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_call_errors(), tuple()}.
create_sip_media_application_call(Client, SipMediaApplicationId, Input) ->
    create_sip_media_application_call(Client, SipMediaApplicationId, Input, []).

-spec create_sip_media_application_call(aws_client:aws_client(), binary() | list(), create_sip_media_application_call_request(), proplists:proplist()) ->
    {ok, create_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_call_errors(), tuple()}.
create_sip_media_application_call(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls"],
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

%% @doc Creates a SIP rule, which can be used to run a SIP media application
%% as a target for a specific trigger type.
%%
%% For more information about SIP rules, see Managing SIP media applications
%% and rules:
%% https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html
%% in the Amazon Chime SDK Administrator Guide.
-spec create_sip_rule(aws_client:aws_client(), create_sip_rule_request()) ->
    {ok, create_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, create_sip_rule_errors(), tuple()}.
create_sip_rule(Client, Input) ->
    create_sip_rule(Client, Input, []).

-spec create_sip_rule(aws_client:aws_client(), create_sip_rule_request(), proplists:proplist()) ->
    {ok, create_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, create_sip_rule_errors(), tuple()}.
create_sip_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-rules"],
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

%% @doc Creates an Amazon Chime SDK Voice Connector.
%%
%% For more information about
%% Voice Connectors,
%% see Managing Amazon Chime SDK Voice Connector groups:
%% https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html
%% in the Amazon Chime SDK
%% Administrator Guide.
-spec create_voice_connector(aws_client:aws_client(), create_voice_connector_request()) ->
    {ok, create_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_errors(), tuple()}.
create_voice_connector(Client, Input) ->
    create_voice_connector(Client, Input, []).

-spec create_voice_connector(aws_client:aws_client(), create_voice_connector_request(), proplists:proplist()) ->
    {ok, create_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_errors(), tuple()}.
create_voice_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors"],
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

%% @doc Creates an Amazon Chime SDK Voice Connector group under the
%% administrator's
%% AWS account.
%%
%% You can associate Amazon Chime SDK Voice Connectors with the
%% Voice Connector group by including `VoiceConnectorItems' in the
%% request.
%%
%% You can include Voice Connectors from different AWS Regions in your group.
%% This creates a fault tolerant mechanism for fallback in case of
%% availability events.
-spec create_voice_connector_group(aws_client:aws_client(), create_voice_connector_group_request()) ->
    {ok, create_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_group_errors(), tuple()}.
create_voice_connector_group(Client, Input) ->
    create_voice_connector_group(Client, Input, []).

-spec create_voice_connector_group(aws_client:aws_client(), create_voice_connector_group_request(), proplists:proplist()) ->
    {ok, create_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_group_errors(), tuple()}.
create_voice_connector_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups"],
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

%% @doc Creates a voice profile, which consists of an enrolled user and their
%% latest voice print.
%%
%% Before creating any voice profiles, you must provide all notices and
%% obtain all consents from the speaker as required under applicable privacy
%% and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
%%
%% For more information about voice profiles and voice analytics, see Using
%% Amazon Chime SDK Voice Analytics:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
%% in the Amazon Chime SDK Developer Guide.
-spec create_voice_profile(aws_client:aws_client(), create_voice_profile_request()) ->
    {ok, create_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, create_voice_profile_errors(), tuple()}.
create_voice_profile(Client, Input) ->
    create_voice_profile(Client, Input, []).

-spec create_voice_profile(aws_client:aws_client(), create_voice_profile_request(), proplists:proplist()) ->
    {ok, create_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, create_voice_profile_errors(), tuple()}.
create_voice_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-profiles"],
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

%% @doc Creates a voice profile domain, a collection of voice profiles, their
%% voice prints, and encrypted enrollment audio.
%%
%% Before creating any voice profiles, you must provide all notices and
%% obtain all consents from the speaker as required under applicable privacy
%% and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
%%
%% For more information about voice profile domains, see Using Amazon Chime
%% SDK Voice Analytics:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
%% in the Amazon Chime SDK Developer Guide.
-spec create_voice_profile_domain(aws_client:aws_client(), create_voice_profile_domain_request()) ->
    {ok, create_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, create_voice_profile_domain_errors(), tuple()}.
create_voice_profile_domain(Client, Input) ->
    create_voice_profile_domain(Client, Input, []).

-spec create_voice_profile_domain(aws_client:aws_client(), create_voice_profile_domain_request(), proplists:proplist()) ->
    {ok, create_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, create_voice_profile_domain_errors(), tuple()}.
create_voice_profile_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-profile-domains"],
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

%% @doc Moves the specified phone number into the
%% Deletion queue.
%%
%% A phone number must
%% be disassociated from any users or Amazon Chime SDK Voice Connectors
%% before it can be
%% deleted.
%%
%% Deleted phone numbers remain in the
%% Deletion queue queue for 7 days before
%% they are deleted permanently.
-spec delete_phone_number(aws_client:aws_client(), binary() | list(), delete_phone_number_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_phone_number_errors(), tuple()}.
delete_phone_number(Client, PhoneNumberId, Input) ->
    delete_phone_number(Client, PhoneNumberId, Input, []).

-spec delete_phone_number(aws_client:aws_client(), binary() | list(), delete_phone_number_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_phone_number_errors(), tuple()}.
delete_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Deletes the specified proxy session from the specified Amazon Chime
%% SDK Voice
%% Connector.
-spec delete_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_proxy_session_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_proxy_session_errors(), tuple()}.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).

-spec delete_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_proxy_session_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_proxy_session_errors(), tuple()}.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Deletes a SIP media application.
-spec delete_sip_media_application(aws_client:aws_client(), binary() | list(), delete_sip_media_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_media_application_errors(), tuple()}.
delete_sip_media_application(Client, SipMediaApplicationId, Input) ->
    delete_sip_media_application(Client, SipMediaApplicationId, Input, []).

-spec delete_sip_media_application(aws_client:aws_client(), binary() | list(), delete_sip_media_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_media_application_errors(), tuple()}.
delete_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
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

%% @doc Deletes a SIP rule.
-spec delete_sip_rule(aws_client:aws_client(), binary() | list(), delete_sip_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_rule_errors(), tuple()}.
delete_sip_rule(Client, SipRuleId, Input) ->
    delete_sip_rule(Client, SipRuleId, Input, []).

-spec delete_sip_rule(aws_client:aws_client(), binary() | list(), delete_sip_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_rule_errors(), tuple()}.
delete_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
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

%% @doc Deletes an Amazon Chime SDK Voice Connector.
%%
%% Any phone numbers associated
%% with the Amazon Chime SDK Voice Connector must be disassociated from it
%% before it
%% can be deleted.
-spec delete_voice_connector(aws_client:aws_client(), binary() | list(), delete_voice_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_errors(), tuple()}.
delete_voice_connector(Client, VoiceConnectorId, Input) ->
    delete_voice_connector(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector(aws_client:aws_client(), binary() | list(), delete_voice_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_errors(), tuple()}.
delete_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
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

%% @doc Deletes the emergency calling details from the specified Amazon Chime
%% SDK Voice
%% Connector.
-spec delete_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_emergency_calling_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_emergency_calling_configuration_errors(), tuple()}.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_emergency_calling_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_emergency_calling_configuration_errors(), tuple()}.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
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

%% @doc Deletes the external systems configuration for a Voice Connector.
-spec delete_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_external_systems_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_external_systems_configuration_errors(), tuple()}.
delete_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_external_systems_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_external_systems_configuration_errors(), tuple()}.
delete_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/external-systems-configuration"],
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

%% @doc Deletes an Amazon Chime SDK Voice Connector group.
%%
%% Any `VoiceConnectorItems'
%% and phone numbers associated with the group must be removed before it can
%% be
%% deleted.
-spec delete_voice_connector_group(aws_client:aws_client(), binary() | list(), delete_voice_connector_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_group_errors(), tuple()}.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    delete_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec delete_voice_connector_group(aws_client:aws_client(), binary() | list(), delete_voice_connector_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_group_errors(), tuple()}.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
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

%% @doc Deletes the origination settings for the specified Amazon Chime SDK
%% Voice Connector.
%%
%% If emergency calling is configured for the Voice Connector, it must be
%% deleted prior to deleting the origination settings.
-spec delete_voice_connector_origination(aws_client:aws_client(), binary() | list(), delete_voice_connector_origination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_origination_errors(), tuple()}.
delete_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_origination(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_origination(aws_client:aws_client(), binary() | list(), delete_voice_connector_origination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_origination_errors(), tuple()}.
delete_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
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

%% @doc Deletes the proxy configuration from the specified Amazon Chime SDK
%% Voice Connector.
-spec delete_voice_connector_proxy(aws_client:aws_client(), binary() | list(), delete_voice_connector_proxy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_proxy_errors(), tuple()}.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_proxy(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_proxy(aws_client:aws_client(), binary() | list(), delete_voice_connector_proxy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_proxy_errors(), tuple()}.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
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

%% @doc Deletes a Voice Connector's streaming configuration.
-spec delete_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_streaming_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_streaming_configuration_errors(), tuple()}.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_streaming_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_streaming_configuration_errors(), tuple()}.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
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

%% @doc Deletes the termination settings for the specified Amazon Chime SDK
%% Voice Connector.
%%
%% If emergency calling is configured for the Voice Connector, it must be
%% deleted prior to deleting the termination settings.
-spec delete_voice_connector_termination(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_errors(), tuple()}.
delete_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_termination(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_errors(), tuple()}.
delete_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
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

%% @doc Deletes the specified SIP credentials used by your equipment to
%% authenticate during call termination.
-spec delete_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_credentials_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_credentials_errors(), tuple()}.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_credentials_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_credentials_errors(), tuple()}.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=delete"],
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

%% @doc Deletes a voice profile, including its voice print and enrollment
%% data.
%%
%% WARNING: This action is not reversible.
-spec delete_voice_profile(aws_client:aws_client(), binary() | list(), delete_voice_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_profile_errors(), tuple()}.
delete_voice_profile(Client, VoiceProfileId, Input) ->
    delete_voice_profile(Client, VoiceProfileId, Input, []).

-spec delete_voice_profile(aws_client:aws_client(), binary() | list(), delete_voice_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_profile_errors(), tuple()}.
delete_voice_profile(Client, VoiceProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-profiles/", aws_util:encode_uri(VoiceProfileId), ""],
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

%% @doc Deletes all voice profiles in the domain.
%%
%% WARNING: This action is not reversible.
-spec delete_voice_profile_domain(aws_client:aws_client(), binary() | list(), delete_voice_profile_domain_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_profile_domain_errors(), tuple()}.
delete_voice_profile_domain(Client, VoiceProfileDomainId, Input) ->
    delete_voice_profile_domain(Client, VoiceProfileDomainId, Input, []).

-spec delete_voice_profile_domain(aws_client:aws_client(), binary() | list(), delete_voice_profile_domain_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_profile_domain_errors(), tuple()}.
delete_voice_profile_domain(Client, VoiceProfileDomainId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-profile-domains/", aws_util:encode_uri(VoiceProfileDomainId), ""],
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

%% @doc Disassociates the specified phone numbers from the specified
%% Amazon Chime SDK Voice Connector.
-spec disassociate_phone_numbers_from_voice_connector(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_request()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input) ->
    disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input, []).

-spec disassociate_phone_numbers_from_voice_connector(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_request(), proplists:proplist()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime SDK Voice
%% Connector group.
-spec disassociate_phone_numbers_from_voice_connector_group(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_group_request()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_group_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec disassociate_phone_numbers_from_voice_connector_group(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_group_request(), proplists:proplist()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_group_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the global settings for the Amazon Chime SDK Voice
%% Connectors in an AWS account.
-spec get_global_settings(aws_client:aws_client()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, #{}, #{}).

-spec get_global_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_settings(Client, QueryMap, HeadersMap, []).

-spec get_global_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number ID, such as
%% associations,
%% capabilities, and product type.
-spec get_phone_number(aws_client:aws_client(), binary() | list()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    get_phone_number(Client, PhoneNumberId, #{}, #{}).

-spec get_phone_number(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

-spec get_phone_number(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number order, such as the
%% order
%% creation timestamp, phone numbers in E.164 format, product type, and
%% order status.
-spec get_phone_number_order(aws_client:aws_client(), binary() | list()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId)
  when is_map(Client) ->
    get_phone_number_order(Client, PhoneNumberOrderId, #{}, #{}).

-spec get_phone_number_order(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, []).

-spec get_phone_number_order(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders/", aws_util:encode_uri(PhoneNumberOrderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the phone number settings for the administrator's AWS
%% account,
%% such as the default outbound calling name.
-spec get_phone_number_settings(aws_client:aws_client()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client)
  when is_map(Client) ->
    get_phone_number_settings(Client, #{}, #{}).

-spec get_phone_number_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_settings(Client, QueryMap, HeadersMap, []).

-spec get_phone_number_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified proxy session details for the specified
%% Amazon Chime SDK Voice Connector.
-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId)
  when is_map(Client) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, #{}, #{}).

-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the information for a SIP media application, including
%% name,
%% AWS Region, and endpoints.
-spec get_sip_media_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application(Client, SipMediaApplicationId, #{}, #{}).

-spec get_sip_media_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

-spec get_sip_media_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Alexa Skill configuration for the SIP media application.
%%
%% Due to changes made by the Amazon Alexa service, this API is no longer
%% available for use. For more information, refer to
%% the Alexa Smart Properties:
%% https://developer.amazon.com/en-US/alexa/alexasmartproperties page.
-spec get_sip_media_application_alexa_skill_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_media_application_alexa_skill_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_alexa_skill_configuration_errors(), tuple()}.
get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, #{}, #{}).

-spec get_sip_media_application_alexa_skill_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_media_application_alexa_skill_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_alexa_skill_configuration_errors(), tuple()}.
get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

-spec get_sip_media_application_alexa_skill_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_media_application_alexa_skill_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_alexa_skill_configuration_errors(), tuple()}.
get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/alexa-skill-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the logging configuration for the specified SIP media
%% application.
-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, #{}, #{}).

-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a SIP rule, such as the rule ID, name,
%% triggers, and
%% target endpoints.
-spec get_sip_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId)
  when is_map(Client) ->
    get_sip_rule(Client, SipRuleId, #{}, #{}).

-spec get_sip_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, []).

-spec get_sip_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified speaker search task.
-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId)
  when is_map(Client) ->
    get_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, #{}, #{}).

-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime SDK Voice Connector,
%% such as
%% timestamps,name, outbound host, and encryption requirements.
-spec get_voice_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the emergency calling configuration details for the
%% specified Voice Connector.
-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an external systems configuration for a Voice
%% Connector.
-spec get_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_external_systems_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_external_systems_configuration_errors(), tuple()}.
get_voice_connector_external_systems_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_external_systems_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_external_systems_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_external_systems_configuration_errors(), tuple()}.
get_voice_connector_external_systems_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_external_systems_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_external_systems_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_external_systems_configuration_errors(), tuple()}.
get_voice_connector_external_systems_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/external-systems-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime SDK Voice Connector
%% group,
%% such as timestamps,name, and associated `VoiceConnectorItems'.
-spec get_voice_connector_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId)
  when is_map(Client) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, #{}, #{}).

-spec get_voice_connector_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, []).

-spec get_voice_connector_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the logging configuration settings for the specified Voice
%% Connector.
%%
%% Shows whether SIP message logs are enabled for sending to Amazon
%% CloudWatch Logs.
-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the origination settings for the specified Voice Connector.
-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_origination(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the proxy configuration details for the specified Amazon
%% Chime SDK Voice
%% Connector.
-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the streaming configuration details for the specified
%% Amazon Chime SDK
%% Voice Connector.
%%
%% Shows whether media streaming is enabled for sending to Amazon
%% Kinesis. It also shows the retention period, in hours, for the Amazon
%% Kinesis data.
-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the termination setting details for the specified Voice
%% Connector.
-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the last time a `SIP OPTIONS' ping
%% was received from your SIP infrastructure for the specified Amazon Chime
%% SDK Voice
%% Connector.
-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/health"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified voice profile.
-spec get_voice_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_errors(), tuple()}.
get_voice_profile(Client, VoiceProfileId)
  when is_map(Client) ->
    get_voice_profile(Client, VoiceProfileId, #{}, #{}).

-spec get_voice_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_errors(), tuple()}.
get_voice_profile(Client, VoiceProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_profile(Client, VoiceProfileId, QueryMap, HeadersMap, []).

-spec get_voice_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_errors(), tuple()}.
get_voice_profile(Client, VoiceProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-profiles/", aws_util:encode_uri(VoiceProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified voice profile domain.
-spec get_voice_profile_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_domain_errors(), tuple()}.
get_voice_profile_domain(Client, VoiceProfileDomainId)
  when is_map(Client) ->
    get_voice_profile_domain(Client, VoiceProfileDomainId, #{}, #{}).

-spec get_voice_profile_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_domain_errors(), tuple()}.
get_voice_profile_domain(Client, VoiceProfileDomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_profile_domain(Client, VoiceProfileDomainId, QueryMap, HeadersMap, []).

-spec get_voice_profile_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, get_voice_profile_domain_errors(), tuple()}.
get_voice_profile_domain(Client, VoiceProfileDomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-profile-domains/", aws_util:encode_uri(VoiceProfileDomainId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a voice tone analysis task.
-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, IsCaller)
  when is_map(Client) ->
    get_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, IsCaller, #{}, #{}).

-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, IsCaller, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, IsCaller, QueryMap, HeadersMap, []).

-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, IsCaller, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isCaller">>, IsCaller}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available AWS Regions in which you can create an Amazon
%% Chime SDK Voice Connector.
-spec list_available_voice_connector_regions(aws_client:aws_client()) ->
    {ok, list_available_voice_connector_regions_response(), tuple()} |
    {error, any()} |
    {error, list_available_voice_connector_regions_errors(), tuple()}.
list_available_voice_connector_regions(Client)
  when is_map(Client) ->
    list_available_voice_connector_regions(Client, #{}, #{}).

-spec list_available_voice_connector_regions(aws_client:aws_client(), map(), map()) ->
    {ok, list_available_voice_connector_regions_response(), tuple()} |
    {error, any()} |
    {error, list_available_voice_connector_regions_errors(), tuple()}.
list_available_voice_connector_regions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_available_voice_connector_regions(Client, QueryMap, HeadersMap, []).

-spec list_available_voice_connector_regions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_available_voice_connector_regions_response(), tuple()} |
    {error, any()} |
    {error, list_available_voice_connector_regions_errors(), tuple()}.
list_available_voice_connector_regions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-regions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone numbers for an administrator's Amazon Chime SDK
%% account.
-spec list_phone_number_orders(aws_client:aws_client()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client)
  when is_map(Client) ->
    list_phone_number_orders(Client, #{}, #{}).

-spec list_phone_number_orders(aws_client:aws_client(), map(), map()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_number_orders(Client, QueryMap, HeadersMap, []).

-spec list_phone_number_orders(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone numbers for the specified Amazon Chime SDK account,
%% Amazon Chime SDK user, Amazon Chime SDK Voice Connector, or Amazon Chime
%% SDK Voice
%% Connector group.
-spec list_phone_numbers(aws_client:aws_client()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client)
  when is_map(Client) ->
    list_phone_numbers(Client, #{}, #{}).

-spec list_phone_numbers(aws_client:aws_client(), map(), map()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, QueryMap, HeadersMap, []).

-spec list_phone_numbers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filter-name">>, maps:get(<<"filter-name">>, QueryMap, undefined)},
        {<<"filter-value">>, maps:get(<<"filter-value">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"product-type">>, maps:get(<<"product-type">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the proxy sessions for the specified Amazon Chime SDK Voice
%% Connector.
-spec list_proxy_sessions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_proxy_sessions(Client, VoiceConnectorId, #{}, #{}).

-spec list_proxy_sessions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec list_proxy_sessions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP media applications under the administrator's AWS
%% account.
-spec list_sip_media_applications(aws_client:aws_client()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client)
  when is_map(Client) ->
    list_sip_media_applications(Client, #{}, #{}).

-spec list_sip_media_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_media_applications(Client, QueryMap, HeadersMap, []).

-spec list_sip_media_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP rules under the administrator's AWS account.
-spec list_sip_rules(aws_client:aws_client()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client)
  when is_map(Client) ->
    list_sip_rules(Client, #{}, #{}).

-spec list_sip_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_rules(Client, QueryMap, HeadersMap, []).

-spec list_sip_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"sip-media-application">>, maps:get(<<"sip-media-application">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the countries that you can order phone numbers from.
-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType)
  when is_map(Client) ->
    list_supported_phone_number_countries(Client, ProductType, #{}, #{}).

-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, []).

-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-countries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"product-type">>, ProductType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags in a given resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
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
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime SDK Voice Connector groups in the
%% administrator's AWS
%% account.
-spec list_voice_connector_groups(aws_client:aws_client()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client)
  when is_map(Client) ->
    list_voice_connector_groups(Client, #{}, #{}).

-spec list_voice_connector_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_groups(Client, QueryMap, HeadersMap, []).

-spec list_voice_connector_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP credentials for the specified Amazon Chime SDK Voice
%% Connector.
-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, #{}, #{}).

-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime SDK Voice Connectors in the administrators
%% AWS account.
-spec list_voice_connectors(aws_client:aws_client()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client)
  when is_map(Client) ->
    list_voice_connectors(Client, #{}, #{}).

-spec list_voice_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connectors(Client, QueryMap, HeadersMap, []).

-spec list_voice_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the specified voice profile domains in the administrator's
%% AWS account.
-spec list_voice_profile_domains(aws_client:aws_client()) ->
    {ok, list_voice_profile_domains_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profile_domains_errors(), tuple()}.
list_voice_profile_domains(Client)
  when is_map(Client) ->
    list_voice_profile_domains(Client, #{}, #{}).

-spec list_voice_profile_domains(aws_client:aws_client(), map(), map()) ->
    {ok, list_voice_profile_domains_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profile_domains_errors(), tuple()}.
list_voice_profile_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_profile_domains(Client, QueryMap, HeadersMap, []).

-spec list_voice_profile_domains(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_profile_domains_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profile_domains_errors(), tuple()}.
list_voice_profile_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-profile-domains"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the voice profiles in a voice profile domain.
-spec list_voice_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_voice_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profiles_errors(), tuple()}.
list_voice_profiles(Client, VoiceProfileDomainId)
  when is_map(Client) ->
    list_voice_profiles(Client, VoiceProfileDomainId, #{}, #{}).

-spec list_voice_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_voice_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profiles_errors(), tuple()}.
list_voice_profiles(Client, VoiceProfileDomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_profiles(Client, VoiceProfileDomainId, QueryMap, HeadersMap, []).

-spec list_voice_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_voice_profiles_errors(), tuple()}.
list_voice_profiles(Client, VoiceProfileDomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"voice-profile-domain-id">>, VoiceProfileDomainId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates the Alexa Skill configuration for the SIP media application.
%%
%% Due to changes made by the Amazon Alexa service, this API is no longer
%% available for use. For more information, refer to
%% the Alexa Smart Properties:
%% https://developer.amazon.com/en-US/alexa/alexasmartproperties page.
-spec put_sip_media_application_alexa_skill_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_alexa_skill_configuration_request()) ->
    {ok, put_sip_media_application_alexa_skill_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_alexa_skill_configuration_errors(), tuple()}.
put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input, []).

-spec put_sip_media_application_alexa_skill_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_alexa_skill_configuration_request(), proplists:proplist()) ->
    {ok, put_sip_media_application_alexa_skill_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_alexa_skill_configuration_errors(), tuple()}.
put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/alexa-skill-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the logging configuration for the specified SIP media
%% application.
-spec put_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_logging_configuration_request()) ->
    {ok, put_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_logging_configuration_errors(), tuple()}.
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input, []).

-spec put_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_logging_configuration_errors(), tuple()}.
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's emergency calling configuration.
-spec put_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_emergency_calling_configuration_request()) ->
    {ok, put_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_emergency_calling_configuration_errors(), tuple()}.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_emergency_calling_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_emergency_calling_configuration_errors(), tuple()}.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an external systems configuration to a Voice Connector.
-spec put_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_external_systems_configuration_request()) ->
    {ok, put_voice_connector_external_systems_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_external_systems_configuration_errors(), tuple()}.
put_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_external_systems_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_external_systems_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_external_systems_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_external_systems_configuration_errors(), tuple()}.
put_voice_connector_external_systems_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/external-systems-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's logging configuration.
-spec put_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_logging_configuration_request()) ->
    {ok, put_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_logging_configuration_errors(), tuple()}.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_logging_configuration_errors(), tuple()}.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's origination settings.
-spec put_voice_connector_origination(aws_client:aws_client(), binary() | list(), put_voice_connector_origination_request()) ->
    {ok, put_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_origination_errors(), tuple()}.
put_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_origination(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_origination(aws_client:aws_client(), binary() | list(), put_voice_connector_origination_request(), proplists:proplist()) ->
    {ok, put_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_origination_errors(), tuple()}.
put_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Puts the specified proxy configuration to the specified Amazon Chime
%% SDK Voice Connector.
-spec put_voice_connector_proxy(aws_client:aws_client(), binary() | list(), put_voice_connector_proxy_request()) ->
    {ok, put_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_proxy_errors(), tuple()}.
put_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    put_voice_connector_proxy(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_proxy(aws_client:aws_client(), binary() | list(), put_voice_connector_proxy_request(), proplists:proplist()) ->
    {ok, put_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_proxy_errors(), tuple()}.
put_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's streaming configuration settings.
-spec put_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_streaming_configuration_request()) ->
    {ok, put_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_streaming_configuration_errors(), tuple()}.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_streaming_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_streaming_configuration_errors(), tuple()}.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's termination settings.
-spec put_voice_connector_termination(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_request()) ->
    {ok, put_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_errors(), tuple()}.
put_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_termination(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_request(), proplists:proplist()) ->
    {ok, put_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_errors(), tuple()}.
put_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Voice Connector's termination credentials.
-spec put_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_credentials_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_credentials_errors(), tuple()}.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_credentials_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_credentials_errors(), tuple()}.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=put"],
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

%% @doc Restores a deleted phone number.
-spec restore_phone_number(aws_client:aws_client(), binary() | list(), restore_phone_number_request()) ->
    {ok, restore_phone_number_response(), tuple()} |
    {error, any()} |
    {error, restore_phone_number_errors(), tuple()}.
restore_phone_number(Client, PhoneNumberId, Input) ->
    restore_phone_number(Client, PhoneNumberId, Input, []).

-spec restore_phone_number(aws_client:aws_client(), binary() | list(), restore_phone_number_request(), proplists:proplist()) ->
    {ok, restore_phone_number_response(), tuple()} |
    {error, any()} |
    {error, restore_phone_number_errors(), tuple()}.
restore_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), "?operation=restore"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches the provisioned phone numbers in an organization.
-spec search_available_phone_numbers(aws_client:aws_client()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client)
  when is_map(Client) ->
    search_available_phone_numbers(Client, #{}, #{}).

-spec search_available_phone_numbers(aws_client:aws_client(), map(), map()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_available_phone_numbers(Client, QueryMap, HeadersMap, []).

-spec search_available_phone_numbers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search?type=phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"area-code">>, maps:get(<<"area-code">>, QueryMap, undefined)},
        {<<"city">>, maps:get(<<"city">>, QueryMap, undefined)},
        {<<"country">>, maps:get(<<"country">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"phone-number-type">>, maps:get(<<"phone-number-type">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"toll-free-prefix">>, maps:get(<<"toll-free-prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a speaker search task.
%%
%% Before starting any speaker search tasks, you must provide all notices and
%% obtain all consents from the speaker as required under applicable privacy
%% and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
-spec start_speaker_search_task(aws_client:aws_client(), binary() | list(), start_speaker_search_task_request()) ->
    {ok, start_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_search_task_errors(), tuple()}.
start_speaker_search_task(Client, VoiceConnectorId, Input) ->
    start_speaker_search_task(Client, VoiceConnectorId, Input, []).

-spec start_speaker_search_task(aws_client:aws_client(), binary() | list(), start_speaker_search_task_request(), proplists:proplist()) ->
    {ok, start_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_search_task_errors(), tuple()}.
start_speaker_search_task(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/speaker-search-tasks"],
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

%% @doc Starts a voice tone analysis task.
%%
%% For more information about voice tone analysis, see
%% Using Amazon Chime SDK voice analytics:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% Before starting any voice tone analysis tasks, you must provide all
%% notices and obtain all consents from the speaker as required under
%% applicable privacy and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
-spec start_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), start_voice_tone_analysis_task_request()) ->
    {ok, start_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, start_voice_tone_analysis_task_errors(), tuple()}.
start_voice_tone_analysis_task(Client, VoiceConnectorId, Input) ->
    start_voice_tone_analysis_task(Client, VoiceConnectorId, Input, []).

-spec start_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), start_voice_tone_analysis_task_request(), proplists:proplist()) ->
    {ok, start_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, start_voice_tone_analysis_task_errors(), tuple()}.
start_voice_tone_analysis_task(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/voice-tone-analysis-tasks"],
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

%% @doc Stops a speaker search task.
-spec stop_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_speaker_search_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_speaker_search_task_errors(), tuple()}.
stop_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, Input) ->
    stop_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, Input, []).

-spec stop_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_speaker_search_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_speaker_search_task_errors(), tuple()}.
stop_speaker_search_task(Client, SpeakerSearchTaskId, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), "?operation=stop"],
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

%% @doc Stops a voice tone analysis task.
-spec stop_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_voice_tone_analysis_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_voice_tone_analysis_task_errors(), tuple()}.
stop_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, Input) ->
    stop_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, Input, []).

-spec stop_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_voice_tone_analysis_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_voice_tone_analysis_task_errors(), tuple()}.
stop_voice_tone_analysis_task(Client, VoiceConnectorId, VoiceToneAnalysisTaskId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), "?operation=stop"],
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

%% @doc Adds a tag to the specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
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

%% @doc Removes tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
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

%% @doc Updates global settings for the Amazon Chime SDK Voice Connectors in
%% an AWS account.
-spec update_global_settings(aws_client:aws_client(), update_global_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).

-spec update_global_settings(aws_client:aws_client(), update_global_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings"],
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

%% @doc Updates phone number details, such as product type, calling name, or
%% phone number name for the
%% specified phone number ID.
%%
%% You can update one phone number detail at a time. For
%% example, you can update either the product type, calling name, or phone
%% number name in one action.
%%
%% For numbers outside the U.S., you must use the Amazon Chime SDK SIP Media
%% Application Dial-In product type.
%%
%% Updates to outbound calling names can take 72 hours to complete. Pending
%% updates to outbound calling names must be complete before you can request
%% another
%% update.
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
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the phone number settings for the administrator's AWS
%% account, such
%% as the default outbound calling name.
%%
%% You can update the default outbound calling
%% name once every seven days. Outbound calling names can take up to 72 hours
%% to
%% update.
-spec update_phone_number_settings(aws_client:aws_client(), update_phone_number_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_settings_errors(), tuple()}.
update_phone_number_settings(Client, Input) ->
    update_phone_number_settings(Client, Input, []).

-spec update_phone_number_settings(aws_client:aws_client(), update_phone_number_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_settings_errors(), tuple()}.
update_phone_number_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings/phone-number"],
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

%% @doc Updates the specified proxy session details, such as voice or SMS
%% capabilities.
-spec update_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_proxy_session_request()) ->
    {ok, update_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, update_proxy_session_errors(), tuple()}.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).

-spec update_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_proxy_session_request(), proplists:proplist()) ->
    {ok, update_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, update_proxy_session_errors(), tuple()}.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Updates the details of the specified SIP media application.
-spec update_sip_media_application(aws_client:aws_client(), binary() | list(), update_sip_media_application_request()) ->
    {ok, update_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_errors(), tuple()}.
update_sip_media_application(Client, SipMediaApplicationId, Input) ->
    update_sip_media_application(Client, SipMediaApplicationId, Input, []).

-spec update_sip_media_application(aws_client:aws_client(), binary() | list(), update_sip_media_application_request(), proplists:proplist()) ->
    {ok, update_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_errors(), tuple()}.
update_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Invokes the AWS Lambda function associated with the SIP media
%% application and
%% transaction ID in an update request.
%%
%% The Lambda function can then return a new set
%% of actions.
-spec update_sip_media_application_call(aws_client:aws_client(), binary() | list(), binary() | list(), update_sip_media_application_call_request()) ->
    {ok, update_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_call_errors(), tuple()}.
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input) ->
    update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input, []).

-spec update_sip_media_application_call(aws_client:aws_client(), binary() | list(), binary() | list(), update_sip_media_application_call_request(), proplists:proplist()) ->
    {ok, update_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_call_errors(), tuple()}.
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls/", aws_util:encode_uri(TransactionId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details of the specified SIP rule.
-spec update_sip_rule(aws_client:aws_client(), binary() | list(), update_sip_rule_request()) ->
    {ok, update_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, update_sip_rule_errors(), tuple()}.
update_sip_rule(Client, SipRuleId, Input) ->
    update_sip_rule(Client, SipRuleId, Input, []).

-spec update_sip_rule(aws_client:aws_client(), binary() | list(), update_sip_rule_request(), proplists:proplist()) ->
    {ok, update_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, update_sip_rule_errors(), tuple()}.
update_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details for the specified Amazon Chime SDK Voice
%% Connector.
-spec update_voice_connector(aws_client:aws_client(), binary() | list(), update_voice_connector_request()) ->
    {ok, update_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_errors(), tuple()}.
update_voice_connector(Client, VoiceConnectorId, Input) ->
    update_voice_connector(Client, VoiceConnectorId, Input, []).

-spec update_voice_connector(aws_client:aws_client(), binary() | list(), update_voice_connector_request(), proplists:proplist()) ->
    {ok, update_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_errors(), tuple()}.
update_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for the specified Amazon Chime SDK Voice
%% Connector group.
-spec update_voice_connector_group(aws_client:aws_client(), binary() | list(), update_voice_connector_group_request()) ->
    {ok, update_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_group_errors(), tuple()}.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    update_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec update_voice_connector_group(aws_client:aws_client(), binary() | list(), update_voice_connector_group_request(), proplists:proplist()) ->
    {ok, update_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_group_errors(), tuple()}.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified voice profile’s voice print and refreshes its
%% expiration timestamp.
%%
%% As a condition of using this feature, you acknowledge that the collection,
%% use, storage, and retention of
%% your caller’s biometric identifiers and biometric information (“biometric
%% data”) in the form of a digital voiceprint
%% requires the caller’s informed consent via a written release. Such consent
%% is required under various state laws,
%% including biometrics laws in Illinois, Texas, Washington and other state
%% privacy laws.
%%
%% You must provide a written release to each caller through a process that
%% clearly reflects each caller’s informed
%% consent before using Amazon Chime SDK Voice Insights service, as required
%% under the terms of your agreement
%% with AWS governing your use of the service.
-spec update_voice_profile(aws_client:aws_client(), binary() | list(), update_voice_profile_request()) ->
    {ok, update_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, update_voice_profile_errors(), tuple()}.
update_voice_profile(Client, VoiceProfileId, Input) ->
    update_voice_profile(Client, VoiceProfileId, Input, []).

-spec update_voice_profile(aws_client:aws_client(), binary() | list(), update_voice_profile_request(), proplists:proplist()) ->
    {ok, update_voice_profile_response(), tuple()} |
    {error, any()} |
    {error, update_voice_profile_errors(), tuple()}.
update_voice_profile(Client, VoiceProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-profiles/", aws_util:encode_uri(VoiceProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for the specified voice profile domain.
-spec update_voice_profile_domain(aws_client:aws_client(), binary() | list(), update_voice_profile_domain_request()) ->
    {ok, update_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, update_voice_profile_domain_errors(), tuple()}.
update_voice_profile_domain(Client, VoiceProfileDomainId, Input) ->
    update_voice_profile_domain(Client, VoiceProfileDomainId, Input, []).

-spec update_voice_profile_domain(aws_client:aws_client(), binary() | list(), update_voice_profile_domain_request(), proplists:proplist()) ->
    {ok, update_voice_profile_domain_response(), tuple()} |
    {error, any()} |
    {error, update_voice_profile_domain_errors(), tuple()}.
update_voice_profile_domain(Client, VoiceProfileDomainId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-profile-domains/", aws_util:encode_uri(VoiceProfileDomainId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Validates an address to be used for 911 calls made with Amazon Chime
%% SDK Voice
%% Connectors.
%%
%% You can use validated addresses in a Presence Information Data Format
%% Location Object file that you include in SIP requests. That helps ensure
%% that addresses
%% are routed to the appropriate Public Safety Answering Point.
-spec validate_e911_address(aws_client:aws_client(), validate_e911_address_request()) ->
    {ok, validate_e911_address_response(), tuple()} |
    {error, any()} |
    {error, validate_e911_address_errors(), tuple()}.
validate_e911_address(Client, Input) ->
    validate_e911_address(Client, Input, []).

-spec validate_e911_address(aws_client:aws_client(), validate_e911_address_request(), proplists:proplist()) ->
    {ok, validate_e911_address_response(), tuple()} |
    {error, any()} |
    {error, validate_e911_address_errors(), tuple()}.
validate_e911_address(Client, Input0, Options0) ->
    Method = post,
    Path = ["/emergency-calling/address"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"voice-chime">>, Client1),
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
