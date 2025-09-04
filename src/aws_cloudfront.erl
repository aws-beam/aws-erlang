%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudFront
%%
%% This is the Amazon CloudFront API Reference.
%%
%% This guide is for developers who need detailed information about
%% CloudFront API actions, data types, and errors. For detailed information
%% about CloudFront features, see the Amazon CloudFront Developer Guide:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html.
-module(aws_cloudfront).

-export([associate_alias/3,
         associate_alias/4,
         associate_distribution_tenant_web_acl/3,
         associate_distribution_tenant_web_acl/4,
         associate_distribution_web_acl/3,
         associate_distribution_web_acl/4,
         copy_distribution/3,
         copy_distribution/4,
         create_anycast_ip_list/2,
         create_anycast_ip_list/3,
         create_cache_policy/2,
         create_cache_policy/3,
         create_cloud_front_origin_access_identity/2,
         create_cloud_front_origin_access_identity/3,
         create_connection_group/2,
         create_connection_group/3,
         create_continuous_deployment_policy/2,
         create_continuous_deployment_policy/3,
         create_distribution/2,
         create_distribution/3,
         create_distribution_tenant/2,
         create_distribution_tenant/3,
         create_distribution_with_tags/2,
         create_distribution_with_tags/3,
         create_field_level_encryption_config/2,
         create_field_level_encryption_config/3,
         create_field_level_encryption_profile/2,
         create_field_level_encryption_profile/3,
         create_function/2,
         create_function/3,
         create_invalidation/3,
         create_invalidation/4,
         create_invalidation_for_distribution_tenant/3,
         create_invalidation_for_distribution_tenant/4,
         create_key_group/2,
         create_key_group/3,
         create_key_value_store/2,
         create_key_value_store/3,
         create_monitoring_subscription/3,
         create_monitoring_subscription/4,
         create_origin_access_control/2,
         create_origin_access_control/3,
         create_origin_request_policy/2,
         create_origin_request_policy/3,
         create_public_key/2,
         create_public_key/3,
         create_realtime_log_config/2,
         create_realtime_log_config/3,
         create_response_headers_policy/2,
         create_response_headers_policy/3,
         create_streaming_distribution/2,
         create_streaming_distribution/3,
         create_streaming_distribution_with_tags/2,
         create_streaming_distribution_with_tags/3,
         create_vpc_origin/2,
         create_vpc_origin/3,
         delete_anycast_ip_list/3,
         delete_anycast_ip_list/4,
         delete_cache_policy/3,
         delete_cache_policy/4,
         delete_cloud_front_origin_access_identity/3,
         delete_cloud_front_origin_access_identity/4,
         delete_connection_group/3,
         delete_connection_group/4,
         delete_continuous_deployment_policy/3,
         delete_continuous_deployment_policy/4,
         delete_distribution/3,
         delete_distribution/4,
         delete_distribution_tenant/3,
         delete_distribution_tenant/4,
         delete_field_level_encryption_config/3,
         delete_field_level_encryption_config/4,
         delete_field_level_encryption_profile/3,
         delete_field_level_encryption_profile/4,
         delete_function/3,
         delete_function/4,
         delete_key_group/3,
         delete_key_group/4,
         delete_key_value_store/3,
         delete_key_value_store/4,
         delete_monitoring_subscription/3,
         delete_monitoring_subscription/4,
         delete_origin_access_control/3,
         delete_origin_access_control/4,
         delete_origin_request_policy/3,
         delete_origin_request_policy/4,
         delete_public_key/3,
         delete_public_key/4,
         delete_realtime_log_config/2,
         delete_realtime_log_config/3,
         delete_response_headers_policy/3,
         delete_response_headers_policy/4,
         delete_streaming_distribution/3,
         delete_streaming_distribution/4,
         delete_vpc_origin/3,
         delete_vpc_origin/4,
         describe_function/2,
         describe_function/4,
         describe_function/5,
         describe_key_value_store/2,
         describe_key_value_store/4,
         describe_key_value_store/5,
         disassociate_distribution_tenant_web_acl/3,
         disassociate_distribution_tenant_web_acl/4,
         disassociate_distribution_web_acl/3,
         disassociate_distribution_web_acl/4,
         get_anycast_ip_list/2,
         get_anycast_ip_list/4,
         get_anycast_ip_list/5,
         get_cache_policy/2,
         get_cache_policy/4,
         get_cache_policy/5,
         get_cache_policy_config/2,
         get_cache_policy_config/4,
         get_cache_policy_config/5,
         get_cloud_front_origin_access_identity/2,
         get_cloud_front_origin_access_identity/4,
         get_cloud_front_origin_access_identity/5,
         get_cloud_front_origin_access_identity_config/2,
         get_cloud_front_origin_access_identity_config/4,
         get_cloud_front_origin_access_identity_config/5,
         get_connection_group/2,
         get_connection_group/4,
         get_connection_group/5,
         get_connection_group_by_routing_endpoint/2,
         get_connection_group_by_routing_endpoint/4,
         get_connection_group_by_routing_endpoint/5,
         get_continuous_deployment_policy/2,
         get_continuous_deployment_policy/4,
         get_continuous_deployment_policy/5,
         get_continuous_deployment_policy_config/2,
         get_continuous_deployment_policy_config/4,
         get_continuous_deployment_policy_config/5,
         get_distribution/2,
         get_distribution/4,
         get_distribution/5,
         get_distribution_config/2,
         get_distribution_config/4,
         get_distribution_config/5,
         get_distribution_tenant/2,
         get_distribution_tenant/4,
         get_distribution_tenant/5,
         get_distribution_tenant_by_domain/2,
         get_distribution_tenant_by_domain/4,
         get_distribution_tenant_by_domain/5,
         get_field_level_encryption/2,
         get_field_level_encryption/4,
         get_field_level_encryption/5,
         get_field_level_encryption_config/2,
         get_field_level_encryption_config/4,
         get_field_level_encryption_config/5,
         get_field_level_encryption_profile/2,
         get_field_level_encryption_profile/4,
         get_field_level_encryption_profile/5,
         get_field_level_encryption_profile_config/2,
         get_field_level_encryption_profile_config/4,
         get_field_level_encryption_profile_config/5,
         get_function/2,
         get_function/4,
         get_function/5,
         get_invalidation/3,
         get_invalidation/5,
         get_invalidation/6,
         get_invalidation_for_distribution_tenant/3,
         get_invalidation_for_distribution_tenant/5,
         get_invalidation_for_distribution_tenant/6,
         get_key_group/2,
         get_key_group/4,
         get_key_group/5,
         get_key_group_config/2,
         get_key_group_config/4,
         get_key_group_config/5,
         get_managed_certificate_details/2,
         get_managed_certificate_details/4,
         get_managed_certificate_details/5,
         get_monitoring_subscription/2,
         get_monitoring_subscription/4,
         get_monitoring_subscription/5,
         get_origin_access_control/2,
         get_origin_access_control/4,
         get_origin_access_control/5,
         get_origin_access_control_config/2,
         get_origin_access_control_config/4,
         get_origin_access_control_config/5,
         get_origin_request_policy/2,
         get_origin_request_policy/4,
         get_origin_request_policy/5,
         get_origin_request_policy_config/2,
         get_origin_request_policy_config/4,
         get_origin_request_policy_config/5,
         get_public_key/2,
         get_public_key/4,
         get_public_key/5,
         get_public_key_config/2,
         get_public_key_config/4,
         get_public_key_config/5,
         get_realtime_log_config/2,
         get_realtime_log_config/3,
         get_response_headers_policy/2,
         get_response_headers_policy/4,
         get_response_headers_policy/5,
         get_response_headers_policy_config/2,
         get_response_headers_policy_config/4,
         get_response_headers_policy_config/5,
         get_streaming_distribution/2,
         get_streaming_distribution/4,
         get_streaming_distribution/5,
         get_streaming_distribution_config/2,
         get_streaming_distribution_config/4,
         get_streaming_distribution_config/5,
         get_vpc_origin/2,
         get_vpc_origin/4,
         get_vpc_origin/5,
         list_anycast_ip_lists/1,
         list_anycast_ip_lists/3,
         list_anycast_ip_lists/4,
         list_cache_policies/1,
         list_cache_policies/3,
         list_cache_policies/4,
         list_cloud_front_origin_access_identities/1,
         list_cloud_front_origin_access_identities/3,
         list_cloud_front_origin_access_identities/4,
         list_conflicting_aliases/3,
         list_conflicting_aliases/5,
         list_conflicting_aliases/6,
         list_connection_groups/2,
         list_connection_groups/3,
         list_continuous_deployment_policies/1,
         list_continuous_deployment_policies/3,
         list_continuous_deployment_policies/4,
         list_distribution_tenants/2,
         list_distribution_tenants/3,
         list_distribution_tenants_by_customization/2,
         list_distribution_tenants_by_customization/3,
         list_distributions/1,
         list_distributions/3,
         list_distributions/4,
         list_distributions_by_anycast_ip_list_id/2,
         list_distributions_by_anycast_ip_list_id/4,
         list_distributions_by_anycast_ip_list_id/5,
         list_distributions_by_cache_policy_id/2,
         list_distributions_by_cache_policy_id/4,
         list_distributions_by_cache_policy_id/5,
         list_distributions_by_connection_mode/2,
         list_distributions_by_connection_mode/4,
         list_distributions_by_connection_mode/5,
         list_distributions_by_key_group/2,
         list_distributions_by_key_group/4,
         list_distributions_by_key_group/5,
         list_distributions_by_origin_request_policy_id/2,
         list_distributions_by_origin_request_policy_id/4,
         list_distributions_by_origin_request_policy_id/5,
         list_distributions_by_realtime_log_config/2,
         list_distributions_by_realtime_log_config/3,
         list_distributions_by_response_headers_policy_id/2,
         list_distributions_by_response_headers_policy_id/4,
         list_distributions_by_response_headers_policy_id/5,
         list_distributions_by_vpc_origin_id/2,
         list_distributions_by_vpc_origin_id/4,
         list_distributions_by_vpc_origin_id/5,
         list_distributions_by_web_acl_id/2,
         list_distributions_by_web_acl_id/4,
         list_distributions_by_web_acl_id/5,
         list_domain_conflicts/2,
         list_domain_conflicts/3,
         list_field_level_encryption_configs/1,
         list_field_level_encryption_configs/3,
         list_field_level_encryption_configs/4,
         list_field_level_encryption_profiles/1,
         list_field_level_encryption_profiles/3,
         list_field_level_encryption_profiles/4,
         list_functions/1,
         list_functions/3,
         list_functions/4,
         list_invalidations/2,
         list_invalidations/4,
         list_invalidations/5,
         list_invalidations_for_distribution_tenant/2,
         list_invalidations_for_distribution_tenant/4,
         list_invalidations_for_distribution_tenant/5,
         list_key_groups/1,
         list_key_groups/3,
         list_key_groups/4,
         list_key_value_stores/1,
         list_key_value_stores/3,
         list_key_value_stores/4,
         list_origin_access_controls/1,
         list_origin_access_controls/3,
         list_origin_access_controls/4,
         list_origin_request_policies/1,
         list_origin_request_policies/3,
         list_origin_request_policies/4,
         list_public_keys/1,
         list_public_keys/3,
         list_public_keys/4,
         list_realtime_log_configs/1,
         list_realtime_log_configs/3,
         list_realtime_log_configs/4,
         list_response_headers_policies/1,
         list_response_headers_policies/3,
         list_response_headers_policies/4,
         list_streaming_distributions/1,
         list_streaming_distributions/3,
         list_streaming_distributions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vpc_origins/1,
         list_vpc_origins/3,
         list_vpc_origins/4,
         publish_function/3,
         publish_function/4,
         tag_resource/2,
         tag_resource/3,
         test_function/3,
         test_function/4,
         untag_resource/2,
         untag_resource/3,
         update_cache_policy/3,
         update_cache_policy/4,
         update_cloud_front_origin_access_identity/3,
         update_cloud_front_origin_access_identity/4,
         update_connection_group/3,
         update_connection_group/4,
         update_continuous_deployment_policy/3,
         update_continuous_deployment_policy/4,
         update_distribution/3,
         update_distribution/4,
         update_distribution_tenant/3,
         update_distribution_tenant/4,
         update_distribution_with_staging_config/3,
         update_distribution_with_staging_config/4,
         update_domain_association/2,
         update_domain_association/3,
         update_field_level_encryption_config/3,
         update_field_level_encryption_config/4,
         update_field_level_encryption_profile/3,
         update_field_level_encryption_profile/4,
         update_function/3,
         update_function/4,
         update_key_group/3,
         update_key_group/4,
         update_key_value_store/3,
         update_key_value_store/4,
         update_origin_access_control/3,
         update_origin_access_control/4,
         update_origin_request_policy/3,
         update_origin_request_policy/4,
         update_public_key/3,
         update_public_key/4,
         update_realtime_log_config/2,
         update_realtime_log_config/3,
         update_response_headers_policy/3,
         update_response_headers_policy/4,
         update_streaming_distribution/3,
         update_streaming_distribution/4,
         update_vpc_origin/3,
         update_vpc_origin/4,
         verify_dns_configuration/2,
         verify_dns_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% response_headers_policy_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type response_headers_policy_in_use() :: #{binary() => any()}.

%% Example:
%% get_distribution_tenant_request() :: #{}
-type get_distribution_tenant_request() :: #{}.


%% Example:
%% invalidation_summary() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Status">> => string()
%% }
-type invalidation_summary() :: #{binary() => any()}.


%% Example:
%% too_many_origin_access_controls() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_origin_access_controls() :: #{binary() => any()}.


%% Example:
%% realtime_metrics_subscription_config() :: #{
%%   <<"RealtimeMetricsSubscriptionStatus">> => list(any())
%% }
-type realtime_metrics_subscription_config() :: #{binary() => any()}.


%% Example:
%% key_value_store_association() :: #{
%%   <<"KeyValueStoreARN">> => string()
%% }
-type key_value_store_association() :: #{binary() => any()}.


%% Example:
%% signer() :: #{
%%   <<"AwsAccountNumber">> => string(),
%%   <<"KeyPairIds">> => key_pair_ids()
%% }
-type signer() :: #{binary() => any()}.


%% Example:
%% update_cache_policy_request() :: #{
%%   <<"CachePolicyConfig">> := cache_policy_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_cache_policy_request() :: #{binary() => any()}.


%% Example:
%% list_response_headers_policies_result() :: #{
%%   <<"ResponseHeadersPolicyList">> => response_headers_policy_list()
%% }
-type list_response_headers_policies_result() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_front_origin_access_identity_already_exists() :: #{binary() => any()}.


%% Example:
%% list_realtime_log_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_realtime_log_configs_request() :: #{binary() => any()}.


%% Example:
%% update_connection_group_request() :: #{
%%   <<"AnycastIpListId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IfMatch">> := string(),
%%   <<"Ipv6Enabled">> => boolean()
%% }
-type update_connection_group_request() :: #{binary() => any()}.


%% Example:
%% too_many_origin_groups_per_distribution() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_origin_groups_per_distribution() :: #{binary() => any()}.


%% Example:
%% end_point() :: #{
%%   <<"KinesisStreamConfig">> => kinesis_stream_config(),
%%   <<"StreamType">> => string()
%% }
-type end_point() :: #{binary() => any()}.


%% Example:
%% update_response_headers_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"ResponseHeadersPolicy">> => response_headers_policy()
%% }
-type update_response_headers_policy_result() :: #{binary() => any()}.


%% Example:
%% invalid_association() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_association() :: #{binary() => any()}.


%% Example:
%% streaming_distribution_not_disabled() :: #{
%%   <<"Message">> => string()
%% }
-type streaming_distribution_not_disabled() :: #{binary() => any()}.


%% Example:
%% delete_realtime_log_config_request() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type delete_realtime_log_config_request() :: #{binary() => any()}.


%% Example:
%% list_origin_request_policies_result() :: #{
%%   <<"OriginRequestPolicyList">> => origin_request_policy_list()
%% }
-type list_origin_request_policies_result() :: #{binary() => any()}.


%% Example:
%% cannot_change_immutable_public_key_fields() :: #{
%%   <<"Message">> => string()
%% }
-type cannot_change_immutable_public_key_fields() :: #{binary() => any()}.


%% Example:
%% too_many_function_associations() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_function_associations() :: #{binary() => any()}.


%% Example:
%% invalid_origin_access_identity() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_origin_access_identity() :: #{binary() => any()}.


%% Example:
%% forwarded_values() :: #{
%%   <<"Cookies">> => cookie_preference(),
%%   <<"Headers">> => headers(),
%%   <<"QueryString">> => boolean(),
%%   <<"QueryStringCacheKeys">> => query_string_cache_keys()
%% }
-type forwarded_values() :: #{binary() => any()}.


%% Example:
%% distribution_not_disabled() :: #{
%%   <<"Message">> => string()
%% }
-type distribution_not_disabled() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Resource">> := string(),
%%   <<"Tags">> := tags()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% realtime_log_configs() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(realtime_log_config()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type realtime_log_configs() :: #{binary() => any()}.


%% Example:
%% no_such_continuous_deployment_policy() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_continuous_deployment_policy() :: #{binary() => any()}.

%% Example:
%% get_continuous_deployment_policy_request() :: #{}
-type get_continuous_deployment_policy_request() :: #{}.


%% Example:
%% update_key_group_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyGroup">> => key_group()
%% }
-type update_key_group_result() :: #{binary() => any()}.


%% Example:
%% too_many_custom_headers_in_response_headers_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_custom_headers_in_response_headers_policy() :: #{binary() => any()}.


%% Example:
%% too_many_response_headers_policies() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_response_headers_policies() :: #{binary() => any()}.


%% Example:
%% too_many_cookies_in_cache_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cookies_in_cache_policy() :: #{binary() => any()}.


%% Example:
%% too_many_invalidations_in_progress() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_invalidations_in_progress() :: #{binary() => any()}.


%% Example:
%% status_codes() :: #{
%%   <<"Items">> => list(integer()),
%%   <<"Quantity">> => integer()
%% }
-type status_codes() :: #{binary() => any()}.


%% Example:
%% vpc_origin_endpoint_config() :: #{
%%   <<"Arn">> => string(),
%%   <<"HTTPPort">> => integer(),
%%   <<"HTTPSPort">> => integer(),
%%   <<"Name">> => string(),
%%   <<"OriginProtocolPolicy">> => list(any()),
%%   <<"OriginSslProtocols">> => origin_ssl_protocols()
%% }
-type vpc_origin_endpoint_config() :: #{binary() => any()}.

%% Example:
%% get_streaming_distribution_config_request() :: #{}
-type get_streaming_distribution_config_request() :: #{}.


%% Example:
%% lambda_function_associations() :: #{
%%   <<"Items">> => list(lambda_function_association()),
%%   <<"Quantity">> => integer()
%% }
-type lambda_function_associations() :: #{binary() => any()}.


%% Example:
%% too_many_continuous_deployment_policies() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_continuous_deployment_policies() :: #{binary() => any()}.


%% Example:
%% too_long_c_s_p_in_response_headers_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_long_c_s_p_in_response_headers_policy() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_summary() :: #{
%%   <<"Comment">> => string(),
%%   <<"ContentTypeProfileConfig">> => content_type_profile_config(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"QueryArgProfileConfig">> => query_arg_profile_config()
%% }
-type field_level_encryption_summary() :: #{binary() => any()}.


%% Example:
%% get_distribution_tenant_by_domain_request() :: #{
%%   <<"Domain">> := string()
%% }
-type get_distribution_tenant_by_domain_request() :: #{binary() => any()}.


%% Example:
%% query_arg_profile_empty() :: #{
%%   <<"Message">> => string()
%% }
-type query_arg_profile_empty() :: #{binary() => any()}.

%% Example:
%% get_origin_request_policy_request() :: #{}
-type get_origin_request_policy_request() :: #{}.


%% Example:
%% distribution_config_with_tags() :: #{
%%   <<"DistributionConfig">> => distribution_config(),
%%   <<"Tags">> => tags()
%% }
-type distribution_config_with_tags() :: #{binary() => any()}.


%% Example:
%% connection_group_summary() :: #{
%%   <<"AnycastIpListId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"ETag">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RoutingEndpoint">> => string(),
%%   <<"Status">> => string()
%% }
-type connection_group_summary() :: #{binary() => any()}.


%% Example:
%% cannot_update_entity_while_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type cannot_update_entity_while_in_use() :: #{binary() => any()}.


%% Example:
%% copy_distribution_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type copy_distribution_result() :: #{binary() => any()}.


%% Example:
%% delete_origin_request_policy_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_origin_request_policy_request() :: #{binary() => any()}.

%% Example:
%% get_cloud_front_origin_access_identity_request() :: #{}
-type get_cloud_front_origin_access_identity_request() :: #{}.


%% Example:
%% illegal_origin_access_configuration() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_origin_access_configuration() :: #{binary() => any()}.


%% Example:
%% create_distribution_tenant_request() :: #{
%%   <<"ConnectionGroupId">> => string(),
%%   <<"Customizations">> => customizations(),
%%   <<"DistributionId">> := string(),
%%   <<"Domains">> := list(domain_item()),
%%   <<"Enabled">> => boolean(),
%%   <<"ManagedCertificateRequest">> => managed_certificate_request(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => list(parameter()),
%%   <<"Tags">> => tags()
%% }
-type create_distribution_tenant_request() :: #{binary() => any()}.

%% Example:
%% get_field_level_encryption_profile_request() :: #{}
-type get_field_level_encryption_profile_request() :: #{}.


%% Example:
%% invalid_if_match_version() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_if_match_version() :: #{binary() => any()}.


%% Example:
%% update_origin_request_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginRequestPolicy">> => origin_request_policy()
%% }
-type update_origin_request_policy_result() :: #{binary() => any()}.


%% Example:
%% create_field_level_encryption_profile_request() :: #{
%%   <<"FieldLevelEncryptionProfileConfig">> := field_level_encryption_profile_config()
%% }
-type create_field_level_encryption_profile_request() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_cache_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_cache_policy() :: #{binary() => any()}.


%% Example:
%% trusted_key_group_does_not_exist() :: #{
%%   <<"Message">> => string()
%% }
-type trusted_key_group_does_not_exist() :: #{binary() => any()}.


%% Example:
%% distribution_resource_id() :: #{
%%   <<"DistributionId">> => string(),
%%   <<"DistributionTenantId">> => string()
%% }
-type distribution_resource_id() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_policy_list() :: #{
%%   <<"Items">> => list(continuous_deployment_policy_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type continuous_deployment_policy_list() :: #{binary() => any()}.


%% Example:
%% create_realtime_log_config_result() :: #{
%%   <<"RealtimeLogConfig">> => realtime_log_config()
%% }
-type create_realtime_log_config_result() :: #{binary() => any()}.


%% Example:
%% anycast_ip_list() :: #{
%%   <<"AnycastIps">> => list(string()),
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"IpCount">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type anycast_ip_list() :: #{binary() => any()}.


%% Example:
%% encryption_entities() :: #{
%%   <<"Items">> => list(encryption_entity()),
%%   <<"Quantity">> => integer()
%% }
-type encryption_entities() :: #{binary() => any()}.


%% Example:
%% get_cloud_front_origin_access_identity_config_result() :: #{
%%   <<"CloudFrontOriginAccessIdentityConfig">> => cloud_front_origin_access_identity_config(),
%%   <<"ETag">> => string()
%% }
-type get_cloud_front_origin_access_identity_config_result() :: #{binary() => any()}.


%% Example:
%% list_origin_request_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type list_origin_request_policies_request() :: #{binary() => any()}.


%% Example:
%% invalid_query_string_parameters() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_query_string_parameters() :: #{binary() => any()}.


%% Example:
%% update_domain_association_request() :: #{
%%   <<"Domain">> := string(),
%%   <<"IfMatch">> => string(),
%%   <<"TargetResource">> := distribution_resource_id()
%% }
-type update_domain_association_request() :: #{binary() => any()}.


%% Example:
%% get_monitoring_subscription_result() :: #{
%%   <<"MonitoringSubscription">> => monitoring_subscription()
%% }
-type get_monitoring_subscription_result() :: #{binary() => any()}.


%% Example:
%% too_many_functions() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_functions() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_origin_request_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_origin_request_policy() :: #{binary() => any()}.


%% Example:
%% get_function_result() :: #{
%%   <<"ContentType">> => string(),
%%   <<"ETag">> => string(),
%%   <<"FunctionCode">> => binary()
%% }
-type get_function_result() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_key_group() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_key_group() :: #{binary() => any()}.


%% Example:
%% invalid_tagging() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_tagging() :: #{binary() => any()}.

%% Example:
%% get_continuous_deployment_policy_config_request() :: #{}
-type get_continuous_deployment_policy_config_request() :: #{}.


%% Example:
%% origin_request_policy_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"CookiesConfig">> => origin_request_policy_cookies_config(),
%%   <<"HeadersConfig">> => origin_request_policy_headers_config(),
%%   <<"Name">> => string(),
%%   <<"QueryStringsConfig">> => origin_request_policy_query_strings_config()
%% }
-type origin_request_policy_config() :: #{binary() => any()}.


%% Example:
%% parameter_definition_schema() :: #{
%%   <<"StringSchema">> => string_schema_config()
%% }
-type parameter_definition_schema() :: #{binary() => any()}.


%% Example:
%% list_key_value_stores_result() :: #{
%%   <<"KeyValueStoreList">> => key_value_store_list()
%% }
-type list_key_value_stores_result() :: #{binary() => any()}.


%% Example:
%% update_continuous_deployment_policy_result() :: #{
%%   <<"ContinuousDeploymentPolicy">> => continuous_deployment_policy(),
%%   <<"ETag">> => string()
%% }
-type update_continuous_deployment_policy_result() :: #{binary() => any()}.


%% Example:
%% invalid_protocol_settings() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_protocol_settings() :: #{binary() => any()}.


%% Example:
%% update_vpc_origin_request() :: #{
%%   <<"IfMatch">> := string(),
%%   <<"VpcOriginEndpointConfig">> := vpc_origin_endpoint_config()
%% }
-type update_vpc_origin_request() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_list() :: #{
%%   <<"Items">> => list(field_level_encryption_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type field_level_encryption_list() :: #{binary() => any()}.

%% Example:
%% get_response_headers_policy_request() :: #{}
-type get_response_headers_policy_request() :: #{}.


%% Example:
%% list_distributions_by_web_acl_id_result() :: #{
%%   <<"DistributionList">> => distribution_list()
%% }
-type list_distributions_by_web_acl_id_result() :: #{binary() => any()}.


%% Example:
%% public_key_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type public_key_already_exists() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_single_weight_config() :: #{
%%   <<"SessionStickinessConfig">> => session_stickiness_config(),
%%   <<"Weight">> => float()
%% }
-type continuous_deployment_single_weight_config() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_strict_transport_security() :: #{
%%   <<"AccessControlMaxAgeSec">> => integer(),
%%   <<"IncludeSubdomains">> => boolean(),
%%   <<"Override">> => boolean(),
%%   <<"Preload">> => boolean()
%% }
-type response_headers_policy_strict_transport_security() :: #{binary() => any()}.


%% Example:
%% get_streaming_distribution_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"StreamingDistributionConfig">> => streaming_distribution_config()
%% }
-type get_streaming_distribution_config_result() :: #{binary() => any()}.


%% Example:
%% entity_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type entity_not_found() :: #{binary() => any()}.


%% Example:
%% update_field_level_encryption_config_request() :: #{
%%   <<"FieldLevelEncryptionConfig">> := field_level_encryption_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_field_level_encryption_config_request() :: #{binary() => any()}.

%% Example:
%% delete_monitoring_subscription_result() :: #{}
-type delete_monitoring_subscription_result() :: #{}.


%% Example:
%% list_invalidations_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_invalidations_request() :: #{binary() => any()}.


%% Example:
%% resource_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use() :: #{binary() => any()}.


%% Example:
%% domain_item() :: #{
%%   <<"Domain">> => string()
%% }
-type domain_item() :: #{binary() => any()}.


%% Example:
%% update_cache_policy_result() :: #{
%%   <<"CachePolicy">> => cache_policy(),
%%   <<"ETag">> => string()
%% }
-type update_cache_policy_result() :: #{binary() => any()}.


%% Example:
%% update_distribution_tenant_request() :: #{
%%   <<"ConnectionGroupId">> => string(),
%%   <<"Customizations">> => customizations(),
%%   <<"DistributionId">> => string(),
%%   <<"Domains">> => list(domain_item()),
%%   <<"Enabled">> => boolean(),
%%   <<"IfMatch">> := string(),
%%   <<"ManagedCertificateRequest">> => managed_certificate_request(),
%%   <<"Parameters">> => list(parameter())
%% }
-type update_distribution_tenant_request() :: #{binary() => any()}.


%% Example:
%% conflicting_alias() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Alias">> => string(),
%%   <<"DistributionId">> => string()
%% }
-type conflicting_alias() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_cache_policy_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_cache_policy_id_request() :: #{binary() => any()}.


%% Example:
%% too_many_field_level_encryption_content_type_profiles() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_content_type_profiles() :: #{binary() => any()}.


%% Example:
%% get_connection_group_by_routing_endpoint_request() :: #{
%%   <<"RoutingEndpoint">> := string()
%% }
-type get_connection_group_by_routing_endpoint_request() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_policy_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type continuous_deployment_policy_already_exists() :: #{binary() => any()}.


%% Example:
%% cache_policy_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"DefaultTTL">> => float(),
%%   <<"MaxTTL">> => float(),
%%   <<"MinTTL">> => float(),
%%   <<"Name">> => string(),
%%   <<"ParametersInCacheKeyAndForwardedToOrigin">> => parameters_in_cache_key_and_forwarded_to_origin()
%% }
-type cache_policy_config() :: #{binary() => any()}.


%% Example:
%% trusted_key_groups() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type trusted_key_groups() :: #{binary() => any()}.


%% Example:
%% update_cloud_front_origin_access_identity_request() :: #{
%%   <<"CloudFrontOriginAccessIdentityConfig">> := cloud_front_origin_access_identity_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_cloud_front_origin_access_identity_request() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity_summary() :: #{
%%   <<"Comment">> => string(),
%%   <<"Id">> => string(),
%%   <<"S3CanonicalUserId">> => string()
%% }
-type cloud_front_origin_access_identity_summary() :: #{binary() => any()}.


%% Example:
%% list_invalidations_for_distribution_tenant_result() :: #{
%%   <<"InvalidationList">> => invalidation_list()
%% }
-type list_invalidations_for_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% origin_access_control_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(origin_access_control_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type origin_access_control_list() :: #{binary() => any()}.


%% Example:
%% geo_restriction() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer(),
%%   <<"RestrictionType">> => list(any())
%% }
-type geo_restriction() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_content_type_options() :: #{
%%   <<"Override">> => boolean()
%% }
-type response_headers_policy_content_type_options() :: #{binary() => any()}.


%% Example:
%% create_origin_access_control_request() :: #{
%%   <<"OriginAccessControlConfig">> := origin_access_control_config()
%% }
-type create_origin_access_control_request() :: #{binary() => any()}.

%% Example:
%% get_origin_request_policy_config_request() :: #{}
-type get_origin_request_policy_config_request() :: #{}.


%% Example:
%% copy_distribution_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IfMatch">> => string(),
%%   <<"Staging">> => boolean()
%% }
-type copy_distribution_request() :: #{binary() => any()}.

%% Example:
%% get_connection_group_request() :: #{}
-type get_connection_group_request() :: #{}.


%% Example:
%% test_result() :: #{
%%   <<"ComputeUtilization">> => string(),
%%   <<"FunctionErrorMessage">> => string(),
%%   <<"FunctionExecutionLogs">> => list(string()),
%%   <<"FunctionOutput">> => string(),
%%   <<"FunctionSummary">> => function_summary()
%% }
-type test_result() :: #{binary() => any()}.


%% Example:
%% update_cloud_front_origin_access_identity_result() :: #{
%%   <<"CloudFrontOriginAccessIdentity">> => cloud_front_origin_access_identity(),
%%   <<"ETag">> => string()
%% }
-type update_cloud_front_origin_access_identity_result() :: #{binary() => any()}.


%% Example:
%% origin_group_member() :: #{
%%   <<"OriginId">> => string()
%% }
-type origin_group_member() :: #{binary() => any()}.


