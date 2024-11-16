%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS End User Messaging SMS and Voice, version 2 API
%% Reference.
%%
%% This guide provides information about AWS End User Messaging SMS and
%% Voice, version 2 API
%% resources, including supported HTTP methods, parameters, and schemas.
%%
%% Amazon Pinpoint is an Amazon Web Services service that you can use to
%% engage with
%% your recipients across multiple messaging channels. The AWS End User
%% Messaging SMS and Voice, version 2 API provides programmatic access to
%% options that are unique to the SMS
%% and voice channels. AWS End User Messaging SMS and Voice, version 2
%% resources such as phone numbers, sender IDs, and opt-out lists can be used
%% by the Amazon Pinpoint API.
%%
%% If you're new to AWS End User Messaging SMS and Voice, it's also
%% helpful to review the
%% AWS End User Messaging SMS User Guide:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/what-is-service.html.
%% The AWS End User Messaging SMS User Guide
%% provides tutorials, code samples, and procedures that
%% demonstrate how to use AWS End User Messaging SMS and Voice features
%% programmatically and how to integrate
%% functionality into mobile apps and other types of applications.
%% The guide also provides key information, such as AWS End User Messaging
%% SMS and Voice integration with
%% other Amazon Web Services services, and the quotas that apply to use of
%% the
%% service.
%%
%% Regional availability
%%
%% The AWS End User Messaging SMS and Voice version 2 API Reference is
%% available in several Amazon Web Services Regions and it provides an
%% endpoint for each of
%% these Regions. For a list of all the Regions and endpoints where the API
%% is currently
%% available, see Amazon Web Services Service Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region
%% and Amazon Pinpoint
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/pinpoint.html in the Amazon
%% Web Services General Reference. To
%% learn more about Amazon Web Services Regions, see Managing
%% Amazon Web Services Regions:
%% https://docs.aws.amazon.com/general/latest/gr/rande-manage.html in the
%% Amazon Web Services General
%% Reference.
%%
%% In each Region, Amazon Web Services maintains multiple Availability Zones.
%% These
%% Availability Zones are physically isolated from each other, but are united
%% by private,
%% low-latency, high-throughput, and highly redundant network connections.
%% These
%% Availability Zones enable us to provide very high levels of availability
%% and redundancy,
%% while also minimizing latency. To learn more about the number of
%% Availability Zones that
%% are available in each Region, see Amazon Web Services
%% Global Infrastructure.:
%% https://aws.amazon.com/about-aws/global-infrastructure/
-module(aws_pinpoint_sms_voice_v2).

-export([associate_origination_identity/2,
         associate_origination_identity/3,
         associate_protect_configuration/2,
         associate_protect_configuration/3,
         create_configuration_set/2,
         create_configuration_set/3,
         create_event_destination/2,
         create_event_destination/3,
         create_opt_out_list/2,
         create_opt_out_list/3,
         create_pool/2,
         create_pool/3,
         create_protect_configuration/2,
         create_protect_configuration/3,
         create_registration/2,
         create_registration/3,
         create_registration_association/2,
         create_registration_association/3,
         create_registration_attachment/2,
         create_registration_attachment/3,
         create_registration_version/2,
         create_registration_version/3,
         create_verified_destination_number/2,
         create_verified_destination_number/3,
         delete_account_default_protect_configuration/2,
         delete_account_default_protect_configuration/3,
         delete_configuration_set/2,
         delete_configuration_set/3,
         delete_default_message_type/2,
         delete_default_message_type/3,
         delete_default_sender_id/2,
         delete_default_sender_id/3,
         delete_event_destination/2,
         delete_event_destination/3,
         delete_keyword/2,
         delete_keyword/3,
         delete_media_message_spend_limit_override/2,
         delete_media_message_spend_limit_override/3,
         delete_opt_out_list/2,
         delete_opt_out_list/3,
         delete_opted_out_number/2,
         delete_opted_out_number/3,
         delete_pool/2,
         delete_pool/3,
         delete_protect_configuration/2,
         delete_protect_configuration/3,
         delete_protect_configuration_rule_set_number_override/2,
         delete_protect_configuration_rule_set_number_override/3,
         delete_registration/2,
         delete_registration/3,
         delete_registration_attachment/2,
         delete_registration_attachment/3,
         delete_registration_field_value/2,
         delete_registration_field_value/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_text_message_spend_limit_override/2,
         delete_text_message_spend_limit_override/3,
         delete_verified_destination_number/2,
         delete_verified_destination_number/3,
         delete_voice_message_spend_limit_override/2,
         delete_voice_message_spend_limit_override/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_configuration_sets/2,
         describe_configuration_sets/3,
         describe_keywords/2,
         describe_keywords/3,
         describe_opt_out_lists/2,
         describe_opt_out_lists/3,
         describe_opted_out_numbers/2,
         describe_opted_out_numbers/3,
         describe_phone_numbers/2,
         describe_phone_numbers/3,
         describe_pools/2,
         describe_pools/3,
         describe_protect_configurations/2,
         describe_protect_configurations/3,
         describe_registration_attachments/2,
         describe_registration_attachments/3,
         describe_registration_field_definitions/2,
         describe_registration_field_definitions/3,
         describe_registration_field_values/2,
         describe_registration_field_values/3,
         describe_registration_section_definitions/2,
         describe_registration_section_definitions/3,
         describe_registration_type_definitions/2,
         describe_registration_type_definitions/3,
         describe_registration_versions/2,
         describe_registration_versions/3,
         describe_registrations/2,
         describe_registrations/3,
         describe_sender_ids/2,
         describe_sender_ids/3,
         describe_spend_limits/2,
         describe_spend_limits/3,
         describe_verified_destination_numbers/2,
         describe_verified_destination_numbers/3,
         disassociate_origination_identity/2,
         disassociate_origination_identity/3,
         disassociate_protect_configuration/2,
         disassociate_protect_configuration/3,
         discard_registration_version/2,
         discard_registration_version/3,
         get_protect_configuration_country_rule_set/2,
         get_protect_configuration_country_rule_set/3,
         get_resource_policy/2,
         get_resource_policy/3,
         list_pool_origination_identities/2,
         list_pool_origination_identities/3,
         list_protect_configuration_rule_set_number_overrides/2,
         list_protect_configuration_rule_set_number_overrides/3,
         list_registration_associations/2,
         list_registration_associations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_keyword/2,
         put_keyword/3,
         put_message_feedback/2,
         put_message_feedback/3,
         put_opted_out_number/2,
         put_opted_out_number/3,
         put_protect_configuration_rule_set_number_override/2,
         put_protect_configuration_rule_set_number_override/3,
         put_registration_field_value/2,
         put_registration_field_value/3,
         put_resource_policy/2,
         put_resource_policy/3,
         release_phone_number/2,
         release_phone_number/3,
         release_sender_id/2,
         release_sender_id/3,
         request_phone_number/2,
         request_phone_number/3,
         request_sender_id/2,
         request_sender_id/3,
         send_destination_number_verification_code/2,
         send_destination_number_verification_code/3,
         send_media_message/2,
         send_media_message/3,
         send_text_message/2,
         send_text_message/3,
         send_voice_message/2,
         send_voice_message/3,
         set_account_default_protect_configuration/2,
         set_account_default_protect_configuration/3,
         set_default_message_feedback_enabled/2,
         set_default_message_feedback_enabled/3,
         set_default_message_type/2,
         set_default_message_type/3,
         set_default_sender_id/2,
         set_default_sender_id/3,
         set_media_message_spend_limit_override/2,
         set_media_message_spend_limit_override/3,
         set_text_message_spend_limit_override/2,
         set_text_message_spend_limit_override/3,
         set_voice_message_spend_limit_override/2,
         set_voice_message_spend_limit_override/3,
         submit_registration_version/2,
         submit_registration_version/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_event_destination/2,
         update_event_destination/3,
         update_phone_number/2,
         update_phone_number/3,
         update_pool/2,
         update_pool/3,
         update_protect_configuration/2,
         update_protect_configuration/3,
         update_protect_configuration_country_rule_set/2,
         update_protect_configuration_country_rule_set/3,
         update_sender_id/2,
         update_sender_id/3,
         verify_destination_number/2,
         verify_destination_number/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_spend_limits_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SpendLimits">> => list(spend_limit()())
%% }
-type describe_spend_limits_result() :: #{binary() => any()}.

%% Example:
%% update_phone_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageType">> => string(),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"NumberCapabilities">> => list(string()()),
%%   <<"NumberType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => [string()],
%%   <<"PhoneNumberId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type update_phone_number_result() :: #{binary() => any()}.

%% Example:
%% spend_limit() :: #{
%%   <<"EnforcedLimit">> => [float()],
%%   <<"MaxLimit">> => [float()],
%%   <<"Name">> => string(),
%%   <<"Overridden">> => [boolean()]
%% }
-type spend_limit() :: #{binary() => any()}.

%% Example:
%% describe_registration_field_definitions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationFieldDefinitions">> => list(registration_field_definition()()),
%%   <<"RegistrationType">> => string()
%% }
-type describe_registration_field_definitions_result() :: #{binary() => any()}.

%% Example:
%% registration_attachment_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type registration_attachment_filter() :: #{binary() => any()}.

%% Example:
%% create_registration_attachment_request() :: #{
%%   <<"AttachmentBody">> => binary(),
%%   <<"AttachmentUrl">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_registration_attachment_request() :: #{binary() => any()}.

%% Example:
%% phone_number_information() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageType">> => string(),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"NumberCapabilities">> => list(string()()),
%%   <<"NumberType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => [string()],
%%   <<"PhoneNumberId">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type phone_number_information() :: #{binary() => any()}.

%% Example:
%% create_registration_attachment_result() :: #{
%%   <<"AttachmentStatus">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"RegistrationAttachmentArn">> => [string()],
%%   <<"RegistrationAttachmentId">> => [string()],
%%   <<"Tags">> => list(tag()())
%% }
-type create_registration_attachment_result() :: #{binary() => any()}.

%% Example:
%% request_sender_id_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> := string(),
%%   <<"MessageTypes">> => list(string()()),
%%   <<"SenderId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type request_sender_id_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% send_destination_number_verification_code_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Context">> => map(),
%%   <<"DestinationCountryParameters">> => map(),
%%   <<"LanguageCode">> => string(),
%%   <<"OriginationIdentity">> => string(),
%%   <<"VerificationChannel">> := string(),
%%   <<"VerifiedDestinationNumberId">> := string()
%% }
-type send_destination_number_verification_code_request() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_account_limits_request() :: #{binary() => any()}.

%% Example:
%% delete_pool_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"MessageType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"SharedRoutesEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type delete_pool_result() :: #{binary() => any()}.

%% Example:
%% describe_registration_versions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationVersions">> => list(registration_version_information()())
%% }
-type describe_registration_versions_result() :: #{binary() => any()}.

%% Example:
%% update_pool_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"MessageType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"SharedRoutesEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type update_pool_result() :: #{binary() => any()}.

%% Example:
%% verified_destination_number_information() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"Status">> => string(),
%%   <<"VerifiedDestinationNumberArn">> => [string()],
%%   <<"VerifiedDestinationNumberId">> => [string()]
%% }
-type verified_destination_number_information() :: #{binary() => any()}.

%% Example:
%% request_phone_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageType">> => string(),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"NumberCapabilities">> => list(string()()),
%%   <<"NumberType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => [string()],
%%   <<"PhoneNumberId">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type request_phone_number_result() :: #{binary() => any()}.

%% Example:
%% delete_voice_message_spend_limit_override_request() :: #{

%% }
-type delete_voice_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% describe_pools_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Pools">> => list(pool_information()())
%% }
-type describe_pools_result() :: #{binary() => any()}.

%% Example:
%% list_registration_associations_request() :: #{
%%   <<"Filters">> => list(registration_association_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationId">> := string()
%% }
-type list_registration_associations_request() :: #{binary() => any()}.

%% Example:
%% registration_section_display_hints() :: #{
%%   <<"DocumentationLink">> => [string()],
%%   <<"DocumentationTitle">> => [string()],
%%   <<"LongDescription">> => [string()],
%%   <<"ShortDescription">> => [string()],
%%   <<"Title">> => [string()]
%% }
-type registration_section_display_hints() :: #{binary() => any()}.

%% Example:
%% describe_pools_request() :: #{
%%   <<"Filters">> => list(pool_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Owner">> => string(),
%%   <<"PoolIds">> => list(string()())
%% }
-type describe_pools_request() :: #{binary() => any()}.

%% Example:
%% create_opt_out_list_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_opt_out_list_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{

%% }
-type untag_resource_result() :: #{binary() => any()}.

%% Example:
%% verified_destination_number_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type verified_destination_number_filter() :: #{binary() => any()}.

%% Example:
%% create_registration_association_request() :: #{
%%   <<"RegistrationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type create_registration_association_request() :: #{binary() => any()}.

%% Example:
%% set_default_message_type_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"MessageType">> := string()
%% }
-type set_default_message_type_request() :: #{binary() => any()}.

%% Example:
%% pool_information() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"MessageType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"SharedRoutesEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type pool_information() :: #{binary() => any()}.

%% Example:
%% registration_type_display_hints() :: #{
%%   <<"DocumentationLink">> => [string()],
%%   <<"DocumentationTitle">> => [string()],
%%   <<"LongDescription">> => [string()],
%%   <<"ShortDescription">> => [string()],
%%   <<"Title">> => [string()]
%% }
-type registration_type_display_hints() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type put_resource_policy_result() :: #{binary() => any()}.

%% Example:
%% update_protect_configuration_request() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"ProtectConfigurationId">> := string()
%% }
-type update_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% registration_association_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type registration_association_filter() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_destination() :: #{
%%   <<"DeliveryStreamArn">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type kinesis_firehose_destination() :: #{binary() => any()}.

%% Example:
%% disassociate_protect_configuration_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type disassociate_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% registration_denied_reason_information() :: #{
%%   <<"DocumentationLink">> => [string()],
%%   <<"DocumentationTitle">> => [string()],
%%   <<"LongDescription">> => [string()],
%%   <<"Reason">> => [string()],
%%   <<"ShortDescription">> => [string()]
%% }
-type registration_denied_reason_information() :: #{binary() => any()}.

%% Example:
%% put_protect_configuration_rule_set_number_override_result() :: #{
%%   <<"Action">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"ExpirationTimestamp">> => [non_neg_integer()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type put_protect_configuration_rule_set_number_override_result() :: #{binary() => any()}.

%% Example:
%% protect_configuration_country_rule_set_information() :: #{
%%   <<"ProtectStatus">> => string()
%% }
-type protect_configuration_country_rule_set_information() :: #{binary() => any()}.

%% Example:
%% registration_association_metadata() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"ResourceArn">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type registration_association_metadata() :: #{binary() => any()}.

%% Example:
%% describe_registration_type_definitions_request() :: #{
%%   <<"Filters">> => list(registration_type_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationTypes">> => list(string()())
%% }
-type describe_registration_type_definitions_request() :: #{binary() => any()}.

%% Example:
%% submit_registration_version_request() :: #{
%%   <<"RegistrationId">> := string()
%% }
-type submit_registration_version_request() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_destination() :: #{
%%   <<"IamRoleArn">> => string(),
%%   <<"LogGroupArn">> => string()
%% }
-type cloud_watch_logs_destination() :: #{binary() => any()}.

