%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Systems Manager Incident Manager is an incident management console
%% designed to help users
%% mitigate and recover from incidents affecting their Amazon Web
%% Services-hosted applications.
%%
%% An incident is any unplanned interruption or reduction in quality of
%% services.
%%
%% Incident Manager increases incident resolution by notifying responders of
%% impact, highlighting relevant troubleshooting data, and providing
%% collaboration tools to
%% get services back up and running. To achieve the primary goal of reducing
%% the
%% time-to-resolution of critical incidents, Incident Manager automates
%% response plans
%% and enables responder team escalation.
-module(aws_ssm_contacts).

-export([accept_page/2,
         accept_page/3,
         activate_contact_channel/2,
         activate_contact_channel/3,
         create_contact/2,
         create_contact/3,
         create_contact_channel/2,
         create_contact_channel/3,
         create_rotation/2,
         create_rotation/3,
         create_rotation_override/2,
         create_rotation_override/3,
         deactivate_contact_channel/2,
         deactivate_contact_channel/3,
         delete_contact/2,
         delete_contact/3,
         delete_contact_channel/2,
         delete_contact_channel/3,
         delete_rotation/2,
         delete_rotation/3,
         delete_rotation_override/2,
         delete_rotation_override/3,
         describe_engagement/2,
         describe_engagement/3,
         describe_page/2,
         describe_page/3,
         get_contact/2,
         get_contact/3,
         get_contact_channel/2,
         get_contact_channel/3,
         get_contact_policy/2,
         get_contact_policy/3,
         get_rotation/2,
         get_rotation/3,
         get_rotation_override/2,
         get_rotation_override/3,
         list_contact_channels/2,
         list_contact_channels/3,
         list_contacts/2,
         list_contacts/3,
         list_engagements/2,
         list_engagements/3,
         list_page_receipts/2,
         list_page_receipts/3,
         list_page_resolutions/2,
         list_page_resolutions/3,
         list_pages_by_contact/2,
         list_pages_by_contact/3,
         list_pages_by_engagement/2,
         list_pages_by_engagement/3,
         list_preview_rotation_shifts/2,
         list_preview_rotation_shifts/3,
         list_rotation_overrides/2,
         list_rotation_overrides/3,
         list_rotation_shifts/2,
         list_rotation_shifts/3,
         list_rotations/2,
         list_rotations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_contact_policy/2,
         put_contact_policy/3,
         send_activation_code/2,
         send_activation_code/3,
         start_engagement/2,
         start_engagement/3,
         stop_engagement/2,
         stop_engagement/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_contact/2,
         update_contact/3,
         update_contact_channel/2,
         update_contact_channel/3,
         update_rotation/2,
         update_rotation/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% stop_engagement_result() :: #{

%% }
-type stop_engagement_result() :: #{binary() => any()}.

%% Example:
%% list_pages_by_engagement_request() :: #{
%%   <<"EngagementId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pages_by_engagement_request() :: #{binary() => any()}.

%% Example:
%% recurrence_settings() :: #{
%%   <<"DailySettings">> => list(hand_off_time()),
%%   <<"MonthlySettings">> => list(monthly_setting()),
%%   <<"NumberOfOnCalls">> => integer(),
%%   <<"RecurrenceMultiplier">> => integer(),
%%   <<"ShiftCoverages">> => map(),
%%   <<"WeeklySettings">> => list(weekly_setting())
%% }
-type recurrence_settings() :: #{binary() => any()}.

%% Example:
%% create_rotation_request() :: #{
%%   <<"ContactIds">> := list(string()),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"Recurrence">> := recurrence_settings(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()),
%%   <<"TimeZoneId">> := string()
%% }
-type create_rotation_request() :: #{binary() => any()}.

%% Example:
%% describe_engagement_result() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"Content">> => string(),
%%   <<"EngagementArn">> => string(),
%%   <<"IncidentId">> => string(),
%%   <<"PublicContent">> => string(),
%%   <<"PublicSubject">> => string(),
%%   <<"Sender">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StopTime">> => non_neg_integer(),
%%   <<"Subject">> => string()
%% }
-type describe_engagement_result() :: #{binary() => any()}.

%% Example:
%% stage() :: #{
%%   <<"DurationInMinutes">> => integer(),
%%   <<"Targets">> => list(target())
%% }
-type stage() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_contact_channel_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"DeferActivation">> => boolean(),
%%   <<"DeliveryAddress">> := contact_channel_address(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% list_pages_by_contact_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pages_by_contact_request() :: #{binary() => any()}.

%% Example:
%% create_rotation_override_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"NewContactIds">> := list(string()),
%%   <<"RotationId">> := string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type create_rotation_override_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_request() :: #{
%%   <<"ContactId">> := string()
%% }
-type delete_contact_request() :: #{binary() => any()}.

%% Example:
%% contact_target_info() :: #{
%%   <<"ContactId">> => string(),
%%   <<"IsEssential">> => boolean()
%% }
-type contact_target_info() :: #{binary() => any()}.

%% Example:
%% engagement() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"EngagementArn">> => string(),
%%   <<"IncidentId">> => string(),
%%   <<"Sender">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StopTime">> => non_neg_integer()
%% }
-type engagement() :: #{binary() => any()}.

%% Example:
%% create_rotation_override_result() :: #{
%%   <<"RotationOverrideId">> => string()
%% }
-type create_rotation_override_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{

%% }
-type untag_resource_result() :: #{binary() => any()}.