%% Example:
%% distribution_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"AliasICPRecordals">> => list(alias_i_c_p_recordal()),
%%   <<"Aliases">> => aliases(),
%%   <<"AnycastIpListId">> => string(),
%%   <<"CacheBehaviors">> => cache_behaviors(),
%%   <<"Comment">> => string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"CustomErrorResponses">> => custom_error_responses(),
%%   <<"DefaultCacheBehavior">> => default_cache_behavior(),
%%   <<"DomainName">> => string(),
%%   <<"ETag">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HttpVersion">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"IsIPV6Enabled">> => boolean(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OriginGroups">> => origin_groups(),
%%   <<"Origins">> => origins(),
%%   <<"PriceClass">> => list(any()),
%%   <<"Restrictions">> => restrictions(),
%%   <<"Staging">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"ViewerCertificate">> => viewer_certificate(),
%%   <<"WebACLId">> => string()
%% }
-type distribution_summary() :: #{binary() => any()}.


%% Example:
%% list_cloud_front_origin_access_identities_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_cloud_front_origin_access_identities_request() :: #{binary() => any()}.


%% Example:
%% alias_i_c_p_recordal() :: #{
%%   <<"CNAME">> => string(),
%%   <<"ICPRecordalStatus">> => list(any())
%% }
-type alias_i_c_p_recordal() :: #{binary() => any()}.


%% Example:
%% list_cloud_front_origin_access_identities_result() :: #{
%%   <<"CloudFrontOriginAccessIdentityList">> => cloud_front_origin_access_identity_list()
%% }
-type list_cloud_front_origin_access_identities_result() :: #{binary() => any()}.


%% Example:
%% session_stickiness_config() :: #{
%%   <<"IdleTTL">> => integer(),
%%   <<"MaximumTTL">> => integer()
%% }
-type session_stickiness_config() :: #{binary() => any()}.


%% Example:
%% list_public_keys_result() :: #{
%%   <<"PublicKeyList">> => public_key_list()
%% }
-type list_public_keys_result() :: #{binary() => any()}.


%% Example:
%% list_field_level_encryption_configs_result() :: #{
%%   <<"FieldLevelEncryptionList">> => field_level_encryption_list()
%% }
-type list_field_level_encryption_configs_result() :: #{binary() => any()}.


%% Example:
%% parameter_definition() :: #{
%%   <<"Definition">> => parameter_definition_schema(),
%%   <<"Name">> => string()
%% }
-type parameter_definition() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_config_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type field_level_encryption_config_in_use() :: #{binary() => any()}.


%% Example:
%% default_cache_behavior() :: #{
%%   <<"AllowedMethods">> => allowed_methods(),
%%   <<"CachePolicyId">> => string(),
%%   <<"Compress">> => boolean(),
%%   <<"DefaultTTL">> => float(),
%%   <<"FieldLevelEncryptionId">> => string(),
%%   <<"ForwardedValues">> => forwarded_values(),
%%   <<"FunctionAssociations">> => function_associations(),
%%   <<"GrpcConfig">> => grpc_config(),
%%   <<"LambdaFunctionAssociations">> => lambda_function_associations(),
%%   <<"MaxTTL">> => float(),
%%   <<"MinTTL">> => float(),
%%   <<"OriginRequestPolicyId">> => string(),
%%   <<"RealtimeLogConfigArn">> => string(),
%%   <<"ResponseHeadersPolicyId">> => string(),
%%   <<"SmoothStreaming">> => boolean(),
%%   <<"TargetOriginId">> => string(),
%%   <<"TrustedKeyGroups">> => trusted_key_groups(),
%%   <<"TrustedSigners">> => trusted_signers(),
%%   <<"ViewerProtocolPolicy">> => list(any())
%% }
-type default_cache_behavior() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile() :: #{
%%   <<"FieldLevelEncryptionProfileConfig">> => field_level_encryption_profile_config(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type field_level_encryption_profile() :: #{binary() => any()}.


%% Example:
%% illegal_update() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_update() :: #{binary() => any()}.


%% Example:
%% create_key_value_store_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyValueStore">> => key_value_store(),
%%   <<"Location">> => string()
%% }
-type create_key_value_store_result() :: #{binary() => any()}.


%% Example:
%% dns_configuration() :: #{
%%   <<"Domain">> => string(),
%%   <<"Reason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type dns_configuration() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_policy_summary() :: #{
%%   <<"ContinuousDeploymentPolicy">> => continuous_deployment_policy()
%% }
-type continuous_deployment_policy_summary() :: #{binary() => any()}.


%% Example:
%% list_functions_result() :: #{
%%   <<"FunctionList">> => function_list()
%% }
-type list_functions_result() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_front_origin_access_identity_in_use() :: #{binary() => any()}.


%% Example:
%% delete_connection_group_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_connection_group_request() :: #{binary() => any()}.


%% Example:
%% describe_function_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FunctionSummary">> => function_summary()
%% }
-type describe_function_result() :: #{binary() => any()}.


%% Example:
%% key_group_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"Items">> => list(string()),
%%   <<"Name">> => string()
%% }
-type key_group_config() :: #{binary() => any()}.


%% Example:
%% s3_origin() :: #{
%%   <<"DomainName">> => string(),
%%   <<"OriginAccessIdentity">> => string()
%% }
-type s3_origin() :: #{binary() => any()}.


%% Example:
%% list_invalidations_for_distribution_tenant_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_invalidations_for_distribution_tenant_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ResponseHeadersPolicyConfig">> => response_headers_policy_config()
%% }
-type response_headers_policy() :: #{binary() => any()}.


%% Example:
%% invalid_t_t_l_order() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_t_t_l_order() :: #{binary() => any()}.


%% Example:
%% update_connection_group_result() :: #{
%%   <<"ConnectionGroup">> => connection_group(),
%%   <<"ETag">> => string()
%% }
-type update_connection_group_result() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type field_level_encryption_profile_already_exists() :: #{binary() => any()}.


%% Example:
%% test_function_result() :: #{
%%   <<"TestResult">> => test_result()
%% }
-type test_function_result() :: #{binary() => any()}.


%% Example:
%% monitoring_subscription() :: #{
%%   <<"RealtimeMetricsSubscriptionConfig">> => realtime_metrics_subscription_config()
%% }
-type monitoring_subscription() :: #{binary() => any()}.

%% Example:
%% get_public_key_config_request() :: #{}
-type get_public_key_config_request() :: #{}.


%% Example:
%% get_invalidation_result() :: #{
%%   <<"Invalidation">> => invalidation()
%% }
-type get_invalidation_result() :: #{binary() => any()}.


%% Example:
%% access_denied() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied() :: #{binary() => any()}.


%% Example:
%% streaming_logging_config() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Prefix">> => string()
%% }
-type streaming_logging_config() :: #{binary() => any()}.


%% Example:
%% create_invalidation_request() :: #{
%%   <<"InvalidationBatch">> := invalidation_batch()
%% }
-type create_invalidation_request() :: #{binary() => any()}.


%% Example:
%% query_string_cache_keys() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type query_string_cache_keys() :: #{binary() => any()}.


%% Example:
%% create_streaming_distribution_request() :: #{
%%   <<"StreamingDistributionConfig">> := streaming_distribution_config()
%% }
-type create_streaming_distribution_request() :: #{binary() => any()}.


%% Example:
%% origin_access_control_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OriginAccessControlOriginType">> => list(any()),
%%   <<"SigningBehavior">> => list(any()),
%%   <<"SigningProtocol">> => list(any())
%% }
-type origin_access_control_summary() :: #{binary() => any()}.

%% Example:
%% get_key_group_config_request() :: #{}
-type get_key_group_config_request() :: #{}.


%% Example:
%% too_many_cookie_names_in_white_list() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cookie_names_in_white_list() :: #{binary() => any()}.


%% Example:
%% create_distribution_request() :: #{
%%   <<"DistributionConfig">> := distribution_config()
%% }
-type create_distribution_request() :: #{binary() => any()}.


%% Example:
%% get_distribution_tenant_by_domain_result() :: #{
%%   <<"DistributionTenant">> => distribution_tenant(),
%%   <<"ETag">> => string()
%% }
-type get_distribution_tenant_by_domain_result() :: #{binary() => any()}.


%% Example:
%% create_continuous_deployment_policy_request() :: #{
%%   <<"ContinuousDeploymentPolicyConfig">> := continuous_deployment_policy_config()
%% }
-type create_continuous_deployment_policy_request() :: #{binary() => any()}.


%% Example:
%% logging_config() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IncludeCookies">> => boolean(),
%%   <<"Prefix">> => string()
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% invalid_argument() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_referrer_policy() :: #{
%%   <<"Override">> => boolean(),
%%   <<"ReferrerPolicy">> => list(any())
%% }
-type response_headers_policy_referrer_policy() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"Resource">> := string(),
%%   <<"TagKeys">> := tag_keys()
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_streaming_distribution_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"StreamingDistribution">> => streaming_distribution()
%% }
-type create_streaming_distribution_result() :: #{binary() => any()}.


%% Example:
%% invalid_web_acl_id() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_web_acl_id() :: #{binary() => any()}.


%% Example:
%% too_many_cookies_in_origin_request_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cookies_in_origin_request_policy() :: #{binary() => any()}.


%% Example:
%% get_cache_policy_result() :: #{
%%   <<"CachePolicy">> => cache_policy(),
%%   <<"ETag">> => string()
%% }
-type get_cache_policy_result() :: #{binary() => any()}.


%% Example:
%% create_continuous_deployment_policy_result() :: #{
%%   <<"ContinuousDeploymentPolicy">> => continuous_deployment_policy(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type create_continuous_deployment_policy_result() :: #{binary() => any()}.


%% Example:
%% key_group() :: #{
%%   <<"Id">> => string(),
%%   <<"KeyGroupConfig">> => key_group_config(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type key_group() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_key_group_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_key_group_request() :: #{binary() => any()}.


%% Example:
%% update_public_key_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"PublicKeyConfig">> := public_key_config()
%% }
-type update_public_key_request() :: #{binary() => any()}.


%% Example:
%% content_type_profile() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"ProfileId">> => string()
%% }
-type content_type_profile() :: #{binary() => any()}.


%% Example:
%% associate_distribution_web_acl_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Id">> => string(),
%%   <<"WebACLArn">> => string()
%% }
-type associate_distribution_web_acl_result() :: #{binary() => any()}.


%% Example:
%% get_key_group_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyGroup">> => key_group()
%% }
-type get_key_group_result() :: #{binary() => any()}.


%% Example:
%% geo_restriction_customization() :: #{
%%   <<"Locations">> => list(string()),
%%   <<"RestrictionType">> => list(any())
%% }
-type geo_restriction_customization() :: #{binary() => any()}.


%% Example:
%% create_invalidation_for_distribution_tenant_result() :: #{
%%   <<"Invalidation">> => invalidation(),
%%   <<"Location">> => string()
%% }
-type create_invalidation_for_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_anycast_ip_list_id_result() :: #{
%%   <<"DistributionList">> => distribution_list()
%% }
-type list_distributions_by_anycast_ip_list_id_result() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_headers_config() :: #{
%%   <<"HeaderBehavior">> => list(any()),
%%   <<"Headers">> => headers()
%% }
-type origin_request_policy_headers_config() :: #{binary() => any()}.


%% Example:
%% batch_too_large() :: #{
%%   <<"Message">> => string()
%% }
-type batch_too_large() :: #{binary() => any()}.


%% Example:
%% query_arg_profiles() :: #{
%%   <<"Items">> => list(query_arg_profile()),
%%   <<"Quantity">> => integer()
%% }
-type query_arg_profiles() :: #{binary() => any()}.


%% Example:
%% anycast_ip_list_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"IpCount">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type anycast_ip_list_summary() :: #{binary() => any()}.


%% Example:
%% update_continuous_deployment_policy_request() :: #{
%%   <<"ContinuousDeploymentPolicyConfig">> := continuous_deployment_policy_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_continuous_deployment_policy_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_access_control_allow_origins() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_access_control_allow_origins() :: #{binary() => any()}.


%% Example:
%% function_association() :: #{
%%   <<"EventType">> => list(any()),
%%   <<"FunctionARN">> => string()
%% }
-type function_association() :: #{binary() => any()}.


%% Example:
%% key_group_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type key_group_already_exists() :: #{binary() => any()}.


%% Example:
%% get_realtime_log_config_request() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type get_realtime_log_config_request() :: #{binary() => any()}.


%% Example:
%% key_group_list() :: #{
%%   <<"Items">> => list(key_group_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type key_group_list() :: #{binary() => any()}.


%% Example:
%% get_distribution_tenant_result() :: #{
%%   <<"DistributionTenant">> => distribution_tenant(),
%%   <<"ETag">> => string()
%% }
-type get_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_policy() :: #{
%%   <<"ContinuousDeploymentPolicyConfig">> => continuous_deployment_policy_config(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type continuous_deployment_policy() :: #{binary() => any()}.


%% Example:
%% origin_shield() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"OriginShieldRegion">> => string()
%% }
-type origin_shield() :: #{binary() => any()}.


%% Example:
%% entity_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type entity_already_exists() :: #{binary() => any()}.


%% Example:
%% content_type_profiles() :: #{
%%   <<"Items">> => list(content_type_profile()),
%%   <<"Quantity">> => integer()
%% }
-type content_type_profiles() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_frame_options() :: #{
%%   <<"FrameOption">> => list(any()),
%%   <<"Override">> => boolean()
%% }
-type response_headers_policy_frame_options() :: #{binary() => any()}.


%% Example:
%% list_field_level_encryption_profiles_result() :: #{
%%   <<"FieldLevelEncryptionProfileList">> => field_level_encryption_profile_list()
%% }
-type list_field_level_encryption_profiles_result() :: #{binary() => any()}.


%% Example:
%% entity_size_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type entity_size_limit_exceeded() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type field_level_encryption_profile_in_use() :: #{binary() => any()}.


%% Example:
%% no_such_field_level_encryption_config() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_field_level_encryption_config() :: #{binary() => any()}.


%% Example:
%% cache_policy_list() :: #{
%%   <<"Items">> => list(cache_policy_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type cache_policy_list() :: #{binary() => any()}.


%% Example:
%% list_public_keys_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_public_keys_request() :: #{binary() => any()}.


%% Example:
%% get_distribution_config_result() :: #{
%%   <<"DistributionConfig">> => distribution_config(),
%%   <<"ETag">> => string()
%% }
-type get_distribution_config_result() :: #{binary() => any()}.


%% Example:
%% list_key_value_stores_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Status">> => string()
%% }
-type list_key_value_stores_request() :: #{binary() => any()}.


%% Example:
%% streaming_distribution() :: #{
%%   <<"ARN">> => string(),
%%   <<"ActiveTrustedSigners">> => active_trusted_signers(),
%%   <<"DomainName">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"StreamingDistributionConfig">> => streaming_distribution_config()
%% }
-type streaming_distribution() :: #{binary() => any()}.


%% Example:
%% origins() :: #{
%%   <<"Items">> => list(origin()),
%%   <<"Quantity">> => integer()
%% }
-type origins() :: #{binary() => any()}.


%% Example:
%% no_such_cloud_front_origin_access_identity() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_cloud_front_origin_access_identity() :: #{binary() => any()}.


%% Example:
%% delete_field_level_encryption_config_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_field_level_encryption_config_request() :: #{binary() => any()}.


%% Example:
%% function_size_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type function_size_limit_exceeded() :: #{binary() => any()}.


%% Example:
%% cached_methods() :: #{
%%   <<"Items">> => list(list(any())()),
%%   <<"Quantity">> => integer()
%% }
-type cached_methods() :: #{binary() => any()}.


%% Example:
%% invalid_origin_access_control() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_origin_access_control() :: #{binary() => any()}.


%% Example:
%% list_connection_groups_result() :: #{
%%   <<"ConnectionGroups">> => list(connection_group_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_connection_groups_result() :: #{binary() => any()}.


%% Example:
%% describe_key_value_store_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyValueStore">> => key_value_store()
%% }
-type describe_key_value_store_result() :: #{binary() => any()}.


%% Example:
%% list_domain_conflicts_request() :: #{
%%   <<"Domain">> := string(),
%%   <<"DomainControlValidationResource">> := distribution_resource_id(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_domain_conflicts_request() :: #{binary() => any()}.


%% Example:
%% invalid_origin() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_origin() :: #{binary() => any()}.


%% Example:
%% cache_behaviors() :: #{
%%   <<"Items">> => list(cache_behavior()),
%%   <<"Quantity">> => integer()
%% }
-type cache_behaviors() :: #{binary() => any()}.


%% Example:
%% custom_headers() :: #{
%%   <<"Items">> => list(origin_custom_header()),
%%   <<"Quantity">> => integer()
%% }
-type custom_headers() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_config_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type field_level_encryption_config_already_exists() :: #{binary() => any()}.


%% Example:
%% create_realtime_log_config_request() :: #{
%%   <<"EndPoints">> := list(end_point()),
%%   <<"Fields">> := list(string()),
%%   <<"Name">> := string(),
%%   <<"SamplingRate">> := float()
%% }
-type create_realtime_log_config_request() :: #{binary() => any()}.


%% Example:
%% unsupported_operation() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation() :: #{binary() => any()}.


%% Example:
%% too_many_headers_in_cache_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_headers_in_cache_policy() :: #{binary() => any()}.


%% Example:
%% function_associations() :: #{
%%   <<"Items">> => list(function_association()),
%%   <<"Quantity">> => integer()
%% }
-type function_associations() :: #{binary() => any()}.


%% Example:
%% too_many_certificates() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_certificates() :: #{binary() => any()}.


%% Example:
%% list_conflicting_aliases_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"DistributionId">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_conflicting_aliases_request() :: #{binary() => any()}.


%% Example:
%% create_streaming_distribution_with_tags_request() :: #{
%%   <<"StreamingDistributionConfigWithTags">> := streaming_distribution_config_with_tags()
%% }
-type create_streaming_distribution_with_tags_request() :: #{binary() => any()}.


%% Example:
%% get_managed_certificate_details_result() :: #{
%%   <<"ManagedCertificateDetails">> => managed_certificate_details()
%% }
-type get_managed_certificate_details_result() :: #{binary() => any()}.


%% Example:
%% traffic_config() :: #{
%%   <<"SingleHeaderConfig">> => continuous_deployment_single_header_config(),
%%   <<"SingleWeightConfig">> => continuous_deployment_single_weight_config(),
%%   <<"Type">> => list(any())
%% }
-type traffic_config() :: #{binary() => any()}.


%% Example:
%% cache_policy_cookies_config() :: #{
%%   <<"CookieBehavior">> => list(any()),
%%   <<"Cookies">> => cookie_names()
%% }
-type cache_policy_cookies_config() :: #{binary() => any()}.


%% Example:
%% delete_cloud_front_origin_access_identity_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_cloud_front_origin_access_identity_request() :: #{binary() => any()}.


%% Example:
%% lambda_function_association() :: #{
%%   <<"EventType">> => list(any()),
%%   <<"IncludeBody">> => boolean(),
%%   <<"LambdaFunctionARN">> => string()
%% }
-type lambda_function_association() :: #{binary() => any()}.

%% Example:
%% describe_key_value_store_request() :: #{}
-type describe_key_value_store_request() :: #{}.

%% Example:
%% get_distribution_config_request() :: #{}
-type get_distribution_config_request() :: #{}.


%% Example:
%% create_vpc_origin_request() :: #{
%%   <<"Tags">> => tags(),
%%   <<"VpcOriginEndpointConfig">> := vpc_origin_endpoint_config()
%% }
-type create_vpc_origin_request() :: #{binary() => any()}.


%% Example:
%% delete_public_key_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_public_key_request() :: #{binary() => any()}.


%% Example:
%% distribution_config() :: #{
%%   <<"Aliases">> => aliases(),
%%   <<"AnycastIpListId">> => string(),
%%   <<"CacheBehaviors">> => cache_behaviors(),
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"ContinuousDeploymentPolicyId">> => string(),
%%   <<"CustomErrorResponses">> => custom_error_responses(),
%%   <<"DefaultCacheBehavior">> => default_cache_behavior(),
%%   <<"DefaultRootObject">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HttpVersion">> => list(any()),
%%   <<"IsIPV6Enabled">> => boolean(),
%%   <<"Logging">> => logging_config(),
%%   <<"OriginGroups">> => origin_groups(),
%%   <<"Origins">> => origins(),
%%   <<"PriceClass">> => list(any()),
%%   <<"Restrictions">> => restrictions(),
%%   <<"Staging">> => boolean(),
%%   <<"TenantConfig">> => tenant_config(),
%%   <<"ViewerCertificate">> => viewer_certificate(),
%%   <<"WebACLId">> => string()
%% }
-type distribution_config() :: #{binary() => any()}.


%% Example:
%% get_continuous_deployment_policy_result() :: #{
%%   <<"ContinuousDeploymentPolicy">> => continuous_deployment_policy(),
%%   <<"ETag">> => string()
%% }
-type get_continuous_deployment_policy_result() :: #{binary() => any()}.


%% Example:
%% invalid_required_protocol() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_required_protocol() :: #{binary() => any()}.


%% Example:
%% get_function_request() :: #{
%%   <<"Stage">> => list(any())
%% }
-type get_function_request() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_cookies_config() :: #{
%%   <<"CookieBehavior">> => list(any()),
%%   <<"Cookies">> => cookie_names()
%% }
-type origin_request_policy_cookies_config() :: #{binary() => any()}.


%% Example:
%% update_key_value_store_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyValueStore">> => key_value_store()
%% }
-type update_key_value_store_result() :: #{binary() => any()}.


%% Example:
%% list_key_groups_result() :: #{
%%   <<"KeyGroupList">> => key_group_list()
%% }
-type list_key_groups_result() :: #{binary() => any()}.


%% Example:
%% create_key_group_request() :: #{
%%   <<"KeyGroupConfig">> := key_group_config()
%% }
-type create_key_group_request() :: #{binary() => any()}.


%% Example:
%% delete_response_headers_policy_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_response_headers_policy_request() :: #{binary() => any()}.


%% Example:
%% origin_access_control_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type origin_access_control_in_use() :: #{binary() => any()}.


%% Example:
%% precondition_failed() :: #{
%%   <<"Message">> => string()
%% }
-type precondition_failed() :: #{binary() => any()}.


%% Example:
%% list_connection_groups_request() :: #{
%%   <<"AssociationFilter">> => connection_group_association_filter(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_connection_groups_request() :: #{binary() => any()}.


%% Example:
%% connection_group_association_filter() :: #{
%%   <<"AnycastIpListId">> => string()
%% }
-type connection_group_association_filter() :: #{binary() => any()}.


%% Example:
%% public_key_list() :: #{
%%   <<"Items">> => list(public_key_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type public_key_list() :: #{binary() => any()}.


%% Example:
%% update_response_headers_policy_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"ResponseHeadersPolicyConfig">> := response_headers_policy_config()
%% }
-type update_response_headers_policy_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_custom_headers_config() :: #{
%%   <<"Items">> => list(response_headers_policy_custom_header()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_custom_headers_config() :: #{binary() => any()}.

%% Example:
%% get_cache_policy_config_request() :: #{}
-type get_cache_policy_config_request() :: #{}.


%% Example:
%% list_distributions_by_connection_mode_result() :: #{
%%   <<"DistributionList">> => distribution_list()
%% }
-type list_distributions_by_connection_mode_result() :: #{binary() => any()}.


%% Example:
%% list_key_groups_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_key_groups_request() :: #{binary() => any()}.


%% Example:
%% too_many_distribution_cnames() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distribution_cnames() :: #{binary() => any()}.


%% Example:
%% no_such_origin_request_policy() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_origin_request_policy() :: #{binary() => any()}.


%% Example:
%% no_such_distribution() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_distribution() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_field_level_encryption_profile_config_request() :: #{}
-type get_field_level_encryption_profile_config_request() :: #{}.


%% Example:
%% cache_policy_summary() :: #{
%%   <<"CachePolicy">> => cache_policy(),
%%   <<"Type">> => list(any())
%% }
-type cache_policy_summary() :: #{binary() => any()}.


%% Example:
%% query_arg_profile() :: #{
%%   <<"ProfileId">> => string(),
%%   <<"QueryArg">> => string()
%% }
-type query_arg_profile() :: #{binary() => any()}.


%% Example:
%% list_distribution_tenants_request() :: #{
%%   <<"AssociationFilter">> => distribution_tenant_association_filter(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distribution_tenants_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_access_control_expose_headers() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_access_control_expose_headers() :: #{binary() => any()}.


%% Example:
%% s3_origin_config() :: #{
%%   <<"OriginAccessIdentity">> => string(),
%%   <<"OriginReadTimeout">> => integer()
%% }
-type s3_origin_config() :: #{binary() => any()}.


%% Example:
%% update_distribution_request() :: #{
%%   <<"DistributionConfig">> := distribution_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_distribution_request() :: #{binary() => any()}.


%% Example:
%% too_many_trusted_signers() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_trusted_signers() :: #{binary() => any()}.


%% Example:
%% delete_function_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_function_request() :: #{binary() => any()}.


%% Example:
%% publish_function_result() :: #{
%%   <<"FunctionSummary">> => function_summary()
%% }
-type publish_function_result() :: #{binary() => any()}.


%% Example:
%% disassociate_distribution_web_acl_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type disassociate_distribution_web_acl_request() :: #{binary() => any()}.


%% Example:
%% too_many_query_strings_in_origin_request_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_query_strings_in_origin_request_policy() :: #{binary() => any()}.


%% Example:
%% tenant_config() :: #{
%%   <<"ParameterDefinitions">> => list(parameter_definition())
%% }
-type tenant_config() :: #{binary() => any()}.


%% Example:
%% list_domain_conflicts_result() :: #{
%%   <<"DomainConflicts">> => list(domain_conflict()),
%%   <<"NextMarker">> => string()
%% }
-type list_domain_conflicts_result() :: #{binary() => any()}.


%% Example:
%% too_many_cache_policies() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cache_policies() :: #{binary() => any()}.


%% Example:
%% create_connection_group_request() :: #{
%%   <<"AnycastIpListId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Ipv6Enabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => tags()
%% }
-type create_connection_group_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_remove_headers_config() :: #{
%%   <<"Items">> => list(response_headers_policy_remove_header()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_remove_headers_config() :: #{binary() => any()}.


%% Example:
%% invalid_error_code() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_error_code() :: #{binary() => any()}.


%% Example:
%% list_distributions_result() :: #{
%%   <<"DistributionList">> => distribution_list()
%% }
-type list_distributions_result() :: #{binary() => any()}.


%% Example:
%% list_response_headers_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type list_response_headers_policies_request() :: #{binary() => any()}.


%% Example:
%% field_level_encryption() :: #{
%%   <<"FieldLevelEncryptionConfig">> => field_level_encryption_config(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type field_level_encryption() :: #{binary() => any()}.


%% Example:
%% invalid_geo_restriction_parameter() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_geo_restriction_parameter() :: #{binary() => any()}.


%% Example:
%% key_value_store_associations() :: #{
%%   <<"Items">> => list(key_value_store_association()),
%%   <<"Quantity">> => integer()
%% }
-type key_value_store_associations() :: #{binary() => any()}.


%% Example:
%% vpc_origin_config() :: #{
%%   <<"OriginKeepaliveTimeout">> => integer(),
%%   <<"OriginReadTimeout">> => integer(),
%%   <<"VpcOriginId">> => string()
%% }
-type vpc_origin_config() :: #{binary() => any()}.


%% Example:
%% origin_access_control() :: #{
%%   <<"Id">> => string(),
%%   <<"OriginAccessControlConfig">> => origin_access_control_config()
%% }
-type origin_access_control() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type origin_request_policy_already_exists() :: #{binary() => any()}.


%% Example:
%% origin_request_policy() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OriginRequestPolicyConfig">> => origin_request_policy_config()
%% }
-type origin_request_policy() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type response_headers_policy_already_exists() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_policy_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type continuous_deployment_policy_in_use() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_list() :: #{
%%   <<"Items">> => list(response_headers_policy_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_list() :: #{binary() => any()}.


%% Example:
%% get_connection_group_result() :: #{
%%   <<"ConnectionGroup">> => connection_group(),
%%   <<"ETag">> => string()
%% }
-type get_connection_group_result() :: #{binary() => any()}.


%% Example:
%% update_origin_access_control_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"OriginAccessControlConfig">> := origin_access_control_config()
%% }
-type update_origin_access_control_request() :: #{binary() => any()}.


%% Example:
%% update_realtime_log_config_result() :: #{
%%   <<"RealtimeLogConfig">> => realtime_log_config()
%% }
-type update_realtime_log_config_result() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_with_function_associations() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_with_function_associations() :: #{binary() => any()}.


%% Example:
%% get_anycast_ip_list_result() :: #{
%%   <<"AnycastIpList">> => anycast_ip_list(),
%%   <<"ETag">> => string()
%% }
-type get_anycast_ip_list_result() :: #{binary() => any()}.


%% Example:
%% missing_body() :: #{
%%   <<"Message">> => string()
%% }
-type missing_body() :: #{binary() => any()}.


%% Example:
%% cookie_names() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type cookie_names() :: #{binary() => any()}.


%% Example:
%% too_many_query_strings_in_cache_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_query_strings_in_cache_policy() :: #{binary() => any()}.


%% Example:
%% inconsistent_quantities() :: #{
%%   <<"Message">> => string()
%% }
-type inconsistent_quantities() :: #{binary() => any()}.


%% Example:
%% invalid_headers_for_s3_origin() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_headers_for_s3_origin() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_cache_policy_id_result() :: #{
%%   <<"DistributionIdList">> => distribution_id_list()
%% }
-type list_distributions_by_cache_policy_id_result() :: #{binary() => any()}.


%% Example:
%% disassociate_distribution_tenant_web_acl_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Id">> => string()
%% }
-type disassociate_distribution_tenant_web_acl_result() :: #{binary() => any()}.


%% Example:
%% field_patterns() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type field_patterns() :: #{binary() => any()}.


%% Example:
%% monitoring_subscription_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type monitoring_subscription_already_exists() :: #{binary() => any()}.


%% Example:
%% invalid_lambda_function_association() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_lambda_function_association() :: #{binary() => any()}.


%% Example:
%% list_distribution_tenants_by_customization_request() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"WebACLArn">> => string()
%% }
-type list_distribution_tenants_by_customization_request() :: #{binary() => any()}.


%% Example:
%% tags() :: #{
%%   <<"Items">> => list(tag())
%% }
-type tags() :: #{binary() => any()}.


%% Example:
%% anycast_ip_list_collection() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(anycast_ip_list_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type anycast_ip_list_collection() :: #{binary() => any()}.


%% Example:
%% distribution() :: #{
%%   <<"ARN">> => string(),
%%   <<"ActiveTrustedKeyGroups">> => active_trusted_key_groups(),
%%   <<"ActiveTrustedSigners">> => active_trusted_signers(),
%%   <<"AliasICPRecordals">> => list(alias_i_c_p_recordal()),
%%   <<"DistributionConfig">> => distribution_config(),
%%   <<"DomainName">> => string(),
%%   <<"Id">> => string(),
%%   <<"InProgressInvalidationBatches">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type distribution() :: #{binary() => any()}.


%% Example:
%% parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type parameter() :: #{binary() => any()}.


%% Example:
%% create_cache_policy_request() :: #{
%%   <<"CachePolicyConfig">> := cache_policy_config()
%% }
-type create_cache_policy_request() :: #{binary() => any()}.


%% Example:
%% list_distribution_tenants_result() :: #{
%%   <<"DistributionTenantList">> => list(distribution_tenant_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_distribution_tenants_result() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_query_strings_config() :: #{
%%   <<"QueryStringBehavior">> => list(any()),
%%   <<"QueryStrings">> => query_string_names()
%% }
-type origin_request_policy_query_strings_config() :: #{binary() => any()}.


%% Example:
%% invalid_origin_keepalive_timeout() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_origin_keepalive_timeout() :: #{binary() => any()}.


%% Example:
%% list_continuous_deployment_policies_result() :: #{
%%   <<"ContinuousDeploymentPolicyList">> => continuous_deployment_policy_list()
%% }
-type list_continuous_deployment_policies_result() :: #{binary() => any()}.


%% Example:
%% kinesis_stream_config() :: #{
%%   <<"RoleARN">> => string(),
%%   <<"StreamARN">> => string()
%% }
-type kinesis_stream_config() :: #{binary() => any()}.


%% Example:
%% invalid_forward_cookies() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_forward_cookies() :: #{binary() => any()}.


%% Example:
%% create_key_group_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyGroup">> => key_group(),
%%   <<"Location">> => string()
%% }
-type create_key_group_result() :: #{binary() => any()}.


%% Example:
%% delete_key_group_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_key_group_request() :: #{binary() => any()}.


%% Example:
%% create_field_level_encryption_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryption">> => field_level_encryption(),
%%   <<"Location">> => string()
%% }
-type create_field_level_encryption_config_result() :: #{binary() => any()}.


%% Example:
%% realtime_log_config_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type realtime_log_config_already_exists() :: #{binary() => any()}.


%% Example:
%% no_such_cache_policy() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_cache_policy() :: #{binary() => any()}.


