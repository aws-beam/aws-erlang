%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Shield Advanced
%%
%% This is the Shield Advanced API Reference.
%%
%% This guide is for developers who need detailed information about the
%% Shield Advanced API actions,
%% data types, and errors. For detailed information about WAF and Shield
%% Advanced features and an overview of how to use the WAF and Shield
%% Advanced APIs, see the
%% WAF and Shield Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-module(aws_shield).

-export([associate_drt_log_bucket/2,
         associate_drt_log_bucket/3,
         associate_drt_role/2,
         associate_drt_role/3,
         associate_health_check/2,
         associate_health_check/3,
         associate_proactive_engagement_details/2,
         associate_proactive_engagement_details/3,
         create_protection/2,
         create_protection/3,
         create_protection_group/2,
         create_protection_group/3,
         create_subscription/2,
         create_subscription/3,
         delete_protection/2,
         delete_protection/3,
         delete_protection_group/2,
         delete_protection_group/3,
         delete_subscription/2,
         delete_subscription/3,
         describe_attack/2,
         describe_attack/3,
         describe_attack_statistics/2,
         describe_attack_statistics/3,
         describe_drt_access/2,
         describe_drt_access/3,
         describe_emergency_contact_settings/2,
         describe_emergency_contact_settings/3,
         describe_protection/2,
         describe_protection/3,
         describe_protection_group/2,
         describe_protection_group/3,
         describe_subscription/2,
         describe_subscription/3,
         disable_application_layer_automatic_response/2,
         disable_application_layer_automatic_response/3,
         disable_proactive_engagement/2,
         disable_proactive_engagement/3,
         disassociate_drt_log_bucket/2,
         disassociate_drt_log_bucket/3,
         disassociate_drt_role/2,
         disassociate_drt_role/3,
         disassociate_health_check/2,
         disassociate_health_check/3,
         enable_application_layer_automatic_response/2,
         enable_application_layer_automatic_response/3,
         enable_proactive_engagement/2,
         enable_proactive_engagement/3,
         get_subscription_state/2,
         get_subscription_state/3,
         list_attacks/2,
         list_attacks/3,
         list_protection_groups/2,
         list_protection_groups/3,
         list_protections/2,
         list_protections/3,
         list_resources_in_protection_group/2,
         list_resources_in_protection_group/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application_layer_automatic_response/2,
         update_application_layer_automatic_response/3,
         update_emergency_contact_settings/2,
         update_emergency_contact_settings/3,
         update_protection_group/2,
         update_protection_group/3,
         update_subscription/2,
         update_subscription/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_protection_group_request() :: #{
%%   <<"Aggregation">> := list(any()),
%%   <<"Members">> => list(string()),
%%   <<"Pattern">> := list(any()),
%%   <<"ProtectionGroupId">> := string(),
%%   <<"ResourceType">> => list(any())
%% }
-type update_protection_group_request() :: #{binary() => any()}.

%% Example:
%% create_subscription_request() :: #{

%% }
-type create_subscription_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_resources_in_protection_group_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceArns">> => list(string())
%% }
-type list_resources_in_protection_group_response() :: #{binary() => any()}.

%% Example:
%% describe_subscription_request() :: #{

%% }
-type describe_subscription_request() :: #{binary() => any()}.

%% Example:
%% disable_proactive_engagement_request() :: #{

%% }
-type disable_proactive_engagement_request() :: #{binary() => any()}.

%% Example:
%% delete_subscription_request() :: #{

%% }
-type delete_subscription_request() :: #{binary() => any()}.

%% Example:
%% attack_vector_description() :: #{
%%   <<"VectorType">> => string()
%% }
-type attack_vector_description() :: #{binary() => any()}.

%% Example:
%% update_emergency_contact_settings_request() :: #{
%%   <<"EmergencyContactList">> => list(emergency_contact())
%% }
-type update_emergency_contact_settings_request() :: #{binary() => any()}.

%% Example:
%% describe_protection_group_response() :: #{
%%   <<"ProtectionGroup">> => protection_group()
%% }
-type describe_protection_group_response() :: #{binary() => any()}.

%% Example:
%% delete_protection_group_response() :: #{

%% }
-type delete_protection_group_response() :: #{binary() => any()}.

%% Example:
%% describe_protection_group_request() :: #{
%%   <<"ProtectionGroupId">> := string()
%% }
-type describe_protection_group_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% inclusion_protection_filters() :: #{
%%   <<"ProtectionNames">> => list(string()),
%%   <<"ResourceArns">> => list(string()),
%%   <<"ResourceTypes">> => list(list(any())())
%% }
-type inclusion_protection_filters() :: #{binary() => any()}.

%% Example:
%% protection_group_arbitrary_pattern_limits() :: #{
%%   <<"MaxMembers">> => float()
%% }
-type protection_group_arbitrary_pattern_limits() :: #{binary() => any()}.

%% Example:
%% disassociate_health_check_request() :: #{
%%   <<"HealthCheckArn">> := string(),
%%   <<"ProtectionId">> := string()
%% }
-type disassociate_health_check_request() :: #{binary() => any()}.

%% Example:
%% disassociate_drt_log_bucket_request() :: #{
%%   <<"LogBucket">> := string()
%% }
-type disassociate_drt_log_bucket_request() :: #{binary() => any()}.

%% Example:
%% list_attacks_request() :: #{
%%   <<"EndTime">> => time_range(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArns">> => list(string()),
%%   <<"StartTime">> => time_range()
%% }
-type list_attacks_request() :: #{binary() => any()}.

%% Example:
%% describe_emergency_contact_settings_response() :: #{
%%   <<"EmergencyContactList">> => list(emergency_contact())
%% }
-type describe_emergency_contact_settings_response() :: #{binary() => any()}.

%% Example:
%% response_action() :: #{
%%   <<"Block">> => block_action(),
%%   <<"Count">> => count_action()
%% }
-type response_action() :: #{binary() => any()}.

%% Example:
%% associate_drt_log_bucket_response() :: #{

%% }
-type associate_drt_log_bucket_response() :: #{binary() => any()}.

%% Example:
%% count_action() :: #{

%% }
-type count_action() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% protection_limits() :: #{
%%   <<"ProtectedResourceTypeLimits">> => list(limit())
%% }
-type protection_limits() :: #{binary() => any()}.

%% Example:
%% list_protections_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Protections">> => list(protection())
%% }
-type list_protections_response() :: #{binary() => any()}.

%% Example:
%% contributor() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => float()
%% }
-type contributor() :: #{binary() => any()}.

