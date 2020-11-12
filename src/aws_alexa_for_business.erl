%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Alexa for Business helps you use Alexa in your organization.
%%
%% Alexa for Business provides you with the tools to manage Alexa devices,
%% enroll your users, and assign skills, at scale. You can build your own
%% context-aware voice skills using the Alexa Skills Kit and the Alexa for
%% Business API operations. You can also make these available as private
%% skills for your organization. Alexa for Business makes it efficient to
%% voice-enable your products and services, thus providing context-aware
%% voice experiences for your customers. Device makers building with the
%% Alexa Voice Service (AVS) can create fully integrated solutions, register
%% their products with Alexa for Business, and manage them as shared devices
%% in their organization.
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
         register_a_v_s_device/2,
         register_a_v_s_device/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a skill with the organization under the customer's AWS
%% account.
%%
%% If a skill is private, the user implicitly accepts access to this skill
%% during enablement.
approve_skill(Client, Input)
  when is_map(Client), is_map(Input) ->
    approve_skill(Client, Input, []).
approve_skill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApproveSkill">>, Input, Options).

%% @doc Associates a contact with a given address book.
associate_contact_with_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_contact_with_address_book(Client, Input, []).
associate_contact_with_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateContactWithAddressBook">>, Input, Options).

%% @doc Associates a device with the specified network profile.
associate_device_with_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_device_with_network_profile(Client, Input, []).
associate_device_with_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDeviceWithNetworkProfile">>, Input, Options).

%% @doc Associates a device with a given room.
%%
%% This applies all the settings from the room profile to the device, and all
%% the skills in any skill groups added to that room. This operation requires
%% the device to be online, or else a manual sync is required.
associate_device_with_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_device_with_room(Client, Input, []).
associate_device_with_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDeviceWithRoom">>, Input, Options).

%% @doc Associates a skill group with a given room.
%%
%% This enables all skills in the associated skill group on all devices in
%% the room.
associate_skill_group_with_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_group_with_room(Client, Input, []).
associate_skill_group_with_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillGroupWithRoom">>, Input, Options).

%% @doc Associates a skill with a skill group.
associate_skill_with_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_with_skill_group(Client, Input, []).
associate_skill_with_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillWithSkillGroup">>, Input, Options).

%% @doc Makes a private skill available for enrolled users to enable on their
%% devices.
associate_skill_with_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_skill_with_users(Client, Input, []).
associate_skill_with_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSkillWithUsers">>, Input, Options).

%% @doc Creates an address book with the specified details.
create_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address_book(Client, Input, []).
create_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddressBook">>, Input, Options).

%% @doc Creates a recurring schedule for usage reports to deliver to the
%% specified S3 location with a specified daily or weekly interval.
create_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_business_report_schedule(Client, Input, []).
create_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBusinessReportSchedule">>, Input, Options).

%% @doc Adds a new conference provider under the user's AWS account.
create_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_conference_provider(Client, Input, []).
create_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConferenceProvider">>, Input, Options).

%% @doc Creates a contact with the specified details.
create_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact(Client, Input, []).
create_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContact">>, Input, Options).

%% @doc Creates a gateway group with the specified details.
create_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gateway_group(Client, Input, []).
create_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGatewayGroup">>, Input, Options).

%% @doc Creates a network profile with the specified details.
create_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_profile(Client, Input, []).
create_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkProfile">>, Input, Options).

%% @doc Creates a new room profile with the specified details.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Creates a room with the specified details.
create_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_room(Client, Input, []).
create_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRoom">>, Input, Options).

%% @doc Creates a skill group with a specified name and description.
create_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_skill_group(Client, Input, []).
create_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSkillGroup">>, Input, Options).

%% @doc Creates a user.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an address book by the address book ARN.
delete_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_address_book(Client, Input, []).
delete_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAddressBook">>, Input, Options).

%% @doc Deletes the recurring report delivery schedule with the specified
%% schedule ARN.
delete_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_business_report_schedule(Client, Input, []).
delete_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBusinessReportSchedule">>, Input, Options).

%% @doc Deletes a conference provider.
delete_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conference_provider(Client, Input, []).
delete_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConferenceProvider">>, Input, Options).

%% @doc Deletes a contact by the contact ARN.
delete_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact(Client, Input, []).
delete_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContact">>, Input, Options).

%% @doc Removes a device from Alexa For Business.
delete_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device(Client, Input, []).
delete_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevice">>, Input, Options).