%% Example:
%% aliases() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type aliases() :: #{binary() => any()}.


%% Example:
%% list_distribution_tenants_by_customization_result() :: #{
%%   <<"DistributionTenantList">> => list(distribution_tenant_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_distribution_tenants_by_customization_result() :: #{binary() => any()}.


%% Example:
%% associate_alias_request() :: #{
%%   <<"Alias">> := string()
%% }
-type associate_alias_request() :: #{binary() => any()}.


%% Example:
%% origin_groups() :: #{
%%   <<"Items">> => list(origin_group()),
%%   <<"Quantity">> => integer()
%% }
-type origin_groups() :: #{binary() => any()}.


%% Example:
%% encryption_entity() :: #{
%%   <<"FieldPatterns">> => field_patterns(),
%%   <<"ProviderId">> => string(),
%%   <<"PublicKeyId">> => string()
%% }
-type encryption_entity() :: #{binary() => any()}.


%% Example:
%% invalidation_batch() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Paths">> => paths()
%% }
-type invalidation_batch() :: #{binary() => any()}.


%% Example:
%% list_streaming_distributions_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_streaming_distributions_request() :: #{binary() => any()}.


%% Example:
%% trusted_signer_does_not_exist() :: #{
%%   <<"Message">> => string()
%% }
-type trusted_signer_does_not_exist() :: #{binary() => any()}.


%% Example:
%% get_vpc_origin_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"VpcOrigin">> => vpc_origin()
%% }
-type get_vpc_origin_result() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_connection_mode_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_connection_mode_request() :: #{binary() => any()}.


%% Example:
%% create_cloud_front_origin_access_identity_request() :: #{
%%   <<"CloudFrontOriginAccessIdentityConfig">> := cloud_front_origin_access_identity_config()
%% }
-type create_cloud_front_origin_access_identity_request() :: #{binary() => any()}.


%% Example:
%% no_such_streaming_distribution() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_streaming_distribution() :: #{binary() => any()}.


%% Example:
%% invalid_origin_read_timeout() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_origin_read_timeout() :: #{binary() => any()}.

%% Example:
%% get_invalidation_request() :: #{}
-type get_invalidation_request() :: #{}.


%% Example:
%% continuous_deployment_policy_config() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"StagingDistributionDnsNames">> => staging_distribution_dns_names(),
%%   <<"TrafficConfig">> => traffic_config()
%% }
-type continuous_deployment_policy_config() :: #{binary() => any()}.


%% Example:
%% get_origin_request_policy_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginRequestPolicyConfig">> => origin_request_policy_config()
%% }
-type get_origin_request_policy_config_result() :: #{binary() => any()}.


%% Example:
%% create_response_headers_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"ResponseHeadersPolicy">> => response_headers_policy()
%% }
-type create_response_headers_policy_result() :: #{binary() => any()}.


%% Example:
%% update_key_value_store_request() :: #{
%%   <<"Comment">> := string(),
%%   <<"IfMatch">> := string()
%% }
-type update_key_value_store_request() :: #{binary() => any()}.


%% Example:
%% customizations() :: #{
%%   <<"Certificate">> => certificate(),
%%   <<"GeoRestrictions">> => geo_restriction_customization(),
%%   <<"WebAcl">> => web_acl_customization()
%% }
-type customizations() :: #{binary() => any()}.


%% Example:
%% invalid_domain_name_for_origin_access_control() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_domain_name_for_origin_access_control() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_content_security_policy() :: #{
%%   <<"ContentSecurityPolicy">> => string(),
%%   <<"Override">> => boolean()
%% }
-type response_headers_policy_content_security_policy() :: #{binary() => any()}.


%% Example:
%% managed_certificate_details() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateStatus">> => list(any()),
%%   <<"ValidationTokenDetails">> => list(validation_token_detail()),
%%   <<"ValidationTokenHost">> => list(any())
%% }
-type managed_certificate_details() :: #{binary() => any()}.


%% Example:
%% public_key() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"PublicKeyConfig">> => public_key_config()
%% }
-type public_key() :: #{binary() => any()}.


%% Example:
%% domain_conflict() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Domain">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type domain_conflict() :: #{binary() => any()}.


%% Example:
%% update_field_level_encryption_profile_request() :: #{
%%   <<"FieldLevelEncryptionProfileConfig">> := field_level_encryption_profile_config(),
%%   <<"IfMatch">> => string()
%% }
-type update_field_level_encryption_profile_request() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_summary() :: #{
%%   <<"Comment">> => string(),
%%   <<"EncryptionEntities">> => encryption_entities(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type field_level_encryption_profile_summary() :: #{binary() => any()}.


%% Example:
%% function_summary() :: #{
%%   <<"FunctionConfig">> => function_config(),
%%   <<"FunctionMetadata">> => function_metadata(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type function_summary() :: #{binary() => any()}.


%% Example:
%% too_many_key_groups_associated_to_distribution() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_key_groups_associated_to_distribution() :: #{binary() => any()}.


%% Example:
%% create_cache_policy_result() :: #{
%%   <<"CachePolicy">> => cache_policy(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type create_cache_policy_result() :: #{binary() => any()}.


%% Example:
%% create_key_value_store_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"ImportSource">> => import_source(),
%%   <<"Name">> := string()
%% }
-type create_key_value_store_request() :: #{binary() => any()}.


%% Example:
%% origin_custom_header() :: #{
%%   <<"HeaderName">> => string(),
%%   <<"HeaderValue">> => string()
%% }
-type origin_custom_header() :: #{binary() => any()}.


%% Example:
%% list_field_level_encryption_profiles_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_field_level_encryption_profiles_request() :: #{binary() => any()}.


%% Example:
%% list_vpc_origins_result() :: #{
%%   <<"VpcOriginList">> => vpc_origin_list()
%% }
-type list_vpc_origins_result() :: #{binary() => any()}.


%% Example:
%% cache_policy_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type cache_policy_already_exists() :: #{binary() => any()}.


%% Example:
%% too_many_headers_in_forwarded_values() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_headers_in_forwarded_values() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_remove_header() :: #{
%%   <<"Header">> => string()
%% }
-type response_headers_policy_remove_header() :: #{binary() => any()}.

%% Example:
%% get_field_level_encryption_request() :: #{}
-type get_field_level_encryption_request() :: #{}.


%% Example:
%% invalid_minimum_protocol_version() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_minimum_protocol_version() :: #{binary() => any()}.


%% Example:
%% key_value_store_list() :: #{
%%   <<"Items">> => list(key_value_store()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type key_value_store_list() :: #{binary() => any()}.


%% Example:
%% get_cloud_front_origin_access_identity_result() :: #{
%%   <<"CloudFrontOriginAccessIdentity">> => cloud_front_origin_access_identity(),
%%   <<"ETag">> => string()
%% }
-type get_cloud_front_origin_access_identity_result() :: #{binary() => any()}.


%% Example:
%% query_string_names() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type query_string_names() :: #{binary() => any()}.


%% Example:
%% get_field_level_encryption_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryption">> => field_level_encryption()
%% }
-type get_field_level_encryption_result() :: #{binary() => any()}.


%% Example:
%% update_streaming_distribution_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"StreamingDistributionConfig">> := streaming_distribution_config()
%% }
-type update_streaming_distribution_request() :: #{binary() => any()}.


%% Example:
%% too_many_streaming_distributions() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_streaming_distributions() :: #{binary() => any()}.


%% Example:
%% no_such_origin_access_control() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_origin_access_control() :: #{binary() => any()}.


%% Example:
%% cannot_delete_entity_while_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type cannot_delete_entity_while_in_use() :: #{binary() => any()}.


%% Example:
%% conflicting_aliases_list() :: #{
%%   <<"Items">> => list(conflicting_alias()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type conflicting_aliases_list() :: #{binary() => any()}.


%% Example:
%% too_many_field_level_encryption_profiles() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_profiles() :: #{binary() => any()}.


%% Example:
%% list_field_level_encryption_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_field_level_encryption_configs_request() :: #{binary() => any()}.


%% Example:
%% distribution_tenant_association_filter() :: #{
%%   <<"ConnectionGroupId">> => string(),
%%   <<"DistributionId">> => string()
%% }
-type distribution_tenant_association_filter() :: #{binary() => any()}.


%% Example:
%% update_public_key_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"PublicKey">> => public_key()
%% }
-type update_public_key_result() :: #{binary() => any()}.

%% Example:
%% get_field_level_encryption_config_request() :: #{}
-type get_field_level_encryption_config_request() :: #{}.


%% Example:
%% too_many_field_level_encryption_configs() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_configs() :: #{binary() => any()}.


%% Example:
%% delete_key_value_store_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_key_value_store_request() :: #{binary() => any()}.


%% Example:
%% too_many_origin_custom_headers() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_origin_custom_headers() :: #{binary() => any()}.


%% Example:
%% disassociate_distribution_web_acl_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Id">> => string()
%% }
-type disassociate_distribution_web_acl_result() :: #{binary() => any()}.


%% Example:
%% create_function_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FunctionSummary">> => function_summary(),
%%   <<"Location">> => string()
%% }
-type create_function_result() :: #{binary() => any()}.


%% Example:
%% distribution_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type distribution_already_exists() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_config() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string(),
%%   <<"ContentTypeProfileConfig">> => content_type_profile_config(),
%%   <<"QueryArgProfileConfig">> => query_arg_profile_config()
%% }
-type field_level_encryption_config() :: #{binary() => any()}.


%% Example:
%% list_cache_policies_result() :: #{
%%   <<"CachePolicyList">> => cache_policy_list()
%% }
-type list_cache_policies_result() :: #{binary() => any()}.


%% Example:
%% active_trusted_signers() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Items">> => list(signer()),
%%   <<"Quantity">> => integer()
%% }
-type active_trusted_signers() :: #{binary() => any()}.


%% Example:
%% delete_vpc_origin_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_vpc_origin_request() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity() :: #{
%%   <<"CloudFrontOriginAccessIdentityConfig">> => cloud_front_origin_access_identity_config(),
%%   <<"Id">> => string(),
%%   <<"S3CanonicalUserId">> => string()
%% }
-type cloud_front_origin_access_identity() :: #{binary() => any()}.


%% Example:
%% list_functions_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Stage">> => list(any())
%% }
-type list_functions_request() :: #{binary() => any()}.


%% Example:
%% too_many_origins() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_origins() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_with_single_function_arn() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_with_single_function_arn() :: #{binary() => any()}.


%% Example:
%% create_anycast_ip_list_request() :: #{
%%   <<"IpCount">> := integer(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => tags()
%% }
-type create_anycast_ip_list_request() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_with_lambda_associations() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_with_lambda_associations() :: #{binary() => any()}.


%% Example:
%% no_such_resource() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_resource() :: #{binary() => any()}.

%% Example:
%% get_invalidation_for_distribution_tenant_request() :: #{}
-type get_invalidation_for_distribution_tenant_request() :: #{}.


%% Example:
%% distribution_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(distribution_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type distribution_list() :: #{binary() => any()}.


%% Example:
%% resource_not_disabled() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_disabled() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"CorsConfig">> => response_headers_policy_cors_config(),
%%   <<"CustomHeadersConfig">> => response_headers_policy_custom_headers_config(),
%%   <<"Name">> => string(),
%%   <<"RemoveHeadersConfig">> => response_headers_policy_remove_headers_config(),
%%   <<"SecurityHeadersConfig">> => response_headers_policy_security_headers_config(),
%%   <<"ServerTimingHeadersConfig">> => response_headers_policy_server_timing_headers_config()
%% }
-type response_headers_policy_config() :: #{binary() => any()}.


%% Example:
%% delete_cache_policy_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_cache_policy_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"Tags">> => tags()
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% certificate() :: #{
%%   <<"Arn">> => string()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% get_response_headers_policy_config_request() :: #{}
-type get_response_headers_policy_config_request() :: #{}.


%% Example:
%% too_many_field_level_encryption_encryption_entities() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_encryption_entities() :: #{binary() => any()}.


%% Example:
%% associate_distribution_web_acl_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"WebACLArn">> := string()
%% }
-type associate_distribution_web_acl_request() :: #{binary() => any()}.


%% Example:
%% too_many_lambda_function_associations() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_lambda_function_associations() :: #{binary() => any()}.


%% Example:
%% too_many_streaming_distribution_cnames() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_streaming_distribution_cnames() :: #{binary() => any()}.


%% Example:
%% create_anycast_ip_list_result() :: #{
%%   <<"AnycastIpList">> => anycast_ip_list(),
%%   <<"ETag">> => string()
%% }
-type create_anycast_ip_list_result() :: #{binary() => any()}.


%% Example:
%% grpc_config() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type grpc_config() :: #{binary() => any()}.


%% Example:
%% distribution_tenant() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectionGroupId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Customizations">> => customizations(),
%%   <<"DistributionId">> => string(),
%%   <<"Domains">> => list(domain_result()),
%%   <<"Enabled">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => list(parameter()),
%%   <<"Status">> => string(),
%%   <<"Tags">> => tags()
%% }
-type distribution_tenant() :: #{binary() => any()}.


%% Example:
%% function_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"KeyValueStoreAssociations">> => key_value_store_associations(),
%%   <<"Runtime">> => list(any())
%% }
-type function_config() :: #{binary() => any()}.


%% Example:
%% list_streaming_distributions_result() :: #{
%%   <<"StreamingDistributionList">> => streaming_distribution_list()
%% }
-type list_streaming_distributions_result() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_summary() :: #{
%%   <<"OriginRequestPolicy">> => origin_request_policy(),
%%   <<"Type">> => list(any())
%% }
-type origin_request_policy_summary() :: #{binary() => any()}.


%% Example:
%% tag_keys() :: #{
%%   <<"Items">> => list(string())
%% }
-type tag_keys() :: #{binary() => any()}.


%% Example:
%% too_many_realtime_log_configs() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_realtime_log_configs() :: #{binary() => any()}.


%% Example:
%% verify_dns_configuration_result() :: #{
%%   <<"DnsConfigurationList">> => list(dns_configuration())
%% }
-type verify_dns_configuration_result() :: #{binary() => any()}.


%% Example:
%% cache_policy_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type cache_policy_in_use() :: #{binary() => any()}.


%% Example:
%% create_vpc_origin_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"VpcOrigin">> => vpc_origin()
%% }
-type create_vpc_origin_result() :: #{binary() => any()}.


%% Example:
%% origin_group() :: #{
%%   <<"FailoverCriteria">> => origin_group_failover_criteria(),
%%   <<"Id">> => string(),
%%   <<"Members">> => origin_group_members(),
%%   <<"SelectionCriteria">> => list(any())
%% }
-type origin_group() :: #{binary() => any()}.

%% Example:
%% get_key_group_request() :: #{}
-type get_key_group_request() :: #{}.

%% Example:
%% get_public_key_request() :: #{}
-type get_public_key_request() :: #{}.


%% Example:
%% create_distribution_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type create_distribution_result() :: #{binary() => any()}.


%% Example:
%% custom_error_response() :: #{
%%   <<"ErrorCachingMinTTL">> => float(),
%%   <<"ErrorCode">> => integer(),
%%   <<"ResponseCode">> => string(),
%%   <<"ResponsePagePath">> => string()
%% }
-type custom_error_response() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_response_headers_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_response_headers_policy() :: #{binary() => any()}.


%% Example:
%% test_function_request() :: #{
%%   <<"EventObject">> := binary(),
%%   <<"IfMatch">> := string(),
%%   <<"Stage">> => list(any())
%% }
-type test_function_request() :: #{binary() => any()}.


%% Example:
%% create_monitoring_subscription_result() :: #{
%%   <<"MonitoringSubscription">> => monitoring_subscription()
%% }
-type create_monitoring_subscription_result() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_custom_header() :: #{
%%   <<"Header">> => string(),
%%   <<"Override">> => boolean(),
%%   <<"Value">> => string()
%% }
-type response_headers_policy_custom_header() :: #{binary() => any()}.


%% Example:
%% no_such_function_exists() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_function_exists() :: #{binary() => any()}.


%% Example:
%% delete_vpc_origin_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"VpcOrigin">> => vpc_origin()
%% }
-type delete_vpc_origin_result() :: #{binary() => any()}.


%% Example:
%% get_field_level_encryption_profile_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryptionProfileConfig">> => field_level_encryption_profile_config()
%% }
-type get_field_level_encryption_profile_config_result() :: #{binary() => any()}.


%% Example:
%% origin_ssl_protocols() :: #{
%%   <<"Items">> => list(list(any())()),
%%   <<"Quantity">> => integer()
%% }
-type origin_ssl_protocols() :: #{binary() => any()}.


%% Example:
%% too_many_cloud_front_origin_access_identities() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cloud_front_origin_access_identities() :: #{binary() => any()}.


%% Example:
%% delete_anycast_ip_list_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_anycast_ip_list_request() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_config() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string(),
%%   <<"EncryptionEntities">> => encryption_entities(),
%%   <<"Name">> => string()
%% }
-type field_level_encryption_profile_config() :: #{binary() => any()}.


%% Example:
%% list_origin_access_controls_result() :: #{
%%   <<"OriginAccessControlList">> => origin_access_control_list()
%% }
-type list_origin_access_controls_result() :: #{binary() => any()}.


%% Example:
%% disassociate_distribution_tenant_web_acl_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type disassociate_distribution_tenant_web_acl_request() :: #{binary() => any()}.


%% Example:
%% delete_distribution_tenant_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_distribution_tenant_request() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_web_acl_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_web_acl_id_request() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_response_headers_policy_id_result() :: #{
%%   <<"DistributionIdList">> => distribution_id_list()
%% }
-type list_distributions_by_response_headers_policy_id_result() :: #{binary() => any()}.


%% Example:
%% update_vpc_origin_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"VpcOrigin">> => vpc_origin()
%% }
-type update_vpc_origin_result() :: #{binary() => any()}.

%% Example:
%% get_monitoring_subscription_request() :: #{}
-type get_monitoring_subscription_request() :: #{}.


%% Example:
%% origin() :: #{
%%   <<"ConnectionAttempts">> => integer(),
%%   <<"ConnectionTimeout">> => integer(),
%%   <<"CustomHeaders">> => custom_headers(),
%%   <<"CustomOriginConfig">> => custom_origin_config(),
%%   <<"DomainName">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginAccessControlId">> => string(),
%%   <<"OriginPath">> => string(),
%%   <<"OriginShield">> => origin_shield(),
%%   <<"ResponseCompletionTimeout">> => integer(),
%%   <<"S3OriginConfig">> => s3_origin_config(),
%%   <<"VpcOriginConfig">> => vpc_origin_config()
%% }
-type origin() :: #{binary() => any()}.


%% Example:
%% create_field_level_encryption_profile_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryptionProfile">> => field_level_encryption_profile(),
%%   <<"Location">> => string()
%% }
-type create_field_level_encryption_profile_result() :: #{binary() => any()}.


%% Example:
%% update_domain_association_result() :: #{
%%   <<"Domain">> => string(),
%%   <<"ETag">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type update_domain_association_result() :: #{binary() => any()}.


%% Example:
%% too_many_public_keys_in_key_group() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_public_keys_in_key_group() :: #{binary() => any()}.


%% Example:
%% continuous_deployment_single_header_config() :: #{
%%   <<"Header">> => string(),
%%   <<"Value">> => string()
%% }
-type continuous_deployment_single_header_config() :: #{binary() => any()}.


%% Example:
%% list_distributions_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_request() :: #{binary() => any()}.


%% Example:
%% get_invalidation_for_distribution_tenant_result() :: #{
%%   <<"Invalidation">> => invalidation()
%% }
-type get_invalidation_for_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% update_realtime_log_config_request() :: #{
%%   <<"ARN">> => string(),
%%   <<"EndPoints">> => list(end_point()),
%%   <<"Fields">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"SamplingRate">> => float()
%% }
-type update_realtime_log_config_request() :: #{binary() => any()}.


%% Example:
%% get_distribution_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string()
%% }
-type get_distribution_result() :: #{binary() => any()}.


%% Example:
%% too_many_cache_behaviors() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_cache_behaviors() :: #{binary() => any()}.

%% Example:
%% get_origin_access_control_request() :: #{}
-type get_origin_access_control_request() :: #{}.


%% Example:
%% list_invalidations_result() :: #{
%%   <<"InvalidationList">> => invalidation_list()
%% }
-type list_invalidations_result() :: #{binary() => any()}.


%% Example:
%% function_list() :: #{
%%   <<"Items">> => list(function_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type function_list() :: #{binary() => any()}.


%% Example:
%% managed_certificate_request() :: #{
%%   <<"CertificateTransparencyLoggingPreference">> => list(any()),
%%   <<"PrimaryDomainName">> => string(),
%%   <<"ValidationTokenHost">> => list(any())
%% }
-type managed_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_cloud_front_origin_access_identity_config_request() :: #{}
-type get_cloud_front_origin_access_identity_config_request() :: #{}.


%% Example:
%% response_headers_policy_server_timing_headers_config() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"SamplingRate">> => float()
%% }
-type response_headers_policy_server_timing_headers_config() :: #{binary() => any()}.


%% Example:
%% headers() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type headers() :: #{binary() => any()}.


%% Example:
%% realtime_log_config_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type realtime_log_config_in_use() :: #{binary() => any()}.


%% Example:
%% streaming_distribution_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Aliases">> => aliases(),
%%   <<"Comment">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PriceClass">> => list(any()),
%%   <<"S3Origin">> => s3_origin(),
%%   <<"Status">> => string(),
%%   <<"TrustedSigners">> => trusted_signers()
%% }
-type streaming_distribution_summary() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_anycast_ip_list_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_anycast_ip_list_id_request() :: #{binary() => any()}.


%% Example:
%% update_distribution_tenant_result() :: #{
%%   <<"DistributionTenant">> => distribution_tenant(),
%%   <<"ETag">> => string()
%% }
-type update_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_realtime_log_config_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"RealtimeLogConfigArn">> => string(),
%%   <<"RealtimeLogConfigName">> => string()
%% }
-type list_distributions_by_realtime_log_config_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_cors_config() :: #{
%%   <<"AccessControlAllowCredentials">> => boolean(),
%%   <<"AccessControlAllowHeaders">> => response_headers_policy_access_control_allow_headers(),
%%   <<"AccessControlAllowMethods">> => response_headers_policy_access_control_allow_methods(),
%%   <<"AccessControlAllowOrigins">> => response_headers_policy_access_control_allow_origins(),
%%   <<"AccessControlExposeHeaders">> => response_headers_policy_access_control_expose_headers(),
%%   <<"AccessControlMaxAgeSec">> => integer(),
%%   <<"OriginOverride">> => boolean()
%% }
-type response_headers_policy_cors_config() :: #{binary() => any()}.


%% Example:
%% origin_group_failover_criteria() :: #{
%%   <<"StatusCodes">> => status_codes()
%% }
-type origin_group_failover_criteria() :: #{binary() => any()}.


%% Example:
%% too_many_key_groups() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_key_groups() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Resource">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% get_public_key_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"PublicKeyConfig">> => public_key_config()
%% }
-type get_public_key_config_result() :: #{binary() => any()}.


%% Example:
%% test_function_failed() :: #{
%%   <<"Message">> => string()
%% }
-type test_function_failed() :: #{binary() => any()}.


%% Example:
%% get_response_headers_policy_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"ResponseHeadersPolicyConfig">> => response_headers_policy_config()
%% }
-type get_response_headers_policy_config_result() :: #{binary() => any()}.


%% Example:
%% function_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type function_already_exists() :: #{binary() => any()}.


%% Example:
%% origin_group_members() :: #{
%%   <<"Items">> => list(origin_group_member()),
%%   <<"Quantity">> => integer()
%% }
-type origin_group_members() :: #{binary() => any()}.


%% Example:
%% streaming_distribution_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type streaming_distribution_already_exists() :: #{binary() => any()}.


%% Example:
%% invalid_default_root_object() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_default_root_object() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_vpc_origin_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_vpc_origin_id_request() :: #{binary() => any()}.


%% Example:
%% create_origin_request_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"OriginRequestPolicy">> => origin_request_policy()
%% }
-type create_origin_request_policy_result() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_origin_request_policy_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_origin_request_policy_id_request() :: #{binary() => any()}.


%% Example:
%% associate_distribution_tenant_web_acl_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"WebACLArn">> := string()
%% }
-type associate_distribution_tenant_web_acl_request() :: #{binary() => any()}.


%% Example:
%% cname_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type cname_already_exists() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_size_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type field_level_encryption_profile_size_exceeded() :: #{binary() => any()}.


%% Example:
%% create_response_headers_policy_request() :: #{
%%   <<"ResponseHeadersPolicyConfig">> := response_headers_policy_config()
%% }
-type create_response_headers_policy_request() :: #{binary() => any()}.


%% Example:
%% too_many_field_level_encryption_field_patterns() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_field_patterns() :: #{binary() => any()}.


%% Example:
%% get_continuous_deployment_policy_config_result() :: #{
%%   <<"ContinuousDeploymentPolicyConfig">> => continuous_deployment_policy_config(),
%%   <<"ETag">> => string()
%% }
-type get_continuous_deployment_policy_config_result() :: #{binary() => any()}.


%% Example:
%% domain_result() :: #{
%%   <<"Domain">> => string(),
%%   <<"Status">> => list(any())
%% }
-type domain_result() :: #{binary() => any()}.

%% Example:
%% get_anycast_ip_list_request() :: #{}
-type get_anycast_ip_list_request() :: #{}.


%% Example:
%% origin_request_policy_list() :: #{
%%   <<"Items">> => list(origin_request_policy_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type origin_request_policy_list() :: #{binary() => any()}.


%% Example:
%% key_value_store() :: #{
%%   <<"ARN">> => string(),
%%   <<"Comment">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type key_value_store() :: #{binary() => any()}.


%% Example:
%% too_many_remove_headers_in_response_headers_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_remove_headers_in_response_headers_policy() :: #{binary() => any()}.


%% Example:
%% too_many_origin_request_policies() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_origin_request_policies() :: #{binary() => any()}.


%% Example:
%% get_origin_access_control_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginAccessControl">> => origin_access_control()
%% }
-type get_origin_access_control_result() :: #{binary() => any()}.


%% Example:
%% delete_origin_access_control_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_origin_access_control_request() :: #{binary() => any()}.


%% Example:
%% delete_continuous_deployment_policy_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_continuous_deployment_policy_request() :: #{binary() => any()}.


%% Example:
%% create_cloud_front_origin_access_identity_result() :: #{
%%   <<"CloudFrontOriginAccessIdentity">> => cloud_front_origin_access_identity(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type create_cloud_front_origin_access_identity_result() :: #{binary() => any()}.


%% Example:
%% get_response_headers_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"ResponseHeadersPolicy">> => response_headers_policy()
%% }
-type get_response_headers_policy_result() :: #{binary() => any()}.


%% Example:
%% validation_token_detail() :: #{
%%   <<"Domain">> => string(),
%%   <<"RedirectFrom">> => string(),
%%   <<"RedirectTo">> => string()
%% }
-type validation_token_detail() :: #{binary() => any()}.


%% Example:
%% web_acl_customization() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Arn">> => string()
%% }
-type web_acl_customization() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_key_group_result() :: #{
%%   <<"DistributionIdList">> => distribution_id_list()
%% }
-type list_distributions_by_key_group_result() :: #{binary() => any()}.


%% Example:
%% list_cache_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type list_cache_policies_request() :: #{binary() => any()}.


%% Example:
%% no_such_invalidation() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_invalidation() :: #{binary() => any()}.


%% Example:
%% too_many_query_string_parameters() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_query_string_parameters() :: #{binary() => any()}.


%% Example:
%% illegal_delete() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_delete() :: #{binary() => any()}.


%% Example:
%% invalid_viewer_certificate() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_viewer_certificate() :: #{binary() => any()}.


%% Example:
%% update_distribution_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string()
%% }
-type update_distribution_result() :: #{binary() => any()}.


%% Example:
%% list_conflicting_aliases_result() :: #{
%%   <<"ConflictingAliasesList">> => conflicting_aliases_list()
%% }
-type list_conflicting_aliases_result() :: #{binary() => any()}.


%% Example:
%% update_distribution_with_staging_config_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"StagingDistributionId">> => string()
%% }
-type update_distribution_with_staging_config_request() :: #{binary() => any()}.


%% Example:
%% paths() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type paths() :: #{binary() => any()}.


%% Example:
%% vpc_origin() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"VpcOriginEndpointConfig">> => vpc_origin_endpoint_config()
%% }
-type vpc_origin() :: #{binary() => any()}.


%% Example:
%% invalid_relative_path() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_relative_path() :: #{binary() => any()}.


%% Example:
%% create_field_level_encryption_config_request() :: #{
%%   <<"FieldLevelEncryptionConfig">> := field_level_encryption_config()
%% }
-type create_field_level_encryption_config_request() :: #{binary() => any()}.


%% Example:
%% verify_dns_configuration_request() :: #{
%%   <<"Domain">> => string(),
%%   <<"Identifier">> := string()
%% }
-type verify_dns_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_origin_access_control_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"OriginAccessControl">> => origin_access_control()
%% }
-type create_origin_access_control_result() :: #{binary() => any()}.


%% Example:
%% delete_streaming_distribution_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_streaming_distribution_request() :: #{binary() => any()}.


%% Example:
%% no_such_response_headers_policy() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_response_headers_policy() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity_config() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string()
%% }
-type cloud_front_origin_access_identity_config() :: #{binary() => any()}.


%% Example:
%% k_g_key_pair_ids() :: #{
%%   <<"KeyGroupId">> => string(),
%%   <<"KeyPairIds">> => key_pair_ids()
%% }
-type k_g_key_pair_ids() :: #{binary() => any()}.


%% Example:
%% invalidation_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(invalidation_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type invalidation_list() :: #{binary() => any()}.


%% Example:
%% create_public_key_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"PublicKey">> => public_key()
%% }
-type create_public_key_result() :: #{binary() => any()}.


%% Example:
%% create_distribution_tenant_result() :: #{
%%   <<"DistributionTenant">> => distribution_tenant(),
%%   <<"ETag">> => string()
%% }
-type create_distribution_tenant_result() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_access_control_allow_methods() :: #{
%%   <<"Items">> => list(list(any())()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_access_control_allow_methods() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_security_headers_config() :: #{
%%   <<"ContentSecurityPolicy">> => response_headers_policy_content_security_policy(),
%%   <<"ContentTypeOptions">> => response_headers_policy_content_type_options(),
%%   <<"FrameOptions">> => response_headers_policy_frame_options(),
%%   <<"ReferrerPolicy">> => response_headers_policy_referrer_policy(),
%%   <<"StrictTransportSecurity">> => response_headers_policy_strict_transport_security(),
%%   <<"XSSProtection">> => response_headers_policy_x_s_s_protection()
%% }
-type response_headers_policy_security_headers_config() :: #{binary() => any()}.


%% Example:
%% realtime_log_config_owner_mismatch() :: #{
%%   <<"Message">> => string()
%% }
-type realtime_log_config_owner_mismatch() :: #{binary() => any()}.


%% Example:
%% create_distribution_with_tags_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string(),
%%   <<"Location">> => string()
%% }
-type create_distribution_with_tags_result() :: #{binary() => any()}.


%% Example:
%% update_origin_request_policy_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"OriginRequestPolicyConfig">> := origin_request_policy_config()
%% }
-type update_origin_request_policy_request() :: #{binary() => any()}.


%% Example:
%% vpc_origin_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(vpc_origin_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type vpc_origin_list() :: #{binary() => any()}.


%% Example:
%% origin_access_control_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type origin_access_control_already_exists() :: #{binary() => any()}.

%% Example:
%% get_distribution_request() :: #{}
-type get_distribution_request() :: #{}.


%% Example:
%% streaming_distribution_config_with_tags() :: #{
%%   <<"StreamingDistributionConfig">> => streaming_distribution_config(),
%%   <<"Tags">> => tags()
%% }
-type streaming_distribution_config_with_tags() :: #{binary() => any()}.


%% Example:
%% delete_field_level_encryption_profile_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_field_level_encryption_profile_request() :: #{binary() => any()}.


%% Example:
%% update_function_request() :: #{
%%   <<"FunctionCode">> := binary(),
%%   <<"FunctionConfig">> := function_config(),
%%   <<"IfMatch">> := string()
%% }
-type update_function_request() :: #{binary() => any()}.


%% Example:
%% update_origin_access_control_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginAccessControl">> => origin_access_control()
%% }
-type update_origin_access_control_result() :: #{binary() => any()}.


%% Example:
%% import_source() :: #{
%%   <<"SourceARN">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type import_source() :: #{binary() => any()}.


