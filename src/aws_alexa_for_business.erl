%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Alexa for Business has been retired and is no longer supported.
-module(aws_alexa_for_business).

-export([approve_skill/2,
         approve_skill/3,
         associate_contact_with_address_book/2,
         associate_contact_with_address_book/3,
         associate_device_with_network_profile/2,
         associate_device_with_network_profile/3,
         associate_device_with_room/2,
         associate_device_with_room/3,
         associate_skill_group_with_room/2,
         associate_skill_group_with_room/3,
         associate_skill_with_skill_group/2,
         associate_skill_with_skill_group/3,
         associate_skill_with_users/2,
         associate_skill_with_users/3,
         create_address_book/2,
         create_address_book/3,
         create_business_report_schedule/2,
         create_business_report_schedule/3,
         create_conference_provider/2,
         create_conference_provider/3,
         create_contact/2,
         create_contact/3,
         create_gateway_group/2,
         create_gateway_group/3,
         create_network_profile/2,
         create_network_profile/3,
         create_profile/2,
         create_profile/3,
         create_room/2,
         create_room/3,
         create_skill_group/2,
         create_skill_group/3,
         create_user/2,
         create_user/3,
         delete_address_book/2,
         delete_address_book/3,
         delete_business_report_schedule/2,
         delete_business_report_schedule/3,
         delete_conference_provider/2,
         delete_conference_provider/3,
         delete_contact/2,
         delete_contact/3,
         delete_device/2,
         delete_device/3,
         delete_device_usage_data/2,
         delete_device_usage_data/3,
         delete_gateway_group/2,
         delete_gateway_group/3,
         delete_network_profile/2,
         delete_network_profile/3,
         delete_profile/2,
         delete_profile/3,
         delete_room/2,
         delete_room/3,
         delete_room_skill_parameter/2,
         delete_room_skill_parameter/3,
         delete_skill_authorization/2,
         delete_skill_authorization/3,
         delete_skill_group/2,
         delete_skill_group/3,
         delete_user/2,
         delete_user/3,
         disassociate_contact_from_address_book/2,
         disassociate_contact_from_address_book/3,
         disassociate_device_from_room/2,
         disassociate_device_from_room/3,
         disassociate_skill_from_skill_group/2,
         disassociate_skill_from_skill_group/3,
         disassociate_skill_from_users/2,
         disassociate_skill_from_users/3,
         disassociate_skill_group_from_room/2,
         disassociate_skill_group_from_room/3,
         forget_smart_home_appliances/2,
         forget_smart_home_appliances/3,
         get_address_book/2,
         get_address_book/3,
         get_conference_preference/2,
         get_conference_preference/3,
         get_conference_provider/2,
         get_conference_provider/3,
         get_contact/2,
         get_contact/3,
         get_device/2,
         get_device/3,
         get_gateway/2,
         get_gateway/3,
         get_gateway_group/2,
         get_gateway_group/3,
         get_invitation_configuration/2,
         get_invitation_configuration/3,
         get_network_profile/2,
         get_network_profile/3,
         get_profile/2,
         get_profile/3,
         get_room/2,
         get_room/3,
         get_room_skill_parameter/2,
         get_room_skill_parameter/3,
         get_skill_group/2,
         get_skill_group/3,
         list_business_report_schedules/2,
         list_business_report_schedules/3,
         list_conference_providers/2,
         list_conference_providers/3,
         list_device_events/2,
         list_device_events/3,
         list_gateway_groups/2,
         list_gateway_groups/3,
         list_gateways/2,
         list_gateways/3,
         list_skills/2,
         list_skills/3,
         list_skills_store_categories/2,
         list_skills_store_categories/3,
         list_skills_store_skills_by_category/2,
         list_skills_store_skills_by_category/3,
         list_smart_home_appliances/2,
         list_smart_home_appliances/3,
         list_tags/2,
         list_tags/3,
         put_conference_preference/2,
         put_conference_preference/3,
         put_invitation_configuration/2,
         put_invitation_configuration/3,
         put_room_skill_parameter/2,
         put_room_skill_parameter/3,
         put_skill_authorization/2,
         put_skill_authorization/3,
         register_avs_device/2,
         register_avs_device/3,
         reject_skill/2,
         reject_skill/3,
         resolve_room/2,
         resolve_room/3,
         revoke_invitation/2,
         revoke_invitation/3,
         search_address_books/2,
         search_address_books/3,
         search_contacts/2,
         search_contacts/3,
         search_devices/2,
         search_devices/3,
         search_network_profiles/2,
         search_network_profiles/3,
         search_profiles/2,
         search_profiles/3,
         search_rooms/2,
         search_rooms/3,
         search_skill_groups/2,
         search_skill_groups/3,
         search_users/2,
         search_users/3,
         send_announcement/2,
         send_announcement/3,
         send_invitation/2,
         send_invitation/3,
         start_device_sync/2,
         start_device_sync/3,
         start_smart_home_appliance_discovery/2,
         start_smart_home_appliance_discovery/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_address_book/2,
         update_address_book/3,
         update_business_report_schedule/2,
         update_business_report_schedule/3,
         update_conference_provider/2,
         update_conference_provider/3,
         update_contact/2,
         update_contact/3,
         update_device/2,
         update_device/3,
         update_gateway/2,
         update_gateway/3,
         update_gateway_group/2,
         update_gateway_group/3,
         update_network_profile/2,
         update_network_profile/3,
         update_profile/2,
         update_profile/3,
         update_room/2,
         update_room/3,
         update_skill_group/2,
         update_skill_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% profile() :: #{
%%   <<"Address">> => string(),
%%   <<"AddressBookArn">> => string(),
%%   <<"DataRetentionOptIn">> => boolean(),
%%   <<"DistanceUnit">> => list(any()),
%%   <<"IsDefault">> => boolean(),
%%   <<"Locale">> => string(),
%%   <<"MaxVolumeLimit">> => integer(),
%%   <<"MeetingRoomConfiguration">> => meeting_room_configuration(),
%%   <<"PSTNEnabled">> => boolean(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"SetupModeDisabled">> => boolean(),
%%   <<"TemperatureUnit">> => list(any()),
%%   <<"Timezone">> => string(),
%%   <<"WakeWord">> => list(any())
%% }
-type profile() :: #{binary() => any()}.

%% Example:
%% gateway_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type gateway_group_summary() :: #{binary() => any()}.

%% Example:
%% update_gateway_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GatewayArn">> := string(),
%%   <<"Name">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type update_gateway_request() :: #{binary() => any()}.

%% Example:
%% create_network_profile_request() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"CurrentPassword">> => string(),
%%   <<"Description">> => string(),
%%   <<"EapMethod">> => list(any()),
%%   <<"NetworkProfileName">> := string(),
%%   <<"NextPassword">> => string(),
%%   <<"SecurityType">> := list(any()),
%%   <<"Ssid">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrustAnchors">> => list(string()())
%% }
-type create_network_profile_request() :: #{binary() => any()}.

%% Example:
%% audio() :: #{
%%   <<"Locale">> => list(any()),
%%   <<"Location">> => string()
%% }
-type audio() :: #{binary() => any()}.

%% Example:
%% skills_store_skill() :: #{
%%   <<"IconUrl">> => string(),
%%   <<"SampleUtterances">> => list(string()()),
%%   <<"ShortDescription">> => string(),
%%   <<"SkillDetails">> => skill_details(),
%%   <<"SkillId">> => string(),
%%   <<"SkillName">> => string(),
%%   <<"SupportsLinking">> => boolean()
%% }
-type skills_store_skill() :: #{binary() => any()}.

%% Example:
%% business_report() :: #{
%%   <<"DeliveryTime">> => non_neg_integer(),
%%   <<"DownloadUrl">> => string(),
%%   <<"FailureCode">> => list(any()),
%%   <<"S3Location">> => business_report_s3_location(),
%%   <<"Status">> => list(any())
%% }
-type business_report() :: #{binary() => any()}.

%% Example:
%% get_network_profile_response() :: #{
%%   <<"NetworkProfile">> => network_profile()
%% }
-type get_network_profile_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% put_room_skill_parameter_request() :: #{
%%   <<"RoomArn">> => string(),
%%   <<"RoomSkillParameter">> := room_skill_parameter(),
%%   <<"SkillId">> := string()
%% }
-type put_room_skill_parameter_request() :: #{binary() => any()}.

%% Example:
%% search_network_profiles_response() :: #{
%%   <<"NetworkProfiles">> => list(network_profile_data()()),
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => integer()
%% }
-type search_network_profiles_response() :: #{binary() => any()}.

%% Example:
%% update_device_response() :: #{

%% }
-type update_device_response() :: #{binary() => any()}.

%% Example:
%% delete_contact_request() :: #{
%%   <<"ContactArn">> := string()
%% }
-type delete_contact_request() :: #{binary() => any()}.

%% Example:
%% delete_room_request() :: #{
%%   <<"RoomArn">> => string()
%% }
-type delete_room_request() :: #{binary() => any()}.

%% Example:
%% search_address_books_response() :: #{
%%   <<"AddressBooks">> => list(address_book_data()()),
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => integer()
%% }
-type search_address_books_response() :: #{binary() => any()}.

%% Example:
%% search_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => integer(),
%%   <<"Users">> => list(user_data()())
%% }
-type search_users_response() :: #{binary() => any()}.

%% Example:
%% list_skills_request() :: #{
%%   <<"EnablementType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillType">> => list(any())
%% }
-type list_skills_request() :: #{binary() => any()}.

%% Example:
%% put_skill_authorization_request() :: #{
%%   <<"AuthorizationResult">> := map(),
%%   <<"RoomArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type put_skill_authorization_request() :: #{binary() => any()}.

%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.

%% Example:
%% room() :: #{
%%   <<"Description">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProviderCalendarId">> => string(),
%%   <<"RoomArn">> => string(),
%%   <<"RoomName">> => string()
%% }
-type room() :: #{binary() => any()}.

%% Example:
%% address_book() :: #{
%%   <<"AddressBookArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type address_book() :: #{binary() => any()}.

%% Example:
%% associate_device_with_room_response() :: #{

%% }
-type associate_device_with_room_response() :: #{binary() => any()}.

%% Example:
%% search_network_profiles_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_network_profiles_request() :: #{binary() => any()}.

%% Example:
%% associate_skill_with_users_response() :: #{

%% }
-type associate_skill_with_users_response() :: #{binary() => any()}.

%% Example:
%% associate_device_with_room_request() :: #{
%%   <<"DeviceArn">> => string(),
%%   <<"RoomArn">> => string()
%% }
-type associate_device_with_room_request() :: #{binary() => any()}.

%% Example:
%% update_skill_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillGroupName">> => string()
%% }
-type update_skill_group_request() :: #{binary() => any()}.

%% Example:
%% delete_profile_request() :: #{
%%   <<"ProfileArn">> => string()
%% }
-type delete_profile_request() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_group_from_room_response() :: #{

%% }
-type disassociate_skill_group_from_room_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_business_report_schedule_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ContentRange">> := business_report_content_range(),
%%   <<"Format">> := list(any()),
%%   <<"Recurrence">> => business_report_recurrence(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"ScheduleName">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_business_report_schedule_request() :: #{binary() => any()}.

%% Example:
%% update_device_request() :: #{
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceName">> => string()
%% }
-type update_device_request() :: #{binary() => any()}.

%% Example:
%% create_end_of_meeting_reminder() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReminderAtMinutes">> => list(integer()()),
%%   <<"ReminderType">> => list(any())
%% }
-type create_end_of_meeting_reminder() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_from_users_response() :: #{

%% }
-type disassociate_skill_from_users_response() :: #{binary() => any()}.

%% Example:
%% put_invitation_configuration_response() :: #{

%% }
-type put_invitation_configuration_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% list_gateways_request() :: #{
%%   <<"GatewayGroupArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_gateways_request() :: #{binary() => any()}.

%% Example:
%% update_skill_group_response() :: #{

%% }
-type update_skill_group_response() :: #{binary() => any()}.

%% Example:
%% skill_group_data() :: #{
%%   <<"Description">> => string(),
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillGroupName">> => string()
%% }
-type skill_group_data() :: #{binary() => any()}.

%% Example:
%% list_skills_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SkillSummaries">> => list(skill_summary()())
%% }
-type list_skills_response() :: #{binary() => any()}.

%% Example:
%% end_of_meeting_reminder() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReminderAtMinutes">> => list(integer()()),
%%   <<"ReminderType">> => list(any())
%% }
-type end_of_meeting_reminder() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% delete_network_profile_request() :: #{
%%   <<"NetworkProfileArn">> := string()
%% }
-type delete_network_profile_request() :: #{binary() => any()}.

%% Example:
%% get_address_book_response() :: #{
%%   <<"AddressBook">> => address_book()
%% }
-type get_address_book_response() :: #{binary() => any()}.

%% Example:
%% delete_profile_response() :: #{

%% }
-type delete_profile_response() :: #{binary() => any()}.

%% Example:
%% disassociate_contact_from_address_book_request() :: #{
%%   <<"AddressBookArn">> := string(),
%%   <<"ContactArn">> := string()
%% }
-type disassociate_contact_from_address_book_request() :: #{binary() => any()}.