%% Example:
%% protection_group() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"Members">> => list(string()),
%%   <<"Pattern">> => list(any()),
%%   <<"ProtectionGroupArn">> => string(),
%%   <<"ProtectionGroupId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type protection_group() :: #{binary() => any()}.

%% Example:
%% limit() :: #{
%%   <<"Max">> => float(),
%%   <<"Type">> => string()
%% }
-type limit() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_subscription_state_response() :: #{
%%   <<"SubscriptionState">> => list(any())
%% }
-type get_subscription_state_response() :: #{binary() => any()}.

%% Example:
%% locked_subscription_exception() :: #{
%%   <<"message">> => string()
%% }
-type locked_subscription_exception() :: #{binary() => any()}.

%% Example:
%% list_protection_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProtectionGroups">> => list(protection_group())
%% }
-type list_protection_groups_response() :: #{binary() => any()}.

%% Example:
%% protection_group_pattern_type_limits() :: #{
%%   <<"ArbitraryPatternLimits">> => protection_group_arbitrary_pattern_limits()
%% }
-type protection_group_pattern_type_limits() :: #{binary() => any()}.

%% Example:
%% describe_attack_statistics_request() :: #{

%% }
-type describe_attack_statistics_request() :: #{binary() => any()}.

%% Example:
%% attack_detail() :: #{
%%   <<"AttackCounters">> => list(summarized_counter()),
%%   <<"AttackId">> => string(),
%%   <<"AttackProperties">> => list(attack_property()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Mitigations">> => list(mitigation()),
%%   <<"ResourceArn">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"SubResources">> => list(sub_resource_summary())
%% }
-type attack_detail() :: #{binary() => any()}.

%% Example:
%% create_protection_response() :: #{
%%   <<"ProtectionId">> => string()
%% }
-type create_protection_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% block_action() :: #{

%% }
-type block_action() :: #{binary() => any()}.

%% Example:
%% get_subscription_state_request() :: #{

%% }
-type get_subscription_state_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% enable_proactive_engagement_response() :: #{

%% }
-type enable_proactive_engagement_response() :: #{binary() => any()}.

%% Example:
%% describe_drt_access_request() :: #{

%% }
-type describe_drt_access_request() :: #{binary() => any()}.

%% Example:
%% list_protection_groups_request() :: #{
%%   <<"InclusionFilters">> => inclusion_protection_group_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_protection_groups_request() :: #{binary() => any()}.

%% Example:
%% protection() :: #{
%%   <<"ApplicationLayerAutomaticResponseConfiguration">> => application_layer_automatic_response_configuration(),
%%   <<"HealthCheckIds">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProtectionArn">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type protection() :: #{binary() => any()}.

%% Example:
%% list_attacks_response() :: #{
%%   <<"AttackSummaries">> => list(attack_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_attacks_response() :: #{binary() => any()}.

%% Example:
%% describe_subscription_response() :: #{
%%   <<"Subscription">> => subscription()
%% }
-type describe_subscription_response() :: #{binary() => any()}.

%% Example:
%% attack_volume() :: #{
%%   <<"BitsPerSecond">> => attack_volume_statistics(),
%%   <<"PacketsPerSecond">> => attack_volume_statistics(),
%%   <<"RequestsPerSecond">> => attack_volume_statistics()
%% }
-type attack_volume() :: #{binary() => any()}.

%% Example:
%% describe_attack_statistics_response() :: #{
%%   <<"DataItems">> => list(attack_statistics_data_item()),
%%   <<"TimeRange">> => time_range()
%% }
-type describe_attack_statistics_response() :: #{binary() => any()}.

%% Example:
%% enable_application_layer_automatic_response_response() :: #{

%% }
-type enable_application_layer_automatic_response_response() :: #{binary() => any()}.

%% Example:
%% create_protection_group_request() :: #{
%%   <<"Aggregation">> := list(any()),
%%   <<"Members">> => list(string()),
%%   <<"Pattern">> := list(any()),
%%   <<"ProtectionGroupId">> := string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_protection_group_request() :: #{binary() => any()}.

%% Example:
%% delete_protection_response() :: #{

%% }
-type delete_protection_response() :: #{binary() => any()}.

%% Example:
%% enable_proactive_engagement_request() :: #{

%% }
-type enable_proactive_engagement_request() :: #{binary() => any()}.

%% Example:
%% inclusion_protection_group_filters() :: #{
%%   <<"Aggregations">> => list(list(any())()),
%%   <<"Patterns">> => list(list(any())()),
%%   <<"ProtectionGroupIds">> => list(string()),
%%   <<"ResourceTypes">> => list(list(any())())
%% }
-type inclusion_protection_group_filters() :: #{binary() => any()}.

%% Example:
%% describe_protection_request() :: #{
%%   <<"ProtectionId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type describe_protection_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% associate_proactive_engagement_details_response() :: #{

%% }
-type associate_proactive_engagement_details_response() :: #{binary() => any()}.

%% Example:
%% associate_health_check_response() :: #{

%% }
-type associate_health_check_response() :: #{binary() => any()}.

%% Example:
%% associate_drt_log_bucket_request() :: #{
%%   <<"LogBucket">> := string()
%% }
-type associate_drt_log_bucket_request() :: #{binary() => any()}.

%% Example:
%% update_subscription_response() :: #{

%% }
-type update_subscription_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% optimistic_lock_exception() :: #{
%%   <<"message">> => string()
%% }
-type optimistic_lock_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_drt_role_response() :: #{

%% }
-type disassociate_drt_role_response() :: #{binary() => any()}.

%% Example:
%% disable_application_layer_automatic_response_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type disable_application_layer_automatic_response_request() :: #{binary() => any()}.

%% Example:
%% associate_proactive_engagement_details_request() :: #{
%%   <<"EmergencyContactList">> := list(emergency_contact())
%% }
-type associate_proactive_engagement_details_request() :: #{binary() => any()}.

%% Example:
%% create_subscription_response() :: #{

%% }
-type create_subscription_response() :: #{binary() => any()}.

%% Example:
%% sub_resource_summary() :: #{
%%   <<"AttackVectors">> => list(summarized_attack_vector()),
%%   <<"Counters">> => list(summarized_counter()),
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type sub_resource_summary() :: #{binary() => any()}.

%% Example:
%% disable_proactive_engagement_response() :: #{

%% }
-type disable_proactive_engagement_response() :: #{binary() => any()}.

%% Example:
%% invalid_resource_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_drt_role_request() :: #{

%% }
-type disassociate_drt_role_request() :: #{binary() => any()}.