%% Example:
%% get_connection_group_by_routing_endpoint_result() :: #{
%%   <<"ConnectionGroup">> => connection_group(),
%%   <<"ETag">> => string()
%% }
-type get_connection_group_by_routing_endpoint_result() :: #{binary() => any()}.


%% Example:
%% delete_distribution_request() :: #{
%%   <<"IfMatch">> => string()
%% }
-type delete_distribution_request() :: #{binary() => any()}.


%% Example:
%% field_level_encryption_profile_list() :: #{
%%   <<"Items">> => list(field_level_encryption_profile_summary()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type field_level_encryption_profile_list() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_realtime_log_config_result() :: #{
%%   <<"DistributionList">> => distribution_list()
%% }
-type list_distributions_by_realtime_log_config_result() :: #{binary() => any()}.


%% Example:
%% no_such_origin() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_origin() :: #{binary() => any()}.


%% Example:
%% query_arg_profile_config() :: #{
%%   <<"ForwardWhenQueryArgProfileIsUnknown">> => boolean(),
%%   <<"QueryArgProfiles">> => query_arg_profiles()
%% }
-type query_arg_profile_config() :: #{binary() => any()}.


%% Example:
%% get_field_level_encryption_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryptionConfig">> => field_level_encryption_config()
%% }
-type get_field_level_encryption_config_result() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_vpc_origin_id_result() :: #{
%%   <<"DistributionIdList">> => distribution_id_list()
%% }
-type list_distributions_by_vpc_origin_id_result() :: #{binary() => any()}.

%% Example:
%% delete_monitoring_subscription_request() :: #{}
-type delete_monitoring_subscription_request() :: #{}.


%% Example:
%% no_such_monitoring_subscription() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_monitoring_subscription() :: #{binary() => any()}.


%% Example:
%% create_function_request() :: #{
%%   <<"FunctionCode">> := binary(),
%%   <<"FunctionConfig">> := function_config(),
%%   <<"Name">> := string()
%% }
-type create_function_request() :: #{binary() => any()}.


%% Example:
%% allowed_methods() :: #{
%%   <<"CachedMethods">> => cached_methods(),
%%   <<"Items">> => list(list(any())()),
%%   <<"Quantity">> => integer()
%% }
-type allowed_methods() :: #{binary() => any()}.


%% Example:
%% list_origin_access_controls_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_origin_access_controls_request() :: #{binary() => any()}.


%% Example:
%% public_key_summary() :: #{
%%   <<"Comment">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EncodedKey">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type public_key_summary() :: #{binary() => any()}.


%% Example:
%% illegal_field_level_encryption_config_association_with_cache_behavior() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_field_level_encryption_config_association_with_cache_behavior() :: #{binary() => any()}.


%% Example:
%% cloud_front_origin_access_identity_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(cloud_front_origin_access_identity_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type cloud_front_origin_access_identity_list() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_origin_request_policy_id_result() :: #{
%%   <<"DistributionIdList">> => distribution_id_list()
%% }
-type list_distributions_by_origin_request_policy_id_result() :: #{binary() => any()}.


%% Example:
%% too_many_public_keys() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_public_keys() :: #{binary() => any()}.


%% Example:
%% get_cache_policy_config_result() :: #{
%%   <<"CachePolicyConfig">> => cache_policy_config(),
%%   <<"ETag">> => string()
%% }
-type get_cache_policy_config_result() :: #{binary() => any()}.


%% Example:
%% cache_policy() :: #{
%%   <<"CachePolicyConfig">> => cache_policy_config(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type cache_policy() :: #{binary() => any()}.


%% Example:
%% public_key_config() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string(),
%%   <<"EncodedKey">> => string(),
%%   <<"Name">> => string()
%% }
-type public_key_config() :: #{binary() => any()}.


%% Example:
%% get_streaming_distribution_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"StreamingDistribution">> => streaming_distribution()
%% }
-type get_streaming_distribution_result() :: #{binary() => any()}.


%% Example:
%% create_connection_group_result() :: #{
%%   <<"ConnectionGroup">> => connection_group(),
%%   <<"ETag">> => string()
%% }
-type create_connection_group_result() :: #{binary() => any()}.

%% Example:
%% get_managed_certificate_details_request() :: #{}
-type get_managed_certificate_details_request() :: #{}.


%% Example:
%% create_distribution_with_tags_request() :: #{
%%   <<"DistributionConfigWithTags">> := distribution_config_with_tags()
%% }
-type create_distribution_with_tags_request() :: #{binary() => any()}.


%% Example:
%% update_streaming_distribution_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"StreamingDistribution">> => streaming_distribution()
%% }
-type update_streaming_distribution_result() :: #{binary() => any()}.


%% Example:
%% list_continuous_deployment_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_continuous_deployment_policies_request() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_x_s_s_protection() :: #{
%%   <<"ModeBlock">> => boolean(),
%%   <<"Override">> => boolean(),
%%   <<"Protection">> => boolean(),
%%   <<"ReportUri">> => string()
%% }
-type response_headers_policy_x_s_s_protection() :: #{binary() => any()}.


%% Example:
%% custom_error_responses() :: #{
%%   <<"Items">> => list(custom_error_response()),
%%   <<"Quantity">> => integer()
%% }
-type custom_error_responses() :: #{binary() => any()}.


%% Example:
%% no_such_field_level_encryption_profile() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_field_level_encryption_profile() :: #{binary() => any()}.


%% Example:
%% create_invalidation_result() :: #{
%%   <<"Invalidation">> => invalidation(),
%%   <<"Location">> => string()
%% }
-type create_invalidation_result() :: #{binary() => any()}.


%% Example:
%% vpc_origin_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OriginEndpointArn">> => string(),
%%   <<"Status">> => string()
%% }
-type vpc_origin_summary() :: #{binary() => any()}.


%% Example:
%% get_key_group_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"KeyGroupConfig">> => key_group_config()
%% }
-type get_key_group_config_result() :: #{binary() => any()}.


%% Example:
%% invalid_function_association() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_function_association() :: #{binary() => any()}.


%% Example:
%% cache_behavior() :: #{
%%   <<"AllowedMethods">> => allowed_methods(),
%%   <<"CachePolicyId">> => string(),
%%   <<"Compress">> => boolean(),
%%   <<"DefaultTTL">> => float(),
%%   <<"FieldLevelEncryptionId">> => string(),
%%   <<"ForwardedValues">> => forwarded_values(),
%%   <<"FunctionAssociations">> => function_associations(),
%%   <<"GrpcConfig">> => grpc_config(),
%%   <<"LambdaFunctionAssociations">> => lambda_function_associations(),
%%   <<"MaxTTL">> => float(),
%%   <<"MinTTL">> => float(),
%%   <<"OriginRequestPolicyId">> => string(),
%%   <<"PathPattern">> => string(),
%%   <<"RealtimeLogConfigArn">> => string(),
%%   <<"ResponseHeadersPolicyId">> => string(),
%%   <<"SmoothStreaming">> => boolean(),
%%   <<"TargetOriginId">> => string(),
%%   <<"TrustedKeyGroups">> => trusted_key_groups(),
%%   <<"TrustedSigners">> => trusted_signers(),
%%   <<"ViewerProtocolPolicy">> => list(any())
%% }
-type cache_behavior() :: #{binary() => any()}.


%% Example:
%% create_invalidation_for_distribution_tenant_request() :: #{
%%   <<"InvalidationBatch">> := invalidation_batch()
%% }
-type create_invalidation_for_distribution_tenant_request() :: #{binary() => any()}.


%% Example:
%% update_field_level_encryption_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryption">> => field_level_encryption()
%% }
-type update_field_level_encryption_config_result() :: #{binary() => any()}.


%% Example:
%% parameters_in_cache_key_and_forwarded_to_origin() :: #{
%%   <<"CookiesConfig">> => cache_policy_cookies_config(),
%%   <<"EnableAcceptEncodingBrotli">> => boolean(),
%%   <<"EnableAcceptEncodingGzip">> => boolean(),
%%   <<"HeadersConfig">> => cache_policy_headers_config(),
%%   <<"QueryStringsConfig">> => cache_policy_query_strings_config()
%% }
-type parameters_in_cache_key_and_forwarded_to_origin() :: #{binary() => any()}.


%% Example:
%% list_realtime_log_configs_result() :: #{
%%   <<"RealtimeLogConfigs">> => realtime_log_configs()
%% }
-type list_realtime_log_configs_result() :: #{binary() => any()}.


%% Example:
%% cache_policy_headers_config() :: #{
%%   <<"HeaderBehavior">> => list(any()),
%%   <<"Headers">> => headers()
%% }
-type cache_policy_headers_config() :: #{binary() => any()}.


%% Example:
%% create_origin_request_policy_request() :: #{
%%   <<"OriginRequestPolicyConfig">> := origin_request_policy_config()
%% }
-type create_origin_request_policy_request() :: #{binary() => any()}.


%% Example:
%% public_key_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type public_key_in_use() :: #{binary() => any()}.


%% Example:
%% associate_distribution_tenant_web_acl_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Id">> => string(),
%%   <<"WebACLArn">> => string()
%% }
-type associate_distribution_tenant_web_acl_result() :: #{binary() => any()}.


%% Example:
%% function_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type function_in_use() :: #{binary() => any()}.


%% Example:
%% too_many_headers_in_origin_request_policy() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_headers_in_origin_request_policy() :: #{binary() => any()}.


%% Example:
%% list_anycast_ip_lists_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_anycast_ip_lists_request() :: #{binary() => any()}.


%% Example:
%% string_schema_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"Required">> => boolean()
%% }
-type string_schema_config() :: #{binary() => any()}.


%% Example:
%% viewer_certificate() :: #{
%%   <<"ACMCertificateArn">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"CertificateSource">> => list(any()),
%%   <<"CloudFrontDefaultCertificate">> => boolean(),
%%   <<"IAMCertificateId">> => string(),
%%   <<"MinimumProtocolVersion">> => list(any()),
%%   <<"SSLSupportMethod">> => list(any())
%% }
-type viewer_certificate() :: #{binary() => any()}.


%% Example:
%% cache_policy_query_strings_config() :: #{
%%   <<"QueryStringBehavior">> => list(any()),
%%   <<"QueryStrings">> => query_string_names()
%% }
-type cache_policy_query_strings_config() :: #{binary() => any()}.


%% Example:
%% list_distributions_by_response_headers_policy_id_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_distributions_by_response_headers_policy_id_request() :: #{binary() => any()}.


%% Example:
%% origin_access_control_config() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"OriginAccessControlOriginType">> => list(any()),
%%   <<"SigningBehavior">> => list(any()),
%%   <<"SigningProtocol">> => list(any())
%% }
-type origin_access_control_config() :: #{binary() => any()}.


%% Example:
%% no_such_realtime_log_config() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_realtime_log_config() :: #{binary() => any()}.


%% Example:
%% get_public_key_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"PublicKey">> => public_key()
%% }
-type get_public_key_result() :: #{binary() => any()}.


%% Example:
%% publish_function_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type publish_function_request() :: #{binary() => any()}.


%% Example:
%% trusted_signers() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type trusted_signers() :: #{binary() => any()}.


%% Example:
%% streaming_distribution_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(streaming_distribution_summary()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type streaming_distribution_list() :: #{binary() => any()}.


%% Example:
%% describe_function_request() :: #{
%%   <<"Stage">> => list(any())
%% }
-type describe_function_request() :: #{binary() => any()}.


%% Example:
%% staging_distribution_dns_names() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type staging_distribution_dns_names() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_summary() :: #{
%%   <<"ResponseHeadersPolicy">> => response_headers_policy(),
%%   <<"Type">> => list(any())
%% }
-type response_headers_policy_summary() :: #{binary() => any()}.


%% Example:
%% list_anycast_ip_lists_result() :: #{
%%   <<"AnycastIpLists">> => anycast_ip_list_collection()
%% }
-type list_anycast_ip_lists_result() :: #{binary() => any()}.


%% Example:
%% get_origin_request_policy_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginRequestPolicy">> => origin_request_policy()
%% }
-type get_origin_request_policy_result() :: #{binary() => any()}.


%% Example:
%% no_such_public_key() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_public_key() :: #{binary() => any()}.


%% Example:
%% entity_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type entity_limit_exceeded() :: #{binary() => any()}.


%% Example:
%% create_public_key_request() :: #{
%%   <<"PublicKeyConfig">> := public_key_config()
%% }
-type create_public_key_request() :: #{binary() => any()}.


%% Example:
%% too_many_distributions() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions() :: #{binary() => any()}.


%% Example:
%% function_metadata() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"FunctionARN">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Stage">> => list(any())
%% }
-type function_metadata() :: #{binary() => any()}.


%% Example:
%% get_origin_access_control_config_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"OriginAccessControlConfig">> => origin_access_control_config()
%% }
-type get_origin_access_control_config_result() :: #{binary() => any()}.


%% Example:
%% restrictions() :: #{
%%   <<"GeoRestriction">> => geo_restriction()
%% }
-type restrictions() :: #{binary() => any()}.


%% Example:
%% key_pair_ids() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type key_pair_ids() :: #{binary() => any()}.

%% Example:
%% get_cache_policy_request() :: #{}
-type get_cache_policy_request() :: #{}.


%% Example:
%% invalid_response_code() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_response_code() :: #{binary() => any()}.


%% Example:
%% list_vpc_origins_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_vpc_origins_request() :: #{binary() => any()}.


%% Example:
%% invalidation() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvalidationBatch">> => invalidation_batch(),
%%   <<"Status">> => string()
%% }
-type invalidation() :: #{binary() => any()}.


%% Example:
%% cookie_preference() :: #{
%%   <<"Forward">> => list(any()),
%%   <<"WhitelistedNames">> => cookie_names()
%% }
-type cookie_preference() :: #{binary() => any()}.


%% Example:
%% update_key_group_request() :: #{
%%   <<"IfMatch">> => string(),
%%   <<"KeyGroupConfig">> := key_group_config()
%% }
-type update_key_group_request() :: #{binary() => any()}.


%% Example:
%% distribution_tenant_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectionGroupId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Customizations">> => customizations(),
%%   <<"DistributionId">> => string(),
%%   <<"Domains">> => list(domain_result()),
%%   <<"ETag">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type distribution_tenant_summary() :: #{binary() => any()}.


%% Example:
%% streaming_distribution_config() :: #{
%%   <<"Aliases">> => aliases(),
%%   <<"CallerReference">> => string(),
%%   <<"Comment">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Logging">> => streaming_logging_config(),
%%   <<"PriceClass">> => list(any()),
%%   <<"S3Origin">> => s3_origin(),
%%   <<"TrustedSigners">> => trusted_signers()
%% }
-type streaming_distribution_config() :: #{binary() => any()}.


%% Example:
%% too_many_field_level_encryption_query_arg_profiles() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_field_level_encryption_query_arg_profiles() :: #{binary() => any()}.


%% Example:
%% active_trusted_key_groups() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Items">> => list(k_g_key_pair_ids()),
%%   <<"Quantity">> => integer()
%% }
-type active_trusted_key_groups() :: #{binary() => any()}.


%% Example:
%% realtime_log_config() :: #{
%%   <<"ARN">> => string(),
%%   <<"EndPoints">> => list(end_point()),
%%   <<"Fields">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"SamplingRate">> => float()
%% }
-type realtime_log_config() :: #{binary() => any()}.

%% Example:
%% get_vpc_origin_request() :: #{}
-type get_vpc_origin_request() :: #{}.

%% Example:
%% get_origin_access_control_config_request() :: #{}
-type get_origin_access_control_config_request() :: #{}.


%% Example:
%% distribution_id_list() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Items">> => list(string()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type distribution_id_list() :: #{binary() => any()}.


%% Example:
%% invalid_location_code() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_location_code() :: #{binary() => any()}.


%% Example:
%% staging_distribution_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type staging_distribution_in_use() :: #{binary() => any()}.


%% Example:
%% connection_group() :: #{
%%   <<"AnycastIpListId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"Ipv6Enabled">> => boolean(),
%%   <<"IsDefault">> => boolean(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RoutingEndpoint">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => tags()
%% }
-type connection_group() :: #{binary() => any()}.


%% Example:
%% origin_request_policy_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type origin_request_policy_in_use() :: #{binary() => any()}.


%% Example:
%% key_group_summary() :: #{
%%   <<"KeyGroup">> => key_group()
%% }
-type key_group_summary() :: #{binary() => any()}.


%% Example:
%% create_monitoring_subscription_request() :: #{
%%   <<"MonitoringSubscription">> := monitoring_subscription()
%% }
-type create_monitoring_subscription_request() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_field_level_encryption_config() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_field_level_encryption_config() :: #{binary() => any()}.


%% Example:
%% content_type_profile_config() :: #{
%%   <<"ContentTypeProfiles">> => content_type_profiles(),
%%   <<"ForwardWhenContentTypeIsUnknown">> => boolean()
%% }
-type content_type_profile_config() :: #{binary() => any()}.


%% Example:
%% response_headers_policy_access_control_allow_headers() :: #{
%%   <<"Items">> => list(string()),
%%   <<"Quantity">> => integer()
%% }
-type response_headers_policy_access_control_allow_headers() :: #{binary() => any()}.


%% Example:
%% custom_origin_config() :: #{
%%   <<"HTTPPort">> => integer(),
%%   <<"HTTPSPort">> => integer(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"OriginKeepaliveTimeout">> => integer(),
%%   <<"OriginProtocolPolicy">> => list(any()),
%%   <<"OriginReadTimeout">> => integer(),
%%   <<"OriginSslProtocols">> => origin_ssl_protocols()
%% }
-type custom_origin_config() :: #{binary() => any()}.


%% Example:
%% create_streaming_distribution_with_tags_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"Location">> => string(),
%%   <<"StreamingDistribution">> => streaming_distribution()
%% }
-type create_streaming_distribution_with_tags_result() :: #{binary() => any()}.


%% Example:
%% get_field_level_encryption_profile_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryptionProfile">> => field_level_encryption_profile()
%% }
-type get_field_level_encryption_profile_result() :: #{binary() => any()}.

%% Example:
%% get_streaming_distribution_request() :: #{}
-type get_streaming_distribution_request() :: #{}.


%% Example:
%% get_realtime_log_config_result() :: #{
%%   <<"RealtimeLogConfig">> => realtime_log_config()
%% }
-type get_realtime_log_config_result() :: #{binary() => any()}.


%% Example:
%% update_distribution_with_staging_config_result() :: #{
%%   <<"Distribution">> => distribution(),
%%   <<"ETag">> => string()
%% }
-type update_distribution_with_staging_config_result() :: #{binary() => any()}.


%% Example:
%% update_field_level_encryption_profile_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FieldLevelEncryptionProfile">> => field_level_encryption_profile()
%% }
-type update_field_level_encryption_profile_result() :: #{binary() => any()}.


%% Example:
%% too_many_distributions_associated_to_origin_access_control() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_distributions_associated_to_origin_access_control() :: #{binary() => any()}.


%% Example:
%% update_function_result() :: #{
%%   <<"ETag">> => string(),
%%   <<"FunctionSummary">> => function_summary()
%% }
-type update_function_result() :: #{binary() => any()}.

-type associate_alias_errors() ::
    no_such_distribution() | 
    too_many_distribution_cnames() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update().

-type associate_distribution_tenant_web_acl_errors() ::
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type associate_distribution_web_acl_errors() ::
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type copy_distribution_errors() ::
    too_many_distributions_associated_to_origin_access_control() | 
    too_many_distributions_associated_to_field_level_encryption_config() | 
    invalid_location_code() | 
    invalid_response_code() | 
    too_many_distributions() | 
    no_such_realtime_log_config() | 
    invalid_function_association() | 
    illegal_field_level_encryption_config_association_with_cache_behavior() | 
    no_such_origin() | 
    realtime_log_config_owner_mismatch() | 
    no_such_response_headers_policy() | 
    invalid_relative_path() | 
    invalid_viewer_certificate() | 
    too_many_query_string_parameters() | 
    cname_already_exists() | 
    invalid_default_root_object() | 
    too_many_cache_behaviors() | 
    too_many_distributions_associated_to_response_headers_policy() | 
    too_many_lambda_function_associations() | 
    too_many_distributions_with_lambda_associations() | 
    too_many_distributions_with_single_function_arn() | 
    too_many_origins() | 
    distribution_already_exists() | 
    too_many_origin_custom_headers() | 
    invalid_minimum_protocol_version() | 
    too_many_headers_in_forwarded_values() | 
    too_many_key_groups_associated_to_distribution() | 
    invalid_origin_read_timeout() | 
    trusted_signer_does_not_exist() | 
    no_such_cache_policy() | 
    invalid_forward_cookies() | 
    invalid_origin_keepalive_timeout() | 
    invalid_lambda_function_association() | 
    invalid_headers_for_s3_origin() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_distributions_with_function_associations() | 
    invalid_geo_restriction_parameter() | 
    invalid_error_code() | 
    too_many_trusted_signers() | 
    no_such_distribution() | 
    no_such_origin_request_policy() | 
    too_many_distribution_cnames() | 
    precondition_failed() | 
    invalid_required_protocol() | 
    too_many_certificates() | 
    invalid_origin() | 
    invalid_origin_access_control() | 
    no_such_field_level_encryption_config() | 
    invalid_web_acl_id() | 
    invalid_argument() | 
    too_many_cookie_names_in_white_list() | 
    access_denied() | 
    invalid_t_t_l_order() | 
    invalid_protocol_settings() | 
    too_many_distributions_associated_to_key_group() | 
    too_many_distributions_associated_to_origin_request_policy() | 
    invalid_query_string_parameters() | 
    trusted_key_group_does_not_exist() | 
    too_many_distributions_associated_to_cache_policy() | 
    invalid_if_match_version() | 
    invalid_origin_access_identity() | 
    too_many_function_associations() | 
    too_many_origin_groups_per_distribution().

-type create_anycast_ip_list_errors() ::
    entity_limit_exceeded() | 
    unsupported_operation() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging().

-type create_cache_policy_errors() ::
    cache_policy_already_exists() | 
    inconsistent_quantities() | 
    too_many_query_strings_in_cache_policy() | 
    too_many_cache_policies() | 
    too_many_headers_in_cache_policy() | 
    invalid_argument() | 
    access_denied() | 
    too_many_cookies_in_cache_policy().

-type create_cloud_front_origin_access_identity_errors() ::
    too_many_cloud_front_origin_access_identities() | 
    inconsistent_quantities() | 
    missing_body() | 
    invalid_argument() | 
    cloud_front_origin_access_identity_already_exists().

-type create_connection_group_errors() ::
    entity_limit_exceeded() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_tagging().

-type create_continuous_deployment_policy_errors() ::
    staging_distribution_in_use() | 
    inconsistent_quantities() | 
    invalid_argument() | 
    access_denied() | 
    continuous_deployment_policy_already_exists() | 
    too_many_continuous_deployment_policies().

-type create_distribution_errors() ::
    too_many_distributions_associated_to_origin_access_control() | 
    too_many_distributions_associated_to_field_level_encryption_config() | 
    invalid_location_code() | 
    invalid_response_code() | 
    too_many_distributions() | 
    entity_limit_exceeded() | 
    no_such_realtime_log_config() | 
    invalid_function_association() | 
    illegal_field_level_encryption_config_association_with_cache_behavior() | 
    no_such_origin() | 
    realtime_log_config_owner_mismatch() | 
    no_such_response_headers_policy() | 
    invalid_relative_path() | 
    invalid_viewer_certificate() | 
    too_many_query_string_parameters() | 
    cname_already_exists() | 
    invalid_default_root_object() | 
    too_many_cache_behaviors() | 
    too_many_distributions_associated_to_response_headers_policy() | 
    too_many_lambda_function_associations() | 
    too_many_distributions_with_lambda_associations() | 
    too_many_distributions_with_single_function_arn() | 
    too_many_origins() | 
    distribution_already_exists() | 
    too_many_origin_custom_headers() | 
    invalid_minimum_protocol_version() | 
    too_many_headers_in_forwarded_values() | 
    too_many_key_groups_associated_to_distribution() | 
    invalid_domain_name_for_origin_access_control() | 
    invalid_origin_read_timeout() | 
    trusted_signer_does_not_exist() | 
    no_such_cache_policy() | 
    invalid_forward_cookies() | 
    invalid_origin_keepalive_timeout() | 
    invalid_lambda_function_association() | 
    invalid_headers_for_s3_origin() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_distributions_with_function_associations() | 
    continuous_deployment_policy_in_use() | 
    invalid_geo_restriction_parameter() | 
    invalid_error_code() | 
    too_many_trusted_signers() | 
    no_such_origin_request_policy() | 
    too_many_distribution_cnames() | 
    invalid_required_protocol() | 
    too_many_certificates() | 
    invalid_origin() | 
    invalid_origin_access_control() | 
    no_such_field_level_encryption_config() | 
    invalid_web_acl_id() | 
    invalid_argument() | 
    too_many_cookie_names_in_white_list() | 
    access_denied() | 
    invalid_t_t_l_order() | 
    entity_not_found() | 
    invalid_protocol_settings() | 
    too_many_distributions_associated_to_key_group() | 
    too_many_distributions_associated_to_origin_request_policy() | 
    invalid_query_string_parameters() | 
    trusted_key_group_does_not_exist() | 
    too_many_distributions_associated_to_cache_policy() | 
    illegal_origin_access_configuration() | 
    no_such_continuous_deployment_policy() | 
    invalid_origin_access_identity() | 
    too_many_function_associations() | 
    too_many_origin_groups_per_distribution().

-type create_distribution_tenant_errors() ::
    entity_limit_exceeded() | 
    cname_already_exists() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_tagging() | 
    invalid_association().

-type create_distribution_with_tags_errors() ::
    too_many_distributions_associated_to_origin_access_control() | 
    too_many_distributions_associated_to_field_level_encryption_config() | 
    invalid_location_code() | 
    invalid_response_code() | 
    too_many_distributions() | 
    no_such_realtime_log_config() | 
    invalid_function_association() | 
    illegal_field_level_encryption_config_association_with_cache_behavior() | 
    no_such_origin() | 
    realtime_log_config_owner_mismatch() | 
    no_such_response_headers_policy() | 
    invalid_relative_path() | 
    invalid_viewer_certificate() | 
    too_many_query_string_parameters() | 
    cname_already_exists() | 
    invalid_default_root_object() | 
    too_many_cache_behaviors() | 
    too_many_distributions_associated_to_response_headers_policy() | 
    too_many_lambda_function_associations() | 
    too_many_distributions_with_lambda_associations() | 
    too_many_distributions_with_single_function_arn() | 
    too_many_origins() | 
    distribution_already_exists() | 
    too_many_origin_custom_headers() | 
    invalid_minimum_protocol_version() | 
    too_many_headers_in_forwarded_values() | 
    too_many_key_groups_associated_to_distribution() | 
    invalid_domain_name_for_origin_access_control() | 
    invalid_origin_read_timeout() | 
    trusted_signer_does_not_exist() | 
    no_such_cache_policy() | 
    invalid_forward_cookies() | 
    invalid_origin_keepalive_timeout() | 
    invalid_lambda_function_association() | 
    invalid_headers_for_s3_origin() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_distributions_with_function_associations() | 
    continuous_deployment_policy_in_use() | 
    invalid_geo_restriction_parameter() | 
    invalid_error_code() | 
    too_many_trusted_signers() | 
    no_such_origin_request_policy() | 
    too_many_distribution_cnames() | 
    invalid_required_protocol() | 
    too_many_certificates() | 
    invalid_origin() | 
    invalid_origin_access_control() | 
    no_such_field_level_encryption_config() | 
    invalid_web_acl_id() | 
    invalid_argument() | 
    too_many_cookie_names_in_white_list() | 
    access_denied() | 
    invalid_t_t_l_order() | 
    entity_not_found() | 
    invalid_protocol_settings() | 
    invalid_tagging() | 
    too_many_distributions_associated_to_key_group() | 
    too_many_distributions_associated_to_origin_request_policy() | 
    invalid_query_string_parameters() | 
    trusted_key_group_does_not_exist() | 
    too_many_distributions_associated_to_cache_policy() | 
    illegal_origin_access_configuration() | 
    no_such_continuous_deployment_policy() | 
    invalid_origin_access_identity() | 
    too_many_function_associations() | 
    too_many_origin_groups_per_distribution().

-type create_field_level_encryption_config_errors() ::
    too_many_field_level_encryption_query_arg_profiles() | 
    no_such_field_level_encryption_profile() | 
    too_many_field_level_encryption_configs() | 
    inconsistent_quantities() | 
    field_level_encryption_config_already_exists() | 
    invalid_argument() | 
    too_many_field_level_encryption_content_type_profiles() | 
    query_arg_profile_empty().

-type create_field_level_encryption_profile_errors() ::
    no_such_public_key() | 
    too_many_field_level_encryption_field_patterns() | 
    field_level_encryption_profile_size_exceeded() | 
    too_many_field_level_encryption_encryption_entities() | 
    too_many_field_level_encryption_profiles() | 
    inconsistent_quantities() | 
    invalid_argument() | 
    field_level_encryption_profile_already_exists().

-type create_function_errors() ::
    function_already_exists() | 
    unsupported_operation() | 
    function_size_limit_exceeded() | 
    invalid_argument() | 
    too_many_functions().

-type create_invalidation_errors() ::
    inconsistent_quantities() | 
    missing_body() | 
    no_such_distribution() | 
    batch_too_large() | 
    invalid_argument() | 
    access_denied() | 
    too_many_invalidations_in_progress().

-type create_invalidation_for_distribution_tenant_errors() ::
    inconsistent_quantities() | 
    missing_body() | 
    batch_too_large() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    too_many_invalidations_in_progress().

-type create_key_group_errors() ::
    too_many_key_groups() | 
    too_many_public_keys_in_key_group() | 
    key_group_already_exists() | 
    invalid_argument().

-type create_key_value_store_errors() ::
    entity_limit_exceeded() | 
    unsupported_operation() | 
    entity_size_limit_exceeded() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied().

-type create_monitoring_subscription_errors() ::
    monitoring_subscription_already_exists() | 
    no_such_distribution() | 
    unsupported_operation() | 
    access_denied().

-type create_origin_access_control_errors() ::
    origin_access_control_already_exists() | 
    invalid_argument() | 
    too_many_origin_access_controls().

-type create_origin_request_policy_errors() ::
    too_many_headers_in_origin_request_policy() | 
    too_many_origin_request_policies() | 
    inconsistent_quantities() | 
    origin_request_policy_already_exists() | 
    too_many_query_strings_in_origin_request_policy() | 
    too_many_cookies_in_origin_request_policy() | 
    invalid_argument() | 
    access_denied().

-type create_public_key_errors() ::
    too_many_public_keys() | 
    invalid_argument() | 
    public_key_already_exists().

-type create_realtime_log_config_errors() ::
    too_many_realtime_log_configs() | 
    realtime_log_config_already_exists() | 
    invalid_argument() | 
    access_denied().

-type create_response_headers_policy_errors() ::
    too_many_remove_headers_in_response_headers_policy() | 
    inconsistent_quantities() | 
    response_headers_policy_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    too_long_c_s_p_in_response_headers_policy() | 
    too_many_response_headers_policies() | 
    too_many_custom_headers_in_response_headers_policy().

-type create_streaming_distribution_errors() ::
    cname_already_exists() | 
    streaming_distribution_already_exists() | 
    too_many_streaming_distribution_cnames() | 
    too_many_streaming_distributions() | 
    trusted_signer_does_not_exist() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_trusted_signers() | 
    invalid_origin() | 
    invalid_origin_access_control() | 
    invalid_argument() | 
    access_denied() | 
    invalid_origin_access_identity().

-type create_streaming_distribution_with_tags_errors() ::
    cname_already_exists() | 
    streaming_distribution_already_exists() | 
    too_many_streaming_distribution_cnames() | 
    too_many_streaming_distributions() | 
    trusted_signer_does_not_exist() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_trusted_signers() | 
    invalid_origin() | 
    invalid_origin_access_control() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging() | 
    invalid_origin_access_identity().

-type create_vpc_origin_errors() ::
    entity_limit_exceeded() | 
    inconsistent_quantities() | 
    unsupported_operation() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging().

-type delete_anycast_ip_list_errors() ::
    illegal_delete() | 
    cannot_delete_entity_while_in_use() | 
    precondition_failed() | 
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type delete_cache_policy_errors() ::
    illegal_delete() | 
    cache_policy_in_use() | 
    no_such_cache_policy() | 
    precondition_failed() | 
    access_denied() | 
    invalid_if_match_version().

-type delete_cloud_front_origin_access_identity_errors() ::
    precondition_failed() | 
    no_such_cloud_front_origin_access_identity() | 
    access_denied() | 
    cloud_front_origin_access_identity_in_use() | 
    invalid_if_match_version().