%% Example:
%% list_skills_store_categories_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_skills_store_categories_request() :: #{binary() => any()}.

%% Example:
%% business_report_recurrence() :: #{
%%   <<"StartDate">> => string()
%% }
-type business_report_recurrence() :: #{binary() => any()}.

%% Example:
%% delete_device_usage_data_request() :: #{
%%   <<"DeviceArn">> := string(),
%%   <<"DeviceUsageType">> := list(any())
%% }
-type delete_device_usage_data_request() :: #{binary() => any()}.

%% Example:
%% start_device_sync_request() :: #{
%%   <<"DeviceArn">> => string(),
%%   <<"Features">> := list(list(any())()),
%%   <<"RoomArn">> => string()
%% }
-type start_device_sync_request() :: #{binary() => any()}.

%% Example:
%% get_address_book_request() :: #{
%%   <<"AddressBookArn">> := string()
%% }
-type get_address_book_request() :: #{binary() => any()}.

%% Example:
%% associate_skill_group_with_room_response() :: #{

%% }
-type associate_skill_group_with_room_response() :: #{binary() => any()}.

%% Example:
%% phone_number() :: #{
%%   <<"Number">> => string(),
%%   <<"Type">> => list(any())
%% }
-type phone_number() :: #{binary() => any()}.

%% Example:
%% business_report_s3_location() :: #{
%%   <<"BucketName">> => string(),
%%   <<"Path">> => string()
%% }
-type business_report_s3_location() :: #{binary() => any()}.

%% Example:
%% put_invitation_configuration_request() :: #{
%%   <<"ContactEmail">> => string(),
%%   <<"OrganizationName">> := string(),
%%   <<"PrivateSkillIds">> => list(string()())
%% }
-type put_invitation_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% update_address_book_request() :: #{
%%   <<"AddressBookArn">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_address_book_request() :: #{binary() => any()}.

%% Example:
%% send_announcement_response() :: #{
%%   <<"AnnouncementArn">> => string()
%% }
-type send_announcement_response() :: #{binary() => any()}.

%% Example:
%% conference_provider() :: #{
%%   <<"Arn">> => string(),
%%   <<"IPDialIn">> => ip_dial_in(),
%%   <<"MeetingSetting">> => meeting_setting(),
%%   <<"Name">> => string(),
%%   <<"PSTNDialIn">> => p_s_t_n_dial_in(),
%%   <<"Type">> => list(any())
%% }
-type conference_provider() :: #{binary() => any()}.

%% Example:
%% delete_device_request() :: #{
%%   <<"DeviceArn">> := string()
%% }
-type delete_device_request() :: #{binary() => any()}.

%% Example:
%% delete_address_book_request() :: #{
%%   <<"AddressBookArn">> := string()
%% }
-type delete_address_book_request() :: #{binary() => any()}.

%% Example:
%% smart_home_appliance() :: #{
%%   <<"Description">> => string(),
%%   <<"FriendlyName">> => string(),
%%   <<"ManufacturerName">> => string()
%% }
-type smart_home_appliance() :: #{binary() => any()}.

%% Example:
%% delete_device_usage_data_response() :: #{

%% }
-type delete_device_usage_data_response() :: #{binary() => any()}.

%% Example:
%% list_smart_home_appliances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RoomArn">> := string()
%% }
-type list_smart_home_appliances_request() :: #{binary() => any()}.

%% Example:
%% update_network_profile_response() :: #{

%% }
-type update_network_profile_response() :: #{binary() => any()}.

%% Example:
%% disassociate_device_from_room_request() :: #{
%%   <<"DeviceArn">> => string()
%% }
-type disassociate_device_from_room_request() :: #{binary() => any()}.

%% Example:
%% delete_room_response() :: #{

%% }
-type delete_room_response() :: #{binary() => any()}.

%% Example:
%% update_room_response() :: #{

%% }
-type update_room_response() :: #{binary() => any()}.

%% Example:
%% room_data() :: #{
%%   <<"Description">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"ProviderCalendarId">> => string(),
%%   <<"RoomArn">> => string(),
%%   <<"RoomName">> => string()
%% }
-type room_data() :: #{binary() => any()}.

%% Example:
%% list_gateway_groups_response() :: #{
%%   <<"GatewayGroups">> => list(gateway_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_gateway_groups_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% send_invitation_response() :: #{

%% }
-type send_invitation_response() :: #{binary() => any()}.

%% Example:
%% revoke_invitation_request() :: #{
%%   <<"EnrollmentId">> => string(),
%%   <<"UserArn">> => string()
%% }
-type revoke_invitation_request() :: #{binary() => any()}.

%% Example:
%% delete_skill_group_response() :: #{

%% }
-type delete_skill_group_response() :: #{binary() => any()}.

%% Example:
%% invalid_service_linked_role_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_service_linked_role_state_exception() :: #{binary() => any()}.

%% Example:
%% sip_address() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Uri">> => string()
%% }
-type sip_address() :: #{binary() => any()}.

%% Example:
%% list_skills_store_skills_by_category_request() :: #{
%%   <<"CategoryId">> := float(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_skills_store_skills_by_category_request() :: #{binary() => any()}.

%% Example:
%% list_conference_providers_response() :: #{
%%   <<"ConferenceProviders">> => list(conference_provider()()),
%%   <<"NextToken">> => string()
%% }
-type list_conference_providers_response() :: #{binary() => any()}.

%% Example:
%% network_profile() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CurrentPassword">> => string(),
%%   <<"Description">> => string(),
%%   <<"EapMethod">> => list(any()),
%%   <<"NetworkProfileArn">> => string(),
%%   <<"NetworkProfileName">> => string(),
%%   <<"NextPassword">> => string(),
%%   <<"SecurityType">> => list(any()),
%%   <<"Ssid">> => string(),
%%   <<"TrustAnchors">> => list(string()())
%% }
-type network_profile() :: #{binary() => any()}.

%% Example:
%% create_address_book_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_address_book_request() :: #{binary() => any()}.

%% Example:
%% gateway_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type gateway_group() :: #{binary() => any()}.

%% Example:
%% update_conference_provider_request() :: #{
%%   <<"ConferenceProviderArn">> := string(),
%%   <<"ConferenceProviderType">> := list(any()),
%%   <<"IPDialIn">> => ip_dial_in(),
%%   <<"MeetingSetting">> := meeting_setting(),
%%   <<"PSTNDialIn">> => p_s_t_n_dial_in()
%% }
-type update_conference_provider_request() :: #{binary() => any()}.

%% Example:
%% gateway() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"GatewayGroupArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type gateway() :: #{binary() => any()}.

%% Example:
%% name_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type name_in_use_exception() :: #{binary() => any()}.

%% Example:
%% create_contact_response() :: #{
%%   <<"ContactArn">> => string()
%% }
-type create_contact_response() :: #{binary() => any()}.

%% Example:
%% search_address_books_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_address_books_request() :: #{binary() => any()}.

%% Example:
%% get_conference_provider_request() :: #{
%%   <<"ConferenceProviderArn">> := string()
%% }
-type get_conference_provider_request() :: #{binary() => any()}.

%% Example:
%% user_data() :: #{
%%   <<"Email">> => string(),
%%   <<"EnrollmentId">> => string(),
%%   <<"EnrollmentStatus">> => list(any()),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"UserArn">> => string()
%% }
-type user_data() :: #{binary() => any()}.

%% Example:
%% delete_address_book_response() :: #{

%% }
-type delete_address_book_response() :: #{binary() => any()}.

%% Example:
%% gateway_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"GatewayGroupArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type gateway_summary() :: #{binary() => any()}.

%% Example:
%% update_address_book_response() :: #{

%% }
-type update_address_book_response() :: #{binary() => any()}.

%% Example:
%% update_meeting_room_configuration() :: #{
%%   <<"EndOfMeetingReminder">> => update_end_of_meeting_reminder(),
%%   <<"InstantBooking">> => update_instant_booking(),
%%   <<"ProactiveJoin">> => update_proactive_join(),
%%   <<"RequireCheckIn">> => update_require_check_in(),
%%   <<"RoomUtilizationMetricsEnabled">> => boolean()
%% }
-type update_meeting_room_configuration() :: #{binary() => any()}.

%% Example:
%% create_skill_group_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"SkillGroupName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_skill_group_request() :: #{binary() => any()}.

%% Example:
%% create_profile_request() :: #{
%%   <<"Address">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataRetentionOptIn">> => boolean(),
%%   <<"DistanceUnit">> := list(any()),
%%   <<"Locale">> => string(),
%%   <<"MaxVolumeLimit">> => integer(),
%%   <<"MeetingRoomConfiguration">> => create_meeting_room_configuration(),
%%   <<"PSTNEnabled">> => boolean(),
%%   <<"ProfileName">> := string(),
%%   <<"SetupModeDisabled">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemperatureUnit">> := list(any()),
%%   <<"Timezone">> := string(),
%%   <<"WakeWord">> := list(any())
%% }
-type create_profile_request() :: #{binary() => any()}.

%% Example:
%% list_device_events_response() :: #{
%%   <<"DeviceEvents">> => list(device_event()()),
%%   <<"NextToken">> => string()
%% }
-type list_device_events_response() :: #{binary() => any()}.

%% Example:
%% get_network_profile_request() :: #{
%%   <<"NetworkProfileArn">> := string()
%% }
-type get_network_profile_request() :: #{binary() => any()}.

%% Example:
%% invalid_device_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_device_exception() :: #{binary() => any()}.

%% Example:
%% conference_preference() :: #{
%%   <<"DefaultConferenceProviderArn">> => string()
%% }
-type conference_preference() :: #{binary() => any()}.

%% Example:
%% update_conference_provider_response() :: #{

%% }
-type update_conference_provider_response() :: #{binary() => any()}.

%% Example:
%% create_business_report_schedule_response() :: #{
%%   <<"ScheduleArn">> => string()
%% }
-type create_business_report_schedule_response() :: #{binary() => any()}.

%% Example:
%% send_announcement_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Content">> := content(),
%%   <<"RoomFilters">> := list(filter()()),
%%   <<"TimeToLiveInSeconds">> => integer()
%% }
-type send_announcement_request() :: #{binary() => any()}.

%% Example:
%% get_invitation_configuration_request() :: #{

%% }
-type get_invitation_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_network_profile_response() :: #{
%%   <<"NetworkProfileArn">> => string()
%% }
-type create_network_profile_response() :: #{binary() => any()}.

%% Example:
%% require_check_in() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReleaseAfterMinutes">> => integer()
%% }
-type require_check_in() :: #{binary() => any()}.

%% Example:
%% list_gateway_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_gateway_groups_request() :: #{binary() => any()}.

%% Example:
%% create_skill_group_response() :: #{
%%   <<"SkillGroupArn">> => string()
%% }
-type create_skill_group_response() :: #{binary() => any()}.

%% Example:
%% update_profile_request() :: #{
%%   <<"Address">> => string(),
%%   <<"DataRetentionOptIn">> => boolean(),
%%   <<"DistanceUnit">> => list(any()),
%%   <<"IsDefault">> => boolean(),
%%   <<"Locale">> => string(),
%%   <<"MaxVolumeLimit">> => integer(),
%%   <<"MeetingRoomConfiguration">> => update_meeting_room_configuration(),
%%   <<"PSTNEnabled">> => boolean(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"SetupModeDisabled">> => boolean(),
%%   <<"TemperatureUnit">> => list(any()),
%%   <<"Timezone">> => string(),
%%   <<"WakeWord">> => list(any())
%% }
-type update_profile_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_response() :: #{
%%   <<"Gateway">> => gateway()
%% }
-type get_gateway_response() :: #{binary() => any()}.

%% Example:
%% approve_skill_response() :: #{

%% }
-type approve_skill_response() :: #{binary() => any()}.

%% Example:
%% create_conference_provider_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ConferenceProviderName">> := string(),
%%   <<"ConferenceProviderType">> := list(any()),
%%   <<"IPDialIn">> => ip_dial_in(),
%%   <<"MeetingSetting">> := meeting_setting(),
%%   <<"PSTNDialIn">> => p_s_t_n_dial_in(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_conference_provider_request() :: #{binary() => any()}.

%% Example:
%% list_device_events_request() :: #{
%%   <<"DeviceArn">> := string(),
%%   <<"EventType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_device_events_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% search_rooms_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_rooms_request() :: #{binary() => any()}.

%% Example:
%% update_contact_response() :: #{

%% }
-type update_contact_response() :: #{binary() => any()}.

%% Example:
%% delete_skill_authorization_request() :: #{
%%   <<"RoomArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type delete_skill_authorization_request() :: #{binary() => any()}.

%% Example:
%% contact_data() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()()),
%%   <<"SipAddresses">> => list(sip_address()())
%% }
-type contact_data() :: #{binary() => any()}.

%% Example:
%% delete_network_profile_response() :: #{

%% }
-type delete_network_profile_response() :: #{binary() => any()}.

%% Example:
%% forget_smart_home_appliances_request() :: #{
%%   <<"RoomArn">> := string()
%% }
-type forget_smart_home_appliances_request() :: #{binary() => any()}.

