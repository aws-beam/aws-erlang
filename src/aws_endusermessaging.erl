%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS End User Messaging provides a set of APIs to manage brand
%% profiles, synchronize brand profile data with SMS and Rich Communication
%% Services (RCS) registrations, and send and validate one-time passcodes
%% across the SMS, voice, and WhatsApp channels.
-module(aws_endusermessaging).

-export([create_brand_profile/2,
         create_brand_profile/3,
         create_brand_profile_attributes/3,
         create_brand_profile_attributes/4,
         create_brand_profile_from_registration/2,
         create_brand_profile_from_registration/3,
         create_notify_code_configuration/2,
         create_notify_code_configuration/3,
         create_registrations_from_brand_profile/3,
         create_registrations_from_brand_profile/4,
         delete_brand_profile/3,
         delete_brand_profile/4,
         delete_brand_profile_attribute/4,
         delete_brand_profile_attribute/5,
         delete_notify_code_configuration/3,
         delete_notify_code_configuration/4,
         get_brand_profile/2,
         get_brand_profile/4,
         get_brand_profile/5,
         get_brand_profile_attribute/3,
         get_brand_profile_attribute/5,
         get_brand_profile_attribute/6,
         get_job/2,
         get_job/4,
         get_job/5,
         get_notify_code_configuration/2,
         get_notify_code_configuration/4,
         get_notify_code_configuration/5,
         list_brand_profile_attributes/2,
         list_brand_profile_attributes/4,
         list_brand_profile_attributes/5,
         list_brand_profiles/1,
         list_brand_profiles/3,
         list_brand_profiles/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_notify_code_configurations/1,
         list_notify_code_configurations/3,
         list_notify_code_configurations/4,
         list_registrations_from_brand_profile/2,
         list_registrations_from_brand_profile/4,
         list_registrations_from_brand_profile/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         send_notify_code_verification/2,
         send_notify_code_verification/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_brand_profile/3,
         update_brand_profile/4,
         update_brand_profile_attribute/4,
         update_brand_profile_attribute/5,
         update_brand_profile_from_registration/3,
         update_brand_profile_from_registration/4,
         update_notify_code_configuration/3,
         update_notify_code_configuration/4,
         update_registrations_from_brand_profile/3,
         update_registrations_from_brand_profile/4,
         validate_notify_code_verification/2,
         validate_notify_code_verification/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% brand_profile_attribute_input() :: #{
%%   <<"attachmentBody">> => binary(),
%%   <<"attributeName">> => string(),
%%   <<"attributeType">> => list(any()),
%%   <<"attributeValue">> => string(),
%%   <<"category">> => string(),
%%   <<"description">> => string()
%% }
-type brand_profile_attribute_input() :: #{binary() => any()}.


%% Example:
%% brand_profile_attribute_output() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeType">> => list(any()),
%%   <<"mediaDownloadUrl">> => string()
%% }
-type brand_profile_attribute_output() :: #{binary() => any()}.


%% Example:
%% brand_profile_attribute_summary() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeType">> => list(any()),
%%   <<"category">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type brand_profile_attribute_summary() :: #{binary() => any()}.


%% Example:
%% brand_profile_info() :: #{
%%   <<"brandProfileArn">> => string(),
%%   <<"brandProfileId">> => string(),
%%   <<"brandProfileName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type brand_profile_info() :: #{binary() => any()}.


%% Example:
%% channel_parameters() :: #{
%%   <<"notify">> => notify_parameters(),
%%   <<"text">> => text_parameters(),
%%   <<"voice">> => voice_parameters(),
%%   <<"whatsApp">> => whats_app_parameters()
%% }
-type channel_parameters() :: #{binary() => any()}.


%% Example:
%% code_configuration_parameters() :: #{
%%   <<"codeLength">> => integer(),
%%   <<"codeType">> => list(any()),
%%   <<"maxAttempts">> => integer(),
%%   <<"validityPeriodMinutes">> => integer()
%% }
-type code_configuration_parameters() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_attributes_input() :: #{
%%   <<"attributes">> := list(brand_profile_attribute_input()),
%%   <<"clientToken">> => string()
%% }
-type create_brand_profile_attributes_input() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_attributes_output() :: #{
%%   <<"attributes">> => list(brand_profile_attribute_output())
%% }
-type create_brand_profile_attributes_output() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_from_registration_input() :: #{
%%   <<"brandProfileName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"registrationId">> := string(),
%%   <<"smartMatch">> => [boolean()],
%%   <<"tags">> => list(tag())
%% }
-type create_brand_profile_from_registration_input() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_from_registration_output() :: #{
%%   <<"results">> => list(job_result())
%% }
-type create_brand_profile_from_registration_output() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_input() :: #{
%%   <<"brandProfileName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"tags">> => list(tag())
%% }
-type create_brand_profile_input() :: #{binary() => any()}.