-type delete_connection_group_errors() ::
    resource_not_disabled() | 
    cannot_delete_entity_while_in_use() | 
    precondition_failed() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type delete_continuous_deployment_policy_errors() ::
    continuous_deployment_policy_in_use() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    invalid_if_match_version() | 
    no_such_continuous_deployment_policy().

-type delete_distribution_errors() ::
    no_such_distribution() | 
    precondition_failed() | 
    access_denied() | 
    resource_in_use() | 
    invalid_if_match_version() | 
    distribution_not_disabled().

-type delete_distribution_tenant_errors() ::
    resource_not_disabled() | 
    precondition_failed() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type delete_field_level_encryption_config_errors() ::
    precondition_failed() | 
    no_such_field_level_encryption_config() | 
    access_denied() | 
    field_level_encryption_config_in_use() | 
    invalid_if_match_version().

-type delete_field_level_encryption_profile_errors() ::
    no_such_field_level_encryption_profile() | 
    precondition_failed() | 
    field_level_encryption_profile_in_use() | 
    access_denied() | 
    invalid_if_match_version().

-type delete_function_errors() ::
    function_in_use() | 
    no_such_function_exists() | 
    precondition_failed() | 
    unsupported_operation() | 
    invalid_if_match_version().

-type delete_key_group_errors() ::
    no_such_resource() | 
    precondition_failed() | 
    resource_in_use() | 
    invalid_if_match_version().

-type delete_key_value_store_errors() ::
    cannot_delete_entity_while_in_use() | 
    precondition_failed() | 
    unsupported_operation() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type delete_monitoring_subscription_errors() ::
    no_such_monitoring_subscription() | 
    no_such_distribution() | 
    unsupported_operation() | 
    access_denied().

-type delete_origin_access_control_errors() ::
    no_such_origin_access_control() | 
    precondition_failed() | 
    origin_access_control_in_use() | 
    access_denied() | 
    invalid_if_match_version().

-type delete_origin_request_policy_errors() ::
    origin_request_policy_in_use() | 
    illegal_delete() | 
    no_such_origin_request_policy() | 
    precondition_failed() | 
    access_denied() | 
    invalid_if_match_version().

-type delete_public_key_errors() ::
    no_such_public_key() | 
    public_key_in_use() | 
    precondition_failed() | 
    access_denied() | 
    invalid_if_match_version().

-type delete_realtime_log_config_errors() ::
    no_such_realtime_log_config() | 
    realtime_log_config_in_use() | 
    invalid_argument() | 
    access_denied().

-type delete_response_headers_policy_errors() ::
    no_such_response_headers_policy() | 
    illegal_delete() | 
    precondition_failed() | 
    access_denied() | 
    invalid_if_match_version() | 
    response_headers_policy_in_use().

-type delete_streaming_distribution_errors() ::
    no_such_streaming_distribution() | 
    precondition_failed() | 
    access_denied() | 
    invalid_if_match_version() | 
    streaming_distribution_not_disabled().

-type delete_vpc_origin_errors() ::
    illegal_delete() | 
    cannot_delete_entity_while_in_use() | 
    precondition_failed() | 
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type describe_function_errors() ::
    no_such_function_exists() | 
    unsupported_operation().

-type describe_key_value_store_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type disassociate_distribution_tenant_web_acl_errors() ::
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type disassociate_distribution_web_acl_errors() ::
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type get_anycast_ip_list_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type get_cache_policy_errors() ::
    no_such_cache_policy() | 
    access_denied().

-type get_cache_policy_config_errors() ::
    no_such_cache_policy() | 
    access_denied().

-type get_cloud_front_origin_access_identity_errors() ::
    no_such_cloud_front_origin_access_identity() | 
    access_denied().

-type get_cloud_front_origin_access_identity_config_errors() ::
    no_such_cloud_front_origin_access_identity() | 
    access_denied().

-type get_connection_group_errors() ::
    access_denied() | 
    entity_not_found().

-type get_connection_group_by_routing_endpoint_errors() ::
    access_denied() | 
    entity_not_found().

-type get_continuous_deployment_policy_errors() ::
    access_denied() | 
    no_such_continuous_deployment_policy().

-type get_continuous_deployment_policy_config_errors() ::
    access_denied() | 
    no_such_continuous_deployment_policy().

-type get_distribution_errors() ::
    no_such_distribution() | 
    access_denied().

-type get_distribution_config_errors() ::
    no_such_distribution() | 
    access_denied().

-type get_distribution_tenant_errors() ::
    access_denied() | 
    entity_not_found().

-type get_distribution_tenant_by_domain_errors() ::
    access_denied() | 
    entity_not_found().

-type get_field_level_encryption_errors() ::
    no_such_field_level_encryption_config() | 
    access_denied().

-type get_field_level_encryption_config_errors() ::
    no_such_field_level_encryption_config() | 
    access_denied().

-type get_field_level_encryption_profile_errors() ::
    no_such_field_level_encryption_profile() | 
    access_denied().

-type get_field_level_encryption_profile_config_errors() ::
    no_such_field_level_encryption_profile() | 
    access_denied().

-type get_function_errors() ::
    no_such_function_exists() | 
    unsupported_operation().

-type get_invalidation_errors() ::
    no_such_invalidation() | 
    no_such_distribution() | 
    access_denied().

-type get_invalidation_for_distribution_tenant_errors() ::
    no_such_invalidation() | 
    access_denied() | 
    entity_not_found().

-type get_key_group_errors() ::
    no_such_resource().

-type get_key_group_config_errors() ::
    no_such_resource().

-type get_managed_certificate_details_errors() ::
    access_denied() | 
    entity_not_found().

-type get_monitoring_subscription_errors() ::
    no_such_monitoring_subscription() | 
    no_such_distribution() | 
    unsupported_operation() | 
    access_denied().

-type get_origin_access_control_errors() ::
    no_such_origin_access_control() | 
    access_denied().

-type get_origin_access_control_config_errors() ::
    no_such_origin_access_control() | 
    access_denied().

-type get_origin_request_policy_errors() ::
    no_such_origin_request_policy() | 
    access_denied().

-type get_origin_request_policy_config_errors() ::
    no_such_origin_request_policy() | 
    access_denied().

-type get_public_key_errors() ::
    no_such_public_key() | 
    access_denied().

-type get_public_key_config_errors() ::
    no_such_public_key() | 
    access_denied().

-type get_realtime_log_config_errors() ::
    no_such_realtime_log_config() | 
    invalid_argument() | 
    access_denied().

-type get_response_headers_policy_errors() ::
    no_such_response_headers_policy() | 
    access_denied().

-type get_response_headers_policy_config_errors() ::
    no_such_response_headers_policy() | 
    access_denied().

-type get_streaming_distribution_errors() ::
    no_such_streaming_distribution() | 
    access_denied().

-type get_streaming_distribution_config_errors() ::
    no_such_streaming_distribution() | 
    access_denied().

-type get_vpc_origin_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_anycast_ip_lists_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_cache_policies_errors() ::
    no_such_cache_policy() | 
    invalid_argument() | 
    access_denied().

-type list_cloud_front_origin_access_identities_errors() ::
    invalid_argument().

-type list_conflicting_aliases_errors() ::
    no_such_distribution() | 
    invalid_argument().

-type list_connection_groups_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_continuous_deployment_policies_errors() ::
    invalid_argument() | 
    access_denied() | 
    no_such_continuous_deployment_policy().

-type list_distribution_tenants_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_distribution_tenants_by_customization_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_distributions_errors() ::
    invalid_argument().

-type list_distributions_by_anycast_ip_list_id_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_distributions_by_cache_policy_id_errors() ::
    no_such_cache_policy() | 
    invalid_argument() | 
    access_denied().

-type list_distributions_by_connection_mode_errors() ::
    invalid_argument() | 
    access_denied().

-type list_distributions_by_key_group_errors() ::
    no_such_resource() | 
    invalid_argument().

-type list_distributions_by_origin_request_policy_id_errors() ::
    no_such_origin_request_policy() | 
    invalid_argument() | 
    access_denied().

-type list_distributions_by_realtime_log_config_errors() ::
    invalid_argument().

-type list_distributions_by_response_headers_policy_id_errors() ::
    no_such_response_headers_policy() | 
    invalid_argument() | 
    access_denied().

-type list_distributions_by_vpc_origin_id_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_distributions_by_web_acl_id_errors() ::
    invalid_web_acl_id() | 
    invalid_argument().

-type list_domain_conflicts_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_field_level_encryption_configs_errors() ::
    invalid_argument().

-type list_field_level_encryption_profiles_errors() ::
    invalid_argument().

-type list_functions_errors() ::
    unsupported_operation() | 
    invalid_argument().

-type list_invalidations_errors() ::
    no_such_distribution() | 
    invalid_argument() | 
    access_denied().

-type list_invalidations_for_distribution_tenant_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type list_key_groups_errors() ::
    invalid_argument().

-type list_key_value_stores_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied().

-type list_origin_access_controls_errors() ::
    invalid_argument().

-type list_origin_request_policies_errors() ::
    no_such_origin_request_policy() | 
    invalid_argument() | 
    access_denied().

-type list_public_keys_errors() ::
    invalid_argument().

-type list_realtime_log_configs_errors() ::
    no_such_realtime_log_config() | 
    invalid_argument() | 
    access_denied().

-type list_response_headers_policies_errors() ::
    no_such_response_headers_policy() | 
    invalid_argument() | 
    access_denied().

-type list_streaming_distributions_errors() ::
    invalid_argument().

-type list_tags_for_resource_errors() ::
    no_such_resource() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging().

-type list_vpc_origins_errors() ::
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

-type publish_function_errors() ::
    no_such_function_exists() | 
    precondition_failed() | 
    unsupported_operation() | 
    invalid_argument() | 
    invalid_if_match_version().

-type tag_resource_errors() ::
    no_such_resource() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging().

-type test_function_errors() ::
    test_function_failed() | 
    no_such_function_exists() | 
    unsupported_operation() | 
    invalid_argument() | 
    invalid_if_match_version().

-type untag_resource_errors() ::
    no_such_resource() | 
    invalid_argument() | 
    access_denied() | 
    invalid_tagging().

-type update_cache_policy_errors() ::
    cache_policy_already_exists() | 
    no_such_cache_policy() | 
    inconsistent_quantities() | 
    too_many_query_strings_in_cache_policy() | 
    precondition_failed() | 
    too_many_headers_in_cache_policy() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version() | 
    too_many_cookies_in_cache_policy().

-type update_cloud_front_origin_access_identity_errors() ::
    inconsistent_quantities() | 
    missing_body() | 
    precondition_failed() | 
    no_such_cloud_front_origin_access_identity() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version().

-type update_connection_group_errors() ::
    entity_limit_exceeded() | 
    precondition_failed() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    resource_in_use() | 
    entity_not_found() | 
    invalid_if_match_version().

-type update_continuous_deployment_policy_errors() ::
    staging_distribution_in_use() | 
    inconsistent_quantities() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    invalid_if_match_version() | 
    no_such_continuous_deployment_policy().

-type update_distribution_errors() ::
    too_many_distributions_associated_to_origin_access_control() | 
    too_many_distributions_associated_to_field_level_encryption_config() | 
    staging_distribution_in_use() | 
    invalid_location_code() | 
    invalid_response_code() | 
    no_such_realtime_log_config() | 
    invalid_function_association() | 
    illegal_field_level_encryption_config_association_with_cache_behavior() | 
    no_such_origin() | 
    realtime_log_config_owner_mismatch() | 
    no_such_response_headers_policy() | 
    invalid_relative_path() | 
    invalid_viewer_certificate() | 
    too_many_query_string_parameters() | 
    cname_already_exists() | 
    invalid_default_root_object() | 
    too_many_cache_behaviors() | 
    too_many_distributions_associated_to_response_headers_policy() | 
    too_many_lambda_function_associations() | 
    too_many_distributions_with_lambda_associations() | 
    too_many_distributions_with_single_function_arn() | 
    too_many_origins() | 
    too_many_origin_custom_headers() | 
    invalid_minimum_protocol_version() | 
    too_many_headers_in_forwarded_values() | 
    too_many_key_groups_associated_to_distribution() | 
    invalid_domain_name_for_origin_access_control() | 
    invalid_origin_read_timeout() | 
    trusted_signer_does_not_exist() | 
    no_such_cache_policy() | 
    invalid_forward_cookies() | 
    invalid_origin_keepalive_timeout() | 
    invalid_lambda_function_association() | 
    invalid_headers_for_s3_origin() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_distributions_with_function_associations() | 
    continuous_deployment_policy_in_use() | 
    invalid_geo_restriction_parameter() | 
    invalid_error_code() | 
    too_many_trusted_signers() | 
    no_such_distribution() | 
    no_such_origin_request_policy() | 
    too_many_distribution_cnames() | 
    precondition_failed() | 
    invalid_required_protocol() | 
    too_many_certificates() | 
    invalid_origin_access_control() | 
    no_such_field_level_encryption_config() | 
    invalid_web_acl_id() | 
    invalid_argument() | 
    too_many_cookie_names_in_white_list() | 
    access_denied() | 
    invalid_t_t_l_order() | 
    illegal_update() | 
    entity_not_found() | 
    too_many_distributions_associated_to_key_group() | 
    too_many_distributions_associated_to_origin_request_policy() | 
    invalid_query_string_parameters() | 
    trusted_key_group_does_not_exist() | 
    too_many_distributions_associated_to_cache_policy() | 
    invalid_if_match_version() | 
    illegal_origin_access_configuration() | 
    no_such_continuous_deployment_policy() | 
    invalid_origin_access_identity() | 
    too_many_function_associations() | 
    too_many_origin_groups_per_distribution().

-type update_distribution_tenant_errors() ::
    entity_limit_exceeded() | 
    cname_already_exists() | 
    precondition_failed() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version() | 
    invalid_association().

-type update_distribution_with_staging_config_errors() ::
    too_many_distributions_associated_to_origin_access_control() | 
    too_many_distributions_associated_to_field_level_encryption_config() | 
    invalid_location_code() | 
    invalid_response_code() | 
    no_such_realtime_log_config() | 
    invalid_function_association() | 
    illegal_field_level_encryption_config_association_with_cache_behavior() | 
    no_such_origin() | 
    realtime_log_config_owner_mismatch() | 
    no_such_response_headers_policy() | 
    invalid_relative_path() | 
    invalid_viewer_certificate() | 
    too_many_query_string_parameters() | 
    cname_already_exists() | 
    invalid_default_root_object() | 
    too_many_cache_behaviors() | 
    too_many_distributions_associated_to_response_headers_policy() | 
    too_many_lambda_function_associations() | 
    too_many_distributions_with_lambda_associations() | 
    too_many_distributions_with_single_function_arn() | 
    too_many_origins() | 
    too_many_origin_custom_headers() | 
    invalid_minimum_protocol_version() | 
    too_many_headers_in_forwarded_values() | 
    too_many_key_groups_associated_to_distribution() | 
    invalid_origin_read_timeout() | 
    trusted_signer_does_not_exist() | 
    no_such_cache_policy() | 
    invalid_forward_cookies() | 
    invalid_origin_keepalive_timeout() | 
    invalid_lambda_function_association() | 
    invalid_headers_for_s3_origin() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_distributions_with_function_associations() | 
    invalid_geo_restriction_parameter() | 
    invalid_error_code() | 
    too_many_trusted_signers() | 
    no_such_distribution() | 
    no_such_origin_request_policy() | 
    too_many_distribution_cnames() | 
    precondition_failed() | 
    invalid_required_protocol() | 
    too_many_certificates() | 
    invalid_origin_access_control() | 
    no_such_field_level_encryption_config() | 
    invalid_web_acl_id() | 
    invalid_argument() | 
    too_many_cookie_names_in_white_list() | 
    access_denied() | 
    invalid_t_t_l_order() | 
    illegal_update() | 
    entity_not_found() | 
    too_many_distributions_associated_to_key_group() | 
    too_many_distributions_associated_to_origin_request_policy() | 
    invalid_query_string_parameters() | 
    trusted_key_group_does_not_exist() | 
    too_many_distributions_associated_to_cache_policy() | 
    invalid_if_match_version() | 
    invalid_origin_access_identity() | 
    too_many_function_associations() | 
    too_many_origin_groups_per_distribution().

-type update_domain_association_errors() ::
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    entity_not_found() | 
    invalid_if_match_version().

-type update_field_level_encryption_config_errors() ::
    too_many_field_level_encryption_query_arg_profiles() | 
    no_such_field_level_encryption_profile() | 
    inconsistent_quantities() | 
    precondition_failed() | 
    no_such_field_level_encryption_config() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    too_many_field_level_encryption_content_type_profiles() | 
    invalid_if_match_version() | 
    query_arg_profile_empty().

-type update_field_level_encryption_profile_errors() ::
    no_such_public_key() | 
    no_such_field_level_encryption_profile() | 
    too_many_field_level_encryption_field_patterns() | 
    field_level_encryption_profile_size_exceeded() | 
    too_many_field_level_encryption_encryption_entities() | 
    inconsistent_quantities() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    field_level_encryption_profile_already_exists() | 
    illegal_update() | 
    invalid_if_match_version().

-type update_function_errors() ::
    no_such_function_exists() | 
    precondition_failed() | 
    unsupported_operation() | 
    function_size_limit_exceeded() | 
    invalid_argument() | 
    invalid_if_match_version().

-type update_key_group_errors() ::
    too_many_public_keys_in_key_group() | 
    no_such_resource() | 
    precondition_failed() | 
    key_group_already_exists() | 
    invalid_argument() | 
    invalid_if_match_version().

-type update_key_value_store_errors() ::
    precondition_failed() | 
    unsupported_operation() | 
    invalid_argument() | 
    access_denied() | 
    entity_not_found() | 
    invalid_if_match_version().

-type update_origin_access_control_errors() ::
    origin_access_control_already_exists() | 
    no_such_origin_access_control() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version().

-type update_origin_request_policy_errors() ::
    too_many_headers_in_origin_request_policy() | 
    inconsistent_quantities() | 
    origin_request_policy_already_exists() | 
    too_many_query_strings_in_origin_request_policy() | 
    no_such_origin_request_policy() | 
    precondition_failed() | 
    too_many_cookies_in_origin_request_policy() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version().

-type update_public_key_errors() ::
    no_such_public_key() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version() | 
    cannot_change_immutable_public_key_fields().

-type update_realtime_log_config_errors() ::
    no_such_realtime_log_config() | 
    invalid_argument() | 
    access_denied().

-type update_response_headers_policy_errors() ::
    no_such_response_headers_policy() | 
    too_many_remove_headers_in_response_headers_policy() | 
    inconsistent_quantities() | 
    response_headers_policy_already_exists() | 
    precondition_failed() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version() | 
    too_long_c_s_p_in_response_headers_policy() | 
    too_many_custom_headers_in_response_headers_policy().

-type update_streaming_distribution_errors() ::
    cname_already_exists() | 
    too_many_streaming_distribution_cnames() | 
    no_such_streaming_distribution() | 
    trusted_signer_does_not_exist() | 
    inconsistent_quantities() | 
    missing_body() | 
    too_many_trusted_signers() | 
    precondition_failed() | 
    invalid_origin_access_control() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    invalid_if_match_version() | 
    invalid_origin_access_identity().

-type update_vpc_origin_errors() ::
    entity_limit_exceeded() | 
    inconsistent_quantities() | 
    precondition_failed() | 
    unsupported_operation() | 
    entity_already_exists() | 
    invalid_argument() | 
    access_denied() | 
    illegal_update() | 
    entity_not_found() | 
    invalid_if_match_version() | 
    cannot_update_entity_while_in_use().

-type verify_dns_configuration_errors() ::
    invalid_argument() | 
    access_denied() | 
    entity_not_found().

%%====================================================================
%% API
%%====================================================================

%% @doc The `AssociateAlias' API operation only supports standard
%% distributions.
%%
%% To move domains between distribution tenants and/or standard
%% distributions, we recommend that you use the UpdateDomainAssociation:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDomainAssociation.html
%% API operation instead.
%%
%% Associates an alias with a CloudFront standard distribution. An alias is
%% commonly known as a custom domain or vanity domain. It can also be called
%% a CNAME or alternate domain name.
%%
%% With this operation, you can move an alias that's already used for a
%% standard distribution to a different standard distribution. This prevents
%% the downtime that could occur if you first remove the alias from one
%% standard distribution and then separately add the alias to another
%% standard distribution.
%%
%% To use this operation, specify the alias and the ID of the target standard
%% distribution.
%%
%% For more information, including how to set up the target standard
%% distribution, prerequisites that you must complete, and other
%% restrictions, see Moving an alternate domain name to a different standard
%% distribution or distribution tenant:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
-spec associate_alias(aws_client:aws_client(), binary() | list(), associate_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_alias_errors(), tuple()}.
associate_alias(Client, TargetDistributionId, Input) ->
    associate_alias(Client, TargetDistributionId, Input, []).

-spec associate_alias(aws_client:aws_client(), binary() | list(), associate_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_alias_errors(), tuple()}.
associate_alias(Client, TargetDistributionId, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(TargetDistributionId), "/associate-alias"],
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
                     {<<"Alias">>, <<"Alias">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the WAF web ACL with a distribution tenant.
-spec associate_distribution_tenant_web_acl(aws_client:aws_client(), binary() | list(), associate_distribution_tenant_web_acl_request()) ->
    {ok, associate_distribution_tenant_web_acl_result(), tuple()} |
    {error, any()} |
    {error, associate_distribution_tenant_web_acl_errors(), tuple()}.
associate_distribution_tenant_web_acl(Client, Id, Input) ->
    associate_distribution_tenant_web_acl(Client, Id, Input, []).

-spec associate_distribution_tenant_web_acl(aws_client:aws_client(), binary() | list(), associate_distribution_tenant_web_acl_request(), proplists:proplist()) ->
    {ok, associate_distribution_tenant_web_acl_result(), tuple()} |
    {error, any()} |
    {error, associate_distribution_tenant_web_acl_errors(), tuple()}.
associate_distribution_tenant_web_acl(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), "/associate-web-acl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Associates the WAF web ACL with a distribution.
-spec associate_distribution_web_acl(aws_client:aws_client(), binary() | list(), associate_distribution_web_acl_request()) ->
    {ok, associate_distribution_web_acl_result(), tuple()} |
    {error, any()} |
    {error, associate_distribution_web_acl_errors(), tuple()}.
associate_distribution_web_acl(Client, Id, Input) ->
    associate_distribution_web_acl(Client, Id, Input, []).

-spec associate_distribution_web_acl(aws_client:aws_client(), binary() | list(), associate_distribution_web_acl_request(), proplists:proplist()) ->
    {ok, associate_distribution_web_acl_result(), tuple()} |
    {error, any()} |
    {error, associate_distribution_web_acl_errors(), tuple()}.
associate_distribution_web_acl(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/associate-web-acl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a staging distribution using the configuration of the
%% provided primary distribution.
%%
%% A staging distribution is a copy of an existing distribution (called the
%% primary distribution) that you can use in a continuous deployment
%% workflow.
%%
%% After you create a staging distribution, you can use
%% `UpdateDistribution' to modify the staging distribution's
%% configuration. Then you can use `CreateContinuousDeploymentPolicy' to
%% incrementally move traffic to the staging distribution.
%%
%% This API operation requires the following IAM permissions:
%%
%% GetDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
%%
%% CreateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
%%
%% CopyDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html
-spec copy_distribution(aws_client:aws_client(), binary() | list(), copy_distribution_request()) ->
    {ok, copy_distribution_result(), tuple()} |
    {error, any()} |
    {error, copy_distribution_errors(), tuple()}.
copy_distribution(Client, PrimaryDistributionId, Input) ->
    copy_distribution(Client, PrimaryDistributionId, Input, []).

-spec copy_distribution(aws_client:aws_client(), binary() | list(), copy_distribution_request(), proplists:proplist()) ->
    {ok, copy_distribution_result(), tuple()} |
    {error, any()} |
    {error, copy_distribution_errors(), tuple()}.
copy_distribution(Client, PrimaryDistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(PrimaryDistributionId), "/copy"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>},
                       {<<"Staging">>, <<"Staging">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates an Anycast static IP list.
-spec create_anycast_ip_list(aws_client:aws_client(), create_anycast_ip_list_request()) ->
    {ok, create_anycast_ip_list_result(), tuple()} |
    {error, any()} |
    {error, create_anycast_ip_list_errors(), tuple()}.
create_anycast_ip_list(Client, Input) ->
    create_anycast_ip_list(Client, Input, []).

-spec create_anycast_ip_list(aws_client:aws_client(), create_anycast_ip_list_request(), proplists:proplist()) ->
    {ok, create_anycast_ip_list_result(), tuple()} |
    {error, any()} |
    {error, create_anycast_ip_list_errors(), tuple()}.
create_anycast_ip_list(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/anycast-ip-list"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a cache policy.
%%
%% After you create a cache policy, you can attach it to one or more cache
%% behaviors. When it's attached to a cache behavior, the cache policy
%% determines the following:
%%
%% The values that CloudFront includes in the cache key. These values can
%% include HTTP headers, cookies, and URL query strings. CloudFront uses the
%% cache key to find an object in its cache that it can return to the viewer.
%%
%% The default, minimum, and maximum time to live (TTL) values that you want
%% objects to stay in the CloudFront cache.
%%
%% If your minimum TTL is greater than 0, CloudFront will cache content for
%% at least the duration specified in the cache policy's minimum TTL,
%% even if the `Cache-Control: no-cache', `no-store', or
%% `private' directives are present in the origin headers.
%%
%% The headers, cookies, and query strings that are included in the cache key
%% are also included in requests that CloudFront sends to the origin.
%% CloudFront sends a request when it can't find an object in its cache
%% that matches the request's cache key. If you want to send values to
%% the origin but not include them in the cache key, use
%% `OriginRequestPolicy'.
%%
%% For more information about cache policies, see Controlling the cache key:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html
%% in the Amazon CloudFront Developer Guide.
-spec create_cache_policy(aws_client:aws_client(), create_cache_policy_request()) ->
    {ok, create_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, create_cache_policy_errors(), tuple()}.
create_cache_policy(Client, Input) ->
    create_cache_policy(Client, Input, []).

-spec create_cache_policy(aws_client:aws_client(), create_cache_policy_request(), proplists:proplist()) ->
    {ok, create_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, create_cache_policy_errors(), tuple()}.
create_cache_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/cache-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new origin access identity.
%%
%% If you're using Amazon S3 for your origin, you can use an origin
%% access identity to require users to access your content using a CloudFront
%% URL instead of the Amazon S3 URL. For more information about how to use
%% origin access identities, see Serving Private Content through CloudFront:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
%% in the Amazon CloudFront Developer Guide.
-spec create_cloud_front_origin_access_identity(aws_client:aws_client(), create_cloud_front_origin_access_identity_request()) ->
    {ok, create_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, create_cloud_front_origin_access_identity_errors(), tuple()}.
create_cloud_front_origin_access_identity(Client, Input) ->
    create_cloud_front_origin_access_identity(Client, Input, []).

-spec create_cloud_front_origin_access_identity(aws_client:aws_client(), create_cloud_front_origin_access_identity_request(), proplists:proplist()) ->
    {ok, create_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, create_cloud_front_origin_access_identity_errors(), tuple()}.
create_cloud_front_origin_access_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a connection group.
-spec create_connection_group(aws_client:aws_client(), create_connection_group_request()) ->
    {ok, create_connection_group_result(), tuple()} |
    {error, any()} |
    {error, create_connection_group_errors(), tuple()}.
create_connection_group(Client, Input) ->
    create_connection_group(Client, Input, []).

-spec create_connection_group(aws_client:aws_client(), create_connection_group_request(), proplists:proplist()) ->
    {ok, create_connection_group_result(), tuple()} |
    {error, any()} |
    {error, create_connection_group_errors(), tuple()}.
create_connection_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/connection-group"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a continuous deployment policy that distributes traffic for a
%% custom domain name to two different CloudFront distributions.
%%
%% To use a continuous deployment policy, first use `CopyDistribution' to
%% create a staging distribution, then use `UpdateDistribution' to modify
%% the staging distribution's configuration.
%%
%% After you create and update a staging distribution, you can use a
%% continuous deployment policy to incrementally move traffic to the staging
%% distribution. This workflow enables you to test changes to a
%% distribution's configuration before moving all of your domain's
%% production traffic to the new configuration.
-spec create_continuous_deployment_policy(aws_client:aws_client(), create_continuous_deployment_policy_request()) ->
    {ok, create_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, create_continuous_deployment_policy_errors(), tuple()}.
create_continuous_deployment_policy(Client, Input) ->
    create_continuous_deployment_policy(Client, Input, []).

-spec create_continuous_deployment_policy(aws_client:aws_client(), create_continuous_deployment_policy_request(), proplists:proplist()) ->
    {ok, create_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, create_continuous_deployment_policy_errors(), tuple()}.
create_continuous_deployment_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/continuous-deployment-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a CloudFront distribution.
-spec create_distribution(aws_client:aws_client(), create_distribution_request()) ->
    {ok, create_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_errors(), tuple()}.
create_distribution(Client, Input) ->
    create_distribution(Client, Input, []).

-spec create_distribution(aws_client:aws_client(), create_distribution_request(), proplists:proplist()) ->
    {ok, create_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_errors(), tuple()}.