%% Example:
%% get_conference_provider_response() :: #{
%%   <<"ConferenceProvider">> => conference_provider()
%% }
-type get_conference_provider_response() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_from_skill_group_response() :: #{

%% }
-type disassociate_skill_from_skill_group_response() :: #{binary() => any()}.

%% Example:
%% get_profile_response() :: #{
%%   <<"Profile">> => profile()
%% }
-type get_profile_response() :: #{binary() => any()}.

%% Example:
%% list_conference_providers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_conference_providers_request() :: #{binary() => any()}.

%% Example:
%% update_proactive_join() :: #{
%%   <<"EnabledByMotion">> := boolean()
%% }
-type update_proactive_join() :: #{binary() => any()}.

%% Example:
%% create_profile_response() :: #{
%%   <<"ProfileArn">> => string()
%% }
-type create_profile_response() :: #{binary() => any()}.

%% Example:
%% get_invitation_configuration_response() :: #{
%%   <<"ContactEmail">> => string(),
%%   <<"OrganizationName">> => string(),
%%   <<"PrivateSkillIds">> => list(string()())
%% }
-type get_invitation_configuration_response() :: #{binary() => any()}.

%% Example:
%% put_room_skill_parameter_response() :: #{

%% }
-type put_room_skill_parameter_response() :: #{binary() => any()}.

%% Example:
%% developer_info() :: #{
%%   <<"DeveloperName">> => string(),
%%   <<"Email">> => string(),
%%   <<"PrivacyPolicy">> => string(),
%%   <<"Url">> => string()
%% }
-type developer_info() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_from_users_request() :: #{
%%   <<"SkillId">> := string()
%% }
-type disassociate_skill_from_users_request() :: #{binary() => any()}.

%% Example:
%% device_data() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"DeviceSerialNumber">> => string(),
%%   <<"DeviceStatus">> => list(any()),
%%   <<"DeviceStatusInfo">> => device_status_info(),
%%   <<"DeviceType">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"NetworkProfileArn">> => string(),
%%   <<"NetworkProfileName">> => string(),
%%   <<"RoomArn">> => string(),
%%   <<"RoomName">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type device_data() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_business_report_schedules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_business_report_schedules_request() :: #{binary() => any()}.

%% Example:
%% search_contacts_response() :: #{
%%   <<"Contacts">> => list(contact_data()()),
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => integer()
%% }
-type search_contacts_response() :: #{binary() => any()}.

%% Example:
%% put_skill_authorization_response() :: #{

%% }
-type put_skill_authorization_response() :: #{binary() => any()}.

%% Example:
%% delete_skill_authorization_response() :: #{

%% }
-type delete_skill_authorization_response() :: #{binary() => any()}.

%% Example:
%% update_require_check_in() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReleaseAfterMinutes">> => integer()
%% }
-type update_require_check_in() :: #{binary() => any()}.

%% Example:
%% device_status_info() :: #{
%%   <<"ConnectionStatus">> => list(any()),
%%   <<"ConnectionStatusUpdatedTime">> => non_neg_integer(),
%%   <<"DeviceStatusDetails">> => list(device_status_detail()())
%% }
-type device_status_info() :: #{binary() => any()}.

%% Example:
%% skill_summary() :: #{
%%   <<"EnablementType">> => list(any()),
%%   <<"SkillId">> => string(),
%%   <<"SkillName">> => string(),
%%   <<"SkillType">> => list(any()),
%%   <<"SupportsLinking">> => boolean()
%% }
-type skill_summary() :: #{binary() => any()}.

%% Example:
%% create_require_check_in() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReleaseAfterMinutes">> => integer()
%% }
-type create_require_check_in() :: #{binary() => any()}.

%% Example:
%% reject_skill_request() :: #{
%%   <<"SkillId">> := string()
%% }
-type reject_skill_request() :: #{binary() => any()}.

%% Example:
%% search_users_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_users_request() :: #{binary() => any()}.

%% Example:
%% get_skill_group_response() :: #{
%%   <<"SkillGroup">> => skill_group()
%% }
-type get_skill_group_response() :: #{binary() => any()}.

%% Example:
%% associate_skill_with_users_request() :: #{
%%   <<"SkillId">> := string()
%% }
-type associate_skill_with_users_request() :: #{binary() => any()}.

%% Example:
%% send_invitation_request() :: #{
%%   <<"UserArn">> => string()
%% }
-type send_invitation_request() :: #{binary() => any()}.

%% Example:
%% delete_room_skill_parameter_response() :: #{

%% }
-type delete_room_skill_parameter_response() :: #{binary() => any()}.

%% Example:
%% invalid_user_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_user_status_exception() :: #{binary() => any()}.

%% Example:
%% delete_gateway_group_response() :: #{

%% }
-type delete_gateway_group_response() :: #{binary() => any()}.

%% Example:
%% update_gateway_response() :: #{

%% }
-type update_gateway_response() :: #{binary() => any()}.

%% Example:
%% search_devices_response() :: #{
%%   <<"Devices">> => list(device_data()()),
%%   <<"NextToken">> => string(),
%%   <<"TotalCount">> => integer()
%% }
-type search_devices_response() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"EnrollmentId">> := string(),
%%   <<"UserArn">> => string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% sort() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => list(any())
%% }
-type sort() :: #{binary() => any()}.

%% Example:
%% update_instant_booking() :: #{
%%   <<"DurationInMinutes">> => integer(),
%%   <<"Enabled">> => boolean()
%% }
-type update_instant_booking() :: #{binary() => any()}.

%% Example:
%% contact() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()()),
%%   <<"SipAddresses">> => list(sip_address()())
%% }
-type contact() :: #{binary() => any()}.

%% Example:
%% room_skill_parameter() :: #{
%%   <<"ParameterKey">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type room_skill_parameter() :: #{binary() => any()}.

%% Example:
%% search_rooms_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rooms">> => list(room_data()()),
%%   <<"TotalCount">> => integer()
%% }
-type search_rooms_response() :: #{binary() => any()}.

%% Example:
%% device_network_profile_info() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateExpirationTime">> => non_neg_integer(),
%%   <<"NetworkProfileArn">> => string()
%% }
-type device_network_profile_info() :: #{binary() => any()}.

%% Example:
%% get_device_request() :: #{
%%   <<"DeviceArn">> => string()
%% }
-type get_device_request() :: #{binary() => any()}.

%% Example:
%% delete_user_response() :: #{

%% }
-type delete_user_response() :: #{binary() => any()}.

%% Example:
%% disassociate_contact_from_address_book_response() :: #{

%% }
-type disassociate_contact_from_address_book_response() :: #{binary() => any()}.

%% Example:
%% device_status_detail() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Feature">> => list(any())
%% }
-type device_status_detail() :: #{binary() => any()}.

%% Example:
%% update_business_report_schedule_response() :: #{

%% }
-type update_business_report_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_device_response() :: #{

%% }
-type delete_device_response() :: #{binary() => any()}.

%% Example:
%% search_profiles_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_profiles_request() :: #{binary() => any()}.

%% Example:
%% text() :: #{
%%   <<"Locale">> => list(any()),
%%   <<"Value">> => string()
%% }
-type text() :: #{binary() => any()}.

%% Example:
%% associate_device_with_network_profile_response() :: #{

%% }
-type associate_device_with_network_profile_response() :: #{binary() => any()}.

%% Example:
%% skill_group() :: #{
%%   <<"Description">> => string(),
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillGroupName">> => string()
%% }
-type skill_group() :: #{binary() => any()}.

%% Example:
%% get_room_request() :: #{
%%   <<"RoomArn">> => string()
%% }
-type get_room_request() :: #{binary() => any()}.

%% Example:
%% get_contact_request() :: #{
%%   <<"ContactArn">> := string()
%% }
-type get_contact_request() :: #{binary() => any()}.

%% Example:
%% forget_smart_home_appliances_response() :: #{

%% }
-type forget_smart_home_appliances_response() :: #{binary() => any()}.

%% Example:
%% delete_contact_response() :: #{

%% }
-type delete_contact_response() :: #{binary() => any()}.

%% Example:
%% register_avs_device_request() :: #{
%%   <<"AmazonId">> := string(),
%%   <<"ClientId">> := string(),
%%   <<"DeviceSerialNumber">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"RoomArn">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserCode">> := string()
%% }
-type register_avs_device_request() :: #{binary() => any()}.

%% Example:
%% ip_dial_in() :: #{
%%   <<"CommsProtocol">> => list(any()),
%%   <<"Endpoint">> => string()
%% }
-type ip_dial_in() :: #{binary() => any()}.

%% Example:
%% reject_skill_response() :: #{

%% }
-type reject_skill_response() :: #{binary() => any()}.

%% Example:
%% device_not_registered_exception() :: #{
%%   <<"Message">> => string()
%% }
-type device_not_registered_exception() :: #{binary() => any()}.

%% Example:
%% search_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Profiles">> => list(profile_data()()),
%%   <<"TotalCount">> => integer()
%% }
-type search_profiles_response() :: #{binary() => any()}.

%% Example:
%% create_gateway_group_response() :: #{
%%   <<"GatewayGroupArn">> => string()
%% }
-type create_gateway_group_response() :: #{binary() => any()}.

%% Example:
%% put_conference_preference_response() :: #{

%% }
-type put_conference_preference_response() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_group_from_room_request() :: #{
%%   <<"RoomArn">> => string(),
%%   <<"SkillGroupArn">> => string()
%% }
-type disassociate_skill_group_from_room_request() :: #{binary() => any()}.

%% Example:
%% get_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type get_room_response() :: #{binary() => any()}.

%% Example:
%% search_skill_groups_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_skill_groups_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% instant_booking() :: #{
%%   <<"DurationInMinutes">> => integer(),
%%   <<"Enabled">> => boolean()
%% }
-type instant_booking() :: #{binary() => any()}.

%% Example:
%% associate_contact_with_address_book_request() :: #{
%%   <<"AddressBookArn">> := string(),
%%   <<"ContactArn">> := string()
%% }
-type associate_contact_with_address_book_request() :: #{binary() => any()}.

%% Example:
%% update_end_of_meeting_reminder() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ReminderAtMinutes">> => list(integer()()),
%%   <<"ReminderType">> => list(any())
%% }
-type update_end_of_meeting_reminder() :: #{binary() => any()}.

%% Example:
%% put_conference_preference_request() :: #{
%%   <<"ConferencePreference">> := conference_preference()
%% }
-type put_conference_preference_request() :: #{binary() => any()}.

%% Example:
%% invalid_certificate_authority_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_certificate_authority_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% create_meeting_room_configuration() :: #{
%%   <<"EndOfMeetingReminder">> => create_end_of_meeting_reminder(),
%%   <<"InstantBooking">> => create_instant_booking(),
%%   <<"ProactiveJoin">> => create_proactive_join(),
%%   <<"RequireCheckIn">> => create_require_check_in(),
%%   <<"RoomUtilizationMetricsEnabled">> => boolean()
%% }
-type create_meeting_room_configuration() :: #{binary() => any()}.

%% Example:
%% list_smart_home_appliances_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SmartHomeAppliances">> => list(smart_home_appliance()())
%% }
-type list_smart_home_appliances_response() :: #{binary() => any()}.

%% Example:
%% network_profile_data() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"EapMethod">> => list(any()),
%%   <<"NetworkProfileArn">> => string(),
%%   <<"NetworkProfileName">> => string(),
%%   <<"SecurityType">> => list(any()),
%%   <<"Ssid">> => string()
%% }
-type network_profile_data() :: #{binary() => any()}.

%% Example:
%% update_profile_response() :: #{

%% }
-type update_profile_response() :: #{binary() => any()}.

%% Example:
%% get_profile_request() :: #{
%%   <<"ProfileArn">> => string()
%% }
-type get_profile_request() :: #{binary() => any()}.

%% Example:
%% meeting_room_configuration() :: #{
%%   <<"EndOfMeetingReminder">> => end_of_meeting_reminder(),
%%   <<"InstantBooking">> => instant_booking(),
%%   <<"ProactiveJoin">> => proactive_join(),
%%   <<"RequireCheckIn">> => require_check_in(),
%%   <<"RoomUtilizationMetricsEnabled">> => boolean()
%% }
-type meeting_room_configuration() :: #{binary() => any()}.

%% Example:
%% create_address_book_response() :: #{
%%   <<"AddressBookArn">> => string()
%% }
-type create_address_book_response() :: #{binary() => any()}.

%% Example:
%% update_network_profile_request() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CurrentPassword">> => string(),
%%   <<"Description">> => string(),
%%   <<"NetworkProfileArn">> := string(),
%%   <<"NetworkProfileName">> => string(),
%%   <<"NextPassword">> => string(),
%%   <<"TrustAnchors">> => list(string()())
%% }
-type update_network_profile_request() :: #{binary() => any()}.

%% Example:
%% update_contact_request() :: #{
%%   <<"ContactArn">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()()),
%%   <<"SipAddresses">> => list(sip_address()())
%% }
-type update_contact_request() :: #{binary() => any()}.

%% Example:
%% resource_associated_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_associated_exception() :: #{binary() => any()}.