%% Example:
%% create_brand_profile_output() :: #{
%%   <<"attributesCreated">> => [integer()],
%%   <<"brandProfileArn">> => string(),
%%   <<"brandProfileId">> => string(),
%%   <<"brandProfileName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_brand_profile_output() :: #{binary() => any()}.


%% Example:
%% create_notify_code_configuration_input() :: #{
%%   <<"channelParameters">> => channel_parameters(),
%%   <<"clientToken">> => string(),
%%   <<"codeConfigurationParameters">> => code_configuration_parameters(),
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"notifyCodeConfigurationName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_notify_code_configuration_input() :: #{binary() => any()}.


%% Example:
%% create_notify_code_configuration_output() :: #{
%%   <<"notifyCodeConfiguration">> => notify_code_configuration()
%% }
-type create_notify_code_configuration_output() :: #{binary() => any()}.


%% Example:
%% create_registrations_from_brand_profile_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"registrationTypes">> := list(string()),
%%   <<"smartMatch">> => [boolean()]
%% }
-type create_registrations_from_brand_profile_input() :: #{binary() => any()}.


%% Example:
%% create_registrations_from_brand_profile_output() :: #{
%%   <<"results">> => list(job_result())
%% }
-type create_registrations_from_brand_profile_output() :: #{binary() => any()}.

%% Example:
%% delete_brand_profile_attribute_input() :: #{}
-type delete_brand_profile_attribute_input() :: #{}.


%% Example:
%% delete_brand_profile_attribute_output() :: #{
%%   <<"attributeName">> => string(),
%%   <<"brandProfileId">> => string()
%% }
-type delete_brand_profile_attribute_output() :: #{binary() => any()}.

%% Example:
%% delete_brand_profile_input() :: #{}
-type delete_brand_profile_input() :: #{}.


%% Example:
%% delete_brand_profile_output() :: #{
%%   <<"brandProfileArn">> => string(),
%%   <<"brandProfileId">> => string()
%% }
-type delete_brand_profile_output() :: #{binary() => any()}.

%% Example:
%% delete_notify_code_configuration_input() :: #{}
-type delete_notify_code_configuration_input() :: #{}.

%% Example:
%% delete_notify_code_configuration_output() :: #{}
-type delete_notify_code_configuration_output() :: #{}.

%% Example:
%% get_brand_profile_attribute_input() :: #{}
-type get_brand_profile_attribute_input() :: #{}.


%% Example:
%% get_brand_profile_attribute_output() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeType">> => list(any()),
%%   <<"attributeValue">> => string(),
%%   <<"category">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"mediaContentType">> => [string()],
%%   <<"mediaDownloadUrl">> => string(),
%%   <<"mediaSizeBytes">> => [float()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_brand_profile_attribute_output() :: #{binary() => any()}.

%% Example:
%% get_brand_profile_input() :: #{}
-type get_brand_profile_input() :: #{}.


%% Example:
%% get_brand_profile_output() :: #{
%%   <<"brandProfileArn">> => string(),
%%   <<"brandProfileId">> => string(),
%%   <<"brandProfileName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_brand_profile_output() :: #{binary() => any()}.

%% Example:
%% get_job_input() :: #{}
-type get_job_input() :: #{}.

%% Example:
%% get_notify_code_configuration_input() :: #{}
-type get_notify_code_configuration_input() :: #{}.


%% Example:
%% get_notify_code_configuration_output() :: #{
%%   <<"notifyCodeConfiguration">> => notify_code_configuration()
%% }
-type get_notify_code_configuration_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% job() :: #{
%%   <<"brandProfileId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"jobId">> => string(),
%%   <<"operationType">> => string(),
%%   <<"resources">> => list(job_resource()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% job_resource() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type job_resource() :: #{binary() => any()}.


%% Example:
%% job_result() :: #{
%%   <<"jobId">> => string(),
%%   <<"resourceIdentifier">> => string()
%% }
-type job_result() :: #{binary() => any()}.