%% Example:
%% create_registration_association_result() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationType">> => string(),
%%   <<"ResourceArn">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type create_registration_association_result() :: #{binary() => any()}.

%% Example:
%% create_pool_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"MessageType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"SharedRoutesEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type create_pool_result() :: #{binary() => any()}.

%% Example:
%% delete_default_message_type_request() :: #{
%%   <<"ConfigurationSetName">> := string()
%% }
-type delete_default_message_type_request() :: #{binary() => any()}.

%% Example:
%% release_phone_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageType">> => string(),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"NumberCapabilities">> => list(string()()),
%%   <<"NumberType">> => string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumberArn">> => [string()],
%%   <<"PhoneNumberId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"Status">> => string(),
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type release_phone_number_result() :: #{binary() => any()}.

%% Example:
%% delete_protect_configuration_request() :: #{
%%   <<"ProtectConfigurationId">> := string()
%% }
-type delete_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_event_destination_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"EventDestinationName">> := string()
%% }
-type delete_event_destination_request() :: #{binary() => any()}.

%% Example:
%% associate_protect_configuration_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type associate_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% configuration_set_information() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DefaultMessageFeedbackEnabled">> => [boolean()],
%%   <<"DefaultMessageType">> => string(),
%%   <<"DefaultSenderId">> => string(),
%%   <<"EventDestinations">> => list(event_destination()()),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type configuration_set_information() :: #{binary() => any()}.

%% Example:
%% text_validation() :: #{
%%   <<"MaxLength">> => [integer()],
%%   <<"MinLength">> => [integer()],
%%   <<"Pattern">> => [string()]
%% }
-type text_validation() :: #{binary() => any()}.

%% Example:
%% release_phone_number_request() :: #{
%%   <<"PhoneNumberId">> := string()
%% }
-type release_phone_number_request() :: #{binary() => any()}.

%% Example:
%% release_sender_id_result() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageTypes">> => list(string()()),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"Registered">> => [boolean()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SenderId">> => string(),
%%   <<"SenderIdArn">> => [string()]
%% }
-type release_sender_id_result() :: #{binary() => any()}.

%% Example:
%% update_sender_id_request() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> := string(),
%%   <<"SenderId">> := string()
%% }
-type update_sender_id_request() :: #{binary() => any()}.

%% Example:
%% discard_registration_version_request() :: #{
%%   <<"RegistrationId">> := string()
%% }
-type discard_registration_version_request() :: #{binary() => any()}.

%% Example:
%% update_pool_request() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"OptOutListName">> => string(),
%%   <<"PoolId">> := string(),
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"SharedRoutesEnabled">> => [boolean()],
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type update_pool_request() :: #{binary() => any()}.

%% Example:
%% set_text_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type set_text_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% create_pool_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> := string(),
%%   <<"MessageType">> := string(),
%%   <<"OriginationIdentity">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_pool_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% registration_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type registration_filter() :: #{binary() => any()}.

%% Example:
%% set_voice_message_spend_limit_override_request() :: #{
%%   <<"MonthlyLimit">> := float()
%% }
-type set_voice_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% request_sender_id_result() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageTypes">> => list(string()()),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"Registered">> => [boolean()],
%%   <<"SenderId">> => string(),
%%   <<"SenderIdArn">> => [string()],
%%   <<"Tags">> => list(tag()())
%% }
-type request_sender_id_result() :: #{binary() => any()}.

%% Example:
%% delete_registration_field_value_request() :: #{
%%   <<"FieldPath">> := string(),
%%   <<"RegistrationId">> := string()
%% }
-type delete_registration_field_value_request() :: #{binary() => any()}.

%% Example:
%% verify_destination_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"Status">> => string(),
%%   <<"VerifiedDestinationNumberArn">> => [string()],
%%   <<"VerifiedDestinationNumberId">> => [string()]
%% }
-type verify_destination_number_result() :: #{binary() => any()}.

%% Example:
%% delete_media_message_spend_limit_override_request() :: #{

%% }
-type delete_media_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_request() :: #{
%%   <<"ConfigurationSetName">> := string()
%% }
-type delete_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_section_definitions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationSectionDefinitions">> => list(registration_section_definition()()),
%%   <<"RegistrationType">> => string()
%% }
-type describe_registration_section_definitions_result() :: #{binary() => any()}.

%% Example:
%% create_registration_version_result() :: #{
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationVersionStatus">> => string(),
%%   <<"RegistrationVersionStatusHistory">> => registration_version_status_history(),
%%   <<"VersionNumber">> => float()
%% }
-type create_registration_version_result() :: #{binary() => any()}.

%% Example:
%% delete_text_message_spend_limit_override_request() :: #{

%% }
-type delete_text_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% describe_keywords_result() :: #{
%%   <<"Keywords">> => list(keyword_information()()),
%%   <<"NextToken">> => string(),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()]
%% }
-type describe_keywords_result() :: #{binary() => any()}.

%% Example:
%% registration_attachments_information() :: #{
%%   <<"AttachmentStatus">> => string(),
%%   <<"AttachmentUploadErrorReason">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"RegistrationAttachmentArn">> => [string()],
%%   <<"RegistrationAttachmentId">> => [string()]
%% }
-type registration_attachments_information() :: #{binary() => any()}.

%% Example:
%% select_validation() :: #{
%%   <<"MaxChoices">> => [integer()],
%%   <<"MinChoices">> => [integer()],
%%   <<"Options">> => list([string()]())
%% }
-type select_validation() :: #{binary() => any()}.

%% Example:
%% disassociate_origination_identity_result() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()],
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()]
%% }
-type disassociate_origination_identity_result() :: #{binary() => any()}.

%% Example:
%% create_event_destination_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CloudWatchLogsDestination">> => cloud_watch_logs_destination(),
%%   <<"ConfigurationSetName">> := string(),
%%   <<"EventDestinationName">> := string(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> := list(string()()),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type create_event_destination_request() :: #{binary() => any()}.

%% Example:
%% describe_registrations_request() :: #{
%%   <<"Filters">> => list(registration_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationIds">> => list(string()())
%% }
-type describe_registrations_request() :: #{binary() => any()}.

%% Example:
%% describe_protect_configurations_request() :: #{
%%   <<"Filters">> => list(protect_configuration_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProtectConfigurationIds">> => list(string()())
%% }
-type describe_protect_configurations_request() :: #{binary() => any()}.

%% Example:
%% put_protect_configuration_rule_set_number_override_request() :: #{
%%   <<"Action">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"ExpirationTimestamp">> => [non_neg_integer()],
%%   <<"ProtectConfigurationId">> := string()
%% }
-type put_protect_configuration_rule_set_number_override_request() :: #{binary() => any()}.

%% Example:
%% update_event_destination_request() :: #{
%%   <<"CloudWatchLogsDestination">> => cloud_watch_logs_destination(),
%%   <<"ConfigurationSetName">> := string(),
%%   <<"Enabled">> => [boolean()],
%%   <<"EventDestinationName">> := string(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(string()()),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type update_event_destination_request() :: #{binary() => any()}.

%% Example:
%% update_protect_configuration_country_rule_set_result() :: #{
%%   <<"CountryRuleSet">> => map(),
%%   <<"NumberCapability">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type update_protect_configuration_country_rule_set_result() :: #{binary() => any()}.

%% Example:
%% describe_verified_destination_numbers_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VerifiedDestinationNumbers">> => list(verified_destination_number_information()())
%% }
-type describe_verified_destination_numbers_result() :: #{binary() => any()}.

%% Example:
%% delete_opted_out_number_result() :: #{
%%   <<"EndUserOptedOut">> => [boolean()],
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string(),
%%   <<"OptedOutNumber">> => string(),
%%   <<"OptedOutTimestamp">> => [non_neg_integer()]
%% }
-type delete_opted_out_number_result() :: #{binary() => any()}.

%% Example:
%% set_voice_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type set_voice_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% create_protect_configuration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"Tags">> => list(tag()())
%% }
-type create_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string(),
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% registration_field_definition() :: #{
%%   <<"DisplayHints">> => registration_field_display_hints(),
%%   <<"FieldPath">> => string(),
%%   <<"FieldRequirement">> => string(),
%%   <<"FieldType">> => string(),
%%   <<"SectionPath">> => string(),
%%   <<"SelectValidation">> => select_validation(),
%%   <<"TextValidation">> => text_validation()
%% }
-type registration_field_definition() :: #{binary() => any()}.

%% Example:
%% delete_account_default_protect_configuration_result() :: #{
%%   <<"DefaultProtectConfigurationArn">> => string(),
%%   <<"DefaultProtectConfigurationId">> => string()
%% }
-type delete_account_default_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% put_message_feedback_result() :: #{
%%   <<"MessageFeedbackStatus">> => string(),
%%   <<"MessageId">> => string()
%% }
-type put_message_feedback_result() :: #{binary() => any()}.

%% Example:
%% registration_type_definition() :: #{
%%   <<"DisplayHints">> => registration_type_display_hints(),
%%   <<"RegistrationType">> => string(),
%%   <<"SupportedAssociations">> => list(supported_association()())
%% }
-type registration_type_definition() :: #{binary() => any()}.

%% Example:
%% opted_out_number_information() :: #{
%%   <<"EndUserOptedOut">> => [boolean()],
%%   <<"OptedOutNumber">> => string(),
%%   <<"OptedOutTimestamp">> => [non_neg_integer()]
%% }
-type opted_out_number_information() :: #{binary() => any()}.

%% Example:
%% list_protect_configuration_rule_set_number_overrides_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string(),
%%   <<"RuleSetNumberOverrides">> => list(protect_configuration_rule_set_number_override()())
%% }
-type list_protect_configuration_rule_set_number_overrides_result() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% event_destination() :: #{
%%   <<"CloudWatchLogsDestination">> => cloud_watch_logs_destination(),
%%   <<"Enabled">> => [boolean()],
%%   <<"EventDestinationName">> => string(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(string()()),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination() :: #{binary() => any()}.

%% Example:
%% delete_opted_out_number_request() :: #{
%%   <<"OptOutListName">> := string(),
%%   <<"OptedOutNumber">> := string()
%% }
-type delete_opted_out_number_request() :: #{binary() => any()}.

%% Example:
%% registration_section_definition() :: #{
%%   <<"DisplayHints">> => registration_section_display_hints(),
%%   <<"SectionPath">> => string()
%% }
-type registration_section_definition() :: #{binary() => any()}.

%% Example:
%% delete_opt_out_list_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string()
%% }
-type delete_opt_out_list_result() :: #{binary() => any()}.

%% Example:
%% update_protect_configuration_country_rule_set_request() :: #{
%%   <<"CountryRuleSetUpdates">> := map(),
%%   <<"NumberCapability">> := string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type update_protect_configuration_country_rule_set_request() :: #{binary() => any()}.

%% Example:
%% delete_registration_result() :: #{
%%   <<"AdditionalAttributes">> => map(),
%%   <<"ApprovedVersionNumber">> => float(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"CurrentVersionNumber">> => float(),
%%   <<"LatestDeniedVersionNumber">> => float(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationStatus">> => string(),
%%   <<"RegistrationType">> => string()
%% }
-type delete_registration_result() :: #{binary() => any()}.

%% Example:
%% sender_id_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type sender_id_filter() :: #{binary() => any()}.

%% Example:
%% delete_event_destination_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestination">> => event_destination()
%% }
-type delete_event_destination_result() :: #{binary() => any()}.

%% Example:
%% protect_configuration_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type protect_configuration_filter() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_default_sender_id_request() :: #{
%%   <<"ConfigurationSetName">> := string()
%% }
-type delete_default_sender_id_request() :: #{binary() => any()}.

%% Example:
%% set_default_message_feedback_enabled_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"MessageFeedbackEnabled">> => [boolean()]
%% }
-type set_default_message_feedback_enabled_result() :: #{binary() => any()}.

%% Example:
%% delete_voice_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type delete_voice_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% associate_origination_identity_result() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()],
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()]
%% }
-type associate_origination_identity_result() :: #{binary() => any()}.

%% Example:
%% set_default_message_feedback_enabled_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"MessageFeedbackEnabled">> := [boolean()]
%% }
-type set_default_message_feedback_enabled_request() :: #{binary() => any()}.

%% Example:
%% describe_opted_out_numbers_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string(),
%%   <<"OptedOutNumbers">> => list(opted_out_number_information()())
%% }
-type describe_opted_out_numbers_result() :: #{binary() => any()}.

%% Example:
%% registration_version_status_history() :: #{
%%   <<"ApprovedTimestamp">> => [non_neg_integer()],
%%   <<"ArchivedTimestamp">> => [non_neg_integer()],
%%   <<"DeniedTimestamp">> => [non_neg_integer()],
%%   <<"DiscardedTimestamp">> => [non_neg_integer()],
%%   <<"DraftTimestamp">> => [non_neg_integer()],
%%   <<"RequiresAuthenticationTimestamp">> => [non_neg_integer()],
%%   <<"ReviewingTimestamp">> => [non_neg_integer()],
%%   <<"RevokedTimestamp">> => [non_neg_integer()],
%%   <<"SubmittedTimestamp">> => [non_neg_integer()]
%% }
-type registration_version_status_history() :: #{binary() => any()}.

%% Example:
%% phone_number_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type phone_number_filter() :: #{binary() => any()}.

%% Example:
%% list_pool_origination_identities_request() :: #{
%%   <<"Filters">> => list(pool_origination_identities_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PoolId">> := string()
%% }
-type list_pool_origination_identities_request() :: #{binary() => any()}.

%% Example:
%% registration_information() :: #{
%%   <<"AdditionalAttributes">> => map(),
%%   <<"ApprovedVersionNumber">> => float(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"CurrentVersionNumber">> => float(),
%%   <<"LatestDeniedVersionNumber">> => float(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationStatus">> => string(),
%%   <<"RegistrationType">> => string()
%% }
-type registration_information() :: #{binary() => any()}.

%% Example:
%% send_media_message_result() :: #{
%%   <<"MessageId">> => [string()]
%% }
-type send_media_message_result() :: #{binary() => any()}.

%% Example:
%% select_option_description() :: #{
%%   <<"Description">> => [string()],
%%   <<"Option">> => [string()],
%%   <<"Title">> => [string()]
%% }
-type select_option_description() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type get_resource_policy_result() :: #{binary() => any()}.

%% Example:
%% keyword_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type keyword_filter() :: #{binary() => any()}.

%% Example:
%% create_registration_version_request() :: #{
%%   <<"RegistrationId">> := string()
%% }
-type create_registration_version_request() :: #{binary() => any()}.

%% Example:
%% describe_keywords_request() :: #{
%%   <<"Filters">> => list(keyword_filter()()),
%%   <<"Keywords">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OriginationIdentity">> := string()
%% }
-type describe_keywords_request() :: #{binary() => any()}.

%% Example:
%% delete_verified_destination_number_request() :: #{
%%   <<"VerifiedDestinationNumberId">> := string()
%% }
-type delete_verified_destination_number_request() :: #{binary() => any()}.

%% Example:
%% account_limit() :: #{
%%   <<"Max">> => [float()],
%%   <<"Name">> => string(),
%%   <<"Used">> => [float()]
%% }
-type account_limit() :: #{binary() => any()}.