%% Example:
%% disable_application_layer_automatic_response_response() :: #{

%% }
-type disable_application_layer_automatic_response_response() :: #{binary() => any()}.

%% Example:
%% attack_summary() :: #{
%%   <<"AttackId">> => string(),
%%   <<"AttackVectors">> => list(attack_vector_description()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type attack_summary() :: #{binary() => any()}.

%% Example:
%% update_application_layer_automatic_response_response() :: #{

%% }
-type update_application_layer_automatic_response_response() :: #{binary() => any()}.

%% Example:
%% time_range() :: #{
%%   <<"FromInclusive">> => non_neg_integer(),
%%   <<"ToExclusive">> => non_neg_integer()
%% }
-type time_range() :: #{binary() => any()}.

%% Example:
%% delete_protection_request() :: #{
%%   <<"ProtectionId">> := string()
%% }
-type delete_protection_request() :: #{binary() => any()}.

%% Example:
%% summarized_attack_vector() :: #{
%%   <<"VectorCounters">> => list(summarized_counter()),
%%   <<"VectorType">> => string()
%% }
-type summarized_attack_vector() :: #{binary() => any()}.

%% Example:
%% describe_attack_request() :: #{
%%   <<"AttackId">> := string()
%% }
-type describe_attack_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% describe_emergency_contact_settings_request() :: #{

%% }
-type describe_emergency_contact_settings_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% attack_property() :: #{
%%   <<"AttackLayer">> => list(any()),
%%   <<"AttackPropertyIdentifier">> => list(any()),
%%   <<"TopContributors">> => list(contributor()),
%%   <<"Total">> => float(),
%%   <<"Unit">> => list(any())
%% }
-type attack_property() :: #{binary() => any()}.

%% Example:
%% create_protection_group_response() :: #{

%% }
-type create_protection_group_response() :: #{binary() => any()}.

%% Example:
%% delete_protection_group_request() :: #{
%%   <<"ProtectionGroupId">> := string()
%% }
-type delete_protection_group_request() :: #{binary() => any()}.

%% Example:
%% attack_statistics_data_item() :: #{
%%   <<"AttackCount">> => float(),
%%   <<"AttackVolume">> => attack_volume()
%% }
-type attack_statistics_data_item() :: #{binary() => any()}.

%% Example:
%% delete_subscription_response() :: #{

%% }
-type delete_subscription_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% protection_group_limits() :: #{
%%   <<"MaxProtectionGroups">> => float(),
%%   <<"PatternTypeLimits">> => protection_group_pattern_type_limits()
%% }
-type protection_group_limits() :: #{binary() => any()}.

%% Example:
%% update_subscription_request() :: #{
%%   <<"AutoRenew">> => list(any())
%% }
-type update_subscription_request() :: #{binary() => any()}.

%% Example:
%% subscription() :: #{
%%   <<"AutoRenew">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Limits">> => list(limit()),
%%   <<"ProactiveEngagementStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"SubscriptionArn">> => string(),
%%   <<"SubscriptionLimits">> => subscription_limits(),
%%   <<"TimeCommitmentInSeconds">> => float()
%% }
-type subscription() :: #{binary() => any()}.

%% Example:
%% disassociate_health_check_response() :: #{

%% }
-type disassociate_health_check_response() :: #{binary() => any()}.

%% Example:
%% attack_volume_statistics() :: #{
%%   <<"Max">> => float()
%% }
-type attack_volume_statistics() :: #{binary() => any()}.

%% Example:
%% subscription_limits() :: #{
%%   <<"ProtectionGroupLimits">> => protection_group_limits(),
%%   <<"ProtectionLimits">> => protection_limits()
%% }
-type subscription_limits() :: #{binary() => any()}.

%% Example:
%% disassociate_drt_log_bucket_response() :: #{

%% }
-type disassociate_drt_log_bucket_response() :: #{binary() => any()}.

%% Example:
%% emergency_contact() :: #{
%%   <<"ContactNotes">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"PhoneNumber">> => string()
%% }
-type emergency_contact() :: #{binary() => any()}.

%% Example:
%% describe_attack_response() :: #{
%%   <<"Attack">> => attack_detail()
%% }
-type describe_attack_response() :: #{binary() => any()}.

%% Example:
%% access_denied_for_dependency_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_for_dependency_exception() :: #{binary() => any()}.

%% Example:
%% describe_drt_access_response() :: #{
%%   <<"LogBucketList">> => list(string()),
%%   <<"RoleArn">> => string()
%% }
-type describe_drt_access_response() :: #{binary() => any()}.

%% Example:
%% list_resources_in_protection_group_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProtectionGroupId">> := string()
%% }
-type list_resources_in_protection_group_request() :: #{binary() => any()}.

%% Example:
%% no_associated_role_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_associated_role_exception() :: #{binary() => any()}.

%% Example:
%% summarized_counter() :: #{
%%   <<"Average">> => float(),
%%   <<"Max">> => float(),
%%   <<"N">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Sum">> => float(),
%%   <<"Unit">> => string()
%% }
-type summarized_counter() :: #{binary() => any()}.

%% Example:
%% associate_drt_role_response() :: #{

%% }
-type associate_drt_role_response() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% limits_exceeded_exception() :: #{
%%   <<"Limit">> => float(),
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type limits_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_protection_response() :: #{
%%   <<"Protection">> => protection()
%% }
-type describe_protection_response() :: #{binary() => any()}.

%% Example:
%% associate_health_check_request() :: #{
%%   <<"HealthCheckArn">> := string(),
%%   <<"ProtectionId">> := string()
%% }
-type associate_health_check_request() :: #{binary() => any()}.

%% Example:
%% associate_drt_role_request() :: #{
%%   <<"RoleArn">> := string()
%% }
-type associate_drt_role_request() :: #{binary() => any()}.

%% Example:
%% enable_application_layer_automatic_response_request() :: #{
%%   <<"Action">> := response_action(),
%%   <<"ResourceArn">> := string()
%% }
-type enable_application_layer_automatic_response_request() :: #{binary() => any()}.

%% Example:
%% update_protection_group_response() :: #{

%% }
-type update_protection_group_response() :: #{binary() => any()}.

%% Example:
%% update_application_layer_automatic_response_request() :: #{
%%   <<"Action">> := response_action(),
%%   <<"ResourceArn">> := string()
%% }
-type update_application_layer_automatic_response_request() :: #{binary() => any()}.