%% Example:
%% job_summary() :: #{
%%   <<"brandProfileId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"jobId">> => string(),
%%   <<"operationType">> => string(),
%%   <<"resources">> => list(job_resource()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% list_brand_profile_attributes_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_brand_profile_attributes_input() :: #{binary() => any()}.


%% Example:
%% list_brand_profile_attributes_output() :: #{
%%   <<"brandProfileAttributes">> => list(brand_profile_attribute_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_brand_profile_attributes_output() :: #{binary() => any()}.


%% Example:
%% list_brand_profiles_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_brand_profiles_input() :: #{binary() => any()}.


%% Example:
%% list_brand_profiles_output() :: #{
%%   <<"brandProfiles">> => list(brand_profile_info()),
%%   <<"nextToken">> => string()
%% }
-type list_brand_profiles_output() :: #{binary() => any()}.


%% Example:
%% list_jobs_input() :: #{
%%   <<"brandProfileId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"operationType">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_jobs_input() :: #{binary() => any()}.


%% Example:
%% list_jobs_output() :: #{
%%   <<"jobs">> => list(job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_output() :: #{binary() => any()}.


%% Example:
%% list_notify_code_configurations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_notify_code_configurations_input() :: #{binary() => any()}.


%% Example:
%% list_notify_code_configurations_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notifyCodeConfigurations">> => list(notify_code_configuration())
%% }
-type list_notify_code_configurations_output() :: #{binary() => any()}.


%% Example:
%% list_registrations_from_brand_profile_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_registrations_from_brand_profile_input() :: #{binary() => any()}.


%% Example:
%% list_registrations_from_brand_profile_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registrationAssociations">> => list(registration_association_summary())
%% }
-type list_registrations_from_brand_profile_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% notify_code_configuration() :: #{
%%   <<"channelParameters">> => channel_parameters(),
%%   <<"codeConfigurationParameters">> => code_configuration_parameters(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"notifyCodeConfigurationArn">> => string(),
%%   <<"notifyCodeConfigurationId">> => string(),
%%   <<"notifyCodeConfigurationName">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type notify_code_configuration() :: #{binary() => any()}.


%% Example:
%% notify_parameters() :: #{
%%   <<"notifyTemplateId">> => string(),
%%   <<"voiceId">> => string()
%% }
-type notify_parameters() :: #{binary() => any()}.


%% Example:
%% registration_association_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => string(),
%%   <<"smartMatchUsed">> => [boolean()]
%% }
-type registration_association_summary() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_notify_code_verification_input() :: #{
%%   <<"channel">> := list(any()),
%%   <<"configurationSetName">> => string(),
%%   <<"context">> => map(),
%%   <<"destinationIdentity">> := string(),
%%   <<"notifyCodeConfiguration">> => string(),
%%   <<"originationIdentity">> := string(),
%%   <<"overrideChannelParameters">> => channel_parameters(),
%%   <<"overrideCodeConfigurationParameters">> => code_configuration_parameters(),
%%   <<"referenceId">> => string()
%% }
-type send_notify_code_verification_input() :: #{binary() => any()}.


%% Example:
%% send_notify_code_verification_output() :: #{
%%   <<"messageId">> => string(),
%%   <<"verificationId">> => string()
%% }
-type send_notify_code_verification_output() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% text_parameters() :: #{
%%   <<"destinationCountryParameters">> => map(),
%%   <<"inlineTemplateBody">> => string()
%% }
-type text_parameters() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% update_brand_profile_attribute_input() :: #{
%%   <<"attachmentBody">> => [binary()],
%%   <<"attributeValue">> => string(),
%%   <<"category">> => string(),
%%   <<"description">> => string()
%% }
-type update_brand_profile_attribute_input() :: #{binary() => any()}.


%% Example:
%% update_brand_profile_attribute_output() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeType">> => list(any()),
%%   <<"attributeValue">> => string(),
%%   <<"category">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"mediaContentType">> => [string()],
%%   <<"mediaSizeBytes">> => [float()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_brand_profile_attribute_output() :: #{binary() => any()}.


%% Example:
%% update_brand_profile_from_registration_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"onAttributeConflict">> => list(any()),
%%   <<"registrationId">> := string(),
%%   <<"smartMatch">> => [boolean()]
%% }
-type update_brand_profile_from_registration_input() :: #{binary() => any()}.


%% Example:
%% update_brand_profile_from_registration_output() :: #{
%%   <<"results">> => list(job_result())
%% }
-type update_brand_profile_from_registration_output() :: #{binary() => any()}.