%% Example:
%% request_phone_number_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> := string(),
%%   <<"MessageType">> := string(),
%%   <<"NumberCapabilities">> := list(string()()),
%%   <<"NumberType">> := string(),
%%   <<"OptOutListName">> => string(),
%%   <<"PoolId">> => string(),
%%   <<"RegistrationId">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type request_phone_number_request() :: #{binary() => any()}.

%% Example:
%% create_protect_configuration_result() :: #{
%%   <<"AccountDefault">> => [boolean()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% describe_registration_field_values_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationFieldValues">> => list(registration_field_value_information()()),
%%   <<"RegistrationId">> => [string()],
%%   <<"VersionNumber">> => float()
%% }
-type describe_registration_field_values_result() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% delete_keyword_request() :: #{
%%   <<"Keyword">> := string(),
%%   <<"OriginationIdentity">> := string()
%% }
-type delete_keyword_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_field_values_request() :: #{
%%   <<"FieldPaths">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationId">> := string(),
%%   <<"SectionPath">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_registration_field_values_request() :: #{binary() => any()}.

%% Example:
%% describe_opt_out_lists_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OptOutListNames">> => list(string()()),
%%   <<"Owner">> => string()
%% }
-type describe_opt_out_lists_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% create_registration_result() :: #{
%%   <<"AdditionalAttributes">> => map(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"CurrentVersionNumber">> => float(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationStatus">> => string(),
%%   <<"RegistrationType">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_registration_result() :: #{binary() => any()}.

%% Example:
%% put_opted_out_number_result() :: #{
%%   <<"EndUserOptedOut">> => [boolean()],
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string(),
%%   <<"OptedOutNumber">> => string(),
%%   <<"OptedOutTimestamp">> => [non_neg_integer()]
%% }
-type put_opted_out_number_result() :: #{binary() => any()}.

%% Example:
%% update_event_destination_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestination">> => event_destination()
%% }
-type update_event_destination_result() :: #{binary() => any()}.

%% Example:
%% delete_opt_out_list_request() :: #{
%%   <<"OptOutListName">> := string()
%% }
-type delete_opt_out_list_request() :: #{binary() => any()}.

%% Example:
%% pool_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type pool_filter() :: #{binary() => any()}.

%% Example:
%% describe_spend_limits_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_spend_limits_request() :: #{binary() => any()}.

%% Example:
%% describe_sender_ids_request() :: #{
%%   <<"Filters">> => list(sender_id_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Owner">> => string(),
%%   <<"SenderIds">> => list(sender_id_and_country()())
%% }
-type describe_sender_ids_request() :: #{binary() => any()}.

%% Example:
%% delete_protect_configuration_rule_set_number_override_request() :: #{
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type delete_protect_configuration_rule_set_number_override_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_attachments_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationAttachments">> => list(registration_attachments_information()())
%% }
-type describe_registration_attachments_result() :: #{binary() => any()}.

%% Example:
%% list_pool_origination_identities_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OriginationIdentities">> => list(origination_identity_metadata()()),
%%   <<"PoolArn">> => [string()],
%%   <<"PoolId">> => [string()]
%% }
-type list_pool_origination_identities_result() :: #{binary() => any()}.

%% Example:
%% put_registration_field_value_result() :: #{
%%   <<"FieldPath">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationAttachmentId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelectChoices">> => list(string()()),
%%   <<"TextValue">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type put_registration_field_value_result() :: #{binary() => any()}.

%% Example:
%% opted_out_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type opted_out_filter() :: #{binary() => any()}.

%% Example:
%% send_destination_number_verification_code_result() :: #{
%%   <<"MessageId">> => [string()]
%% }
-type send_destination_number_verification_code_result() :: #{binary() => any()}.

%% Example:
%% describe_verified_destination_numbers_request() :: #{
%%   <<"DestinationPhoneNumbers">> => list(string()()),
%%   <<"Filters">> => list(verified_destination_number_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VerifiedDestinationNumberIds">> => list(string()())
%% }
-type describe_verified_destination_numbers_request() :: #{binary() => any()}.

%% Example:
%% registration_field_display_hints() :: #{
%%   <<"DocumentationLink">> => [string()],
%%   <<"DocumentationTitle">> => [string()],
%%   <<"ExampleTextValue">> => [string()],
%%   <<"LongDescription">> => [string()],
%%   <<"SelectOptionDescriptions">> => list(select_option_description()()),
%%   <<"ShortDescription">> => [string()],
%%   <<"TextValidationDescription">> => [string()],
%%   <<"Title">> => [string()]
%% }
-type registration_field_display_hints() :: #{binary() => any()}.

%% Example:
%% send_voice_message_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Context">> => map(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"DryRun">> => [boolean()],
%%   <<"MaxPricePerMinute">> => string(),
%%   <<"MessageBody">> => string(),
%%   <<"MessageBodyTextType">> => string(),
%%   <<"MessageFeedbackEnabled">> => [boolean()],
%%   <<"OriginationIdentity">> := string(),
%%   <<"ProtectConfigurationId">> => string(),
%%   <<"TimeToLive">> => integer(),
%%   <<"VoiceId">> => string()
%% }
-type send_voice_message_request() :: #{binary() => any()}.

%% Example:
%% put_message_feedback_request() :: #{
%%   <<"MessageFeedbackStatus">> := string(),
%%   <<"MessageId">> := string()
%% }
-type put_message_feedback_request() :: #{binary() => any()}.

%% Example:
%% set_account_default_protect_configuration_result() :: #{
%%   <<"DefaultProtectConfigurationArn">> => string(),
%%   <<"DefaultProtectConfigurationId">> => string()
%% }
-type set_account_default_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"RequestId">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% discard_registration_version_result() :: #{
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationVersionStatus">> => string(),
%%   <<"RegistrationVersionStatusHistory">> => registration_version_status_history(),
%%   <<"VersionNumber">> => float()
%% }
-type discard_registration_version_result() :: #{binary() => any()}.

%% Example:
%% list_registration_associations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationAssociations">> => list(registration_association_metadata()()),
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationType">> => string()
%% }
-type list_registration_associations_result() :: #{binary() => any()}.

%% Example:
%% protect_configuration_rule_set_number_override() :: #{
%%   <<"Action">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"ExpirationTimestamp">> => [non_neg_integer()],
%%   <<"IsoCountryCode">> => string()
%% }
-type protect_configuration_rule_set_number_override() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.

%% Example:
%% release_sender_id_request() :: #{
%%   <<"IsoCountryCode">> := string(),
%%   <<"SenderId">> := string()
%% }
-type release_sender_id_request() :: #{binary() => any()}.

%% Example:
%% supported_association() :: #{
%%   <<"AssociationBehavior">> => string(),
%%   <<"DisassociationBehavior">> => string(),
%%   <<"IsoCountryCode">> => string(),
%%   <<"ResourceType">> => [string()]
%% }
-type supported_association() :: #{binary() => any()}.

%% Example:
%% disassociate_protect_configuration_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type disassociate_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% send_text_message_result() :: #{
%%   <<"MessageId">> => [string()]
%% }
-type send_text_message_result() :: #{binary() => any()}.

%% Example:
%% delete_registration_attachment_request() :: #{
%%   <<"RegistrationAttachmentId">> := string()
%% }
-type delete_registration_attachment_request() :: #{binary() => any()}.

%% Example:
%% sender_id_information() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageTypes">> => list(string()()),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"Registered">> => [boolean()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SenderId">> => string(),
%%   <<"SenderIdArn">> => [string()]
%% }
-type sender_id_information() :: #{binary() => any()}.

%% Example:
%% delete_pool_request() :: #{
%%   <<"PoolId">> := string()
%% }
-type delete_pool_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_section_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationType">> := string(),
%%   <<"SectionPaths">> => list(string()())
%% }
-type describe_registration_section_definitions_request() :: #{binary() => any()}.

%% Example:
%% associate_protect_configuration_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type associate_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% sender_id_and_country() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"SenderId">> => string()
%% }
-type sender_id_and_country() :: #{binary() => any()}.

%% Example:
%% send_voice_message_result() :: #{
%%   <<"MessageId">> => [string()]
%% }
-type send_voice_message_result() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_default_sender_id_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"SenderId">> => string()
%% }
-type delete_default_sender_id_result() :: #{binary() => any()}.

%% Example:
%% send_text_message_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Context">> => map(),
%%   <<"DestinationCountryParameters">> => map(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"DryRun">> => [boolean()],
%%   <<"Keyword">> => string(),
%%   <<"MaxPrice">> => string(),
%%   <<"MessageBody">> => string(),
%%   <<"MessageFeedbackEnabled">> => [boolean()],
%%   <<"MessageType">> => string(),
%%   <<"OriginationIdentity">> => string(),
%%   <<"ProtectConfigurationId">> => string(),
%%   <<"TimeToLive">> => integer()
%% }
-type send_text_message_request() :: #{binary() => any()}.

%% Example:
%% describe_sender_ids_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SenderIds">> => list(sender_id_information()())
%% }
-type describe_sender_ids_result() :: #{binary() => any()}.

%% Example:
%% get_protect_configuration_country_rule_set_result() :: #{
%%   <<"CountryRuleSet">> => map(),
%%   <<"NumberCapability">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type get_protect_configuration_country_rule_set_result() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_result() :: #{
%%   <<"AccountAttributes">> => list(account_attribute()()),
%%   <<"NextToken">> => string()
%% }
-type describe_account_attributes_result() :: #{binary() => any()}.

%% Example:
%% put_registration_field_value_request() :: #{
%%   <<"FieldPath">> := string(),
%%   <<"RegistrationAttachmentId">> => string(),
%%   <<"RegistrationId">> := string(),
%%   <<"SelectChoices">> => list(string()()),
%%   <<"TextValue">> => string()
%% }
-type put_registration_field_value_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_field_definitions_request() :: #{
%%   <<"FieldPaths">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationType">> := string(),
%%   <<"SectionPath">> => string()
%% }
-type describe_registration_field_definitions_request() :: #{binary() => any()}.

%% Example:
%% describe_registrations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Registrations">> => list(registration_information()())
%% }
-type describe_registrations_result() :: #{binary() => any()}.

%% Example:
%% describe_opt_out_lists_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OptOutLists">> => list(opt_out_list_information()())
%% }
-type describe_opt_out_lists_result() :: #{binary() => any()}.

%% Example:
%% delete_verified_destination_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"VerifiedDestinationNumberArn">> => [string()],
%%   <<"VerifiedDestinationNumberId">> => [string()]
%% }
-type delete_verified_destination_number_result() :: #{binary() => any()}.

%% Example:
%% describe_registration_attachments_request() :: #{
%%   <<"Filters">> => list(registration_attachment_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationAttachmentIds">> => list(string()())
%% }
-type describe_registration_attachments_request() :: #{binary() => any()}.

%% Example:
%% update_sender_id_result() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"MessageTypes">> => list(string()()),
%%   <<"MonthlyLeasingPrice">> => [string()],
%%   <<"Registered">> => [boolean()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SenderId">> => string(),
%%   <<"SenderIdArn">> => [string()]
%% }
-type update_sender_id_result() :: #{binary() => any()}.

%% Example:
%% pool_origination_identities_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type pool_origination_identities_filter() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_result() :: #{
%%   <<"AccountLimits">> => list(account_limit()()),
%%   <<"NextToken">> => string()
%% }
-type describe_account_limits_result() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% put_keyword_result() :: #{
%%   <<"Keyword">> => string(),
%%   <<"KeywordAction">> => string(),
%%   <<"KeywordMessage">> => string(),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()]
%% }
-type put_keyword_result() :: #{binary() => any()}.

%% Example:
%% associate_origination_identity_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"IsoCountryCode">> := string(),
%%   <<"OriginationIdentity">> := string(),
%%   <<"PoolId">> := string()
%% }
-type associate_origination_identity_request() :: #{binary() => any()}.

%% Example:
%% update_protect_configuration_result() :: #{
%%   <<"AccountDefault">> => [boolean()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type update_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% protect_configuration_rule_set_number_override_filter_item() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type protect_configuration_rule_set_number_override_filter_item() :: #{binary() => any()}.

%% Example:
%% disassociate_origination_identity_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"IsoCountryCode">> := string(),
%%   <<"OriginationIdentity">> := string(),
%%   <<"PoolId">> := string()
%% }
-type disassociate_origination_identity_request() :: #{binary() => any()}.

%% Example:
%% registration_type_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type registration_type_filter() :: #{binary() => any()}.

%% Example:
%% account_attribute() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => [string()]
%% }
-type account_attribute() :: #{binary() => any()}.

%% Example:
%% create_verified_destination_number_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_verified_destination_number_request() :: #{binary() => any()}.

%% Example:
%% describe_phone_numbers_request() :: #{
%%   <<"Filters">> => list(phone_number_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Owner">> => string(),
%%   <<"PhoneNumberIds">> => list(string()())
%% }
-type describe_phone_numbers_request() :: #{binary() => any()}.

%% Example:
%% describe_opted_out_numbers_request() :: #{
%%   <<"Filters">> => list(opted_out_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OptOutListName">> := string(),
%%   <<"OptedOutNumbers">> => list(string()())
%% }
-type describe_opted_out_numbers_request() :: #{binary() => any()}.

%% Example:
%% describe_protect_configurations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProtectConfigurations">> => list(protect_configuration_information()())
%% }
-type describe_protect_configurations_result() :: #{binary() => any()}.

%% Example:
%% set_account_default_protect_configuration_request() :: #{
%%   <<"ProtectConfigurationId">> := string()
%% }
-type set_account_default_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_registration_request() :: #{
%%   <<"RegistrationId">> := string()
%% }
-type delete_registration_request() :: #{binary() => any()}.

%% Example:
%% describe_registration_type_definitions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationTypeDefinitions">> => list(registration_type_definition()())
%% }
-type describe_registration_type_definitions_result() :: #{binary() => any()}.

%% Example:
%% describe_phone_numbers_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number_information()())
%% }
-type describe_phone_numbers_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{

%% }
-type tag_resource_result() :: #{binary() => any()}.

%% Example:
%% configuration_set_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type configuration_set_filter() :: #{binary() => any()}.

%% Example:
%% create_opt_out_list_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"OptOutListName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_opt_out_list_request() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Tags">> => list(tag()())
%% }
-type create_configuration_set_result() :: #{binary() => any()}.

%% Example:
%% delete_account_default_protect_configuration_request() :: #{

%% }
-type delete_account_default_protect_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_configuration_sets_result() :: #{
%%   <<"ConfigurationSets">> => list(configuration_set_information()()),
%%   <<"NextToken">> => string()
%% }
-type describe_configuration_sets_result() :: #{binary() => any()}.

%% Example:
%% keyword_information() :: #{
%%   <<"Keyword">> => string(),
%%   <<"KeywordAction">> => string(),
%%   <<"KeywordMessage">> => string()
%% }
-type keyword_information() :: #{binary() => any()}.

%% Example:
%% list_protect_configuration_rule_set_number_overrides_request() :: #{
%%   <<"Filters">> => list(protect_configuration_rule_set_number_override_filter_item()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type list_protect_configuration_rule_set_number_overrides_request() :: #{binary() => any()}.

%% Example:
%% delete_registration_attachment_result() :: #{
%%   <<"AttachmentStatus">> => string(),
%%   <<"AttachmentUploadErrorReason">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"RegistrationAttachmentArn">> => [string()],
%%   <<"RegistrationAttachmentId">> => [string()]
%% }
-type delete_registration_attachment_result() :: #{binary() => any()}.