%% Example:
%% application_layer_automatic_response_configuration() :: #{
%%   <<"Action">> => response_action(),
%%   <<"Status">> => list(any())
%% }
-type application_layer_automatic_response_configuration() :: #{binary() => any()}.

%% Example:
%% mitigation() :: #{
%%   <<"MitigationName">> => string()
%% }
-type mitigation() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% create_protection_request() :: #{
%%   <<"Name">> := string(),
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_protection_request() :: #{binary() => any()}.

%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.

%% Example:
%% update_emergency_contact_settings_response() :: #{

%% }
-type update_emergency_contact_settings_response() :: #{binary() => any()}.

%% Example:
%% list_protections_request() :: #{
%%   <<"InclusionFilters">> => inclusion_protection_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_protections_request() :: #{binary() => any()}.

-type associate_drt_log_bucket_errors() ::
    internal_error_exception() | 
    limits_exceeded_exception() | 
    no_associated_role_exception() | 
    access_denied_for_dependency_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type associate_drt_role_errors() ::
    internal_error_exception() | 
    access_denied_for_dependency_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type associate_health_check_errors() ::
    internal_error_exception() | 
    limits_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_resource_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type associate_proactive_engagement_details_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type create_protection_errors() ::
    internal_error_exception() | 
    limits_exceeded_exception() | 
    resource_already_exists_exception() | 
    invalid_parameter_exception() | 
    invalid_resource_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type create_protection_group_errors() ::
    internal_error_exception() | 
    limits_exceeded_exception() | 
    resource_already_exists_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type create_subscription_errors() ::
    internal_error_exception() | 
    resource_already_exists_exception().

-type delete_protection_errors() ::
    internal_error_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type delete_protection_group_errors() ::
    internal_error_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type delete_subscription_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    locked_subscription_exception().

-type describe_attack_errors() ::
    internal_error_exception() | 
    access_denied_exception().

-type describe_attack_statistics_errors() ::
    internal_error_exception().

-type describe_drt_access_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type describe_emergency_contact_settings_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type describe_protection_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type describe_protection_group_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type describe_subscription_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type disable_application_layer_automatic_response_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disable_proactive_engagement_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disassociate_drt_log_bucket_errors() ::
    internal_error_exception() | 
    no_associated_role_exception() | 
    access_denied_for_dependency_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disassociate_drt_role_errors() ::
    internal_error_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disassociate_health_check_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_resource_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type enable_application_layer_automatic_response_errors() ::
    internal_error_exception() | 
    limits_exceeded_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type enable_proactive_engagement_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_subscription_state_errors() ::
    internal_error_exception().

-type list_attacks_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_operation_exception().

-type list_protection_groups_errors() ::
    invalid_pagination_token_exception() | 
    internal_error_exception() | 
    resource_not_found_exception().

-type list_protections_errors() ::
    invalid_pagination_token_exception() | 
    internal_error_exception() | 
    resource_not_found_exception().

-type list_resources_in_protection_group_errors() ::
    invalid_pagination_token_exception() | 
    internal_error_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    internal_error_exception() | 
    invalid_resource_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_resource_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_resource_exception() | 
    resource_not_found_exception().

-type update_application_layer_automatic_response_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type update_emergency_contact_settings_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type update_protection_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception().

-type update_subscription_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    optimistic_lock_exception() | 
    resource_not_found_exception() | 
    locked_subscription_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Authorizes the Shield Response Team (SRT) to access the specified