%% @doc When this action is called for a specified shared device, it allows
%% authorized users to delete the device's entire previous history of voice
%% input data and associated response data.
%%
%% This action can be called once every 24 hours for a specific shared
%% device.
delete_device_usage_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_usage_data(Client, Input, []).
delete_device_usage_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeviceUsageData">>, Input, Options).

%% @doc Deletes a gateway group.
delete_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_gateway_group(Client, Input, []).
delete_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGatewayGroup">>, Input, Options).

%% @doc Deletes a network profile by the network profile ARN.
delete_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_profile(Client, Input, []).
delete_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkProfile">>, Input, Options).

%% @doc Deletes a room profile by the profile ARN.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

%% @doc Deletes a room by the room ARN.
delete_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_room(Client, Input, []).
delete_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRoom">>, Input, Options).

%% @doc Deletes room skill parameter details by room, skill, and parameter
%% key ID.
delete_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_room_skill_parameter(Client, Input, []).
delete_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRoomSkillParameter">>, Input, Options).

%% @doc Unlinks a third-party account from a skill.
delete_skill_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_skill_authorization(Client, Input, []).
delete_skill_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSkillAuthorization">>, Input, Options).

%% @doc Deletes a skill group by skill group ARN.
delete_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_skill_group(Client, Input, []).
delete_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSkillGroup">>, Input, Options).

%% @doc Deletes a specified user by user ARN and enrollment ARN.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Disassociates a contact from a given address book.
disassociate_contact_from_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_contact_from_address_book(Client, Input, []).
disassociate_contact_from_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateContactFromAddressBook">>, Input, Options).

%% @doc Disassociates a device from its current room.
%%
%% The device continues to be connected to the Wi-Fi network and is still
%% registered to the account. The device settings and skills are removed from
%% the room.
disassociate_device_from_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_device_from_room(Client, Input, []).
disassociate_device_from_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDeviceFromRoom">>, Input, Options).

%% @doc Disassociates a skill from a skill group.
disassociate_skill_from_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_from_skill_group(Client, Input, []).
disassociate_skill_from_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillFromSkillGroup">>, Input, Options).

%% @doc Makes a private skill unavailable for enrolled users and prevents
%% them from enabling it on their devices.
disassociate_skill_from_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_from_users(Client, Input, []).
disassociate_skill_from_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillFromUsers">>, Input, Options).

%% @doc Disassociates a skill group from a specified room.
%%
%% This disables all skills in the skill group on all devices in the room.
disassociate_skill_group_from_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_skill_group_from_room(Client, Input, []).
disassociate_skill_group_from_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSkillGroupFromRoom">>, Input, Options).

%% @doc Forgets smart home appliances associated to a room.
forget_smart_home_appliances(Client, Input)
  when is_map(Client), is_map(Input) ->
    forget_smart_home_appliances(Client, Input, []).
forget_smart_home_appliances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgetSmartHomeAppliances">>, Input, Options).

%% @doc Gets address the book details by the address book ARN.
get_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_address_book(Client, Input, []).
get_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddressBook">>, Input, Options).

%% @doc Retrieves the existing conference preferences.
get_conference_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conference_preference(Client, Input, []).
get_conference_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConferencePreference">>, Input, Options).

%% @doc Gets details about a specific conference provider.
get_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conference_provider(Client, Input, []).
get_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConferenceProvider">>, Input, Options).

%% @doc Gets the contact details by the contact ARN.
get_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact(Client, Input, []).
get_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContact">>, Input, Options).

%% @doc Gets the details of a device by device ARN.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Retrieves the details of a gateway.
get_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway(Client, Input, []).
get_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGateway">>, Input, Options).

%% @doc Retrieves the details of a gateway group.
get_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway_group(Client, Input, []).
get_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGatewayGroup">>, Input, Options).

%% @doc Retrieves the configured values for the user enrollment invitation
%% email template.
get_invitation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_invitation_configuration(Client, Input, []).
get_invitation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInvitationConfiguration">>, Input, Options).

%% @doc Gets the network profile details by the network profile ARN.
get_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_profile(Client, Input, []).
get_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkProfile">>, Input, Options).

%% @doc Gets the details of a room profile by profile ARN.
get_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile(Client, Input, []).
get_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProfile">>, Input, Options).

%% @doc Gets room details by room ARN.
get_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_room(Client, Input, []).
get_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoom">>, Input, Options).

%% @doc Gets room skill parameter details by room, skill, and parameter key
%% ARN.
get_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_room_skill_parameter(Client, Input, []).
get_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoomSkillParameter">>, Input, Options).