%% Example:
%% set_media_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type set_media_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% put_keyword_request() :: #{
%%   <<"Keyword">> := string(),
%%   <<"KeywordAction">> => string(),
%%   <<"KeywordMessage">> := string(),
%%   <<"OriginationIdentity">> := string()
%% }
-type put_keyword_request() :: #{binary() => any()}.

%% Example:
%% set_default_sender_id_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"SenderId">> := string()
%% }
-type set_default_sender_id_request() :: #{binary() => any()}.

%% Example:
%% set_text_message_spend_limit_override_request() :: #{
%%   <<"MonthlyLimit">> := float()
%% }
-type set_text_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% submit_registration_version_result() :: #{
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"RegistrationVersionStatus">> => string(),
%%   <<"RegistrationVersionStatusHistory">> => registration_version_status_history(),
%%   <<"VersionNumber">> => float()
%% }
-type submit_registration_version_result() :: #{binary() => any()}.

%% Example:
%% describe_registration_versions_request() :: #{
%%   <<"Filters">> => list(registration_version_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationId">> := string(),
%%   <<"VersionNumbers">> => list(float()())
%% }
-type describe_registration_versions_request() :: #{binary() => any()}.

%% Example:
%% registration_field_value_information() :: #{
%%   <<"DeniedReason">> => [string()],
%%   <<"FieldPath">> => string(),
%%   <<"RegistrationAttachmentId">> => string(),
%%   <<"SelectChoices">> => list(string()()),
%%   <<"TextValue">> => string()
%% }
-type registration_field_value_information() :: #{binary() => any()}.

%% Example:
%% protect_configuration_information() :: #{
%%   <<"AccountDefault">> => [boolean()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type protect_configuration_information() :: #{binary() => any()}.

%% Example:
%% set_default_sender_id_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"SenderId">> => string()
%% }
-type set_default_sender_id_result() :: #{binary() => any()}.

%% Example:
%% get_protect_configuration_country_rule_set_request() :: #{
%%   <<"NumberCapability">> := string(),
%%   <<"ProtectConfigurationId">> := string()
%% }
-type get_protect_configuration_country_rule_set_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type delete_resource_policy_result() :: #{binary() => any()}.

%% Example:
%% registration_version_information() :: #{
%%   <<"DeniedReasons">> => list(registration_denied_reason_information()()),
%%   <<"RegistrationVersionStatus">> => string(),
%%   <<"RegistrationVersionStatusHistory">> => registration_version_status_history(),
%%   <<"VersionNumber">> => float()
%% }
-type registration_version_information() :: #{binary() => any()}.

%% Example:
%% delete_media_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type delete_media_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% registration_version_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type registration_version_filter() :: #{binary() => any()}.

%% Example:
%% update_phone_number_request() :: #{
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"OptOutListName">> => string(),
%%   <<"PhoneNumberId">> := string(),
%%   <<"SelfManagedOptOutsEnabled">> => [boolean()],
%%   <<"TwoWayChannelArn">> => string(),
%%   <<"TwoWayChannelRole">> => string(),
%%   <<"TwoWayEnabled">> => [boolean()]
%% }
-type update_phone_number_request() :: #{binary() => any()}.

%% Example:
%% origination_identity_metadata() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"NumberCapabilities">> => list(string()()),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()],
%%   <<"PhoneNumber">> => string()
%% }
-type origination_identity_metadata() :: #{binary() => any()}.

%% Example:
%% set_default_message_type_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"MessageType">> => string()
%% }
-type set_default_message_type_result() :: #{binary() => any()}.

%% Example:
%% describe_configuration_sets_request() :: #{
%%   <<"ConfigurationSetNames">> => list(string()()),
%%   <<"Filters">> => list(configuration_set_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_configuration_sets_request() :: #{binary() => any()}.

%% Example:
%% create_registration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"RegistrationType">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_registration_request() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_account_attributes_request() :: #{binary() => any()}.

%% Example:
%% delete_text_message_spend_limit_override_result() :: #{
%%   <<"MonthlyLimit">> => float()
%% }
-type delete_text_message_spend_limit_override_result() :: #{binary() => any()}.

%% Example:
%% set_media_message_spend_limit_override_request() :: #{
%%   <<"MonthlyLimit">> := float()
%% }
-type set_media_message_spend_limit_override_request() :: #{binary() => any()}.

%% Example:
%% put_opted_out_number_request() :: #{
%%   <<"OptOutListName">> := string(),
%%   <<"OptedOutNumber">> := string()
%% }
-type put_opted_out_number_request() :: #{binary() => any()}.

%% Example:
%% create_event_destination_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestination">> => event_destination()
%% }
-type create_event_destination_result() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConfigurationSetName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% create_verified_destination_number_result() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VerifiedDestinationNumberArn">> => [string()],
%%   <<"VerifiedDestinationNumberId">> => [string()]
%% }
-type create_verified_destination_number_result() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DefaultMessageFeedbackEnabled">> => [boolean()],
%%   <<"DefaultMessageType">> => string(),
%%   <<"DefaultSenderId">> => string(),
%%   <<"EventDestinations">> => list(event_destination()())
%% }
-type delete_configuration_set_result() :: #{binary() => any()}.

%% Example:
%% delete_registration_field_value_result() :: #{
%%   <<"FieldPath">> => string(),
%%   <<"RegistrationArn">> => [string()],
%%   <<"RegistrationAttachmentId">> => [string()],
%%   <<"RegistrationId">> => [string()],
%%   <<"SelectChoices">> => list(string()()),
%%   <<"TextValue">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type delete_registration_field_value_result() :: #{binary() => any()}.

%% Example:
%% sns_destination() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_destination() :: #{binary() => any()}.

%% Example:
%% verify_destination_number_request() :: #{
%%   <<"VerificationCode">> := string(),
%%   <<"VerifiedDestinationNumberId">> := string()
%% }
-type verify_destination_number_request() :: #{binary() => any()}.

%% Example:
%% delete_default_message_type_result() :: #{
%%   <<"ConfigurationSetArn">> => [string()],
%%   <<"ConfigurationSetName">> => string(),
%%   <<"MessageType">> => string()
%% }
-type delete_default_message_type_result() :: #{binary() => any()}.

%% Example:
%% delete_protect_configuration_rule_set_number_override_result() :: #{
%%   <<"Action">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"ExpirationTimestamp">> => [non_neg_integer()],
%%   <<"IsoCountryCode">> => string(),
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type delete_protect_configuration_rule_set_number_override_result() :: #{binary() => any()}.

%% Example:
%% opt_out_list_information() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"OptOutListArn">> => [string()],
%%   <<"OptOutListName">> => string()
%% }
-type opt_out_list_information() :: #{binary() => any()}.

%% Example:
%% send_media_message_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Context">> => map(),
%%   <<"DestinationPhoneNumber">> := string(),
%%   <<"DryRun">> => [boolean()],
%%   <<"MaxPrice">> => string(),
%%   <<"MediaUrls">> => list(string()()),
%%   <<"MessageBody">> => string(),
%%   <<"MessageFeedbackEnabled">> => [boolean()],
%%   <<"OriginationIdentity">> := string(),
%%   <<"ProtectConfigurationId">> => string(),
%%   <<"TimeToLive">> => integer()
%% }
-type send_media_message_request() :: #{binary() => any()}.

%% Example:
%% delete_protect_configuration_result() :: #{
%%   <<"AccountDefault">> => [boolean()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DeletionProtectionEnabled">> => [boolean()],
%%   <<"ProtectConfigurationArn">> => string(),
%%   <<"ProtectConfigurationId">> => string()
%% }
-type delete_protect_configuration_result() :: #{binary() => any()}.

%% Example:
%% delete_keyword_result() :: #{
%%   <<"Keyword">> => string(),
%%   <<"KeywordAction">> => string(),
%%   <<"KeywordMessage">> => string(),
%%   <<"OriginationIdentity">> => [string()],
%%   <<"OriginationIdentityArn">> => [string()]
%% }
-type delete_keyword_result() :: #{binary() => any()}.

-type associate_origination_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configuration_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_event_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_opt_out_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_registration_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_registration_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_registration_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_verified_destination_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_account_default_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_configuration_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_default_message_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_default_sender_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_event_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_keyword_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_media_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_opt_out_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_opted_out_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_protect_configuration_rule_set_number_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_registration_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_registration_field_value_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_text_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_verified_destination_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_voice_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_account_attributes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_account_limits_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_configuration_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_keywords_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_opt_out_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_opted_out_numbers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_phone_numbers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_pools_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_protect_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_registration_attachments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_registration_field_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_registration_field_values_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_registration_section_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_registration_type_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_registration_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_registrations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_sender_ids_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_spend_limits_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_verified_destination_numbers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_origination_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type discard_registration_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_protect_configuration_country_rule_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_pool_origination_identities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_protect_configuration_rule_set_number_overrides_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_registration_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_keyword_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_message_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_opted_out_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_protect_configuration_rule_set_number_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type put_registration_field_value_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type release_phone_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type release_sender_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type request_phone_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type request_sender_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type send_destination_number_verification_code_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_media_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_text_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_voice_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type set_account_default_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type set_default_message_feedback_enabled_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type set_default_message_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type set_default_sender_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type set_media_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type set_text_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type set_voice_message_spend_limit_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type submit_registration_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_phone_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_protect_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_protect_configuration_country_rule_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_sender_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_destination_number_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified origination identity with a pool.
%%
%% If the origination identity is a phone number and is already associated
%% with another
%% pool, an error is returned. A sender ID can be associated with multiple
%% pools.
%%
%% If the origination identity configuration doesn't match the pool's
%% configuration, an
%% error is returned.
-spec associate_origination_identity(aws_client:aws_client(), associate_origination_identity_request()) ->
    {ok, associate_origination_identity_result(), tuple()} |
    {error, any()} |
    {error, associate_origination_identity_errors(), tuple()}.
associate_origination_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_origination_identity(Client, Input, []).

-spec associate_origination_identity(aws_client:aws_client(), associate_origination_identity_request(), proplists:proplist()) ->
    {ok, associate_origination_identity_result(), tuple()} |
    {error, any()} |
    {error, associate_origination_identity_errors(), tuple()}.
associate_origination_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateOriginationIdentity">>, Input, Options).

%% @doc Associate a protect configuration with a configuration set.
%%
%% This replaces the
%% configuration sets current protect configuration. A configuration set can
%% only be associated with one protect configuration at a time. A protect
%% configuration can
%% be associated with multiple configuration sets.
-spec associate_protect_configuration(aws_client:aws_client(), associate_protect_configuration_request()) ->
    {ok, associate_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, associate_protect_configuration_errors(), tuple()}.
associate_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_protect_configuration(Client, Input, []).

-spec associate_protect_configuration(aws_client:aws_client(), associate_protect_configuration_request(), proplists:proplist()) ->
    {ok, associate_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, associate_protect_configuration_errors(), tuple()}.
associate_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateProtectConfiguration">>, Input, Options).