%% Example:
%% data_encryption_exception() :: #{
%%   <<"Message">> => string()
%% }
-type data_encryption_exception() :: #{binary() => any()}.

%% Example:
%% stop_engagement_request() :: #{
%%   <<"EngagementId">> := string(),
%%   <<"Reason">> => string()
%% }
-type stop_engagement_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_channel_request() :: #{
%%   <<"ContactChannelId">> := string()
%% }
-type delete_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% weekly_setting() :: #{
%%   <<"DayOfWeek">> => list(any()),
%%   <<"HandOffTime">> => hand_off_time()
%% }
-type weekly_setting() :: #{binary() => any()}.

%% Example:
%% shift_details() :: #{
%%   <<"OverriddenContactIds">> => list(string())
%% }
-type shift_details() :: #{binary() => any()}.

%% Example:
%% delete_rotation_override_request() :: #{
%%   <<"RotationId">> := string(),
%%   <<"RotationOverrideId">> := string()
%% }
-type delete_rotation_override_request() :: #{binary() => any()}.

%% Example:
%% receipt() :: #{
%%   <<"ContactChannelArn">> => string(),
%%   <<"ReceiptInfo">> => string(),
%%   <<"ReceiptTime">> => non_neg_integer(),
%%   <<"ReceiptType">> => list(any())
%% }
-type receipt() :: #{binary() => any()}.

%% Example:
%% update_rotation_request() :: #{
%%   <<"ContactIds">> => list(string()),
%%   <<"Recurrence">> := recurrence_settings(),
%%   <<"RotationId">> := string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TimeZoneId">> => string()
%% }
-type update_rotation_request() :: #{binary() => any()}.

%% Example:
%% list_page_resolutions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageResolutions">> => list(resolution_contact())
%% }
-type list_page_resolutions_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_contact_channel_result() :: #{
%%   <<"ContactChannelArn">> => string()
%% }
-type create_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% rotation() :: #{
%%   <<"ContactIds">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Recurrence">> => recurrence_settings(),
%%   <<"RotationArn">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TimeZoneId">> => string()
%% }
-type rotation() :: #{binary() => any()}.

%% Example:
%% start_engagement_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"Content">> := string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"IncidentId">> => string(),
%%   <<"PublicContent">> => string(),
%%   <<"PublicSubject">> => string(),
%%   <<"Sender">> := string(),
%%   <<"Subject">> := string()
%% }
-type start_engagement_request() :: #{binary() => any()}.

%% Example:
%% contact_channel() :: #{
%%   <<"ActivationStatus">> => list(any()),
%%   <<"ContactArn">> => string(),
%%   <<"ContactChannelArn">> => string(),
%%   <<"DeliveryAddress">> => contact_channel_address(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type contact_channel() :: #{binary() => any()}.

%% Example:
%% rotation_override() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NewContactIds">> => list(string()),
%%   <<"RotationOverrideId">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type rotation_override() :: #{binary() => any()}.

%% Example:
%% put_contact_policy_result() :: #{

%% }
-type put_contact_policy_result() :: #{binary() => any()}.

%% Example:
%% coverage_time() :: #{
%%   <<"End">> => hand_off_time(),
%%   <<"Start">> => hand_off_time()
%% }
-type coverage_time() :: #{binary() => any()}.

%% Example:
%% monthly_setting() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"HandOffTime">> => hand_off_time()
%% }
-type monthly_setting() :: #{binary() => any()}.

%% Example:
%% list_page_resolutions_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageId">> := string()
%% }
-type list_page_resolutions_request() :: #{binary() => any()}.

%% Example:
%% list_engagements_result() :: #{
%%   <<"Engagements">> => list(engagement()),
%%   <<"NextToken">> => string()
%% }
-type list_engagements_result() :: #{binary() => any()}.

%% Example:
%% target() :: #{
%%   <<"ChannelTargetInfo">> => channel_target_info(),
%%   <<"ContactTargetInfo">> => contact_target_info()
%% }
-type target() :: #{binary() => any()}.

%% Example:
%% contact_channel_address() :: #{
%%   <<"SimpleAddress">> => string()
%% }
-type contact_channel_address() :: #{binary() => any()}.

%% Example:
%% list_pages_by_engagement_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Pages">> => list(page())
%% }
-type list_pages_by_engagement_result() :: #{binary() => any()}.

%% Example:
%% list_rotations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RotationNamePrefix">> => string()
%% }
-type list_rotations_request() :: #{binary() => any()}.

%% Example:
%% describe_page_request() :: #{
%%   <<"PageId">> := string()
%% }
-type describe_page_request() :: #{binary() => any()}.

%% Example:
%% list_page_receipts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageId">> := string()
%% }
-type list_page_receipts_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"DependentEntities">> => list(dependent_entity()),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_contacts_result() :: #{
%%   <<"Contacts">> => list(contact()),
%%   <<"NextToken">> => string()
%% }
-type list_contacts_result() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_rotation_result() :: #{

%% }
-type update_rotation_result() :: #{binary() => any()}.

%% Example:
%% list_page_receipts_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Receipts">> => list(receipt())
%% }
-type list_page_receipts_result() :: #{binary() => any()}.

%% Example:
%% update_contact_channel_request() :: #{
%%   <<"ContactChannelId">> := string(),
%%   <<"DeliveryAddress">> => contact_channel_address(),
%%   <<"Name">> => string()
%% }
-type update_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% list_pages_by_contact_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Pages">> => list(page())
%% }
-type list_pages_by_contact_result() :: #{binary() => any()}.