create_distribution(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a distribution tenant.
-spec create_distribution_tenant(aws_client:aws_client(), create_distribution_tenant_request()) ->
    {ok, create_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_tenant_errors(), tuple()}.
create_distribution_tenant(Client, Input) ->
    create_distribution_tenant(Client, Input, []).

-spec create_distribution_tenant(aws_client:aws_client(), create_distribution_tenant_request(), proplists:proplist()) ->
    {ok, create_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_tenant_errors(), tuple()}.
create_distribution_tenant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution-tenant"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Create a new distribution with tags.
%%
%% This API operation requires the following IAM permissions:
%%
%% CreateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
%%
%% TagResource:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html
-spec create_distribution_with_tags(aws_client:aws_client(), create_distribution_with_tags_request()) ->
    {ok, create_distribution_with_tags_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_with_tags_errors(), tuple()}.
create_distribution_with_tags(Client, Input) ->
    create_distribution_with_tags(Client, Input, []).

-spec create_distribution_with_tags(aws_client:aws_client(), create_distribution_with_tags_request(), proplists:proplist()) ->
    {ok, create_distribution_with_tags_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_with_tags_errors(), tuple()}.
create_distribution_with_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution?WithTags"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Create a new field-level encryption configuration.
-spec create_field_level_encryption_config(aws_client:aws_client(), create_field_level_encryption_config_request()) ->
    {ok, create_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, create_field_level_encryption_config_errors(), tuple()}.
create_field_level_encryption_config(Client, Input) ->
    create_field_level_encryption_config(Client, Input, []).

-spec create_field_level_encryption_config(aws_client:aws_client(), create_field_level_encryption_config_request(), proplists:proplist()) ->
    {ok, create_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, create_field_level_encryption_config_errors(), tuple()}.
create_field_level_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Create a field-level encryption profile.
-spec create_field_level_encryption_profile(aws_client:aws_client(), create_field_level_encryption_profile_request()) ->
    {ok, create_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, create_field_level_encryption_profile_errors(), tuple()}.
create_field_level_encryption_profile(Client, Input) ->
    create_field_level_encryption_profile(Client, Input, []).

-spec create_field_level_encryption_profile(aws_client:aws_client(), create_field_level_encryption_profile_request(), proplists:proplist()) ->
    {ok, create_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, create_field_level_encryption_profile_errors(), tuple()}.
create_field_level_encryption_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption-profile"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a CloudFront function.
%%
%% To create a function, you provide the function code and some configuration
%% information about the function. The response contains an Amazon Resource
%% Name (ARN) that uniquely identifies the function.
%%
%% When you create a function, it's in the `DEVELOPMENT' stage. In
%% this stage, you can test the function with `TestFunction', and update
%% it with `UpdateFunction'.
%%
%% When you're ready to use your function with a CloudFront distribution,
%% use `PublishFunction' to copy the function from the `DEVELOPMENT'
%% stage to `LIVE'. When it's live, you can attach the function to a
%% distribution's cache behavior, using the function's ARN.
-spec create_function(aws_client:aws_client(), create_function_request()) ->
    {ok, create_function_result(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, Input) ->
    create_function(Client, Input, []).

-spec create_function(aws_client:aws_client(), create_function_request(), proplists:proplist()) ->
    {ok, create_function_result(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Create a new invalidation.
%%
%% For more information, see Invalidating files:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html
%% in the Amazon CloudFront Developer Guide.
-spec create_invalidation(aws_client:aws_client(), binary() | list(), create_invalidation_request()) ->
    {ok, create_invalidation_result(), tuple()} |
    {error, any()} |
    {error, create_invalidation_errors(), tuple()}.
create_invalidation(Client, DistributionId, Input) ->
    create_invalidation(Client, DistributionId, Input, []).

-spec create_invalidation(aws_client:aws_client(), binary() | list(), create_invalidation_request(), proplists:proplist()) ->
    {ok, create_invalidation_result(), tuple()} |
    {error, any()} |
    {error, create_invalidation_errors(), tuple()}.
create_invalidation(Client, DistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates an invalidation for a distribution tenant.
%%
%% For more information, see Invalidating files:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html
%% in the Amazon CloudFront Developer Guide.
-spec create_invalidation_for_distribution_tenant(aws_client:aws_client(), binary() | list(), create_invalidation_for_distribution_tenant_request()) ->
    {ok, create_invalidation_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, create_invalidation_for_distribution_tenant_errors(), tuple()}.
create_invalidation_for_distribution_tenant(Client, Id, Input) ->
    create_invalidation_for_distribution_tenant(Client, Id, Input, []).

-spec create_invalidation_for_distribution_tenant(aws_client:aws_client(), binary() | list(), create_invalidation_for_distribution_tenant_request(), proplists:proplist()) ->
    {ok, create_invalidation_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, create_invalidation_for_distribution_tenant_errors(), tuple()}.
create_invalidation_for_distribution_tenant(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), "/invalidation"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a key group that you can use with CloudFront signed URLs and
%% signed cookies:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html.
%%
%% To create a key group, you must specify at least one public key for the
%% key group. After you create a key group, you can reference it from one or
%% more cache behaviors. When you reference a key group in a cache behavior,
%% CloudFront requires signed URLs or signed cookies for all requests that
%% match the cache behavior. The URLs or cookies must be signed with a
%% private key whose corresponding public key is in the key group. The signed
%% URL or cookie contains information about which public key CloudFront
%% should use to verify the signature. For more information, see Serving
%% private content:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
%% in the Amazon CloudFront Developer Guide.
-spec create_key_group(aws_client:aws_client(), create_key_group_request()) ->
    {ok, create_key_group_result(), tuple()} |
    {error, any()} |
    {error, create_key_group_errors(), tuple()}.
create_key_group(Client, Input) ->
    create_key_group(Client, Input, []).

-spec create_key_group(aws_client:aws_client(), create_key_group_request(), proplists:proplist()) ->
    {ok, create_key_group_result(), tuple()} |
    {error, any()} |
    {error, create_key_group_errors(), tuple()}.
create_key_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/key-group"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Specifies the key value store resource to add to your account.
%%
%% In your account, the key value store names must be unique. You can also
%% import key value store data in JSON format from an S3 bucket by providing
%% a valid `ImportSource' that you own.
-spec create_key_value_store(aws_client:aws_client(), create_key_value_store_request()) ->
    {ok, create_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, create_key_value_store_errors(), tuple()}.
create_key_value_store(Client, Input) ->
    create_key_value_store(Client, Input, []).

-spec create_key_value_store(aws_client:aws_client(), create_key_value_store_request(), proplists:proplist()) ->
    {ok, create_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, create_key_value_store_errors(), tuple()}.
create_key_value_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/key-value-store"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Enables or disables additional Amazon CloudWatch metrics for the
%% specified CloudFront distribution.
%%
%% The additional metrics incur an additional cost.
%%
%% For more information, see Viewing additional CloudFront distribution
%% metrics:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional
%% in the Amazon CloudFront Developer Guide.
-spec create_monitoring_subscription(aws_client:aws_client(), binary() | list(), create_monitoring_subscription_request()) ->
    {ok, create_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_monitoring_subscription_errors(), tuple()}.
create_monitoring_subscription(Client, DistributionId, Input) ->
    create_monitoring_subscription(Client, DistributionId, Input, []).

-spec create_monitoring_subscription(aws_client:aws_client(), binary() | list(), create_monitoring_subscription_request(), proplists:proplist()) ->
    {ok, create_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_monitoring_subscription_errors(), tuple()}.
create_monitoring_subscription(Client, DistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
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

%% @doc Creates a new origin access control in CloudFront.
%%
%% After you create an origin access control, you can add it to an origin in
%% a CloudFront distribution so that CloudFront sends authenticated (signed)
%% requests to the origin.
%%
%% This makes it possible to block public access to the origin, allowing
%% viewers (users) to access the origin's content only through
%% CloudFront.
%%
%% For more information about using a CloudFront origin access control, see
%% Restricting access to an Amazon Web Services origin:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html
%% in the Amazon CloudFront Developer Guide.
-spec create_origin_access_control(aws_client:aws_client(), create_origin_access_control_request()) ->
    {ok, create_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, create_origin_access_control_errors(), tuple()}.
create_origin_access_control(Client, Input) ->
    create_origin_access_control(Client, Input, []).

-spec create_origin_access_control(aws_client:aws_client(), create_origin_access_control_request(), proplists:proplist()) ->
    {ok, create_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, create_origin_access_control_errors(), tuple()}.
create_origin_access_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-control"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates an origin request policy.
%%
%% After you create an origin request policy, you can attach it to one or
%% more cache behaviors. When it's attached to a cache behavior, the
%% origin request policy determines the values that CloudFront includes in
%% requests that it sends to the origin. Each request that CloudFront sends
%% to the origin includes the following:
%%
%% The request body and the URL path (without the domain name) from the
%% viewer request.
%%
%% The headers that CloudFront automatically includes in every origin
%% request, including `Host', `User-Agent', and `X-Amz-Cf-Id'.
%%
%% All HTTP headers, cookies, and URL query strings that are specified in the
%% cache policy or the origin request policy. These can include items from
%% the viewer request and, in the case of headers, additional ones that are
%% added by CloudFront.
%%
%% CloudFront sends a request when it can't find a valid object in its
%% cache that matches the request. If you want to send values to the origin
%% and also include them in the cache key, use `CachePolicy'.
%%
%% For more information about origin request policies, see Controlling origin
%% requests:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html
%% in the Amazon CloudFront Developer Guide.
-spec create_origin_request_policy(aws_client:aws_client(), create_origin_request_policy_request()) ->
    {ok, create_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, create_origin_request_policy_errors(), tuple()}.
create_origin_request_policy(Client, Input) ->
    create_origin_request_policy(Client, Input, []).

-spec create_origin_request_policy(aws_client:aws_client(), create_origin_request_policy_request(), proplists:proplist()) ->
    {ok, create_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, create_origin_request_policy_errors(), tuple()}.
create_origin_request_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-request-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Uploads a public key to CloudFront that you can use with signed URLs
%% and signed cookies:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html,
%% or with field-level encryption:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html.
-spec create_public_key(aws_client:aws_client(), create_public_key_request()) ->
    {ok, create_public_key_result(), tuple()} |
    {error, any()} |
    {error, create_public_key_errors(), tuple()}.
create_public_key(Client, Input) ->
    create_public_key(Client, Input, []).

-spec create_public_key(aws_client:aws_client(), create_public_key_request(), proplists:proplist()) ->
    {ok, create_public_key_result(), tuple()} |
    {error, any()} |
    {error, create_public_key_errors(), tuple()}.
create_public_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/public-key"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a real-time log configuration.
%%
%% After you create a real-time log configuration, you can attach it to one
%% or more cache behaviors to send real-time log data to the specified Amazon
%% Kinesis data stream.
%%
%% For more information about real-time log configurations, see Real-time
%% logs:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html
%% in the Amazon CloudFront Developer Guide.
-spec create_realtime_log_config(aws_client:aws_client(), create_realtime_log_config_request()) ->
    {ok, create_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, create_realtime_log_config_errors(), tuple()}.
create_realtime_log_config(Client, Input) ->
    create_realtime_log_config(Client, Input, []).

-spec create_realtime_log_config(aws_client:aws_client(), create_realtime_log_config_request(), proplists:proplist()) ->
    {ok, create_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, create_realtime_log_config_errors(), tuple()}.
create_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/realtime-log-config"],
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

%% @doc Creates a response headers policy.
%%
%% A response headers policy contains information about a set of HTTP
%% headers. To create a response headers policy, you provide some metadata
%% about the policy and a set of configurations that specify the headers.
%%
%% After you create a response headers policy, you can use its ID to attach
%% it to one or more cache behaviors in a CloudFront distribution. When
%% it's attached to a cache behavior, the response headers policy affects
%% the HTTP headers that CloudFront includes in HTTP responses to requests
%% that match the cache behavior. CloudFront adds or removes response headers
%% according to the configuration of the response headers policy.
%%
%% For more information, see Adding or removing HTTP headers in CloudFront
%% responses:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html
%% in the Amazon CloudFront Developer Guide.
-spec create_response_headers_policy(aws_client:aws_client(), create_response_headers_policy_request()) ->
    {ok, create_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, create_response_headers_policy_errors(), tuple()}.
create_response_headers_policy(Client, Input) ->
    create_response_headers_policy(Client, Input, []).

-spec create_response_headers_policy(aws_client:aws_client(), create_response_headers_policy_request(), proplists:proplist()) ->
    {ok, create_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, create_response_headers_policy_errors(), tuple()}.
create_response_headers_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/response-headers-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This API is deprecated.
%%
%% Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
%% distributions on December 31, 2020. For more information, read the
%% announcement: http://forums.aws.amazon.com/ann.jspa?annID=7356 on the
%% Amazon CloudFront discussion forum.
-spec create_streaming_distribution(aws_client:aws_client(), create_streaming_distribution_request()) ->
    {ok, create_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_distribution_errors(), tuple()}.
create_streaming_distribution(Client, Input) ->
    create_streaming_distribution(Client, Input, []).

-spec create_streaming_distribution(aws_client:aws_client(), create_streaming_distribution_request(), proplists:proplist()) ->
    {ok, create_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_distribution_errors(), tuple()}.
create_streaming_distribution(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This API is deprecated.
%%
%% Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
%% distributions on December 31, 2020. For more information, read the
%% announcement: http://forums.aws.amazon.com/ann.jspa?annID=7356 on the
%% Amazon CloudFront discussion forum.
-spec create_streaming_distribution_with_tags(aws_client:aws_client(), create_streaming_distribution_with_tags_request()) ->
    {ok, create_streaming_distribution_with_tags_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_distribution_with_tags_errors(), tuple()}.
create_streaming_distribution_with_tags(Client, Input) ->
    create_streaming_distribution_with_tags(Client, Input, []).

-spec create_streaming_distribution_with_tags(aws_client:aws_client(), create_streaming_distribution_with_tags_request(), proplists:proplist()) ->
    {ok, create_streaming_distribution_with_tags_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_distribution_with_tags_errors(), tuple()}.
create_streaming_distribution_with_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution?WithTags"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Create an Amazon CloudFront VPC origin.
-spec create_vpc_origin(aws_client:aws_client(), create_vpc_origin_request()) ->
    {ok, create_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, create_vpc_origin_errors(), tuple()}.
create_vpc_origin(Client, Input) ->
    create_vpc_origin(Client, Input, []).

-spec create_vpc_origin(aws_client:aws_client(), create_vpc_origin_request(), proplists:proplist()) ->
    {ok, create_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, create_vpc_origin_errors(), tuple()}.
create_vpc_origin(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/vpc-origin"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Deletes an Anycast static IP list.
-spec delete_anycast_ip_list(aws_client:aws_client(), binary() | list(), delete_anycast_ip_list_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_anycast_ip_list_errors(), tuple()}.
delete_anycast_ip_list(Client, Id, Input) ->
    delete_anycast_ip_list(Client, Id, Input, []).

-spec delete_anycast_ip_list(aws_client:aws_client(), binary() | list(), delete_anycast_ip_list_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_anycast_ip_list_errors(), tuple()}.
delete_anycast_ip_list(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/anycast-ip-list/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a cache policy.
%%
%% You cannot delete a cache policy if it's attached to a cache behavior.
%% First update your distributions to remove the cache policy from all cache
%% behaviors, then delete the cache policy.
%%
%% To delete a cache policy, you must provide the policy's identifier and
%% version. To get these values, you can use `ListCachePolicies' or
%% `GetCachePolicy'.
-spec delete_cache_policy(aws_client:aws_client(), binary() | list(), delete_cache_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_policy_errors(), tuple()}.
delete_cache_policy(Client, Id, Input) ->
    delete_cache_policy(Client, Id, Input, []).

-spec delete_cache_policy(aws_client:aws_client(), binary() | list(), delete_cache_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_policy_errors(), tuple()}.
delete_cache_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an origin access identity.
-spec delete_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), delete_cloud_front_origin_access_identity_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_front_origin_access_identity_errors(), tuple()}.
delete_cloud_front_origin_access_identity(Client, Id, Input) ->
    delete_cloud_front_origin_access_identity(Client, Id, Input, []).

-spec delete_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), delete_cloud_front_origin_access_identity_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_front_origin_access_identity_errors(), tuple()}.
delete_cloud_front_origin_access_identity(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a connection group.
-spec delete_connection_group(aws_client:aws_client(), binary() | list(), delete_connection_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connection_group_errors(), tuple()}.
delete_connection_group(Client, Id, Input) ->
    delete_connection_group(Client, Id, Input, []).

-spec delete_connection_group(aws_client:aws_client(), binary() | list(), delete_connection_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connection_group_errors(), tuple()}.
delete_connection_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/connection-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a continuous deployment policy.
%%
%% You cannot delete a continuous deployment policy that's attached to a
%% primary distribution. First update your distribution to remove the
%% continuous deployment policy, then you can delete the policy.
-spec delete_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), delete_continuous_deployment_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_continuous_deployment_policy_errors(), tuple()}.
delete_continuous_deployment_policy(Client, Id, Input) ->
    delete_continuous_deployment_policy(Client, Id, Input, []).

-spec delete_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), delete_continuous_deployment_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_continuous_deployment_policy_errors(), tuple()}.
delete_continuous_deployment_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a distribution.
-spec delete_distribution(aws_client:aws_client(), binary() | list(), delete_distribution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_distribution_errors(), tuple()}.
delete_distribution(Client, Id, Input) ->
    delete_distribution(Client, Id, Input, []).

-spec delete_distribution(aws_client:aws_client(), binary() | list(), delete_distribution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_distribution_errors(), tuple()}.
delete_distribution(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a distribution tenant.
%%
%% If you use this API operation to delete a distribution tenant that is
%% currently enabled, the request will fail.
%%
%% To delete a distribution tenant, you must first disable the distribution
%% tenant by using the `UpdateDistributionTenant' API operation.
-spec delete_distribution_tenant(aws_client:aws_client(), binary() | list(), delete_distribution_tenant_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_distribution_tenant_errors(), tuple()}.
delete_distribution_tenant(Client, Id, Input) ->
    delete_distribution_tenant(Client, Id, Input, []).

-spec delete_distribution_tenant(aws_client:aws_client(), binary() | list(), delete_distribution_tenant_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_distribution_tenant_errors(), tuple()}.
delete_distribution_tenant(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption configuration.
-spec delete_field_level_encryption_config(aws_client:aws_client(), binary() | list(), delete_field_level_encryption_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_field_level_encryption_config_errors(), tuple()}.
delete_field_level_encryption_config(Client, Id, Input) ->
    delete_field_level_encryption_config(Client, Id, Input, []).

-spec delete_field_level_encryption_config(aws_client:aws_client(), binary() | list(), delete_field_level_encryption_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_field_level_encryption_config_errors(), tuple()}.
delete_field_level_encryption_config(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption profile.
-spec delete_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), delete_field_level_encryption_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_field_level_encryption_profile_errors(), tuple()}.
delete_field_level_encryption_profile(Client, Id, Input) ->
    delete_field_level_encryption_profile(Client, Id, Input, []).

-spec delete_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), delete_field_level_encryption_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_field_level_encryption_profile_errors(), tuple()}.
delete_field_level_encryption_profile(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CloudFront function.
%%
%% You cannot delete a function if it's associated with a cache behavior.
%% First, update your distributions to remove the function association from
%% all cache behaviors, then delete the function.
%%
%% To delete a function, you must provide the function's name and version
%% (`ETag' value). To get these values, you can use `ListFunctions'
%% and `DescribeFunction'.
-spec delete_function(aws_client:aws_client(), binary() | list(), delete_function_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, Name, Input) ->
    delete_function(Client, Name, Input, []).

-spec delete_function(aws_client:aws_client(), binary() | list(), delete_function_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a key group.
%%
%% You cannot delete a key group that is referenced in a cache behavior.
%% First update your distributions to remove the key group from all cache
%% behaviors, then delete the key group.
%%
%% To delete a key group, you must provide the key group's identifier and
%% version. To get these values, use `ListKeyGroups' followed by
%% `GetKeyGroup' or `GetKeyGroupConfig'.
-spec delete_key_group(aws_client:aws_client(), binary() | list(), delete_key_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_key_group_errors(), tuple()}.
delete_key_group(Client, Id, Input) ->
    delete_key_group(Client, Id, Input, []).

-spec delete_key_group(aws_client:aws_client(), binary() | list(), delete_key_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_key_group_errors(), tuple()}.
delete_key_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specifies the key value store to delete.
-spec delete_key_value_store(aws_client:aws_client(), binary() | list(), delete_key_value_store_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_key_value_store_errors(), tuple()}.
delete_key_value_store(Client, Name, Input) ->
    delete_key_value_store(Client, Name, Input, []).

-spec delete_key_value_store(aws_client:aws_client(), binary() | list(), delete_key_value_store_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_key_value_store_errors(), tuple()}.
delete_key_value_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables additional CloudWatch metrics for the specified CloudFront
%% distribution.
-spec delete_monitoring_subscription(aws_client:aws_client(), binary() | list(), delete_monitoring_subscription_request()) ->
    {ok, delete_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_monitoring_subscription_errors(), tuple()}.
delete_monitoring_subscription(Client, DistributionId, Input) ->
    delete_monitoring_subscription(Client, DistributionId, Input, []).

-spec delete_monitoring_subscription(aws_client:aws_client(), binary() | list(), delete_monitoring_subscription_request(), proplists:proplist()) ->
    {ok, delete_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_monitoring_subscription_errors(), tuple()}.
delete_monitoring_subscription(Client, DistributionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
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

%% @doc Deletes a CloudFront origin access control.
%%
%% You cannot delete an origin access control if it's in use. First,
%% update all distributions to remove the origin access control from all
%% origins, then delete the origin access control.
-spec delete_origin_access_control(aws_client:aws_client(), binary() | list(), delete_origin_access_control_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_origin_access_control_errors(), tuple()}.
delete_origin_access_control(Client, Id, Input) ->
    delete_origin_access_control(Client, Id, Input, []).

-spec delete_origin_access_control(aws_client:aws_client(), binary() | list(), delete_origin_access_control_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_origin_access_control_errors(), tuple()}.
delete_origin_access_control(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an origin request policy.
%%
%% You cannot delete an origin request policy if it's attached to any
%% cache behaviors. First update your distributions to remove the origin
%% request policy from all cache behaviors, then delete the origin request
%% policy.
%%
%% To delete an origin request policy, you must provide the policy's
%% identifier and version. To get the identifier, you can use
%% `ListOriginRequestPolicies' or `GetOriginRequestPolicy'.
-spec delete_origin_request_policy(aws_client:aws_client(), binary() | list(), delete_origin_request_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_origin_request_policy_errors(), tuple()}.
delete_origin_request_policy(Client, Id, Input) ->
    delete_origin_request_policy(Client, Id, Input, []).

-spec delete_origin_request_policy(aws_client:aws_client(), binary() | list(), delete_origin_request_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_origin_request_policy_errors(), tuple()}.
delete_origin_request_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a public key you previously added to CloudFront.
-spec delete_public_key(aws_client:aws_client(), binary() | list(), delete_public_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_public_key_errors(), tuple()}.
delete_public_key(Client, Id, Input) ->
    delete_public_key(Client, Id, Input, []).

-spec delete_public_key(aws_client:aws_client(), binary() | list(), delete_public_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_public_key_errors(), tuple()}.
delete_public_key(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a real-time log configuration.
%%
%% You cannot delete a real-time log configuration if it's attached to a
%% cache behavior. First update your distributions to remove the real-time
%% log configuration from all cache behaviors, then delete the real-time log
%% configuration.
%%
%% To delete a real-time log configuration, you can provide the
%% configuration's name or its Amazon Resource Name (ARN). You must
%% provide at least one. If you provide both, CloudFront uses the name to
%% identify the real-time log configuration to delete.
-spec delete_realtime_log_config(aws_client:aws_client(), delete_realtime_log_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_realtime_log_config_errors(), tuple()}.
delete_realtime_log_config(Client, Input) ->
    delete_realtime_log_config(Client, Input, []).

-spec delete_realtime_log_config(aws_client:aws_client(), delete_realtime_log_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_realtime_log_config_errors(), tuple()}.
delete_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/delete-realtime-log-config"],
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

%% @doc Deletes a response headers policy.
%%
%% You cannot delete a response headers policy if it's attached to a
%% cache behavior. First update your distributions to remove the response
%% headers policy from all cache behaviors, then delete the response headers
%% policy.
%%
%% To delete a response headers policy, you must provide the policy's
%% identifier and version. To get these values, you can use
%% `ListResponseHeadersPolicies' or `GetResponseHeadersPolicy'.
-spec delete_response_headers_policy(aws_client:aws_client(), binary() | list(), delete_response_headers_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_response_headers_policy_errors(), tuple()}.
delete_response_headers_policy(Client, Id, Input) ->
    delete_response_headers_policy(Client, Id, Input, []).

-spec delete_response_headers_policy(aws_client:aws_client(), binary() | list(), delete_response_headers_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_response_headers_policy_errors(), tuple()}.
delete_response_headers_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a streaming distribution.
%%
%% To delete an RTMP distribution using the CloudFront API, perform the
%% following steps.
%%
%% To delete an RTMP distribution using the CloudFront API:
%%
%% Disable the RTMP distribution.
%%
%% Submit a `GET Streaming Distribution Config' request to get the
%% current configuration and the `Etag' header for the distribution.
%%
%% Update the XML document that was returned in the response to your `GET
%% Streaming Distribution Config' request to change the value of
%% `Enabled' to `false'.
%%
%% Submit a `PUT Streaming Distribution Config' request to update the
%% configuration for your distribution. In the request body, include the XML
%% document that you updated in Step 3. Then set the value of the HTTP
%% `If-Match' header to the value of the `ETag' header that
%% CloudFront returned when you submitted the `GET Streaming Distribution
%% Config' request in Step 2.
%%
%% Review the response to the `PUT Streaming Distribution Config' request
%% to confirm that the distribution was successfully disabled.
%%
%% Submit a `GET Streaming Distribution Config' request to confirm that
%% your changes have propagated. When propagation is complete, the value of
%% `Status' is `Deployed'.
%%
%% Submit a `DELETE Streaming Distribution' request. Set the value of the
%% HTTP `If-Match' header to the value of the `ETag' header that
%% CloudFront returned when you submitted the `GET Streaming Distribution
%% Config' request in Step 2.
%%
%% Review the response to your `DELETE Streaming Distribution' request to
%% confirm that the distribution was successfully deleted.
%%
%% For information about deleting a distribution using the CloudFront
%% console, see Deleting a Distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
%% in the Amazon CloudFront Developer Guide.
-spec delete_streaming_distribution(aws_client:aws_client(), binary() | list(), delete_streaming_distribution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_streaming_distribution_errors(), tuple()}.
delete_streaming_distribution(Client, Id, Input) ->
    delete_streaming_distribution(Client, Id, Input, []).

-spec delete_streaming_distribution(aws_client:aws_client(), binary() | list(), delete_streaming_distribution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_streaming_distribution_errors(), tuple()}.
delete_streaming_distribution(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an Amazon CloudFront VPC origin.
-spec delete_vpc_origin(aws_client:aws_client(), binary() | list(), delete_vpc_origin_request()) ->
    {ok, delete_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, delete_vpc_origin_errors(), tuple()}.
delete_vpc_origin(Client, Id, Input) ->
    delete_vpc_origin(Client, Id, Input, []).

-spec delete_vpc_origin(aws_client:aws_client(), binary() | list(), delete_vpc_origin_request(), proplists:proplist()) ->
    {ok, delete_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, delete_vpc_origin_errors(), tuple()}.
delete_vpc_origin(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/vpc-origin/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets configuration information and metadata about a CloudFront
%% function, but not the function's code.
%%
%% To get a function's code, use `GetFunction'.
%%
%% To get configuration information and metadata about a function, you must
%% provide the function's name and stage. To get these values, you can
%% use `ListFunctions'.
-spec describe_function(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_function_result(), tuple()} |
    {error, any()} |
    {error, describe_function_errors(), tuple()}.
describe_function(Client, Name)
  when is_map(Client) ->
    describe_function(Client, Name, #{}, #{}).

-spec describe_function(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_function_result(), tuple()} |
    {error, any()} |
    {error, describe_function_errors(), tuple()}.
describe_function(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_function(Client, Name, QueryMap, HeadersMap, []).

-spec describe_function(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_function_result(), tuple()} |
    {error, any()} |
    {error, describe_function_errors(), tuple()}.
describe_function(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/describe"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Specifies the key value store and its configuration.
-spec describe_key_value_store(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, Name)
  when is_map(Client) ->
    describe_key_value_store(Client, Name, #{}, #{}).

-spec describe_key_value_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key_value_store(Client, Name, QueryMap, HeadersMap, []).

-spec describe_key_value_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Disassociates a distribution tenant from the WAF web ACL.
-spec disassociate_distribution_tenant_web_acl(aws_client:aws_client(), binary() | list(), disassociate_distribution_tenant_web_acl_request()) ->
    {ok, disassociate_distribution_tenant_web_acl_result(), tuple()} |
    {error, any()} |
    {error, disassociate_distribution_tenant_web_acl_errors(), tuple()}.
disassociate_distribution_tenant_web_acl(Client, Id, Input) ->
    disassociate_distribution_tenant_web_acl(Client, Id, Input, []).

-spec disassociate_distribution_tenant_web_acl(aws_client:aws_client(), binary() | list(), disassociate_distribution_tenant_web_acl_request(), proplists:proplist()) ->
    {ok, disassociate_distribution_tenant_web_acl_result(), tuple()} |
    {error, any()} |
    {error, disassociate_distribution_tenant_web_acl_errors(), tuple()}.
disassociate_distribution_tenant_web_acl(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), "/disassociate-web-acl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Disassociates a distribution from the WAF web ACL.
-spec disassociate_distribution_web_acl(aws_client:aws_client(), binary() | list(), disassociate_distribution_web_acl_request()) ->
    {ok, disassociate_distribution_web_acl_result(), tuple()} |
    {error, any()} |
    {error, disassociate_distribution_web_acl_errors(), tuple()}.
disassociate_distribution_web_acl(Client, Id, Input) ->
    disassociate_distribution_web_acl(Client, Id, Input, []).

-spec disassociate_distribution_web_acl(aws_client:aws_client(), binary() | list(), disassociate_distribution_web_acl_request(), proplists:proplist()) ->
    {ok, disassociate_distribution_web_acl_result(), tuple()} |
    {error, any()} |
    {error, disassociate_distribution_web_acl_errors(), tuple()}.
disassociate_distribution_web_acl(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/disassociate-web-acl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets an Anycast static IP list.
-spec get_anycast_ip_list(aws_client:aws_client(), binary() | list()) ->
    {ok, get_anycast_ip_list_result(), tuple()} |
    {error, any()} |
    {error, get_anycast_ip_list_errors(), tuple()}.
get_anycast_ip_list(Client, Id)
  when is_map(Client) ->
    get_anycast_ip_list(Client, Id, #{}, #{}).

-spec get_anycast_ip_list(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_anycast_ip_list_result(), tuple()} |
    {error, any()} |
    {error, get_anycast_ip_list_errors(), tuple()}.
get_anycast_ip_list(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_anycast_ip_list(Client, Id, QueryMap, HeadersMap, []).

-spec get_anycast_ip_list(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_anycast_ip_list_result(), tuple()} |
    {error, any()} |
    {error, get_anycast_ip_list_errors(), tuple()}.
get_anycast_ip_list(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/anycast-ip-list/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a cache policy, including the following metadata:
%%
%% The policy's identifier.
%%
%% The date and time when the policy was last modified.
%%
%% To get a cache policy, you must provide the policy's identifier. If
%% the cache policy is attached to a distribution's cache behavior, you
%% can get the policy's identifier using `ListDistributions' or
%% `GetDistribution'. If the cache policy is not attached to a cache
%% behavior, you can get the identifier using `ListCachePolicies'.
-spec get_cache_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_errors(), tuple()}.
get_cache_policy(Client, Id)
  when is_map(Client) ->
    get_cache_policy(Client, Id, #{}, #{}).

-spec get_cache_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_errors(), tuple()}.
get_cache_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cache_policy(Client, Id, QueryMap, HeadersMap, []).

-spec get_cache_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_errors(), tuple()}.
get_cache_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a cache policy configuration.
%%
%% To get a cache policy configuration, you must provide the policy's
%% identifier. If the cache policy is attached to a distribution's cache
%% behavior, you can get the policy's identifier using
%% `ListDistributions' or `GetDistribution'. If the cache policy is
%% not attached to a cache behavior, you can get the identifier using
%% `ListCachePolicies'.
-spec get_cache_policy_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cache_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_config_errors(), tuple()}.
get_cache_policy_config(Client, Id)
  when is_map(Client) ->
    get_cache_policy_config(Client, Id, #{}, #{}).

-spec get_cache_policy_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cache_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_config_errors(), tuple()}.
get_cache_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cache_policy_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_cache_policy_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cache_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_cache_policy_config_errors(), tuple()}.
get_cache_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the information about an origin access identity.
-spec get_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_errors(), tuple()}.
get_cloud_front_origin_access_identity(Client, Id)
  when is_map(Client) ->
    get_cloud_front_origin_access_identity(Client, Id, #{}, #{}).

-spec get_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_errors(), tuple()}.
get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap, []).

-spec get_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_errors(), tuple()}.
get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the configuration information about an origin access identity.
-spec get_cloud_front_origin_access_identity_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cloud_front_origin_access_identity_config_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_config_errors(), tuple()}.
get_cloud_front_origin_access_identity_config(Client, Id)
  when is_map(Client) ->
    get_cloud_front_origin_access_identity_config(Client, Id, #{}, #{}).

-spec get_cloud_front_origin_access_identity_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cloud_front_origin_access_identity_config_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_config_errors(), tuple()}.
get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_cloud_front_origin_access_identity_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cloud_front_origin_access_identity_config_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_front_origin_access_identity_config_errors(), tuple()}.
get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets information about a connection group.
-spec get_connection_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connection_group_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_errors(), tuple()}.
get_connection_group(Client, Identifier)
  when is_map(Client) ->
    get_connection_group(Client, Identifier, #{}, #{}).

-spec get_connection_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connection_group_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_errors(), tuple()}.
get_connection_group(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connection_group(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_connection_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connection_group_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_errors(), tuple()}.
get_connection_group(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/connection-group/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets information about a connection group by using the endpoint that
%% you specify.
-spec get_connection_group_by_routing_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connection_group_by_routing_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_by_routing_endpoint_errors(), tuple()}.
get_connection_group_by_routing_endpoint(Client, RoutingEndpoint)
  when is_map(Client) ->
    get_connection_group_by_routing_endpoint(Client, RoutingEndpoint, #{}, #{}).

-spec get_connection_group_by_routing_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connection_group_by_routing_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_by_routing_endpoint_errors(), tuple()}.
get_connection_group_by_routing_endpoint(Client, RoutingEndpoint, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connection_group_by_routing_endpoint(Client, RoutingEndpoint, QueryMap, HeadersMap, []).

-spec get_connection_group_by_routing_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connection_group_by_routing_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_connection_group_by_routing_endpoint_errors(), tuple()}.
get_connection_group_by_routing_endpoint(Client, RoutingEndpoint, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/connection-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"RoutingEndpoint">>, RoutingEndpoint}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a continuous deployment policy, including metadata (the
%% policy's identifier and the date and time when the policy was last
%% modified).
-spec get_continuous_deployment_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_errors(), tuple()}.
get_continuous_deployment_policy(Client, Id)
  when is_map(Client) ->
    get_continuous_deployment_policy(Client, Id, #{}, #{}).

-spec get_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_errors(), tuple()}.
get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap, []).

-spec get_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_errors(), tuple()}.
get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets configuration information about a continuous deployment policy.
-spec get_continuous_deployment_policy_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_continuous_deployment_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_config_errors(), tuple()}.
get_continuous_deployment_policy_config(Client, Id)
  when is_map(Client) ->
    get_continuous_deployment_policy_config(Client, Id, #{}, #{}).

-spec get_continuous_deployment_policy_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_continuous_deployment_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_config_errors(), tuple()}.
get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_continuous_deployment_policy_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_continuous_deployment_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_continuous_deployment_policy_config_errors(), tuple()}.
get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the information about a distribution.
-spec get_distribution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_errors(), tuple()}.
get_distribution(Client, Id)
  when is_map(Client) ->
    get_distribution(Client, Id, #{}, #{}).

-spec get_distribution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_errors(), tuple()}.
get_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution(Client, Id, QueryMap, HeadersMap, []).

-spec get_distribution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_errors(), tuple()}.
get_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the configuration information about a distribution.
-spec get_distribution_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_config_errors(), tuple()}.
get_distribution_config(Client, Id)
  when is_map(Client) ->
    get_distribution_config(Client, Id, #{}, #{}).

-spec get_distribution_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_config_errors(), tuple()}.
get_distribution_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_distribution_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_config_errors(), tuple()}.
get_distribution_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets information about a distribution tenant.
-spec get_distribution_tenant(aws_client:aws_client(), binary() | list()) ->
    {ok, get_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_errors(), tuple()}.
get_distribution_tenant(Client, Identifier)
  when is_map(Client) ->
    get_distribution_tenant(Client, Identifier, #{}, #{}).

-spec get_distribution_tenant(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_errors(), tuple()}.
get_distribution_tenant(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_tenant(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_distribution_tenant(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_errors(), tuple()}.
get_distribution_tenant(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets information about a distribution tenant by the associated
%% domain.
-spec get_distribution_tenant_by_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, get_distribution_tenant_by_domain_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_by_domain_errors(), tuple()}.
get_distribution_tenant_by_domain(Client, Domain)
  when is_map(Client) ->
    get_distribution_tenant_by_domain(Client, Domain, #{}, #{}).

-spec get_distribution_tenant_by_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_distribution_tenant_by_domain_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_by_domain_errors(), tuple()}.
get_distribution_tenant_by_domain(Client, Domain, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_tenant_by_domain(Client, Domain, QueryMap, HeadersMap, []).

-spec get_distribution_tenant_by_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_distribution_tenant_by_domain_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_tenant_by_domain_errors(), tuple()}.
get_distribution_tenant_by_domain(Client, Domain, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution-tenant"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the field-level encryption configuration information.
-spec get_field_level_encryption(aws_client:aws_client(), binary() | list()) ->
    {ok, get_field_level_encryption_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_errors(), tuple()}.
get_field_level_encryption(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption(Client, Id, #{}, #{}).

-spec get_field_level_encryption(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_field_level_encryption_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_errors(), tuple()}.
get_field_level_encryption(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption(Client, Id, QueryMap, HeadersMap, []).

-spec get_field_level_encryption(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_field_level_encryption_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_errors(), tuple()}.
get_field_level_encryption(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the field-level encryption configuration information.
-spec get_field_level_encryption_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_config_errors(), tuple()}.
get_field_level_encryption_config(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_config(Client, Id, #{}, #{}).

-spec get_field_level_encryption_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_config_errors(), tuple()}.
get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_field_level_encryption_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_config_errors(), tuple()}.
get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the field-level encryption profile information.
-spec get_field_level_encryption_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_errors(), tuple()}.
get_field_level_encryption_profile(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_profile(Client, Id, #{}, #{}).

-spec get_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_errors(), tuple()}.
get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap, []).

-spec get_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_errors(), tuple()}.
get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the field-level encryption profile configuration information.
-spec get_field_level_encryption_profile_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_field_level_encryption_profile_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_config_errors(), tuple()}.
get_field_level_encryption_profile_config(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_profile_config(Client, Id, #{}, #{}).

-spec get_field_level_encryption_profile_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_field_level_encryption_profile_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_config_errors(), tuple()}.
get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_field_level_encryption_profile_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_field_level_encryption_profile_config_result(), tuple()} |
    {error, any()} |
    {error, get_field_level_encryption_profile_config_errors(), tuple()}.
get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets the code of a CloudFront function.
%%
%% To get configuration information and metadata about a function, use
%% `DescribeFunction'.
%%
%% To get a function's code, you must provide the function's name and
%% stage. To get these values, you can use `ListFunctions'.
-spec get_function(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_result(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, Name)
  when is_map(Client) ->
    get_function(Client, Name, #{}, #{}).

-spec get_function(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_result(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, Name, QueryMap, HeadersMap, []).

-spec get_function(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_result(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the information about an invalidation.
-spec get_invalidation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_invalidation_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_errors(), tuple()}.
get_invalidation(Client, DistributionId, Id)
  when is_map(Client) ->
    get_invalidation(Client, DistributionId, Id, #{}, #{}).

-spec get_invalidation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_invalidation_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_errors(), tuple()}.
get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap, []).

-spec get_invalidation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_invalidation_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_errors(), tuple()}.
get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific invalidation for a distribution
%% tenant.
-spec get_invalidation_for_distribution_tenant(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_invalidation_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_for_distribution_tenant_errors(), tuple()}.
get_invalidation_for_distribution_tenant(Client, DistributionTenantId, Id)
  when is_map(Client) ->
    get_invalidation_for_distribution_tenant(Client, DistributionTenantId, Id, #{}, #{}).

-spec get_invalidation_for_distribution_tenant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_invalidation_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_for_distribution_tenant_errors(), tuple()}.
get_invalidation_for_distribution_tenant(Client, DistributionTenantId, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invalidation_for_distribution_tenant(Client, DistributionTenantId, Id, QueryMap, HeadersMap, []).

-spec get_invalidation_for_distribution_tenant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_invalidation_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, get_invalidation_for_distribution_tenant_errors(), tuple()}.
get_invalidation_for_distribution_tenant(Client, DistributionTenantId, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(DistributionTenantId), "/invalidation/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a key group, including the date and time when the key group was
%% last modified.
%%
%% To get a key group, you must provide the key group's identifier. If
%% the key group is referenced in a distribution's cache behavior, you
%% can get the key group's identifier using `ListDistributions' or
%% `GetDistribution'. If the key group is not referenced in a cache
%% behavior, you can get the identifier using `ListKeyGroups'.
-spec get_key_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_key_group_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_errors(), tuple()}.
get_key_group(Client, Id)
  when is_map(Client) ->
    get_key_group(Client, Id, #{}, #{}).

-spec get_key_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_key_group_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_errors(), tuple()}.
get_key_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_key_group(Client, Id, QueryMap, HeadersMap, []).

-spec get_key_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_key_group_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_errors(), tuple()}.
get_key_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a key group configuration.
%%
%% To get a key group configuration, you must provide the key group's
%% identifier. If the key group is referenced in a distribution's cache
%% behavior, you can get the key group's identifier using
%% `ListDistributions' or `GetDistribution'. If the key group is not
%% referenced in a cache behavior, you can get the identifier using
%% `ListKeyGroups'.
-spec get_key_group_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_key_group_config_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_config_errors(), tuple()}.
get_key_group_config(Client, Id)
  when is_map(Client) ->
    get_key_group_config(Client, Id, #{}, #{}).

-spec get_key_group_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_key_group_config_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_config_errors(), tuple()}.
get_key_group_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_key_group_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_key_group_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_key_group_config_result(), tuple()} |
    {error, any()} |
    {error, get_key_group_config_errors(), tuple()}.
get_key_group_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets details about the CloudFront managed ACM certificate.
-spec get_managed_certificate_details(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_certificate_details_result(), tuple()} |
    {error, any()} |
    {error, get_managed_certificate_details_errors(), tuple()}.
get_managed_certificate_details(Client, Identifier)
  when is_map(Client) ->
    get_managed_certificate_details(Client, Identifier, #{}, #{}).

-spec get_managed_certificate_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_certificate_details_result(), tuple()} |
    {error, any()} |
    {error, get_managed_certificate_details_errors(), tuple()}.
get_managed_certificate_details(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_certificate_details(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_managed_certificate_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_certificate_details_result(), tuple()} |
    {error, any()} |
    {error, get_managed_certificate_details_errors(), tuple()}.
get_managed_certificate_details(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/managed-certificate/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about whether additional CloudWatch metrics are
%% enabled for the specified CloudFront distribution.
-spec get_monitoring_subscription(aws_client:aws_client(), binary() | list()) ->
    {ok, get_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, get_monitoring_subscription_errors(), tuple()}.
get_monitoring_subscription(Client, DistributionId)
  when is_map(Client) ->
    get_monitoring_subscription(Client, DistributionId, #{}, #{}).

-spec get_monitoring_subscription(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, get_monitoring_subscription_errors(), tuple()}.
get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap, []).

-spec get_monitoring_subscription(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_monitoring_subscription_result(), tuple()} |
    {error, any()} |
    {error, get_monitoring_subscription_errors(), tuple()}.
get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a CloudFront origin access control, including its unique
%% identifier.
-spec get_origin_access_control(aws_client:aws_client(), binary() | list()) ->
    {ok, get_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_errors(), tuple()}.
get_origin_access_control(Client, Id)
  when is_map(Client) ->
    get_origin_access_control(Client, Id, #{}, #{}).

-spec get_origin_access_control(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_errors(), tuple()}.
get_origin_access_control(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_access_control(Client, Id, QueryMap, HeadersMap, []).

-spec get_origin_access_control(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_errors(), tuple()}.
get_origin_access_control(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a CloudFront origin access control configuration.
-spec get_origin_access_control_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_origin_access_control_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_config_errors(), tuple()}.
get_origin_access_control_config(Client, Id)
  when is_map(Client) ->
    get_origin_access_control_config(Client, Id, #{}, #{}).

-spec get_origin_access_control_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_origin_access_control_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_config_errors(), tuple()}.
get_origin_access_control_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_access_control_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_origin_access_control_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_access_control_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_access_control_config_errors(), tuple()}.
get_origin_access_control_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets an origin request policy, including the following metadata:
%%
%% The policy's identifier.
%%
%% The date and time when the policy was last modified.
%%
%% To get an origin request policy, you must provide the policy's
%% identifier. If the origin request policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the origin
%% request policy is not attached to a cache behavior, you can get the
%% identifier using `ListOriginRequestPolicies'.
-spec get_origin_request_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_errors(), tuple()}.
get_origin_request_policy(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy(Client, Id, #{}, #{}).

-spec get_origin_request_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_errors(), tuple()}.
get_origin_request_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_request_policy(Client, Id, QueryMap, HeadersMap, []).

-spec get_origin_request_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_errors(), tuple()}.
get_origin_request_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets an origin request policy configuration.
%%
%% To get an origin request policy configuration, you must provide the
%% policy's identifier. If the origin request policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the origin
%% request policy is not attached to a cache behavior, you can get the
%% identifier using `ListOriginRequestPolicies'.
-spec get_origin_request_policy_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_origin_request_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_config_errors(), tuple()}.
get_origin_request_policy_config(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy_config(Client, Id, #{}, #{}).

-spec get_origin_request_policy_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_origin_request_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_config_errors(), tuple()}.
get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_origin_request_policy_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_request_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_origin_request_policy_config_errors(), tuple()}.
get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a public key.
-spec get_public_key(aws_client:aws_client(), binary() | list()) ->
    {ok, get_public_key_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_errors(), tuple()}.
get_public_key(Client, Id)
  when is_map(Client) ->
    get_public_key(Client, Id, #{}, #{}).

-spec get_public_key(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_public_key_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_errors(), tuple()}.
get_public_key(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_key(Client, Id, QueryMap, HeadersMap, []).

-spec get_public_key(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_public_key_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_errors(), tuple()}.
get_public_key(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a public key configuration.
-spec get_public_key_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_public_key_config_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_config_errors(), tuple()}.
get_public_key_config(Client, Id)
  when is_map(Client) ->
    get_public_key_config(Client, Id, #{}, #{}).

-spec get_public_key_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_public_key_config_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_config_errors(), tuple()}.
get_public_key_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_key_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_public_key_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_public_key_config_result(), tuple()} |
    {error, any()} |
    {error, get_public_key_config_errors(), tuple()}.
get_public_key_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a real-time log configuration.
%%
%% To get a real-time log configuration, you can provide the
%% configuration's name or its Amazon Resource Name (ARN). You must
%% provide at least one. If you provide both, CloudFront uses the name to
%% identify the real-time log configuration to get.
-spec get_realtime_log_config(aws_client:aws_client(), get_realtime_log_config_request()) ->
    {ok, get_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, get_realtime_log_config_errors(), tuple()}.
get_realtime_log_config(Client, Input) ->
    get_realtime_log_config(Client, Input, []).

-spec get_realtime_log_config(aws_client:aws_client(), get_realtime_log_config_request(), proplists:proplist()) ->
    {ok, get_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, get_realtime_log_config_errors(), tuple()}.
get_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/get-realtime-log-config"],
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

%% @doc Gets a response headers policy, including metadata (the policy's
%% identifier and the date and time when the policy was last modified).
%%
%% To get a response headers policy, you must provide the policy's
%% identifier. If the response headers policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the response
%% headers policy is not attached to a cache behavior, you can get the
%% identifier using `ListResponseHeadersPolicies'.
-spec get_response_headers_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_errors(), tuple()}.
get_response_headers_policy(Client, Id)
  when is_map(Client) ->
    get_response_headers_policy(Client, Id, #{}, #{}).

-spec get_response_headers_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_errors(), tuple()}.
get_response_headers_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_headers_policy(Client, Id, QueryMap, HeadersMap, []).

-spec get_response_headers_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_errors(), tuple()}.
get_response_headers_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a response headers policy configuration.
%%
%% To get a response headers policy configuration, you must provide the
%% policy's identifier. If the response headers policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the response
%% headers policy is not attached to a cache behavior, you can get the
%% identifier using `ListResponseHeadersPolicies'.
-spec get_response_headers_policy_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_response_headers_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_config_errors(), tuple()}.
get_response_headers_policy_config(Client, Id)
  when is_map(Client) ->
    get_response_headers_policy_config(Client, Id, #{}, #{}).

-spec get_response_headers_policy_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_response_headers_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_config_errors(), tuple()}.
get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_response_headers_policy_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_response_headers_policy_config_result(), tuple()} |
    {error, any()} |
    {error, get_response_headers_policy_config_errors(), tuple()}.
get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets information about a specified RTMP distribution, including the
%% distribution configuration.
-spec get_streaming_distribution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_errors(), tuple()}.
get_streaming_distribution(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution(Client, Id, #{}, #{}).

-spec get_streaming_distribution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_errors(), tuple()}.
get_streaming_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_distribution(Client, Id, QueryMap, HeadersMap, []).

-spec get_streaming_distribution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_errors(), tuple()}.
get_streaming_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the configuration information about a streaming distribution.
-spec get_streaming_distribution_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_streaming_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_config_errors(), tuple()}.
get_streaming_distribution_config(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution_config(Client, Id, #{}, #{}).

-spec get_streaming_distribution_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_streaming_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_config_errors(), tuple()}.
get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_streaming_distribution_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_distribution_config_result(), tuple()} |
    {error, any()} |
    {error, get_streaming_distribution_config_errors(), tuple()}.
get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get the details of an Amazon CloudFront VPC origin.
-spec get_vpc_origin(aws_client:aws_client(), binary() | list()) ->
    {ok, get_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, get_vpc_origin_errors(), tuple()}.
get_vpc_origin(Client, Id)
  when is_map(Client) ->
    get_vpc_origin(Client, Id, #{}, #{}).

-spec get_vpc_origin(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, get_vpc_origin_errors(), tuple()}.
get_vpc_origin(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_origin(Client, Id, QueryMap, HeadersMap, []).

-spec get_vpc_origin(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, get_vpc_origin_errors(), tuple()}.
get_vpc_origin(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/vpc-origin/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Lists your Anycast static IP lists.
-spec list_anycast_ip_lists(aws_client:aws_client()) ->
    {ok, list_anycast_ip_lists_result(), tuple()} |
    {error, any()} |
    {error, list_anycast_ip_lists_errors(), tuple()}.
list_anycast_ip_lists(Client)
  when is_map(Client) ->
    list_anycast_ip_lists(Client, #{}, #{}).

-spec list_anycast_ip_lists(aws_client:aws_client(), map(), map()) ->
    {ok, list_anycast_ip_lists_result(), tuple()} |
    {error, any()} |
    {error, list_anycast_ip_lists_errors(), tuple()}.
list_anycast_ip_lists(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_anycast_ip_lists(Client, QueryMap, HeadersMap, []).

-spec list_anycast_ip_lists(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_anycast_ip_lists_result(), tuple()} |
    {error, any()} |
    {error, list_anycast_ip_lists_errors(), tuple()}.
list_anycast_ip_lists(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/anycast-ip-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of cache policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by Amazon Web Services, or only the custom policies created in
%% your Amazon Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_cache_policies(aws_client:aws_client()) ->
    {ok, list_cache_policies_result(), tuple()} |
    {error, any()} |
    {error, list_cache_policies_errors(), tuple()}.
list_cache_policies(Client)
  when is_map(Client) ->
    list_cache_policies(Client, #{}, #{}).

-spec list_cache_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_cache_policies_result(), tuple()} |
    {error, any()} |
    {error, list_cache_policies_errors(), tuple()}.
list_cache_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cache_policies(Client, QueryMap, HeadersMap, []).

-spec list_cache_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cache_policies_result(), tuple()} |
    {error, any()} |
    {error, list_cache_policies_errors(), tuple()}.
list_cache_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists origin access identities.
-spec list_cloud_front_origin_access_identities(aws_client:aws_client()) ->
    {ok, list_cloud_front_origin_access_identities_result(), tuple()} |
    {error, any()} |
    {error, list_cloud_front_origin_access_identities_errors(), tuple()}.
list_cloud_front_origin_access_identities(Client)
  when is_map(Client) ->
    list_cloud_front_origin_access_identities(Client, #{}, #{}).

-spec list_cloud_front_origin_access_identities(aws_client:aws_client(), map(), map()) ->
    {ok, list_cloud_front_origin_access_identities_result(), tuple()} |
    {error, any()} |
    {error, list_cloud_front_origin_access_identities_errors(), tuple()}.
list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap, []).

-spec list_cloud_front_origin_access_identities(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cloud_front_origin_access_identities_result(), tuple()} |
    {error, any()} |
    {error, list_cloud_front_origin_access_identities_errors(), tuple()}.
list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListConflictingAliases' API operation only supports standard
%% distributions.
%%
%% To list domain conflicts for both standard distributions and distribution
%% tenants, we recommend that you use the ListDomainConflicts:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDomainConflicts.html
%% API operation instead.
%%
%% Gets a list of aliases that conflict or overlap with the provided alias,
%% and the associated CloudFront standard distribution and Amazon Web
%% Services accounts for each conflicting alias. An alias is commonly known
%% as a custom domain or vanity domain. It can also be called a CNAME or
%% alternate domain name.
%%
%% In the returned list, the standard distribution and account IDs are
%% partially hidden, which allows you to identify the standard distribution
%% and accounts that you own, and helps to protect the information of ones
%% that you don't own.
%%
%% Use this operation to find aliases that are in use in CloudFront that
%% conflict or overlap with the provided alias. For example, if you provide
%% `www.example.com' as input, the returned list can include
%% `www.example.com' and the overlapping wildcard alternate domain name
%% (`*.example.com'), if they exist. If you provide `*.example.com'
%% as input, the returned list can include `*.example.com' and any
%% alternate domain names covered by that wildcard (for example,
%% `www.example.com', `test.example.com', `dev.example.com', and
%% so on), if they exist.
%%
%% To list conflicting aliases, specify the alias to search and the ID of a
%% standard distribution in your account that has an attached TLS certificate
%% that includes the provided alias. For more information, including how to
%% set up the standard distribution and certificate, see Moving an alternate
%% domain name to a different standard distribution or distribution tenant:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_conflicting_aliases(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_conflicting_aliases_result(), tuple()} |
    {error, any()} |
    {error, list_conflicting_aliases_errors(), tuple()}.
list_conflicting_aliases(Client, Alias, DistributionId)
  when is_map(Client) ->
    list_conflicting_aliases(Client, Alias, DistributionId, #{}, #{}).

-spec list_conflicting_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_conflicting_aliases_result(), tuple()} |
    {error, any()} |
    {error, list_conflicting_aliases_errors(), tuple()}.
list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap, []).

-spec list_conflicting_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_conflicting_aliases_result(), tuple()} |
    {error, any()} |
    {error, list_conflicting_aliases_errors(), tuple()}.
list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/conflicting-alias"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Alias">>, Alias},
        {<<"DistributionId">>, DistributionId},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the connection groups in your Amazon Web Services account.
-spec list_connection_groups(aws_client:aws_client(), list_connection_groups_request()) ->
    {ok, list_connection_groups_result(), tuple()} |
    {error, any()} |
    {error, list_connection_groups_errors(), tuple()}.
list_connection_groups(Client, Input) ->
    list_connection_groups(Client, Input, []).

-spec list_connection_groups(aws_client:aws_client(), list_connection_groups_request(), proplists:proplist()) ->
    {ok, list_connection_groups_result(), tuple()} |
    {error, any()} |
    {error, list_connection_groups_errors(), tuple()}.
list_connection_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/connection-groups"],
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

%% @doc Gets a list of the continuous deployment policies in your Amazon Web
%% Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_continuous_deployment_policies(aws_client:aws_client()) ->
    {ok, list_continuous_deployment_policies_result(), tuple()} |
    {error, any()} |
    {error, list_continuous_deployment_policies_errors(), tuple()}.
list_continuous_deployment_policies(Client)
  when is_map(Client) ->
    list_continuous_deployment_policies(Client, #{}, #{}).

-spec list_continuous_deployment_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_continuous_deployment_policies_result(), tuple()} |
    {error, any()} |
    {error, list_continuous_deployment_policies_errors(), tuple()}.
list_continuous_deployment_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_continuous_deployment_policies(Client, QueryMap, HeadersMap, []).

-spec list_continuous_deployment_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_continuous_deployment_policies_result(), tuple()} |
    {error, any()} |
    {error, list_continuous_deployment_policies_errors(), tuple()}.
list_continuous_deployment_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the distribution tenants in your Amazon Web Services account.
-spec list_distribution_tenants(aws_client:aws_client(), list_distribution_tenants_request()) ->
    {ok, list_distribution_tenants_result(), tuple()} |
    {error, any()} |
    {error, list_distribution_tenants_errors(), tuple()}.
list_distribution_tenants(Client, Input) ->
    list_distribution_tenants(Client, Input, []).

-spec list_distribution_tenants(aws_client:aws_client(), list_distribution_tenants_request(), proplists:proplist()) ->
    {ok, list_distribution_tenants_result(), tuple()} |
    {error, any()} |
    {error, list_distribution_tenants_errors(), tuple()}.
list_distribution_tenants(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution-tenants"],
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

%% @doc Lists distribution tenants by the customization that you specify.
%%
%% You must specify either the `CertificateArn' parameter or
%% `WebACLArn' parameter, but not both in the same request.
-spec list_distribution_tenants_by_customization(aws_client:aws_client(), list_distribution_tenants_by_customization_request()) ->
    {ok, list_distribution_tenants_by_customization_result(), tuple()} |
    {error, any()} |
    {error, list_distribution_tenants_by_customization_errors(), tuple()}.
list_distribution_tenants_by_customization(Client, Input) ->
    list_distribution_tenants_by_customization(Client, Input, []).

-spec list_distribution_tenants_by_customization(aws_client:aws_client(), list_distribution_tenants_by_customization_request(), proplists:proplist()) ->
    {ok, list_distribution_tenants_by_customization_result(), tuple()} |
    {error, any()} |
    {error, list_distribution_tenants_by_customization_errors(), tuple()}.
list_distribution_tenants_by_customization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution-tenants-by-customization"],
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

%% @doc List CloudFront distributions.
-spec list_distributions(aws_client:aws_client()) ->
    {ok, list_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_errors(), tuple()}.
list_distributions(Client)
  when is_map(Client) ->
    list_distributions(Client, #{}, #{}).

-spec list_distributions(aws_client:aws_client(), map(), map()) ->
    {ok, list_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_errors(), tuple()}.
list_distributions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions(Client, QueryMap, HeadersMap, []).

-spec list_distributions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_errors(), tuple()}.
list_distributions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the distributions in your account that are associated with the
%% specified `AnycastIpListId'.
-spec list_distributions_by_anycast_ip_list_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_anycast_ip_list_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_anycast_ip_list_id_errors(), tuple()}.
list_distributions_by_anycast_ip_list_id(Client, AnycastIpListId)
  when is_map(Client) ->
    list_distributions_by_anycast_ip_list_id(Client, AnycastIpListId, #{}, #{}).

-spec list_distributions_by_anycast_ip_list_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_anycast_ip_list_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_anycast_ip_list_id_errors(), tuple()}.
list_distributions_by_anycast_ip_list_id(Client, AnycastIpListId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_anycast_ip_list_id(Client, AnycastIpListId, QueryMap, HeadersMap, []).

-spec list_distributions_by_anycast_ip_list_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_anycast_ip_list_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_anycast_ip_list_id_errors(), tuple()}.
list_distributions_by_anycast_ip_list_id(Client, AnycastIpListId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByAnycastIpListId/", aws_util:encode_uri(AnycastIpListId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified cache policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_distributions_by_cache_policy_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_cache_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_cache_policy_id_errors(), tuple()}.
list_distributions_by_cache_policy_id(Client, CachePolicyId)
  when is_map(Client) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, #{}, #{}).

-spec list_distributions_by_cache_policy_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_cache_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_cache_policy_id_errors(), tuple()}.
list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap, []).

