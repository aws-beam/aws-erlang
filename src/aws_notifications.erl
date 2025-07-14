%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services User Notifications API Reference provides
%% descriptions, API request parameters, and the JSON response for each of
%% the User Notification API actions.
%%
%% User Notification control plane APIs are currently available in US East
%% (Virginia) - `us-east-1'.
%%
%% GetNotificationEvent:
%% https://docs.aws.amazon.com/notifications/latest/APIReference/API_GetNotificationEvent.html
%% and ListNotificationEvents:
%% https://docs.aws.amazon.com/notifications/latest/APIReference/API_ListNotificationEvents.html
%% APIs are currently available in
%% commercial partition Regions:
%% https://docs.aws.amazon.com/notifications/latest/userguide/supported-regions.html
%% and only return notifications stored in the same Region in which
%% they're called.
%%
%% The User Notifications console can only be used in US East (Virginia).
%% Your data however, is stored in each Region chosen as a
%% notification hub:
%% https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html
%% in addition to US East (Virginia).
-module(aws_notifications).

-export([associate_channel/3,
         associate_channel/4,
         associate_managed_notification_account_contact/3,
         associate_managed_notification_account_contact/4,
         associate_managed_notification_additional_channel/3,
         associate_managed_notification_additional_channel/4,
         create_event_rule/2,
         create_event_rule/3,
         create_notification_configuration/2,
         create_notification_configuration/3,
         delete_event_rule/3,
         delete_event_rule/4,
         delete_notification_configuration/3,
         delete_notification_configuration/4,
         deregister_notification_hub/3,
         deregister_notification_hub/4,
         disable_notifications_access_for_organization/2,
         disable_notifications_access_for_organization/3,
         disassociate_channel/3,
         disassociate_channel/4,
         disassociate_managed_notification_account_contact/3,
         disassociate_managed_notification_account_contact/4,
         disassociate_managed_notification_additional_channel/3,
         disassociate_managed_notification_additional_channel/4,
         enable_notifications_access_for_organization/2,
         enable_notifications_access_for_organization/3,
         get_event_rule/2,
         get_event_rule/4,
         get_event_rule/5,
         get_managed_notification_child_event/2,
         get_managed_notification_child_event/4,
         get_managed_notification_child_event/5,
         get_managed_notification_configuration/2,
         get_managed_notification_configuration/4,
         get_managed_notification_configuration/5,
         get_managed_notification_event/2,
         get_managed_notification_event/4,
         get_managed_notification_event/5,
         get_notification_configuration/2,
         get_notification_configuration/4,
         get_notification_configuration/5,
         get_notification_event/2,
         get_notification_event/4,
         get_notification_event/5,
         get_notifications_access_for_organization/1,
         get_notifications_access_for_organization/3,
         get_notifications_access_for_organization/4,
         list_channels/2,
         list_channels/4,
         list_channels/5,
         list_event_rules/2,
         list_event_rules/4,
         list_event_rules/5,
         list_managed_notification_channel_associations/2,
         list_managed_notification_channel_associations/4,
         list_managed_notification_channel_associations/5,
         list_managed_notification_child_events/2,
         list_managed_notification_child_events/4,
         list_managed_notification_child_events/5,
         list_managed_notification_configurations/1,
         list_managed_notification_configurations/3,
         list_managed_notification_configurations/4,
         list_managed_notification_events/1,
         list_managed_notification_events/3,
         list_managed_notification_events/4,
         list_notification_configurations/1,
         list_notification_configurations/3,
         list_notification_configurations/4,
         list_notification_events/1,
         list_notification_events/3,
         list_notification_events/4,
         list_notification_hubs/1,
         list_notification_hubs/3,
         list_notification_hubs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_notification_hub/2,
         register_notification_hub/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_event_rule/3,
         update_event_rule/4,
         update_notification_configuration/3,
         update_notification_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_managed_notification_channel_associations_request() :: #{
%%   <<"managedNotificationConfigurationArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_channel_associations_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% source_event_metadata_summary() :: #{
%%   <<"eventOriginRegion">> => [string()],
%%   <<"eventType">> => [string()],
%%   <<"source">> => [string()]
%% }
-type source_event_metadata_summary() :: #{binary() => any()}.


%% Example:
%% list_managed_notification_configurations_request() :: #{
%%   <<"channelIdentifier">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_configurations_request() :: #{binary() => any()}.


%% Example:
%% text_part_value() :: #{
%%   <<"displayText">> => [string()],
%%   <<"textByLocale">> => map(),
%%   <<"type">> => string(),
%%   <<"url">> => string()
%% }
-type text_part_value() :: #{binary() => any()}.


%% Example:
%% create_event_rule_response() :: #{
%%   <<"arn">> => string(),
%%   <<"notificationConfigurationArn">> => string(),
%%   <<"statusSummaryByRegion">> => map()
%% }
-type create_event_rule_response() :: #{binary() => any()}.


%% Example:
%% notification_configuration_structure() :: #{
%%   <<"aggregationDuration">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type notification_configuration_structure() :: #{binary() => any()}.

%% Example:
%% associate_managed_notification_additional_channel_response() :: #{}
-type associate_managed_notification_additional_channel_response() :: #{}.


%% Example:
%% notifications_access_for_organization() :: #{
%%   <<"accessStatus">> => list(any())
%% }
-type notifications_access_for_organization() :: #{binary() => any()}.


%% Example:
%% get_managed_notification_child_event_request() :: #{
%%   <<"locale">> => string()
%% }
-type get_managed_notification_child_event_request() :: #{binary() => any()}.


%% Example:
%% get_notification_event_request() :: #{
%%   <<"locale">> => string()
%% }
-type get_notification_event_request() :: #{binary() => any()}.

%% Example:
%% disassociate_managed_notification_additional_channel_response() :: #{}
-type disassociate_managed_notification_additional_channel_response() :: #{}.


%% Example:
%% list_managed_notification_child_events_response() :: #{
%%   <<"managedNotificationChildEvents">> => list(managed_notification_child_event_overview()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_child_events_response() :: #{binary() => any()}.


%% Example:
%% get_managed_notification_event_request() :: #{
%%   <<"locale">> => string()
%% }
-type get_managed_notification_event_request() :: #{binary() => any()}.


%% Example:
%% notification_hub_status_summary() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => string()
%% }
-type notification_hub_status_summary() :: #{binary() => any()}.


%% Example:
%% update_event_rule_request() :: #{
%%   <<"eventPattern">> => string(),
%%   <<"regions">> => list(string())
%% }
-type update_event_rule_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% disassociate_channel_response() :: #{}
-type disassociate_channel_response() :: #{}.


%% Example:
%% media_element() :: #{
%%   <<"caption">> => string(),
%%   <<"mediaId">> => string(),
%%   <<"type">> => string(),
%%   <<"url">> => string()
%% }
-type media_element() :: #{binary() => any()}.


%% Example:
%% managed_notification_event_overview() :: #{
%%   <<"aggregatedNotificationRegions">> => list(string()),
%%   <<"aggregationEventType">> => string(),
%%   <<"aggregationSummary">> => aggregation_summary(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"managedNotificationConfigurationArn">> => string(),
%%   <<"notificationEvent">> => managed_notification_event_summary(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"relatedAccount">> => string()
%% }
-type managed_notification_event_overview() :: #{binary() => any()}.


%% Example:
%% message_components_summary() :: #{
%%   <<"headline">> => [string()]
%% }
-type message_components_summary() :: #{binary() => any()}.

%% Example:
%% delete_event_rule_response() :: #{}
-type delete_event_rule_response() :: #{}.


%% Example:
%% deregister_notification_hub_response() :: #{
%%   <<"notificationHubRegion">> => string(),
%%   <<"statusSummary">> => notification_hub_status_summary()
%% }
-type deregister_notification_hub_response() :: #{binary() => any()}.

%% Example:
%% get_notification_configuration_request() :: #{}
-type get_notification_configuration_request() :: #{}.

%% Example:
%% associate_managed_notification_account_contact_response() :: #{}
-type associate_managed_notification_account_contact_response() :: #{}.


%% Example:
%% get_managed_notification_event_response() :: #{
%%   <<"arn">> => string(),
%%   <<"content">> => managed_notification_event(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"managedNotificationConfigurationArn">> => string()
%% }
-type get_managed_notification_event_response() :: #{binary() => any()}.


%% Example:
%% managed_notification_event() :: #{
%%   <<"aggregationEventType">> => string(),
%%   <<"aggregationSummary">> => aggregation_summary(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"eventStatus">> => string(),
%%   <<"id">> => string(),
%%   <<"messageComponents">> => message_components(),
%%   <<"notificationType">> => string(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventDetailUrl">> => string(),
%%   <<"sourceEventDetailUrlDisplayText">> => [string()],
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"textParts">> => map()
%% }
-type managed_notification_event() :: #{binary() => any()}.


%% Example:
%% list_notification_hubs_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_notification_hubs_request() :: #{binary() => any()}.


%% Example:
%% get_notification_event_response() :: #{
%%   <<"arn">> => string(),
%%   <<"content">> => notification_event_schema(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"notificationConfigurationArn">> => string()
%% }
-type get_notification_event_response() :: #{binary() => any()}.


%% Example:
%% aggregation_summary() :: #{
%%   <<"additionalSummarizationDimensions">> => list(summarization_dimension_overview()),
%%   <<"aggregatedAccounts">> => summarization_dimension_overview(),
%%   <<"aggregatedBy">> => list(aggregation_key()),
%%   <<"aggregatedOrganizationalUnits">> => summarization_dimension_overview(),
%%   <<"aggregatedRegions">> => summarization_dimension_overview(),
%%   <<"eventCount">> => [integer()]
%% }
-type aggregation_summary() :: #{binary() => any()}.


%% Example:
%% aggregation_key() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type aggregation_key() :: #{binary() => any()}.


%% Example:
%% summarization_dimension_detail() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type summarization_dimension_detail() :: #{binary() => any()}.


%% Example:
%% list_event_rules_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"notificationConfigurationArn">> := string()
%% }
-type list_event_rules_request() :: #{binary() => any()}.

%% Example:
%% associate_channel_response() :: #{}
-type associate_channel_response() :: #{}.

%% Example:
%% disable_notifications_access_for_organization_request() :: #{}
-type disable_notifications_access_for_organization_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_event_rule_request() :: #{}
-type get_event_rule_request() :: #{}.


%% Example:
%% list_managed_notification_configurations_response() :: #{
%%   <<"managedNotificationConfigurations">> => list(managed_notification_configuration_structure()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_configurations_response() :: #{binary() => any()}.


%% Example:
%% list_notification_configurations_request() :: #{
%%   <<"channelArn">> => string(),
%%   <<"eventRuleSource">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_notification_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_notification_configuration_response() :: #{
%%   <<"aggregationDuration">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type get_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% associate_channel_request() :: #{
%%   <<"notificationConfigurationArn">> := string()
%% }
-type associate_channel_request() :: #{binary() => any()}.


%% Example:
%% notification_event_schema() :: #{
%%   <<"aggregateNotificationEventArn">> => string(),
%%   <<"aggregationEventType">> => string(),
%%   <<"aggregationSummary">> => aggregation_summary(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"eventStatus">> => string(),
%%   <<"id">> => string(),
%%   <<"media">> => list(media_element()),
%%   <<"messageComponents">> => message_components(),
%%   <<"notificationType">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventDetailUrl">> => string(),
%%   <<"sourceEventDetailUrlDisplayText">> => [string()],
%%   <<"sourceEventMetadata">> => source_event_metadata(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"textParts">> => map()
%% }
-type notification_event_schema() :: #{binary() => any()}.


%% Example:
%% list_notification_events_request() :: #{
%%   <<"aggregateNotificationEventArn">> => string(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"includeChildEvents">> => [boolean()],
%%   <<"locale">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"source">> => string(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_notification_events_request() :: #{binary() => any()}.

%% Example:
%% get_managed_notification_configuration_request() :: #{}
-type get_managed_notification_configuration_request() :: #{}.

%% Example:
%% disassociate_managed_notification_account_contact_response() :: #{}
-type disassociate_managed_notification_account_contact_response() :: #{}.


%% Example:
%% managed_notification_child_event() :: #{
%%   <<"aggregateManagedNotificationEventArn">> => string(),
%%   <<"aggregationDetail">> => aggregation_detail(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"eventStatus">> => string(),
%%   <<"id">> => string(),
%%   <<"messageComponents">> => message_components(),
%%   <<"notificationType">> => string(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventDetailUrl">> => string(),
%%   <<"sourceEventDetailUrlDisplayText">> => [string()],
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"textParts">> => map()
%% }
-type managed_notification_child_event() :: #{binary() => any()}.

%% Example:
%% get_notifications_access_for_organization_request() :: #{}
-type get_notifications_access_for_organization_request() :: #{}.


%% Example:
%% aggregation_detail() :: #{
%%   <<"summarizationDimensions">> => list(summarization_dimension_detail())
%% }
-type aggregation_detail() :: #{binary() => any()}.

%% Example:
%% enable_notifications_access_for_organization_response() :: #{}
-type enable_notifications_access_for_organization_response() :: #{}.


%% Example:
%% notification_hub_overview() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastActivationTime">> => non_neg_integer(),
%%   <<"notificationHubRegion">> => string(),
%%   <<"statusSummary">> => notification_hub_status_summary()
%% }
-type notification_hub_overview() :: #{binary() => any()}.


%% Example:
%% update_event_rule_response() :: #{
%%   <<"arn">> => string(),
%%   <<"notificationConfigurationArn">> => string(),
%%   <<"statusSummaryByRegion">> => map()
%% }
-type update_event_rule_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_notification_configuration_request() :: #{}
-type delete_notification_configuration_request() :: #{}.


%% Example:
%% list_notification_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notificationConfigurations">> => list(notification_configuration_structure())
%% }
-type list_notification_configurations_response() :: #{binary() => any()}.


%% Example:
%% get_notifications_access_for_organization_response() :: #{
%%   <<"notificationsAccessForOrganization">> => notifications_access_for_organization()
%% }
-type get_notifications_access_for_organization_response() :: #{binary() => any()}.

%% Example:
%% delete_notification_configuration_response() :: #{}
-type delete_notification_configuration_response() :: #{}.


%% Example:
%% list_managed_notification_events_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"locale">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"relatedAccount">> => string(),
%%   <<"source">> => string(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_managed_notification_events_request() :: #{binary() => any()}.


%% Example:
%% list_managed_notification_child_events_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"locale">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"relatedAccount">> => string(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_managed_notification_child_events_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_managed_notification_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"category">> => [string()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"subCategory">> => [string()]
%% }
-type get_managed_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% disassociate_managed_notification_additional_channel_request() :: #{
%%   <<"managedNotificationConfigurationArn">> := string()
%% }
-type disassociate_managed_notification_additional_channel_request() :: #{binary() => any()}.


%% Example:
%% event_rule_structure() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"eventPattern">> => string(),
%%   <<"eventType">> => string(),
%%   <<"managedRules">> => list(string()),
%%   <<"notificationConfigurationArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"source">> => string(),
%%   <<"statusSummaryByRegion">> => map()
%% }
-type event_rule_structure() :: #{binary() => any()}.


%% Example:
%% list_notification_hubs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notificationHubs">> => list(notification_hub_overview())
%% }
-type list_notification_hubs_response() :: #{binary() => any()}.


%% Example:
%% get_managed_notification_child_event_response() :: #{
%%   <<"arn">> => string(),
%%   <<"content">> => managed_notification_child_event(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"managedNotificationConfigurationArn">> => string()
%% }
-type get_managed_notification_child_event_response() :: #{binary() => any()}.


%% Example:
%% create_notification_configuration_request() :: #{
%%   <<"aggregationDuration">> => string(),
%%   <<"description">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_notification_configuration_request() :: #{binary() => any()}.


%% Example:
%% register_notification_hub_request() :: #{
%%   <<"notificationHubRegion">> := string()
%% }
-type register_notification_hub_request() :: #{binary() => any()}.


%% Example:
%% list_notification_events_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notificationEvents">> => list(notification_event_overview())
%% }
-type list_notification_events_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_notification_configuration_request() :: #{
%%   <<"aggregationDuration">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_notification_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_notification_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"status">> => string()
%% }
-type create_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"channels">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% managed_notification_event_summary() :: #{
%%   <<"eventStatus">> => string(),
%%   <<"messageComponents">> => message_components_summary(),
%%   <<"notificationType">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventMetadata">> => managed_source_event_metadata_summary()
%% }
-type managed_notification_event_summary() :: #{binary() => any()}.


%% Example:
%% list_managed_notification_channel_associations_response() :: #{
%%   <<"channelAssociations">> => list(managed_notification_channel_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_channel_associations_response() :: #{binary() => any()}.


%% Example:
%% event_rule_status_summary() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => string()
%% }
-type event_rule_status_summary() :: #{binary() => any()}.


%% Example:
%% list_event_rules_response() :: #{
%%   <<"eventRules">> => list(event_rule_structure()),
%%   <<"nextToken">> => string()
%% }
-type list_event_rules_response() :: #{binary() => any()}.


%% Example:
%% notification_event_summary() :: #{
%%   <<"eventStatus">> => string(),
%%   <<"messageComponents">> => message_components_summary(),
%%   <<"notificationType">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventMetadata">> => source_event_metadata_summary()
%% }
-type notification_event_summary() :: #{binary() => any()}.


%% Example:
%% list_managed_notification_events_response() :: #{
%%   <<"managedNotificationEvents">> => list(managed_notification_event_overview()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_notification_events_response() :: #{binary() => any()}.


%% Example:
%% notification_event_overview() :: #{
%%   <<"aggregateNotificationEventArn">> => string(),
%%   <<"aggregationEventType">> => string(),
%%   <<"aggregationSummary">> => aggregation_summary(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"notificationConfigurationArn">> => string(),
%%   <<"notificationEvent">> => notification_event_summary(),
%%   <<"relatedAccount">> => string()
%% }
-type notification_event_overview() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% managed_notification_child_event_summary() :: #{
%%   <<"aggregationDetail">> => aggregation_detail(),
%%   <<"eventStatus">> => string(),
%%   <<"messageComponents">> => message_components_summary(),
%%   <<"notificationType">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"sourceEventMetadata">> => managed_source_event_metadata_summary()
%% }
-type managed_notification_child_event_summary() :: #{binary() => any()}.


%% Example:
%% disassociate_channel_request() :: #{
%%   <<"notificationConfigurationArn">> := string()
%% }
-type disassociate_channel_request() :: #{binary() => any()}.


%% Example:
%% message_components() :: #{
%%   <<"completeDescription">> => string(),
%%   <<"dimensions">> => list(dimension()),
%%   <<"headline">> => string(),
%%   <<"paragraphSummary">> => string()
%% }
-type message_components() :: #{binary() => any()}.


%% Example:
%% summarization_dimension_overview() :: #{
%%   <<"count">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"sampleValues">> => list([string()]())
%% }
-type summarization_dimension_overview() :: #{binary() => any()}.


%% Example:
%% update_notification_configuration_response() :: #{
%%   <<"arn">> => string()
%% }
-type update_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_event_rule_request() :: #{}
-type delete_event_rule_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% enable_notifications_access_for_organization_request() :: #{}
-type enable_notifications_access_for_organization_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% deregister_notification_hub_request() :: #{}
-type deregister_notification_hub_request() :: #{}.


%% Example:
%% source_event_metadata() :: #{
%%   <<"eventOccurrenceTime">> => [non_neg_integer()],
%%   <<"eventOriginRegion">> => string(),
%%   <<"eventType">> => [string()],
%%   <<"eventTypeVersion">> => [string()],
%%   <<"relatedAccount">> => string(),
%%   <<"relatedResources">> => list(resource()),
%%   <<"source">> => string(),
%%   <<"sourceEventId">> => [string()]
%% }
-type source_event_metadata() :: #{binary() => any()}.


%% Example:
%% managed_notification_configuration_structure() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type managed_notification_configuration_structure() :: #{binary() => any()}.


%% Example:
%% associate_managed_notification_account_contact_request() :: #{
%%   <<"managedNotificationConfigurationArn">> := string()
%% }
-type associate_managed_notification_account_contact_request() :: #{binary() => any()}.

%% Example:
%% disable_notifications_access_for_organization_response() :: #{}
-type disable_notifications_access_for_organization_response() :: #{}.


%% Example:
%% dimension() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type dimension() :: #{binary() => any()}.


%% Example:
%% managed_notification_channel_association_summary() :: #{
%%   <<"channelIdentifier">> => [string()],
%%   <<"channelType">> => string(),
%%   <<"overrideOption">> => string()
%% }
-type managed_notification_channel_association_summary() :: #{binary() => any()}.


%% Example:
%% managed_source_event_metadata_summary() :: #{
%%   <<"eventOriginRegion">> => string(),
%%   <<"eventType">> => string(),
%%   <<"source">> => string()
%% }
-type managed_source_event_metadata_summary() :: #{binary() => any()}.


%% Example:
%% get_event_rule_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"eventPattern">> => string(),
%%   <<"eventType">> => string(),
%%   <<"managedRules">> => list(string()),
%%   <<"notificationConfigurationArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"source">> => string(),
%%   <<"statusSummaryByRegion">> => map()
%% }
-type get_event_rule_response() :: #{binary() => any()}.


%% Example:
%% disassociate_managed_notification_account_contact_request() :: #{
%%   <<"managedNotificationConfigurationArn">> := string()
%% }
-type disassociate_managed_notification_account_contact_request() :: #{binary() => any()}.


%% Example:
%% managed_notification_child_event_overview() :: #{
%%   <<"aggregateManagedNotificationEventArn">> => string(),
%%   <<"arn">> => string(),
%%   <<"childEvent">> => managed_notification_child_event_summary(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"managedNotificationConfigurationArn">> => string(),
%%   <<"organizationalUnitId">> => string(),
%%   <<"relatedAccount">> => string()
%% }
-type managed_notification_child_event_overview() :: #{binary() => any()}.


%% Example:
%% register_notification_hub_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastActivationTime">> => non_neg_integer(),
%%   <<"notificationHubRegion">> => string(),
%%   <<"statusSummary">> => notification_hub_status_summary()
%% }
-type register_notification_hub_response() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"notificationConfigurationArn">> := string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% create_event_rule_request() :: #{
%%   <<"eventPattern">> => string(),
%%   <<"eventType">> := string(),
%%   <<"notificationConfigurationArn">> := string(),
%%   <<"regions">> := list(string()),
%%   <<"source">> := string()
%% }
-type create_event_rule_request() :: #{binary() => any()}.


%% Example:
%% associate_managed_notification_additional_channel_request() :: #{
%%   <<"managedNotificationConfigurationArn">> := string()
%% }
-type associate_managed_notification_additional_channel_request() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"arn">> => string(),
%%   <<"detailUrl">> => string(),
%%   <<"id">> => [string()],
%%   <<"tags">> => list([string()]())
%% }
-type resource() :: #{binary() => any()}.

-type associate_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_managed_notification_account_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_managed_notification_additional_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_event_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_event_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_notification_hub_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_notifications_access_for_organization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_managed_notification_account_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_managed_notification_additional_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type enable_notifications_access_for_organization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_event_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_notification_child_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_notification_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_notification_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_notifications_access_for_organization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_event_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_managed_notification_channel_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_managed_notification_child_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_notification_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_notification_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_notification_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_notification_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_notification_hubs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_notification_hub_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a delivery Channel:
%% https://docs.aws.amazon.com/notifications/latest/userguide/managing-delivery-channels.html
%% with a particular `NotificationConfiguration'.
%%
%% Supported Channels include Chatbot,
%% the Console Mobile Application, and emails (notifications-contacts).
-spec associate_channel(aws_client:aws_client(), binary() | list(), associate_channel_request()) ->
    {ok, associate_channel_response(), tuple()} |
    {error, any()} |
    {error, associate_channel_errors(), tuple()}.