%% Example:
%% device_event() :: #{
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type device_event() :: #{binary() => any()}.

%% Example:
%% create_proactive_join() :: #{
%%   <<"EnabledByMotion">> := boolean()
%% }
-type create_proactive_join() :: #{binary() => any()}.

%% Example:
%% search_contacts_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_contacts_request() :: #{binary() => any()}.

%% Example:
%% proactive_join() :: #{
%%   <<"EnabledByMotion">> => boolean()
%% }
-type proactive_join() :: #{binary() => any()}.

%% Example:
%% create_room_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProviderCalendarId">> => string(),
%%   <<"RoomName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_room_request() :: #{binary() => any()}.

%% Example:
%% list_business_report_schedules_response() :: #{
%%   <<"BusinessReportSchedules">> => list(business_report_schedule()()),
%%   <<"NextToken">> => string()
%% }
-type list_business_report_schedules_response() :: #{binary() => any()}.

%% Example:
%% create_conference_provider_response() :: #{
%%   <<"ConferenceProviderArn">> => string()
%% }
-type create_conference_provider_response() :: #{binary() => any()}.

%% Example:
%% business_report_schedule() :: #{
%%   <<"ContentRange">> => business_report_content_range(),
%%   <<"Format">> => list(any()),
%%   <<"LastBusinessReport">> => business_report(),
%%   <<"Recurrence">> => business_report_recurrence(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"ScheduleArn">> => string(),
%%   <<"ScheduleName">> => string()
%% }
-type business_report_schedule() :: #{binary() => any()}.

%% Example:
%% address_book_data() :: #{
%%   <<"AddressBookArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type address_book_data() :: #{binary() => any()}.

%% Example:
%% update_gateway_group_response() :: #{

%% }
-type update_gateway_group_response() :: #{binary() => any()}.

%% Example:
%% create_contact_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FirstName">> := string(),
%%   <<"LastName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()()),
%%   <<"SipAddresses">> => list(sip_address()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_contact_request() :: #{binary() => any()}.

%% Example:
%% delete_business_report_schedule_request() :: #{
%%   <<"ScheduleArn">> := string()
%% }
-type delete_business_report_schedule_request() :: #{binary() => any()}.

%% Example:
%% delete_gateway_group_request() :: #{
%%   <<"GatewayGroupArn">> := string()
%% }
-type delete_gateway_group_request() :: #{binary() => any()}.

%% Example:
%% delete_conference_provider_request() :: #{
%%   <<"ConferenceProviderArn">> := string()
%% }
-type delete_conference_provider_request() :: #{binary() => any()}.

%% Example:
%% update_gateway_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GatewayGroupArn">> := string(),
%%   <<"Name">> => string()
%% }
-type update_gateway_group_request() :: #{binary() => any()}.

%% Example:
%% business_report_content_range() :: #{
%%   <<"Interval">> => list(any())
%% }
-type business_report_content_range() :: #{binary() => any()}.

%% Example:
%% category() :: #{
%%   <<"CategoryId">> => float(),
%%   <<"CategoryName">> => string()
%% }
-type category() :: #{binary() => any()}.

%% Example:
%% associate_skill_with_skill_group_response() :: #{

%% }
-type associate_skill_with_skill_group_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% search_skill_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SkillGroups">> => list(skill_group_data()()),
%%   <<"TotalCount">> => integer()
%% }
-type search_skill_groups_response() :: #{binary() => any()}.

%% Example:
%% skill_not_linked_exception() :: #{
%%   <<"Message">> => string()
%% }
-type skill_not_linked_exception() :: #{binary() => any()}.

%% Example:
%% start_smart_home_appliance_discovery_response() :: #{

%% }
-type start_smart_home_appliance_discovery_response() :: #{binary() => any()}.

%% Example:
%% resolve_room_response() :: #{
%%   <<"RoomArn">> => string(),
%%   <<"RoomName">> => string(),
%%   <<"RoomSkillParameters">> => list(room_skill_parameter()())
%% }
-type resolve_room_response() :: #{binary() => any()}.

%% Example:
%% associate_skill_with_skill_group_request() :: #{
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type associate_skill_with_skill_group_request() :: #{binary() => any()}.

%% Example:
%% associate_skill_group_with_room_request() :: #{
%%   <<"RoomArn">> => string(),
%%   <<"SkillGroupArn">> => string()
%% }
-type associate_skill_group_with_room_request() :: #{binary() => any()}.

%% Example:
%% list_skills_store_skills_by_category_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SkillsStoreSkills">> => list(skills_store_skill()())
%% }
-type list_skills_store_skills_by_category_response() :: #{binary() => any()}.

%% Example:
%% skill_details() :: #{
%%   <<"BulletPoints">> => list(string()()),
%%   <<"DeveloperInfo">> => developer_info(),
%%   <<"EndUserLicenseAgreement">> => string(),
%%   <<"GenericKeywords">> => list(string()()),
%%   <<"InvocationPhrase">> => string(),
%%   <<"NewInThisVersionBulletPoints">> => list(string()()),
%%   <<"ProductDescription">> => string(),
%%   <<"ReleaseDate">> => string(),
%%   <<"Reviews">> => map(),
%%   <<"SkillTypes">> => list(string()())
%% }
-type skill_details() :: #{binary() => any()}.

%% Example:
%% content() :: #{
%%   <<"AudioList">> => list(audio()()),
%%   <<"SsmlList">> => list(ssml()()),
%%   <<"TextList">> => list(text()())
%% }
-type content() :: #{binary() => any()}.

%% Example:
%% register_avs_device_response() :: #{
%%   <<"DeviceArn">> => string()
%% }
-type register_avs_device_response() :: #{binary() => any()}.

%% Example:
%% disassociate_device_from_room_response() :: #{

%% }
-type disassociate_device_from_room_response() :: #{binary() => any()}.

%% Example:
%% start_device_sync_response() :: #{

%% }
-type start_device_sync_response() :: #{binary() => any()}.

%% Example:
%% delete_conference_provider_response() :: #{

%% }
-type delete_conference_provider_response() :: #{binary() => any()}.

%% Example:
%% revoke_invitation_response() :: #{

%% }
-type revoke_invitation_response() :: #{binary() => any()}.

%% Example:
%% meeting_setting() :: #{
%%   <<"RequirePin">> => list(any())
%% }
-type meeting_setting() :: #{binary() => any()}.

%% Example:
%% delete_skill_group_request() :: #{
%%   <<"SkillGroupArn">> => string()
%% }
-type delete_skill_group_request() :: #{binary() => any()}.

%% Example:
%% ssml() :: #{
%%   <<"Locale">> => list(any()),
%%   <<"Value">> => string()
%% }
-type ssml() :: #{binary() => any()}.

%% Example:
%% device() :: #{
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"DeviceSerialNumber">> => string(),
%%   <<"DeviceStatus">> => list(any()),
%%   <<"DeviceStatusInfo">> => device_status_info(),
%%   <<"DeviceType">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"NetworkProfileInfo">> => device_network_profile_info(),
%%   <<"RoomArn">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type device() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% associate_device_with_network_profile_request() :: #{
%%   <<"DeviceArn">> := string(),
%%   <<"NetworkProfileArn">> := string()
%% }
-type associate_device_with_network_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_business_report_schedule_response() :: #{

%% }
-type delete_business_report_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_room_skill_parameter_request() :: #{
%%   <<"ParameterKey">> := string(),
%%   <<"RoomArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type delete_room_skill_parameter_request() :: #{binary() => any()}.

%% Example:
%% resolve_room_request() :: #{
%%   <<"SkillId">> := string(),
%%   <<"UserId">> := string()
%% }
-type resolve_room_request() :: #{binary() => any()}.

%% Example:
%% list_skills_store_categories_response() :: #{
%%   <<"CategoryList">> => list(category()()),
%%   <<"NextToken">> => string()
%% }
-type list_skills_store_categories_response() :: #{binary() => any()}.

%% Example:
%% get_room_skill_parameter_request() :: #{
%%   <<"ParameterKey">> := string(),
%%   <<"RoomArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type get_room_skill_parameter_request() :: #{binary() => any()}.

%% Example:
%% get_contact_response() :: #{
%%   <<"Contact">> => contact()
%% }
-type get_contact_response() :: #{binary() => any()}.

%% Example:
%% list_gateways_response() :: #{
%%   <<"Gateways">> => list(gateway_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_gateways_response() :: #{binary() => any()}.

%% Example:
%% update_room_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProviderCalendarId">> => string(),
%%   <<"RoomArn">> => string(),
%%   <<"RoomName">> => string()
%% }
-type update_room_request() :: #{binary() => any()}.

%% Example:
%% get_conference_preference_request() :: #{

%% }
-type get_conference_preference_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_group_response() :: #{
%%   <<"GatewayGroup">> => gateway_group()
%% }
-type get_gateway_group_response() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"UserArn">> => string()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% create_gateway_group_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_gateway_group_request() :: #{binary() => any()}.

%% Example:
%% get_conference_preference_response() :: #{
%%   <<"Preference">> => conference_preference()
%% }
-type get_conference_preference_response() :: #{binary() => any()}.

%% Example:
%% profile_data() :: #{
%%   <<"Address">> => string(),
%%   <<"DistanceUnit">> => list(any()),
%%   <<"IsDefault">> => boolean(),
%%   <<"Locale">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"TemperatureUnit">> => list(any()),
%%   <<"Timezone">> => string(),
%%   <<"WakeWord">> => list(any())
%% }
-type profile_data() :: #{binary() => any()}.

%% Example:
%% associate_contact_with_address_book_response() :: #{

%% }
-type associate_contact_with_address_book_response() :: #{binary() => any()}.

%% Example:
%% create_instant_booking() :: #{
%%   <<"DurationInMinutes">> => integer(),
%%   <<"Enabled">> => boolean()
%% }
-type create_instant_booking() :: #{binary() => any()}.

%% Example:
%% start_smart_home_appliance_discovery_request() :: #{
%%   <<"RoomArn">> := string()
%% }
-type start_smart_home_appliance_discovery_request() :: #{binary() => any()}.

%% Example:
%% get_room_skill_parameter_response() :: #{
%%   <<"RoomSkillParameter">> => room_skill_parameter()
%% }
-type get_room_skill_parameter_response() :: #{binary() => any()}.

%% Example:
%% approve_skill_request() :: #{
%%   <<"SkillId">> := string()
%% }
-type approve_skill_request() :: #{binary() => any()}.

%% Example:
%% p_s_t_n_dial_in() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"OneClickIdDelay">> => string(),
%%   <<"OneClickPinDelay">> => string(),
%%   <<"PhoneNumber">> => string()
%% }
-type p_s_t_n_dial_in() :: #{binary() => any()}.

%% Example:
%% invalid_secrets_manager_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_secrets_manager_resource_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_skill_from_skill_group_request() :: #{
%%   <<"SkillGroupArn">> => string(),
%%   <<"SkillId">> := string()
%% }
-type disassociate_skill_from_skill_group_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_group_request() :: #{
%%   <<"GatewayGroupArn">> := string()
%% }
-type get_gateway_group_request() :: #{binary() => any()}.

%% Example:
%% create_room_response() :: #{
%%   <<"RoomArn">> => string()
%% }
-type create_room_response() :: #{binary() => any()}.

%% Example:
%% search_devices_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort()())
%% }
-type search_devices_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_request() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type get_gateway_request() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserId">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% get_device_response() :: #{
%%   <<"Device">> => device()
%% }
-type get_device_response() :: #{binary() => any()}.

%% Example:
%% get_skill_group_request() :: #{
%%   <<"SkillGroupArn">> => string()
%% }
-type get_skill_group_request() :: #{binary() => any()}.

%% Example:
%% update_business_report_schedule_request() :: #{
%%   <<"Format">> => list(any()),
%%   <<"Recurrence">> => business_report_recurrence(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"ScheduleArn">> := string(),
%%   <<"ScheduleName">> => string()
%% }
-type update_business_report_schedule_request() :: #{binary() => any()}.

-type approve_skill_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    not_found_exception().

-type associate_contact_with_address_book_errors() ::
    limit_exceeded_exception().

-type associate_device_with_network_profile_errors() ::
    concurrent_modification_exception() | 
    device_not_registered_exception() | 
    not_found_exception().

-type associate_device_with_room_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    device_not_registered_exception().

-type associate_skill_group_with_room_errors() ::
    concurrent_modification_exception().

-type associate_skill_with_skill_group_errors() ::
    skill_not_linked_exception() | 
    concurrent_modification_exception() | 
    not_found_exception().

-type associate_skill_with_users_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type create_address_book_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_business_report_schedule_errors() ::
    already_exists_exception().

-type create_conference_provider_errors() ::
    already_exists_exception().

-type create_contact_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_gateway_group_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_network_profile_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_certificate_authority_exception() | 
    invalid_service_linked_role_state_exception() | 
    already_exists_exception().

-type create_profile_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    already_exists_exception().

-type create_room_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_skill_group_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    already_exists_exception().

-type create_user_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    resource_in_use_exception().

-type delete_address_book_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_business_report_schedule_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_conference_provider_errors() ::
    not_found_exception().