%% Example:
%% update_brand_profile_input() :: #{
%%   <<"brandProfileName">> => string(),
%%   <<"deletionProtectionEnabled">> => [boolean()]
%% }
-type update_brand_profile_input() :: #{binary() => any()}.


%% Example:
%% update_brand_profile_output() :: #{
%%   <<"brandProfileArn">> => string(),
%%   <<"brandProfileId">> => string(),
%%   <<"brandProfileName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_brand_profile_output() :: #{binary() => any()}.


%% Example:
%% update_channel_parameters() :: #{
%%   <<"notify">> => update_notify_parameters(),
%%   <<"text">> => update_text_parameters(),
%%   <<"voice">> => update_voice_parameters(),
%%   <<"whatsApp">> => update_whats_app_parameters()
%% }
-type update_channel_parameters() :: #{binary() => any()}.


%% Example:
%% update_code_configuration_parameters() :: #{
%%   <<"codeLength">> => integer(),
%%   <<"codeType">> => list(any()),
%%   <<"maxAttempts">> => integer(),
%%   <<"validityPeriodMinutes">> => integer()
%% }
-type update_code_configuration_parameters() :: #{binary() => any()}.


%% Example:
%% update_notify_code_configuration_input() :: #{
%%   <<"channelParameters">> => update_channel_parameters(),
%%   <<"codeConfigurationParameters">> => update_code_configuration_parameters(),
%%   <<"deletionProtectionEnabled">> => [boolean()],
%%   <<"notifyCodeConfigurationName">> => string()
%% }
-type update_notify_code_configuration_input() :: #{binary() => any()}.


%% Example:
%% update_notify_code_configuration_output() :: #{
%%   <<"notifyCodeConfiguration">> => notify_code_configuration()
%% }
-type update_notify_code_configuration_output() :: #{binary() => any()}.


%% Example:
%% update_notify_parameters() :: #{
%%   <<"notifyTemplateId">> => string(),
%%   <<"voiceId">> => string()
%% }
-type update_notify_parameters() :: #{binary() => any()}.


%% Example:
%% update_registrations_from_brand_profile_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"onAttributeConflict">> => list(any()),
%%   <<"registrationIds">> := list(string()),
%%   <<"smartMatch">> => [boolean()]
%% }
-type update_registrations_from_brand_profile_input() :: #{binary() => any()}.


%% Example:
%% update_registrations_from_brand_profile_output() :: #{
%%   <<"results">> => list(job_result())
%% }
-type update_registrations_from_brand_profile_output() :: #{binary() => any()}.


%% Example:
%% update_text_parameters() :: #{
%%   <<"destinationCountryParameters">> => map(),
%%   <<"inlineTemplateBody">> => string()
%% }
-type update_text_parameters() :: #{binary() => any()}.


%% Example:
%% update_voice_parameters() :: #{
%%   <<"inlineTemplateBody">> => string(),
%%   <<"languageCode">> => string(),
%%   <<"voiceId">> => string(),
%%   <<"voiceMessageBodyTextType">> => list(any())
%% }
-type update_voice_parameters() :: #{binary() => any()}.


%% Example:
%% update_whats_app_parameters() :: #{
%%   <<"languageCode">> => string(),
%%   <<"whatsAppTemplateName">> => string()
%% }
-type update_whats_app_parameters() :: #{binary() => any()}.


%% Example:
%% validate_notify_code_verification_input() :: #{
%%   <<"code">> := string(),
%%   <<"destinationIdentity">> := string(),
%%   <<"referenceId">> => string()
%% }
-type validate_notify_code_verification_input() :: #{binary() => any()}.


%% Example:
%% validate_notify_code_verification_output() :: #{
%%   <<"status">> => list(any())
%% }
-type validate_notify_code_verification_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% voice_parameters() :: #{
%%   <<"inlineTemplateBody">> => string(),
%%   <<"languageCode">> => string(),
%%   <<"voiceId">> => string(),
%%   <<"voiceMessageBodyTextType">> => list(any())
%% }
-type voice_parameters() :: #{binary() => any()}.


%% Example:
%% whats_app_parameters() :: #{
%%   <<"languageCode">> => string(),
%%   <<"whatsAppTemplateName">> => string()
%% }
-type whats_app_parameters() :: #{binary() => any()}.