%% Example:
%% activate_contact_channel_request() :: #{
%%   <<"ActivationCode">> := string(),
%%   <<"ContactChannelId">> := string()
%% }
-type activate_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_contact_channel_result() :: #{
%%   <<"ActivationStatus">> => list(any()),
%%   <<"ContactArn">> => string(),
%%   <<"ContactChannelArn">> => string(),
%%   <<"DeliveryAddress">> => contact_channel_address(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type get_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_rotation_override_result() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NewContactIds">> => list(string()),
%%   <<"RotationArn">> => string(),
%%   <<"RotationOverrideId">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_rotation_override_result() :: #{binary() => any()}.

%% Example:
%% list_rotation_overrides_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RotationId">> := string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type list_rotation_overrides_request() :: #{binary() => any()}.

%% Example:
%% list_preview_rotation_shifts_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RotationShifts">> => list(rotation_shift())
%% }
-type list_preview_rotation_shifts_result() :: #{binary() => any()}.

%% Example:
%% accept_page_result() :: #{

%% }
-type accept_page_result() :: #{binary() => any()}.

%% Example:
%% get_rotation_request() :: #{
%%   <<"RotationId">> := string()
%% }
-type get_rotation_request() :: #{binary() => any()}.

%% Example:
%% list_contact_channels_result() :: #{
%%   <<"ContactChannels">> => list(contact_channel()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_channels_result() :: #{binary() => any()}.

%% Example:
%% list_rotation_shifts_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RotationId">> := string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type list_rotation_shifts_request() :: #{binary() => any()}.

%% Example:
%% get_rotation_result() :: #{
%%   <<"ContactIds">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Recurrence">> => recurrence_settings(),
%%   <<"RotationArn">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TimeZoneId">> => string()
%% }
-type get_rotation_result() :: #{binary() => any()}.

%% Example:
%% update_contact_result() :: #{

%% }
-type update_contact_result() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% send_activation_code_request() :: #{
%%   <<"ContactChannelId">> := string()
%% }
-type send_activation_code_request() :: #{binary() => any()}.

%% Example:
%% accept_page_request() :: #{
%%   <<"AcceptCode">> := string(),
%%   <<"AcceptCodeValidation">> => list(any()),
%%   <<"AcceptType">> := list(any()),
%%   <<"ContactChannelId">> => string(),
%%   <<"Note">> => string(),
%%   <<"PageId">> := string()
%% }
-type accept_page_request() :: #{binary() => any()}.

%% Example:
%% dependent_entity() :: #{
%%   <<"DependentResourceIds">> => list(string()),
%%   <<"RelationType">> => string()
%% }
-type dependent_entity() :: #{binary() => any()}.

%% Example:
%% contact() :: #{
%%   <<"Alias">> => string(),
%%   <<"ContactArn">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type contact() :: #{binary() => any()}.

%% Example:
%% start_engagement_result() :: #{
%%   <<"EngagementArn">> => string()
%% }
-type start_engagement_result() :: #{binary() => any()}.

%% Example:
%% create_contact_result() :: #{
%%   <<"ContactArn">> => string()
%% }
-type create_contact_result() :: #{binary() => any()}.

%% Example:
%% list_rotation_shifts_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RotationShifts">> => list(rotation_shift())
%% }
-type list_rotation_shifts_result() :: #{binary() => any()}.

%% Example:
%% rotation_shift() :: #{
%%   <<"ContactIds">> => list(string()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ShiftDetails">> => shift_details(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type rotation_shift() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% describe_page_result() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"Content">> => string(),
%%   <<"DeliveryTime">> => non_neg_integer(),
%%   <<"EngagementArn">> => string(),
%%   <<"IncidentId">> => string(),
%%   <<"PageArn">> => string(),
%%   <<"PublicContent">> => string(),
%%   <<"PublicSubject">> => string(),
%%   <<"ReadTime">> => non_neg_integer(),
%%   <<"Sender">> => string(),
%%   <<"SentTime">> => non_neg_integer(),
%%   <<"Subject">> => string()
%% }
-type describe_page_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.

%% Example:
%% get_contact_request() :: #{
%%   <<"ContactId">> := string()
%% }
-type get_contact_request() :: #{binary() => any()}.

%% Example:
%% list_contacts_request() :: #{
%%   <<"AliasPrefix">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_contacts_request() :: #{binary() => any()}.

%% Example:
%% list_rotations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rotations">> => list(rotation())
%% }
-type list_rotations_result() :: #{binary() => any()}.

%% Example:
%% list_contact_channels_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_contact_channels_request() :: #{binary() => any()}.

%% Example:
%% get_contact_result() :: #{
%%   <<"Alias">> => string(),
%%   <<"ContactArn">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Plan">> => plan(),
%%   <<"Type">> => list(any())
%% }
-type get_contact_result() :: #{binary() => any()}.

%% Example:
%% get_contact_policy_request() :: #{
%%   <<"ContactArn">> := string()
%% }
-type get_contact_policy_request() :: #{binary() => any()}.

%% Example:
%% time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_range() :: #{binary() => any()}.

%% Example:
%% list_rotation_overrides_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RotationOverrides">> => list(rotation_override())
%% }
-type list_rotation_overrides_result() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% put_contact_policy_request() :: #{
%%   <<"ContactArn">> := string(),
%%   <<"Policy">> := string()
%% }
-type put_contact_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_engagement_request() :: #{
%%   <<"EngagementId">> := string()
%% }
-type describe_engagement_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_channel_result() :: #{

%% }
-type delete_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% update_contact_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"Plan">> => plan()
%% }
-type update_contact_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_result() :: #{