%% @doc Gets skill group details by skill group ARN.
get_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_skill_group(Client, Input, []).
get_skill_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSkillGroup">>, Input, Options).

%% @doc Lists the details of the schedules that a user configured.
%%
%% A download URL of the report associated with each schedule is returned
%% every time this action is called. A new download URL is returned each
%% time, and is valid for 24 hours.
list_business_report_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_business_report_schedules(Client, Input, []).
list_business_report_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBusinessReportSchedules">>, Input, Options).

%% @doc Lists conference providers under a specific AWS account.
list_conference_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_conference_providers(Client, Input, []).
list_conference_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConferenceProviders">>, Input, Options).

%% @doc Lists the device event history, including device connection status,
%% for up to 30 days.
list_device_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_events(Client, Input, []).
list_device_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceEvents">>, Input, Options).

%% @doc Retrieves a list of gateway group summaries.
%%
%% Use GetGatewayGroup to retrieve details of a specific gateway group.
list_gateway_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateway_groups(Client, Input, []).
list_gateway_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGatewayGroups">>, Input, Options).

%% @doc Retrieves a list of gateway summaries.
%%
%% Use GetGateway to retrieve details of a specific gateway. An optional
%% gateway group ARN can be provided to only retrieve gateway summaries of
%% gateways that are associated with that gateway group ARN.
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc Lists all enabled skills in a specific skill group.
list_skills(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills(Client, Input, []).
list_skills(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkills">>, Input, Options).

%% @doc Lists all categories in the Alexa skill store.
list_skills_store_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills_store_categories(Client, Input, []).
list_skills_store_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkillsStoreCategories">>, Input, Options).

%% @doc Lists all skills in the Alexa skill store by category.
list_skills_store_skills_by_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_skills_store_skills_by_category(Client, Input, []).
list_skills_store_skills_by_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSkillsStoreSkillsByCategory">>, Input, Options).

%% @doc Lists all of the smart home appliances associated with a room.
list_smart_home_appliances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_smart_home_appliances(Client, Input, []).
list_smart_home_appliances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSmartHomeAppliances">>, Input, Options).

%% @doc Lists all tags for the specified resource.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Sets the conference preferences on a specific conference provider at
%% the account level.
put_conference_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_conference_preference(Client, Input, []).
put_conference_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConferencePreference">>, Input, Options).

%% @doc Configures the email template for the user enrollment invitation with
%% the specified attributes.
put_invitation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_invitation_configuration(Client, Input, []).
put_invitation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInvitationConfiguration">>, Input, Options).

%% @doc Updates room skill parameter details by room, skill, and parameter
%% key ID.
%%
%% Not all skills have a room skill parameter.
put_room_skill_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_room_skill_parameter(Client, Input, []).
put_room_skill_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRoomSkillParameter">>, Input, Options).

%% @doc Links a user's account to a third-party skill provider.
%%
%% If this API operation is called by an assumed IAM role, the skill being
%% linked must be a private skill. Also, the skill must be owned by the AWS
%% account that assumed the IAM role.
put_skill_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_skill_authorization(Client, Input, []).
put_skill_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSkillAuthorization">>, Input, Options).

%% @doc Registers an Alexa-enabled device built by an Original Equipment
%% Manufacturer (OEM) using Alexa Voice Service (AVS).
register_a_v_s_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_a_v_s_device(Client, Input, []).
register_a_v_s_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterAVSDevice">>, Input, Options).

%% @doc Disassociates a skill from the organization under a user's AWS
%% account.
%%
%% If the skill is a private skill, it moves to an AcceptStatus of PENDING.
%% Any private or public skill that is rejected can be added later by calling
%% the ApproveSkill API.
reject_skill(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_skill(Client, Input, []).
reject_skill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectSkill">>, Input, Options).

%% @doc Determines the details for the room from which a skill request was
%% invoked.
%%
%% This operation is used by skill developers.
resolve_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_room(Client, Input, []).
resolve_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveRoom">>, Input, Options).

%% @doc Revokes an invitation and invalidates the enrollment URL.
revoke_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_invitation(Client, Input, []).
revoke_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeInvitation">>, Input, Options).

%% @doc Searches address books and lists the ones that meet a set of filter
%% and sort criteria.
search_address_books(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_address_books(Client, Input, []).
search_address_books(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchAddressBooks">>, Input, Options).

%% @doc Searches contacts and lists the ones that meet a set of filter and
%% sort criteria.
search_contacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_contacts(Client, Input, []).
search_contacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchContacts">>, Input, Options).

%% @doc Searches devices and lists the ones that meet a set of filter
%% criteria.
search_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_devices(Client, Input, []).
search_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchDevices">>, Input, Options).

%% @doc Searches network profiles and lists the ones that meet a set of
%% filter and sort criteria.
search_network_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_network_profiles(Client, Input, []).
search_network_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchNetworkProfiles">>, Input, Options).

%% @doc Searches room profiles and lists the ones that meet a set of filter
%% criteria.
search_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_profiles(Client, Input, []).
search_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProfiles">>, Input, Options).

%% @doc Searches rooms and lists the ones that meet a set of filter and sort
%% criteria.
search_rooms(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_rooms(Client, Input, []).
search_rooms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchRooms">>, Input, Options).

%% @doc Searches skill groups and lists the ones that meet a set of filter
%% and sort criteria.
search_skill_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_skill_groups(Client, Input, []).
search_skill_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSkillGroups">>, Input, Options).

%% @doc Searches users and lists the ones that meet a set of filter and sort
%% criteria.
search_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_users(Client, Input, []).
search_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchUsers">>, Input, Options).

%% @doc Triggers an asynchronous flow to send text, SSML, or audio
%% announcements to rooms that are identified by a search or filter.
send_announcement(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_announcement(Client, Input, []).
send_announcement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAnnouncement">>, Input, Options).

%% @doc Sends an enrollment invitation email with a URL to a user.
%%
%% The URL is valid for 30 days or until you call this operation again,
%% whichever comes first.
send_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_invitation(Client, Input, []).
send_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendInvitation">>, Input, Options).

%% @doc Resets a device and its account to the known default settings.
%%
%% This clears all information and settings set by previous users in the
%% following ways:
%%
%% <ul> <li> Bluetooth - This unpairs all bluetooth devices paired with your
%% echo device.
%%
%% </li> <li> Volume - This resets the echo device's volume to the default
%% value.
%%
%% </li> <li> Notifications - This clears all notifications from your echo
%% device.
%%
%% </li> <li> Lists - This clears all to-do items from your echo device.
%%
%% </li> <li> Settings - This internally syncs the room's profile (if the
%% device is assigned to a room), contacts, address books, delegation access
%% for account linking, and communications (if enabled on the room profile).
%%
%% </li> </ul>
start_device_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_device_sync(Client, Input, []).
start_device_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeviceSync">>, Input, Options).

%% @doc Initiates the discovery of any smart home appliances associated with
%% the room.
start_smart_home_appliance_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_smart_home_appliance_discovery(Client, Input, []).
start_smart_home_appliance_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSmartHomeApplianceDiscovery">>, Input, Options).

%% @doc Adds metadata tags to a specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes metadata tags from a specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates address book details by the address book ARN.
update_address_book(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_address_book(Client, Input, []).
update_address_book(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAddressBook">>, Input, Options).

%% @doc Updates the configuration of the report delivery schedule with the
%% specified schedule ARN.
update_business_report_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_business_report_schedule(Client, Input, []).
update_business_report_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBusinessReportSchedule">>, Input, Options).

%% @doc Updates an existing conference provider's settings.
update_conference_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_conference_provider(Client, Input, []).
update_conference_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConferenceProvider">>, Input, Options).

%% @doc Updates the contact details by the contact ARN.
update_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact(Client, Input, []).
update_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContact">>, Input, Options).

%% @doc Updates the device name by device ARN.
update_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device(Client, Input, []).
update_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevice">>, Input, Options).

%% @doc Updates the details of a gateway.
%%
%% If any optional field is not provided, the existing corresponding value is
%% left unmodified.
update_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway(Client, Input, []).
update_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGateway">>, Input, Options).

%% @doc Updates the details of a gateway group.
%%
%% If any optional field is not provided, the existing corresponding value is
%% left unmodified.
update_gateway_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_group(Client, Input, []).
update_gateway_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewayGroup">>, Input, Options).

%% @doc Updates a network profile by the network profile ARN.
update_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_network_profile(Client, Input, []).
update_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNetworkProfile">>, Input, Options).

%% @doc Updates an existing room profile by room profile ARN.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates room details by room ARN.
update_room(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_room(Client, Input, []).
update_room(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoom">>, Input, Options).

%% @doc Updates skill group details by skill group ARN.
update_skill_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_skill_group(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