-type create_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_brand_profile_attributes_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_brand_profile_from_registration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_notify_code_configuration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_registrations_from_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_brand_profile_attribute_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_notify_code_configuration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_brand_profile_attribute_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_notify_code_configuration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_brand_profile_attributes_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_brand_profiles_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_jobs_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_notify_code_configurations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_registrations_from_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type send_notify_code_verification_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_brand_profile_attribute_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_brand_profile_from_registration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_notify_code_configuration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_registrations_from_brand_profile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type validate_notify_code_verification_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a brand profile.
%%
%% A brand profile is a lightweight container that holds your brand identity
%% information as flexible attributes. After you create a brand profile, use
%% the CreateBrandProfileAttributes operation to add company information,
%% addresses, compliance documents, and logos.
-spec create_brand_profile(aws_client:aws_client(), create_brand_profile_input()) ->
    {ok, create_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_errors(), tuple()}.
create_brand_profile(Client, Input) ->
    create_brand_profile(Client, Input, []).

-spec create_brand_profile(aws_client:aws_client(), create_brand_profile_input(), proplists:proplist()) ->
    {ok, create_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_errors(), tuple()}.
create_brand_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates up to 10 attributes for a brand profile in a single request.
%%
%% For attributes of type IMAGE or DOCUMENT, the response includes a
%% presigned Amazon S3 URL that you use to upload the media. This operation
%% is atomic: either all of the attributes are created, or none of them are.
-spec create_brand_profile_attributes(aws_client:aws_client(), binary() | list(), create_brand_profile_attributes_input()) ->
    {ok, create_brand_profile_attributes_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_attributes_errors(), tuple()}.
create_brand_profile_attributes(Client, BrandProfileId, Input) ->
    create_brand_profile_attributes(Client, BrandProfileId, Input, []).

-spec create_brand_profile_attributes(aws_client:aws_client(), binary() | list(), create_brand_profile_attributes_input(), proplists:proplist()) ->
    {ok, create_brand_profile_attributes_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_attributes_errors(), tuple()}.
create_brand_profile_attributes(Client, BrandProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a brand profile and populates its attributes from an existing
%% registration.
%%
%% This operation runs asynchronously. Use the GetJob operation to track its
%% progress.
-spec create_brand_profile_from_registration(aws_client:aws_client(), create_brand_profile_from_registration_input()) ->
    {ok, create_brand_profile_from_registration_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_from_registration_errors(), tuple()}.
create_brand_profile_from_registration(Client, Input) ->
    create_brand_profile_from_registration(Client, Input, []).

-spec create_brand_profile_from_registration(aws_client:aws_client(), create_brand_profile_from_registration_input(), proplists:proplist()) ->
    {ok, create_brand_profile_from_registration_output(), tuple()} |
    {error, any()} |
    {error, create_brand_profile_from_registration_errors(), tuple()}.
create_brand_profile_from_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles/create-from-registration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a notify code configuration.
%%
%% A notify code configuration is a reusable policy that defines how one-time
%% passcodes are generated and rendered, including the code type, length,
%% validity period, maximum number of attempts, and channel templates.
-spec create_notify_code_configuration(aws_client:aws_client(), create_notify_code_configuration_input()) ->
    {ok, create_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_notify_code_configuration_errors(), tuple()}.
create_notify_code_configuration(Client, Input) ->
    create_notify_code_configuration(Client, Input, []).

-spec create_notify_code_configuration(aws_client:aws_client(), create_notify_code_configuration_input(), proplists:proplist()) ->
    {ok, create_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_notify_code_configuration_errors(), tuple()}.
create_notify_code_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/notify-code-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates one or more registrations in the DRAFT state and prefills
%% their fields from the attributes of a brand profile.
%%
%% This operation runs asynchronously. Use the GetJob operation to track its
%% progress.
-spec create_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), create_registrations_from_brand_profile_input()) ->
    {ok, create_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, create_registrations_from_brand_profile_errors(), tuple()}.
create_registrations_from_brand_profile(Client, BrandProfileId, Input) ->
    create_registrations_from_brand_profile(Client, BrandProfileId, Input, []).

-spec create_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), create_registrations_from_brand_profile_input(), proplists:proplist()) ->
    {ok, create_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, create_registrations_from_brand_profile_errors(), tuple()}.