%% }
-type delete_contact_result() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"RetryAfterSeconds">> => integer(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_contact_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Plan">> := plan(),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any())
%% }
-type create_contact_request() :: #{binary() => any()}.

%% Example:
%% hand_off_time() :: #{
%%   <<"HourOfDay">> => integer(),
%%   <<"MinuteOfHour">> => integer()
%% }
-type hand_off_time() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{

%% }
-type tag_resource_result() :: #{binary() => any()}.

%% Example:
%% list_preview_rotation_shifts_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"Members">> := list(string()),
%%   <<"NextToken">> => string(),
%%   <<"Overrides">> => list(preview_override()),
%%   <<"Recurrence">> := recurrence_settings(),
%%   <<"RotationStartTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TimeZoneId">> := string()
%% }
-type list_preview_rotation_shifts_request() :: #{binary() => any()}.

%% Example:
%% deactivate_contact_channel_request() :: #{
%%   <<"ContactChannelId">> := string()
%% }
-type deactivate_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% get_rotation_override_request() :: #{
%%   <<"RotationId">> := string(),
%%   <<"RotationOverrideId">> := string()
%% }
-type get_rotation_override_request() :: #{binary() => any()}.

%% Example:
%% preview_override() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NewMembers">> => list(string()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type preview_override() :: #{binary() => any()}.

%% Example:
%% update_contact_channel_result() :: #{

%% }
-type update_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% deactivate_contact_channel_result() :: #{

%% }
-type deactivate_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% get_contact_channel_request() :: #{
%%   <<"ContactChannelId">> := string()
%% }
-type get_contact_channel_request() :: #{binary() => any()}.

%% Example:
%% activate_contact_channel_result() :: #{

%% }
-type activate_contact_channel_result() :: #{binary() => any()}.

%% Example:
%% get_contact_policy_result() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"Policy">> => string()
%% }
-type get_contact_policy_result() :: #{binary() => any()}.

%% Example:
%% send_activation_code_result() :: #{

%% }
-type send_activation_code_result() :: #{binary() => any()}.

%% Example:
%% list_engagements_request() :: #{
%%   <<"IncidentId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimeRangeValue">> => time_range()
%% }
-type list_engagements_request() :: #{binary() => any()}.

%% Example:
%% channel_target_info() :: #{
%%   <<"ContactChannelId">> => string(),
%%   <<"RetryIntervalInMinutes">> => integer()
%% }
-type channel_target_info() :: #{binary() => any()}.

%% Example:
%% page() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"DeliveryTime">> => non_neg_integer(),
%%   <<"EngagementArn">> => string(),
%%   <<"IncidentId">> => string(),
%%   <<"PageArn">> => string(),
%%   <<"ReadTime">> => non_neg_integer(),
%%   <<"Sender">> => string(),
%%   <<"SentTime">> => non_neg_integer()
%% }
-type page() :: #{binary() => any()}.

%% Example:
%% create_rotation_result() :: #{
%%   <<"RotationArn">> => string()
%% }
-type create_rotation_result() :: #{binary() => any()}.

%% Example:
%% resolution_contact() :: #{
%%   <<"ContactArn">> => string(),
%%   <<"StageIndex">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type resolution_contact() :: #{binary() => any()}.

%% Example:
%% delete_rotation_result() :: #{

%% }
-type delete_rotation_result() :: #{binary() => any()}.

%% Example:
%% delete_rotation_request() :: #{
%%   <<"RotationId">> := string()
%% }
-type delete_rotation_request() :: #{binary() => any()}.

%% Example:
%% delete_rotation_override_result() :: #{

%% }
-type delete_rotation_override_result() :: #{binary() => any()}.

%% Example:
%% plan() :: #{
%%   <<"RotationIds">> => list(string()),
%%   <<"Stages">> => list(stage())
%% }
-type plan() :: #{binary() => any()}.

-type accept_page_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type activate_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    data_encryption_exception().

-type create_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    data_encryption_exception().

-type create_rotation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_rotation_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type deactivate_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_rotation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_rotation_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type describe_page_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type get_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type get_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type get_contact_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_rotation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_rotation_override_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_contact_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type list_contacts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_engagements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_page_receipts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_page_resolutions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_pages_by_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_pages_by_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_preview_rotation_shifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_rotation_overrides_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_rotation_shifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_rotations_errors() ::
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

-type put_contact_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_activation_code_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type start_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type stop_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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

-type update_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    data_encryption_exception().

-type update_contact_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    data_encryption_exception().

-type update_rotation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Used to acknowledge an engagement to a contact channel during an
%% incident.
-spec accept_page(aws_client:aws_client(), accept_page_request()) ->
    {ok, accept_page_result(), tuple()} |
    {error, any()} |
    {error, accept_page_errors(), tuple()}.