-spec list_distributions_by_cache_policy_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_cache_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_cache_policy_id_errors(), tuple()}.
list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByCachePolicyId/", aws_util:encode_uri(CachePolicyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the distributions by the connection mode that you specify.
-spec list_distributions_by_connection_mode(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_connection_mode_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_connection_mode_errors(), tuple()}.
list_distributions_by_connection_mode(Client, ConnectionMode)
  when is_map(Client) ->
    list_distributions_by_connection_mode(Client, ConnectionMode, #{}, #{}).

-spec list_distributions_by_connection_mode(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_connection_mode_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_connection_mode_errors(), tuple()}.
list_distributions_by_connection_mode(Client, ConnectionMode, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_connection_mode(Client, ConnectionMode, QueryMap, HeadersMap, []).

-spec list_distributions_by_connection_mode(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_connection_mode_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_connection_mode_errors(), tuple()}.
list_distributions_by_connection_mode(Client, ConnectionMode, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByConnectionMode/", aws_util:encode_uri(ConnectionMode), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that references the specified key group.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_distributions_by_key_group(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_key_group_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_key_group_errors(), tuple()}.
list_distributions_by_key_group(Client, KeyGroupId)
  when is_map(Client) ->
    list_distributions_by_key_group(Client, KeyGroupId, #{}, #{}).

-spec list_distributions_by_key_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_key_group_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_key_group_errors(), tuple()}.
list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap, []).

-spec list_distributions_by_key_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_key_group_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_key_group_errors(), tuple()}.
list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByKeyGroupId/", aws_util:encode_uri(KeyGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified origin request policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_distributions_by_origin_request_policy_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_origin_request_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_origin_request_policy_id_errors(), tuple()}.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId)
  when is_map(Client) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, #{}, #{}).

-spec list_distributions_by_origin_request_policy_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_origin_request_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_origin_request_policy_id_errors(), tuple()}.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap, []).

-spec list_distributions_by_origin_request_policy_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_origin_request_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_origin_request_policy_id_errors(), tuple()}.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByOriginRequestPolicyId/", aws_util:encode_uri(OriginRequestPolicyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distributions that have a cache behavior that's
%% associated with the specified real-time log configuration.
%%
%% You can specify the real-time log configuration by its name or its Amazon
%% Resource Name (ARN). You must provide at least one. If you provide both,
%% CloudFront uses the name to identify the real-time log configuration to
%% list distributions for.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_distributions_by_realtime_log_config(aws_client:aws_client(), list_distributions_by_realtime_log_config_request()) ->
    {ok, list_distributions_by_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_realtime_log_config_errors(), tuple()}.
list_distributions_by_realtime_log_config(Client, Input) ->
    list_distributions_by_realtime_log_config(Client, Input, []).

-spec list_distributions_by_realtime_log_config(aws_client:aws_client(), list_distributions_by_realtime_log_config_request(), proplists:proplist()) ->
    {ok, list_distributions_by_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_realtime_log_config_errors(), tuple()}.
list_distributions_by_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distributionsByRealtimeLogConfig"],
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

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified response headers policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_distributions_by_response_headers_policy_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_response_headers_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_response_headers_policy_id_errors(), tuple()}.
list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId)
  when is_map(Client) ->
    list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, #{}, #{}).

-spec list_distributions_by_response_headers_policy_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_response_headers_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_response_headers_policy_id_errors(), tuple()}.
list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap, []).