associate_channel(Client, Arn, Input) ->
    associate_channel(Client, Arn, Input, []).

-spec associate_channel(aws_client:aws_client(), binary() | list(), associate_channel_request(), proplists:proplist()) ->
    {ok, associate_channel_response(), tuple()} |
    {error, any()} |
    {error, associate_channel_errors(), tuple()}.
associate_channel(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/associate/", aws_util:encode_uri(Arn), ""],
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

%% @doc Associates an Account Contact with a particular
%% `ManagedNotificationConfiguration'.
-spec associate_managed_notification_account_contact(aws_client:aws_client(), binary() | list(), associate_managed_notification_account_contact_request()) ->
    {ok, associate_managed_notification_account_contact_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_notification_account_contact_errors(), tuple()}.
associate_managed_notification_account_contact(Client, ContactIdentifier, Input) ->
    associate_managed_notification_account_contact(Client, ContactIdentifier, Input, []).

-spec associate_managed_notification_account_contact(aws_client:aws_client(), binary() | list(), associate_managed_notification_account_contact_request(), proplists:proplist()) ->
    {ok, associate_managed_notification_account_contact_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_notification_account_contact_errors(), tuple()}.
associate_managed_notification_account_contact(Client, ContactIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/contacts/associate-managed-notification/", aws_util:encode_uri(ContactIdentifier), ""],
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

%% @doc Associates an additional Channel with a particular
%% `ManagedNotificationConfiguration'.
%%
%% Supported Channels include Chatbot, the Console Mobile Application, and
%% emails (notifications-contacts).
-spec associate_managed_notification_additional_channel(aws_client:aws_client(), binary() | list(), associate_managed_notification_additional_channel_request()) ->
    {ok, associate_managed_notification_additional_channel_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_notification_additional_channel_errors(), tuple()}.
associate_managed_notification_additional_channel(Client, ChannelArn, Input) ->
    associate_managed_notification_additional_channel(Client, ChannelArn, Input, []).

-spec associate_managed_notification_additional_channel(aws_client:aws_client(), binary() | list(), associate_managed_notification_additional_channel_request(), proplists:proplist()) ->
    {ok, associate_managed_notification_additional_channel_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_notification_additional_channel_errors(), tuple()}.
associate_managed_notification_additional_channel(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/associate-managed-notification/", aws_util:encode_uri(ChannelArn), ""],
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

%% @doc Creates an
%% `EventRule'
%% : https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html
%% that
%% is associated with a specified `NotificationConfiguration'.
-spec create_event_rule(aws_client:aws_client(), create_event_rule_request()) ->
    {ok, create_event_rule_response(), tuple()} |
    {error, any()} |
    {error, create_event_rule_errors(), tuple()}.
create_event_rule(Client, Input) ->
    create_event_rule(Client, Input, []).

-spec create_event_rule(aws_client:aws_client(), create_event_rule_request(), proplists:proplist()) ->
    {ok, create_event_rule_response(), tuple()} |
    {error, any()} |
    {error, create_event_rule_errors(), tuple()}.
create_event_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/event-rules"],
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

%% @doc Creates a new `NotificationConfiguration'.
-spec create_notification_configuration(aws_client:aws_client(), create_notification_configuration_request()) ->
    {ok, create_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_notification_configuration_errors(), tuple()}.
create_notification_configuration(Client, Input) ->
    create_notification_configuration(Client, Input, []).

-spec create_notification_configuration(aws_client:aws_client(), create_notification_configuration_request(), proplists:proplist()) ->
    {ok, create_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_notification_configuration_errors(), tuple()}.
create_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/notification-configurations"],
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

%% @doc Deletes an `EventRule'.
-spec delete_event_rule(aws_client:aws_client(), binary() | list(), delete_event_rule_request()) ->
    {ok, delete_event_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_event_rule_errors(), tuple()}.
delete_event_rule(Client, Arn, Input) ->
    delete_event_rule(Client, Arn, Input, []).

-spec delete_event_rule(aws_client:aws_client(), binary() | list(), delete_event_rule_request(), proplists:proplist()) ->
    {ok, delete_event_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_event_rule_errors(), tuple()}.
delete_event_rule(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/event-rules/", aws_util:encode_uri(Arn), ""],
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

%% @doc Deletes a `NotificationConfiguration'.
-spec delete_notification_configuration(aws_client:aws_client(), binary() | list(), delete_notification_configuration_request()) ->
    {ok, delete_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, Arn, Input) ->
    delete_notification_configuration(Client, Arn, Input, []).

-spec delete_notification_configuration(aws_client:aws_client(), binary() | list(), delete_notification_configuration_request(), proplists:proplist()) ->
    {ok, delete_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/notification-configurations/", aws_util:encode_uri(Arn), ""],
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

%% @doc Deregisters a `NotificationConfiguration' in the specified
%% Region.
%%
%% You can't deregister the last `NotificationHub' in the account.
%% `NotificationEvents' stored in the deregistered
%% `NotificationConfiguration' are no
%% longer be visible. Recreating a new `NotificationConfiguration' in the
%% same Region restores access
%% to those `NotificationEvents'.
-spec deregister_notification_hub(aws_client:aws_client(), binary() | list(), deregister_notification_hub_request()) ->
    {ok, deregister_notification_hub_response(), tuple()} |
    {error, any()} |
    {error, deregister_notification_hub_errors(), tuple()}.
deregister_notification_hub(Client, NotificationHubRegion, Input) ->
    deregister_notification_hub(Client, NotificationHubRegion, Input, []).

-spec deregister_notification_hub(aws_client:aws_client(), binary() | list(), deregister_notification_hub_request(), proplists:proplist()) ->
    {ok, deregister_notification_hub_response(), tuple()} |
    {error, any()} |
    {error, deregister_notification_hub_errors(), tuple()}.
deregister_notification_hub(Client, NotificationHubRegion, Input0, Options0) ->
    Method = delete,
    Path = ["/notification-hubs/", aws_util:encode_uri(NotificationHubRegion), ""],
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

%% @doc Disables service trust between User Notifications and Amazon Web
%% Services Organizations.
-spec disable_notifications_access_for_organization(aws_client:aws_client(), disable_notifications_access_for_organization_request()) ->
    {ok, disable_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, disable_notifications_access_for_organization_errors(), tuple()}.
disable_notifications_access_for_organization(Client, Input) ->
    disable_notifications_access_for_organization(Client, Input, []).

-spec disable_notifications_access_for_organization(aws_client:aws_client(), disable_notifications_access_for_organization_request(), proplists:proplist()) ->
    {ok, disable_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, disable_notifications_access_for_organization_errors(), tuple()}.
disable_notifications_access_for_organization(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/organization/access"],
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

%% @doc Disassociates a Channel from a specified
%% `NotificationConfiguration'.
%%
%% Supported Channels include Chatbot, the Console Mobile Application, and
%% emails (notifications-contacts).
-spec disassociate_channel(aws_client:aws_client(), binary() | list(), disassociate_channel_request()) ->
    {ok, disassociate_channel_response(), tuple()} |
    {error, any()} |
    {error, disassociate_channel_errors(), tuple()}.
disassociate_channel(Client, Arn, Input) ->
    disassociate_channel(Client, Arn, Input, []).

-spec disassociate_channel(aws_client:aws_client(), binary() | list(), disassociate_channel_request(), proplists:proplist()) ->
    {ok, disassociate_channel_response(), tuple()} |
    {error, any()} |
    {error, disassociate_channel_errors(), tuple()}.
disassociate_channel(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/disassociate/", aws_util:encode_uri(Arn), ""],
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

%% @doc Disassociates an Account Contact with a particular
%% `ManagedNotificationConfiguration'.
-spec disassociate_managed_notification_account_contact(aws_client:aws_client(), binary() | list(), disassociate_managed_notification_account_contact_request()) ->
    {ok, disassociate_managed_notification_account_contact_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_notification_account_contact_errors(), tuple()}.
disassociate_managed_notification_account_contact(Client, ContactIdentifier, Input) ->
    disassociate_managed_notification_account_contact(Client, ContactIdentifier, Input, []).

-spec disassociate_managed_notification_account_contact(aws_client:aws_client(), binary() | list(), disassociate_managed_notification_account_contact_request(), proplists:proplist()) ->
    {ok, disassociate_managed_notification_account_contact_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_notification_account_contact_errors(), tuple()}.
disassociate_managed_notification_account_contact(Client, ContactIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/contacts/disassociate-managed-notification/", aws_util:encode_uri(ContactIdentifier), ""],
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

%% @doc Disassociates an additional Channel from a particular
%% `ManagedNotificationConfiguration'.
%%
%% Supported Channels include Chatbot, the Console Mobile Application, and
%% emails (notifications-contacts).
-spec disassociate_managed_notification_additional_channel(aws_client:aws_client(), binary() | list(), disassociate_managed_notification_additional_channel_request()) ->
    {ok, disassociate_managed_notification_additional_channel_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_notification_additional_channel_errors(), tuple()}.
disassociate_managed_notification_additional_channel(Client, ChannelArn, Input) ->
    disassociate_managed_notification_additional_channel(Client, ChannelArn, Input, []).

-spec disassociate_managed_notification_additional_channel(aws_client:aws_client(), binary() | list(), disassociate_managed_notification_additional_channel_request(), proplists:proplist()) ->
    {ok, disassociate_managed_notification_additional_channel_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_notification_additional_channel_errors(), tuple()}.
disassociate_managed_notification_additional_channel(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/disassociate-managed-notification/", aws_util:encode_uri(ChannelArn), ""],
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

%% @doc Enables service trust between User Notifications and Amazon Web
%% Services Organizations.
-spec enable_notifications_access_for_organization(aws_client:aws_client(), enable_notifications_access_for_organization_request()) ->
    {ok, enable_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, enable_notifications_access_for_organization_errors(), tuple()}.
enable_notifications_access_for_organization(Client, Input) ->
    enable_notifications_access_for_organization(Client, Input, []).

-spec enable_notifications_access_for_organization(aws_client:aws_client(), enable_notifications_access_for_organization_request(), proplists:proplist()) ->
    {ok, enable_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, enable_notifications_access_for_organization_errors(), tuple()}.
enable_notifications_access_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/access"],
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

%% @doc Returns a specified `EventRule'.
-spec get_event_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_rule_response(), tuple()} |
    {error, any()} |
    {error, get_event_rule_errors(), tuple()}.
get_event_rule(Client, Arn)
  when is_map(Client) ->
    get_event_rule(Client, Arn, #{}, #{}).

-spec get_event_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_rule_response(), tuple()} |
    {error, any()} |
    {error, get_event_rule_errors(), tuple()}.
get_event_rule(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_rule(Client, Arn, QueryMap, HeadersMap, []).

-spec get_event_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_rule_response(), tuple()} |
    {error, any()} |
    {error, get_event_rule_errors(), tuple()}.
get_event_rule(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-rules/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the child event of a specific given
%% `ManagedNotificationEvent'.
-spec get_managed_notification_child_event(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_notification_child_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_child_event_errors(), tuple()}.
get_managed_notification_child_event(Client, Arn)
  when is_map(Client) ->
    get_managed_notification_child_event(Client, Arn, #{}, #{}).

-spec get_managed_notification_child_event(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_notification_child_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_child_event_errors(), tuple()}.
get_managed_notification_child_event(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_notification_child_event(Client, Arn, QueryMap, HeadersMap, []).

-spec get_managed_notification_child_event(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_notification_child_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_child_event_errors(), tuple()}.
get_managed_notification_child_event(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-notification-child-events/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a specified `ManagedNotificationConfiguration'.
-spec get_managed_notification_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_configuration_errors(), tuple()}.
get_managed_notification_configuration(Client, Arn)
  when is_map(Client) ->
    get_managed_notification_configuration(Client, Arn, #{}, #{}).

-spec get_managed_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_configuration_errors(), tuple()}.
get_managed_notification_configuration(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_notification_configuration(Client, Arn, QueryMap, HeadersMap, []).

-spec get_managed_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_configuration_errors(), tuple()}.
get_managed_notification_configuration(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-notification-configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a specified `ManagedNotificationEvent'.
-spec get_managed_notification_event(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_event_errors(), tuple()}.
get_managed_notification_event(Client, Arn)
  when is_map(Client) ->
    get_managed_notification_event(Client, Arn, #{}, #{}).

-spec get_managed_notification_event(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_event_errors(), tuple()}.
get_managed_notification_event(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_notification_event(Client, Arn, QueryMap, HeadersMap, []).

-spec get_managed_notification_event(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_managed_notification_event_errors(), tuple()}.
get_managed_notification_event(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-notification-events/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a specified `NotificationConfiguration'.
-spec get_notification_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, Arn)
  when is_map(Client) ->
    get_notification_configuration(Client, Arn, #{}, #{}).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notification_configuration(Client, Arn, QueryMap, HeadersMap, []).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a specified `NotificationEvent'.
%%
%% User Notifications stores notifications in the individual Regions you
%% register as notification hubs and the Region of the source event rule.
%% `GetNotificationEvent' only returns notifications stored in the same
%% Region in which the action is called.
%% User Notifications doesn't backfill notifications to new Regions
%% selected as notification hubs. For this reason, we recommend that you make
%% calls in your oldest registered notification hub.
%% For more information, see Notification hubs:
%% https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html
%% in the Amazon Web Services User Notifications User Guide.
-spec get_notification_event(aws_client:aws_client(), binary() | list()) ->
    {ok, get_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_notification_event_errors(), tuple()}.
get_notification_event(Client, Arn)
  when is_map(Client) ->
    get_notification_event(Client, Arn, #{}, #{}).

-spec get_notification_event(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_notification_event_errors(), tuple()}.
get_notification_event(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notification_event(Client, Arn, QueryMap, HeadersMap, []).

-spec get_notification_event(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_notification_event_response(), tuple()} |
    {error, any()} |
    {error, get_notification_event_errors(), tuple()}.
get_notification_event(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-events/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the AccessStatus of Service Trust Enablement for User
%% Notifications and Amazon Web Services Organizations.
-spec get_notifications_access_for_organization(aws_client:aws_client()) ->
    {ok, get_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, get_notifications_access_for_organization_errors(), tuple()}.
get_notifications_access_for_organization(Client)
  when is_map(Client) ->
    get_notifications_access_for_organization(Client, #{}, #{}).

-spec get_notifications_access_for_organization(aws_client:aws_client(), map(), map()) ->
    {ok, get_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, get_notifications_access_for_organization_errors(), tuple()}.
get_notifications_access_for_organization(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notifications_access_for_organization(Client, QueryMap, HeadersMap, []).

-spec get_notifications_access_for_organization(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_notifications_access_for_organization_response(), tuple()} |
    {error, any()} |
    {error, get_notifications_access_for_organization_errors(), tuple()}.
get_notifications_access_for_organization(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organization/access"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Channels for a `NotificationConfiguration'.
-spec list_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, NotificationConfigurationArn)
  when is_map(Client) ->
    list_channels(Client, NotificationConfigurationArn, #{}, #{}).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, NotificationConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, NotificationConfigurationArn, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, NotificationConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
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
        {<<"notificationConfigurationArn">>, NotificationConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `EventRules' according to specified filters, in
%% reverse chronological order (newest first).
-spec list_event_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_event_rules_response(), tuple()} |
    {error, any()} |
    {error, list_event_rules_errors(), tuple()}.
list_event_rules(Client, NotificationConfigurationArn)
  when is_map(Client) ->
    list_event_rules(Client, NotificationConfigurationArn, #{}, #{}).

-spec list_event_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_event_rules_response(), tuple()} |
    {error, any()} |
    {error, list_event_rules_errors(), tuple()}.
list_event_rules(Client, NotificationConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_rules(Client, NotificationConfigurationArn, QueryMap, HeadersMap, []).

-spec list_event_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_event_rules_response(), tuple()} |
    {error, any()} |
    {error, list_event_rules_errors(), tuple()}.
list_event_rules(Client, NotificationConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-rules"],
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
        {<<"notificationConfigurationArn">>, NotificationConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Account contacts and Channels associated with a
%% `ManagedNotificationConfiguration', in paginated format.
-spec list_managed_notification_channel_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_notification_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_channel_associations_errors(), tuple()}.
list_managed_notification_channel_associations(Client, ManagedNotificationConfigurationArn)
  when is_map(Client) ->
    list_managed_notification_channel_associations(Client, ManagedNotificationConfigurationArn, #{}, #{}).

-spec list_managed_notification_channel_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_notification_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_channel_associations_errors(), tuple()}.
list_managed_notification_channel_associations(Client, ManagedNotificationConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_notification_channel_associations(Client, ManagedNotificationConfigurationArn, QueryMap, HeadersMap, []).

-spec list_managed_notification_channel_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_notification_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_channel_associations_errors(), tuple()}.
list_managed_notification_channel_associations(Client, ManagedNotificationConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/list-managed-notification-channel-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"managedNotificationConfigurationArn">>, ManagedNotificationConfigurationArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `ManagedNotificationChildEvents' for a
%% specified aggregate `ManagedNotificationEvent', ordered by creation
%% time in reverse chronological order (newest first).
-spec list_managed_notification_child_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_notification_child_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_child_events_errors(), tuple()}.
list_managed_notification_child_events(Client, AggregateManagedNotificationEventArn)
  when is_map(Client) ->
    list_managed_notification_child_events(Client, AggregateManagedNotificationEventArn, #{}, #{}).

-spec list_managed_notification_child_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_notification_child_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_child_events_errors(), tuple()}.
list_managed_notification_child_events(Client, AggregateManagedNotificationEventArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_notification_child_events(Client, AggregateManagedNotificationEventArn, QueryMap, HeadersMap, []).

-spec list_managed_notification_child_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_notification_child_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_child_events_errors(), tuple()}.
list_managed_notification_child_events(Client, AggregateManagedNotificationEventArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-managed-notification-child-events/", aws_util:encode_uri(AggregateManagedNotificationEventArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"organizationalUnitId">>, maps:get(<<"organizationalUnitId">>, QueryMap, undefined)},
        {<<"relatedAccount">>, maps:get(<<"relatedAccount">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Managed Notification Configurations according to
%% specified filters, ordered by creation time in reverse chronological order
%% (newest first).
-spec list_managed_notification_configurations(aws_client:aws_client()) ->
    {ok, list_managed_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_configurations_errors(), tuple()}.
list_managed_notification_configurations(Client)
  when is_map(Client) ->
    list_managed_notification_configurations(Client, #{}, #{}).

-spec list_managed_notification_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_configurations_errors(), tuple()}.
list_managed_notification_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_notification_configurations(Client, QueryMap, HeadersMap, []).

-spec list_managed_notification_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_configurations_errors(), tuple()}.
list_managed_notification_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-notification-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelIdentifier">>, maps:get(<<"channelIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Managed Notification Events according to specified
%% filters, ordered by creation time in reverse chronological order (newest
%% first).
-spec list_managed_notification_events(aws_client:aws_client()) ->
    {ok, list_managed_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_events_errors(), tuple()}.
list_managed_notification_events(Client)
  when is_map(Client) ->
    list_managed_notification_events(Client, #{}, #{}).

-spec list_managed_notification_events(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_events_errors(), tuple()}.
list_managed_notification_events(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_notification_events(Client, QueryMap, HeadersMap, []).

-spec list_managed_notification_events(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_notification_events_errors(), tuple()}.
list_managed_notification_events(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-notification-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"organizationalUnitId">>, maps:get(<<"organizationalUnitId">>, QueryMap, undefined)},
        {<<"relatedAccount">>, maps:get(<<"relatedAccount">>, QueryMap, undefined)},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of abbreviated `NotificationConfigurations'
%% according to
%% specified filters, in reverse chronological order (newest first).
-spec list_notification_configurations(aws_client:aws_client()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client)
  when is_map(Client) ->
    list_notification_configurations(Client, #{}, #{}).

-spec list_notification_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notification_configurations(Client, QueryMap, HeadersMap, []).

-spec list_notification_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelArn">>, maps:get(<<"channelArn">>, QueryMap, undefined)},
        {<<"eventRuleSource">>, maps:get(<<"eventRuleSource">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `NotificationEvents' according to specified
%% filters, in reverse chronological order (newest first).
%%
%% User Notifications stores notifications in the individual Regions you
%% register as notification hubs and the Region of the source event rule.
%% ListNotificationEvents only returns notifications stored in the same
%% Region in which the action is called.
%% User Notifications doesn't backfill notifications to new Regions
%% selected as notification hubs. For this reason, we recommend that you make
%% calls in your oldest registered notification hub.
%% For more information, see Notification hubs:
%% https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html
%% in the Amazon Web Services User Notifications User Guide.
-spec list_notification_events(aws_client:aws_client()) ->
    {ok, list_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_notification_events_errors(), tuple()}.
list_notification_events(Client)
  when is_map(Client) ->
    list_notification_events(Client, #{}, #{}).

-spec list_notification_events(aws_client:aws_client(), map(), map()) ->
    {ok, list_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_notification_events_errors(), tuple()}.
list_notification_events(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notification_events(Client, QueryMap, HeadersMap, []).

-spec list_notification_events(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notification_events_response(), tuple()} |
    {error, any()} |
    {error, list_notification_events_errors(), tuple()}.
list_notification_events(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"aggregateNotificationEventArn">>, maps:get(<<"aggregateNotificationEventArn">>, QueryMap, undefined)},
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"includeChildEvents">>, maps:get(<<"includeChildEvents">>, QueryMap, undefined)},
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `NotificationHubs'.
-spec list_notification_hubs(aws_client:aws_client()) ->
    {ok, list_notification_hubs_response(), tuple()} |
    {error, any()} |
    {error, list_notification_hubs_errors(), tuple()}.
list_notification_hubs(Client)
  when is_map(Client) ->
    list_notification_hubs(Client, #{}, #{}).

-spec list_notification_hubs(aws_client:aws_client(), map(), map()) ->
    {ok, list_notification_hubs_response(), tuple()} |
    {error, any()} |
    {error, list_notification_hubs_errors(), tuple()}.
list_notification_hubs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notification_hubs(Client, QueryMap, HeadersMap, []).

-spec list_notification_hubs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notification_hubs_response(), tuple()} |
    {error, any()} |
    {error, list_notification_hubs_errors(), tuple()}.
list_notification_hubs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-hubs"],
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

%% @doc Returns a list of tags for a specified Amazon Resource Name (ARN).
%%
%% For more information, see Tagging your Amazon Web Services resources:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html in
%% the Tagging Amazon Web Services Resources User Guide.
%%
%% This is only supported for `NotificationConfigurations'.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers a `NotificationConfiguration' in the specified Region.
%%
%% There is a maximum of one `NotificationConfiguration' per Region. You
%% can have a
%% maximum of 3 `NotificationHub' resources at a time.
-spec register_notification_hub(aws_client:aws_client(), register_notification_hub_request()) ->
    {ok, register_notification_hub_response(), tuple()} |
    {error, any()} |
    {error, register_notification_hub_errors(), tuple()}.
register_notification_hub(Client, Input) ->
    register_notification_hub(Client, Input, []).

-spec register_notification_hub(aws_client:aws_client(), register_notification_hub_request(), proplists:proplist()) ->
    {ok, register_notification_hub_response(), tuple()} |
    {error, any()} |
    {error, register_notification_hub_errors(), tuple()}.
register_notification_hub(Client, Input0, Options0) ->
    Method = post,
    Path = ["/notification-hubs"],
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

%% @doc Tags the resource with a tag key and value.
%%
%% For more information, see Tagging your Amazon Web Services resources:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html in
%% the Tagging Amazon Web Services Resources User Guide.
%%
%% This is only supported for `NotificationConfigurations'.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Untags a resource with a specified Amazon Resource Name (ARN).
%%
%% For more information, see Tagging your Amazon Web Services resources:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html in
%% the Tagging Amazon Web Services Resources User Guide.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates an existing `EventRule'.
-spec update_event_rule(aws_client:aws_client(), binary() | list(), update_event_rule_request()) ->
    {ok, update_event_rule_response(), tuple()} |
    {error, any()} |
    {error, update_event_rule_errors(), tuple()}.
update_event_rule(Client, Arn, Input) ->
    update_event_rule(Client, Arn, Input, []).

-spec update_event_rule(aws_client:aws_client(), binary() | list(), update_event_rule_request(), proplists:proplist()) ->
    {ok, update_event_rule_response(), tuple()} |
    {error, any()} |
    {error, update_event_rule_errors(), tuple()}.
update_event_rule(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/event-rules/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates a `NotificationConfiguration'.
-spec update_notification_configuration(aws_client:aws_client(), binary() | list(), update_notification_configuration_request()) ->
    {ok, update_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, Arn, Input) ->
    update_notification_configuration(Client, Arn, Input, []).

-spec update_notification_configuration(aws_client:aws_client(), binary() | list(), update_notification_configuration_request(), proplists:proplist()) ->
    {ok, update_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/notification-configurations/", aws_util:encode_uri(Arn), ""],
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
    Client1 = Client#{service => <<"notifications">>},
    Host = build_host(<<"notifications">>, Client1),
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