accept_page(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_page(Client, Input, []).

-spec accept_page(aws_client:aws_client(), accept_page_request(), proplists:proplist()) ->
    {ok, accept_page_result(), tuple()} |
    {error, any()} |
    {error, accept_page_errors(), tuple()}.
accept_page(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptPage">>, Input, Options).

%% @doc Activates a contact's contact channel.
%%
%% Incident Manager can't engage a contact until the
%% contact channel has been activated.
-spec activate_contact_channel(aws_client:aws_client(), activate_contact_channel_request()) ->
    {ok, activate_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, activate_contact_channel_errors(), tuple()}.
activate_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_contact_channel(Client, Input, []).

-spec activate_contact_channel(aws_client:aws_client(), activate_contact_channel_request(), proplists:proplist()) ->
    {ok, activate_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, activate_contact_channel_errors(), tuple()}.
activate_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateContactChannel">>, Input, Options).

%% @doc Contacts are either the contacts that Incident Manager engages during
%% an incident or the
%% escalation plans that Incident Manager uses to engage contacts in phases
%% during an
%% incident.
-spec create_contact(aws_client:aws_client(), create_contact_request()) ->
    {ok, create_contact_result(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact(Client, Input, []).

-spec create_contact(aws_client:aws_client(), create_contact_request(), proplists:proplist()) ->
    {ok, create_contact_result(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContact">>, Input, Options).

%% @doc A contact channel is the method that Incident Manager uses to engage
%% your contact.
-spec create_contact_channel(aws_client:aws_client(), create_contact_channel_request()) ->
    {ok, create_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, create_contact_channel_errors(), tuple()}.
create_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact_channel(Client, Input, []).

-spec create_contact_channel(aws_client:aws_client(), create_contact_channel_request(), proplists:proplist()) ->
    {ok, create_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, create_contact_channel_errors(), tuple()}.
create_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContactChannel">>, Input, Options).

%% @doc Creates a rotation in an on-call schedule.
-spec create_rotation(aws_client:aws_client(), create_rotation_request()) ->
    {ok, create_rotation_result(), tuple()} |
    {error, any()} |
    {error, create_rotation_errors(), tuple()}.
create_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rotation(Client, Input, []).

-spec create_rotation(aws_client:aws_client(), create_rotation_request(), proplists:proplist()) ->
    {ok, create_rotation_result(), tuple()} |
    {error, any()} |
    {error, create_rotation_errors(), tuple()}.
create_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRotation">>, Input, Options).

%% @doc Creates an override for a rotation in an on-call schedule.
-spec create_rotation_override(aws_client:aws_client(), create_rotation_override_request()) ->
    {ok, create_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, create_rotation_override_errors(), tuple()}.
create_rotation_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rotation_override(Client, Input, []).

-spec create_rotation_override(aws_client:aws_client(), create_rotation_override_request(), proplists:proplist()) ->
    {ok, create_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, create_rotation_override_errors(), tuple()}.
create_rotation_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRotationOverride">>, Input, Options).

%% @doc To no longer receive Incident Manager engagements to a contact
%% channel, you can deactivate
%% the channel.
-spec deactivate_contact_channel(aws_client:aws_client(), deactivate_contact_channel_request()) ->
    {ok, deactivate_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, deactivate_contact_channel_errors(), tuple()}.
deactivate_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_contact_channel(Client, Input, []).

-spec deactivate_contact_channel(aws_client:aws_client(), deactivate_contact_channel_request(), proplists:proplist()) ->
    {ok, deactivate_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, deactivate_contact_channel_errors(), tuple()}.
deactivate_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateContactChannel">>, Input, Options).

%% @doc To remove a contact from Incident Manager, you can delete the
%% contact.
%%
%% However, deleting a
%% contact does not remove it from escalation plans and related response
%% plans. Deleting an
%% escalation plan also does not remove it from all related response plans.
%% To modify an
%% escalation plan, we recommend using the `UpdateContact' action to
%% specify a
%% different existing contact.
-spec delete_contact(aws_client:aws_client(), delete_contact_request()) ->
    {ok, delete_contact_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact(Client, Input, []).

-spec delete_contact(aws_client:aws_client(), delete_contact_request(), proplists:proplist()) ->
    {ok, delete_contact_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContact">>, Input, Options).

%% @doc To stop receiving engagements on a contact channel, you can delete
%% the channel from a
%% contact.
%%
%% Deleting the contact channel does not remove it from the contact's
%% engagement
%% plan, but the stage that includes the channel will be ignored. If you
%% delete the only
%% contact channel for a contact, you'll no longer be able to engage that
%% contact during an
%% incident.
-spec delete_contact_channel(aws_client:aws_client(), delete_contact_channel_request()) ->
    {ok, delete_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_channel_errors(), tuple()}.
delete_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact_channel(Client, Input, []).

-spec delete_contact_channel(aws_client:aws_client(), delete_contact_channel_request(), proplists:proplist()) ->
    {ok, delete_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_channel_errors(), tuple()}.
delete_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContactChannel">>, Input, Options).

%% @doc Deletes a rotation from the system.
%%
%% If a rotation belongs to more than one on-call
%% schedule, this operation deletes it from all of them.
-spec delete_rotation(aws_client:aws_client(), delete_rotation_request()) ->
    {ok, delete_rotation_result(), tuple()} |
    {error, any()} |
    {error, delete_rotation_errors(), tuple()}.
delete_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rotation(Client, Input, []).

-spec delete_rotation(aws_client:aws_client(), delete_rotation_request(), proplists:proplist()) ->
    {ok, delete_rotation_result(), tuple()} |
    {error, any()} |
    {error, delete_rotation_errors(), tuple()}.
delete_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRotation">>, Input, Options).

%% @doc Deletes an existing override for an on-call rotation.
-spec delete_rotation_override(aws_client:aws_client(), delete_rotation_override_request()) ->
    {ok, delete_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, delete_rotation_override_errors(), tuple()}.
delete_rotation_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rotation_override(Client, Input, []).

-spec delete_rotation_override(aws_client:aws_client(), delete_rotation_override_request(), proplists:proplist()) ->
    {ok, delete_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, delete_rotation_override_errors(), tuple()}.
delete_rotation_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRotationOverride">>, Input, Options).

%% @doc Incident Manager uses engagements to engage contacts and escalation
%% plans during an incident.
%%
%% Use this command to describe the engagement that occurred during an
%% incident.
-spec describe_engagement(aws_client:aws_client(), describe_engagement_request()) ->
    {ok, describe_engagement_result(), tuple()} |
    {error, any()} |
    {error, describe_engagement_errors(), tuple()}.
describe_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engagement(Client, Input, []).

-spec describe_engagement(aws_client:aws_client(), describe_engagement_request(), proplists:proplist()) ->
    {ok, describe_engagement_result(), tuple()} |
    {error, any()} |
    {error, describe_engagement_errors(), tuple()}.
describe_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngagement">>, Input, Options).

%% @doc Lists details of the engagement to a contact channel.
-spec describe_page(aws_client:aws_client(), describe_page_request()) ->
    {ok, describe_page_result(), tuple()} |
    {error, any()} |
    {error, describe_page_errors(), tuple()}.
describe_page(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_page(Client, Input, []).

-spec describe_page(aws_client:aws_client(), describe_page_request(), proplists:proplist()) ->
    {ok, describe_page_result(), tuple()} |
    {error, any()} |
    {error, describe_page_errors(), tuple()}.
describe_page(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePage">>, Input, Options).

%% @doc Retrieves information about the specified contact or escalation plan.
-spec get_contact(aws_client:aws_client(), get_contact_request()) ->
    {ok, get_contact_result(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact(Client, Input, []).

-spec get_contact(aws_client:aws_client(), get_contact_request(), proplists:proplist()) ->
    {ok, get_contact_result(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContact">>, Input, Options).

%% @doc List details about a specific contact channel.
-spec get_contact_channel(aws_client:aws_client(), get_contact_channel_request()) ->
    {ok, get_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, get_contact_channel_errors(), tuple()}.
get_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_channel(Client, Input, []).

-spec get_contact_channel(aws_client:aws_client(), get_contact_channel_request(), proplists:proplist()) ->
    {ok, get_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, get_contact_channel_errors(), tuple()}.
get_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactChannel">>, Input, Options).

%% @doc Retrieves the resource policies attached to the specified contact or
%% escalation
%% plan.
-spec get_contact_policy(aws_client:aws_client(), get_contact_policy_request()) ->
    {ok, get_contact_policy_result(), tuple()} |
    {error, any()} |
    {error, get_contact_policy_errors(), tuple()}.
get_contact_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_policy(Client, Input, []).

-spec get_contact_policy(aws_client:aws_client(), get_contact_policy_request(), proplists:proplist()) ->
    {ok, get_contact_policy_result(), tuple()} |
    {error, any()} |
    {error, get_contact_policy_errors(), tuple()}.
get_contact_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactPolicy">>, Input, Options).

%% @doc Retrieves information about an on-call rotation.
-spec get_rotation(aws_client:aws_client(), get_rotation_request()) ->
    {ok, get_rotation_result(), tuple()} |
    {error, any()} |
    {error, get_rotation_errors(), tuple()}.
get_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rotation(Client, Input, []).

-spec get_rotation(aws_client:aws_client(), get_rotation_request(), proplists:proplist()) ->
    {ok, get_rotation_result(), tuple()} |
    {error, any()} |
    {error, get_rotation_errors(), tuple()}.
get_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRotation">>, Input, Options).

%% @doc Retrieves information about an override to an on-call rotation.
-spec get_rotation_override(aws_client:aws_client(), get_rotation_override_request()) ->
    {ok, get_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, get_rotation_override_errors(), tuple()}.
get_rotation_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rotation_override(Client, Input, []).

-spec get_rotation_override(aws_client:aws_client(), get_rotation_override_request(), proplists:proplist()) ->
    {ok, get_rotation_override_result(), tuple()} |
    {error, any()} |
    {error, get_rotation_override_errors(), tuple()}.
get_rotation_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRotationOverride">>, Input, Options).

%% @doc Lists all contact channels for the specified contact.
-spec list_contact_channels(aws_client:aws_client(), list_contact_channels_request()) ->
    {ok, list_contact_channels_result(), tuple()} |
    {error, any()} |
    {error, list_contact_channels_errors(), tuple()}.
list_contact_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contact_channels(Client, Input, []).

-spec list_contact_channels(aws_client:aws_client(), list_contact_channels_request(), proplists:proplist()) ->
    {ok, list_contact_channels_result(), tuple()} |
    {error, any()} |
    {error, list_contact_channels_errors(), tuple()}.
list_contact_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContactChannels">>, Input, Options).

%% @doc Lists all contacts and escalation plans in Incident Manager.
-spec list_contacts(aws_client:aws_client(), list_contacts_request()) ->
    {ok, list_contacts_result(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contacts(Client, Input, []).

-spec list_contacts(aws_client:aws_client(), list_contacts_request(), proplists:proplist()) ->
    {ok, list_contacts_result(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContacts">>, Input, Options).

%% @doc Lists all engagements that have happened in an incident.
-spec list_engagements(aws_client:aws_client(), list_engagements_request()) ->
    {ok, list_engagements_result(), tuple()} |
    {error, any()} |
    {error, list_engagements_errors(), tuple()}.
list_engagements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagements(Client, Input, []).

-spec list_engagements(aws_client:aws_client(), list_engagements_request(), proplists:proplist()) ->
    {ok, list_engagements_result(), tuple()} |
    {error, any()} |
    {error, list_engagements_errors(), tuple()}.
list_engagements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagements">>, Input, Options).

%% @doc Lists all of the engagements to contact channels that have been
%% acknowledged.
-spec list_page_receipts(aws_client:aws_client(), list_page_receipts_request()) ->
    {ok, list_page_receipts_result(), tuple()} |
    {error, any()} |
    {error, list_page_receipts_errors(), tuple()}.
list_page_receipts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_page_receipts(Client, Input, []).

-spec list_page_receipts(aws_client:aws_client(), list_page_receipts_request(), proplists:proplist()) ->
    {ok, list_page_receipts_result(), tuple()} |
    {error, any()} |
    {error, list_page_receipts_errors(), tuple()}.
list_page_receipts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPageReceipts">>, Input, Options).

%% @doc Returns the resolution path of an engagement.
%%
%% For example, the escalation plan engaged
%% in an incident might target an on-call schedule that includes several
%% contacts in a
%% rotation, but just one contact on-call when the incident starts. The
%% resolution path
%% indicates the hierarchy of escalation plan &gt; on-call schedule &gt;
%% contact.
-spec list_page_resolutions(aws_client:aws_client(), list_page_resolutions_request()) ->
    {ok, list_page_resolutions_result(), tuple()} |
    {error, any()} |
    {error, list_page_resolutions_errors(), tuple()}.
list_page_resolutions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_page_resolutions(Client, Input, []).

-spec list_page_resolutions(aws_client:aws_client(), list_page_resolutions_request(), proplists:proplist()) ->
    {ok, list_page_resolutions_result(), tuple()} |
    {error, any()} |
    {error, list_page_resolutions_errors(), tuple()}.
list_page_resolutions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPageResolutions">>, Input, Options).

%% @doc Lists the engagements to a contact's contact channels.
-spec list_pages_by_contact(aws_client:aws_client(), list_pages_by_contact_request()) ->
    {ok, list_pages_by_contact_result(), tuple()} |
    {error, any()} |
    {error, list_pages_by_contact_errors(), tuple()}.
list_pages_by_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pages_by_contact(Client, Input, []).

-spec list_pages_by_contact(aws_client:aws_client(), list_pages_by_contact_request(), proplists:proplist()) ->
    {ok, list_pages_by_contact_result(), tuple()} |
    {error, any()} |
    {error, list_pages_by_contact_errors(), tuple()}.
list_pages_by_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPagesByContact">>, Input, Options).

%% @doc Lists the engagements to contact channels that occurred by engaging a
%% contact.
-spec list_pages_by_engagement(aws_client:aws_client(), list_pages_by_engagement_request()) ->
    {ok, list_pages_by_engagement_result(), tuple()} |
    {error, any()} |
    {error, list_pages_by_engagement_errors(), tuple()}.
list_pages_by_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pages_by_engagement(Client, Input, []).

-spec list_pages_by_engagement(aws_client:aws_client(), list_pages_by_engagement_request(), proplists:proplist()) ->
    {ok, list_pages_by_engagement_result(), tuple()} |
    {error, any()} |
    {error, list_pages_by_engagement_errors(), tuple()}.
list_pages_by_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPagesByEngagement">>, Input, Options).

%% @doc Returns a list of shifts based on rotation configuration parameters.
%%
%% The Incident Manager primarily uses this operation to populate the Preview
%% calendar. It is not typically run by end users.
-spec list_preview_rotation_shifts(aws_client:aws_client(), list_preview_rotation_shifts_request()) ->
    {ok, list_preview_rotation_shifts_result(), tuple()} |
    {error, any()} |
    {error, list_preview_rotation_shifts_errors(), tuple()}.
list_preview_rotation_shifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_preview_rotation_shifts(Client, Input, []).

-spec list_preview_rotation_shifts(aws_client:aws_client(), list_preview_rotation_shifts_request(), proplists:proplist()) ->
    {ok, list_preview_rotation_shifts_result(), tuple()} |
    {error, any()} |
    {error, list_preview_rotation_shifts_errors(), tuple()}.
list_preview_rotation_shifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPreviewRotationShifts">>, Input, Options).

%% @doc Retrieves a list of overrides currently specified for an on-call
%% rotation.
-spec list_rotation_overrides(aws_client:aws_client(), list_rotation_overrides_request()) ->
    {ok, list_rotation_overrides_result(), tuple()} |
    {error, any()} |
    {error, list_rotation_overrides_errors(), tuple()}.
list_rotation_overrides(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rotation_overrides(Client, Input, []).

-spec list_rotation_overrides(aws_client:aws_client(), list_rotation_overrides_request(), proplists:proplist()) ->
    {ok, list_rotation_overrides_result(), tuple()} |
    {error, any()} |
    {error, list_rotation_overrides_errors(), tuple()}.
list_rotation_overrides(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRotationOverrides">>, Input, Options).

%% @doc Returns a list of shifts generated by an existing rotation in the
%% system.
-spec list_rotation_shifts(aws_client:aws_client(), list_rotation_shifts_request()) ->
    {ok, list_rotation_shifts_result(), tuple()} |
    {error, any()} |
    {error, list_rotation_shifts_errors(), tuple()}.
list_rotation_shifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rotation_shifts(Client, Input, []).

-spec list_rotation_shifts(aws_client:aws_client(), list_rotation_shifts_request(), proplists:proplist()) ->
    {ok, list_rotation_shifts_result(), tuple()} |
    {error, any()} |
    {error, list_rotation_shifts_errors(), tuple()}.
list_rotation_shifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRotationShifts">>, Input, Options).

%% @doc Retrieves a list of on-call rotations.
-spec list_rotations(aws_client:aws_client(), list_rotations_request()) ->
    {ok, list_rotations_result(), tuple()} |
    {error, any()} |
    {error, list_rotations_errors(), tuple()}.
list_rotations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rotations(Client, Input, []).

-spec list_rotations(aws_client:aws_client(), list_rotations_request(), proplists:proplist()) ->
    {ok, list_rotations_result(), tuple()} |
    {error, any()} |
    {error, list_rotations_errors(), tuple()}.
list_rotations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRotations">>, Input, Options).

%% @doc Lists the tags of a contact, escalation plan, rotation, or on-call
%% schedule.
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

%% @doc Adds a resource policy to the specified contact or escalation plan.
%%
%% The resource policy
%% is used to share the contact or escalation plan using Resource Access
%% Manager (RAM). For more information about cross-account sharing, see
%% Setting up
%% cross-account functionality:
%% https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html.
-spec put_contact_policy(aws_client:aws_client(), put_contact_policy_request()) ->
    {ok, put_contact_policy_result(), tuple()} |
    {error, any()} |
    {error, put_contact_policy_errors(), tuple()}.
put_contact_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_contact_policy(Client, Input, []).

-spec put_contact_policy(aws_client:aws_client(), put_contact_policy_request(), proplists:proplist()) ->
    {ok, put_contact_policy_result(), tuple()} |
    {error, any()} |
    {error, put_contact_policy_errors(), tuple()}.
put_contact_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutContactPolicy">>, Input, Options).

%% @doc Sends an activation code to a contact channel.
%%
%% The contact can use this code to activate
%% the contact channel in the console or with the `ActivateChannel'
%% operation.
%% Incident Manager can't engage a contact channel until it has been
%% activated.
-spec send_activation_code(aws_client:aws_client(), send_activation_code_request()) ->
    {ok, send_activation_code_result(), tuple()} |
    {error, any()} |
    {error, send_activation_code_errors(), tuple()}.
send_activation_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_activation_code(Client, Input, []).

-spec send_activation_code(aws_client:aws_client(), send_activation_code_request(), proplists:proplist()) ->
    {ok, send_activation_code_result(), tuple()} |
    {error, any()} |
    {error, send_activation_code_errors(), tuple()}.
send_activation_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendActivationCode">>, Input, Options).

%% @doc Starts an engagement to a contact or escalation plan.
%%
%% The engagement engages each
%% contact specified in the incident.
-spec start_engagement(aws_client:aws_client(), start_engagement_request()) ->
    {ok, start_engagement_result(), tuple()} |
    {error, any()} |
    {error, start_engagement_errors(), tuple()}.
start_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_engagement(Client, Input, []).

-spec start_engagement(aws_client:aws_client(), start_engagement_request(), proplists:proplist()) ->
    {ok, start_engagement_result(), tuple()} |
    {error, any()} |
    {error, start_engagement_errors(), tuple()}.
start_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEngagement">>, Input, Options).

%% @doc Stops an engagement before it finishes the final stage of the
%% escalation plan or
%% engagement plan.
%%
%% Further contacts aren't engaged.
-spec stop_engagement(aws_client:aws_client(), stop_engagement_request()) ->
    {ok, stop_engagement_result(), tuple()} |
    {error, any()} |
    {error, stop_engagement_errors(), tuple()}.
stop_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_engagement(Client, Input, []).

-spec stop_engagement(aws_client:aws_client(), stop_engagement_request(), proplists:proplist()) ->
    {ok, stop_engagement_result(), tuple()} |
    {error, any()} |
    {error, stop_engagement_errors(), tuple()}.
stop_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEngagement">>, Input, Options).

%% @doc Tags a contact or escalation plan.
%%
%% You can tag only contacts and escalation plans in the
%% first region of your replication set.
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

%% @doc Removes tags from the specified resource.
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

%% @doc Updates the contact or escalation plan specified.
-spec update_contact(aws_client:aws_client(), update_contact_request()) ->
    {ok, update_contact_result(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact(Client, Input, []).

-spec update_contact(aws_client:aws_client(), update_contact_request(), proplists:proplist()) ->
    {ok, update_contact_result(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContact">>, Input, Options).

%% @doc Updates a contact's contact channel.
-spec update_contact_channel(aws_client:aws_client(), update_contact_channel_request()) ->
    {ok, update_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, update_contact_channel_errors(), tuple()}.
update_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact_channel(Client, Input, []).

-spec update_contact_channel(aws_client:aws_client(), update_contact_channel_request(), proplists:proplist()) ->
    {ok, update_contact_channel_result(), tuple()} |
    {error, any()} |
    {error, update_contact_channel_errors(), tuple()}.
update_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContactChannel">>, Input, Options).

%% @doc Updates the information specified for an on-call rotation.
-spec update_rotation(aws_client:aws_client(), update_rotation_request()) ->
    {ok, update_rotation_result(), tuple()} |
    {error, any()} |
    {error, update_rotation_errors(), tuple()}.
update_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rotation(Client, Input, []).

-spec update_rotation(aws_client:aws_client(), update_rotation_request(), proplists:proplist()) ->
    {ok, update_rotation_result(), tuple()} |
    {error, any()} |
    {error, update_rotation_errors(), tuple()}.
update_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRotation">>, Input, Options).

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
    Client1 = Client#{service => <<"ssm-contacts">>},
    Host = build_host(<<"ssm-contacts">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SSMContacts.", Action/binary>>}
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