-spec list_distributions_by_response_headers_policy_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_response_headers_policy_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_response_headers_policy_id_errors(), tuple()}.
list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByResponseHeadersPolicyId/", aws_util:encode_uri(ResponseHeadersPolicyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List CloudFront distributions by their VPC origin ID.
-spec list_distributions_by_vpc_origin_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_vpc_origin_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_vpc_origin_id_errors(), tuple()}.
list_distributions_by_vpc_origin_id(Client, VpcOriginId)
  when is_map(Client) ->
    list_distributions_by_vpc_origin_id(Client, VpcOriginId, #{}, #{}).

-spec list_distributions_by_vpc_origin_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_vpc_origin_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_vpc_origin_id_errors(), tuple()}.
list_distributions_by_vpc_origin_id(Client, VpcOriginId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_vpc_origin_id(Client, VpcOriginId, QueryMap, HeadersMap, []).

-spec list_distributions_by_vpc_origin_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_vpc_origin_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_vpc_origin_id_errors(), tuple()}.
list_distributions_by_vpc_origin_id(Client, VpcOriginId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByVpcOriginId/", aws_util:encode_uri(VpcOriginId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the distributions that are associated with a specified WAF web
%% ACL.
-spec list_distributions_by_web_acl_id(aws_client:aws_client(), binary() | list()) ->
    {ok, list_distributions_by_web_acl_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_web_acl_id_errors(), tuple()}.
list_distributions_by_web_acl_id(Client, WebACLId)
  when is_map(Client) ->
    list_distributions_by_web_acl_id(Client, WebACLId, #{}, #{}).

-spec list_distributions_by_web_acl_id(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_distributions_by_web_acl_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_web_acl_id_errors(), tuple()}.
list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap, []).

-spec list_distributions_by_web_acl_id(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_distributions_by_web_acl_id_result(), tuple()} |
    {error, any()} |
    {error, list_distributions_by_web_acl_id_errors(), tuple()}.
list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByWebACLId/", aws_util:encode_uri(WebACLId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc We recommend that you use the `ListDomainConflicts' API operation
%% to check for domain conflicts, as it supports both standard distributions
%% and distribution tenants.
%%
%% ListConflictingAliases:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListConflictingAliases.html
%% performs similar checks but only supports standard distributions.
%%
%% Lists existing domain associations that conflict with the domain that you
%% specify.
%%
%% You can use this API operation to identify potential domain conflicts when
%% moving domains between standard distributions and/or distribution tenants.
%% Domain conflicts must be resolved first before they can be moved.
%%
%% For example, if you provide `www.example.com' as input, the returned
%% list can include `www.example.com' and the overlapping wildcard
%% alternate domain name (`*.example.com'), if they exist. If you provide
%% `*.example.com' as input, the returned list can include
%% `*.example.com' and any alternate domain names covered by that
%% wildcard (for example, `www.example.com', `test.example.com',
%% `dev.example.com', and so on), if they exist.
%%
%% To list conflicting domains, specify the following:
%%
%% The domain to search for
%%
%% The ID of a standard distribution or distribution tenant in your account
%% that has an attached TLS certificate, which covers the specified domain
%%
%% For more information, including how to set up the standard distribution or
%% distribution tenant, and the certificate, see Moving an alternate domain
%% name to a different standard distribution or distribution tenant:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_domain_conflicts(aws_client:aws_client(), list_domain_conflicts_request()) ->
    {ok, list_domain_conflicts_result(), tuple()} |
    {error, any()} |
    {error, list_domain_conflicts_errors(), tuple()}.
list_domain_conflicts(Client, Input) ->
    list_domain_conflicts(Client, Input, []).

-spec list_domain_conflicts(aws_client:aws_client(), list_domain_conflicts_request(), proplists:proplist()) ->
    {ok, list_domain_conflicts_result(), tuple()} |
    {error, any()} |
    {error, list_domain_conflicts_errors(), tuple()}.
list_domain_conflicts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/domain-conflicts"],
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

%% @doc List all field-level encryption configurations that have been created
%% in CloudFront for this account.
-spec list_field_level_encryption_configs(aws_client:aws_client()) ->
    {ok, list_field_level_encryption_configs_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_configs_errors(), tuple()}.
list_field_level_encryption_configs(Client)
  when is_map(Client) ->
    list_field_level_encryption_configs(Client, #{}, #{}).

-spec list_field_level_encryption_configs(aws_client:aws_client(), map(), map()) ->
    {ok, list_field_level_encryption_configs_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_configs_errors(), tuple()}.
list_field_level_encryption_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_field_level_encryption_configs(Client, QueryMap, HeadersMap, []).

-spec list_field_level_encryption_configs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_field_level_encryption_configs_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_configs_errors(), tuple()}.
list_field_level_encryption_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request a list of field-level encryption profiles that have been
%% created in CloudFront for this account.
-spec list_field_level_encryption_profiles(aws_client:aws_client()) ->
    {ok, list_field_level_encryption_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_profiles_errors(), tuple()}.
list_field_level_encryption_profiles(Client)
  when is_map(Client) ->
    list_field_level_encryption_profiles(Client, #{}, #{}).

-spec list_field_level_encryption_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_field_level_encryption_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_profiles_errors(), tuple()}.
list_field_level_encryption_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_field_level_encryption_profiles(Client, QueryMap, HeadersMap, []).

-spec list_field_level_encryption_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_field_level_encryption_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_field_level_encryption_profiles_errors(), tuple()}.
list_field_level_encryption_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of all CloudFront functions in your Amazon Web Services
%% account.
%%
%% You can optionally apply a filter to return only the functions that are in
%% the specified stage, either `DEVELOPMENT' or `LIVE'.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_functions(aws_client:aws_client()) ->
    {ok, list_functions_result(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client)
  when is_map(Client) ->
    list_functions(Client, #{}, #{}).

-spec list_functions(aws_client:aws_client(), map(), map()) ->
    {ok, list_functions_result(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, QueryMap, HeadersMap, []).

-spec list_functions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_functions_result(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists invalidation batches.
-spec list_invalidations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_invalidations_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_errors(), tuple()}.
list_invalidations(Client, DistributionId)
  when is_map(Client) ->
    list_invalidations(Client, DistributionId, #{}, #{}).

-spec list_invalidations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_invalidations_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_errors(), tuple()}.
list_invalidations(Client, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invalidations(Client, DistributionId, QueryMap, HeadersMap, []).

-spec list_invalidations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_invalidations_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_errors(), tuple()}.
list_invalidations(Client, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the invalidations for a distribution tenant.
-spec list_invalidations_for_distribution_tenant(aws_client:aws_client(), binary() | list()) ->
    {ok, list_invalidations_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_for_distribution_tenant_errors(), tuple()}.
list_invalidations_for_distribution_tenant(Client, Id)
  when is_map(Client) ->
    list_invalidations_for_distribution_tenant(Client, Id, #{}, #{}).

-spec list_invalidations_for_distribution_tenant(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_invalidations_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_for_distribution_tenant_errors(), tuple()}.
list_invalidations_for_distribution_tenant(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invalidations_for_distribution_tenant(Client, Id, QueryMap, HeadersMap, []).

-spec list_invalidations_for_distribution_tenant(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_invalidations_for_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, list_invalidations_for_distribution_tenant_errors(), tuple()}.
list_invalidations_for_distribution_tenant(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), "/invalidation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of key groups.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_key_groups(aws_client:aws_client()) ->
    {ok, list_key_groups_result(), tuple()} |
    {error, any()} |
    {error, list_key_groups_errors(), tuple()}.
list_key_groups(Client)
  when is_map(Client) ->
    list_key_groups(Client, #{}, #{}).

-spec list_key_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_key_groups_result(), tuple()} |
    {error, any()} |
    {error, list_key_groups_errors(), tuple()}.
list_key_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_key_groups(Client, QueryMap, HeadersMap, []).

-spec list_key_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_key_groups_result(), tuple()} |
    {error, any()} |
    {error, list_key_groups_errors(), tuple()}.
list_key_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Specifies the key value stores to list.
-spec list_key_value_stores(aws_client:aws_client()) ->
    {ok, list_key_value_stores_result(), tuple()} |
    {error, any()} |
    {error, list_key_value_stores_errors(), tuple()}.
list_key_value_stores(Client)
  when is_map(Client) ->
    list_key_value_stores(Client, #{}, #{}).

-spec list_key_value_stores(aws_client:aws_client(), map(), map()) ->
    {ok, list_key_value_stores_result(), tuple()} |
    {error, any()} |
    {error, list_key_value_stores_errors(), tuple()}.
list_key_value_stores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_key_value_stores(Client, QueryMap, HeadersMap, []).

-spec list_key_value_stores(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_key_value_stores_result(), tuple()} |
    {error, any()} |
    {error, list_key_value_stores_errors(), tuple()}.
list_key_value_stores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-value-store"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the list of CloudFront origin access controls (OACs) in this
%% Amazon Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send another request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the next request.
%%
%% If you're not using origin access controls for your Amazon Web
%% Services account, the `ListOriginAccessControls' operation doesn't
%% return the `Items' element in the response.
-spec list_origin_access_controls(aws_client:aws_client()) ->
    {ok, list_origin_access_controls_result(), tuple()} |
    {error, any()} |
    {error, list_origin_access_controls_errors(), tuple()}.
list_origin_access_controls(Client)
  when is_map(Client) ->
    list_origin_access_controls(Client, #{}, #{}).

-spec list_origin_access_controls(aws_client:aws_client(), map(), map()) ->
    {ok, list_origin_access_controls_result(), tuple()} |
    {error, any()} |
    {error, list_origin_access_controls_errors(), tuple()}.
list_origin_access_controls(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_access_controls(Client, QueryMap, HeadersMap, []).

-spec list_origin_access_controls(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_origin_access_controls_result(), tuple()} |
    {error, any()} |
    {error, list_origin_access_controls_errors(), tuple()}.
list_origin_access_controls(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of origin request policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by Amazon Web Services, or only the custom policies created in
%% your Amazon Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_origin_request_policies(aws_client:aws_client()) ->
    {ok, list_origin_request_policies_result(), tuple()} |
    {error, any()} |
    {error, list_origin_request_policies_errors(), tuple()}.
list_origin_request_policies(Client)
  when is_map(Client) ->
    list_origin_request_policies(Client, #{}, #{}).

-spec list_origin_request_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_origin_request_policies_result(), tuple()} |
    {error, any()} |
    {error, list_origin_request_policies_errors(), tuple()}.
list_origin_request_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_request_policies(Client, QueryMap, HeadersMap, []).

-spec list_origin_request_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_origin_request_policies_result(), tuple()} |
    {error, any()} |
    {error, list_origin_request_policies_errors(), tuple()}.
list_origin_request_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all public keys that have been added to CloudFront for this
%% account.
-spec list_public_keys(aws_client:aws_client()) ->
    {ok, list_public_keys_result(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client)
  when is_map(Client) ->
    list_public_keys(Client, #{}, #{}).

-spec list_public_keys(aws_client:aws_client(), map(), map()) ->
    {ok, list_public_keys_result(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_public_keys(Client, QueryMap, HeadersMap, []).

-spec list_public_keys(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_public_keys_result(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of real-time log configurations.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_realtime_log_configs(aws_client:aws_client()) ->
    {ok, list_realtime_log_configs_result(), tuple()} |
    {error, any()} |
    {error, list_realtime_log_configs_errors(), tuple()}.
list_realtime_log_configs(Client)
  when is_map(Client) ->
    list_realtime_log_configs(Client, #{}, #{}).

-spec list_realtime_log_configs(aws_client:aws_client(), map(), map()) ->
    {ok, list_realtime_log_configs_result(), tuple()} |
    {error, any()} |
    {error, list_realtime_log_configs_errors(), tuple()}.
list_realtime_log_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_realtime_log_configs(Client, QueryMap, HeadersMap, []).

-spec list_realtime_log_configs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_realtime_log_configs_result(), tuple()} |
    {error, any()} |
    {error, list_realtime_log_configs_errors(), tuple()}.
list_realtime_log_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/realtime-log-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of response headers policies.
%%
%% You can optionally apply a filter to get only the managed policies created
%% by Amazon Web Services, or only the custom policies created in your Amazon
%% Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
-spec list_response_headers_policies(aws_client:aws_client()) ->
    {ok, list_response_headers_policies_result(), tuple()} |
    {error, any()} |
    {error, list_response_headers_policies_errors(), tuple()}.
list_response_headers_policies(Client)
  when is_map(Client) ->
    list_response_headers_policies(Client, #{}, #{}).

-spec list_response_headers_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_response_headers_policies_result(), tuple()} |
    {error, any()} |
    {error, list_response_headers_policies_errors(), tuple()}.
list_response_headers_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_response_headers_policies(Client, QueryMap, HeadersMap, []).

-spec list_response_headers_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_response_headers_policies_result(), tuple()} |
    {error, any()} |
    {error, list_response_headers_policies_errors(), tuple()}.
list_response_headers_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List streaming distributions.
-spec list_streaming_distributions(aws_client:aws_client()) ->
    {ok, list_streaming_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_streaming_distributions_errors(), tuple()}.
list_streaming_distributions(Client)
  when is_map(Client) ->
    list_streaming_distributions(Client, #{}, #{}).

-spec list_streaming_distributions(aws_client:aws_client(), map(), map()) ->
    {ok, list_streaming_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_streaming_distributions_errors(), tuple()}.
list_streaming_distributions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_distributions(Client, QueryMap, HeadersMap, []).

-spec list_streaming_distributions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_streaming_distributions_result(), tuple()} |
    {error, any()} |
    {error, list_streaming_distributions_errors(), tuple()}.
list_streaming_distributions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tags for a CloudFront resource.
%%
%% For more information, see Tagging a distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
%% in the Amazon CloudFront Developer Guide.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Resource)
  when is_map(Client) ->
    list_tags_for_resource(Client, Resource, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Resource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Resource, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Resource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Resource">>, Resource}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the CloudFront VPC origins in your account.
-spec list_vpc_origins(aws_client:aws_client()) ->
    {ok, list_vpc_origins_result(), tuple()} |
    {error, any()} |
    {error, list_vpc_origins_errors(), tuple()}.
list_vpc_origins(Client)
  when is_map(Client) ->
    list_vpc_origins(Client, #{}, #{}).

-spec list_vpc_origins(aws_client:aws_client(), map(), map()) ->
    {ok, list_vpc_origins_result(), tuple()} |
    {error, any()} |
    {error, list_vpc_origins_errors(), tuple()}.
list_vpc_origins(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_origins(Client, QueryMap, HeadersMap, []).

-spec list_vpc_origins(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_origins_result(), tuple()} |
    {error, any()} |
    {error, list_vpc_origins_errors(), tuple()}.
list_vpc_origins(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/vpc-origin"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Publishes a CloudFront function by copying the function code from the
%% `DEVELOPMENT' stage to `LIVE'.
%%
%% This automatically updates all cache behaviors that are using this
%% function to use the newly published copy in the `LIVE' stage.
%%
%% When a function is published to the `LIVE' stage, you can attach the
%% function to a distribution's cache behavior, using the function's
%% Amazon Resource Name (ARN).
%%
%% To publish a function, you must provide the function's name and
%% version (`ETag' value). To get these values, you can use
%% `ListFunctions' and `DescribeFunction'.
-spec publish_function(aws_client:aws_client(), binary() | list(), publish_function_request()) ->
    {ok, publish_function_result(), tuple()} |
    {error, any()} |
    {error, publish_function_errors(), tuple()}.
publish_function(Client, Name, Input) ->
    publish_function(Client, Name, Input, []).

-spec publish_function(aws_client:aws_client(), binary() | list(), publish_function_request(), proplists:proplist()) ->
    {ok, publish_function_result(), tuple()} |
    {error, any()} |
    {error, publish_function_errors(), tuple()}.
publish_function(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/publish"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add tags to a CloudFront resource.
%%
%% For more information, see Tagging a distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
%% in the Amazon CloudFront Developer Guide.
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
    Path = ["/2020-05-31/tagging?Operation=Tag"],
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

    QueryMapping = [
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tests a CloudFront function.
%%
%% To test a function, you provide an event object that represents an HTTP
%% request or response that your CloudFront distribution could receive in
%% production. CloudFront runs the function, passing it the event object that
%% you provided, and returns the function's result (the modified event
%% object) in the response. The response also contains function logs and
%% error messages, if any exist. For more information about testing
%% functions, see Testing functions:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function
%% in the Amazon CloudFront Developer Guide.
%%
%% To test a function, you provide the function's name and version
%% (`ETag' value) along with the event object. To get the function's
%% name and version, you can use `ListFunctions' and
%% `DescribeFunction'.
-spec test_function(aws_client:aws_client(), binary() | list(), test_function_request()) ->
    {ok, test_function_result(), tuple()} |
    {error, any()} |
    {error, test_function_errors(), tuple()}.
test_function(Client, Name, Input) ->
    test_function(Client, Name, Input, []).

-spec test_function(aws_client:aws_client(), binary() | list(), test_function_request(), proplists:proplist()) ->
    {ok, test_function_result(), tuple()} |
    {error, any()} |
    {error, test_function_errors(), tuple()}.
test_function(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/test"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove tags from a CloudFront resource.
%%
%% For more information, see Tagging a distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
%% in the Amazon CloudFront Developer Guide.
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
    Path = ["/2020-05-31/tagging?Operation=Untag"],
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

    QueryMapping = [
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a cache policy configuration.
%%
%% When you update a cache policy configuration, all the fields are updated
%% with the values provided in the request. You cannot update some fields
%% independent of others. To update a cache policy configuration:
%%
%% Use `GetCachePolicyConfig' to get the current configuration.
%%
%% Locally modify the fields in the cache policy configuration that you want
%% to update.
%%
%% Call `UpdateCachePolicy' by providing the entire cache policy
%% configuration, including the fields that you modified and those that you
%% didn't.
%%
%% If your minimum TTL is greater than 0, CloudFront will cache content for
%% at least the duration specified in the cache policy's minimum TTL,
%% even if the `Cache-Control: no-cache', `no-store', or
%% `private' directives are present in the origin headers.
-spec update_cache_policy(aws_client:aws_client(), binary() | list(), update_cache_policy_request()) ->
    {ok, update_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, update_cache_policy_errors(), tuple()}.
update_cache_policy(Client, Id, Input) ->
    update_cache_policy(Client, Id, Input, []).

-spec update_cache_policy(aws_client:aws_client(), binary() | list(), update_cache_policy_request(), proplists:proplist()) ->
    {ok, update_cache_policy_result(), tuple()} |
    {error, any()} |
    {error, update_cache_policy_errors(), tuple()}.
update_cache_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update an origin access identity.
-spec update_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), update_cloud_front_origin_access_identity_request()) ->
    {ok, update_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, update_cloud_front_origin_access_identity_errors(), tuple()}.
update_cloud_front_origin_access_identity(Client, Id, Input) ->
    update_cloud_front_origin_access_identity(Client, Id, Input, []).

-spec update_cloud_front_origin_access_identity(aws_client:aws_client(), binary() | list(), update_cloud_front_origin_access_identity_request(), proplists:proplist()) ->
    {ok, update_cloud_front_origin_access_identity_result(), tuple()} |
    {error, any()} |
    {error, update_cloud_front_origin_access_identity_errors(), tuple()}.
update_cloud_front_origin_access_identity(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a connection group.
-spec update_connection_group(aws_client:aws_client(), binary() | list(), update_connection_group_request()) ->
    {ok, update_connection_group_result(), tuple()} |
    {error, any()} |
    {error, update_connection_group_errors(), tuple()}.
update_connection_group(Client, Id, Input) ->
    update_connection_group(Client, Id, Input, []).

-spec update_connection_group(aws_client:aws_client(), binary() | list(), update_connection_group_request(), proplists:proplist()) ->
    {ok, update_connection_group_result(), tuple()} |
    {error, any()} |
    {error, update_connection_group_errors(), tuple()}.
update_connection_group(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/connection-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a continuous deployment policy.
%%
%% You can update a continuous deployment policy to enable or disable it, to
%% change the percentage of traffic that it sends to the staging
%% distribution, or to change the staging distribution that it sends traffic
%% to.
%%
%% When you update a continuous deployment policy configuration, all the
%% fields are updated with the values that are provided in the request. You
%% cannot update some fields independent of others. To update a continuous
%% deployment policy configuration:
%%
%% Use `GetContinuousDeploymentPolicyConfig' to get the current
%% configuration.
%%
%% Locally modify the fields in the continuous deployment policy
%% configuration that you want to update.
%%
%% Use `UpdateContinuousDeploymentPolicy', providing the entire
%% continuous deployment policy configuration, including the fields that you
%% modified and those that you didn't.
-spec update_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), update_continuous_deployment_policy_request()) ->
    {ok, update_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, update_continuous_deployment_policy_errors(), tuple()}.
update_continuous_deployment_policy(Client, Id, Input) ->
    update_continuous_deployment_policy(Client, Id, Input, []).

-spec update_continuous_deployment_policy(aws_client:aws_client(), binary() | list(), update_continuous_deployment_policy_request(), proplists:proplist()) ->
    {ok, update_continuous_deployment_policy_result(), tuple()} |
    {error, any()} |
    {error, update_continuous_deployment_policy_errors(), tuple()}.
update_continuous_deployment_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates the configuration for a CloudFront distribution.
%%
%% The update process includes getting the current distribution
%% configuration, updating it to make your changes, and then submitting an
%% `UpdateDistribution' request to make the updates.
%%
%% To update a web distribution using the CloudFront API
%%
%% Use `GetDistributionConfig' to get the current configuration,
%% including the version identifier (`ETag').
%%
%% Update the distribution configuration that was returned in the response.
%% Note the following important requirements and restrictions:
%%
%% You must copy the `ETag' field value from the response. (You'll
%% use it for the `IfMatch' parameter in your request.) Then, remove the
%% `ETag' field from the distribution configuration.
%%
%% You can't change the value of `CallerReference'.
%%
%% Submit an `UpdateDistribution' request, providing the updated
%% distribution configuration. The new configuration replaces the existing
%% configuration. The values that you specify in an `UpdateDistribution'
%% request are not merged into your existing configuration. Make sure to
%% include all fields: the ones that you modified and also the ones that you
%% didn't.
-spec update_distribution(aws_client:aws_client(), binary() | list(), update_distribution_request()) ->
    {ok, update_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_errors(), tuple()}.
update_distribution(Client, Id, Input) ->
    update_distribution(Client, Id, Input, []).

-spec update_distribution(aws_client:aws_client(), binary() | list(), update_distribution_request(), proplists:proplist()) ->
    {ok, update_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_errors(), tuple()}.
update_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a distribution tenant.
-spec update_distribution_tenant(aws_client:aws_client(), binary() | list(), update_distribution_tenant_request()) ->
    {ok, update_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_tenant_errors(), tuple()}.
update_distribution_tenant(Client, Id, Input) ->
    update_distribution_tenant(Client, Id, Input, []).

-spec update_distribution_tenant(aws_client:aws_client(), binary() | list(), update_distribution_tenant_request(), proplists:proplist()) ->
    {ok, update_distribution_tenant_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_tenant_errors(), tuple()}.
update_distribution_tenant(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution-tenant/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Copies the staging distribution's configuration to its
%% corresponding primary distribution.
%%
%% The primary distribution retains its `Aliases' (also known as
%% alternate domain names or CNAMEs) and `ContinuousDeploymentPolicyId'
%% value, but otherwise its configuration is overwritten to match the staging
%% distribution.
%%
%% You can use this operation in a continuous deployment workflow after you
%% have tested configuration changes on the staging distribution. After using
%% a continuous deployment policy to move a portion of your domain name's
%% traffic to the staging distribution and verifying that it works as
%% intended, you can use this operation to copy the staging
%% distribution's configuration to the primary distribution. This action
%% will disable the continuous deployment policy and move your domain's
%% traffic back to the primary distribution.
%%
%% This API operation requires the following IAM permissions:
%%
%% GetDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
%%
%% UpdateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
-spec update_distribution_with_staging_config(aws_client:aws_client(), binary() | list(), update_distribution_with_staging_config_request()) ->
    {ok, update_distribution_with_staging_config_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_with_staging_config_errors(), tuple()}.
update_distribution_with_staging_config(Client, Id, Input) ->
    update_distribution_with_staging_config(Client, Id, Input, []).

-spec update_distribution_with_staging_config(aws_client:aws_client(), binary() | list(), update_distribution_with_staging_config_request(), proplists:proplist()) ->
    {ok, update_distribution_with_staging_config_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_with_staging_config_errors(), tuple()}.
update_distribution_with_staging_config(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/promote-staging-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"StagingDistributionId">>, <<"StagingDistributionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc We recommend that you use the `UpdateDomainAssociation' API
%% operation to move a domain association, as it supports both standard
%% distributions and distribution tenants.
%%
%% AssociateAlias:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_AssociateAlias.html
%% performs similar checks but only supports standard distributions.
%%
%% Moves a domain from its current standard distribution or distribution
%% tenant to another one.
%%
%% You must first disable the source distribution (standard distribution or
%% distribution tenant) and then separately call this operation to move the
%% domain to another target distribution (standard distribution or
%% distribution tenant).
%%
%% To use this operation, specify the domain and the ID of the target
%% resource (standard distribution or distribution tenant). For more
%% information, including how to set up the target resource, prerequisites
%% that you must complete, and other restrictions, see Moving an alternate
%% domain name to a different standard distribution or distribution tenant:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
-spec update_domain_association(aws_client:aws_client(), update_domain_association_request()) ->
    {ok, update_domain_association_result(), tuple()} |
    {error, any()} |
    {error, update_domain_association_errors(), tuple()}.
update_domain_association(Client, Input) ->
    update_domain_association(Client, Input, []).

-spec update_domain_association(aws_client:aws_client(), update_domain_association_request(), proplists:proplist()) ->
    {ok, update_domain_association_result(), tuple()} |
    {error, any()} |
    {error, update_domain_association_errors(), tuple()}.
update_domain_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/domain-association"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update a field-level encryption configuration.
-spec update_field_level_encryption_config(aws_client:aws_client(), binary() | list(), update_field_level_encryption_config_request()) ->
    {ok, update_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, update_field_level_encryption_config_errors(), tuple()}.
update_field_level_encryption_config(Client, Id, Input) ->
    update_field_level_encryption_config(Client, Id, Input, []).

-spec update_field_level_encryption_config(aws_client:aws_client(), binary() | list(), update_field_level_encryption_config_request(), proplists:proplist()) ->
    {ok, update_field_level_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, update_field_level_encryption_config_errors(), tuple()}.
update_field_level_encryption_config(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update a field-level encryption profile.
-spec update_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), update_field_level_encryption_profile_request()) ->
    {ok, update_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, update_field_level_encryption_profile_errors(), tuple()}.
update_field_level_encryption_profile(Client, Id, Input) ->
    update_field_level_encryption_profile(Client, Id, Input, []).

-spec update_field_level_encryption_profile(aws_client:aws_client(), binary() | list(), update_field_level_encryption_profile_request(), proplists:proplist()) ->
    {ok, update_field_level_encryption_profile_result(), tuple()} |
    {error, any()} |
    {error, update_field_level_encryption_profile_errors(), tuple()}.
update_field_level_encryption_profile(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a CloudFront function.
%%
%% You can update a function's code or the comment that describes the
%% function. You cannot update a function's name.
%%
%% To update a function, you provide the function's name and version
%% (`ETag' value) along with the updated function code. To get the name
%% and version, you can use `ListFunctions' and `DescribeFunction'.
-spec update_function(aws_client:aws_client(), binary() | list(), update_function_request()) ->
    {ok, update_function_result(), tuple()} |
    {error, any()} |
    {error, update_function_errors(), tuple()}.
update_function(Client, Name, Input) ->
    update_function(Client, Name, Input, []).

-spec update_function(aws_client:aws_client(), binary() | list(), update_function_request(), proplists:proplist()) ->
    {ok, update_function_result(), tuple()} |
    {error, any()} |
    {error, update_function_errors(), tuple()}.
update_function(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETtag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a key group.
%%
%% When you update a key group, all the fields are updated with the values
%% provided in the request. You cannot update some fields independent of
%% others. To update a key group:
%%
%% Get the current key group with `GetKeyGroup' or
%% `GetKeyGroupConfig'.
%%
%% Locally modify the fields in the key group that you want to update. For
%% example, add or remove public key IDs.
%%
%% Call `UpdateKeyGroup' with the entire key group object, including the
%% fields that you modified and those that you didn't.
-spec update_key_group(aws_client:aws_client(), binary() | list(), update_key_group_request()) ->
    {ok, update_key_group_result(), tuple()} |
    {error, any()} |
    {error, update_key_group_errors(), tuple()}.
update_key_group(Client, Id, Input) ->
    update_key_group(Client, Id, Input, []).

-spec update_key_group(aws_client:aws_client(), binary() | list(), update_key_group_request(), proplists:proplist()) ->
    {ok, update_key_group_result(), tuple()} |
    {error, any()} |
    {error, update_key_group_errors(), tuple()}.
update_key_group(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Specifies the key value store to update.
-spec update_key_value_store(aws_client:aws_client(), binary() | list(), update_key_value_store_request()) ->
    {ok, update_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, update_key_value_store_errors(), tuple()}.
update_key_value_store(Client, Name, Input) ->
    update_key_value_store(Client, Name, Input, []).

-spec update_key_value_store(aws_client:aws_client(), binary() | list(), update_key_value_store_request(), proplists:proplist()) ->
    {ok, update_key_value_store_result(), tuple()} |
    {error, any()} |
    {error, update_key_value_store_errors(), tuple()}.
update_key_value_store(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a CloudFront origin access control.
-spec update_origin_access_control(aws_client:aws_client(), binary() | list(), update_origin_access_control_request()) ->
    {ok, update_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, update_origin_access_control_errors(), tuple()}.
update_origin_access_control(Client, Id, Input) ->
    update_origin_access_control(Client, Id, Input, []).

-spec update_origin_access_control(aws_client:aws_client(), binary() | list(), update_origin_access_control_request(), proplists:proplist()) ->
    {ok, update_origin_access_control_result(), tuple()} |
    {error, any()} |
    {error, update_origin_access_control_errors(), tuple()}.
update_origin_access_control(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates an origin request policy configuration.
%%
%% When you update an origin request policy configuration, all the fields are
%% updated with the values provided in the request. You cannot update some
%% fields independent of others. To update an origin request policy
%% configuration:
%%
%% Use `GetOriginRequestPolicyConfig' to get the current configuration.
%%
%% Locally modify the fields in the origin request policy configuration that
%% you want to update.
%%
%% Call `UpdateOriginRequestPolicy' by providing the entire origin
%% request policy configuration, including the fields that you modified and
%% those that you didn't.
-spec update_origin_request_policy(aws_client:aws_client(), binary() | list(), update_origin_request_policy_request()) ->
    {ok, update_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, update_origin_request_policy_errors(), tuple()}.
update_origin_request_policy(Client, Id, Input) ->
    update_origin_request_policy(Client, Id, Input, []).

-spec update_origin_request_policy(aws_client:aws_client(), binary() | list(), update_origin_request_policy_request(), proplists:proplist()) ->
    {ok, update_origin_request_policy_result(), tuple()} |
    {error, any()} |
    {error, update_origin_request_policy_errors(), tuple()}.
update_origin_request_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update public key information.
%%
%% Note that the only value you can change is the comment.
-spec update_public_key(aws_client:aws_client(), binary() | list(), update_public_key_request()) ->
    {ok, update_public_key_result(), tuple()} |
    {error, any()} |
    {error, update_public_key_errors(), tuple()}.
update_public_key(Client, Id, Input) ->
    update_public_key(Client, Id, Input, []).

-spec update_public_key(aws_client:aws_client(), binary() | list(), update_public_key_request(), proplists:proplist()) ->
    {ok, update_public_key_result(), tuple()} |
    {error, any()} |
    {error, update_public_key_errors(), tuple()}.
update_public_key(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Updates a real-time log configuration.
%%
%% When you update a real-time log configuration, all the parameters are
%% updated with the values provided in the request. You cannot update some
%% parameters independent of others. To update a real-time log configuration:
%%
%% Call `GetRealtimeLogConfig' to get the current real-time log
%% configuration.
%%
%% Locally modify the parameters in the real-time log configuration that you
%% want to update.
%%
%% Call this API (`UpdateRealtimeLogConfig') by providing the entire
%% real-time log configuration, including the parameters that you modified
%% and those that you didn't.
%%
%% You cannot update a real-time log configuration's `Name' or
%% `ARN'.
-spec update_realtime_log_config(aws_client:aws_client(), update_realtime_log_config_request()) ->
    {ok, update_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, update_realtime_log_config_errors(), tuple()}.
update_realtime_log_config(Client, Input) ->
    update_realtime_log_config(Client, Input, []).

-spec update_realtime_log_config(aws_client:aws_client(), update_realtime_log_config_request(), proplists:proplist()) ->
    {ok, update_realtime_log_config_result(), tuple()} |
    {error, any()} |
    {error, update_realtime_log_config_errors(), tuple()}.
update_realtime_log_config(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/realtime-log-config"],
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

%% @doc Updates a response headers policy.
%%
%% When you update a response headers policy, the entire policy is replaced.
%% You cannot update some policy fields independent of others. To update a
%% response headers policy configuration:
%%
%% Use `GetResponseHeadersPolicyConfig' to get the current policy's
%% configuration.
%%
%% Modify the fields in the response headers policy configuration that you
%% want to update.
%%
%% Call `UpdateResponseHeadersPolicy', providing the entire response
%% headers policy configuration, including the fields that you modified and
%% those that you didn't.
-spec update_response_headers_policy(aws_client:aws_client(), binary() | list(), update_response_headers_policy_request()) ->
    {ok, update_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, update_response_headers_policy_errors(), tuple()}.
update_response_headers_policy(Client, Id, Input) ->
    update_response_headers_policy(Client, Id, Input, []).

-spec update_response_headers_policy(aws_client:aws_client(), binary() | list(), update_response_headers_policy_request(), proplists:proplist()) ->
    {ok, update_response_headers_policy_result(), tuple()} |
    {error, any()} |
    {error, update_response_headers_policy_errors(), tuple()}.
update_response_headers_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update a streaming distribution.
-spec update_streaming_distribution(aws_client:aws_client(), binary() | list(), update_streaming_distribution_request()) ->
    {ok, update_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_streaming_distribution_errors(), tuple()}.
update_streaming_distribution(Client, Id, Input) ->
    update_streaming_distribution(Client, Id, Input, []).

-spec update_streaming_distribution(aws_client:aws_client(), binary() | list(), update_streaming_distribution_request(), proplists:proplist()) ->
    {ok, update_streaming_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_streaming_distribution_errors(), tuple()}.
update_streaming_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Update an Amazon CloudFront VPC origin in your account.
-spec update_vpc_origin(aws_client:aws_client(), binary() | list(), update_vpc_origin_request()) ->
    {ok, update_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, update_vpc_origin_errors(), tuple()}.
update_vpc_origin(Client, Id, Input) ->
    update_vpc_origin(Client, Id, Input, []).

-spec update_vpc_origin(aws_client:aws_client(), binary() | list(), update_vpc_origin_request(), proplists:proplist()) ->
    {ok, update_vpc_origin_result(), tuple()} |
    {error, any()} |
    {error, update_vpc_origin_errors(), tuple()}.
update_vpc_origin(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/vpc-origin/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Verify the DNS configuration for your domain names.
%%
%% This API operation checks whether your domain name points to the correct
%% routing endpoint of the connection group, such as
%% d111111abcdef8.cloudfront.net. You can use this API operation to
%% troubleshoot and resolve DNS configuration issues.
-spec verify_dns_configuration(aws_client:aws_client(), verify_dns_configuration_request()) ->
    {ok, verify_dns_configuration_result(), tuple()} |
    {error, any()} |
    {error, verify_dns_configuration_errors(), tuple()}.
verify_dns_configuration(Client, Input) ->
    verify_dns_configuration(Client, Input, []).

-spec verify_dns_configuration(aws_client:aws_client(), verify_dns_configuration_request(), proplists:proplist()) ->
    {ok, verify_dns_configuration_result(), tuple()} |
    {error, any()} |
    {error, verify_dns_configuration_errors(), tuple()}.
verify_dns_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/verify-dns-configuration"],
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
    Client1 = Client#{service => <<"cloudfront">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"cloudfront">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"text/xml">>}
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
                           aws_util:decode_xml(Body)
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
      DecodedError = aws_util:decode_xml(Body),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