-type delete_contact_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_device_errors() ::
    concurrent_modification_exception() | 
    invalid_certificate_authority_exception() | 
    not_found_exception().

-type delete_device_usage_data_errors() ::
    limit_exceeded_exception() | 
    device_not_registered_exception() | 
    not_found_exception().

-type delete_gateway_group_errors() ::
    resource_associated_exception().

-type delete_network_profile_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    resource_in_use_exception().

-type delete_profile_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_room_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_room_skill_parameter_errors() ::
    concurrent_modification_exception().

-type delete_skill_authorization_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_skill_group_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type delete_user_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type disassociate_device_from_room_errors() ::
    concurrent_modification_exception() | 
    device_not_registered_exception().

-type disassociate_skill_from_skill_group_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type disassociate_skill_from_users_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type disassociate_skill_group_from_room_errors() ::
    concurrent_modification_exception().

-type forget_smart_home_appliances_errors() ::
    not_found_exception().

-type get_address_book_errors() ::
    not_found_exception().

-type get_conference_preference_errors() ::
    not_found_exception().

-type get_conference_provider_errors() ::
    not_found_exception().

-type get_contact_errors() ::
    not_found_exception().

-type get_device_errors() ::
    not_found_exception().

-type get_gateway_errors() ::
    not_found_exception().

-type get_gateway_group_errors() ::
    not_found_exception().

-type get_invitation_configuration_errors() ::
    not_found_exception().

-type get_network_profile_errors() ::
    invalid_secrets_manager_resource_exception() | 
    not_found_exception().

-type get_profile_errors() ::
    not_found_exception().

-type get_room_errors() ::
    not_found_exception().

-type get_room_skill_parameter_errors() ::
    not_found_exception().

-type get_skill_group_errors() ::
    not_found_exception().

-type list_device_events_errors() ::
    not_found_exception().

-type list_smart_home_appliances_errors() ::
    not_found_exception().

-type list_tags_errors() ::
    not_found_exception().

-type put_conference_preference_errors() ::
    not_found_exception().

-type put_invitation_configuration_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type put_room_skill_parameter_errors() ::
    concurrent_modification_exception().

-type put_skill_authorization_errors() ::
    concurrent_modification_exception() | 
    unauthorized_exception().

-type register_avs_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    invalid_device_exception().

-type reject_skill_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type resolve_room_errors() ::
    not_found_exception().

-type revoke_invitation_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type send_announcement_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type send_invitation_errors() ::
    concurrent_modification_exception() | 
    invalid_user_status_exception() | 
    not_found_exception().

-type start_device_sync_errors() ::
    device_not_registered_exception().

-type start_smart_home_appliance_discovery_errors() ::
    not_found_exception().

-type tag_resource_errors() ::
    not_found_exception().

-type untag_resource_errors() ::
    not_found_exception().

-type update_address_book_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    name_in_use_exception().

-type update_business_report_schedule_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type update_conference_provider_errors() ::
    not_found_exception().

-type update_contact_errors() ::
    concurrent_modification_exception() | 
    not_found_exception().

-type update_device_errors() ::
    concurrent_modification_exception() | 
    device_not_registered_exception() | 
    not_found_exception().

-type update_gateway_errors() ::
    not_found_exception() | 
    name_in_use_exception().

-type update_gateway_group_errors() ::
    not_found_exception() | 
    name_in_use_exception().

-type update_network_profile_errors() ::
    invalid_secrets_manager_resource_exception() | 
    concurrent_modification_exception() | 
    invalid_certificate_authority_exception() | 
    not_found_exception() | 
    name_in_use_exception().

-type update_profile_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    name_in_use_exception().

-type update_room_errors() ::
    not_found_exception() | 
    name_in_use_exception().

-type update_skill_group_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    name_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a skill with the organization under the customer's AWS
%% account.
%%
%% If a skill
%% is private, the user implicitly accepts access to this skill during
%% enablement.
-spec approve_skill(aws_client:aws_client(), approve_skill_request()) ->
    {ok, approve_skill_response(), tuple()} |
    {error, any()} |
    {error, approve_skill_errors(), tuple()}.
approve_skill(Client, Input)
  when is_map(Client), is_map(Input) ->
    approve_skill(Client, Input, []).

-spec approve_skill(aws_client:aws_client(), approve_skill_request(), proplists:proplist()) ->
    {ok, approve_skill_response(), tuple()} |
    {error, any()} |
    {error, approve_skill_errors(), tuple()}.
approve_skill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApproveSkill">>, Input, Options).

%% @doc Associates a contact with a given address book.
-spec associate_contact_with_address_book(aws_client:aws_client(), associate_contact_with_address_book_request()) ->
    {ok, associate_contact_with_address_book_response(), tuple()} |
    {error, any()} |
    {error, associate_contact_with_address_book_errors(), tuple()}.
associate_contact_with_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_contact_with_address_book(Client, Input, []).

-spec associate_contact_with_address_book(aws_client:aws_client(), associate_contact_with_address_book_request(), proplists:proplist()) ->
    {ok, associate_contact_with_address_book_response(), tuple()} |
    {error, any()} |
    {error, associate_contact_with_address_book_errors(), tuple()}.
associate_contact_with_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateContactWithAddressBook">>, Input, Options).

%% @doc Associates a device with the specified network profile.
-spec associate_device_with_network_profile(aws_client:aws_client(), associate_device_with_network_profile_request()) ->
    {ok, associate_device_with_network_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_network_profile_errors(), tuple()}.
associate_device_with_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_device_with_network_profile(Client, Input, []).

-spec associate_device_with_network_profile(aws_client:aws_client(), associate_device_with_network_profile_request(), proplists:proplist()) ->
    {ok, associate_device_with_network_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_network_profile_errors(), tuple()}.
associate_device_with_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDeviceWithNetworkProfile">>, Input, Options).

%% @doc Associates a device with a given room.
%%
%% This applies all the settings from the room
%% profile to the device, and all the skills in any skill groups added to
%% that room. This
%% operation requires the device to be online, or else a manual sync is
%% required.
-spec associate_device_with_room(aws_client:aws_client(), associate_device_with_room_request()) ->
    {ok, associate_device_with_room_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_room_errors(), tuple()}.
associate_device_with_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_device_with_room(Client, Input, []).

-spec associate_device_with_room(aws_client:aws_client(), associate_device_with_room_request(), proplists:proplist()) ->
    {ok, associate_device_with_room_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_room_errors(), tuple()}.
associate_device_with_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDeviceWithRoom">>, Input, Options).

%% @doc Associates a skill group with a given room.
%%
%% This enables all skills in the associated
%% skill group on all devices in the room.
-spec associate_skill_group_with_room(aws_client:aws_client(), associate_skill_group_with_room_request()) ->
    {ok, associate_skill_group_with_room_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_group_with_room_errors(), tuple()}.
associate_skill_group_with_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_group_with_room(Client, Input, []).

-spec associate_skill_group_with_room(aws_client:aws_client(), associate_skill_group_with_room_request(), proplists:proplist()) ->
    {ok, associate_skill_group_with_room_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_group_with_room_errors(), tuple()}.
associate_skill_group_with_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillGroupWithRoom">>, Input, Options).

%% @doc Associates a skill with a skill group.
-spec associate_skill_with_skill_group(aws_client:aws_client(), associate_skill_with_skill_group_request()) ->
    {ok, associate_skill_with_skill_group_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_with_skill_group_errors(), tuple()}.
associate_skill_with_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_with_skill_group(Client, Input, []).

-spec associate_skill_with_skill_group(aws_client:aws_client(), associate_skill_with_skill_group_request(), proplists:proplist()) ->
    {ok, associate_skill_with_skill_group_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_with_skill_group_errors(), tuple()}.
associate_skill_with_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillWithSkillGroup">>, Input, Options).

%% @doc Makes a private skill available for enrolled users to enable on their
%% devices.
-spec associate_skill_with_users(aws_client:aws_client(), associate_skill_with_users_request()) ->
    {ok, associate_skill_with_users_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_with_users_errors(), tuple()}.
associate_skill_with_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_with_users(Client, Input, []).

-spec associate_skill_with_users(aws_client:aws_client(), associate_skill_with_users_request(), proplists:proplist()) ->
    {ok, associate_skill_with_users_response(), tuple()} |
    {error, any()} |
    {error, associate_skill_with_users_errors(), tuple()}.
associate_skill_with_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillWithUsers">>, Input, Options).

%% @doc Creates an address book with the specified details.
-spec create_address_book(aws_client:aws_client(), create_address_book_request()) ->
    {ok, create_address_book_response(), tuple()} |
    {error, any()} |
    {error, create_address_book_errors(), tuple()}.
create_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address_book(Client, Input, []).

-spec create_address_book(aws_client:aws_client(), create_address_book_request(), proplists:proplist()) ->
    {ok, create_address_book_response(), tuple()} |
    {error, any()} |
    {error, create_address_book_errors(), tuple()}.
create_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddressBook">>, Input, Options).

%% @doc Creates a recurring schedule for usage reports to deliver to the
%% specified S3
%% location with a specified daily or weekly interval.
-spec create_business_report_schedule(aws_client:aws_client(), create_business_report_schedule_request()) ->
    {ok, create_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_business_report_schedule_errors(), tuple()}.
create_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_business_report_schedule(Client, Input, []).

-spec create_business_report_schedule(aws_client:aws_client(), create_business_report_schedule_request(), proplists:proplist()) ->
    {ok, create_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_business_report_schedule_errors(), tuple()}.
create_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBusinessReportSchedule">>, Input, Options).

%% @doc Adds a new conference provider under the user's AWS account.
-spec create_conference_provider(aws_client:aws_client(), create_conference_provider_request()) ->
    {ok, create_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, create_conference_provider_errors(), tuple()}.
create_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_conference_provider(Client, Input, []).

-spec create_conference_provider(aws_client:aws_client(), create_conference_provider_request(), proplists:proplist()) ->
    {ok, create_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, create_conference_provider_errors(), tuple()}.
create_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConferenceProvider">>, Input, Options).