create_registrations_from_brand_profile(Client, BrandProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/create-registrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a brand profile.
%%
%% This operation also deletes the attributes of the profile and any
%% associated media. The request fails if deletion protection is enabled for
%% the profile.
-spec delete_brand_profile(aws_client:aws_client(), binary() | list(), delete_brand_profile_input()) ->
    {ok, delete_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, delete_brand_profile_errors(), tuple()}.
delete_brand_profile(Client, BrandProfileId, Input) ->
    delete_brand_profile(Client, BrandProfileId, Input, []).

-spec delete_brand_profile(aws_client:aws_client(), binary() | list(), delete_brand_profile_input(), proplists:proplist()) ->
    {ok, delete_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, delete_brand_profile_errors(), tuple()}.
delete_brand_profile(Client, BrandProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/brand-profiles/", aws_util:encode_multi_segment_uri(BrandProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a brand profile attribute.
%%
%% If the attribute stores media, this operation also deletes the associated
%% media.
-spec delete_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), delete_brand_profile_attribute_input()) ->
    {ok, delete_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, delete_brand_profile_attribute_errors(), tuple()}.
delete_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input) ->
    delete_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input, []).

-spec delete_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), delete_brand_profile_attribute_input(), proplists:proplist()) ->
    {ok, delete_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, delete_brand_profile_attribute_errors(), tuple()}.
delete_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/attributes/", aws_util:encode_uri(AttributeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a notify code configuration.
%%
%% Verifications that are already in progress are not affected, because they
%% capture the policy at the time that the passcode was sent.
-spec delete_notify_code_configuration(aws_client:aws_client(), binary() | list(), delete_notify_code_configuration_input()) ->
    {ok, delete_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_notify_code_configuration_errors(), tuple()}.
delete_notify_code_configuration(Client, NotifyCodeConfigurationId, Input) ->
    delete_notify_code_configuration(Client, NotifyCodeConfigurationId, Input, []).

-spec delete_notify_code_configuration(aws_client:aws_client(), binary() | list(), delete_notify_code_configuration_input(), proplists:proplist()) ->
    {ok, delete_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_notify_code_configuration_errors(), tuple()}.
delete_notify_code_configuration(Client, NotifyCodeConfigurationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/notify-code-configurations/", aws_util:encode_multi_segment_uri(NotifyCodeConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the metadata for a brand profile, including its name,
%% status, deletion protection setting, and timestamps.
%%
%% To retrieve the attributes of the profile, use the
%% ListBrandProfileAttributes operation.
-spec get_brand_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_errors(), tuple()}.
get_brand_profile(Client, BrandProfileId)
  when is_map(Client) ->
    get_brand_profile(Client, BrandProfileId, #{}, #{}).

-spec get_brand_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_errors(), tuple()}.
get_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap, []).