%% @doc Creates a new configuration set.
%%
%% After you create the configuration set, you can add
%% one or more event destinations to it.
%%
%% A configuration set is a set of rules that you apply to the SMS and voice
%% messages
%% that you send.
%%
%% When you send a message, you can optionally specify a single configuration
%% set.
-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request()) ->
    {ok, create_configuration_set_result(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set(Client, Input, []).

-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request(), proplists:proplist()) ->
    {ok, create_configuration_set_result(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSet">>, Input, Options).

%% @doc Creates a new event destination in a configuration set.
%%
%% An event destination is a location where you send message events. The
%% event options
%% are Amazon CloudWatch, Amazon Data Firehose, or Amazon SNS. For example,
%% when a message is delivered successfully, you can send information about
%% that event to
%% an event destination, or send notifications to endpoints that are
%% subscribed to an
%% Amazon SNS topic.
%%
%% Each configuration set can contain between 0 and 5 event destinations.
%% Each event
%% destination can contain a reference to a single destination, such as a
%% CloudWatch
%% or Firehose destination.
-spec create_event_destination(aws_client:aws_client(), create_event_destination_request()) ->
    {ok, create_event_destination_result(), tuple()} |
    {error, any()} |
    {error, create_event_destination_errors(), tuple()}.
create_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_destination(Client, Input, []).

-spec create_event_destination(aws_client:aws_client(), create_event_destination_request(), proplists:proplist()) ->
    {ok, create_event_destination_result(), tuple()} |
    {error, any()} |
    {error, create_event_destination_errors(), tuple()}.
create_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventDestination">>, Input, Options).

%% @doc Creates a new opt-out list.
%%
%% If the opt-out list name already exists, an error is returned.
%%
%% An opt-out list is a list of phone numbers that are opted out, meaning you
%% can't send
%% SMS or voice messages to them. If end user replies with the keyword
%% &quot;STOP,&quot; an entry for
%% the phone number is added to the opt-out list. In addition to STOP, your
%% recipients can
%% use any supported opt-out keyword, such as CANCEL or OPTOUT. For a list of
%% supported
%% opt-out keywords, see
%% SMS opt out :
%% https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout
%% in the AWS End User Messaging SMS User Guide.
-spec create_opt_out_list(aws_client:aws_client(), create_opt_out_list_request()) ->
    {ok, create_opt_out_list_result(), tuple()} |
    {error, any()} |
    {error, create_opt_out_list_errors(), tuple()}.
create_opt_out_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_opt_out_list(Client, Input, []).

-spec create_opt_out_list(aws_client:aws_client(), create_opt_out_list_request(), proplists:proplist()) ->
    {ok, create_opt_out_list_result(), tuple()} |
    {error, any()} |
    {error, create_opt_out_list_errors(), tuple()}.
create_opt_out_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptOutList">>, Input, Options).

%% @doc Creates a new pool and associates the specified origination identity
%% to the pool.
%%
%% A
%% pool can include one or more phone numbers and SenderIds that are
%% associated with your
%% Amazon Web Services account.
%%
%% The new pool inherits its configuration from the specified origination
%% identity. This
%% includes keywords, message type, opt-out list, two-way configuration, and
%% self-managed
%% opt-out configuration. Deletion protection isn't inherited from the
%% origination identity
%% and defaults to false.
%%
%% If the origination identity is a phone number and is already associated
%% with another
%% pool, an error is returned. A sender ID can be associated with multiple
%% pools.
-spec create_pool(aws_client:aws_client(), create_pool_request()) ->
    {ok, create_pool_result(), tuple()} |
    {error, any()} |
    {error, create_pool_errors(), tuple()}.
create_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pool(Client, Input, []).

-spec create_pool(aws_client:aws_client(), create_pool_request(), proplists:proplist()) ->
    {ok, create_pool_result(), tuple()} |
    {error, any()} |
    {error, create_pool_errors(), tuple()}.
create_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePool">>, Input, Options).

%% @doc Create a new protect configuration.
%%
%% By default all country rule sets for each capability are set to
%% `ALLOW'. Update the country rule sets using
%% `UpdateProtectConfigurationCountryRuleSet'. A protect configurations
%% name is stored as a Tag with the key set to `Name' and value as the
%% name of the protect configuration.
-spec create_protect_configuration(aws_client:aws_client(), create_protect_configuration_request()) ->
    {ok, create_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_protect_configuration_errors(), tuple()}.
create_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_protect_configuration(Client, Input, []).

-spec create_protect_configuration(aws_client:aws_client(), create_protect_configuration_request(), proplists:proplist()) ->
    {ok, create_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_protect_configuration_errors(), tuple()}.
create_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProtectConfiguration">>, Input, Options).

%% @doc Creates a new registration based on the RegistrationType field.
-spec create_registration(aws_client:aws_client(), create_registration_request()) ->
    {ok, create_registration_result(), tuple()} |
    {error, any()} |
    {error, create_registration_errors(), tuple()}.
create_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registration(Client, Input, []).

-spec create_registration(aws_client:aws_client(), create_registration_request(), proplists:proplist()) ->
    {ok, create_registration_result(), tuple()} |
    {error, any()} |
    {error, create_registration_errors(), tuple()}.
create_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistration">>, Input, Options).

%% @doc Associate the registration with an origination identity such as a
%% phone number or sender ID.
-spec create_registration_association(aws_client:aws_client(), create_registration_association_request()) ->
    {ok, create_registration_association_result(), tuple()} |
    {error, any()} |
    {error, create_registration_association_errors(), tuple()}.
create_registration_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registration_association(Client, Input, []).

-spec create_registration_association(aws_client:aws_client(), create_registration_association_request(), proplists:proplist()) ->
    {ok, create_registration_association_result(), tuple()} |
    {error, any()} |
    {error, create_registration_association_errors(), tuple()}.
create_registration_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistrationAssociation">>, Input, Options).

%% @doc Create a new registration attachment to use for uploading a file or a
%% URL to a file.
%%
%% The maximum file size is 500KB and valid file extensions are PDF, JPEG and
%% PNG. For
%% example, many sender ID registrations require a signed “letter of
%% authorization” (LOA)
%% to be submitted.
%%
%% Use either `AttachmentUrl' or `AttachmentBody' to upload your
%% attachment. If both are specified then an exception is returned.
-spec create_registration_attachment(aws_client:aws_client(), create_registration_attachment_request()) ->
    {ok, create_registration_attachment_result(), tuple()} |
    {error, any()} |
    {error, create_registration_attachment_errors(), tuple()}.
create_registration_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registration_attachment(Client, Input, []).

-spec create_registration_attachment(aws_client:aws_client(), create_registration_attachment_request(), proplists:proplist()) ->
    {ok, create_registration_attachment_result(), tuple()} |
    {error, any()} |
    {error, create_registration_attachment_errors(), tuple()}.
create_registration_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistrationAttachment">>, Input, Options).

%% @doc Create a new version of the registration and increase the
%% VersionNumber.
%%
%% The previous version of the registration becomes read-only.
-spec create_registration_version(aws_client:aws_client(), create_registration_version_request()) ->
    {ok, create_registration_version_result(), tuple()} |
    {error, any()} |
    {error, create_registration_version_errors(), tuple()}.
create_registration_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registration_version(Client, Input, []).

-spec create_registration_version(aws_client:aws_client(), create_registration_version_request(), proplists:proplist()) ->
    {ok, create_registration_version_result(), tuple()} |
    {error, any()} |
    {error, create_registration_version_errors(), tuple()}.
create_registration_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistrationVersion">>, Input, Options).

%% @doc You can only send messages to verified destination numbers when your
%% account is in the sandbox.
%%
%% You can add up to 10 verified destination
%% numbers.
-spec create_verified_destination_number(aws_client:aws_client(), create_verified_destination_number_request()) ->
    {ok, create_verified_destination_number_result(), tuple()} |
    {error, any()} |
    {error, create_verified_destination_number_errors(), tuple()}.
create_verified_destination_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_verified_destination_number(Client, Input, []).

-spec create_verified_destination_number(aws_client:aws_client(), create_verified_destination_number_request(), proplists:proplist()) ->
    {ok, create_verified_destination_number_result(), tuple()} |
    {error, any()} |
    {error, create_verified_destination_number_errors(), tuple()}.
create_verified_destination_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVerifiedDestinationNumber">>, Input, Options).

%% @doc Removes the current account default protect configuration.
-spec delete_account_default_protect_configuration(aws_client:aws_client(), delete_account_default_protect_configuration_request()) ->
    {ok, delete_account_default_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_account_default_protect_configuration_errors(), tuple()}.
delete_account_default_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_default_protect_configuration(Client, Input, []).

-spec delete_account_default_protect_configuration(aws_client:aws_client(), delete_account_default_protect_configuration_request(), proplists:proplist()) ->
    {ok, delete_account_default_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_account_default_protect_configuration_errors(), tuple()}.
delete_account_default_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountDefaultProtectConfiguration">>, Input, Options).

%% @doc Deletes an existing configuration set.
%%
%% A configuration set is a set of rules that you apply to voice and SMS
%% messages that
%% you send. In a configuration set, you can specify a destination for
%% specific types of
%% events related to voice and SMS messages.
-spec delete_configuration_set(aws_client:aws_client(), delete_configuration_set_request()) ->
    {ok, delete_configuration_set_result(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set(Client, Input, []).

-spec delete_configuration_set(aws_client:aws_client(), delete_configuration_set_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_result(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSet">>, Input, Options).

%% @doc Deletes an existing default message type on a configuration set.
%%
%% A message type is a type of messages that you plan to send. If you send
%% account-related messages or time-sensitive messages such as one-time
%% passcodes, choose
%% Transactional. If you plan to send messages that
%% contain marketing material or other promotional content, choose
%% Promotional. This setting applies to your entire Amazon Web Services
%% account.
-spec delete_default_message_type(aws_client:aws_client(), delete_default_message_type_request()) ->
    {ok, delete_default_message_type_result(), tuple()} |
    {error, any()} |
    {error, delete_default_message_type_errors(), tuple()}.
delete_default_message_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_default_message_type(Client, Input, []).

-spec delete_default_message_type(aws_client:aws_client(), delete_default_message_type_request(), proplists:proplist()) ->
    {ok, delete_default_message_type_result(), tuple()} |
    {error, any()} |
    {error, delete_default_message_type_errors(), tuple()}.
delete_default_message_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDefaultMessageType">>, Input, Options).

%% @doc Deletes an existing default sender ID on a configuration set.
%%
%% A default sender ID is the identity that appears on recipients'
%% devices when they
%% receive SMS messages. Support for sender ID capabilities varies by country
%% or
%% region.
-spec delete_default_sender_id(aws_client:aws_client(), delete_default_sender_id_request()) ->
    {ok, delete_default_sender_id_result(), tuple()} |
    {error, any()} |
    {error, delete_default_sender_id_errors(), tuple()}.
delete_default_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_default_sender_id(Client, Input, []).

-spec delete_default_sender_id(aws_client:aws_client(), delete_default_sender_id_request(), proplists:proplist()) ->
    {ok, delete_default_sender_id_result(), tuple()} |
    {error, any()} |
    {error, delete_default_sender_id_errors(), tuple()}.
delete_default_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDefaultSenderId">>, Input, Options).

%% @doc Deletes an existing event destination.
%%
%% An event destination is a location where you send response information
%% about the
%% messages that you send. For example, when a message is delivered
%% successfully, you can
%% send information about that event to an Amazon CloudWatch destination, or
%% send
%% notifications to endpoints that are subscribed to an Amazon SNS topic.
-spec delete_event_destination(aws_client:aws_client(), delete_event_destination_request()) ->
    {ok, delete_event_destination_result(), tuple()} |
    {error, any()} |
    {error, delete_event_destination_errors(), tuple()}.
delete_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_destination(Client, Input, []).

-spec delete_event_destination(aws_client:aws_client(), delete_event_destination_request(), proplists:proplist()) ->
    {ok, delete_event_destination_result(), tuple()} |
    {error, any()} |
    {error, delete_event_destination_errors(), tuple()}.
delete_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventDestination">>, Input, Options).

%% @doc Deletes an existing keyword from an origination phone number or pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It
%% is also a specific word or phrase that an end user can send to your number
%% to elicit a
%% response, such as an informational message or a special offer. When your
%% number receives
%% a message that begins with a keyword, AWS End User Messaging SMS and Voice
%% responds with a customizable
%% message.
%%
%% Keywords &quot;HELP&quot; and &quot;STOP&quot; can't be deleted or
%% modified.
-spec delete_keyword(aws_client:aws_client(), delete_keyword_request()) ->
    {ok, delete_keyword_result(), tuple()} |
    {error, any()} |
    {error, delete_keyword_errors(), tuple()}.
delete_keyword(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_keyword(Client, Input, []).

-spec delete_keyword(aws_client:aws_client(), delete_keyword_request(), proplists:proplist()) ->
    {ok, delete_keyword_result(), tuple()} |
    {error, any()} |
    {error, delete_keyword_errors(), tuple()}.
delete_keyword(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyword">>, Input, Options).

%% @doc Deletes an account-level monthly spending limit override for sending
%% multimedia messages (MMS).
%%
%% Deleting a spend limit override will set the `EnforcedLimit' to equal
%% the
%% `MaxLimit', which is controlled by Amazon Web Services. For more
%% information on spend limits (quotas) see Quotas for Server Migration
%% Service:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
%% in the Server Migration Service User Guide.
-spec delete_media_message_spend_limit_override(aws_client:aws_client(), delete_media_message_spend_limit_override_request()) ->
    {ok, delete_media_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_media_message_spend_limit_override_errors(), tuple()}.
delete_media_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_media_message_spend_limit_override(Client, Input, []).

-spec delete_media_message_spend_limit_override(aws_client:aws_client(), delete_media_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, delete_media_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_media_message_spend_limit_override_errors(), tuple()}.
delete_media_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMediaMessageSpendLimitOverride">>, Input, Options).

%% @doc Deletes an existing opt-out list.
%%
%% All opted out phone numbers in the opt-out list are
%% deleted.
%%
%% If the specified opt-out list name doesn't exist or is in-use by an
%% origination phone
%% number or pool, an error is returned.
-spec delete_opt_out_list(aws_client:aws_client(), delete_opt_out_list_request()) ->
    {ok, delete_opt_out_list_result(), tuple()} |
    {error, any()} |
    {error, delete_opt_out_list_errors(), tuple()}.
delete_opt_out_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_opt_out_list(Client, Input, []).

-spec delete_opt_out_list(aws_client:aws_client(), delete_opt_out_list_request(), proplists:proplist()) ->
    {ok, delete_opt_out_list_result(), tuple()} |
    {error, any()} |
    {error, delete_opt_out_list_errors(), tuple()}.
delete_opt_out_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptOutList">>, Input, Options).

%% @doc Deletes an existing opted out destination phone number from the
%% specified opt-out
%% list.
%%
%% Each destination phone number can only be deleted once every 30 days.
%%
%% If the specified destination phone number doesn't exist or if the
%% opt-out list doesn't
%% exist, an error is returned.
-spec delete_opted_out_number(aws_client:aws_client(), delete_opted_out_number_request()) ->
    {ok, delete_opted_out_number_result(), tuple()} |
    {error, any()} |
    {error, delete_opted_out_number_errors(), tuple()}.
delete_opted_out_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_opted_out_number(Client, Input, []).

-spec delete_opted_out_number(aws_client:aws_client(), delete_opted_out_number_request(), proplists:proplist()) ->
    {ok, delete_opted_out_number_result(), tuple()} |
    {error, any()} |
    {error, delete_opted_out_number_errors(), tuple()}.
delete_opted_out_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptedOutNumber">>, Input, Options).

%% @doc Deletes an existing pool.
%%
%% Deleting a pool disassociates all origination identities
%% from that pool.
%%
%% If the pool status isn't active or if deletion protection is enabled,
%% an error is
%% returned.
%%
%% A pool is a collection of phone numbers and SenderIds. A pool can include
%% one or more
%% phone numbers and SenderIds that are associated with your Amazon Web
%% Services
%% account.
-spec delete_pool(aws_client:aws_client(), delete_pool_request()) ->
    {ok, delete_pool_result(), tuple()} |
    {error, any()} |
    {error, delete_pool_errors(), tuple()}.
delete_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pool(Client, Input, []).

-spec delete_pool(aws_client:aws_client(), delete_pool_request(), proplists:proplist()) ->
    {ok, delete_pool_result(), tuple()} |
    {error, any()} |
    {error, delete_pool_errors(), tuple()}.
delete_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePool">>, Input, Options).

%% @doc Permanently delete the protect configuration.
%%
%% The protect configuration must have deletion protection disabled and must
%% not be associated as the account default protect configuration or
%% associated with a configuration set.
-spec delete_protect_configuration(aws_client:aws_client(), delete_protect_configuration_request()) ->
    {ok, delete_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_protect_configuration_errors(), tuple()}.
delete_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protect_configuration(Client, Input, []).

-spec delete_protect_configuration(aws_client:aws_client(), delete_protect_configuration_request(), proplists:proplist()) ->
    {ok, delete_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_protect_configuration_errors(), tuple()}.
delete_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtectConfiguration">>, Input, Options).

%% @doc Permanently delete the protect configuration rule set number
%% override.
-spec delete_protect_configuration_rule_set_number_override(aws_client:aws_client(), delete_protect_configuration_rule_set_number_override_request()) ->
    {ok, delete_protect_configuration_rule_set_number_override_result(), tuple()} |
    {error, any()} |
    {error, delete_protect_configuration_rule_set_number_override_errors(), tuple()}.
delete_protect_configuration_rule_set_number_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protect_configuration_rule_set_number_override(Client, Input, []).

-spec delete_protect_configuration_rule_set_number_override(aws_client:aws_client(), delete_protect_configuration_rule_set_number_override_request(), proplists:proplist()) ->
    {ok, delete_protect_configuration_rule_set_number_override_result(), tuple()} |
    {error, any()} |
    {error, delete_protect_configuration_rule_set_number_override_errors(), tuple()}.
delete_protect_configuration_rule_set_number_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtectConfigurationRuleSetNumberOverride">>, Input, Options).

%% @doc Permanently delete an existing registration from your account.
-spec delete_registration(aws_client:aws_client(), delete_registration_request()) ->
    {ok, delete_registration_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_errors(), tuple()}.
delete_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registration(Client, Input, []).

-spec delete_registration(aws_client:aws_client(), delete_registration_request(), proplists:proplist()) ->
    {ok, delete_registration_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_errors(), tuple()}.
delete_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistration">>, Input, Options).

%% @doc Permanently delete the specified registration attachment.
-spec delete_registration_attachment(aws_client:aws_client(), delete_registration_attachment_request()) ->
    {ok, delete_registration_attachment_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_attachment_errors(), tuple()}.
delete_registration_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registration_attachment(Client, Input, []).

-spec delete_registration_attachment(aws_client:aws_client(), delete_registration_attachment_request(), proplists:proplist()) ->
    {ok, delete_registration_attachment_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_attachment_errors(), tuple()}.
delete_registration_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistrationAttachment">>, Input, Options).

%% @doc Delete the value in a registration form field.
-spec delete_registration_field_value(aws_client:aws_client(), delete_registration_field_value_request()) ->
    {ok, delete_registration_field_value_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_field_value_errors(), tuple()}.
delete_registration_field_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registration_field_value(Client, Input, []).

-spec delete_registration_field_value(aws_client:aws_client(), delete_registration_field_value_request(), proplists:proplist()) ->
    {ok, delete_registration_field_value_result(), tuple()} |
    {error, any()} |
    {error, delete_registration_field_value_errors(), tuple()}.
delete_registration_field_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistrationFieldValue">>, Input, Options).

%% @doc Deletes the resource-based policy document attached to the AWS End
%% User Messaging SMS and Voice resource.
%%
%% A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes an account-level monthly spending limit override for sending
%% text messages.
%%
%% Deleting a spend limit override will set the `EnforcedLimit' to equal
%% the
%% `MaxLimit', which is controlled by Amazon Web Services. For more
%% information on spend limits (quotas) see Quotas :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
%% in the AWS End User Messaging SMS User Guide.
-spec delete_text_message_spend_limit_override(aws_client:aws_client(), delete_text_message_spend_limit_override_request()) ->
    {ok, delete_text_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_text_message_spend_limit_override_errors(), tuple()}.
delete_text_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_text_message_spend_limit_override(Client, Input, []).

-spec delete_text_message_spend_limit_override(aws_client:aws_client(), delete_text_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, delete_text_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_text_message_spend_limit_override_errors(), tuple()}.
delete_text_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTextMessageSpendLimitOverride">>, Input, Options).

%% @doc Delete a verified destination phone number.
-spec delete_verified_destination_number(aws_client:aws_client(), delete_verified_destination_number_request()) ->
    {ok, delete_verified_destination_number_result(), tuple()} |
    {error, any()} |
    {error, delete_verified_destination_number_errors(), tuple()}.
delete_verified_destination_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_destination_number(Client, Input, []).

-spec delete_verified_destination_number(aws_client:aws_client(), delete_verified_destination_number_request(), proplists:proplist()) ->
    {ok, delete_verified_destination_number_result(), tuple()} |
    {error, any()} |
    {error, delete_verified_destination_number_errors(), tuple()}.
delete_verified_destination_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedDestinationNumber">>, Input, Options).

%% @doc Deletes an account level monthly spend limit override for sending
%% voice messages.
%%
%% Deleting a spend limit override sets the `EnforcedLimit' equal to the
%% `MaxLimit', which is controlled by Amazon Web Services. For more
%% information on spending limits (quotas) see Quotas :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
%% in the AWS End User Messaging SMS User Guide.
-spec delete_voice_message_spend_limit_override(aws_client:aws_client(), delete_voice_message_spend_limit_override_request()) ->
    {ok, delete_voice_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_voice_message_spend_limit_override_errors(), tuple()}.
delete_voice_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_voice_message_spend_limit_override(Client, Input, []).

-spec delete_voice_message_spend_limit_override(aws_client:aws_client(), delete_voice_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, delete_voice_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, delete_voice_message_spend_limit_override_errors(), tuple()}.
delete_voice_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVoiceMessageSpendLimitOverride">>, Input, Options).

%% @doc Describes attributes of your Amazon Web Services account.
%%
%% The supported account
%% attributes include account tier, which indicates whether your account is
%% in the sandbox
%% or production environment. When you're ready to move your account out
%% of the sandbox,
%% create an Amazon Web Services Support case for a service limit increase
%% request.
%%
%% New accounts are placed into an SMS or voice sandbox. The sandbox
%% protects both Amazon Web Services end recipients and SMS or voice
%% recipients from fraud
%% and abuse.
-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_request()) ->
    {ok, describe_account_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_account_attributes_errors(), tuple()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_request(), proplists:proplist()) ->
    {ok, describe_account_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_account_attributes_errors(), tuple()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes the current AWS End User Messaging SMS and Voice SMS Voice
%% V2 resource quotas for your
%% account.
%%
%% The description for a quota includes the quota name, current usage toward
%% that
%% quota, and the quota's maximum value.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% quotas on
%% the maximum number of configuration sets, opt-out lists, phone numbers,
%% and pools that
%% you can create in a given Region. For more information see Quotas :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
%% in the AWS End User Messaging SMS User Guide.
-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_request()) ->
    {ok, describe_account_limits_result(), tuple()} |
    {error, any()} |
    {error, describe_account_limits_errors(), tuple()}.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).

-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_request(), proplists:proplist()) ->
    {ok, describe_account_limits_result(), tuple()} |
    {error, any()} |
    {error, describe_account_limits_errors(), tuple()}.
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the specified configuration sets or all in your account.
%%
%% If you specify configuration set names, the output includes information
%% for only the
%% specified configuration sets. If you specify filters, the output includes
%% information
%% for only those configuration sets that meet the filter criteria. If you
%% don't specify
%% configuration set names or filters, the output includes information for
%% all
%% configuration sets.
%%
%% If you specify a configuration set name that isn't valid, an error is
%% returned.
-spec describe_configuration_sets(aws_client:aws_client(), describe_configuration_sets_request()) ->
    {ok, describe_configuration_sets_result(), tuple()} |
    {error, any()} |
    {error, describe_configuration_sets_errors(), tuple()}.
describe_configuration_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_sets(Client, Input, []).

-spec describe_configuration_sets(aws_client:aws_client(), describe_configuration_sets_request(), proplists:proplist()) ->
    {ok, describe_configuration_sets_result(), tuple()} |
    {error, any()} |
    {error, describe_configuration_sets_errors(), tuple()}.
describe_configuration_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSets">>, Input, Options).

%% @doc Describes the specified keywords or all keywords on your origination
%% phone number or
%% pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It
%% is also a specific word or phrase that an end user can send to your number
%% to elicit a
%% response, such as an informational message or a special offer. When your
%% number receives
%% a message that begins with a keyword, AWS End User Messaging SMS and Voice
%% responds with a customizable
%% message.
%%
%% If you specify a keyword that isn't valid, an error is returned.
-spec describe_keywords(aws_client:aws_client(), describe_keywords_request()) ->
    {ok, describe_keywords_result(), tuple()} |
    {error, any()} |
    {error, describe_keywords_errors(), tuple()}.
describe_keywords(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_keywords(Client, Input, []).

-spec describe_keywords(aws_client:aws_client(), describe_keywords_request(), proplists:proplist()) ->
    {ok, describe_keywords_result(), tuple()} |
    {error, any()} |
    {error, describe_keywords_errors(), tuple()}.
describe_keywords(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKeywords">>, Input, Options).

%% @doc Describes the specified opt-out list or all opt-out lists in your
%% account.
%%
%% If you specify opt-out list names, the output includes information for
%% only the
%% specified opt-out lists. Opt-out lists include only those that meet the
%% filter criteria.
%% If you don't specify opt-out list names or filters, the output
%% includes information for
%% all opt-out lists.
%%
%% If you specify an opt-out list name that isn't valid, an error is
%% returned.
-spec describe_opt_out_lists(aws_client:aws_client(), describe_opt_out_lists_request()) ->
    {ok, describe_opt_out_lists_result(), tuple()} |
    {error, any()} |
    {error, describe_opt_out_lists_errors(), tuple()}.
describe_opt_out_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_opt_out_lists(Client, Input, []).

-spec describe_opt_out_lists(aws_client:aws_client(), describe_opt_out_lists_request(), proplists:proplist()) ->
    {ok, describe_opt_out_lists_result(), tuple()} |
    {error, any()} |
    {error, describe_opt_out_lists_errors(), tuple()}.
describe_opt_out_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptOutLists">>, Input, Options).

%% @doc Describes the specified opted out destination numbers or all opted
%% out destination
%% numbers in an opt-out list.
%%
%% If you specify opted out numbers, the output includes information for only
%% the
%% specified opted out numbers. If you specify filters, the output includes
%% information for
%% only those opted out numbers that meet the filter criteria. If you
%% don't specify opted
%% out numbers or filters, the output includes information for all opted out
%% destination
%% numbers in your opt-out list.
%%
%% If you specify an opted out number that isn't valid, an exception is
%% returned.
-spec describe_opted_out_numbers(aws_client:aws_client(), describe_opted_out_numbers_request()) ->
    {ok, describe_opted_out_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_opted_out_numbers_errors(), tuple()}.
describe_opted_out_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_opted_out_numbers(Client, Input, []).

-spec describe_opted_out_numbers(aws_client:aws_client(), describe_opted_out_numbers_request(), proplists:proplist()) ->
    {ok, describe_opted_out_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_opted_out_numbers_errors(), tuple()}.
describe_opted_out_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptedOutNumbers">>, Input, Options).

%% @doc Describes the specified origination phone number, or all the phone
%% numbers in your
%% account.
%%
%% If you specify phone number IDs, the output includes information for only
%% the
%% specified phone numbers. If you specify filters, the output includes
%% information for
%% only those phone numbers that meet the filter criteria. If you don't
%% specify phone
%% number IDs or filters, the output includes information for all phone
%% numbers.
%%
%% If you specify a phone number ID that isn't valid, an error is
%% returned.
-spec describe_phone_numbers(aws_client:aws_client(), describe_phone_numbers_request()) ->
    {ok, describe_phone_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_phone_numbers_errors(), tuple()}.
describe_phone_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_phone_numbers(Client, Input, []).

-spec describe_phone_numbers(aws_client:aws_client(), describe_phone_numbers_request(), proplists:proplist()) ->
    {ok, describe_phone_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_phone_numbers_errors(), tuple()}.
describe_phone_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePhoneNumbers">>, Input, Options).

%% @doc Retrieves the specified pools or all pools associated with your
%% Amazon Web Services
%% account.
%%
%% If you specify pool IDs, the output includes information for only the
%% specified pools.
%% If you specify filters, the output includes information for only those
%% pools that meet
%% the filter criteria. If you don't specify pool IDs or filters, the
%% output includes
%% information for all pools.
%%
%% If you specify a pool ID that isn't valid, an error is returned.
%%
%% A pool is a collection of phone numbers and SenderIds. A pool can include
%% one or more
%% phone numbers and SenderIds that are associated with your Amazon Web
%% Services
%% account.
-spec describe_pools(aws_client:aws_client(), describe_pools_request()) ->
    {ok, describe_pools_result(), tuple()} |
    {error, any()} |
    {error, describe_pools_errors(), tuple()}.
describe_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pools(Client, Input, []).

-spec describe_pools(aws_client:aws_client(), describe_pools_request(), proplists:proplist()) ->
    {ok, describe_pools_result(), tuple()} |
    {error, any()} |
    {error, describe_pools_errors(), tuple()}.
describe_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePools">>, Input, Options).

%% @doc Retrieves the protect configurations that match any of filters.
%%
%% If a filter isn’t provided then all protect configurations are returned.
-spec describe_protect_configurations(aws_client:aws_client(), describe_protect_configurations_request()) ->
    {ok, describe_protect_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_protect_configurations_errors(), tuple()}.
describe_protect_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_protect_configurations(Client, Input, []).

-spec describe_protect_configurations(aws_client:aws_client(), describe_protect_configurations_request(), proplists:proplist()) ->
    {ok, describe_protect_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_protect_configurations_errors(), tuple()}.
describe_protect_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProtectConfigurations">>, Input, Options).

%% @doc Retrieves the specified registration attachments or all registration
%% attachments associated with your Amazon Web Services account.
-spec describe_registration_attachments(aws_client:aws_client(), describe_registration_attachments_request()) ->
    {ok, describe_registration_attachments_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_attachments_errors(), tuple()}.
describe_registration_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_attachments(Client, Input, []).

-spec describe_registration_attachments(aws_client:aws_client(), describe_registration_attachments_request(), proplists:proplist()) ->
    {ok, describe_registration_attachments_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_attachments_errors(), tuple()}.
describe_registration_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationAttachments">>, Input, Options).

%% @doc Retrieves the specified registration type field definitions.
%%
%% You can use DescribeRegistrationFieldDefinitions to view the requirements
%% for creating, filling out, and submitting each registration type.
-spec describe_registration_field_definitions(aws_client:aws_client(), describe_registration_field_definitions_request()) ->
    {ok, describe_registration_field_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_field_definitions_errors(), tuple()}.
describe_registration_field_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_field_definitions(Client, Input, []).

-spec describe_registration_field_definitions(aws_client:aws_client(), describe_registration_field_definitions_request(), proplists:proplist()) ->
    {ok, describe_registration_field_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_field_definitions_errors(), tuple()}.
describe_registration_field_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationFieldDefinitions">>, Input, Options).

%% @doc Retrieves the specified registration field values.
-spec describe_registration_field_values(aws_client:aws_client(), describe_registration_field_values_request()) ->
    {ok, describe_registration_field_values_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_field_values_errors(), tuple()}.
describe_registration_field_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_field_values(Client, Input, []).

-spec describe_registration_field_values(aws_client:aws_client(), describe_registration_field_values_request(), proplists:proplist()) ->
    {ok, describe_registration_field_values_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_field_values_errors(), tuple()}.
describe_registration_field_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationFieldValues">>, Input, Options).

%% @doc Retrieves the specified registration section definitions.
%%
%% You can use DescribeRegistrationSectionDefinitions to view the
%% requirements for creating, filling out, and submitting each registration
%% type.
-spec describe_registration_section_definitions(aws_client:aws_client(), describe_registration_section_definitions_request()) ->
    {ok, describe_registration_section_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_section_definitions_errors(), tuple()}.
describe_registration_section_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_section_definitions(Client, Input, []).

-spec describe_registration_section_definitions(aws_client:aws_client(), describe_registration_section_definitions_request(), proplists:proplist()) ->
    {ok, describe_registration_section_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_section_definitions_errors(), tuple()}.
describe_registration_section_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationSectionDefinitions">>, Input, Options).

%% @doc Retrieves the specified registration type definitions.
%%
%% You can use DescribeRegistrationTypeDefinitions to view the requirements
%% for creating, filling out, and submitting each registration type.
-spec describe_registration_type_definitions(aws_client:aws_client(), describe_registration_type_definitions_request()) ->
    {ok, describe_registration_type_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_type_definitions_errors(), tuple()}.
describe_registration_type_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_type_definitions(Client, Input, []).

-spec describe_registration_type_definitions(aws_client:aws_client(), describe_registration_type_definitions_request(), proplists:proplist()) ->
    {ok, describe_registration_type_definitions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_type_definitions_errors(), tuple()}.
describe_registration_type_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationTypeDefinitions">>, Input, Options).

%% @doc Retrieves the specified registration version.
-spec describe_registration_versions(aws_client:aws_client(), describe_registration_versions_request()) ->
    {ok, describe_registration_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_versions_errors(), tuple()}.
describe_registration_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registration_versions(Client, Input, []).

-spec describe_registration_versions(aws_client:aws_client(), describe_registration_versions_request(), proplists:proplist()) ->
    {ok, describe_registration_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_registration_versions_errors(), tuple()}.
describe_registration_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrationVersions">>, Input, Options).

%% @doc Retrieves the specified registrations.
-spec describe_registrations(aws_client:aws_client(), describe_registrations_request()) ->
    {ok, describe_registrations_result(), tuple()} |
    {error, any()} |
    {error, describe_registrations_errors(), tuple()}.
describe_registrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registrations(Client, Input, []).

-spec describe_registrations(aws_client:aws_client(), describe_registrations_request(), proplists:proplist()) ->
    {ok, describe_registrations_result(), tuple()} |
    {error, any()} |
    {error, describe_registrations_errors(), tuple()}.
describe_registrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistrations">>, Input, Options).

%% @doc Describes the specified SenderIds or all SenderIds associated with
%% your Amazon Web Services account.
%%
%% If you specify SenderIds, the output includes information for only the
%% specified
%% SenderIds. If you specify filters, the output includes information for
%% only those
%% SenderIds that meet the filter criteria. If you don't specify
%% SenderIds or filters, the
%% output includes information for all SenderIds.
%%
%% f you specify a sender ID that isn't valid, an error is returned.
-spec describe_sender_ids(aws_client:aws_client(), describe_sender_ids_request()) ->
    {ok, describe_sender_ids_result(), tuple()} |
    {error, any()} |
    {error, describe_sender_ids_errors(), tuple()}.
describe_sender_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sender_ids(Client, Input, []).

-spec describe_sender_ids(aws_client:aws_client(), describe_sender_ids_request(), proplists:proplist()) ->
    {ok, describe_sender_ids_result(), tuple()} |
    {error, any()} |
    {error, describe_sender_ids_errors(), tuple()}.
describe_sender_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSenderIds">>, Input, Options).

%% @doc Describes the current monthly spend limits for sending voice and
%% text messages.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% monthly
%% spend limit in a given Region. For more information on increasing your
%% monthly spend
%% limit, see
%% Requesting increases to your monthly SMS, MMS, or Voice spending quota
%% :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html
%% in the AWS End User Messaging SMS User Guide.
-spec describe_spend_limits(aws_client:aws_client(), describe_spend_limits_request()) ->
    {ok, describe_spend_limits_result(), tuple()} |
    {error, any()} |
    {error, describe_spend_limits_errors(), tuple()}.
describe_spend_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spend_limits(Client, Input, []).

-spec describe_spend_limits(aws_client:aws_client(), describe_spend_limits_request(), proplists:proplist()) ->
    {ok, describe_spend_limits_result(), tuple()} |
    {error, any()} |
    {error, describe_spend_limits_errors(), tuple()}.
describe_spend_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpendLimits">>, Input, Options).

%% @doc Retrieves the specified verified destination numbers.
-spec describe_verified_destination_numbers(aws_client:aws_client(), describe_verified_destination_numbers_request()) ->
    {ok, describe_verified_destination_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_verified_destination_numbers_errors(), tuple()}.
describe_verified_destination_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_destination_numbers(Client, Input, []).

-spec describe_verified_destination_numbers(aws_client:aws_client(), describe_verified_destination_numbers_request(), proplists:proplist()) ->
    {ok, describe_verified_destination_numbers_result(), tuple()} |
    {error, any()} |
    {error, describe_verified_destination_numbers_errors(), tuple()}.
describe_verified_destination_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedDestinationNumbers">>, Input, Options).

%% @doc Removes the specified origination identity from an existing pool.
%%
%% If the origination identity isn't associated with the specified pool,
%% an error is
%% returned.
-spec disassociate_origination_identity(aws_client:aws_client(), disassociate_origination_identity_request()) ->
    {ok, disassociate_origination_identity_result(), tuple()} |
    {error, any()} |
    {error, disassociate_origination_identity_errors(), tuple()}.
disassociate_origination_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_origination_identity(Client, Input, []).

-spec disassociate_origination_identity(aws_client:aws_client(), disassociate_origination_identity_request(), proplists:proplist()) ->
    {ok, disassociate_origination_identity_result(), tuple()} |
    {error, any()} |
    {error, disassociate_origination_identity_errors(), tuple()}.
disassociate_origination_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateOriginationIdentity">>, Input, Options).

%% @doc Disassociate a protect configuration from a configuration set.
-spec disassociate_protect_configuration(aws_client:aws_client(), disassociate_protect_configuration_request()) ->
    {ok, disassociate_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, disassociate_protect_configuration_errors(), tuple()}.
disassociate_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_protect_configuration(Client, Input, []).

-spec disassociate_protect_configuration(aws_client:aws_client(), disassociate_protect_configuration_request(), proplists:proplist()) ->
    {ok, disassociate_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, disassociate_protect_configuration_errors(), tuple()}.
disassociate_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateProtectConfiguration">>, Input, Options).

%% @doc Discard the current version of the registration.
-spec discard_registration_version(aws_client:aws_client(), discard_registration_version_request()) ->
    {ok, discard_registration_version_result(), tuple()} |
    {error, any()} |
    {error, discard_registration_version_errors(), tuple()}.
discard_registration_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    discard_registration_version(Client, Input, []).

-spec discard_registration_version(aws_client:aws_client(), discard_registration_version_request(), proplists:proplist()) ->
    {ok, discard_registration_version_result(), tuple()} |
    {error, any()} |
    {error, discard_registration_version_errors(), tuple()}.
discard_registration_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscardRegistrationVersion">>, Input, Options).

%% @doc Retrieve the CountryRuleSet for the specified NumberCapability from a
%% protect configuration.
-spec get_protect_configuration_country_rule_set(aws_client:aws_client(), get_protect_configuration_country_rule_set_request()) ->
    {ok, get_protect_configuration_country_rule_set_result(), tuple()} |
    {error, any()} |
    {error, get_protect_configuration_country_rule_set_errors(), tuple()}.
get_protect_configuration_country_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protect_configuration_country_rule_set(Client, Input, []).

-spec get_protect_configuration_country_rule_set(aws_client:aws_client(), get_protect_configuration_country_rule_set_request(), proplists:proplist()) ->
    {ok, get_protect_configuration_country_rule_set_result(), tuple()} |
    {error, any()} |
    {error, get_protect_configuration_country_rule_set_errors(), tuple()}.
get_protect_configuration_country_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtectConfigurationCountryRuleSet">>, Input, Options).

%% @doc Retrieves the JSON text of the resource-based policy document
%% attached to the AWS End User Messaging SMS and Voice resource.
%%
%% A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Lists all associated origination identities in your pool.
%%
%% If you specify filters, the output includes information for only those
%% origination
%% identities that meet the filter criteria.
-spec list_pool_origination_identities(aws_client:aws_client(), list_pool_origination_identities_request()) ->
    {ok, list_pool_origination_identities_result(), tuple()} |
    {error, any()} |
    {error, list_pool_origination_identities_errors(), tuple()}.
list_pool_origination_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pool_origination_identities(Client, Input, []).

-spec list_pool_origination_identities(aws_client:aws_client(), list_pool_origination_identities_request(), proplists:proplist()) ->
    {ok, list_pool_origination_identities_result(), tuple()} |
    {error, any()} |
    {error, list_pool_origination_identities_errors(), tuple()}.
list_pool_origination_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoolOriginationIdentities">>, Input, Options).

%% @doc Retrieve all of the protect configuration rule set number overrides
%% that match the filters.
-spec list_protect_configuration_rule_set_number_overrides(aws_client:aws_client(), list_protect_configuration_rule_set_number_overrides_request()) ->
    {ok, list_protect_configuration_rule_set_number_overrides_result(), tuple()} |
    {error, any()} |
    {error, list_protect_configuration_rule_set_number_overrides_errors(), tuple()}.
list_protect_configuration_rule_set_number_overrides(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protect_configuration_rule_set_number_overrides(Client, Input, []).

-spec list_protect_configuration_rule_set_number_overrides(aws_client:aws_client(), list_protect_configuration_rule_set_number_overrides_request(), proplists:proplist()) ->
    {ok, list_protect_configuration_rule_set_number_overrides_result(), tuple()} |
    {error, any()} |
    {error, list_protect_configuration_rule_set_number_overrides_errors(), tuple()}.
list_protect_configuration_rule_set_number_overrides(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtectConfigurationRuleSetNumberOverrides">>, Input, Options).

%% @doc Retrieve all of the origination identities that are associated with a
%% registration.
-spec list_registration_associations(aws_client:aws_client(), list_registration_associations_request()) ->
    {ok, list_registration_associations_result(), tuple()} |
    {error, any()} |
    {error, list_registration_associations_errors(), tuple()}.
list_registration_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_registration_associations(Client, Input, []).

-spec list_registration_associations(aws_client:aws_client(), list_registration_associations_request(), proplists:proplist()) ->
    {ok, list_registration_associations_result(), tuple()} |
    {error, any()} |
    {error, list_registration_associations_errors(), tuple()}.
list_registration_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegistrationAssociations">>, Input, Options).

%% @doc List all tags associated with a resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates a keyword configuration on an origination phone
%% number or
%% pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It
%% is also a specific word or phrase that an end user can send to your number
%% to elicit a
%% response, such as an informational message or a special offer. When your
%% number receives
%% a message that begins with a keyword, AWS End User Messaging SMS and Voice
%% responds with a customizable
%% message.
%%
%% If you specify a keyword that isn't valid, an error is returned.
-spec put_keyword(aws_client:aws_client(), put_keyword_request()) ->
    {ok, put_keyword_result(), tuple()} |
    {error, any()} |
    {error, put_keyword_errors(), tuple()}.
put_keyword(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_keyword(Client, Input, []).

-spec put_keyword(aws_client:aws_client(), put_keyword_request(), proplists:proplist()) ->
    {ok, put_keyword_result(), tuple()} |
    {error, any()} |
    {error, put_keyword_errors(), tuple()}.
put_keyword(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKeyword">>, Input, Options).

%% @doc Set the MessageFeedbackStatus as `RECEIVED' or `FAILED' for
%% the
%% passed in MessageId.
%%
%% If you use message feedback then you must update message feedback record.
%% When you receive a signal that a user has received the message you must
%% use
%% `PutMessageFeedback' to set the message feedback record as
%% `RECEIVED'; Otherwise, an hour after the message feedback record is
%% set
%% to `FAILED'.
-spec put_message_feedback(aws_client:aws_client(), put_message_feedback_request()) ->
    {ok, put_message_feedback_result(), tuple()} |
    {error, any()} |
    {error, put_message_feedback_errors(), tuple()}.
put_message_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_message_feedback(Client, Input, []).

-spec put_message_feedback(aws_client:aws_client(), put_message_feedback_request(), proplists:proplist()) ->
    {ok, put_message_feedback_result(), tuple()} |
    {error, any()} |
    {error, put_message_feedback_errors(), tuple()}.
put_message_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMessageFeedback">>, Input, Options).

%% @doc Creates an opted out destination phone number in the opt-out list.
%%
%% If the destination phone number isn't valid or if the specified
%% opt-out list doesn't
%% exist, an error is returned.
-spec put_opted_out_number(aws_client:aws_client(), put_opted_out_number_request()) ->
    {ok, put_opted_out_number_result(), tuple()} |
    {error, any()} |
    {error, put_opted_out_number_errors(), tuple()}.
put_opted_out_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_opted_out_number(Client, Input, []).

-spec put_opted_out_number(aws_client:aws_client(), put_opted_out_number_request(), proplists:proplist()) ->
    {ok, put_opted_out_number_result(), tuple()} |
    {error, any()} |
    {error, put_opted_out_number_errors(), tuple()}.
put_opted_out_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOptedOutNumber">>, Input, Options).

%% @doc Create or update a RuleSetNumberOverride and associate it with a
%% protect configuration.
-spec put_protect_configuration_rule_set_number_override(aws_client:aws_client(), put_protect_configuration_rule_set_number_override_request()) ->
    {ok, put_protect_configuration_rule_set_number_override_result(), tuple()} |
    {error, any()} |
    {error, put_protect_configuration_rule_set_number_override_errors(), tuple()}.
put_protect_configuration_rule_set_number_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_protect_configuration_rule_set_number_override(Client, Input, []).

-spec put_protect_configuration_rule_set_number_override(aws_client:aws_client(), put_protect_configuration_rule_set_number_override_request(), proplists:proplist()) ->
    {ok, put_protect_configuration_rule_set_number_override_result(), tuple()} |
    {error, any()} |
    {error, put_protect_configuration_rule_set_number_override_errors(), tuple()}.
put_protect_configuration_rule_set_number_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProtectConfigurationRuleSetNumberOverride">>, Input, Options).

%% @doc Creates or updates a field value for a registration.
-spec put_registration_field_value(aws_client:aws_client(), put_registration_field_value_request()) ->
    {ok, put_registration_field_value_result(), tuple()} |
    {error, any()} |
    {error, put_registration_field_value_errors(), tuple()}.
put_registration_field_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_registration_field_value(Client, Input, []).

-spec put_registration_field_value(aws_client:aws_client(), put_registration_field_value_request(), proplists:proplist()) ->
    {ok, put_registration_field_value_result(), tuple()} |
    {error, any()} |
    {error, put_registration_field_value_errors(), tuple()}.
put_registration_field_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRegistrationFieldValue">>, Input, Options).

%% @doc Attaches a resource-based policy to a AWS End User Messaging SMS and
%% Voice resource(phone number, sender Id, phone poll, or opt-out list) that
%% is used for
%% sharing the resource.
%%
%% A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number.
%% For more information about
%% resource-based policies, see Working with shared resources:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/shared-resources.html
%% in the AWS End User Messaging SMS User Guide.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Releases an existing origination phone number in your account.
%%
%% Once released, a phone
%% number is no longer available for sending messages.
%%
%% If the origination phone number has deletion protection enabled or is
%% associated with
%% a pool, an error is returned.
-spec release_phone_number(aws_client:aws_client(), release_phone_number_request()) ->
    {ok, release_phone_number_result(), tuple()} |
    {error, any()} |
    {error, release_phone_number_errors(), tuple()}.
release_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_phone_number(Client, Input, []).

-spec release_phone_number(aws_client:aws_client(), release_phone_number_request(), proplists:proplist()) ->
    {ok, release_phone_number_result(), tuple()} |
    {error, any()} |
    {error, release_phone_number_errors(), tuple()}.
release_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleasePhoneNumber">>, Input, Options).

%% @doc Releases an existing sender ID in your account.
-spec release_sender_id(aws_client:aws_client(), release_sender_id_request()) ->
    {ok, release_sender_id_result(), tuple()} |
    {error, any()} |
    {error, release_sender_id_errors(), tuple()}.
release_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_sender_id(Client, Input, []).

-spec release_sender_id(aws_client:aws_client(), release_sender_id_request(), proplists:proplist()) ->
    {ok, release_sender_id_result(), tuple()} |
    {error, any()} |
    {error, release_sender_id_errors(), tuple()}.
release_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseSenderId">>, Input, Options).

%% @doc Request an origination phone number for use in your account.
%%
%% For more information on
%% phone number request see Request a phone number:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-request.html
%% in the AWS End User Messaging SMS User Guide.
-spec request_phone_number(aws_client:aws_client(), request_phone_number_request()) ->
    {ok, request_phone_number_result(), tuple()} |
    {error, any()} |
    {error, request_phone_number_errors(), tuple()}.
request_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_phone_number(Client, Input, []).

-spec request_phone_number(aws_client:aws_client(), request_phone_number_request(), proplists:proplist()) ->
    {ok, request_phone_number_result(), tuple()} |
    {error, any()} |
    {error, request_phone_number_errors(), tuple()}.
request_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestPhoneNumber">>, Input, Options).

%% @doc Request a new sender ID that doesn't require registration.
-spec request_sender_id(aws_client:aws_client(), request_sender_id_request()) ->
    {ok, request_sender_id_result(), tuple()} |
    {error, any()} |
    {error, request_sender_id_errors(), tuple()}.
request_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_sender_id(Client, Input, []).

-spec request_sender_id(aws_client:aws_client(), request_sender_id_request(), proplists:proplist()) ->
    {ok, request_sender_id_result(), tuple()} |
    {error, any()} |
    {error, request_sender_id_errors(), tuple()}.
request_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestSenderId">>, Input, Options).

%% @doc Before you can send test messages to a verified destination phone
%% number you need to
%% opt-in the verified destination phone number.
%%
%% Creates a new text message with a
%% verification code and send it to a verified destination phone number. Once
%% you have the verification code use `VerifyDestinationNumber' to opt-in
%% the verified destination phone number to receive messages.
-spec send_destination_number_verification_code(aws_client:aws_client(), send_destination_number_verification_code_request()) ->
    {ok, send_destination_number_verification_code_result(), tuple()} |
    {error, any()} |
    {error, send_destination_number_verification_code_errors(), tuple()}.
send_destination_number_verification_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_destination_number_verification_code(Client, Input, []).

-spec send_destination_number_verification_code(aws_client:aws_client(), send_destination_number_verification_code_request(), proplists:proplist()) ->
    {ok, send_destination_number_verification_code_result(), tuple()} |
    {error, any()} |
    {error, send_destination_number_verification_code_errors(), tuple()}.
send_destination_number_verification_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendDestinationNumberVerificationCode">>, Input, Options).

%% @doc Creates a new multimedia message (MMS) and sends it to a
%% recipient's phone number.
-spec send_media_message(aws_client:aws_client(), send_media_message_request()) ->
    {ok, send_media_message_result(), tuple()} |
    {error, any()} |
    {error, send_media_message_errors(), tuple()}.
send_media_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_media_message(Client, Input, []).

-spec send_media_message(aws_client:aws_client(), send_media_message_request(), proplists:proplist()) ->
    {ok, send_media_message_result(), tuple()} |
    {error, any()} |
    {error, send_media_message_errors(), tuple()}.
send_media_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendMediaMessage">>, Input, Options).

%% @doc Creates a new text message and sends it to a recipient's phone
%% number.
%%
%% SendTextMessage only sends an SMS message to one recipient each time it is
%% invoked.
%%
%% SMS throughput limits are measured in Message Parts per Second (MPS). Your
%% MPS limit
%% depends on the destination country of your messages, as well as the type
%% of phone number
%% (origination number) that you use to send the message. For more
%% information about MPS, see Message Parts per
%% Second (MPS) limits:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html
%% in the AWS End User Messaging SMS User Guide.
-spec send_text_message(aws_client:aws_client(), send_text_message_request()) ->
    {ok, send_text_message_result(), tuple()} |
    {error, any()} |
    {error, send_text_message_errors(), tuple()}.
send_text_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_text_message(Client, Input, []).

-spec send_text_message(aws_client:aws_client(), send_text_message_request(), proplists:proplist()) ->
    {ok, send_text_message_result(), tuple()} |
    {error, any()} |
    {error, send_text_message_errors(), tuple()}.
send_text_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTextMessage">>, Input, Options).

%% @doc Allows you to send a request that sends a voice message.
%%
%% This operation uses Amazon Polly: http://aws.amazon.com/polly/ to
%% convert a text script into a voice message.
-spec send_voice_message(aws_client:aws_client(), send_voice_message_request()) ->
    {ok, send_voice_message_result(), tuple()} |
    {error, any()} |
    {error, send_voice_message_errors(), tuple()}.
send_voice_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_voice_message(Client, Input, []).

-spec send_voice_message(aws_client:aws_client(), send_voice_message_request(), proplists:proplist()) ->
    {ok, send_voice_message_result(), tuple()} |
    {error, any()} |
    {error, send_voice_message_errors(), tuple()}.
send_voice_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendVoiceMessage">>, Input, Options).

%% @doc Set a protect configuration as your account default.
%%
%% You can only have one account
%% default protect configuration at a time. The current account default
%% protect configuration is replaced with the provided protect configuration.
-spec set_account_default_protect_configuration(aws_client:aws_client(), set_account_default_protect_configuration_request()) ->
    {ok, set_account_default_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, set_account_default_protect_configuration_errors(), tuple()}.
set_account_default_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_account_default_protect_configuration(Client, Input, []).

-spec set_account_default_protect_configuration(aws_client:aws_client(), set_account_default_protect_configuration_request(), proplists:proplist()) ->
    {ok, set_account_default_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, set_account_default_protect_configuration_errors(), tuple()}.
set_account_default_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetAccountDefaultProtectConfiguration">>, Input, Options).

%% @doc Sets a configuration set's default for message feedback.
-spec set_default_message_feedback_enabled(aws_client:aws_client(), set_default_message_feedback_enabled_request()) ->
    {ok, set_default_message_feedback_enabled_result(), tuple()} |
    {error, any()} |
    {error, set_default_message_feedback_enabled_errors(), tuple()}.
set_default_message_feedback_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_message_feedback_enabled(Client, Input, []).

-spec set_default_message_feedback_enabled(aws_client:aws_client(), set_default_message_feedback_enabled_request(), proplists:proplist()) ->
    {ok, set_default_message_feedback_enabled_result(), tuple()} |
    {error, any()} |
    {error, set_default_message_feedback_enabled_errors(), tuple()}.
set_default_message_feedback_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultMessageFeedbackEnabled">>, Input, Options).

%% @doc Sets the default message type on a configuration set.
%%
%% Choose the category of SMS messages that you plan to send from this
%% account. If you
%% send account-related messages or time-sensitive messages such as one-time
%% passcodes,
%% choose Transactional. If you plan to send messages that
%% contain marketing material or other promotional content, choose
%% Promotional. This setting applies to your entire Amazon Web Services
%% account.
-spec set_default_message_type(aws_client:aws_client(), set_default_message_type_request()) ->
    {ok, set_default_message_type_result(), tuple()} |
    {error, any()} |
    {error, set_default_message_type_errors(), tuple()}.
set_default_message_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_message_type(Client, Input, []).

-spec set_default_message_type(aws_client:aws_client(), set_default_message_type_request(), proplists:proplist()) ->
    {ok, set_default_message_type_result(), tuple()} |
    {error, any()} |
    {error, set_default_message_type_errors(), tuple()}.
set_default_message_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultMessageType">>, Input, Options).

%% @doc Sets default sender ID on a configuration set.
%%
%% When sending a text message to a destination country that supports sender
%% IDs, the
%% default sender ID on the configuration set specified will be used if no
%% dedicated
%% origination phone numbers or registered sender IDs are available in your
%% account.
-spec set_default_sender_id(aws_client:aws_client(), set_default_sender_id_request()) ->
    {ok, set_default_sender_id_result(), tuple()} |
    {error, any()} |
    {error, set_default_sender_id_errors(), tuple()}.
set_default_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_sender_id(Client, Input, []).

-spec set_default_sender_id(aws_client:aws_client(), set_default_sender_id_request(), proplists:proplist()) ->
    {ok, set_default_sender_id_result(), tuple()} |
    {error, any()} |
    {error, set_default_sender_id_errors(), tuple()}.
set_default_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultSenderId">>, Input, Options).

%% @doc Sets an account level monthly spend limit override for sending MMS
%% messages.
%%
%% The
%% requested spend limit must be less than or equal to the `MaxLimit',
%% which is
%% set by Amazon Web Services.
-spec set_media_message_spend_limit_override(aws_client:aws_client(), set_media_message_spend_limit_override_request()) ->
    {ok, set_media_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_media_message_spend_limit_override_errors(), tuple()}.
set_media_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_media_message_spend_limit_override(Client, Input, []).

-spec set_media_message_spend_limit_override(aws_client:aws_client(), set_media_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, set_media_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_media_message_spend_limit_override_errors(), tuple()}.
set_media_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetMediaMessageSpendLimitOverride">>, Input, Options).

%% @doc Sets an account level monthly spend limit override for sending text
%% messages.
%%
%% The
%% requested spend limit must be less than or equal to the `MaxLimit',
%% which is
%% set by Amazon Web Services.
-spec set_text_message_spend_limit_override(aws_client:aws_client(), set_text_message_spend_limit_override_request()) ->
    {ok, set_text_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_text_message_spend_limit_override_errors(), tuple()}.
set_text_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_text_message_spend_limit_override(Client, Input, []).

-spec set_text_message_spend_limit_override(aws_client:aws_client(), set_text_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, set_text_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_text_message_spend_limit_override_errors(), tuple()}.
set_text_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTextMessageSpendLimitOverride">>, Input, Options).

%% @doc Sets an account level monthly spend limit override for sending voice
%% messages.
%%
%% The
%% requested spend limit must be less than or equal to the `MaxLimit',
%% which is
%% set by Amazon Web Services.
-spec set_voice_message_spend_limit_override(aws_client:aws_client(), set_voice_message_spend_limit_override_request()) ->
    {ok, set_voice_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_voice_message_spend_limit_override_errors(), tuple()}.
set_voice_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_voice_message_spend_limit_override(Client, Input, []).

-spec set_voice_message_spend_limit_override(aws_client:aws_client(), set_voice_message_spend_limit_override_request(), proplists:proplist()) ->
    {ok, set_voice_message_spend_limit_override_result(), tuple()} |
    {error, any()} |
    {error, set_voice_message_spend_limit_override_errors(), tuple()}.
set_voice_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetVoiceMessageSpendLimitOverride">>, Input, Options).

%% @doc Submit the specified registration for review and approval.
-spec submit_registration_version(aws_client:aws_client(), submit_registration_version_request()) ->
    {ok, submit_registration_version_result(), tuple()} |
    {error, any()} |
    {error, submit_registration_version_errors(), tuple()}.
submit_registration_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_registration_version(Client, Input, []).

-spec submit_registration_version(aws_client:aws_client(), submit_registration_version_request(), proplists:proplist()) ->
    {ok, submit_registration_version_result(), tuple()} |
    {error, any()} |
    {error, submit_registration_version_errors(), tuple()}.
submit_registration_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitRegistrationVersion">>, Input, Options).

%% @doc Adds or overwrites only the specified tags for the specified
%% resource.
%%
%% When you specify an existing tag key, the value is
%% overwritten with the new value. Each resource can have a maximum of 50
%% tags. Each tag
%% consists of a key and an optional value. Tag keys must be unique per
%% resource. For more
%% information about tags, see Tags :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html
%% in the AWS End User Messaging SMS User Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of the specified tags from a
%% resource.
%%
%% For more information on tags see Tags :
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html
%% in the AWS End User Messaging SMS User Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing event destination in a configuration set.
%%
%% You can update the
%% IAM role ARN for CloudWatch Logs and Firehose. You can
%% also enable or disable the event destination.
%%
%% You may want to update an event destination to change its matching event
%% types or
%% updating the destination resource ARN. You can't change an event
%% destination's type
%% between CloudWatch Logs, Firehose, and Amazon SNS.
-spec update_event_destination(aws_client:aws_client(), update_event_destination_request()) ->
    {ok, update_event_destination_result(), tuple()} |
    {error, any()} |
    {error, update_event_destination_errors(), tuple()}.
update_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_destination(Client, Input, []).

-spec update_event_destination(aws_client:aws_client(), update_event_destination_request(), proplists:proplist()) ->
    {ok, update_event_destination_result(), tuple()} |
    {error, any()} |
    {error, update_event_destination_errors(), tuple()}.
update_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventDestination">>, Input, Options).

%% @doc Updates the configuration of an existing origination phone number.
%%
%% You can update the
%% opt-out list, enable or disable two-way messaging, change the
%% TwoWayChannelArn, enable
%% or disable self-managed opt-outs, and enable or disable deletion
%% protection.
%%
%% If the origination phone number is associated with a pool, an error is
%% returned.
-spec update_phone_number(aws_client:aws_client(), update_phone_number_request()) ->
    {ok, update_phone_number_result(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_phone_number(Client, Input, []).

-spec update_phone_number(aws_client:aws_client(), update_phone_number_request(), proplists:proplist()) ->
    {ok, update_phone_number_result(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePhoneNumber">>, Input, Options).

%% @doc Updates the configuration of an existing pool.
%%
%% You can update the opt-out list, enable
%% or disable two-way messaging, change the `TwoWayChannelArn', enable or
%% disable self-managed opt-outs, enable or disable deletion protection, and
%% enable or
%% disable shared routes.
-spec update_pool(aws_client:aws_client(), update_pool_request()) ->
    {ok, update_pool_result(), tuple()} |
    {error, any()} |
    {error, update_pool_errors(), tuple()}.
update_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pool(Client, Input, []).

-spec update_pool(aws_client:aws_client(), update_pool_request(), proplists:proplist()) ->
    {ok, update_pool_result(), tuple()} |
    {error, any()} |
    {error, update_pool_errors(), tuple()}.
update_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePool">>, Input, Options).

%% @doc Update the setting for an existing protect configuration.
-spec update_protect_configuration(aws_client:aws_client(), update_protect_configuration_request()) ->
    {ok, update_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_protect_configuration_errors(), tuple()}.
update_protect_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_protect_configuration(Client, Input, []).

-spec update_protect_configuration(aws_client:aws_client(), update_protect_configuration_request(), proplists:proplist()) ->
    {ok, update_protect_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_protect_configuration_errors(), tuple()}.
update_protect_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProtectConfiguration">>, Input, Options).

%% @doc Update a country rule set to `ALLOW' or `BLOCK' messages to
%% be sent to the specified destination counties.
%%
%% You can update one or multiple countries at a time. The updates are only
%% applied to the specified NumberCapability type.
-spec update_protect_configuration_country_rule_set(aws_client:aws_client(), update_protect_configuration_country_rule_set_request()) ->
    {ok, update_protect_configuration_country_rule_set_result(), tuple()} |
    {error, any()} |
    {error, update_protect_configuration_country_rule_set_errors(), tuple()}.
update_protect_configuration_country_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_protect_configuration_country_rule_set(Client, Input, []).

-spec update_protect_configuration_country_rule_set(aws_client:aws_client(), update_protect_configuration_country_rule_set_request(), proplists:proplist()) ->
    {ok, update_protect_configuration_country_rule_set_result(), tuple()} |
    {error, any()} |
    {error, update_protect_configuration_country_rule_set_errors(), tuple()}.
update_protect_configuration_country_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProtectConfigurationCountryRuleSet">>, Input, Options).

%% @doc Updates the configuration of an existing sender ID.
-spec update_sender_id(aws_client:aws_client(), update_sender_id_request()) ->
    {ok, update_sender_id_result(), tuple()} |
    {error, any()} |
    {error, update_sender_id_errors(), tuple()}.
update_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sender_id(Client, Input, []).

-spec update_sender_id(aws_client:aws_client(), update_sender_id_request(), proplists:proplist()) ->
    {ok, update_sender_id_result(), tuple()} |
    {error, any()} |
    {error, update_sender_id_errors(), tuple()}.
update_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSenderId">>, Input, Options).

%% @doc Use the verification code that was received by the verified
%% destination phone number to opt-in the verified destination phone number
%% to receive more messages.
-spec verify_destination_number(aws_client:aws_client(), verify_destination_number_request()) ->
    {ok, verify_destination_number_result(), tuple()} |
    {error, any()} |
    {error, verify_destination_number_errors(), tuple()}.
verify_destination_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_destination_number(Client, Input, []).

-spec verify_destination_number(aws_client:aws_client(), verify_destination_number_request(), proplists:proplist()) ->
    {ok, verify_destination_number_result(), tuple()} |
    {error, any()} |
    {error, verify_destination_number_errors(), tuple()}.
verify_destination_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyDestinationNumber">>, Input, Options).

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
    Client1 = Client#{service => <<"sms-voice">>},
    Host = build_host(<<"sms-voice">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PinpointSMSVoiceV2.", Action/binary>>}
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