%% @doc Creates a contact with the specified details.
-spec create_contact(aws_client:aws_client(), create_contact_request()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact(Client, Input, []).

-spec create_contact(aws_client:aws_client(), create_contact_request(), proplists:proplist()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContact">>, Input, Options).

%% @doc Creates a gateway group with the specified details.
-spec create_gateway_group(aws_client:aws_client(), create_gateway_group_request()) ->
    {ok, create_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_group_errors(), tuple()}.
create_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gateway_group(Client, Input, []).

-spec create_gateway_group(aws_client:aws_client(), create_gateway_group_request(), proplists:proplist()) ->
    {ok, create_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_group_errors(), tuple()}.
create_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGatewayGroup">>, Input, Options).

%% @doc Creates a network profile with the specified details.
-spec create_network_profile(aws_client:aws_client(), create_network_profile_request()) ->
    {ok, create_network_profile_response(), tuple()} |
    {error, any()} |
    {error, create_network_profile_errors(), tuple()}.
create_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_profile(Client, Input, []).

-spec create_network_profile(aws_client:aws_client(), create_network_profile_request(), proplists:proplist()) ->
    {ok, create_network_profile_response(), tuple()} |
    {error, any()} |
    {error, create_network_profile_errors(), tuple()}.
create_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkProfile">>, Input, Options).

%% @doc Creates a new room profile with the specified details.
-spec create_profile(aws_client:aws_client(), create_profile_request()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_request(), proplists:proplist()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Creates a room with the specified details.
-spec create_room(aws_client:aws_client(), create_room_request()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_room(Client, Input, []).

-spec create_room(aws_client:aws_client(), create_room_request(), proplists:proplist()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRoom">>, Input, Options).

%% @doc Creates a skill group with a specified name and description.
-spec create_skill_group(aws_client:aws_client(), create_skill_group_request()) ->
    {ok, create_skill_group_response(), tuple()} |
    {error, any()} |
    {error, create_skill_group_errors(), tuple()}.
create_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_skill_group(Client, Input, []).

-spec create_skill_group(aws_client:aws_client(), create_skill_group_request(), proplists:proplist()) ->
    {ok, create_skill_group_response(), tuple()} |
    {error, any()} |
    {error, create_skill_group_errors(), tuple()}.
create_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSkillGroup">>, Input, Options).

%% @doc Creates a user.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an address book by the address book ARN.
-spec delete_address_book(aws_client:aws_client(), delete_address_book_request()) ->
    {ok, delete_address_book_response(), tuple()} |
    {error, any()} |
    {error, delete_address_book_errors(), tuple()}.
delete_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_address_book(Client, Input, []).

-spec delete_address_book(aws_client:aws_client(), delete_address_book_request(), proplists:proplist()) ->
    {ok, delete_address_book_response(), tuple()} |
    {error, any()} |
    {error, delete_address_book_errors(), tuple()}.
delete_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAddressBook">>, Input, Options).

%% @doc Deletes the recurring report delivery schedule with the specified
%% schedule
%% ARN.
-spec delete_business_report_schedule(aws_client:aws_client(), delete_business_report_schedule_request()) ->
    {ok, delete_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_business_report_schedule_errors(), tuple()}.
delete_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_business_report_schedule(Client, Input, []).

-spec delete_business_report_schedule(aws_client:aws_client(), delete_business_report_schedule_request(), proplists:proplist()) ->
    {ok, delete_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_business_report_schedule_errors(), tuple()}.
delete_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBusinessReportSchedule">>, Input, Options).

%% @doc Deletes a conference provider.
-spec delete_conference_provider(aws_client:aws_client(), delete_conference_provider_request()) ->
    {ok, delete_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_conference_provider_errors(), tuple()}.
delete_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conference_provider(Client, Input, []).

-spec delete_conference_provider(aws_client:aws_client(), delete_conference_provider_request(), proplists:proplist()) ->
    {ok, delete_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_conference_provider_errors(), tuple()}.
delete_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConferenceProvider">>, Input, Options).

%% @doc Deletes a contact by the contact ARN.
-spec delete_contact(aws_client:aws_client(), delete_contact_request()) ->
    {ok, delete_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact(Client, Input, []).

-spec delete_contact(aws_client:aws_client(), delete_contact_request(), proplists:proplist()) ->
    {ok, delete_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContact">>, Input, Options).

%% @doc Removes a device from Alexa For Business.
-spec delete_device(aws_client:aws_client(), delete_device_request()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device(Client, Input, []).

-spec delete_device(aws_client:aws_client(), delete_device_request(), proplists:proplist()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevice">>, Input, Options).

%% @doc When this action is called for a specified shared device, it allows
%% authorized users to
%% delete the device's entire previous history of voice input data and
%% associated response
%% data.
%%
%% This action can be called once every 24 hours for a specific shared
%% device.
-spec delete_device_usage_data(aws_client:aws_client(), delete_device_usage_data_request()) ->
    {ok, delete_device_usage_data_response(), tuple()} |
    {error, any()} |
    {error, delete_device_usage_data_errors(), tuple()}.
delete_device_usage_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_usage_data(Client, Input, []).

-spec delete_device_usage_data(aws_client:aws_client(), delete_device_usage_data_request(), proplists:proplist()) ->
    {ok, delete_device_usage_data_response(), tuple()} |
    {error, any()} |
    {error, delete_device_usage_data_errors(), tuple()}.
delete_device_usage_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeviceUsageData">>, Input, Options).

%% @doc Deletes a gateway group.
-spec delete_gateway_group(aws_client:aws_client(), delete_gateway_group_request()) ->
    {ok, delete_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_group_errors(), tuple()}.
delete_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_gateway_group(Client, Input, []).

-spec delete_gateway_group(aws_client:aws_client(), delete_gateway_group_request(), proplists:proplist()) ->
    {ok, delete_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_group_errors(), tuple()}.
delete_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGatewayGroup">>, Input, Options).

%% @doc Deletes a network profile by the network profile ARN.
-spec delete_network_profile(aws_client:aws_client(), delete_network_profile_request()) ->
    {ok, delete_network_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_network_profile_errors(), tuple()}.
delete_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_profile(Client, Input, []).

-spec delete_network_profile(aws_client:aws_client(), delete_network_profile_request(), proplists:proplist()) ->
    {ok, delete_network_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_network_profile_errors(), tuple()}.
delete_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkProfile">>, Input, Options).

%% @doc Deletes a room profile by the profile ARN.
-spec delete_profile(aws_client:aws_client(), delete_profile_request()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).

-spec delete_profile(aws_client:aws_client(), delete_profile_request(), proplists:proplist()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

%% @doc Deletes a room by the room ARN.
-spec delete_room(aws_client:aws_client(), delete_room_request()) ->
    {ok, delete_room_response(), tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_room(Client, Input, []).

-spec delete_room(aws_client:aws_client(), delete_room_request(), proplists:proplist()) ->
    {ok, delete_room_response(), tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRoom">>, Input, Options).

%% @doc Deletes room skill parameter details by room, skill, and parameter
%% key ID.
-spec delete_room_skill_parameter(aws_client:aws_client(), delete_room_skill_parameter_request()) ->
    {ok, delete_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, delete_room_skill_parameter_errors(), tuple()}.
delete_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_room_skill_parameter(Client, Input, []).

-spec delete_room_skill_parameter(aws_client:aws_client(), delete_room_skill_parameter_request(), proplists:proplist()) ->
    {ok, delete_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, delete_room_skill_parameter_errors(), tuple()}.
delete_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRoomSkillParameter">>, Input, Options).

%% @doc Unlinks a third-party account from a skill.
-spec delete_skill_authorization(aws_client:aws_client(), delete_skill_authorization_request()) ->
    {ok, delete_skill_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_skill_authorization_errors(), tuple()}.
delete_skill_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_skill_authorization(Client, Input, []).

-spec delete_skill_authorization(aws_client:aws_client(), delete_skill_authorization_request(), proplists:proplist()) ->
    {ok, delete_skill_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_skill_authorization_errors(), tuple()}.
delete_skill_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSkillAuthorization">>, Input, Options).

%% @doc Deletes a skill group by skill group ARN.
-spec delete_skill_group(aws_client:aws_client(), delete_skill_group_request()) ->
    {ok, delete_skill_group_response(), tuple()} |
    {error, any()} |
    {error, delete_skill_group_errors(), tuple()}.
delete_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_skill_group(Client, Input, []).

-spec delete_skill_group(aws_client:aws_client(), delete_skill_group_request(), proplists:proplist()) ->
    {ok, delete_skill_group_response(), tuple()} |
    {error, any()} |
    {error, delete_skill_group_errors(), tuple()}.
delete_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSkillGroup">>, Input, Options).

%% @doc Deletes a specified user by user ARN and enrollment ARN.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Disassociates a contact from a given address book.
-spec disassociate_contact_from_address_book(aws_client:aws_client(), disassociate_contact_from_address_book_request()) ->
    {ok, disassociate_contact_from_address_book_response(), tuple()} |
    {error, any()}.
disassociate_contact_from_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_contact_from_address_book(Client, Input, []).

-spec disassociate_contact_from_address_book(aws_client:aws_client(), disassociate_contact_from_address_book_request(), proplists:proplist()) ->
    {ok, disassociate_contact_from_address_book_response(), tuple()} |
    {error, any()}.
disassociate_contact_from_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateContactFromAddressBook">>, Input, Options).

%% @doc Disassociates a device from its current room.
%%
%% The device continues to be connected to
%% the Wi-Fi network and is still registered to the account. The device
%% settings and skills
%% are removed from the room.
-spec disassociate_device_from_room(aws_client:aws_client(), disassociate_device_from_room_request()) ->
    {ok, disassociate_device_from_room_response(), tuple()} |
    {error, any()} |
    {error, disassociate_device_from_room_errors(), tuple()}.
disassociate_device_from_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_device_from_room(Client, Input, []).

-spec disassociate_device_from_room(aws_client:aws_client(), disassociate_device_from_room_request(), proplists:proplist()) ->
    {ok, disassociate_device_from_room_response(), tuple()} |
    {error, any()} |
    {error, disassociate_device_from_room_errors(), tuple()}.
disassociate_device_from_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDeviceFromRoom">>, Input, Options).

%% @doc Disassociates a skill from a skill group.
-spec disassociate_skill_from_skill_group(aws_client:aws_client(), disassociate_skill_from_skill_group_request()) ->
    {ok, disassociate_skill_from_skill_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_from_skill_group_errors(), tuple()}.
disassociate_skill_from_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_from_skill_group(Client, Input, []).

-spec disassociate_skill_from_skill_group(aws_client:aws_client(), disassociate_skill_from_skill_group_request(), proplists:proplist()) ->
    {ok, disassociate_skill_from_skill_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_from_skill_group_errors(), tuple()}.
disassociate_skill_from_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillFromSkillGroup">>, Input, Options).

%% @doc Makes a private skill unavailable for enrolled users and prevents
%% them from enabling it
%% on their devices.
-spec disassociate_skill_from_users(aws_client:aws_client(), disassociate_skill_from_users_request()) ->
    {ok, disassociate_skill_from_users_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_from_users_errors(), tuple()}.
disassociate_skill_from_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_from_users(Client, Input, []).

-spec disassociate_skill_from_users(aws_client:aws_client(), disassociate_skill_from_users_request(), proplists:proplist()) ->
    {ok, disassociate_skill_from_users_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_from_users_errors(), tuple()}.
disassociate_skill_from_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillFromUsers">>, Input, Options).

%% @doc Disassociates a skill group from a specified room.
%%
%% This disables all skills in the
%% skill group on all devices in the room.
-spec disassociate_skill_group_from_room(aws_client:aws_client(), disassociate_skill_group_from_room_request()) ->
    {ok, disassociate_skill_group_from_room_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_group_from_room_errors(), tuple()}.
disassociate_skill_group_from_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_group_from_room(Client, Input, []).

-spec disassociate_skill_group_from_room(aws_client:aws_client(), disassociate_skill_group_from_room_request(), proplists:proplist()) ->
    {ok, disassociate_skill_group_from_room_response(), tuple()} |
    {error, any()} |
    {error, disassociate_skill_group_from_room_errors(), tuple()}.
disassociate_skill_group_from_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillGroupFromRoom">>, Input, Options).

%% @doc Forgets smart home appliances associated to a room.
-spec forget_smart_home_appliances(aws_client:aws_client(), forget_smart_home_appliances_request()) ->
    {ok, forget_smart_home_appliances_response(), tuple()} |
    {error, any()} |
    {error, forget_smart_home_appliances_errors(), tuple()}.
forget_smart_home_appliances(Client, Input)
  when is_map(Client), is_map(Input) ->
    forget_smart_home_appliances(Client, Input, []).

-spec forget_smart_home_appliances(aws_client:aws_client(), forget_smart_home_appliances_request(), proplists:proplist()) ->
    {ok, forget_smart_home_appliances_response(), tuple()} |
    {error, any()} |
    {error, forget_smart_home_appliances_errors(), tuple()}.
forget_smart_home_appliances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgetSmartHomeAppliances">>, Input, Options).

%% @doc Gets address the book details by the address book ARN.
-spec get_address_book(aws_client:aws_client(), get_address_book_request()) ->
    {ok, get_address_book_response(), tuple()} |
    {error, any()} |
    {error, get_address_book_errors(), tuple()}.
get_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_address_book(Client, Input, []).

-spec get_address_book(aws_client:aws_client(), get_address_book_request(), proplists:proplist()) ->
    {ok, get_address_book_response(), tuple()} |
    {error, any()} |
    {error, get_address_book_errors(), tuple()}.
get_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddressBook">>, Input, Options).

%% @doc Retrieves the existing conference preferences.
-spec get_conference_preference(aws_client:aws_client(), get_conference_preference_request()) ->
    {ok, get_conference_preference_response(), tuple()} |
    {error, any()} |
    {error, get_conference_preference_errors(), tuple()}.
get_conference_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conference_preference(Client, Input, []).

-spec get_conference_preference(aws_client:aws_client(), get_conference_preference_request(), proplists:proplist()) ->
    {ok, get_conference_preference_response(), tuple()} |
    {error, any()} |
    {error, get_conference_preference_errors(), tuple()}.
get_conference_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConferencePreference">>, Input, Options).

%% @doc Gets details about a specific conference provider.
-spec get_conference_provider(aws_client:aws_client(), get_conference_provider_request()) ->
    {ok, get_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, get_conference_provider_errors(), tuple()}.
get_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conference_provider(Client, Input, []).

-spec get_conference_provider(aws_client:aws_client(), get_conference_provider_request(), proplists:proplist()) ->
    {ok, get_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, get_conference_provider_errors(), tuple()}.
get_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConferenceProvider">>, Input, Options).

%% @doc Gets the contact details by the contact ARN.
-spec get_contact(aws_client:aws_client(), get_contact_request()) ->
    {ok, get_contact_response(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact(Client, Input, []).

-spec get_contact(aws_client:aws_client(), get_contact_request(), proplists:proplist()) ->
    {ok, get_contact_response(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContact">>, Input, Options).

%% @doc Gets the details of a device by device ARN.
-spec get_device(aws_client:aws_client(), get_device_request()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).

-spec get_device(aws_client:aws_client(), get_device_request(), proplists:proplist()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Retrieves the details of a gateway.
-spec get_gateway(aws_client:aws_client(), get_gateway_request()) ->
    {ok, get_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway(Client, Input, []).

-spec get_gateway(aws_client:aws_client(), get_gateway_request(), proplists:proplist()) ->
    {ok, get_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGateway">>, Input, Options).

%% @doc Retrieves the details of a gateway group.
-spec get_gateway_group(aws_client:aws_client(), get_gateway_group_request()) ->
    {ok, get_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_group_errors(), tuple()}.
get_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway_group(Client, Input, []).

-spec get_gateway_group(aws_client:aws_client(), get_gateway_group_request(), proplists:proplist()) ->
    {ok, get_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_group_errors(), tuple()}.
get_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGatewayGroup">>, Input, Options).

%% @doc Retrieves the configured values for the user enrollment invitation
%% email
%% template.
-spec get_invitation_configuration(aws_client:aws_client(), get_invitation_configuration_request()) ->
    {ok, get_invitation_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_invitation_configuration_errors(), tuple()}.
get_invitation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_invitation_configuration(Client, Input, []).

-spec get_invitation_configuration(aws_client:aws_client(), get_invitation_configuration_request(), proplists:proplist()) ->
    {ok, get_invitation_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_invitation_configuration_errors(), tuple()}.
get_invitation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInvitationConfiguration">>, Input, Options).

%% @doc Gets the network profile details by the network profile ARN.
-spec get_network_profile(aws_client:aws_client(), get_network_profile_request()) ->
    {ok, get_network_profile_response(), tuple()} |
    {error, any()} |
    {error, get_network_profile_errors(), tuple()}.
get_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_profile(Client, Input, []).

-spec get_network_profile(aws_client:aws_client(), get_network_profile_request(), proplists:proplist()) ->
    {ok, get_network_profile_response(), tuple()} |
    {error, any()} |
    {error, get_network_profile_errors(), tuple()}.
get_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkProfile">>, Input, Options).

%% @doc Gets the details of a room profile by profile ARN.
-spec get_profile(aws_client:aws_client(), get_profile_request()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile(Client, Input, []).

-spec get_profile(aws_client:aws_client(), get_profile_request(), proplists:proplist()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProfile">>, Input, Options).

%% @doc Gets room details by room ARN.
-spec get_room(aws_client:aws_client(), get_room_request()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_room(Client, Input, []).

-spec get_room(aws_client:aws_client(), get_room_request(), proplists:proplist()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoom">>, Input, Options).

%% @doc Gets room skill parameter details by room, skill, and parameter key
%% ARN.
-spec get_room_skill_parameter(aws_client:aws_client(), get_room_skill_parameter_request()) ->
    {ok, get_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, get_room_skill_parameter_errors(), tuple()}.
get_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_room_skill_parameter(Client, Input, []).

-spec get_room_skill_parameter(aws_client:aws_client(), get_room_skill_parameter_request(), proplists:proplist()) ->
    {ok, get_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, get_room_skill_parameter_errors(), tuple()}.
get_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoomSkillParameter">>, Input, Options).

%% @doc Gets skill group details by skill group ARN.
-spec get_skill_group(aws_client:aws_client(), get_skill_group_request()) ->
    {ok, get_skill_group_response(), tuple()} |
    {error, any()} |
    {error, get_skill_group_errors(), tuple()}.
get_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_skill_group(Client, Input, []).

-spec get_skill_group(aws_client:aws_client(), get_skill_group_request(), proplists:proplist()) ->
    {ok, get_skill_group_response(), tuple()} |
    {error, any()} |
    {error, get_skill_group_errors(), tuple()}.
get_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSkillGroup">>, Input, Options).

%% @doc Lists the details of the schedules that a user configured.
%%
%% A download URL of the report associated with each schedule is returned
%% every time this action is called. A new download URL is returned each
%% time, and is valid for 24 hours.
-spec list_business_report_schedules(aws_client:aws_client(), list_business_report_schedules_request()) ->
    {ok, list_business_report_schedules_response(), tuple()} |
    {error, any()}.
list_business_report_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_business_report_schedules(Client, Input, []).

-spec list_business_report_schedules(aws_client:aws_client(), list_business_report_schedules_request(), proplists:proplist()) ->
    {ok, list_business_report_schedules_response(), tuple()} |
    {error, any()}.
list_business_report_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBusinessReportSchedules">>, Input, Options).

%% @doc Lists conference providers under a specific AWS account.
-spec list_conference_providers(aws_client:aws_client(), list_conference_providers_request()) ->
    {ok, list_conference_providers_response(), tuple()} |
    {error, any()}.
list_conference_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_conference_providers(Client, Input, []).

-spec list_conference_providers(aws_client:aws_client(), list_conference_providers_request(), proplists:proplist()) ->
    {ok, list_conference_providers_response(), tuple()} |
    {error, any()}.
list_conference_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConferenceProviders">>, Input, Options).

%% @doc Lists the device event history, including device connection status,
%% for up to 30
%% days.
-spec list_device_events(aws_client:aws_client(), list_device_events_request()) ->
    {ok, list_device_events_response(), tuple()} |
    {error, any()} |
    {error, list_device_events_errors(), tuple()}.
list_device_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_events(Client, Input, []).

-spec list_device_events(aws_client:aws_client(), list_device_events_request(), proplists:proplist()) ->
    {ok, list_device_events_response(), tuple()} |
    {error, any()} |
    {error, list_device_events_errors(), tuple()}.
list_device_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceEvents">>, Input, Options).

%% @doc Retrieves a list of gateway group summaries.
%%
%% Use GetGatewayGroup to retrieve details of
%% a specific gateway group.
-spec list_gateway_groups(aws_client:aws_client(), list_gateway_groups_request()) ->
    {ok, list_gateway_groups_response(), tuple()} |
    {error, any()}.
list_gateway_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateway_groups(Client, Input, []).

-spec list_gateway_groups(aws_client:aws_client(), list_gateway_groups_request(), proplists:proplist()) ->
    {ok, list_gateway_groups_response(), tuple()} |
    {error, any()}.
list_gateway_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGatewayGroups">>, Input, Options).

%% @doc Retrieves a list of gateway summaries.
%%
%% Use GetGateway to retrieve details of a specific
%% gateway. An optional gateway group ARN can be provided to only retrieve
%% gateway summaries
%% of gateways that are associated with that gateway group ARN.
-spec list_gateways(aws_client:aws_client(), list_gateways_request()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()}.
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).

-spec list_gateways(aws_client:aws_client(), list_gateways_request(), proplists:proplist()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()}.
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc Lists all enabled skills in a specific skill group.
-spec list_skills(aws_client:aws_client(), list_skills_request()) ->
    {ok, list_skills_response(), tuple()} |
    {error, any()}.
list_skills(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills(Client, Input, []).

-spec list_skills(aws_client:aws_client(), list_skills_request(), proplists:proplist()) ->
    {ok, list_skills_response(), tuple()} |
    {error, any()}.
list_skills(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkills">>, Input, Options).

%% @doc Lists all categories in the Alexa skill store.
-spec list_skills_store_categories(aws_client:aws_client(), list_skills_store_categories_request()) ->
    {ok, list_skills_store_categories_response(), tuple()} |
    {error, any()}.
list_skills_store_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills_store_categories(Client, Input, []).

-spec list_skills_store_categories(aws_client:aws_client(), list_skills_store_categories_request(), proplists:proplist()) ->
    {ok, list_skills_store_categories_response(), tuple()} |
    {error, any()}.
list_skills_store_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkillsStoreCategories">>, Input, Options).

%% @doc Lists all skills in the Alexa skill store by category.
-spec list_skills_store_skills_by_category(aws_client:aws_client(), list_skills_store_skills_by_category_request()) ->
    {ok, list_skills_store_skills_by_category_response(), tuple()} |
    {error, any()}.
list_skills_store_skills_by_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills_store_skills_by_category(Client, Input, []).

-spec list_skills_store_skills_by_category(aws_client:aws_client(), list_skills_store_skills_by_category_request(), proplists:proplist()) ->
    {ok, list_skills_store_skills_by_category_response(), tuple()} |
    {error, any()}.
list_skills_store_skills_by_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkillsStoreSkillsByCategory">>, Input, Options).

%% @doc Lists all of the smart home appliances associated with a room.
-spec list_smart_home_appliances(aws_client:aws_client(), list_smart_home_appliances_request()) ->
    {ok, list_smart_home_appliances_response(), tuple()} |
    {error, any()} |
    {error, list_smart_home_appliances_errors(), tuple()}.
list_smart_home_appliances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_smart_home_appliances(Client, Input, []).

-spec list_smart_home_appliances(aws_client:aws_client(), list_smart_home_appliances_request(), proplists:proplist()) ->
    {ok, list_smart_home_appliances_response(), tuple()} |
    {error, any()} |
    {error, list_smart_home_appliances_errors(), tuple()}.
list_smart_home_appliances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSmartHomeAppliances">>, Input, Options).

%% @doc Lists all tags for the specified resource.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Sets the conference preferences on a specific conference provider at
%% the account
%% level.
-spec put_conference_preference(aws_client:aws_client(), put_conference_preference_request()) ->
    {ok, put_conference_preference_response(), tuple()} |
    {error, any()} |
    {error, put_conference_preference_errors(), tuple()}.
put_conference_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_conference_preference(Client, Input, []).

-spec put_conference_preference(aws_client:aws_client(), put_conference_preference_request(), proplists:proplist()) ->
    {ok, put_conference_preference_response(), tuple()} |
    {error, any()} |
    {error, put_conference_preference_errors(), tuple()}.
put_conference_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConferencePreference">>, Input, Options).

%% @doc Configures the email template for the user enrollment invitation with
%% the specified
%% attributes.
-spec put_invitation_configuration(aws_client:aws_client(), put_invitation_configuration_request()) ->
    {ok, put_invitation_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_invitation_configuration_errors(), tuple()}.
put_invitation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_invitation_configuration(Client, Input, []).

-spec put_invitation_configuration(aws_client:aws_client(), put_invitation_configuration_request(), proplists:proplist()) ->
    {ok, put_invitation_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_invitation_configuration_errors(), tuple()}.
put_invitation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInvitationConfiguration">>, Input, Options).

%% @doc Updates room skill parameter details by room, skill, and parameter
%% key ID.
%%
%% Not all
%% skills have a room skill parameter.
-spec put_room_skill_parameter(aws_client:aws_client(), put_room_skill_parameter_request()) ->
    {ok, put_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, put_room_skill_parameter_errors(), tuple()}.
put_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_room_skill_parameter(Client, Input, []).

-spec put_room_skill_parameter(aws_client:aws_client(), put_room_skill_parameter_request(), proplists:proplist()) ->
    {ok, put_room_skill_parameter_response(), tuple()} |
    {error, any()} |
    {error, put_room_skill_parameter_errors(), tuple()}.
put_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRoomSkillParameter">>, Input, Options).

%% @doc Links a user's account to a third-party skill provider.
%%
%% If this API operation is
%% called by an assumed IAM role, the skill being linked must be a private
%% skill. Also, the
%% skill must be owned by the AWS account that assumed the IAM role.
-spec put_skill_authorization(aws_client:aws_client(), put_skill_authorization_request()) ->
    {ok, put_skill_authorization_response(), tuple()} |
    {error, any()} |
    {error, put_skill_authorization_errors(), tuple()}.
put_skill_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_skill_authorization(Client, Input, []).

-spec put_skill_authorization(aws_client:aws_client(), put_skill_authorization_request(), proplists:proplist()) ->
    {ok, put_skill_authorization_response(), tuple()} |
    {error, any()} |
    {error, put_skill_authorization_errors(), tuple()}.
put_skill_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSkillAuthorization">>, Input, Options).

%% @doc Registers an Alexa-enabled device built by an Original Equipment
%% Manufacturer (OEM)
%% using Alexa Voice Service (AVS).
-spec register_avs_device(aws_client:aws_client(), register_avs_device_request()) ->
    {ok, register_avs_device_response(), tuple()} |
    {error, any()} |
    {error, register_avs_device_errors(), tuple()}.
register_avs_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_avs_device(Client, Input, []).

-spec register_avs_device(aws_client:aws_client(), register_avs_device_request(), proplists:proplist()) ->
    {ok, register_avs_device_response(), tuple()} |
    {error, any()} |
    {error, register_avs_device_errors(), tuple()}.
register_avs_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterAVSDevice">>, Input, Options).

%% @doc Disassociates a skill from the organization under a user's AWS
%% account.
%%
%% If the skill
%% is a private skill, it moves to an AcceptStatus of PENDING. Any private or
%% public skill
%% that is rejected can be added later by calling the ApproveSkill API.
-spec reject_skill(aws_client:aws_client(), reject_skill_request()) ->
    {ok, reject_skill_response(), tuple()} |
    {error, any()} |
    {error, reject_skill_errors(), tuple()}.
reject_skill(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_skill(Client, Input, []).

-spec reject_skill(aws_client:aws_client(), reject_skill_request(), proplists:proplist()) ->
    {ok, reject_skill_response(), tuple()} |
    {error, any()} |
    {error, reject_skill_errors(), tuple()}.
reject_skill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectSkill">>, Input, Options).

%% @doc Determines the details for the room from which a skill request was
%% invoked.
%%
%% This
%% operation is used by skill developers.
%%
%% To query ResolveRoom from an Alexa skill, the skill ID needs to be
%% authorized. When
%% the skill is using an AWS Lambda function, the skill is automatically
%% authorized when you
%% publish your skill as a private skill to your AWS account. Skills that are
%% hosted using a
%% custom web service must be manually authorized. To get your skill
%% authorized, contact AWS
%% Support with your AWS account ID that queries the ResolveRoom API and
%% skill ID.
-spec resolve_room(aws_client:aws_client(), resolve_room_request()) ->
    {ok, resolve_room_response(), tuple()} |
    {error, any()} |
    {error, resolve_room_errors(), tuple()}.
resolve_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_room(Client, Input, []).

-spec resolve_room(aws_client:aws_client(), resolve_room_request(), proplists:proplist()) ->
    {ok, resolve_room_response(), tuple()} |
    {error, any()} |
    {error, resolve_room_errors(), tuple()}.
resolve_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveRoom">>, Input, Options).

%% @doc Revokes an invitation and invalidates the enrollment URL.
-spec revoke_invitation(aws_client:aws_client(), revoke_invitation_request()) ->
    {ok, revoke_invitation_response(), tuple()} |
    {error, any()} |
    {error, revoke_invitation_errors(), tuple()}.
revoke_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_invitation(Client, Input, []).

-spec revoke_invitation(aws_client:aws_client(), revoke_invitation_request(), proplists:proplist()) ->
    {ok, revoke_invitation_response(), tuple()} |
    {error, any()} |
    {error, revoke_invitation_errors(), tuple()}.
revoke_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeInvitation">>, Input, Options).

%% @doc Searches address books and lists the ones that meet a set of filter
%% and sort
%% criteria.
-spec search_address_books(aws_client:aws_client(), search_address_books_request()) ->
    {ok, search_address_books_response(), tuple()} |
    {error, any()}.
search_address_books(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_address_books(Client, Input, []).

-spec search_address_books(aws_client:aws_client(), search_address_books_request(), proplists:proplist()) ->
    {ok, search_address_books_response(), tuple()} |
    {error, any()}.
search_address_books(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchAddressBooks">>, Input, Options).

%% @doc Searches contacts and lists the ones that meet a set of filter and
%% sort
%% criteria.
-spec search_contacts(aws_client:aws_client(), search_contacts_request()) ->
    {ok, search_contacts_response(), tuple()} |
    {error, any()}.
search_contacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_contacts(Client, Input, []).

-spec search_contacts(aws_client:aws_client(), search_contacts_request(), proplists:proplist()) ->
    {ok, search_contacts_response(), tuple()} |
    {error, any()}.
search_contacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchContacts">>, Input, Options).

%% @doc Searches devices and lists the ones that meet a set of filter
%% criteria.
-spec search_devices(aws_client:aws_client(), search_devices_request()) ->
    {ok, search_devices_response(), tuple()} |
    {error, any()}.
search_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_devices(Client, Input, []).

-spec search_devices(aws_client:aws_client(), search_devices_request(), proplists:proplist()) ->
    {ok, search_devices_response(), tuple()} |
    {error, any()}.
search_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchDevices">>, Input, Options).

%% @doc Searches network profiles and lists the ones that meet a set of
%% filter and sort
%% criteria.
-spec search_network_profiles(aws_client:aws_client(), search_network_profiles_request()) ->
    {ok, search_network_profiles_response(), tuple()} |
    {error, any()}.
search_network_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_network_profiles(Client, Input, []).

-spec search_network_profiles(aws_client:aws_client(), search_network_profiles_request(), proplists:proplist()) ->
    {ok, search_network_profiles_response(), tuple()} |
    {error, any()}.
search_network_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchNetworkProfiles">>, Input, Options).

%% @doc Searches room profiles and lists the ones that meet a set of filter
%% criteria.
-spec search_profiles(aws_client:aws_client(), search_profiles_request()) ->
    {ok, search_profiles_response(), tuple()} |
    {error, any()}.
search_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_profiles(Client, Input, []).

-spec search_profiles(aws_client:aws_client(), search_profiles_request(), proplists:proplist()) ->
    {ok, search_profiles_response(), tuple()} |
    {error, any()}.
search_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProfiles">>, Input, Options).

%% @doc Searches rooms and lists the ones that meet a set of filter and sort
%% criteria.
-spec search_rooms(aws_client:aws_client(), search_rooms_request()) ->
    {ok, search_rooms_response(), tuple()} |
    {error, any()}.
search_rooms(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_rooms(Client, Input, []).

-spec search_rooms(aws_client:aws_client(), search_rooms_request(), proplists:proplist()) ->
    {ok, search_rooms_response(), tuple()} |
    {error, any()}.
search_rooms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchRooms">>, Input, Options).

%% @doc Searches skill groups and lists the ones that meet a set of filter
%% and sort
%% criteria.
-spec search_skill_groups(aws_client:aws_client(), search_skill_groups_request()) ->
    {ok, search_skill_groups_response(), tuple()} |
    {error, any()}.
search_skill_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_skill_groups(Client, Input, []).

-spec search_skill_groups(aws_client:aws_client(), search_skill_groups_request(), proplists:proplist()) ->
    {ok, search_skill_groups_response(), tuple()} |
    {error, any()}.
search_skill_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSkillGroups">>, Input, Options).

%% @doc Searches users and lists the ones that meet a set of filter and sort
%% criteria.
-spec search_users(aws_client:aws_client(), search_users_request()) ->
    {ok, search_users_response(), tuple()} |
    {error, any()}.
search_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_users(Client, Input, []).

-spec search_users(aws_client:aws_client(), search_users_request(), proplists:proplist()) ->
    {ok, search_users_response(), tuple()} |
    {error, any()}.
search_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchUsers">>, Input, Options).

%% @doc Triggers an asynchronous flow to send text, SSML, or audio
%% announcements to rooms that
%% are identified by a search or filter.
-spec send_announcement(aws_client:aws_client(), send_announcement_request()) ->
    {ok, send_announcement_response(), tuple()} |
    {error, any()} |
    {error, send_announcement_errors(), tuple()}.
send_announcement(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_announcement(Client, Input, []).

-spec send_announcement(aws_client:aws_client(), send_announcement_request(), proplists:proplist()) ->
    {ok, send_announcement_response(), tuple()} |
    {error, any()} |
    {error, send_announcement_errors(), tuple()}.
send_announcement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAnnouncement">>, Input, Options).

%% @doc Sends an enrollment invitation email with a URL to a user.
%%
%% The URL is valid for 30
%% days or until you call this operation again, whichever comes first.
-spec send_invitation(aws_client:aws_client(), send_invitation_request()) ->
    {ok, send_invitation_response(), tuple()} |
    {error, any()} |
    {error, send_invitation_errors(), tuple()}.
send_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_invitation(Client, Input, []).

-spec send_invitation(aws_client:aws_client(), send_invitation_request(), proplists:proplist()) ->
    {ok, send_invitation_response(), tuple()} |
    {error, any()} |
    {error, send_invitation_errors(), tuple()}.
send_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendInvitation">>, Input, Options).

%% @doc Resets a device and its account to the known default settings.
%%
%% This clears all
%% information and settings set by previous users in the following ways:
%%
%% Bluetooth - This unpairs all bluetooth devices paired with your echo
%% device.
%%
%% Volume - This resets the echo device's volume to the default value.
%%
%% Notifications - This clears all notifications from your echo device.
%%
%% Lists - This clears all to-do items from your echo device.
%%
%% Settings - This internally syncs the room's profile (if the device is
%% assigned to
%% a room), contacts, address books, delegation access for account linking,
%% and
%% communications (if enabled on the room profile).
-spec start_device_sync(aws_client:aws_client(), start_device_sync_request()) ->
    {ok, start_device_sync_response(), tuple()} |
    {error, any()} |
    {error, start_device_sync_errors(), tuple()}.
start_device_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_device_sync(Client, Input, []).

-spec start_device_sync(aws_client:aws_client(), start_device_sync_request(), proplists:proplist()) ->
    {ok, start_device_sync_response(), tuple()} |
    {error, any()} |
    {error, start_device_sync_errors(), tuple()}.
start_device_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeviceSync">>, Input, Options).

%% @doc Initiates the discovery of any smart home appliances associated with
%% the
%% room.
-spec start_smart_home_appliance_discovery(aws_client:aws_client(), start_smart_home_appliance_discovery_request()) ->
    {ok, start_smart_home_appliance_discovery_response(), tuple()} |
    {error, any()} |
    {error, start_smart_home_appliance_discovery_errors(), tuple()}.
start_smart_home_appliance_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_smart_home_appliance_discovery(Client, Input, []).

-spec start_smart_home_appliance_discovery(aws_client:aws_client(), start_smart_home_appliance_discovery_request(), proplists:proplist()) ->
    {ok, start_smart_home_appliance_discovery_response(), tuple()} |
    {error, any()} |
    {error, start_smart_home_appliance_discovery_errors(), tuple()}.
start_smart_home_appliance_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSmartHomeApplianceDiscovery">>, Input, Options).

%% @doc Adds metadata tags to a specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes metadata tags from a specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates address book details by the address book ARN.
-spec update_address_book(aws_client:aws_client(), update_address_book_request()) ->
    {ok, update_address_book_response(), tuple()} |
    {error, any()} |
    {error, update_address_book_errors(), tuple()}.
update_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_address_book(Client, Input, []).

-spec update_address_book(aws_client:aws_client(), update_address_book_request(), proplists:proplist()) ->
    {ok, update_address_book_response(), tuple()} |
    {error, any()} |
    {error, update_address_book_errors(), tuple()}.
update_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAddressBook">>, Input, Options).

%% @doc Updates the configuration of the report delivery schedule with the
%% specified schedule
%% ARN.
-spec update_business_report_schedule(aws_client:aws_client(), update_business_report_schedule_request()) ->
    {ok, update_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_business_report_schedule_errors(), tuple()}.
update_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_business_report_schedule(Client, Input, []).

-spec update_business_report_schedule(aws_client:aws_client(), update_business_report_schedule_request(), proplists:proplist()) ->
    {ok, update_business_report_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_business_report_schedule_errors(), tuple()}.
update_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBusinessReportSchedule">>, Input, Options).

%% @doc Updates an existing conference provider's settings.
-spec update_conference_provider(aws_client:aws_client(), update_conference_provider_request()) ->
    {ok, update_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, update_conference_provider_errors(), tuple()}.
update_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_conference_provider(Client, Input, []).

-spec update_conference_provider(aws_client:aws_client(), update_conference_provider_request(), proplists:proplist()) ->
    {ok, update_conference_provider_response(), tuple()} |
    {error, any()} |
    {error, update_conference_provider_errors(), tuple()}.
update_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConferenceProvider">>, Input, Options).

%% @doc Updates the contact details by the contact ARN.
-spec update_contact(aws_client:aws_client(), update_contact_request()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact(Client, Input, []).

-spec update_contact(aws_client:aws_client(), update_contact_request(), proplists:proplist()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContact">>, Input, Options).

%% @doc Updates the device name by device ARN.
-spec update_device(aws_client:aws_client(), update_device_request()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device(Client, Input, []).

-spec update_device(aws_client:aws_client(), update_device_request(), proplists:proplist()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevice">>, Input, Options).

%% @doc Updates the details of a gateway.
%%
%% If any optional field is not provided, the existing
%% corresponding value is left unmodified.
-spec update_gateway(aws_client:aws_client(), update_gateway_request()) ->
    {ok, update_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway(Client, Input, []).

-spec update_gateway(aws_client:aws_client(), update_gateway_request(), proplists:proplist()) ->
    {ok, update_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGateway">>, Input, Options).

%% @doc Updates the details of a gateway group.
%%
%% If any optional field is not provided, the
%% existing corresponding value is left unmodified.
-spec update_gateway_group(aws_client:aws_client(), update_gateway_group_request()) ->
    {ok, update_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_group_errors(), tuple()}.
update_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_group(Client, Input, []).

-spec update_gateway_group(aws_client:aws_client(), update_gateway_group_request(), proplists:proplist()) ->
    {ok, update_gateway_group_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_group_errors(), tuple()}.
update_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewayGroup">>, Input, Options).

%% @doc Updates a network profile by the network profile ARN.
-spec update_network_profile(aws_client:aws_client(), update_network_profile_request()) ->
    {ok, update_network_profile_response(), tuple()} |
    {error, any()} |
    {error, update_network_profile_errors(), tuple()}.
update_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_network_profile(Client, Input, []).

-spec update_network_profile(aws_client:aws_client(), update_network_profile_request(), proplists:proplist()) ->
    {ok, update_network_profile_response(), tuple()} |
    {error, any()} |
    {error, update_network_profile_errors(), tuple()}.
update_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNetworkProfile">>, Input, Options).

%% @doc Updates an existing room profile by room profile ARN.
-spec update_profile(aws_client:aws_client(), update_profile_request()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).

-spec update_profile(aws_client:aws_client(), update_profile_request(), proplists:proplist()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates room details by room ARN.
-spec update_room(aws_client:aws_client(), update_room_request()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_room(Client, Input, []).

-spec update_room(aws_client:aws_client(), update_room_request(), proplists:proplist()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoom">>, Input, Options).

%% @doc Updates skill group details by skill group ARN.
-spec update_skill_group(aws_client:aws_client(), update_skill_group_request()) ->
    {ok, update_skill_group_response(), tuple()} |
    {error, any()} |
    {error, update_skill_group_errors(), tuple()}.
update_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_skill_group(Client, Input, []).

-spec update_skill_group(aws_client:aws_client(), update_skill_group_request(), proplists:proplist()) ->
    {ok, update_skill_group_response(), tuple()} |
    {error, any()} |
    {error, update_skill_group_errors(), tuple()}.
update_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSkillGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"a4b">>},
    Host = build_host(<<"a4b">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AlexaForBusiness.", Action/binary>>}
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