-spec get_brand_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_errors(), tuple()}.
get_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brand-profiles/", aws_util:encode_multi_segment_uri(BrandProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a single brand profile attribute.
-spec get_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_attribute_errors(), tuple()}.
get_brand_profile_attribute(Client, AttributeName, BrandProfileId)
  when is_map(Client) ->
    get_brand_profile_attribute(Client, AttributeName, BrandProfileId, #{}, #{}).

-spec get_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_attribute_errors(), tuple()}.
get_brand_profile_attribute(Client, AttributeName, BrandProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_brand_profile_attribute(Client, AttributeName, BrandProfileId, QueryMap, HeadersMap, []).

-spec get_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, get_brand_profile_attribute_errors(), tuple()}.
get_brand_profile_attribute(Client, AttributeName, BrandProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/attributes/", aws_util:encode_uri(AttributeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state of an asynchronous job, including its
%% status and any resources that it created or updated.
-spec get_job(aws_client:aws_client(), binary() | list()) ->
    {ok, job(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId)
  when is_map(Client) ->
    get_job(Client, JobId, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, job(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, job(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a notify code configuration.
-spec get_notify_code_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_notify_code_configuration_errors(), tuple()}.
get_notify_code_configuration(Client, NotifyCodeConfigurationId)
  when is_map(Client) ->
    get_notify_code_configuration(Client, NotifyCodeConfigurationId, #{}, #{}).

-spec get_notify_code_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_notify_code_configuration_errors(), tuple()}.
get_notify_code_configuration(Client, NotifyCodeConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notify_code_configuration(Client, NotifyCodeConfigurationId, QueryMap, HeadersMap, []).

-spec get_notify_code_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_notify_code_configuration_errors(), tuple()}.
get_notify_code_configuration(Client, NotifyCodeConfigurationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/notify-code-configurations/", aws_util:encode_multi_segment_uri(NotifyCodeConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of the attributes for a brand profile.
-spec list_brand_profile_attributes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_brand_profile_attributes_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profile_attributes_errors(), tuple()}.
list_brand_profile_attributes(Client, BrandProfileId)
  when is_map(Client) ->
    list_brand_profile_attributes(Client, BrandProfileId, #{}, #{}).

-spec list_brand_profile_attributes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_brand_profile_attributes_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profile_attributes_errors(), tuple()}.
list_brand_profile_attributes(Client, BrandProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_brand_profile_attributes(Client, BrandProfileId, QueryMap, HeadersMap, []).

-spec list_brand_profile_attributes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_brand_profile_attributes_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profile_attributes_errors(), tuple()}.
list_brand_profile_attributes(Client, BrandProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/attributes"],
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

%% @doc Retrieves a paginated list of the brand profiles in your account.
%%
%% Use the nextToken parameter to retrieve additional results.
-spec list_brand_profiles(aws_client:aws_client()) ->
    {ok, list_brand_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profiles_errors(), tuple()}.
list_brand_profiles(Client)
  when is_map(Client) ->
    list_brand_profiles(Client, #{}, #{}).

-spec list_brand_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_brand_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profiles_errors(), tuple()}.
list_brand_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_brand_profiles(Client, QueryMap, HeadersMap, []).

-spec list_brand_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_brand_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_brand_profiles_errors(), tuple()}.
list_brand_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brand-profiles"],
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

%% @doc Retrieves a paginated list of the asynchronous jobs in your account.
%%
%% You can filter the results by status, brand profile, or operation type.
-spec list_jobs(aws_client:aws_client()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"brandProfileId">>, maps:get(<<"brandProfileId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"operationType">>, maps:get(<<"operationType">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of the notify code configurations in your
%% account.
-spec list_notify_code_configurations(aws_client:aws_client()) ->
    {ok, list_notify_code_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_notify_code_configurations_errors(), tuple()}.
list_notify_code_configurations(Client)
  when is_map(Client) ->
    list_notify_code_configurations(Client, #{}, #{}).

-spec list_notify_code_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_notify_code_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_notify_code_configurations_errors(), tuple()}.
list_notify_code_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notify_code_configurations(Client, QueryMap, HeadersMap, []).

-spec list_notify_code_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notify_code_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_notify_code_configurations_errors(), tuple()}.
list_notify_code_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/notify-code-configurations"],
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

%% @doc Retrieves a paginated list of the registrations that were created
%% from a brand profile through the synchronization operations.
-spec list_registrations_from_brand_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, list_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, list_registrations_from_brand_profile_errors(), tuple()}.
list_registrations_from_brand_profile(Client, BrandProfileId)
  when is_map(Client) ->
    list_registrations_from_brand_profile(Client, BrandProfileId, #{}, #{}).

-spec list_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, list_registrations_from_brand_profile_errors(), tuple()}.
list_registrations_from_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_registrations_from_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap, []).

-spec list_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, list_registrations_from_brand_profile_errors(), tuple()}.
list_registrations_from_brand_profile(Client, BrandProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/registrations"],
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

%% @doc Retrieves the tags that are associated with a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a one-time passcode and delivers it to a recipient over the
%% requested channel.
%%
%% The passcode policy is captured from the referenced notify code
%% configuration at the time of the request, so later updates to the
%% configuration do not affect verifications that are already in progress.
-spec send_notify_code_verification(aws_client:aws_client(), send_notify_code_verification_input()) ->
    {ok, send_notify_code_verification_output(), tuple()} |
    {error, any()} |
    {error, send_notify_code_verification_errors(), tuple()}.
send_notify_code_verification(Client, Input) ->
    send_notify_code_verification(Client, Input, []).

-spec send_notify_code_verification(aws_client:aws_client(), send_notify_code_verification_input(), proplists:proplist()) ->
    {ok, send_notify_code_verification_output(), tuple()} |
    {error, any()} |
    {error, send_notify_code_verification_errors(), tuple()}.
send_notify_code_verification(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/notify-code-verifications/send"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or overwrites the tags on a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
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

%% @doc Updates the name or the deletion protection setting of a brand
%% profile.
%%
%% To change the information that is stored in the profile, use the brand
%% profile attribute operations.
-spec update_brand_profile(aws_client:aws_client(), binary() | list(), update_brand_profile_input()) ->
    {ok, update_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_errors(), tuple()}.
update_brand_profile(Client, BrandProfileId, Input) ->
    update_brand_profile(Client, BrandProfileId, Input, []).

-spec update_brand_profile(aws_client:aws_client(), binary() | list(), update_brand_profile_input(), proplists:proplist()) ->
    {ok, update_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_errors(), tuple()}.
update_brand_profile(Client, BrandProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/brand-profiles/", aws_util:encode_multi_segment_uri(BrandProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the value, description, or category of an existing brand
%% profile attribute.
-spec update_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_profile_attribute_input()) ->
    {ok, update_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_attribute_errors(), tuple()}.
update_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input) ->
    update_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input, []).

-spec update_brand_profile_attribute(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_profile_attribute_input(), proplists:proplist()) ->
    {ok, update_brand_profile_attribute_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_attribute_errors(), tuple()}.
update_brand_profile_attribute(Client, AttributeName, BrandProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/attributes/", aws_util:encode_uri(AttributeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Imports or refreshes the attributes of an existing brand profile from
%% an existing registration.
%%
%% This operation runs asynchronously. Use the GetJob operation to track its
%% progress.
-spec update_brand_profile_from_registration(aws_client:aws_client(), binary() | list(), update_brand_profile_from_registration_input()) ->
    {ok, update_brand_profile_from_registration_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_from_registration_errors(), tuple()}.
update_brand_profile_from_registration(Client, BrandProfileId, Input) ->
    update_brand_profile_from_registration(Client, BrandProfileId, Input, []).

-spec update_brand_profile_from_registration(aws_client:aws_client(), binary() | list(), update_brand_profile_from_registration_input(), proplists:proplist()) ->
    {ok, update_brand_profile_from_registration_output(), tuple()} |
    {error, any()} |
    {error, update_brand_profile_from_registration_errors(), tuple()}.
update_brand_profile_from_registration(Client, BrandProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/update-from-registration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the mutable fields of a notify code configuration.
%%
%% Only the fields that you supply are changed. For the template and language
%% fields, supplying an empty value clears the currently stored value.
-spec update_notify_code_configuration(aws_client:aws_client(), binary() | list(), update_notify_code_configuration_input()) ->
    {ok, update_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_notify_code_configuration_errors(), tuple()}.
update_notify_code_configuration(Client, NotifyCodeConfigurationId, Input) ->
    update_notify_code_configuration(Client, NotifyCodeConfigurationId, Input, []).

-spec update_notify_code_configuration(aws_client:aws_client(), binary() | list(), update_notify_code_configuration_input(), proplists:proplist()) ->
    {ok, update_notify_code_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_notify_code_configuration_errors(), tuple()}.
update_notify_code_configuration(Client, NotifyCodeConfigurationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/notify-code-configurations/", aws_util:encode_multi_segment_uri(NotifyCodeConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Repushes the attributes of a brand profile into existing DRAFT
%% registrations.
%%
%% This operation runs asynchronously. Use the GetJob operation to track its
%% progress.
-spec update_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), update_registrations_from_brand_profile_input()) ->
    {ok, update_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, update_registrations_from_brand_profile_errors(), tuple()}.
update_registrations_from_brand_profile(Client, BrandProfileId, Input) ->
    update_registrations_from_brand_profile(Client, BrandProfileId, Input, []).

-spec update_registrations_from_brand_profile(aws_client:aws_client(), binary() | list(), update_registrations_from_brand_profile_input(), proplists:proplist()) ->
    {ok, update_registrations_from_brand_profile_output(), tuple()} |
    {error, any()} |
    {error, update_registrations_from_brand_profile_errors(), tuple()}.
update_registrations_from_brand_profile(Client, BrandProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brand-profiles/", aws_util:encode_uri(BrandProfileId), "/update-registrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Validates a one-time passcode that a recipient submitted.
%%
%% Validation succeeds when the passcode matches, the validity period has not
%% elapsed, and the maximum number of attempts has not been exceeded.
-spec validate_notify_code_verification(aws_client:aws_client(), validate_notify_code_verification_input()) ->
    {ok, validate_notify_code_verification_output(), tuple()} |
    {error, any()} |
    {error, validate_notify_code_verification_errors(), tuple()}.
validate_notify_code_verification(Client, Input) ->
    validate_notify_code_verification(Client, Input, []).

-spec validate_notify_code_verification(aws_client:aws_client(), validate_notify_code_verification_input(), proplists:proplist()) ->
    {ok, validate_notify_code_verification_output(), tuple()} |
    {error, any()} |
    {error, validate_notify_code_verification_errors(), tuple()}.
validate_notify_code_verification(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/notify-code-verifications/validate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
    Client1 = Client#{service => <<"end-user-messaging">>},
    DefaultHost = build_host(<<"end-user-messaging">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_ENDUSERMESSAGING">>),
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