%% Amazon S3 bucket containing log data such as Application Load Balancer
%% access logs, CloudFront logs, or logs from third party sources.
%%
%% You can associate up to 10 Amazon S3 buckets with your subscription.
%%
%% To use the services of the SRT and make an `AssociateDRTLogBucket'
%% request, you must be subscribed to the Business Support plan:
%% http://aws.amazon.com/premiumsupport/business-support/ or the Enterprise
%% Support plan: http://aws.amazon.com/premiumsupport/enterprise-support/.
-spec associate_drt_log_bucket(aws_client:aws_client(), associate_drt_log_bucket_request()) ->
    {ok, associate_drt_log_bucket_response(), tuple()} |
    {error, any()} |
    {error, associate_drt_log_bucket_errors(), tuple()}.
associate_drt_log_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_drt_log_bucket(Client, Input, []).

-spec associate_drt_log_bucket(aws_client:aws_client(), associate_drt_log_bucket_request(), proplists:proplist()) ->
    {ok, associate_drt_log_bucket_response(), tuple()} |
    {error, any()} |
    {error, associate_drt_log_bucket_errors(), tuple()}.
associate_drt_log_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDRTLogBucket">>, Input, Options).

%% @doc Authorizes the Shield Response Team (SRT) using the specified role,
%% to access your Amazon Web Services account to assist with DDoS attack
%% mitigation during potential attacks.
%%
%% This enables the SRT to inspect your WAF configuration and create or
%% update WAF rules and web ACLs.
%%
%% You can associate only one `RoleArn' with your subscription. If you
%% submit an `AssociateDRTRole' request for an account that already has
%% an associated role, the new `RoleArn' will replace the existing
%% `RoleArn'.
%%
%% Prior to making the `AssociateDRTRole' request, you must attach the
%% `AWSShieldDRTAccessPolicy' managed policy to the role that you'll
%% specify in the request. You can access this policy in the IAM console at
%% AWSShieldDRTAccessPolicy:
%% https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy.
%% For more information see Adding and removing IAM identity permissions:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html.
%% The role must also trust the service principal
%% `drt.shield.amazonaws.com'. For more information, see IAM JSON policy
%% elements: Principal:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html.
%%
%% The SRT will have access only to your WAF and Shield resources. By
%% submitting this request, you authorize the SRT to inspect your WAF and
%% Shield configuration and create and update WAF rules and web ACLs on your
%% behalf. The SRT takes these actions only if explicitly authorized by you.
%%
%% You must have the `iam:PassRole' permission to make an
%% `AssociateDRTRole' request. For more information, see Granting a user
%% permissions to pass a role to an Amazon Web Services service:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html.
%%
%% To use the services of the SRT and make an `AssociateDRTRole' request,
%% you must be subscribed to the Business Support plan:
%% http://aws.amazon.com/premiumsupport/business-support/ or the Enterprise
%% Support plan: http://aws.amazon.com/premiumsupport/enterprise-support/.
-spec associate_drt_role(aws_client:aws_client(), associate_drt_role_request()) ->
    {ok, associate_drt_role_response(), tuple()} |
    {error, any()} |
    {error, associate_drt_role_errors(), tuple()}.
associate_drt_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_drt_role(Client, Input, []).

-spec associate_drt_role(aws_client:aws_client(), associate_drt_role_request(), proplists:proplist()) ->
    {ok, associate_drt_role_response(), tuple()} |
    {error, any()} |
    {error, associate_drt_role_errors(), tuple()}.
associate_drt_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDRTRole">>, Input, Options).

%% @doc Adds health-based detection to the Shield Advanced protection for a
%% resource.
%%
%% Shield Advanced health-based detection uses the health of your Amazon Web
%% Services resource to improve responsiveness and accuracy in attack
%% detection and response.
%%
%% You define the health check in Route 53 and then associate it with your
%% Shield Advanced protection. For more information, see Shield Advanced
%% Health-Based Detection:
%% https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
%% in the WAF Developer Guide.
-spec associate_health_check(aws_client:aws_client(), associate_health_check_request()) ->
    {ok, associate_health_check_response(), tuple()} |
    {error, any()} |
    {error, associate_health_check_errors(), tuple()}.
associate_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_health_check(Client, Input, []).

-spec associate_health_check(aws_client:aws_client(), associate_health_check_request(), proplists:proplist()) ->
    {ok, associate_health_check_response(), tuple()} |
    {error, any()} |
    {error, associate_health_check_errors(), tuple()}.
associate_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateHealthCheck">>, Input, Options).

%% @doc Initializes proactive engagement and sets the list of contacts for
%% the Shield Response Team (SRT) to use.
%%
%% You must provide at least one phone number in the emergency contact list.
%%
%% After you have initialized proactive engagement using this call, to
%% disable or enable proactive engagement, use the calls
%% `DisableProactiveEngagement' and `EnableProactiveEngagement'.
%%
%% This call defines the list of email addresses and phone numbers that the
%% SRT can use to contact you for escalations to the SRT and to initiate
%% proactive customer support.
%%
%% The contacts that you provide in the request replace any contacts that
%% were already defined. If you already have contacts defined and want to use
%% them, retrieve the list using `DescribeEmergencyContactSettings' and
%% then provide it to this call.
-spec associate_proactive_engagement_details(aws_client:aws_client(), associate_proactive_engagement_details_request()) ->
    {ok, associate_proactive_engagement_details_response(), tuple()} |
    {error, any()} |
    {error, associate_proactive_engagement_details_errors(), tuple()}.
associate_proactive_engagement_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_proactive_engagement_details(Client, Input, []).

-spec associate_proactive_engagement_details(aws_client:aws_client(), associate_proactive_engagement_details_request(), proplists:proplist()) ->
    {ok, associate_proactive_engagement_details_response(), tuple()} |
    {error, any()} |
    {error, associate_proactive_engagement_details_errors(), tuple()}.
associate_proactive_engagement_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateProactiveEngagementDetails">>, Input, Options).

%% @doc Enables Shield Advanced for a specific Amazon Web Services resource.
%%
%% The resource can be an Amazon CloudFront distribution, Amazon Route 53
%% hosted zone, Global Accelerator standard accelerator, Elastic IP Address,
%% Application Load Balancer, or a Classic Load Balancer. You can protect
%% Amazon EC2 instances and Network Load Balancers by association with
%% protected Amazon EC2 Elastic IP addresses.
%%
%% You can add protection to only a single resource with each
%% `CreateProtection' request. You can add protection to multiple
%% resources
%% at once through the Shield Advanced console at
%% [https://console.aws.amazon.com/wafv2/shieldv2#/].
%% For more information see
%% Getting Started with Shield Advanced:
%% https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html
%% and Adding Shield Advanced protection to Amazon Web Services resources:
%% https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html.
-spec create_protection(aws_client:aws_client(), create_protection_request()) ->
    {ok, create_protection_response(), tuple()} |
    {error, any()} |
    {error, create_protection_errors(), tuple()}.
create_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_protection(Client, Input, []).

-spec create_protection(aws_client:aws_client(), create_protection_request(), proplists:proplist()) ->
    {ok, create_protection_response(), tuple()} |
    {error, any()} |
    {error, create_protection_errors(), tuple()}.
create_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProtection">>, Input, Options).

%% @doc Creates a grouping of protected resources so they can be handled as a
%% collective.
%%
%% This resource grouping improves the accuracy of detection and reduces
%% false positives.
-spec create_protection_group(aws_client:aws_client(), create_protection_group_request()) ->
    {ok, create_protection_group_response(), tuple()} |
    {error, any()} |
    {error, create_protection_group_errors(), tuple()}.
create_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_protection_group(Client, Input, []).

-spec create_protection_group(aws_client:aws_client(), create_protection_group_request(), proplists:proplist()) ->
    {ok, create_protection_group_response(), tuple()} |
    {error, any()} |
    {error, create_protection_group_errors(), tuple()}.
create_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProtectionGroup">>, Input, Options).

%% @doc Activates Shield Advanced for an account.
%%
%% For accounts that are members of an Organizations organization, Shield
%% Advanced subscriptions are billed against the organization's payer
%% account,
%% regardless of whether the payer account itself is subscribed.
%%
%% When you initially create a subscription, your subscription is set to be
%% automatically renewed at the end of the existing subscription period. You
%% can change this by submitting an `UpdateSubscription' request.
-spec create_subscription(aws_client:aws_client(), create_subscription_request()) ->
    {ok, create_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subscription(Client, Input, []).

-spec create_subscription(aws_client:aws_client(), create_subscription_request(), proplists:proplist()) ->
    {ok, create_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubscription">>, Input, Options).

%% @doc Deletes an Shield Advanced `Protection'.
-spec delete_protection(aws_client:aws_client(), delete_protection_request()) ->
    {ok, delete_protection_response(), tuple()} |
    {error, any()} |
    {error, delete_protection_errors(), tuple()}.
delete_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protection(Client, Input, []).

-spec delete_protection(aws_client:aws_client(), delete_protection_request(), proplists:proplist()) ->
    {ok, delete_protection_response(), tuple()} |
    {error, any()} |
    {error, delete_protection_errors(), tuple()}.
delete_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtection">>, Input, Options).

%% @doc Removes the specified protection group.
-spec delete_protection_group(aws_client:aws_client(), delete_protection_group_request()) ->
    {ok, delete_protection_group_response(), tuple()} |
    {error, any()} |
    {error, delete_protection_group_errors(), tuple()}.
delete_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protection_group(Client, Input, []).

-spec delete_protection_group(aws_client:aws_client(), delete_protection_group_request(), proplists:proplist()) ->
    {ok, delete_protection_group_response(), tuple()} |
    {error, any()} |
    {error, delete_protection_group_errors(), tuple()}.
delete_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtectionGroup">>, Input, Options).

%% @doc Removes Shield Advanced from an account.
%%
%% Shield Advanced requires a 1-year subscription commitment. You cannot
%% delete a subscription prior to the completion of that commitment.
-spec delete_subscription(aws_client:aws_client(), delete_subscription_request()) ->
    {ok, delete_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_subscription_errors(), tuple()}.
delete_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscription(Client, Input, []).

-spec delete_subscription(aws_client:aws_client(), delete_subscription_request(), proplists:proplist()) ->
    {ok, delete_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_subscription_errors(), tuple()}.
delete_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscription">>, Input, Options).

%% @doc Describes the details of a DDoS attack.
-spec describe_attack(aws_client:aws_client(), describe_attack_request()) ->
    {ok, describe_attack_response(), tuple()} |
    {error, any()} |
    {error, describe_attack_errors(), tuple()}.
describe_attack(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attack(Client, Input, []).

-spec describe_attack(aws_client:aws_client(), describe_attack_request(), proplists:proplist()) ->
    {ok, describe_attack_response(), tuple()} |
    {error, any()} |
    {error, describe_attack_errors(), tuple()}.
describe_attack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttack">>, Input, Options).

%% @doc Provides information about the number and type of attacks Shield has
%% detected in the last year for all resources that belong to your account,
%% regardless of whether you've defined Shield protections for them.
%%
%% This operation is available to Shield customers as well as to Shield
%% Advanced customers.
%%
%% The operation returns data for the time range of midnight UTC, one year
%% ago, to midnight UTC, today. For example, if the current time is
%% `2020-10-26 15:39:32 PDT', equal to `2020-10-26 22:39:32 UTC',
%% then the time range for the attack data returned is from `2019-10-26
%% 00:00:00 UTC' to `2020-10-26 00:00:00 UTC'.
%%
%% The time range indicates the period covered by the attack statistics data
%% items.
-spec describe_attack_statistics(aws_client:aws_client(), describe_attack_statistics_request()) ->
    {ok, describe_attack_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_attack_statistics_errors(), tuple()}.
describe_attack_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attack_statistics(Client, Input, []).

-spec describe_attack_statistics(aws_client:aws_client(), describe_attack_statistics_request(), proplists:proplist()) ->
    {ok, describe_attack_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_attack_statistics_errors(), tuple()}.
describe_attack_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttackStatistics">>, Input, Options).

%% @doc Returns the current role and list of Amazon S3 log buckets used by
%% the Shield Response Team (SRT) to access your Amazon Web Services account
%% while assisting with attack mitigation.
-spec describe_drt_access(aws_client:aws_client(), describe_drt_access_request()) ->
    {ok, describe_drt_access_response(), tuple()} |
    {error, any()} |
    {error, describe_drt_access_errors(), tuple()}.
describe_drt_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_drt_access(Client, Input, []).

-spec describe_drt_access(aws_client:aws_client(), describe_drt_access_request(), proplists:proplist()) ->
    {ok, describe_drt_access_response(), tuple()} |
    {error, any()} |
    {error, describe_drt_access_errors(), tuple()}.
describe_drt_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDRTAccess">>, Input, Options).

%% @doc A list of email addresses and phone numbers that the Shield Response
%% Team (SRT) can use to contact you if you have proactive engagement
%% enabled, for escalations to the SRT and to initiate proactive customer
%% support.
-spec describe_emergency_contact_settings(aws_client:aws_client(), describe_emergency_contact_settings_request()) ->
    {ok, describe_emergency_contact_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_emergency_contact_settings_errors(), tuple()}.
describe_emergency_contact_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_emergency_contact_settings(Client, Input, []).

-spec describe_emergency_contact_settings(aws_client:aws_client(), describe_emergency_contact_settings_request(), proplists:proplist()) ->
    {ok, describe_emergency_contact_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_emergency_contact_settings_errors(), tuple()}.
describe_emergency_contact_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEmergencyContactSettings">>, Input, Options).

%% @doc Lists the details of a `Protection' object.
-spec describe_protection(aws_client:aws_client(), describe_protection_request()) ->
    {ok, describe_protection_response(), tuple()} |
    {error, any()} |
    {error, describe_protection_errors(), tuple()}.
describe_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_protection(Client, Input, []).

-spec describe_protection(aws_client:aws_client(), describe_protection_request(), proplists:proplist()) ->
    {ok, describe_protection_response(), tuple()} |
    {error, any()} |
    {error, describe_protection_errors(), tuple()}.
describe_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProtection">>, Input, Options).

%% @doc Returns the specification for the specified protection group.
-spec describe_protection_group(aws_client:aws_client(), describe_protection_group_request()) ->
    {ok, describe_protection_group_response(), tuple()} |
    {error, any()} |
    {error, describe_protection_group_errors(), tuple()}.
describe_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_protection_group(Client, Input, []).

-spec describe_protection_group(aws_client:aws_client(), describe_protection_group_request(), proplists:proplist()) ->
    {ok, describe_protection_group_response(), tuple()} |
    {error, any()} |
    {error, describe_protection_group_errors(), tuple()}.
describe_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProtectionGroup">>, Input, Options).

%% @doc Provides details about the Shield Advanced subscription for an
%% account.
-spec describe_subscription(aws_client:aws_client(), describe_subscription_request()) ->
    {ok, describe_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_subscription_errors(), tuple()}.
describe_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscription(Client, Input, []).

-spec describe_subscription(aws_client:aws_client(), describe_subscription_request(), proplists:proplist()) ->
    {ok, describe_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_subscription_errors(), tuple()}.
describe_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscription">>, Input, Options).

%% @doc Disable the Shield Advanced automatic application layer DDoS
%% mitigation feature for the protected resource.
%%
%% This
%% stops Shield Advanced from creating, verifying, and applying WAF rules for
%% attacks that it detects for the resource.
-spec disable_application_layer_automatic_response(aws_client:aws_client(), disable_application_layer_automatic_response_request()) ->
    {ok, disable_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, disable_application_layer_automatic_response_errors(), tuple()}.
disable_application_layer_automatic_response(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_application_layer_automatic_response(Client, Input, []).

-spec disable_application_layer_automatic_response(aws_client:aws_client(), disable_application_layer_automatic_response_request(), proplists:proplist()) ->
    {ok, disable_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, disable_application_layer_automatic_response_errors(), tuple()}.
disable_application_layer_automatic_response(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableApplicationLayerAutomaticResponse">>, Input, Options).

%% @doc Removes authorization from the Shield Response Team (SRT) to notify
%% contacts about escalations to the SRT and to initiate proactive customer
%% support.
-spec disable_proactive_engagement(aws_client:aws_client(), disable_proactive_engagement_request()) ->
    {ok, disable_proactive_engagement_response(), tuple()} |
    {error, any()} |
    {error, disable_proactive_engagement_errors(), tuple()}.
disable_proactive_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_proactive_engagement(Client, Input, []).

-spec disable_proactive_engagement(aws_client:aws_client(), disable_proactive_engagement_request(), proplists:proplist()) ->
    {ok, disable_proactive_engagement_response(), tuple()} |
    {error, any()} |
    {error, disable_proactive_engagement_errors(), tuple()}.
disable_proactive_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableProactiveEngagement">>, Input, Options).

%% @doc Removes the Shield Response Team's (SRT) access to the specified
%% Amazon S3 bucket containing the logs that you shared previously.
-spec disassociate_drt_log_bucket(aws_client:aws_client(), disassociate_drt_log_bucket_request()) ->
    {ok, disassociate_drt_log_bucket_response(), tuple()} |
    {error, any()} |
    {error, disassociate_drt_log_bucket_errors(), tuple()}.
disassociate_drt_log_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_drt_log_bucket(Client, Input, []).

-spec disassociate_drt_log_bucket(aws_client:aws_client(), disassociate_drt_log_bucket_request(), proplists:proplist()) ->
    {ok, disassociate_drt_log_bucket_response(), tuple()} |
    {error, any()} |
    {error, disassociate_drt_log_bucket_errors(), tuple()}.
disassociate_drt_log_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDRTLogBucket">>, Input, Options).

%% @doc Removes the Shield Response Team's (SRT) access to your Amazon
%% Web Services account.
-spec disassociate_drt_role(aws_client:aws_client(), disassociate_drt_role_request()) ->
    {ok, disassociate_drt_role_response(), tuple()} |
    {error, any()} |
    {error, disassociate_drt_role_errors(), tuple()}.
disassociate_drt_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_drt_role(Client, Input, []).

-spec disassociate_drt_role(aws_client:aws_client(), disassociate_drt_role_request(), proplists:proplist()) ->
    {ok, disassociate_drt_role_response(), tuple()} |
    {error, any()} |
    {error, disassociate_drt_role_errors(), tuple()}.
disassociate_drt_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDRTRole">>, Input, Options).

%% @doc Removes health-based detection from the Shield Advanced protection
%% for a resource.
%%
%% Shield Advanced health-based detection uses the health of your Amazon Web
%% Services resource to improve responsiveness and accuracy in attack
%% detection and response.
%%
%% You define the health check in Route 53 and then associate or disassociate
%% it with your Shield Advanced protection. For more information, see Shield
%% Advanced Health-Based Detection:
%% https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
%% in the WAF Developer Guide.
-spec disassociate_health_check(aws_client:aws_client(), disassociate_health_check_request()) ->
    {ok, disassociate_health_check_response(), tuple()} |
    {error, any()} |
    {error, disassociate_health_check_errors(), tuple()}.
disassociate_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_health_check(Client, Input, []).

-spec disassociate_health_check(aws_client:aws_client(), disassociate_health_check_request(), proplists:proplist()) ->
    {ok, disassociate_health_check_response(), tuple()} |
    {error, any()} |
    {error, disassociate_health_check_errors(), tuple()}.
disassociate_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateHealthCheck">>, Input, Options).

%% @doc Enable the Shield Advanced automatic application layer DDoS
%% mitigation for the protected resource.
%%
%% This feature is available for Amazon CloudFront distributions and
%% Application Load Balancers only.
%%
%% This causes Shield Advanced to create, verify, and apply WAF rules for
%% DDoS attacks that it detects for the
%% resource. Shield Advanced applies the rules in a Shield rule group inside
%% the web ACL that you've associated
%% with the resource. For information about how automatic mitigation works
%% and the requirements for using it, see
%% Shield Advanced automatic application layer DDoS mitigation:
%% https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html.
%%
%% Don't use this action to make changes to automatic mitigation settings
%% when it's already enabled for a resource. Instead, use
%% `UpdateApplicationLayerAutomaticResponse'.
%%
%% To use this feature, you must associate a web ACL with the protected
%% resource. The web ACL must be created using the latest version of WAF
%% (v2). You can associate the web ACL through the Shield Advanced console
%% at [https://console.aws.amazon.com/wafv2/shieldv2#/]. For more
%% information,
%% see Getting Started with Shield Advanced:
%% https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html.
%% You can also associate the web ACL to the resource through the WAF console
%% or the WAF API, but you must manage Shield Advanced automatic mitigation
%% through Shield Advanced. For information about WAF, see
%% WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec enable_application_layer_automatic_response(aws_client:aws_client(), enable_application_layer_automatic_response_request()) ->
    {ok, enable_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, enable_application_layer_automatic_response_errors(), tuple()}.
enable_application_layer_automatic_response(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_application_layer_automatic_response(Client, Input, []).

-spec enable_application_layer_automatic_response(aws_client:aws_client(), enable_application_layer_automatic_response_request(), proplists:proplist()) ->
    {ok, enable_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, enable_application_layer_automatic_response_errors(), tuple()}.
enable_application_layer_automatic_response(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableApplicationLayerAutomaticResponse">>, Input, Options).

%% @doc Authorizes the Shield Response Team (SRT) to use email and phone to
%% notify contacts about escalations to the SRT and to initiate proactive
%% customer support.
-spec enable_proactive_engagement(aws_client:aws_client(), enable_proactive_engagement_request()) ->
    {ok, enable_proactive_engagement_response(), tuple()} |
    {error, any()} |
    {error, enable_proactive_engagement_errors(), tuple()}.
enable_proactive_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_proactive_engagement(Client, Input, []).

-spec enable_proactive_engagement(aws_client:aws_client(), enable_proactive_engagement_request(), proplists:proplist()) ->
    {ok, enable_proactive_engagement_response(), tuple()} |
    {error, any()} |
    {error, enable_proactive_engagement_errors(), tuple()}.
enable_proactive_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableProactiveEngagement">>, Input, Options).

%% @doc Returns the `SubscriptionState', either `Active' or
%% `Inactive'.
-spec get_subscription_state(aws_client:aws_client(), get_subscription_state_request()) ->
    {ok, get_subscription_state_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_state_errors(), tuple()}.
get_subscription_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subscription_state(Client, Input, []).

-spec get_subscription_state(aws_client:aws_client(), get_subscription_state_request(), proplists:proplist()) ->
    {ok, get_subscription_state_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_state_errors(), tuple()}.
get_subscription_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubscriptionState">>, Input, Options).

%% @doc Returns all ongoing DDoS attacks or all DDoS attacks during a
%% specified time
%% period.
-spec list_attacks(aws_client:aws_client(), list_attacks_request()) ->
    {ok, list_attacks_response(), tuple()} |
    {error, any()} |
    {error, list_attacks_errors(), tuple()}.
list_attacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attacks(Client, Input, []).

-spec list_attacks(aws_client:aws_client(), list_attacks_request(), proplists:proplist()) ->
    {ok, list_attacks_response(), tuple()} |
    {error, any()} |
    {error, list_attacks_errors(), tuple()}.
list_attacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttacks">>, Input, Options).

%% @doc Retrieves `ProtectionGroup' objects for the account.
%%
%% You can retrieve all protection groups or you can provide
%% filtering criteria and retrieve just the subset of protection groups that
%% match the criteria.
-spec list_protection_groups(aws_client:aws_client(), list_protection_groups_request()) ->
    {ok, list_protection_groups_response(), tuple()} |
    {error, any()} |
    {error, list_protection_groups_errors(), tuple()}.
list_protection_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protection_groups(Client, Input, []).

-spec list_protection_groups(aws_client:aws_client(), list_protection_groups_request(), proplists:proplist()) ->
    {ok, list_protection_groups_response(), tuple()} |
    {error, any()} |
    {error, list_protection_groups_errors(), tuple()}.
list_protection_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtectionGroups">>, Input, Options).

%% @doc Retrieves `Protection' objects for the account.
%%
%% You can retrieve all protections or you can provide
%% filtering criteria and retrieve just the subset of protections that match
%% the criteria.
-spec list_protections(aws_client:aws_client(), list_protections_request()) ->
    {ok, list_protections_response(), tuple()} |
    {error, any()} |
    {error, list_protections_errors(), tuple()}.
list_protections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protections(Client, Input, []).

-spec list_protections(aws_client:aws_client(), list_protections_request(), proplists:proplist()) ->
    {ok, list_protections_response(), tuple()} |
    {error, any()} |
    {error, list_protections_errors(), tuple()}.
list_protections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtections">>, Input, Options).

%% @doc Retrieves the resources that are included in the protection group.
-spec list_resources_in_protection_group(aws_client:aws_client(), list_resources_in_protection_group_request()) ->
    {ok, list_resources_in_protection_group_response(), tuple()} |
    {error, any()} |
    {error, list_resources_in_protection_group_errors(), tuple()}.
list_resources_in_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_in_protection_group(Client, Input, []).

-spec list_resources_in_protection_group(aws_client:aws_client(), list_resources_in_protection_group_request(), proplists:proplist()) ->
    {ok, list_resources_in_protection_group_response(), tuple()} |
    {error, any()} |
    {error, list_resources_in_protection_group_errors(), tuple()}.
list_resources_in_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesInProtectionGroup">>, Input, Options).

%% @doc Gets information about Amazon Web Services tags for a specified
%% Amazon Resource Name (ARN) in Shield.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds or updates tags for a resource in Shield.
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

%% @doc Removes tags from a resource in Shield.
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

%% @doc Updates an existing Shield Advanced automatic application layer DDoS
%% mitigation configuration for the specified resource.
-spec update_application_layer_automatic_response(aws_client:aws_client(), update_application_layer_automatic_response_request()) ->
    {ok, update_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, update_application_layer_automatic_response_errors(), tuple()}.
update_application_layer_automatic_response(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_layer_automatic_response(Client, Input, []).

-spec update_application_layer_automatic_response(aws_client:aws_client(), update_application_layer_automatic_response_request(), proplists:proplist()) ->
    {ok, update_application_layer_automatic_response_response(), tuple()} |
    {error, any()} |
    {error, update_application_layer_automatic_response_errors(), tuple()}.
update_application_layer_automatic_response(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationLayerAutomaticResponse">>, Input, Options).

%% @doc Updates the details of the list of email addresses and phone numbers
%% that the Shield Response Team (SRT) can use to contact you if you have
%% proactive engagement enabled, for escalations to the SRT and to initiate
%% proactive customer support.
-spec update_emergency_contact_settings(aws_client:aws_client(), update_emergency_contact_settings_request()) ->
    {ok, update_emergency_contact_settings_response(), tuple()} |
    {error, any()} |
    {error, update_emergency_contact_settings_errors(), tuple()}.
update_emergency_contact_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_emergency_contact_settings(Client, Input, []).

-spec update_emergency_contact_settings(aws_client:aws_client(), update_emergency_contact_settings_request(), proplists:proplist()) ->
    {ok, update_emergency_contact_settings_response(), tuple()} |
    {error, any()} |
    {error, update_emergency_contact_settings_errors(), tuple()}.
update_emergency_contact_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEmergencyContactSettings">>, Input, Options).

%% @doc Updates an existing protection group.
%%
%% A protection group is a grouping of protected resources so they can be
%% handled as a collective. This resource grouping improves the accuracy of
%% detection and reduces false positives.
-spec update_protection_group(aws_client:aws_client(), update_protection_group_request()) ->
    {ok, update_protection_group_response(), tuple()} |
    {error, any()} |
    {error, update_protection_group_errors(), tuple()}.
update_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_protection_group(Client, Input, []).

-spec update_protection_group(aws_client:aws_client(), update_protection_group_request(), proplists:proplist()) ->
    {ok, update_protection_group_response(), tuple()} |
    {error, any()} |
    {error, update_protection_group_errors(), tuple()}.
update_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProtectionGroup">>, Input, Options).

%% @doc Updates the details of an existing subscription.
%%
%% Only enter values for parameters you want to change. Empty parameters are
%% not updated.
%%
%% For accounts that are members of an Organizations organization, Shield
%% Advanced subscriptions are billed against the organization's payer
%% account,
%% regardless of whether the payer account itself is subscribed.
-spec update_subscription(aws_client:aws_client(), update_subscription_request()) ->
    {ok, update_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscription(Client, Input, []).

-spec update_subscription(aws_client:aws_client(), update_subscription_request(), proplists:proplist()) ->
    {ok, update_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscription">>, Input, Options).

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
    Client1 = Client#{service => <<"shield">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"shield">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSShield_20160616.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
