%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 is a highly available and scalable Domain Name System
%% (DNS) web
%% service.
%%
%% You can use Route 53 to:
%%
%% Register domain names.
%%
%% For more information, see How domain registration works:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-domain-registration.html.
%%
%% Route internet traffic to the resources for your domain
%%
%% For more information, see How internet traffic is routed to your website
%% or web application:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html.
%%
%% Check the health of your resources.
%%
%% For more information, see How Route 53 checks the health of your
%% resources:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-health-checks.html.
-module(aws_route53).

-export([activate_key_signing_key/4,
         activate_key_signing_key/5,
         associate_vpc_with_hosted_zone/3,
         associate_vpc_with_hosted_zone/4,
         change_cidr_collection/3,
         change_cidr_collection/4,
         change_resource_record_sets/3,
         change_resource_record_sets/4,
         change_tags_for_resource/4,
         change_tags_for_resource/5,
         create_cidr_collection/2,
         create_cidr_collection/3,
         create_health_check/2,
         create_health_check/3,
         create_hosted_zone/2,
         create_hosted_zone/3,
         create_key_signing_key/2,
         create_key_signing_key/3,
         create_query_logging_config/2,
         create_query_logging_config/3,
         create_reusable_delegation_set/2,
         create_reusable_delegation_set/3,
         create_traffic_policy/2,
         create_traffic_policy/3,
         create_traffic_policy_instance/2,
         create_traffic_policy_instance/3,
         create_traffic_policy_version/3,
         create_traffic_policy_version/4,
         create_vpc_association_authorization/3,
         create_vpc_association_authorization/4,
         deactivate_key_signing_key/4,
         deactivate_key_signing_key/5,
         delete_cidr_collection/3,
         delete_cidr_collection/4,
         delete_health_check/3,
         delete_health_check/4,
         delete_hosted_zone/3,
         delete_hosted_zone/4,
         delete_key_signing_key/4,
         delete_key_signing_key/5,
         delete_query_logging_config/3,
         delete_query_logging_config/4,
         delete_reusable_delegation_set/3,
         delete_reusable_delegation_set/4,
         delete_traffic_policy/4,
         delete_traffic_policy/5,
         delete_traffic_policy_instance/3,
         delete_traffic_policy_instance/4,
         delete_vpc_association_authorization/3,
         delete_vpc_association_authorization/4,
         disable_hosted_zone_dns_sec/3,
         disable_hosted_zone_dns_sec/4,
         disassociate_vpc_from_hosted_zone/3,
         disassociate_vpc_from_hosted_zone/4,
         enable_hosted_zone_dns_sec/3,
         enable_hosted_zone_dns_sec/4,
         get_account_limit/2,
         get_account_limit/4,
         get_account_limit/5,
         get_change/2,
         get_change/4,
         get_change/5,
         get_checker_ip_ranges/1,
         get_checker_ip_ranges/3,
         get_checker_ip_ranges/4,
         get_dns_sec/2,
         get_dns_sec/4,
         get_dns_sec/5,
         get_geo_location/1,
         get_geo_location/3,
         get_geo_location/4,
         get_health_check/2,
         get_health_check/4,
         get_health_check/5,
         get_health_check_count/1,
         get_health_check_count/3,
         get_health_check_count/4,
         get_health_check_last_failure_reason/2,
         get_health_check_last_failure_reason/4,
         get_health_check_last_failure_reason/5,
         get_health_check_status/2,
         get_health_check_status/4,
         get_health_check_status/5,
         get_hosted_zone/2,
         get_hosted_zone/4,
         get_hosted_zone/5,
         get_hosted_zone_count/1,
         get_hosted_zone_count/3,
         get_hosted_zone_count/4,
         get_hosted_zone_limit/3,
         get_hosted_zone_limit/5,
         get_hosted_zone_limit/6,
         get_query_logging_config/2,
         get_query_logging_config/4,
         get_query_logging_config/5,
         get_reusable_delegation_set/2,
         get_reusable_delegation_set/4,
         get_reusable_delegation_set/5,
         get_reusable_delegation_set_limit/3,
         get_reusable_delegation_set_limit/5,
         get_reusable_delegation_set_limit/6,
         get_traffic_policy/3,
         get_traffic_policy/5,
         get_traffic_policy/6,
         get_traffic_policy_instance/2,
         get_traffic_policy_instance/4,
         get_traffic_policy_instance/5,
         get_traffic_policy_instance_count/1,
         get_traffic_policy_instance_count/3,
         get_traffic_policy_instance_count/4,
         list_cidr_blocks/2,
         list_cidr_blocks/4,
         list_cidr_blocks/5,
         list_cidr_collections/1,
         list_cidr_collections/3,
         list_cidr_collections/4,
         list_cidr_locations/2,
         list_cidr_locations/4,
         list_cidr_locations/5,
         list_geo_locations/1,
         list_geo_locations/3,
         list_geo_locations/4,
         list_health_checks/1,
         list_health_checks/3,
         list_health_checks/4,
         list_hosted_zones/1,
         list_hosted_zones/3,
         list_hosted_zones/4,
         list_hosted_zones_by_name/1,
         list_hosted_zones_by_name/3,
         list_hosted_zones_by_name/4,
         list_hosted_zones_by_vpc/3,
         list_hosted_zones_by_vpc/5,
         list_hosted_zones_by_vpc/6,
         list_query_logging_configs/1,
         list_query_logging_configs/3,
         list_query_logging_configs/4,
         list_resource_record_sets/2,
         list_resource_record_sets/4,
         list_resource_record_sets/5,
         list_reusable_delegation_sets/1,
         list_reusable_delegation_sets/3,
         list_reusable_delegation_sets/4,
         list_tags_for_resource/3,
         list_tags_for_resource/5,
         list_tags_for_resource/6,
         list_tags_for_resources/3,
         list_tags_for_resources/4,
         list_traffic_policies/1,
         list_traffic_policies/3,
         list_traffic_policies/4,
         list_traffic_policy_instances/1,
         list_traffic_policy_instances/3,
         list_traffic_policy_instances/4,
         list_traffic_policy_instances_by_hosted_zone/2,
         list_traffic_policy_instances_by_hosted_zone/4,
         list_traffic_policy_instances_by_hosted_zone/5,
         list_traffic_policy_instances_by_policy/3,
         list_traffic_policy_instances_by_policy/5,
         list_traffic_policy_instances_by_policy/6,
         list_traffic_policy_versions/2,
         list_traffic_policy_versions/4,
         list_traffic_policy_versions/5,
         list_vpc_association_authorizations/2,
         list_vpc_association_authorizations/4,
         list_vpc_association_authorizations/5,
         test_dns_answer/4,
         test_dns_answer/6,
         test_dns_answer/7,
         update_health_check/3,
         update_health_check/4,
         update_hosted_zone_comment/3,
         update_hosted_zone_comment/4,
         update_traffic_policy_comment/4,
         update_traffic_policy_comment/5,
         update_traffic_policy_instance/3,
         update_traffic_policy_instance/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_vpc_association_authorization_request() :: #{
%%   <<"VPC">> := vpc()
%% }
-type create_vpc_association_authorization_request() :: #{binary() => any()}.


%% Example:
%% update_hosted_zone_comment_response() :: #{
%%   <<"HostedZone">> => hosted_zone()
%% }
-type update_hosted_zone_comment_response() :: #{binary() => any()}.


%% Example:
%% list_traffic_policies_request() :: #{
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyIdMarker">> => string()
%% }
-type list_traffic_policies_request() :: #{binary() => any()}.


%% Example:
%% get_change_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type get_change_response() :: #{binary() => any()}.


%% Example:
%% geo_location_details() :: #{
%%   <<"ContinentCode">> => string(),
%%   <<"ContinentName">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"CountryName">> => string(),
%%   <<"SubdivisionCode">> => string(),
%%   <<"SubdivisionName">> => string()
%% }
-type geo_location_details() :: #{binary() => any()}.

%% Example:
%% get_query_logging_config_request() :: #{}
-type get_query_logging_config_request() :: #{}.


%% Example:
%% delegation_set_not_reusable() :: #{
%%   <<"message">> => string()
%% }
-type delegation_set_not_reusable() :: #{binary() => any()}.


%% Example:
%% delegation_set() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Id">> => string(),
%%   <<"NameServers">> => list(string())
%% }
-type delegation_set() :: #{binary() => any()}.


%% Example:
%% health_check_version_mismatch() :: #{
%%   <<"message">> => string()
%% }
-type health_check_version_mismatch() :: #{binary() => any()}.


%% Example:
%% create_traffic_policy_version_response() :: #{
%%   <<"Location">> => string(),
%%   <<"TrafficPolicy">> => traffic_policy()
%% }
-type create_traffic_policy_version_response() :: #{binary() => any()}.


%% Example:
%% create_query_logging_config_response() :: #{
%%   <<"Location">> => string(),
%%   <<"QueryLoggingConfig">> => query_logging_config()
%% }
-type create_query_logging_config_response() :: #{binary() => any()}.


%% Example:
%% query_logging_config() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"Id">> => string()
%% }
-type query_logging_config() :: #{binary() => any()}.


%% Example:
%% key_signing_key() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DNSKEYRecord">> => string(),
%%   <<"DSRecord">> => string(),
%%   <<"DigestAlgorithmMnemonic">> => string(),
%%   <<"DigestAlgorithmType">> => integer(),
%%   <<"DigestValue">> => string(),
%%   <<"Flag">> => integer(),
%%   <<"KeyTag">> => integer(),
%%   <<"KmsArn">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublicKey">> => string(),
%%   <<"SigningAlgorithmMnemonic">> => string(),
%%   <<"SigningAlgorithmType">> => integer(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type key_signing_key() :: #{binary() => any()}.


%% Example:
%% incompatible_version() :: #{
%%   <<"message">> => string()
%% }
-type incompatible_version() :: #{binary() => any()}.


%% Example:
%% list_hosted_zones_by_vpc_response() :: #{
%%   <<"HostedZoneSummaries">> => list(hosted_zone_summary()),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_hosted_zones_by_vpc_response() :: #{binary() => any()}.


%% Example:
%% change() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ResourceRecordSet">> => resource_record_set()
%% }
-type change() :: #{binary() => any()}.


%% Example:
%% traffic_policy_in_use() :: #{
%%   <<"message">> => string()
%% }
-type traffic_policy_in_use() :: #{binary() => any()}.

%% Example:
%% get_traffic_policy_instance_request() :: #{}
-type get_traffic_policy_instance_request() :: #{}.


%% Example:
%% dns_sec_status() :: #{
%%   <<"ServeSignature">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type dns_sec_status() :: #{binary() => any()}.


%% Example:
%% cloud_watch_alarm_configuration() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Threshold">> => float()
%% }
-type cloud_watch_alarm_configuration() :: #{binary() => any()}.


%% Example:
%% create_hosted_zone_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"DelegationSetId">> => string(),
%%   <<"HostedZoneConfig">> => hosted_zone_config(),
%%   <<"Name">> := string(),
%%   <<"VPC">> => vpc()
%% }
-type create_hosted_zone_request() :: #{binary() => any()}.


%% Example:
%% invalid_input() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_instance_request() :: #{}
-type delete_traffic_policy_instance_request() :: #{}.


%% Example:
%% hosted_zone_not_private() :: #{
%%   <<"message">> => string()
%% }
-type hosted_zone_not_private() :: #{binary() => any()}.


%% Example:
%% invalid_change_batch() :: #{
%%   <<"message">> => string(),
%%   <<"messages">> => list(string())
%% }
-type invalid_change_batch() :: #{binary() => any()}.

%% Example:
%% get_traffic_policy_instance_count_request() :: #{}
-type get_traffic_policy_instance_count_request() :: #{}.


%% Example:
%% too_many_traffic_policies() :: #{
%%   <<"message">> => string()
%% }
-type too_many_traffic_policies() :: #{binary() => any()}.

%% Example:
%% delete_health_check_request() :: #{}
-type delete_health_check_request() :: #{}.


%% Example:
%% create_traffic_policy_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"Document">> := string(),
%%   <<"Name">> := string()
%% }
-type create_traffic_policy_request() :: #{binary() => any()}.


%% Example:
%% get_reusable_delegation_set_limit_response() :: #{
%%   <<"Count">> => float(),
%%   <<"Limit">> => reusable_delegation_set_limit()
%% }
-type get_reusable_delegation_set_limit_response() :: #{binary() => any()}.


%% Example:
%% invalid_pagination_token() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_instances_by_policy_response() :: #{
%%   <<"HostedZoneIdMarker">> => string(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any()),
%%   <<"TrafficPolicyInstances">> => list(traffic_policy_instance())
%% }
-type list_traffic_policy_instances_by_policy_response() :: #{binary() => any()}.


%% Example:
%% no_such_health_check() :: #{
%%   <<"message">> => string()
%% }
-type no_such_health_check() :: #{binary() => any()}.


%% Example:
%% too_many_traffic_policy_versions_for_current_policy() :: #{
%%   <<"message">> => string()
%% }
-type too_many_traffic_policy_versions_for_current_policy() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_instances_by_policy_request() :: #{
%%   <<"HostedZoneIdMarker">> => string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyId">> := string(),
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any()),
%%   <<"TrafficPolicyVersion">> := integer()
%% }
-type list_traffic_policy_instances_by_policy_request() :: #{binary() => any()}.


%% Example:
%% hosted_zone_limit() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type hosted_zone_limit() :: #{binary() => any()}.


%% Example:
%% vpc() :: #{
%%   <<"VPCId">> => string(),
%%   <<"VPCRegion">> => list(any())
%% }
-type vpc() :: #{binary() => any()}.


%% Example:
%% no_such_traffic_policy_instance() :: #{
%%   <<"message">> => string()
%% }
-type no_such_traffic_policy_instance() :: #{binary() => any()}.


%% Example:
%% resource_record_set() :: #{
%%   <<"AliasTarget">> => alias_target(),
%%   <<"CidrRoutingConfig">> => cidr_routing_config(),
%%   <<"Failover">> => list(any()),
%%   <<"GeoLocation">> => geo_location(),
%%   <<"GeoProximityLocation">> => geo_proximity_location(),
%%   <<"HealthCheckId">> => string(),
%%   <<"MultiValueAnswer">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Region">> => list(any()),
%%   <<"ResourceRecords">> => list(resource_record()),
%%   <<"SetIdentifier">> => string(),
%%   <<"TTL">> => float(),
%%   <<"TrafficPolicyInstanceId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Weight">> => float()
%% }
-type resource_record_set() :: #{binary() => any()}.


%% Example:
%% get_traffic_policy_instance_response() :: #{
%%   <<"TrafficPolicyInstance">> => traffic_policy_instance()
%% }
-type get_traffic_policy_instance_response() :: #{binary() => any()}.


%% Example:
%% collection_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> => float()
%% }
-type collection_summary() :: #{binary() => any()}.


%% Example:
%% get_hosted_zone_limit_response() :: #{
%%   <<"Count">> => float(),
%%   <<"Limit">> => hosted_zone_limit()
%% }
-type get_hosted_zone_limit_response() :: #{binary() => any()}.


%% Example:
%% get_hosted_zone_count_response() :: #{
%%   <<"HostedZoneCount">> => float()
%% }
-type get_hosted_zone_count_response() :: #{binary() => any()}.


%% Example:
%% update_traffic_policy_comment_response() :: #{
%%   <<"TrafficPolicy">> => traffic_policy()
%% }
-type update_traffic_policy_comment_response() :: #{binary() => any()}.

%% Example:
%% delete_health_check_response() :: #{}
-type delete_health_check_response() :: #{}.


%% Example:
%% vpc_association_not_found() :: #{
%%   <<"message">> => string()
%% }
-type vpc_association_not_found() :: #{binary() => any()}.


%% Example:
%% delegation_set_not_available() :: #{
%%   <<"message">> => string()
%% }
-type delegation_set_not_available() :: #{binary() => any()}.


%% Example:
%% vpc_association_authorization_not_found() :: #{
%%   <<"message">> => string()
%% }
-type vpc_association_authorization_not_found() :: #{binary() => any()}.

%% Example:
%% change_tags_for_resource_response() :: #{}
-type change_tags_for_resource_response() :: #{}.

%% Example:
%% delete_reusable_delegation_set_request() :: #{}
-type delete_reusable_delegation_set_request() :: #{}.


%% Example:
%% associate_vpc_with_hosted_zone_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type associate_vpc_with_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% insufficient_cloud_watch_logs_resource_policy() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_cloud_watch_logs_resource_policy() :: #{binary() => any()}.


%% Example:
%% no_such_hosted_zone() :: #{
%%   <<"message">> => string()
%% }
-type no_such_hosted_zone() :: #{binary() => any()}.


%% Example:
%% list_traffic_policies_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyIdMarker">> => string(),
%%   <<"TrafficPolicySummaries">> => list(traffic_policy_summary())
%% }
-type list_traffic_policies_response() :: #{binary() => any()}.


%% Example:
%% list_reusable_delegation_sets_response() :: #{
%%   <<"DelegationSets">> => list(delegation_set()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextMarker">> => string()
%% }
-type list_reusable_delegation_sets_response() :: #{binary() => any()}.


%% Example:
%% invalid_key_signing_key_name() :: #{
%%   <<"message">> => string()
%% }
-type invalid_key_signing_key_name() :: #{binary() => any()}.


%% Example:
%% public_zone_vpc_association() :: #{
%%   <<"message">> => string()
%% }
-type public_zone_vpc_association() :: #{binary() => any()}.


%% Example:
%% create_health_check_response() :: #{
%%   <<"HealthCheck">> => health_check(),
%%   <<"Location">> => string()
%% }
-type create_health_check_response() :: #{binary() => any()}.


%% Example:
%% update_health_check_response() :: #{
%%   <<"HealthCheck">> => health_check()
%% }
-type update_health_check_response() :: #{binary() => any()}.


%% Example:
%% dns_sec_not_found() :: #{
%%   <<"message">> => string()
%% }
-type dns_sec_not_found() :: #{binary() => any()}.


%% Example:
%% status_report() :: #{
%%   <<"CheckedTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type status_report() :: #{binary() => any()}.


%% Example:
%% create_traffic_policy_instance_request() :: #{
%%   <<"HostedZoneId">> := string(),
%%   <<"Name">> := string(),
%%   <<"TTL">> := float(),
%%   <<"TrafficPolicyId">> := string(),
%%   <<"TrafficPolicyVersion">> := integer()
%% }
-type create_traffic_policy_instance_request() :: #{binary() => any()}.


%% Example:
%% change_batch() :: #{
%%   <<"Changes">> => list(change()),
%%   <<"Comment">> => string()
%% }
-type change_batch() :: #{binary() => any()}.


%% Example:
%% reusable_delegation_set_limit() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type reusable_delegation_set_limit() :: #{binary() => any()}.


%% Example:
%% health_check_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type health_check_already_exists() :: #{binary() => any()}.


%% Example:
%% no_such_delegation_set() :: #{
%%   <<"message">> => string()
%% }
-type no_such_delegation_set() :: #{binary() => any()}.


%% Example:
%% traffic_policy() :: #{
%%   <<"Comment">> => string(),
%%   <<"Document">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => integer()
%% }
-type traffic_policy() :: #{binary() => any()}.

%% Example:
%% get_health_check_count_request() :: #{}
-type get_health_check_count_request() :: #{}.


%% Example:
%% list_traffic_policy_instances_request() :: #{
%%   <<"HostedZoneIdMarker">> => string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any())
%% }
-type list_traffic_policy_instances_request() :: #{binary() => any()}.


%% Example:
%% invalid_argument() :: #{
%%   <<"message">> => string()
%% }
-type invalid_argument() :: #{binary() => any()}.


%% Example:
%% change_tags_for_resource_request() :: #{
%%   <<"AddTags">> => list(tag()),
%%   <<"RemoveTagKeys">> => list(string())
%% }
-type change_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% get_health_check_response() :: #{
%%   <<"HealthCheck">> => health_check()
%% }
-type get_health_check_response() :: #{binary() => any()}.


%% Example:
%% list_query_logging_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryLoggingConfigs">> => list(query_logging_config())
%% }
-type list_query_logging_configs_response() :: #{binary() => any()}.


%% Example:
%% change_cidr_collection_response() :: #{
%%   <<"Id">> => string()
%% }
-type change_cidr_collection_response() :: #{binary() => any()}.


%% Example:
%% too_many_traffic_policy_instances() :: #{
%%   <<"message">> => string()
%% }
-type too_many_traffic_policy_instances() :: #{binary() => any()}.


%% Example:
%% cidr_collection_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cidr_collection_in_use_exception() :: #{binary() => any()}.


%% Example:
%% linked_service() :: #{
%%   <<"Description">> => string(),
%%   <<"ServicePrincipal">> => string()
%% }
-type linked_service() :: #{binary() => any()}.


%% Example:
%% invalid_traffic_policy_document() :: #{
%%   <<"message">> => string()
%% }
-type invalid_traffic_policy_document() :: #{binary() => any()}.


%% Example:
%% delete_key_signing_key_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type delete_key_signing_key_response() :: #{binary() => any()}.


%% Example:
%% concurrent_modification() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resources_response() :: #{
%%   <<"ResourceTagSets">> => list(resource_tag_set())
%% }
-type list_tags_for_resources_response() :: #{binary() => any()}.

%% Example:
%% delete_vpc_association_authorization_response() :: #{}
-type delete_vpc_association_authorization_response() :: #{}.


%% Example:
%% list_geo_locations_response() :: #{
%%   <<"GeoLocationDetailsList">> => list(geo_location_details()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextContinentCode">> => string(),
%%   <<"NextCountryCode">> => string(),
%%   <<"NextSubdivisionCode">> => string()
%% }
-type list_geo_locations_response() :: #{binary() => any()}.


%% Example:
%% list_cidr_collections_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_cidr_collections_request() :: #{binary() => any()}.

%% Example:
%% get_dns_sec_request() :: #{}
-type get_dns_sec_request() :: #{}.


%% Example:
%% too_many_vpc_association_authorizations() :: #{
%%   <<"message">> => string()
%% }
-type too_many_vpc_association_authorizations() :: #{binary() => any()}.

%% Example:
%% get_hosted_zone_limit_request() :: #{}
-type get_hosted_zone_limit_request() :: #{}.


%% Example:
%% key_signing_key_with_active_status_not_found() :: #{
%%   <<"message">> => string()
%% }
-type key_signing_key_with_active_status_not_found() :: #{binary() => any()}.


%% Example:
%% list_cidr_blocks_request() :: #{
%%   <<"LocationName">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_cidr_blocks_request() :: #{binary() => any()}.


%% Example:
%% alias_target() :: #{
%%   <<"DNSName">> => string(),
%%   <<"EvaluateTargetHealth">> => boolean(),
%%   <<"HostedZoneId">> => string()
%% }
-type alias_target() :: #{binary() => any()}.


%% Example:
%% cidr_collection_change() :: #{
%%   <<"Action">> => list(any()),
%%   <<"CidrList">> => list(string()),
%%   <<"LocationName">> => string()
%% }
-type cidr_collection_change() :: #{binary() => any()}.


%% Example:
%% get_health_check_last_failure_reason_response() :: #{
%%   <<"HealthCheckObservations">> => list(health_check_observation())
%% }
-type get_health_check_last_failure_reason_response() :: #{binary() => any()}.


%% Example:
%% get_checker_ip_ranges_response() :: #{
%%   <<"CheckerIpRanges">> => list(string())
%% }
-type get_checker_ip_ranges_response() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_instances_response() :: #{
%%   <<"HostedZoneIdMarker">> => string(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any()),
%%   <<"TrafficPolicyInstances">> => list(traffic_policy_instance())
%% }
-type list_traffic_policy_instances_response() :: #{binary() => any()}.


%% Example:
%% no_such_cidr_collection_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_cidr_collection_exception() :: #{binary() => any()}.


%% Example:
%% invalid_signing_status() :: #{
%%   <<"message">> => string()
%% }
-type invalid_signing_status() :: #{binary() => any()}.


%% Example:
%% geo_proximity_location() :: #{
%%   <<"AWSRegion">> => string(),
%%   <<"Bias">> => integer(),
%%   <<"Coordinates">> => coordinates(),
%%   <<"LocalZoneGroup">> => string()
%% }
-type geo_proximity_location() :: #{binary() => any()}.


%% Example:
%% test_dns_answer_request() :: #{
%%   <<"EDNS0ClientSubnetIP">> => string(),
%%   <<"EDNS0ClientSubnetMask">> => string(),
%%   <<"HostedZoneId">> := string(),
%%   <<"RecordName">> := string(),
%%   <<"RecordType">> := list(any()),
%%   <<"ResolverIP">> => string()
%% }
-type test_dns_answer_request() :: #{binary() => any()}.

%% Example:
%% deactivate_key_signing_key_request() :: #{}
-type deactivate_key_signing_key_request() :: #{}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% delegation_set_in_use() :: #{
%%   <<"message">> => string()
%% }
-type delegation_set_in_use() :: #{binary() => any()}.


%% Example:
%% no_such_change() :: #{
%%   <<"message">> => string()
%% }
-type no_such_change() :: #{binary() => any()}.


%% Example:
%% get_geo_location_request() :: #{
%%   <<"ContinentCode">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"SubdivisionCode">> => string()
%% }
-type get_geo_location_request() :: #{binary() => any()}.


%% Example:
%% list_cidr_blocks_response() :: #{
%%   <<"CidrBlocks">> => list(cidr_block_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_cidr_blocks_response() :: #{binary() => any()}.


%% Example:
%% cidr_block_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cidr_block_in_use_exception() :: #{binary() => any()}.


%% Example:
%% key_signing_key_in_use() :: #{
%%   <<"message">> => string()
%% }
-type key_signing_key_in_use() :: #{binary() => any()}.


%% Example:
%% limits_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type limits_exceeded() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_instances_by_hosted_zone_request() :: #{
%%   <<"HostedZoneId">> := string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any())
%% }
-type list_traffic_policy_instances_by_hosted_zone_request() :: #{binary() => any()}.


%% Example:
%% no_such_query_logging_config() :: #{
%%   <<"message">> => string()
%% }
-type no_such_query_logging_config() :: #{binary() => any()}.


%% Example:
%% traffic_policy_instance_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type traffic_policy_instance_already_exists() :: #{binary() => any()}.


%% Example:
%% traffic_policy_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type traffic_policy_already_exists() :: #{binary() => any()}.

%% Example:
%% delete_hosted_zone_request() :: #{}
-type delete_hosted_zone_request() :: #{}.


%% Example:
%% list_cidr_collections_response() :: #{
%%   <<"CidrCollections">> => list(collection_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_cidr_collections_response() :: #{binary() => any()}.

%% Example:
%% enable_hosted_zone_dns_sec_request() :: #{}
-type enable_hosted_zone_dns_sec_request() :: #{}.


%% Example:
%% list_health_checks_response() :: #{
%%   <<"HealthChecks">> => list(health_check()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextMarker">> => string()
%% }
-type list_health_checks_response() :: #{binary() => any()}.


%% Example:
%% create_traffic_policy_response() :: #{
%%   <<"Location">> => string(),
%%   <<"TrafficPolicy">> => traffic_policy()
%% }
-type create_traffic_policy_response() :: #{binary() => any()}.


%% Example:
%% get_hosted_zone_response() :: #{
%%   <<"DelegationSet">> => delegation_set(),
%%   <<"HostedZone">> => hosted_zone(),
%%   <<"VPCs">> => list(vpc())
%% }
-type get_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% delete_hosted_zone_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type delete_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% delegation_set_already_reusable() :: #{
%%   <<"message">> => string()
%% }
-type delegation_set_already_reusable() :: #{binary() => any()}.


%% Example:
%% change_resource_record_sets_request() :: #{
%%   <<"ChangeBatch">> := change_batch()
%% }
-type change_resource_record_sets_request() :: #{binary() => any()}.


%% Example:
%% hosted_zone_owner() :: #{
%%   <<"OwningAccount">> => string(),
%%   <<"OwningService">> => string()
%% }
-type hosted_zone_owner() :: #{binary() => any()}.


%% Example:
%% create_query_logging_config_request() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> := string(),
%%   <<"HostedZoneId">> := string()
%% }
-type create_query_logging_config_request() :: #{binary() => any()}.


%% Example:
%% conflicting_domain_exists() :: #{
%%   <<"message">> => string()
%% }
-type conflicting_domain_exists() :: #{binary() => any()}.


%% Example:
%% hosted_zone_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type hosted_zone_already_exists() :: #{binary() => any()}.


%% Example:
%% enable_hosted_zone_dns_sec_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type enable_hosted_zone_dns_sec_response() :: #{binary() => any()}.


%% Example:
%% hosted_zone_not_found() :: #{
%%   <<"message">> => string()
%% }
-type hosted_zone_not_found() :: #{binary() => any()}.


%% Example:
%% resource_tag_set() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type resource_tag_set() :: #{binary() => any()}.

%% Example:
%% activate_key_signing_key_request() :: #{}
-type activate_key_signing_key_request() :: #{}.


%% Example:
%% update_traffic_policy_comment_request() :: #{
%%   <<"Comment">> := string()
%% }
-type update_traffic_policy_comment_request() :: #{binary() => any()}.


%% Example:
%% health_check_observation() :: #{
%%   <<"IPAddress">> => string(),
%%   <<"Region">> => list(any()),
%%   <<"StatusReport">> => status_report()
%% }
-type health_check_observation() :: #{binary() => any()}.


%% Example:
%% alarm_identifier() :: #{
%%   <<"Name">> => string(),
%%   <<"Region">> => list(any())
%% }
-type alarm_identifier() :: #{binary() => any()}.


%% Example:
%% create_health_check_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"HealthCheckConfig">> := health_check_config()
%% }
-type create_health_check_request() :: #{binary() => any()}.


%% Example:
%% no_such_cloud_watch_logs_log_group() :: #{
%%   <<"message">> => string()
%% }
-type no_such_cloud_watch_logs_log_group() :: #{binary() => any()}.


%% Example:
%% change_resource_record_sets_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type change_resource_record_sets_response() :: #{binary() => any()}.


%% Example:
%% delete_vpc_association_authorization_request() :: #{
%%   <<"VPC">> := vpc()
%% }
-type delete_vpc_association_authorization_request() :: #{binary() => any()}.


%% Example:
%% account_limit() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type account_limit() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceTagSet">> => resource_tag_set()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% change_info() :: #{
%%   <<"Comment">> => string(),
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubmittedAt">> => non_neg_integer()
%% }
-type change_info() :: #{binary() => any()}.

%% Example:
%% delete_cidr_collection_response() :: #{}
-type delete_cidr_collection_response() :: #{}.


%% Example:
%% list_hosted_zones_by_name_response() :: #{
%%   <<"DNSName">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"HostedZones">> => list(hosted_zone()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextDNSName">> => string(),
%%   <<"NextHostedZoneId">> => string()
%% }
-type list_hosted_zones_by_name_response() :: #{binary() => any()}.


%% Example:
%% health_check() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"CloudWatchAlarmConfiguration">> => cloud_watch_alarm_configuration(),
%%   <<"HealthCheckConfig">> => health_check_config(),
%%   <<"HealthCheckVersion">> => float(),
%%   <<"Id">> => string(),
%%   <<"LinkedService">> => linked_service()
%% }
-type health_check() :: #{binary() => any()}.


%% Example:
%% list_hosted_zones_response() :: #{
%%   <<"HostedZones">> => list(hosted_zone()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextMarker">> => string()
%% }
-type list_hosted_zones_response() :: #{binary() => any()}.

%% Example:
%% get_change_request() :: #{}
-type get_change_request() :: #{}.


%% Example:
%% invalid_vpc_id() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_id() :: #{binary() => any()}.


%% Example:
%% create_vpc_association_authorization_response() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"VPC">> => vpc()
%% }
-type create_vpc_association_authorization_response() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_response() :: #{}
-type delete_traffic_policy_response() :: #{}.


%% Example:
%% list_cidr_locations_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_cidr_locations_request() :: #{binary() => any()}.

%% Example:
%% delete_query_logging_config_response() :: #{}
-type delete_query_logging_config_response() :: #{}.


%% Example:
%% update_traffic_policy_instance_response() :: #{
%%   <<"TrafficPolicyInstance">> => traffic_policy_instance()
%% }
-type update_traffic_policy_instance_response() :: #{binary() => any()}.


%% Example:
%% create_traffic_policy_instance_response() :: #{
%%   <<"Location">> => string(),
%%   <<"TrafficPolicyInstance">> => traffic_policy_instance()
%% }
-type create_traffic_policy_instance_response() :: #{binary() => any()}.


%% Example:
%% create_reusable_delegation_set_response() :: #{
%%   <<"DelegationSet">> => delegation_set(),
%%   <<"Location">> => string()
%% }
-type create_reusable_delegation_set_response() :: #{binary() => any()}.


%% Example:
%% get_health_check_count_response() :: #{
%%   <<"HealthCheckCount">> => float()
%% }
-type get_health_check_count_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_association_authorizations_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_vpc_association_authorizations_request() :: #{binary() => any()}.


%% Example:
%% list_geo_locations_request() :: #{
%%   <<"MaxItems">> => [integer()],
%%   <<"StartContinentCode">> => string(),
%%   <<"StartCountryCode">> => string(),
%%   <<"StartSubdivisionCode">> => string()
%% }
-type list_geo_locations_request() :: #{binary() => any()}.

%% Example:
%% delete_query_logging_config_request() :: #{}
-type delete_query_logging_config_request() :: #{}.

%% Example:
%% get_hosted_zone_request() :: #{}
-type get_hosted_zone_request() :: #{}.


%% Example:
%% update_health_check_request() :: #{
%%   <<"AlarmIdentifier">> => alarm_identifier(),
%%   <<"ChildHealthChecks">> => list(string()),
%%   <<"Disabled">> => boolean(),
%%   <<"EnableSNI">> => boolean(),
%%   <<"FailureThreshold">> => integer(),
%%   <<"FullyQualifiedDomainName">> => string(),
%%   <<"HealthCheckVersion">> => float(),
%%   <<"HealthThreshold">> => integer(),
%%   <<"IPAddress">> => string(),
%%   <<"InsufficientDataHealthStatus">> => list(any()),
%%   <<"Inverted">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"Regions">> => list(list(any())()),
%%   <<"ResetElements">> => list(list(any())()),
%%   <<"ResourcePath">> => string(),
%%   <<"SearchString">> => string()
%% }
-type update_health_check_request() :: #{binary() => any()}.


%% Example:
%% create_key_signing_key_response() :: #{
%%   <<"ChangeInfo">> => change_info(),
%%   <<"KeySigningKey">> => key_signing_key(),
%%   <<"Location">> => string()
%% }
-type create_key_signing_key_response() :: #{binary() => any()}.


%% Example:
%% not_authorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.

%% Example:
%% get_account_limit_request() :: #{}
-type get_account_limit_request() :: #{}.


%% Example:
%% geo_location() :: #{
%%   <<"ContinentCode">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"SubdivisionCode">> => string()
%% }
-type geo_location() :: #{binary() => any()}.


%% Example:
%% get_traffic_policy_instance_count_response() :: #{
%%   <<"TrafficPolicyInstanceCount">> => integer()
%% }
-type get_traffic_policy_instance_count_response() :: #{binary() => any()}.


%% Example:
%% hosted_zone_summary() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => hosted_zone_owner()
%% }
-type hosted_zone_summary() :: #{binary() => any()}.


%% Example:
%% get_traffic_policy_response() :: #{
%%   <<"TrafficPolicy">> => traffic_policy()
%% }
-type get_traffic_policy_response() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_versions_request() :: #{
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyVersionMarker">> => string()
%% }
-type list_traffic_policy_versions_request() :: #{binary() => any()}.


%% Example:
%% list_vpc_association_authorizations_response() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"VPCs">> => list(vpc())
%% }
-type list_vpc_association_authorizations_response() :: #{binary() => any()}.

%% Example:
%% get_hosted_zone_count_request() :: #{}
-type get_hosted_zone_count_request() :: #{}.

%% Example:
%% get_reusable_delegation_set_limit_request() :: #{}
-type get_reusable_delegation_set_limit_request() :: #{}.


%% Example:
%% list_traffic_policy_instances_by_hosted_zone_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicyInstanceNameMarker">> => string(),
%%   <<"TrafficPolicyInstanceTypeMarker">> => list(any()),
%%   <<"TrafficPolicyInstances">> => list(traffic_policy_instance())
%% }
-type list_traffic_policy_instances_by_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% invalid_domain_name() :: #{
%%   <<"message">> => string()
%% }
-type invalid_domain_name() :: #{binary() => any()}.


%% Example:
%% traffic_policy_summary() :: #{
%%   <<"Id">> => string(),
%%   <<"LatestVersion">> => integer(),
%%   <<"Name">> => string(),
%%   <<"TrafficPolicyCount">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type traffic_policy_summary() :: #{binary() => any()}.


%% Example:
%% disable_hosted_zone_dns_sec_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type disable_hosted_zone_dns_sec_response() :: #{binary() => any()}.


%% Example:
%% no_such_geo_location() :: #{
%%   <<"message">> => string()
%% }
-type no_such_geo_location() :: #{binary() => any()}.


%% Example:
%% traffic_policy_instance() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string(),
%%   <<"TTL">> => float(),
%%   <<"TrafficPolicyId">> => string(),
%%   <<"TrafficPolicyType">> => list(any()),
%%   <<"TrafficPolicyVersion">> => integer()
%% }
-type traffic_policy_instance() :: #{binary() => any()}.


%% Example:
%% create_cidr_collection_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"Name">> := string()
%% }
-type create_cidr_collection_request() :: #{binary() => any()}.


%% Example:
%% no_such_cidr_location_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_cidr_location_exception() :: #{binary() => any()}.


%% Example:
%% invalid_kms_arn() :: #{
%%   <<"message">> => string()
%% }
-type invalid_kms_arn() :: #{binary() => any()}.


%% Example:
%% create_cidr_collection_response() :: #{
%%   <<"Collection">> => cidr_collection(),
%%   <<"Location">> => string()
%% }
-type create_cidr_collection_response() :: #{binary() => any()}.


%% Example:
%% get_dns_sec_response() :: #{
%%   <<"KeySigningKeys">> => list(key_signing_key()),
%%   <<"Status">> => dns_sec_status()
%% }
-type get_dns_sec_response() :: #{binary() => any()}.


%% Example:
%% list_query_logging_configs_request() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_query_logging_configs_request() :: #{binary() => any()}.


%% Example:
%% create_key_signing_key_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"HostedZoneId">> := string(),
%%   <<"KeyManagementServiceArn">> := string(),
%%   <<"Name">> := string(),
%%   <<"Status">> := string()
%% }
-type create_key_signing_key_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resources_request() :: #{
%%   <<"ResourceIds">> := list(string())
%% }
-type list_tags_for_resources_request() :: #{binary() => any()}.


%% Example:
%% list_cidr_locations_response() :: #{
%%   <<"CidrLocations">> => list(location_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_cidr_locations_response() :: #{binary() => any()}.


%% Example:
%% list_hosted_zones_by_vpc_request() :: #{
%%   <<"MaxItems">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"VPCId">> := string(),
%%   <<"VPCRegion">> := list(any())
%% }
-type list_hosted_zones_by_vpc_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_hosted_zone_comment_request() :: #{
%%   <<"Comment">> => string()
%% }
-type update_hosted_zone_comment_request() :: #{binary() => any()}.


%% Example:
%% list_hosted_zones_request() :: #{
%%   <<"DelegationSetId">> => string(),
%%   <<"HostedZoneType">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()]
%% }
-type list_hosted_zones_request() :: #{binary() => any()}.


%% Example:
%% too_many_hosted_zones() :: #{
%%   <<"message">> => string()
%% }
-type too_many_hosted_zones() :: #{binary() => any()}.


%% Example:
%% get_geo_location_response() :: #{
%%   <<"GeoLocationDetails">> => geo_location_details()
%% }
-type get_geo_location_response() :: #{binary() => any()}.


%% Example:
%% get_reusable_delegation_set_response() :: #{
%%   <<"DelegationSet">> => delegation_set()
%% }
-type get_reusable_delegation_set_response() :: #{binary() => any()}.


%% Example:
%% cidr_routing_config() :: #{
%%   <<"CollectionId">> => string(),
%%   <<"LocationName">> => string()
%% }
-type cidr_routing_config() :: #{binary() => any()}.


%% Example:
%% health_check_config() :: #{
%%   <<"AlarmIdentifier">> => alarm_identifier(),
%%   <<"ChildHealthChecks">> => list(string()),
%%   <<"Disabled">> => boolean(),
%%   <<"EnableSNI">> => boolean(),
%%   <<"FailureThreshold">> => integer(),
%%   <<"FullyQualifiedDomainName">> => string(),
%%   <<"HealthThreshold">> => integer(),
%%   <<"IPAddress">> => string(),
%%   <<"InsufficientDataHealthStatus">> => list(any()),
%%   <<"Inverted">> => boolean(),
%%   <<"MeasureLatency">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"Regions">> => list(list(any())()),
%%   <<"RequestInterval">> => integer(),
%%   <<"ResourcePath">> => string(),
%%   <<"RoutingControlArn">> => string(),
%%   <<"SearchString">> => string(),
%%   <<"Type">> => list(any())
%% }
-type health_check_config() :: #{binary() => any()}.

%% Example:
%% disable_hosted_zone_dns_sec_request() :: #{}
-type disable_hosted_zone_dns_sec_request() :: #{}.

%% Example:
%% delete_reusable_delegation_set_response() :: #{}
-type delete_reusable_delegation_set_response() :: #{}.


%% Example:
%% key_signing_key_in_parent_d_s_record() :: #{
%%   <<"message">> => string()
%% }
-type key_signing_key_in_parent_d_s_record() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_health_check_status_request() :: #{}
-type get_health_check_status_request() :: #{}.


%% Example:
%% hosted_zone() :: #{
%%   <<"CallerReference">> => string(),
%%   <<"Config">> => hosted_zone_config(),
%%   <<"Id">> => string(),
%%   <<"LinkedService">> => linked_service(),
%%   <<"Name">> => string(),
%%   <<"ResourceRecordSetCount">> => float()
%% }
-type hosted_zone() :: #{binary() => any()}.


%% Example:
%% list_traffic_policy_versions_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"TrafficPolicies">> => list(traffic_policy()),
%%   <<"TrafficPolicyVersionMarker">> => string()
%% }
-type list_traffic_policy_versions_response() :: #{binary() => any()}.


%% Example:
%% list_resource_record_sets_request() :: #{
%%   <<"MaxItems">> => [integer()],
%%   <<"StartRecordIdentifier">> => string(),
%%   <<"StartRecordName">> => string(),
%%   <<"StartRecordType">> => list(any())
%% }
-type list_resource_record_sets_request() :: #{binary() => any()}.

%% Example:
%% delete_cidr_collection_request() :: #{}
-type delete_cidr_collection_request() :: #{}.


%% Example:
%% location_summary() :: #{
%%   <<"LocationName">> => string()
%% }
-type location_summary() :: #{binary() => any()}.


%% Example:
%% hosted_zone_partially_delegated() :: #{
%%   <<"message">> => string()
%% }
-type hosted_zone_partially_delegated() :: #{binary() => any()}.


%% Example:
%% cidr_collection_version_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cidr_collection_version_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% delete_key_signing_key_request() :: #{}
-type delete_key_signing_key_request() :: #{}.


%% Example:
%% last_vpc_association() :: #{
%%   <<"message">> => string()
%% }
-type last_vpc_association() :: #{binary() => any()}.


%% Example:
%% get_account_limit_response() :: #{
%%   <<"Count">> => float(),
%%   <<"Limit">> => account_limit()
%% }
-type get_account_limit_response() :: #{binary() => any()}.


%% Example:
%% list_reusable_delegation_sets_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()]
%% }
-type list_reusable_delegation_sets_request() :: #{binary() => any()}.


%% Example:
%% cidr_collection_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cidr_collection_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% no_such_traffic_policy() :: #{
%%   <<"message">> => string()
%% }
-type no_such_traffic_policy() :: #{binary() => any()}.


%% Example:
%% disassociate_vpc_from_hosted_zone_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type disassociate_vpc_from_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type dimension() :: #{binary() => any()}.


%% Example:
%% prior_request_not_complete() :: #{
%%   <<"message">> => string()
%% }
-type prior_request_not_complete() :: #{binary() => any()}.


%% Example:
%% invalid_key_signing_key_status() :: #{
%%   <<"message">> => string()
%% }
-type invalid_key_signing_key_status() :: #{binary() => any()}.


%% Example:
%% disassociate_vpc_from_hosted_zone_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"VPC">> := vpc()
%% }
-type disassociate_vpc_from_hosted_zone_request() :: #{binary() => any()}.


%% Example:
%% list_hosted_zones_by_name_request() :: #{
%%   <<"DNSName">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"MaxItems">> => [integer()]
%% }
-type list_hosted_zones_by_name_request() :: #{binary() => any()}.


%% Example:
%% no_such_key_signing_key() :: #{
%%   <<"message">> => string()
%% }
-type no_such_key_signing_key() :: #{binary() => any()}.


%% Example:
%% update_traffic_policy_instance_request() :: #{
%%   <<"TTL">> := float(),
%%   <<"TrafficPolicyId">> := string(),
%%   <<"TrafficPolicyVersion">> := integer()
%% }
-type update_traffic_policy_instance_request() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_request() :: #{}
-type delete_traffic_policy_request() :: #{}.


%% Example:
%% coordinates() :: #{
%%   <<"Latitude">> => string(),
%%   <<"Longitude">> => string()
%% }
-type coordinates() :: #{binary() => any()}.


%% Example:
%% get_query_logging_config_response() :: #{
%%   <<"QueryLoggingConfig">> => query_logging_config()
%% }
-type get_query_logging_config_response() :: #{binary() => any()}.


%% Example:
%% cidr_collection() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> => float()
%% }
-type cidr_collection() :: #{binary() => any()}.

%% Example:
%% get_traffic_policy_request() :: #{}
-type get_traffic_policy_request() :: #{}.


%% Example:
%% activate_key_signing_key_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type activate_key_signing_key_response() :: #{binary() => any()}.


%% Example:
%% query_logging_config_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type query_logging_config_already_exists() :: #{binary() => any()}.

%% Example:
%% get_health_check_request() :: #{}
-type get_health_check_request() :: #{}.


%% Example:
%% resource_record() :: #{
%%   <<"Value">> => string()
%% }
-type resource_record() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_instance_response() :: #{}
-type delete_traffic_policy_instance_response() :: #{}.


%% Example:
%% too_many_key_signing_keys() :: #{
%%   <<"message">> => string()
%% }
-type too_many_key_signing_keys() :: #{binary() => any()}.


%% Example:
%% key_signing_key_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type key_signing_key_already_exists() :: #{binary() => any()}.


%% Example:
%% get_health_check_status_response() :: #{
%%   <<"HealthCheckObservations">> => list(health_check_observation())
%% }
-type get_health_check_status_response() :: #{binary() => any()}.


%% Example:
%% list_resource_record_sets_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"MaxItems">> => [integer()],
%%   <<"NextRecordIdentifier">> => string(),
%%   <<"NextRecordName">> => string(),
%%   <<"NextRecordType">> => list(any()),
%%   <<"ResourceRecordSets">> => list(resource_record_set())
%% }
-type list_resource_record_sets_response() :: #{binary() => any()}.

%% Example:
%% get_reusable_delegation_set_request() :: #{}
-type get_reusable_delegation_set_request() :: #{}.

%% Example:
%% get_health_check_last_failure_reason_request() :: #{}
-type get_health_check_last_failure_reason_request() :: #{}.


%% Example:
%% hosted_zone_config() :: #{
%%   <<"Comment">> => string(),
%%   <<"PrivateZone">> => boolean()
%% }
-type hosted_zone_config() :: #{binary() => any()}.


%% Example:
%% create_reusable_delegation_set_request() :: #{
%%   <<"CallerReference">> := string(),
%%   <<"HostedZoneId">> => string()
%% }
-type create_reusable_delegation_set_request() :: #{binary() => any()}.


%% Example:
%% associate_vpc_with_hosted_zone_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"VPC">> := vpc()
%% }
-type associate_vpc_with_hosted_zone_request() :: #{binary() => any()}.


%% Example:
%% list_health_checks_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => [integer()]
%% }
-type list_health_checks_request() :: #{binary() => any()}.


%% Example:
%% conflicting_types() :: #{
%%   <<"message">> => string()
%% }
-type conflicting_types() :: #{binary() => any()}.


%% Example:
%% health_check_in_use() :: #{
%%   <<"message">> => string()
%% }
-type health_check_in_use() :: #{binary() => any()}.


%% Example:
%% deactivate_key_signing_key_response() :: #{
%%   <<"ChangeInfo">> => change_info()
%% }
-type deactivate_key_signing_key_response() :: #{binary() => any()}.


%% Example:
%% too_many_health_checks() :: #{
%%   <<"message">> => string()
%% }
-type too_many_health_checks() :: #{binary() => any()}.


%% Example:
%% create_hosted_zone_response() :: #{
%%   <<"ChangeInfo">> => change_info(),
%%   <<"DelegationSet">> => delegation_set(),
%%   <<"HostedZone">> => hosted_zone(),
%%   <<"Location">> => string(),
%%   <<"VPC">> => vpc()
%% }
-type create_hosted_zone_response() :: #{binary() => any()}.


%% Example:
%% test_dns_answer_response() :: #{
%%   <<"Nameserver">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"RecordData">> => list(string()),
%%   <<"RecordName">> => string(),
%%   <<"RecordType">> => list(any()),
%%   <<"ResponseCode">> => string()
%% }
-type test_dns_answer_response() :: #{binary() => any()}.


%% Example:
%% cidr_block_summary() :: #{
%%   <<"CidrBlock">> => string(),
%%   <<"LocationName">> => string()
%% }
-type cidr_block_summary() :: #{binary() => any()}.


%% Example:
%% delegation_set_already_created() :: #{
%%   <<"message">> => string()
%% }
-type delegation_set_already_created() :: #{binary() => any()}.


%% Example:
%% create_traffic_policy_version_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"Document">> := string()
%% }
-type create_traffic_policy_version_request() :: #{binary() => any()}.


%% Example:
%% hosted_zone_not_empty() :: #{
%%   <<"message">> => string()
%% }
-type hosted_zone_not_empty() :: #{binary() => any()}.

%% Example:
%% get_checker_ip_ranges_request() :: #{}
-type get_checker_ip_ranges_request() :: #{}.


%% Example:
%% change_cidr_collection_request() :: #{
%%   <<"Changes">> := list(cidr_collection_change()),
%%   <<"CollectionVersion">> => float()
%% }
-type change_cidr_collection_request() :: #{binary() => any()}.

-type activate_key_signing_key_errors() ::
    no_such_key_signing_key() | 
    invalid_key_signing_key_status() | 
    invalid_kms_arn() | 
    invalid_signing_status() | 
    concurrent_modification() | 
    invalid_input().

-type associate_vpc_with_hosted_zone_errors() ::
    prior_request_not_complete() | 
    not_authorized_exception() | 
    invalid_vpc_id() | 
    conflicting_domain_exists() | 
    limits_exceeded() | 
    public_zone_vpc_association() | 
    no_such_hosted_zone() | 
    invalid_input().

-type change_cidr_collection_errors() ::
    cidr_collection_version_mismatch_exception() | 
    limits_exceeded() | 
    cidr_block_in_use_exception() | 
    no_such_cidr_collection_exception() | 
    concurrent_modification() | 
    invalid_input().

-type change_resource_record_sets_errors() ::
    prior_request_not_complete() | 
    no_such_hosted_zone() | 
    no_such_health_check() | 
    invalid_change_batch() | 
    invalid_input().

-type change_tags_for_resource_errors() ::
    prior_request_not_complete() | 
    throttling_exception() | 
    no_such_hosted_zone() | 
    no_such_health_check() | 
    invalid_input().

-type create_cidr_collection_errors() ::
    cidr_collection_already_exists_exception() | 
    limits_exceeded() | 
    concurrent_modification() | 
    invalid_input().

-type create_health_check_errors() ::
    too_many_health_checks() | 
    health_check_already_exists() | 
    invalid_input().

-type create_hosted_zone_errors() ::
    too_many_hosted_zones() | 
    invalid_domain_name() | 
    invalid_vpc_id() | 
    hosted_zone_already_exists() | 
    conflicting_domain_exists() | 
    no_such_delegation_set() | 
    delegation_set_not_available() | 
    invalid_input() | 
    delegation_set_not_reusable().

-type create_key_signing_key_errors() ::
    key_signing_key_already_exists() | 
    too_many_key_signing_keys() | 
    invalid_key_signing_key_status() | 
    invalid_kms_arn() | 
    invalid_signing_status() | 
    concurrent_modification() | 
    invalid_argument() | 
    invalid_key_signing_key_name() | 
    no_such_hosted_zone() | 
    invalid_input().

-type create_query_logging_config_errors() ::
    query_logging_config_already_exists() | 
    no_such_cloud_watch_logs_log_group() | 
    concurrent_modification() | 
    no_such_hosted_zone() | 
    insufficient_cloud_watch_logs_resource_policy() | 
    invalid_input().

-type create_reusable_delegation_set_errors() ::
    delegation_set_already_created() | 
    hosted_zone_not_found() | 
    delegation_set_already_reusable() | 
    limits_exceeded() | 
    invalid_argument() | 
    delegation_set_not_available() | 
    invalid_input().

-type create_traffic_policy_errors() ::
    traffic_policy_already_exists() | 
    invalid_traffic_policy_document() | 
    too_many_traffic_policies() | 
    invalid_input().

-type create_traffic_policy_instance_errors() ::
    no_such_traffic_policy() | 
    traffic_policy_instance_already_exists() | 
    too_many_traffic_policy_instances() | 
    no_such_hosted_zone() | 
    invalid_input().

-type create_traffic_policy_version_errors() ::
    no_such_traffic_policy() | 
    concurrent_modification() | 
    invalid_traffic_policy_document() | 
    too_many_traffic_policy_versions_for_current_policy() | 
    invalid_input().

-type create_vpc_association_authorization_errors() ::
    invalid_vpc_id() | 
    too_many_vpc_association_authorizations() | 
    concurrent_modification() | 
    no_such_hosted_zone() | 
    invalid_input().

-type deactivate_key_signing_key_errors() ::
    no_such_key_signing_key() | 
    invalid_key_signing_key_status() | 
    key_signing_key_in_parent_d_s_record() | 
    key_signing_key_in_use() | 
    invalid_signing_status() | 
    concurrent_modification() | 
    invalid_input().

-type delete_cidr_collection_errors() ::
    no_such_cidr_collection_exception() | 
    concurrent_modification() | 
    cidr_collection_in_use_exception() | 
    invalid_input().

-type delete_health_check_errors() ::
    health_check_in_use() | 
    no_such_health_check() | 
    invalid_input().

-type delete_hosted_zone_errors() ::
    hosted_zone_not_empty() | 
    prior_request_not_complete() | 
    invalid_domain_name() | 
    no_such_hosted_zone() | 
    invalid_input().

-type delete_key_signing_key_errors() ::
    no_such_key_signing_key() | 
    invalid_key_signing_key_status() | 
    invalid_kms_arn() | 
    invalid_signing_status() | 
    concurrent_modification() | 
    invalid_input().

-type delete_query_logging_config_errors() ::
    no_such_query_logging_config() | 
    concurrent_modification() | 
    invalid_input().

-type delete_reusable_delegation_set_errors() ::
    delegation_set_in_use() | 
    no_such_delegation_set() | 
    invalid_input() | 
    delegation_set_not_reusable().

-type delete_traffic_policy_errors() ::
    no_such_traffic_policy() | 
    concurrent_modification() | 
    invalid_input() | 
    traffic_policy_in_use().

-type delete_traffic_policy_instance_errors() ::
    prior_request_not_complete() | 
    no_such_traffic_policy_instance() | 
    invalid_input().

-type delete_vpc_association_authorization_errors() ::
    invalid_vpc_id() | 
    concurrent_modification() | 
    no_such_hosted_zone() | 
    vpc_association_authorization_not_found() | 
    invalid_input().

-type disable_hosted_zone_dns_sec_errors() ::
    invalid_key_signing_key_status() | 
    key_signing_key_in_parent_d_s_record() | 
    invalid_kms_arn() | 
    concurrent_modification() | 
    invalid_argument() | 
    dns_sec_not_found() | 
    no_such_hosted_zone() | 
    invalid_input().

-type disassociate_vpc_from_hosted_zone_errors() ::
    last_vpc_association() | 
    invalid_vpc_id() | 
    no_such_hosted_zone() | 
    vpc_association_not_found() | 
    invalid_input().

-type enable_hosted_zone_dns_sec_errors() ::
    invalid_key_signing_key_status() | 
    hosted_zone_partially_delegated() | 
    invalid_kms_arn() | 
    key_signing_key_with_active_status_not_found() | 
    concurrent_modification() | 
    invalid_argument() | 
    dns_sec_not_found() | 
    no_such_hosted_zone() | 
    invalid_input().

-type get_account_limit_errors() ::
    invalid_input().

-type get_change_errors() ::
    no_such_change() | 
    invalid_input().

-type get_dns_sec_errors() ::
    invalid_argument() | 
    no_such_hosted_zone() | 
    invalid_input().

-type get_geo_location_errors() ::
    no_such_geo_location() | 
    invalid_input().

-type get_health_check_errors() ::
    no_such_health_check() | 
    invalid_input() | 
    incompatible_version().

-type get_health_check_last_failure_reason_errors() ::
    no_such_health_check() | 
    invalid_input().

-type get_health_check_status_errors() ::
    no_such_health_check() | 
    invalid_input().

-type get_hosted_zone_errors() ::
    no_such_hosted_zone() | 
    invalid_input().

-type get_hosted_zone_count_errors() ::
    invalid_input().

-type get_hosted_zone_limit_errors() ::
    no_such_hosted_zone() | 
    hosted_zone_not_private() | 
    invalid_input().

-type get_query_logging_config_errors() ::
    no_such_query_logging_config() | 
    invalid_input().

-type get_reusable_delegation_set_errors() ::
    no_such_delegation_set() | 
    invalid_input() | 
    delegation_set_not_reusable().

-type get_reusable_delegation_set_limit_errors() ::
    no_such_delegation_set() | 
    invalid_input().

-type get_traffic_policy_errors() ::
    no_such_traffic_policy() | 
    invalid_input().

-type get_traffic_policy_instance_errors() ::
    no_such_traffic_policy_instance() | 
    invalid_input().

-type list_cidr_blocks_errors() ::
    no_such_cidr_location_exception() | 
    no_such_cidr_collection_exception() | 
    invalid_input().

-type list_cidr_collections_errors() ::
    invalid_input().

-type list_cidr_locations_errors() ::
    no_such_cidr_collection_exception() | 
    invalid_input().

-type list_geo_locations_errors() ::
    invalid_input().

-type list_health_checks_errors() ::
    invalid_input() | 
    incompatible_version().

-type list_hosted_zones_errors() ::
    no_such_delegation_set() | 
    invalid_input() | 
    delegation_set_not_reusable().

-type list_hosted_zones_by_name_errors() ::
    invalid_domain_name() | 
    invalid_input().

-type list_hosted_zones_by_vpc_errors() ::
    invalid_pagination_token() | 
    invalid_input().

-type list_query_logging_configs_errors() ::
    no_such_hosted_zone() | 
    invalid_pagination_token() | 
    invalid_input().

-type list_resource_record_sets_errors() ::
    no_such_hosted_zone() | 
    invalid_input().

-type list_reusable_delegation_sets_errors() ::
    invalid_input().

-type list_tags_for_resource_errors() ::
    prior_request_not_complete() | 
    throttling_exception() | 
    no_such_hosted_zone() | 
    no_such_health_check() | 
    invalid_input().

-type list_tags_for_resources_errors() ::
    prior_request_not_complete() | 
    throttling_exception() | 
    no_such_hosted_zone() | 
    no_such_health_check() | 
    invalid_input().

-type list_traffic_policies_errors() ::
    invalid_input().

-type list_traffic_policy_instances_errors() ::
    no_such_traffic_policy_instance() | 
    invalid_input().

-type list_traffic_policy_instances_by_hosted_zone_errors() ::
    no_such_hosted_zone() | 
    no_such_traffic_policy_instance() | 
    invalid_input().

-type list_traffic_policy_instances_by_policy_errors() ::
    no_such_traffic_policy() | 
    no_such_traffic_policy_instance() | 
    invalid_input().

-type list_traffic_policy_versions_errors() ::
    no_such_traffic_policy() | 
    invalid_input().

-type list_vpc_association_authorizations_errors() ::
    no_such_hosted_zone() | 
    invalid_pagination_token() | 
    invalid_input().

-type test_dns_answer_errors() ::
    no_such_hosted_zone() | 
    invalid_input().

-type update_health_check_errors() ::
    no_such_health_check() | 
    invalid_input() | 
    health_check_version_mismatch().

-type update_hosted_zone_comment_errors() ::
    prior_request_not_complete() | 
    no_such_hosted_zone() | 
    invalid_input().

-type update_traffic_policy_comment_errors() ::
    no_such_traffic_policy() | 
    concurrent_modification() | 
    invalid_input().

-type update_traffic_policy_instance_errors() ::
    conflicting_types() | 
    prior_request_not_complete() | 
    no_such_traffic_policy() | 
    no_such_traffic_policy_instance() | 
    invalid_input().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a key-signing key (KSK) so that it can be used for signing
%% by DNSSEC.
%%
%% This
%% operation changes the KSK status to `ACTIVE'.
-spec activate_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), activate_key_signing_key_request()) ->
    {ok, activate_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, activate_key_signing_key_errors(), tuple()}.
activate_key_signing_key(Client, HostedZoneId, Name, Input) ->
    activate_key_signing_key(Client, HostedZoneId, Name, Input, []).

-spec activate_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), activate_key_signing_key_request(), proplists:proplist()) ->
    {ok, activate_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, activate_key_signing_key_errors(), tuple()}.
activate_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), "/activate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an Amazon VPC with a private hosted zone.
%%
%% To perform the association, the VPC and the private hosted zone must
%% already
%% exist. You can't convert a public hosted zone into a private hosted
%% zone.
%%
%% If you want to associate a VPC that was created by using one Amazon Web
%% Services account with a private hosted zone that was created by using a
%% different account, the Amazon Web Services account that created the
%% private hosted
%% zone must first submit a `CreateVPCAssociationAuthorization' request.
%% Then the account that created the VPC must submit an
%% `AssociateVPCWithHostedZone' request.
%%
%% When granting access, the hosted zone and the Amazon VPC must belong to
%% the same partition. A partition is a group of Amazon Web Services Regions.
%% Each
%% Amazon Web Services account is scoped to one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the Amazon Web Services General Reference.
-spec associate_vpc_with_hosted_zone(aws_client:aws_client(), binary() | list(), associate_vpc_with_hosted_zone_request()) ->
    {ok, associate_vpc_with_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, associate_vpc_with_hosted_zone_errors(), tuple()}.
associate_vpc_with_hosted_zone(Client, HostedZoneId, Input) ->
    associate_vpc_with_hosted_zone(Client, HostedZoneId, Input, []).

-spec associate_vpc_with_hosted_zone(aws_client:aws_client(), binary() | list(), associate_vpc_with_hosted_zone_request(), proplists:proplist()) ->
    {ok, associate_vpc_with_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, associate_vpc_with_hosted_zone_errors(), tuple()}.
associate_vpc_with_hosted_zone(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/associatevpc"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates, changes, or deletes CIDR blocks within a collection.
%%
%% Contains authoritative
%% IP information mapping blocks to one or multiple locations.
%%
%% A change request can update multiple locations in a collection at a time,
%% which is
%% helpful if you want to move one or more CIDR blocks from one location to
%% another in one
%% transaction, without downtime.
%%
%% Limits
%%
%% The max number of CIDR blocks included in the request is 1000. As a
%% result, big updates
%% require multiple API calls.
%%
%% PUT and DELETE_IF_EXISTS
%%
%% Use `ChangeCidrCollection' to perform the following actions:
%%
%% `PUT': Create a CIDR block within the specified collection.
%%
%% ` DELETE_IF_EXISTS': Delete an existing CIDR block from the
%% collection.
-spec change_cidr_collection(aws_client:aws_client(), binary() | list(), change_cidr_collection_request()) ->
    {ok, change_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, change_cidr_collection_errors(), tuple()}.
change_cidr_collection(Client, Id, Input) ->
    change_cidr_collection(Client, Id, Input, []).

-spec change_cidr_collection(aws_client:aws_client(), binary() | list(), change_cidr_collection_request(), proplists:proplist()) ->
    {ok, change_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, change_cidr_collection_errors(), tuple()}.
change_cidr_collection(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates, changes, or deletes a resource record set, which contains
%% authoritative DNS
%% information for a specified domain name or subdomain name.
%%
%% For example, you can use
%% `ChangeResourceRecordSets' to create a resource record set that routes
%% traffic for test.example.com to a web server that has an IP address of
%% 192.0.2.44.
%%
%% Deleting Resource Record Sets
%%
%% To delete a resource record set, you must specify all the same values that
%% you
%% specified when you created it.
%%
%% Change Batches and Transactional Changes
%%
%% The request body must include a document with a
%% `ChangeResourceRecordSetsRequest' element. The request body contains a
%% list of change items, known as a change batch. Change batches are
%% considered
%% transactional changes. Route 53 validates the changes in the request and
%% then either
%% makes all or none of the changes in the change batch request. This ensures
%% that DNS
%% routing isn't adversely affected by partial changes to the resource
%% record sets in a
%% hosted zone.
%%
%% For example, suppose a change batch request contains two changes: it
%% deletes the
%% `CNAME' resource record set for www.example.com and creates an alias
%% resource record set for www.example.com. If validation for both records
%% succeeds, Route
%% 53 deletes the first resource record set and creates the second resource
%% record set in a
%% single operation. If validation for either the `DELETE' or the
%% `CREATE' action fails, then the request is canceled, and the original
%% `CNAME' record continues to exist.
%%
%% If you try to delete the same resource record set more than once in a
%% single
%% change batch, Route 53 returns an `InvalidChangeBatch' error.
%%
%% Traffic Flow
%%
%% To create resource record sets for complex routing configurations, use
%% either the
%% traffic flow visual editor in the Route 53 console or the API actions for
%% traffic
%% policies and traffic policy instances. Save the configuration as a traffic
%% policy, then
%% associate the traffic policy with one or more domain names (such as
%% example.com) or
%% subdomain names (such as www.example.com), in the same hosted zone or in
%% multiple hosted
%% zones. You can roll back the updates if the new configuration isn't
%% performing as
%% expected. For more information, see Using Traffic Flow to Route
%% DNS Traffic:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html
%% in the Amazon Route 53 Developer
%% Guide.
%%
%% Create, Delete, and Upsert
%%
%% Use `ChangeResourceRecordsSetsRequest' to perform the following
%% actions:
%%
%% `CREATE': Creates a resource record set that has the specified
%% values.
%%
%% `DELETE': Deletes an existing resource record set that has the
%% specified values.
%%
%% `UPSERT': If a resource set doesn't exist, Route 53 creates it. If
%% a resource
%% set exists Route 53 updates it with the values in the request.
%%
%% Syntaxes for Creating, Updating, and Deleting Resource Record
%% Sets
%%
%% The syntax for a request depends on the type of resource record set that
%% you want to
%% create, delete, or update, such as weighted, alias, or failover. The XML
%% elements in
%% your request must appear in the order listed in the syntax.
%%
%% For an example for each type of resource record set, see
%% &quot;Examples.&quot;
%%
%% Don't refer to the syntax in the &quot;Parameter Syntax&quot; section,
%% which includes
%% all of the elements for every kind of resource record set that you can
%% create, delete,
%% or update by using `ChangeResourceRecordSets'.
%%
%% Change Propagation to Route 53 DNS Servers
%%
%% When you submit a `ChangeResourceRecordSets' request, Route 53
%% propagates your
%% changes to all of the Route 53 authoritative DNS servers managing the
%% hosted zone. While
%% your changes are propagating, `GetChange' returns a status of
%% `PENDING'. When propagation is complete, `GetChange' returns a
%% status of `INSYNC'. Changes generally propagate to all Route 53 name
%% servers
%% managing the hosted zone within 60 seconds. For more information, see
%% GetChange:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html.
%%
%% Limits on ChangeResourceRecordSets Requests
%%
%% For information about the limits on a `ChangeResourceRecordSets'
%% request,
%% see Limits:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html
%% in the Amazon Route 53 Developer Guide.
-spec change_resource_record_sets(aws_client:aws_client(), binary() | list(), change_resource_record_sets_request()) ->
    {ok, change_resource_record_sets_response(), tuple()} |
    {error, any()} |
    {error, change_resource_record_sets_errors(), tuple()}.
change_resource_record_sets(Client, HostedZoneId, Input) ->
    change_resource_record_sets(Client, HostedZoneId, Input, []).

-spec change_resource_record_sets(aws_client:aws_client(), binary() | list(), change_resource_record_sets_request(), proplists:proplist()) ->
    {ok, change_resource_record_sets_response(), tuple()} |
    {error, any()} |
    {error, change_resource_record_sets_errors(), tuple()}.
change_resource_record_sets(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/rrset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds, edits, or deletes tags for a health check or a hosted zone.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Billing and Cost Management User Guide.
-spec change_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), change_tags_for_resource_request()) ->
    {ok, change_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, change_tags_for_resource_errors(), tuple()}.
change_tags_for_resource(Client, ResourceId, ResourceType, Input) ->
    change_tags_for_resource(Client, ResourceId, ResourceType, Input, []).

-spec change_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), change_tags_for_resource_request(), proplists:proplist()) ->
    {ok, change_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, change_tags_for_resource_errors(), tuple()}.
change_tags_for_resource(Client, ResourceId, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a CIDR collection in the current Amazon Web Services account.
-spec create_cidr_collection(aws_client:aws_client(), create_cidr_collection_request()) ->
    {ok, create_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, create_cidr_collection_errors(), tuple()}.
create_cidr_collection(Client, Input) ->
    create_cidr_collection(Client, Input, []).

-spec create_cidr_collection(aws_client:aws_client(), create_cidr_collection_request(), proplists:proplist()) ->
    {ok, create_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, create_cidr_collection_errors(), tuple()}.
create_cidr_collection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/cidrcollection"],
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

%% @doc Creates a new health check.
%%
%% For information about adding health checks to resource record sets, see
%% HealthCheckId:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId
%% in ChangeResourceRecordSets:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html.
%%
%% ELB Load Balancers
%%
%% If you're registering EC2 instances with an Elastic Load Balancing
%% (ELB) load
%% balancer, do not create Amazon Route 53 health checks for the EC2
%% instances. When you
%% register an EC2 instance with a load balancer, you configure settings for
%% an ELB health
%% check, which performs a similar function to a Route 53 health check.
%%
%% Private Hosted Zones
%%
%% You can associate health checks with failover resource record sets in a
%% private hosted
%% zone. Note the following:
%%
%% Route 53 health checkers are outside the VPC. To check the health of an
%% endpoint within a VPC by IP address, you must assign a public IP address
%% to the
%% instance in the VPC.
%%
%% You can configure a health checker to check the health of an external
%% resource
%% that the instance relies on, such as a database server.
%%
%% You can create a CloudWatch metric, associate an alarm with the metric,
%% and
%% then create a health check that is based on the state of the alarm. For
%% example,
%% you might create a CloudWatch metric that checks the status of the Amazon
%% EC2
%% `StatusCheckFailed' metric, add an alarm to the metric, and then
%% create a health check that is based on the state of the alarm. For
%% information
%% about creating CloudWatch metrics and alarms by using the CloudWatch
%% console,
%% see the Amazon
%% CloudWatch User Guide:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html.
-spec create_health_check(aws_client:aws_client(), create_health_check_request()) ->
    {ok, create_health_check_response(), tuple()} |
    {error, any()} |
    {error, create_health_check_errors(), tuple()}.
create_health_check(Client, Input) ->
    create_health_check(Client, Input, []).

-spec create_health_check(aws_client:aws_client(), create_health_check_request(), proplists:proplist()) ->
    {ok, create_health_check_response(), tuple()} |
    {error, any()} |
    {error, create_health_check_errors(), tuple()}.
create_health_check(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck"],
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

%% @doc Creates a new public or private hosted zone.
%%
%% You create records in a public hosted
%% zone to define how you want to route traffic on the internet for a domain,
%% such as
%% example.com, and its subdomains (apex.example.com, acme.example.com). You
%% create records
%% in a private hosted zone to define how you want to route traffic for a
%% domain and its
%% subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs).
%%
%% You can't convert a public hosted zone to a private hosted zone or
%% vice versa.
%% Instead, you must create a new hosted zone with the same name and create
%% new
%% resource record sets.
%%
%% For more information about charges for hosted zones, see Amazon Route 53
%% Pricing: http://aws.amazon.com/route53/pricing/.
%%
%% Note the following:
%%
%% You can't create a hosted zone for a top-level domain (TLD) such as
%% .com.
%%
%% For public hosted zones, Route 53 automatically creates a default SOA
%% record
%% and four NS records for the zone. For more information about SOA and NS
%% records,
%% see NS and SOA Records
%% that Route 53 Creates for a Hosted Zone:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html
%% in the
%% Amazon Route 53 Developer Guide.
%%
%% If you want to use the same name servers for multiple public hosted zones,
%% you
%% can optionally associate a reusable delegation set with the hosted zone.
%% See the
%% `DelegationSetId' element.
%%
%% If your domain is registered with a registrar other than Route 53,
%% you must update the name servers with your registrar to make Route 53 the
%% DNS
%% service for the domain. For more information, see Migrating DNS Service
%% for an Existing Domain to Amazon Route 53:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html
%% in the
%% Amazon Route 53 Developer Guide.
%%
%% When you submit a `CreateHostedZone' request, the initial status of
%% the
%% hosted zone is `PENDING'. For public hosted zones, this means that the
%% NS and
%% SOA records are not yet available on all Route 53 DNS servers. When the NS
%% and
%% SOA records are available, the status of the zone changes to `INSYNC'.
%%
%% The `CreateHostedZone' request requires the caller to have an
%% `ec2:DescribeVpcs' permission.
%%
%% When creating private hosted zones, the Amazon VPC must belong to the same
%% partition where the hosted zone is created. A partition is a group of
%% Amazon Web Services Regions. Each Amazon Web Services account is scoped to
%% one
%% partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the Amazon Web Services General Reference.
-spec create_hosted_zone(aws_client:aws_client(), create_hosted_zone_request()) ->
    {ok, create_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, create_hosted_zone_errors(), tuple()}.
create_hosted_zone(Client, Input) ->
    create_hosted_zone(Client, Input, []).

-spec create_hosted_zone(aws_client:aws_client(), create_hosted_zone_request(), proplists:proplist()) ->
    {ok, create_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, create_hosted_zone_errors(), tuple()}.
create_hosted_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone"],
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

%% @doc Creates a new key-signing key (KSK) associated with a hosted zone.
%%
%% You can only have
%% two KSKs per hosted zone.
-spec create_key_signing_key(aws_client:aws_client(), create_key_signing_key_request()) ->
    {ok, create_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, create_key_signing_key_errors(), tuple()}.
create_key_signing_key(Client, Input) ->
    create_key_signing_key(Client, Input, []).

-spec create_key_signing_key(aws_client:aws_client(), create_key_signing_key_request(), proplists:proplist()) ->
    {ok, create_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, create_key_signing_key_errors(), tuple()}.
create_key_signing_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey"],
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

%% @doc Creates a configuration for DNS query logging.
%%
%% After you create a query logging
%% configuration, Amazon Route 53 begins to publish log data to an Amazon
%% CloudWatch Logs
%% log group.
%%
%% DNS query logs contain information about the queries that Route 53
%% receives for a
%% specified public hosted zone, such as the following:
%%
%% Route 53 edge location that responded to the DNS query
%%
%% Domain or subdomain that was requested
%%
%% DNS record type, such as A or AAAA
%%
%% DNS response code, such as `NoError' or
%% `ServFail'
%%
%% Log Group and Resource Policy
%%
%% Before you create a query logging configuration, perform the following
%% operations.
%%
%% If you create a query logging configuration using the Route 53
%% console, Route 53 performs these operations automatically.
%%
%% Create a CloudWatch Logs log group, and make note of the ARN,
%% which you specify when you create a query logging configuration.
%% Note the following:
%%
%% You must create the log group in the us-east-1
%% region.
%%
%% You must use the same Amazon Web Services account to create
%% the log group and the hosted zone that you want to configure
%% query logging for.
%%
%% When you create log groups for query logging, we recommend
%% that you use a consistent prefix, for example:
%%
%% ```
%% /aws/route53/hosted zone name '''
%%
%% In the next step, you'll create a resource policy, which
%% controls access to one or more log groups and the associated
%% Amazon Web Services resources, such as Route 53 hosted
%% zones. There's a limit on the number of resource policies
%% that you can create, so we recommend that you use a
%% consistent prefix so you can use the same resource policy
%% for all the log groups that you create for query
%% logging.
%%
%% Create a CloudWatch Logs resource policy, and give it the
%% permissions that Route 53 needs to create log streams and to send
%% query logs to log streams. You must create the CloudWatch Logs resource
%% policy in the us-east-1
%% region. For the value of `Resource',
%% specify the ARN for the log group that you created in the previous
%% step. To use the same resource policy for all the CloudWatch Logs
%% log groups that you created for query logging configurations,
%% replace the hosted zone name with `*', for
%% example:
%%
%% `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*'
%%
%% To avoid the confused deputy problem, a security issue where an
%% entity without a permission for an action can coerce a
%% more-privileged entity to perform it, you can optionally limit the
%% permissions that a service has to a resource in a resource-based
%% policy by supplying the following values:
%%
%% For `aws:SourceArn', supply the hosted zone ARN
%% used in creating the query logging configuration. For
%% example,
%% ```
%% aws:SourceArn: arn:aws:route53:::hostedzone/hosted zone ID'''.
%%
%% For `aws:SourceAccount', supply the account ID
%% for the account that creates the query logging
%% configuration. For example,
%% `aws:SourceAccount:111111111111'.
%%
%% For more information, see The confused
%% deputy problem:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html in
%% the Amazon Web Services
%% IAM User Guide.
%%
%% You can't use the CloudWatch console to create or edit a
%% resource policy. You must use the CloudWatch API, one of the
%% Amazon Web Services SDKs, or the CLI.
%%
%% Log Streams and Edge Locations
%%
%% When Route 53 finishes creating the configuration for DNS query logging,
%% it does the following:
%%
%% Creates a log stream for an edge location the first time that the
%% edge location responds to DNS queries for the specified hosted zone.
%% That log stream is used to log all queries that Route 53 responds to
%% for that edge location.
%%
%% Begins to send query logs to the applicable log stream.
%%
%% The name of each log stream is in the following format:
%%
%% ```
%% hosted zone ID/edge location code '''
%%
%% The edge location code is a three-letter code and an arbitrarily assigned
%% number, for example, DFW3. The three-letter code typically corresponds
%% with
%% the International Air Transport Association airport code for an airport
%% near
%% the edge location. (These abbreviations might change in the future.) For a
%% list of edge locations, see &quot;The Route 53 Global Network&quot; on the
%% Route 53 Product Details: http://aws.amazon.com/route53/details/
%% page.
%%
%% Queries That Are Logged
%%
%% Query logs contain only the queries that DNS resolvers forward to Route
%% 53. If a DNS resolver has already cached the response to a query (such as
%% the IP address for a load balancer for example.com), the resolver will
%% continue to return the cached response. It doesn't forward another
%% query to
%% Route 53 until the TTL for the corresponding resource record set expires.
%% Depending on how many DNS queries are submitted for a resource record set,
%% and depending on the TTL for that resource record set, query logs might
%% contain information about only one query out of every several thousand
%% queries that are submitted to DNS. For more information about how DNS
%% works,
%% see Routing
%% Internet Traffic to Your Website or Web Application:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html
%% in the
%% Amazon Route 53 Developer Guide.
%%
%% Log File Format
%%
%% For a list of the values in each query log and the format of each value,
%% see Logging DNS
%% Queries:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html
%% in the Amazon Route 53 Developer
%% Guide.
%%
%% Pricing
%%
%% For information about charges for query logs, see Amazon CloudWatch
%% Pricing: http://aws.amazon.com/cloudwatch/pricing/.
%%
%% How to Stop Logging
%%
%% If you want Route 53 to stop sending query logs to CloudWatch Logs, delete
%% the query logging configuration. For more information, see
%% DeleteQueryLoggingConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html.
-spec create_query_logging_config(aws_client:aws_client(), create_query_logging_config_request()) ->
    {ok, create_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, create_query_logging_config_errors(), tuple()}.
create_query_logging_config(Client, Input) ->
    create_query_logging_config(Client, Input, []).

-spec create_query_logging_config(aws_client:aws_client(), create_query_logging_config_request(), proplists:proplist()) ->
    {ok, create_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, create_query_logging_config_errors(), tuple()}.
create_query_logging_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/queryloggingconfig"],
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

%% @doc Creates a delegation set (a group of four name servers) that can be
%% reused by multiple
%% hosted zones that were created by the same Amazon Web Services account.
%%
%% You can also create a reusable delegation set that uses the four name
%% servers that are
%% associated with an existing hosted zone. Specify the hosted zone ID in the
%% `CreateReusableDelegationSet' request.
%%
%% You can't associate a reusable delegation set with a private hosted
%% zone.
%%
%% For information about using a reusable delegation set to configure white
%% label name
%% servers, see Configuring White
%% Label Name Servers:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html.
%%
%% The process for migrating existing hosted zones to use a reusable
%% delegation set is
%% comparable to the process for configuring white label name servers. You
%% need to perform
%% the following steps:
%%
%% Create a reusable delegation set.
%%
%% Recreate hosted zones, and reduce the TTL to 60 seconds or less.
%%
%% Recreate resource record sets in the new hosted zones.
%%
%% Change the registrar's name servers to use the name servers for the
%% new hosted
%% zones.
%%
%% Monitor traffic for the website or application.
%%
%% Change TTLs back to their original values.
%%
%% If you want to migrate existing hosted zones to use a reusable delegation
%% set, the
%% existing hosted zones can't use any of the name servers that are
%% assigned to the
%% reusable delegation set. If one or more hosted zones do use one or more
%% name servers
%% that are assigned to the reusable delegation set, you can do one of the
%% following:
%%
%% For small numbers of hosted zones—up to a few hundred—it's
%% relatively easy to create reusable delegation sets until you get one that
%% has
%% four name servers that don't overlap with any of the name servers in
%% your hosted
%% zones.
%%
%% For larger numbers of hosted zones, the easiest solution is to use more
%% than
%% one reusable delegation set.
%%
%% For larger numbers of hosted zones, you can also migrate hosted zones that
%% have overlapping name servers to hosted zones that don't have
%% overlapping name
%% servers, then migrate the hosted zones again to use the reusable
%% delegation
%% set.
-spec create_reusable_delegation_set(aws_client:aws_client(), create_reusable_delegation_set_request()) ->
    {ok, create_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, create_reusable_delegation_set_errors(), tuple()}.
create_reusable_delegation_set(Client, Input) ->
    create_reusable_delegation_set(Client, Input, []).

-spec create_reusable_delegation_set(aws_client:aws_client(), create_reusable_delegation_set_request(), proplists:proplist()) ->
    {ok, create_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, create_reusable_delegation_set_errors(), tuple()}.
create_reusable_delegation_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/delegationset"],
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

%% @doc Creates a traffic policy, which you use to create multiple DNS
%% resource record sets
%% for one domain name (such as example.com) or one subdomain name (such as
%% www.example.com).
-spec create_traffic_policy(aws_client:aws_client(), create_traffic_policy_request()) ->
    {ok, create_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_errors(), tuple()}.
create_traffic_policy(Client, Input) ->
    create_traffic_policy(Client, Input, []).

-spec create_traffic_policy(aws_client:aws_client(), create_traffic_policy_request(), proplists:proplist()) ->
    {ok, create_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_errors(), tuple()}.
create_traffic_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy"],
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

%% @doc Creates resource record sets in a specified hosted zone based on the
%% settings in a
%% specified traffic policy version.
%%
%% In addition, `CreateTrafficPolicyInstance'
%% associates the resource record sets with a specified domain name (such as
%% example.com)
%% or subdomain name (such as www.example.com). Amazon Route 53 responds to
%% DNS queries for
%% the domain or subdomain name by using the resource record sets that
%% `CreateTrafficPolicyInstance' created.
%%
%% After you submit an `CreateTrafficPolicyInstance' request, there's
%% a
%% brief delay while Amazon Route 53 creates the resource record sets that
%% are
%% specified in the traffic policy definition.
%% Use `GetTrafficPolicyInstance' with the `id' of new traffic policy
%% instance to confirm that the `CreateTrafficPolicyInstance'
%% request completed successfully. For more information, see the
%% `State' response element.
-spec create_traffic_policy_instance(aws_client:aws_client(), create_traffic_policy_instance_request()) ->
    {ok, create_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_instance_errors(), tuple()}.
create_traffic_policy_instance(Client, Input) ->
    create_traffic_policy_instance(Client, Input, []).

-spec create_traffic_policy_instance(aws_client:aws_client(), create_traffic_policy_instance_request(), proplists:proplist()) ->
    {ok, create_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_instance_errors(), tuple()}.
create_traffic_policy_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance"],
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

%% @doc Creates a new version of an existing traffic policy.
%%
%% When you create a new version of
%% a traffic policy, you specify the ID of the traffic policy that you want
%% to update and a
%% JSON-formatted document that describes the new version. You use traffic
%% policies to
%% create multiple DNS resource record sets for one domain name (such as
%% example.com) or
%% one subdomain name (such as www.example.com). You can create a maximum of
%% 1000 versions
%% of a traffic policy. If you reach the limit and need to create another
%% version, you'll
%% need to start a new traffic policy.
-spec create_traffic_policy_version(aws_client:aws_client(), binary() | list(), create_traffic_policy_version_request()) ->
    {ok, create_traffic_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_version_errors(), tuple()}.
create_traffic_policy_version(Client, Id, Input) ->
    create_traffic_policy_version(Client, Id, Input, []).

-spec create_traffic_policy_version(aws_client:aws_client(), binary() | list(), create_traffic_policy_version_request(), proplists:proplist()) ->
    {ok, create_traffic_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_version_errors(), tuple()}.
create_traffic_policy_version(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), ""],
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

%% @doc Authorizes the Amazon Web Services account that created a specified
%% VPC to submit an
%% `AssociateVPCWithHostedZone' request to associate the VPC with a
%% specified hosted zone that was created by a different account.
%%
%% To submit a
%% `CreateVPCAssociationAuthorization' request, you must use the account
%% that created the hosted zone. After you authorize the association, use the
%% account that
%% created the VPC to submit an `AssociateVPCWithHostedZone' request.
%%
%% If you want to associate multiple VPCs that you created by using one
%% account with
%% a hosted zone that you created by using a different account, you must
%% submit one
%% authorization request for each VPC.
-spec create_vpc_association_authorization(aws_client:aws_client(), binary() | list(), create_vpc_association_authorization_request()) ->
    {ok, create_vpc_association_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_association_authorization_errors(), tuple()}.
create_vpc_association_authorization(Client, HostedZoneId, Input) ->
    create_vpc_association_authorization(Client, HostedZoneId, Input, []).

-spec create_vpc_association_authorization(aws_client:aws_client(), binary() | list(), create_vpc_association_authorization_request(), proplists:proplist()) ->
    {ok, create_vpc_association_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_association_authorization_errors(), tuple()}.
create_vpc_association_authorization(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates a key-signing key (KSK) so that it will not be used for
%% signing by DNSSEC.
%%
%% This operation changes the KSK status to `INACTIVE'.
-spec deactivate_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_key_signing_key_request()) ->
    {ok, deactivate_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, deactivate_key_signing_key_errors(), tuple()}.
deactivate_key_signing_key(Client, HostedZoneId, Name, Input) ->
    deactivate_key_signing_key(Client, HostedZoneId, Name, Input, []).

-spec deactivate_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_key_signing_key_request(), proplists:proplist()) ->
    {ok, deactivate_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, deactivate_key_signing_key_errors(), tuple()}.
deactivate_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), "/deactivate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CIDR collection in the current Amazon Web Services account.
%%
%% The collection
%% must be empty before it can be deleted.
-spec delete_cidr_collection(aws_client:aws_client(), binary() | list(), delete_cidr_collection_request()) ->
    {ok, delete_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_cidr_collection_errors(), tuple()}.
delete_cidr_collection(Client, Id, Input) ->
    delete_cidr_collection(Client, Id, Input, []).

-spec delete_cidr_collection(aws_client:aws_client(), binary() | list(), delete_cidr_collection_request(), proplists:proplist()) ->
    {ok, delete_cidr_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_cidr_collection_errors(), tuple()}.
delete_cidr_collection(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a health check.
%%
%% Amazon Route 53 does not prevent you from deleting a health check even if
%% the
%% health check is associated with one or more resource record sets. If you
%% delete a
%% health check and you don't update the associated resource record sets,
%% the future
%% status of the health check can't be predicted and may change. This
%% will affect the
%% routing of DNS queries for your DNS failover configuration. For more
%% information,
%% see Replacing and Deleting Health Checks:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html
%% in the Amazon Route 53
%% Developer Guide.
%%
%% If you're using Cloud Map and you configured Cloud Map to create a
%% Route 53
%% health check when you register an instance, you can't use the Route 53
%% `DeleteHealthCheck' command to delete the health check. The health
%% check
%% is deleted automatically when you deregister the instance; there can be a
%% delay of
%% several hours before the health check is deleted from Route 53.
-spec delete_health_check(aws_client:aws_client(), binary() | list(), delete_health_check_request()) ->
    {ok, delete_health_check_response(), tuple()} |
    {error, any()} |
    {error, delete_health_check_errors(), tuple()}.
delete_health_check(Client, HealthCheckId, Input) ->
    delete_health_check(Client, HealthCheckId, Input, []).

-spec delete_health_check(aws_client:aws_client(), binary() | list(), delete_health_check_request(), proplists:proplist()) ->
    {ok, delete_health_check_response(), tuple()} |
    {error, any()} |
    {error, delete_health_check_errors(), tuple()}.
delete_health_check(Client, HealthCheckId, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a hosted zone.
%%
%% If the hosted zone was created by another service, such as Cloud Map, see
%% Deleting Public Hosted Zones That Were Created by Another Service:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service
%% in the
%% Amazon Route 53 Developer Guide for information
%% about how to delete it. (The process is the same for public and private
%% hosted zones
%% that were created by another service.)
%%
%% If you want to keep your domain registration but you want to stop routing
%% internet
%% traffic to your website or web application, we recommend that you delete
%% resource record
%% sets in the hosted zone instead of deleting the hosted zone.
%%
%% If you delete a hosted zone, you can't undelete it. You must create a
%% new hosted
%% zone and update the name servers for your domain registration, which can
%% require up
%% to 48 hours to take effect. (If you delegated responsibility for a
%% subdomain to a
%% hosted zone and you delete the child hosted zone, you must update the name
%% servers
%% in the parent hosted zone.) In addition, if you delete a hosted zone,
%% someone could
%% hijack the domain and route traffic to their own resources using your
%% domain
%% name.
%%
%% If you want to avoid the monthly charge for the hosted zone, you can
%% transfer DNS
%% service for the domain to a free DNS service. When you transfer DNS
%% service, you have to
%% update the name servers for the domain registration. If the domain is
%% registered with
%% Route 53, see UpdateDomainNameservers:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html
%% for information about how to replace Route 53 name servers with name
%% servers for the new DNS service. If the domain is
%% registered with another registrar, use the method provided by the
%% registrar to update
%% name servers for the domain registration. For more information, perform an
%% internet
%% search on &quot;free DNS service.&quot;
%%
%% You can delete a hosted zone only if it contains only the default SOA and
%% NS records
%% and has DNSSEC signing disabled. If the hosted zone contains other records
%% or has DNSSEC
%% enabled, you must delete the records and disable DNSSEC before deletion.
%% Attempting to
%% delete a hosted zone with additional records or DNSSEC enabled returns a
%% `HostedZoneNotEmpty' error. For information about deleting records,
%% see
%% ChangeResourceRecordSets:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html.
%%
%% To verify that the hosted zone has been deleted, do one of the following:
%%
%% Use the `GetHostedZone' action to request information about the
%% hosted zone.
%%
%% Use the `ListHostedZones' action to get a list of the hosted zones
%% associated with the current Amazon Web Services account.
-spec delete_hosted_zone(aws_client:aws_client(), binary() | list(), delete_hosted_zone_request()) ->
    {ok, delete_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, delete_hosted_zone_errors(), tuple()}.
delete_hosted_zone(Client, Id, Input) ->
    delete_hosted_zone(Client, Id, Input, []).

-spec delete_hosted_zone(aws_client:aws_client(), binary() | list(), delete_hosted_zone_request(), proplists:proplist()) ->
    {ok, delete_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, delete_hosted_zone_errors(), tuple()}.
delete_hosted_zone(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a key-signing key (KSK).
%%
%% Before you can delete a KSK, you must deactivate it.
%% The KSK must be deactivated before you can delete it regardless of whether
%% the hosted
%% zone is enabled for DNSSEC signing.
%%
%% You can use DeactivateKeySigningKey:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeactivateKeySigningKey.html
%% to deactivate the key before you delete it.
%%
%% Use GetDNSSEC:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetDNSSEC.html
%% to verify that the KSK is in an `INACTIVE'
%% status.
-spec delete_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_key_signing_key_request()) ->
    {ok, delete_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_signing_key_errors(), tuple()}.
delete_key_signing_key(Client, HostedZoneId, Name, Input) ->
    delete_key_signing_key(Client, HostedZoneId, Name, Input, []).

-spec delete_key_signing_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_key_signing_key_request(), proplists:proplist()) ->
    {ok, delete_key_signing_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_signing_key_errors(), tuple()}.
delete_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a configuration for DNS query logging.
%%
%% If you delete a configuration, Amazon
%% Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't
%% delete any logs
%% that are already in CloudWatch Logs.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html.
-spec delete_query_logging_config(aws_client:aws_client(), binary() | list(), delete_query_logging_config_request()) ->
    {ok, delete_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, delete_query_logging_config_errors(), tuple()}.
delete_query_logging_config(Client, Id, Input) ->
    delete_query_logging_config(Client, Id, Input, []).

-spec delete_query_logging_config(aws_client:aws_client(), binary() | list(), delete_query_logging_config_request(), proplists:proplist()) ->
    {ok, delete_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, delete_query_logging_config_errors(), tuple()}.
delete_query_logging_config(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/queryloggingconfig/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a reusable delegation set.
%%
%% You can delete a reusable delegation set only if it isn't associated
%% with any
%% hosted zones.
%%
%% To verify that the reusable delegation set is not associated with any
%% hosted zones,
%% submit a GetReusableDelegationSet:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html
%% request and specify the ID of the reusable
%% delegation set that you want to delete.
-spec delete_reusable_delegation_set(aws_client:aws_client(), binary() | list(), delete_reusable_delegation_set_request()) ->
    {ok, delete_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, delete_reusable_delegation_set_errors(), tuple()}.
delete_reusable_delegation_set(Client, Id, Input) ->
    delete_reusable_delegation_set(Client, Id, Input, []).

-spec delete_reusable_delegation_set(aws_client:aws_client(), binary() | list(), delete_reusable_delegation_set_request(), proplists:proplist()) ->
    {ok, delete_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, delete_reusable_delegation_set_errors(), tuple()}.
delete_reusable_delegation_set(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/delegationset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy.
%%
%% When you delete a traffic policy, Route 53 sets a flag on the policy to
%% indicate that
%% it has been deleted. However, Route 53 never fully deletes the traffic
%% policy. Note the
%% following:
%%
%% Deleted traffic policies aren't listed if you run ListTrafficPolicies:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListTrafficPolicies.html.
%%
%% There's no way to get a list of deleted policies.
%%
%% If you retain the ID of the policy, you can get information about the
%% policy,
%% including the traffic policy document, by running GetTrafficPolicy:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html.
-spec delete_traffic_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_traffic_policy_request()) ->
    {ok, delete_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_errors(), tuple()}.
delete_traffic_policy(Client, Id, Version, Input) ->
    delete_traffic_policy(Client, Id, Version, Input, []).

-spec delete_traffic_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_traffic_policy_request(), proplists:proplist()) ->
    {ok, delete_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_errors(), tuple()}.
delete_traffic_policy(Client, Id, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy instance and all of the resource record sets
%% that Amazon
%% Route 53 created when you created the instance.
%%
%% In the Route 53 console, traffic policy instances are known as policy
%% records.
-spec delete_traffic_policy_instance(aws_client:aws_client(), binary() | list(), delete_traffic_policy_instance_request()) ->
    {ok, delete_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_instance_errors(), tuple()}.
delete_traffic_policy_instance(Client, Id, Input) ->
    delete_traffic_policy_instance(Client, Id, Input, []).

-spec delete_traffic_policy_instance(aws_client:aws_client(), binary() | list(), delete_traffic_policy_instance_request(), proplists:proplist()) ->
    {ok, delete_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_instance_errors(), tuple()}.
delete_traffic_policy_instance(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes authorization to submit an `AssociateVPCWithHostedZone'
%% request to
%% associate a specified VPC with a hosted zone that was created by a
%% different account.
%%
%% You must use the account that created the hosted zone to submit a
%% `DeleteVPCAssociationAuthorization' request.
%%
%% Sending this request only prevents the Amazon Web Services account that
%% created the
%% VPC from associating the VPC with the Amazon Route 53 hosted zone in the
%% future. If
%% the VPC is already associated with the hosted zone,
%% `DeleteVPCAssociationAuthorization' won't disassociate the VPC
%% from
%% the hosted zone. If you want to delete an existing association, use
%% `DisassociateVPCFromHostedZone'.
-spec delete_vpc_association_authorization(aws_client:aws_client(), binary() | list(), delete_vpc_association_authorization_request()) ->
    {ok, delete_vpc_association_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_association_authorization_errors(), tuple()}.
delete_vpc_association_authorization(Client, HostedZoneId, Input) ->
    delete_vpc_association_authorization(Client, HostedZoneId, Input, []).

-spec delete_vpc_association_authorization(aws_client:aws_client(), binary() | list(), delete_vpc_association_authorization_request(), proplists:proplist()) ->
    {ok, delete_vpc_association_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_association_authorization_errors(), tuple()}.
delete_vpc_association_authorization(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/deauthorizevpcassociation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables DNSSEC signing in a specific hosted zone.
%%
%% This action does not deactivate any
%% key-signing keys (KSKs) that are active in the hosted zone.
-spec disable_hosted_zone_dns_sec(aws_client:aws_client(), binary() | list(), disable_hosted_zone_dns_sec_request()) ->
    {ok, disable_hosted_zone_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, disable_hosted_zone_dns_sec_errors(), tuple()}.
disable_hosted_zone_dns_sec(Client, HostedZoneId, Input) ->
    disable_hosted_zone_dns_sec(Client, HostedZoneId, Input, []).

-spec disable_hosted_zone_dns_sec(aws_client:aws_client(), binary() | list(), disable_hosted_zone_dns_sec_request(), proplists:proplist()) ->
    {ok, disable_hosted_zone_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, disable_hosted_zone_dns_sec_errors(), tuple()}.
disable_hosted_zone_dns_sec(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/disable-dnssec"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an
%% Amazon Route 53
%% private hosted zone.
%%
%% Note the following:
%%
%% You can't disassociate the last Amazon VPC from a private hosted zone.
%%
%% You can't convert a private hosted zone into a public hosted zone.
%%
%% You can submit a `DisassociateVPCFromHostedZone' request using
%% either the account that created the hosted zone or the account that
%% created the
%% Amazon VPC.
%%
%% Some services, such as Cloud Map and Amazon Elastic File System
%% (Amazon EFS) automatically create hosted zones and associate VPCs with the
%% hosted zones. A service can create a hosted zone using your account or
%% using its
%% own account. You can disassociate a VPC from a hosted zone only if the
%% service
%% created the hosted zone using your account.
%%
%% When you run DisassociateVPCFromHostedZone:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html,
%% if the hosted zone has a value for
%% `OwningAccount', you can use
%% `DisassociateVPCFromHostedZone'. If the hosted zone has a value
%% for `OwningService', you can't use
%% `DisassociateVPCFromHostedZone'.
%%
%% When revoking access, the hosted zone and the Amazon VPC must belong to
%% the same partition. A partition is a group of Amazon Web Services Regions.
%% Each
%% Amazon Web Services account is scoped to one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the Amazon Web Services General Reference.
-spec disassociate_vpc_from_hosted_zone(aws_client:aws_client(), binary() | list(), disassociate_vpc_from_hosted_zone_request()) ->
    {ok, disassociate_vpc_from_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, disassociate_vpc_from_hosted_zone_errors(), tuple()}.
disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input) ->
    disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input, []).

-spec disassociate_vpc_from_hosted_zone(aws_client:aws_client(), binary() | list(), disassociate_vpc_from_hosted_zone_request(), proplists:proplist()) ->
    {ok, disassociate_vpc_from_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, disassociate_vpc_from_hosted_zone_errors(), tuple()}.
disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/disassociatevpc"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables DNSSEC signing in a specific hosted zone.
-spec enable_hosted_zone_dns_sec(aws_client:aws_client(), binary() | list(), enable_hosted_zone_dns_sec_request()) ->
    {ok, enable_hosted_zone_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, enable_hosted_zone_dns_sec_errors(), tuple()}.
enable_hosted_zone_dns_sec(Client, HostedZoneId, Input) ->
    enable_hosted_zone_dns_sec(Client, HostedZoneId, Input, []).

-spec enable_hosted_zone_dns_sec(aws_client:aws_client(), binary() | list(), enable_hosted_zone_dns_sec_request(), proplists:proplist()) ->
    {ok, enable_hosted_zone_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, enable_hosted_zone_dns_sec_errors(), tuple()}.
enable_hosted_zone_dns_sec(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/enable-dnssec"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified limit for the current account, for example, the
%% maximum number of
%% health checks that you can create using the account.
%%
%% For the default limit, see Limits:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html
%% in the
%% Amazon Route 53 Developer Guide. To request a higher limit,
%% open a case:
%% https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53.
%%
%% You can also view account limits in Amazon Web Services Trusted Advisor.
%% Sign in to
%% the Amazon Web Services Management Console and open the Trusted Advisor
%% console at https://console.aws.amazon.com/trustedadvisor/:
%% https://console.aws.amazon.com/trustedadvisor. Then choose Service limits
%% in the navigation pane.
-spec get_account_limit(aws_client:aws_client(), binary() | list()) ->
    {ok, get_account_limit_response(), tuple()} |
    {error, any()} |
    {error, get_account_limit_errors(), tuple()}.
get_account_limit(Client, Type)
  when is_map(Client) ->
    get_account_limit(Client, Type, #{}, #{}).

-spec get_account_limit(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_account_limit_response(), tuple()} |
    {error, any()} |
    {error, get_account_limit_errors(), tuple()}.
get_account_limit(Client, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_limit(Client, Type, QueryMap, HeadersMap, []).

-spec get_account_limit(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_account_limit_response(), tuple()} |
    {error, any()} |
    {error, get_account_limit_errors(), tuple()}.
get_account_limit(Client, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/accountlimit/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current status of a change batch request.
%%
%% The status is one of the
%% following values:
%%
%% `PENDING' indicates that the changes in this request have not
%% propagated to all Amazon Route 53 DNS servers managing the hosted zone.
%% This is the initial status of all
%% change batch requests.
%%
%% `INSYNC' indicates that the changes have propagated to all Route 53
%% DNS servers managing the hosted zone.
-spec get_change(aws_client:aws_client(), binary() | list()) ->
    {ok, get_change_response(), tuple()} |
    {error, any()} |
    {error, get_change_errors(), tuple()}.
get_change(Client, Id)
  when is_map(Client) ->
    get_change(Client, Id, #{}, #{}).

-spec get_change(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_change_response(), tuple()} |
    {error, any()} |
    {error, get_change_errors(), tuple()}.
get_change(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_change(Client, Id, QueryMap, HeadersMap, []).

-spec get_change(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_change_response(), tuple()} |
    {error, any()} |
    {error, get_change_errors(), tuple()}.
get_change(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/change/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Route 53 does not perform authorization for this API because it
%% retrieves information
%% that is already available to the public.
%%
%% `GetCheckerIpRanges' still works, but we recommend that you download
%% ip-ranges.json, which includes IP address ranges for all Amazon Web
%% Services
%% services. For more information, see IP Address Ranges
%% of Amazon Route 53 Servers:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html
%% in the Amazon Route 53 Developer
%% Guide.
-spec get_checker_ip_ranges(aws_client:aws_client()) ->
    {ok, get_checker_ip_ranges_response(), tuple()} |
    {error, any()}.
get_checker_ip_ranges(Client)
  when is_map(Client) ->
    get_checker_ip_ranges(Client, #{}, #{}).

-spec get_checker_ip_ranges(aws_client:aws_client(), map(), map()) ->
    {ok, get_checker_ip_ranges_response(), tuple()} |
    {error, any()}.
get_checker_ip_ranges(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_checker_ip_ranges(Client, QueryMap, HeadersMap, []).

-spec get_checker_ip_ranges(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_checker_ip_ranges_response(), tuple()} |
    {error, any()}.
get_checker_ip_ranges(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/checkeripranges"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about DNSSEC for a specific hosted zone,
%% including the key-signing
%% keys (KSKs) in the hosted zone.
-spec get_dns_sec(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, get_dns_sec_errors(), tuple()}.
get_dns_sec(Client, HostedZoneId)
  when is_map(Client) ->
    get_dns_sec(Client, HostedZoneId, #{}, #{}).

-spec get_dns_sec(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, get_dns_sec_errors(), tuple()}.
get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap, []).

-spec get_dns_sec(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dns_sec_response(), tuple()} |
    {error, any()} |
    {error, get_dns_sec_errors(), tuple()}.
get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/dnssec"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about whether a specified geographic location is
%% supported for Amazon
%% Route 53 geolocation resource record sets.
%%
%% Route 53 does not perform authorization for this API because it retrieves
%% information
%% that is already available to the public.
%%
%% Use the following syntax to determine whether a continent is supported for
%% geolocation:
%%
%% ```
%% GET /2013-04-01/geolocation?continentcode=two-letter abbreviation for a
%% continent '''
%%
%% Use the following syntax to determine whether a country is supported for
%% geolocation:
%%
%% ```
%% GET /2013-04-01/geolocation?countrycode=two-character country code
%% '''
%%
%% Use the following syntax to determine whether a subdivision of a country
%% is supported
%% for geolocation:
%%
%% ```
%% GET /2013-04-01/geolocation?countrycode=two-character country
%% code&amp;subdivisioncode=subdivision code '''
-spec get_geo_location(aws_client:aws_client()) ->
    {ok, get_geo_location_response(), tuple()} |
    {error, any()} |
    {error, get_geo_location_errors(), tuple()}.
get_geo_location(Client)
  when is_map(Client) ->
    get_geo_location(Client, #{}, #{}).

-spec get_geo_location(aws_client:aws_client(), map(), map()) ->
    {ok, get_geo_location_response(), tuple()} |
    {error, any()} |
    {error, get_geo_location_errors(), tuple()}.
get_geo_location(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_geo_location(Client, QueryMap, HeadersMap, []).

-spec get_geo_location(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_geo_location_response(), tuple()} |
    {error, any()} |
    {error, get_geo_location_errors(), tuple()}.
get_geo_location(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/geolocation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continentcode">>, maps:get(<<"continentcode">>, QueryMap, undefined)},
        {<<"countrycode">>, maps:get(<<"countrycode">>, QueryMap, undefined)},
        {<<"subdivisioncode">>, maps:get(<<"subdivisioncode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified health check.
-spec get_health_check(aws_client:aws_client(), binary() | list()) ->
    {ok, get_health_check_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_errors(), tuple()}.
get_health_check(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check(Client, HealthCheckId, #{}, #{}).

-spec get_health_check(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_health_check_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_errors(), tuple()}.
get_health_check(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check(Client, HealthCheckId, QueryMap, HeadersMap, []).

-spec get_health_check(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_health_check_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_errors(), tuple()}.
get_health_check(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of health checks that are associated with the
%% current Amazon Web Services account.
-spec get_health_check_count(aws_client:aws_client()) ->
    {ok, get_health_check_count_response(), tuple()} |
    {error, any()}.
get_health_check_count(Client)
  when is_map(Client) ->
    get_health_check_count(Client, #{}, #{}).

-spec get_health_check_count(aws_client:aws_client(), map(), map()) ->
    {ok, get_health_check_count_response(), tuple()} |
    {error, any()}.
get_health_check_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_count(Client, QueryMap, HeadersMap, []).

-spec get_health_check_count(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_health_check_count_response(), tuple()} |
    {error, any()}.
get_health_check_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheckcount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the reason that a specified health check failed most recently.
-spec get_health_check_last_failure_reason(aws_client:aws_client(), binary() | list()) ->
    {ok, get_health_check_last_failure_reason_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_last_failure_reason_errors(), tuple()}.
get_health_check_last_failure_reason(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_last_failure_reason(Client, HealthCheckId, #{}, #{}).

-spec get_health_check_last_failure_reason(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_health_check_last_failure_reason_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_last_failure_reason_errors(), tuple()}.
get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap, []).

-spec get_health_check_last_failure_reason(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_health_check_last_failure_reason_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_last_failure_reason_errors(), tuple()}.
get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), "/lastfailurereason"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets status of a specified health check.
%%
%% This API is intended for use during development to diagnose behavior. It
%% doesn’t
%% support production use-cases with high query rates that require immediate
%% and
%% actionable responses.
-spec get_health_check_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_health_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_status_errors(), tuple()}.
get_health_check_status(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_status(Client, HealthCheckId, #{}, #{}).

-spec get_health_check_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_health_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_status_errors(), tuple()}.
get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap, []).

-spec get_health_check_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_health_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_health_check_status_errors(), tuple()}.
get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified hosted zone including the four
%% name servers
%% assigned to the hosted zone.
%%
%% `' returns the VPCs associated with the specified hosted zone and does
%% not reflect the VPC
%% associations by Route 53 Profiles. To get the associations to a Profile,
%% call the ListProfileAssociations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileAssociations.html
%% API.
-spec get_hosted_zone(aws_client:aws_client(), binary() | list()) ->
    {ok, get_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_errors(), tuple()}.
get_hosted_zone(Client, Id)
  when is_map(Client) ->
    get_hosted_zone(Client, Id, #{}, #{}).

-spec get_hosted_zone(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_errors(), tuple()}.
get_hosted_zone(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone(Client, Id, QueryMap, HeadersMap, []).

-spec get_hosted_zone(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_errors(), tuple()}.
get_hosted_zone(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of hosted zones that are associated with the
%% current Amazon Web Services account.
-spec get_hosted_zone_count(aws_client:aws_client()) ->
    {ok, get_hosted_zone_count_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_count_errors(), tuple()}.
get_hosted_zone_count(Client)
  when is_map(Client) ->
    get_hosted_zone_count(Client, #{}, #{}).

-spec get_hosted_zone_count(aws_client:aws_client(), map(), map()) ->
    {ok, get_hosted_zone_count_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_count_errors(), tuple()}.
get_hosted_zone_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone_count(Client, QueryMap, HeadersMap, []).

-spec get_hosted_zone_count(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_hosted_zone_count_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_count_errors(), tuple()}.
get_hosted_zone_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonecount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified limit for a specified hosted zone, for example,
%% the maximum number
%% of records that you can create in the hosted zone.
%%
%% For the default limit, see Limits:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html
%% in the
%% Amazon Route 53 Developer Guide. To request a higher limit,
%% open a case:
%% https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53.
-spec get_hosted_zone_limit(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_hosted_zone_limit_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_limit_errors(), tuple()}.
get_hosted_zone_limit(Client, HostedZoneId, Type)
  when is_map(Client) ->
    get_hosted_zone_limit(Client, HostedZoneId, Type, #{}, #{}).

-spec get_hosted_zone_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_hosted_zone_limit_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_limit_errors(), tuple()}.
get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap, []).

-spec get_hosted_zone_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_hosted_zone_limit_response(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_limit_errors(), tuple()}.
get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonelimit/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified configuration for DNS query
%% logging.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html
%% and Logging DNS
%% Queries:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html.
-spec get_query_logging_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, get_query_logging_config_errors(), tuple()}.
get_query_logging_config(Client, Id)
  when is_map(Client) ->
    get_query_logging_config(Client, Id, #{}, #{}).

-spec get_query_logging_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, get_query_logging_config_errors(), tuple()}.
get_query_logging_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_logging_config(Client, Id, QueryMap, HeadersMap, []).

-spec get_query_logging_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_logging_config_response(), tuple()} |
    {error, any()} |
    {error, get_query_logging_config_errors(), tuple()}.
get_query_logging_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/queryloggingconfig/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified reusable delegation set,
%% including the four
%% name servers that are assigned to the delegation set.
-spec get_reusable_delegation_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_errors(), tuple()}.
get_reusable_delegation_set(Client, Id)
  when is_map(Client) ->
    get_reusable_delegation_set(Client, Id, #{}, #{}).

-spec get_reusable_delegation_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_errors(), tuple()}.
get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap, []).

-spec get_reusable_delegation_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reusable_delegation_set_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_errors(), tuple()}.
get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/delegationset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the maximum number of hosted zones that you can associate with
%% the specified
%% reusable delegation set.
%%
%% For the default limit, see Limits:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html
%% in the
%% Amazon Route 53 Developer Guide. To request a higher limit,
%% open a case:
%% https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53.
-spec get_reusable_delegation_set_limit(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_reusable_delegation_set_limit_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_limit_errors(), tuple()}.
get_reusable_delegation_set_limit(Client, DelegationSetId, Type)
  when is_map(Client) ->
    get_reusable_delegation_set_limit(Client, DelegationSetId, Type, #{}, #{}).

-spec get_reusable_delegation_set_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_reusable_delegation_set_limit_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_limit_errors(), tuple()}.
get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap, []).

-spec get_reusable_delegation_set_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reusable_delegation_set_limit_response(), tuple()} |
    {error, any()} |
    {error, get_reusable_delegation_set_limit_errors(), tuple()}.
get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/reusabledelegationsetlimit/", aws_util:encode_uri(DelegationSetId), "/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific traffic policy version.
%%
%% For information about how of deleting a traffic policy affects the
%% response from
%% `GetTrafficPolicy', see DeleteTrafficPolicy:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html.
-spec get_traffic_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_errors(), tuple()}.
get_traffic_policy(Client, Id, Version)
  when is_map(Client) ->
    get_traffic_policy(Client, Id, Version, #{}, #{}).

-spec get_traffic_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_errors(), tuple()}.
get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap, []).

-spec get_traffic_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_errors(), tuple()}.
get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified traffic policy instance.
%%
%% Use `GetTrafficPolicyInstance' with the `id' of new traffic policy
%% instance to confirm that the
%% `CreateTrafficPolicyInstance' or an `UpdateTrafficPolicyInstance'
%% request completed successfully.
%% For more information, see the `State' response
%% element.
%%
%% In the Route 53 console, traffic policy instances are known as policy
%% records.
-spec get_traffic_policy_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, get_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_instance_errors(), tuple()}.
get_traffic_policy_instance(Client, Id)
  when is_map(Client) ->
    get_traffic_policy_instance(Client, Id, #{}, #{}).

-spec get_traffic_policy_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_instance_errors(), tuple()}.
get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap, []).

-spec get_traffic_policy_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_instance_errors(), tuple()}.
get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the number of traffic policy instances that are associated with
%% the current
%% Amazon Web Services account.
-spec get_traffic_policy_instance_count(aws_client:aws_client()) ->
    {ok, get_traffic_policy_instance_count_response(), tuple()} |
    {error, any()}.
get_traffic_policy_instance_count(Client)
  when is_map(Client) ->
    get_traffic_policy_instance_count(Client, #{}, #{}).

-spec get_traffic_policy_instance_count(aws_client:aws_client(), map(), map()) ->
    {ok, get_traffic_policy_instance_count_response(), tuple()} |
    {error, any()}.
get_traffic_policy_instance_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy_instance_count(Client, QueryMap, HeadersMap, []).

-spec get_traffic_policy_instance_count(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_traffic_policy_instance_count_response(), tuple()} |
    {error, any()}.
get_traffic_policy_instance_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstancecount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of location objects and their CIDR blocks.
-spec list_cidr_blocks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_cidr_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_blocks_errors(), tuple()}.
list_cidr_blocks(Client, CollectionId)
  when is_map(Client) ->
    list_cidr_blocks(Client, CollectionId, #{}, #{}).

-spec list_cidr_blocks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_cidr_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_blocks_errors(), tuple()}.
list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap, []).

-spec list_cidr_blocks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_cidr_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_blocks_errors(), tuple()}.
list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(CollectionId), "/cidrblocks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"location">>, maps:get(<<"location">>, QueryMap, undefined)},
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of CIDR collections in the Amazon Web
%% Services account
%% (metadata only).
-spec list_cidr_collections(aws_client:aws_client()) ->
    {ok, list_cidr_collections_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_collections_errors(), tuple()}.
list_cidr_collections(Client)
  when is_map(Client) ->
    list_cidr_collections(Client, #{}, #{}).

-spec list_cidr_collections(aws_client:aws_client(), map(), map()) ->
    {ok, list_cidr_collections_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_collections_errors(), tuple()}.
list_cidr_collections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_collections(Client, QueryMap, HeadersMap, []).

-spec list_cidr_collections(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cidr_collections_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_collections_errors(), tuple()}.
list_cidr_collections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of CIDR locations for the given collection
%% (metadata only,
%% does not include CIDR blocks).
-spec list_cidr_locations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_cidr_locations_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_locations_errors(), tuple()}.
list_cidr_locations(Client, CollectionId)
  when is_map(Client) ->
    list_cidr_locations(Client, CollectionId, #{}, #{}).

-spec list_cidr_locations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_cidr_locations_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_locations_errors(), tuple()}.
list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap, []).

-spec list_cidr_locations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_cidr_locations_response(), tuple()} |
    {error, any()} |
    {error, list_cidr_locations_errors(), tuple()}.
list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(CollectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of supported geographic locations.
%%
%% Countries are listed first, and continents are listed last. If Amazon
%% Route 53
%% supports subdivisions for a country (for example, states or provinces),
%% the subdivisions
%% for that country are listed in alphabetical order immediately after the
%% corresponding
%% country.
%%
%% Route 53 does not perform authorization for this API because it retrieves
%% information
%% that is already available to the public.
%%
%% For a list of supported geolocation codes, see the GeoLocation:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html
%% data
%% type.
-spec list_geo_locations(aws_client:aws_client()) ->
    {ok, list_geo_locations_response(), tuple()} |
    {error, any()} |
    {error, list_geo_locations_errors(), tuple()}.
list_geo_locations(Client)
  when is_map(Client) ->
    list_geo_locations(Client, #{}, #{}).

-spec list_geo_locations(aws_client:aws_client(), map(), map()) ->
    {ok, list_geo_locations_response(), tuple()} |
    {error, any()} |
    {error, list_geo_locations_errors(), tuple()}.
list_geo_locations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_geo_locations(Client, QueryMap, HeadersMap, []).

-spec list_geo_locations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_geo_locations_response(), tuple()} |
    {error, any()} |
    {error, list_geo_locations_errors(), tuple()}.
list_geo_locations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/geolocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"startcontinentcode">>, maps:get(<<"startcontinentcode">>, QueryMap, undefined)},
        {<<"startcountrycode">>, maps:get(<<"startcountrycode">>, QueryMap, undefined)},
        {<<"startsubdivisioncode">>, maps:get(<<"startsubdivisioncode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the health checks that are associated with the
%% current Amazon Web Services account.
-spec list_health_checks(aws_client:aws_client()) ->
    {ok, list_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_health_checks_errors(), tuple()}.
list_health_checks(Client)
  when is_map(Client) ->
    list_health_checks(Client, #{}, #{}).

-spec list_health_checks(aws_client:aws_client(), map(), map()) ->
    {ok, list_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_health_checks_errors(), tuple()}.
list_health_checks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_health_checks(Client, QueryMap, HeadersMap, []).

-spec list_health_checks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_health_checks_errors(), tuple()}.
list_health_checks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the public and private hosted zones that are
%% associated with the
%% current Amazon Web Services account.
%%
%% The response includes a `HostedZones'
%% child element for each hosted zone.
%%
%% Amazon Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of
%% hosted zones, you can use the `maxitems' parameter to list them in
%% groups of
%% up to 100.
-spec list_hosted_zones(aws_client:aws_client()) ->
    {ok, list_hosted_zones_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_errors(), tuple()}.
list_hosted_zones(Client)
  when is_map(Client) ->
    list_hosted_zones(Client, #{}, #{}).

-spec list_hosted_zones(aws_client:aws_client(), map(), map()) ->
    {ok, list_hosted_zones_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_errors(), tuple()}.
list_hosted_zones(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones(Client, QueryMap, HeadersMap, []).

-spec list_hosted_zones(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_hosted_zones_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_errors(), tuple()}.
list_hosted_zones(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"delegationsetid">>, maps:get(<<"delegationsetid">>, QueryMap, undefined)},
        {<<"hostedzonetype">>, maps:get(<<"hostedzonetype">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of your hosted zones in lexicographic order.
%%
%% The response includes a
%% `HostedZones' child element for each hosted zone created by the
%% current
%% Amazon Web Services account.
%%
%% `ListHostedZonesByName' sorts hosted zones by name with the labels
%% reversed. For example:
%%
%% `com.example.www.'
%%
%% Note the trailing dot, which can change the sort order in some
%% circumstances.
%%
%% If the domain name includes escape characters or Punycode,
%% `ListHostedZonesByName' alphabetizes the domain name using the escaped
%% or
%% Punycoded value, which is the format that Amazon Route 53 saves in its
%% database. For
%% example, to create a hosted zone for exämple.com, you specify
%% ex\344mple.com for
%% the domain name. `ListHostedZonesByName' alphabetizes it as:
%%
%% `com.ex\344mple.'
%%
%% The labels are reversed and alphabetized using the escaped value. For more
%% information
%% about valid domain name formats, including internationalized domain names,
%% see DNS
%% Domain Name Format:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
%% in the Amazon Route 53 Developer
%% Guide.
%%
%% Route 53 returns up to 100 items in each response. If you have a lot of
%% hosted zones,
%% use the `MaxItems' parameter to list them in groups of up to 100. The
%% response includes values that help navigate from one group of
%% `MaxItems'
%% hosted zones to the next:
%%
%% The `DNSName' and `HostedZoneId' elements in the
%% response contain the values, if any, specified for the `dnsname' and
%% `hostedzoneid' parameters in the request that produced the
%% current response.
%%
%% The `MaxItems' element in the response contains the value, if any,
%% that you specified for the `maxitems' parameter in the request that
%% produced the current response.
%%
%% If the value of `IsTruncated' in the response is true, there are
%% more hosted zones associated with the current Amazon Web Services account.
%%
%% If `IsTruncated' is false, this response includes the last hosted
%% zone that is associated with the current account. The `NextDNSName'
%% element and `NextHostedZoneId' elements are omitted from the
%% response.
%%
%% The `NextDNSName' and `NextHostedZoneId' elements in the
%% response contain the domain name and the hosted zone ID of the next hosted
%% zone
%% that is associated with the current Amazon Web Services account. If you
%% want to
%% list more hosted zones, make another call to `ListHostedZonesByName',
%% and specify the value of `NextDNSName' and
%% `NextHostedZoneId' in the `dnsname' and
%% `hostedzoneid' parameters, respectively.
-spec list_hosted_zones_by_name(aws_client:aws_client()) ->
    {ok, list_hosted_zones_by_name_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_name_errors(), tuple()}.
list_hosted_zones_by_name(Client)
  when is_map(Client) ->
    list_hosted_zones_by_name(Client, #{}, #{}).

-spec list_hosted_zones_by_name(aws_client:aws_client(), map(), map()) ->
    {ok, list_hosted_zones_by_name_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_name_errors(), tuple()}.
list_hosted_zones_by_name(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones_by_name(Client, QueryMap, HeadersMap, []).

-spec list_hosted_zones_by_name(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_hosted_zones_by_name_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_name_errors(), tuple()}.
list_hosted_zones_by_name(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonesbyname"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dnsname">>, maps:get(<<"dnsname">>, QueryMap, undefined)},
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the private hosted zones that a specified VPC is associated
%% with, regardless
%% of which Amazon Web Services account or Amazon Web Services service owns
%% the hosted zones.
%%
%% The `HostedZoneOwner' structure in the response contains one of the
%% following
%% values:
%%
%% An `OwningAccount' element, which contains the account number of
%% either the current Amazon Web Services account or another Amazon Web
%% Services account. Some services, such as Cloud Map, create
%% hosted zones using the current account.
%%
%% An `OwningService' element, which identifies the Amazon Web Services
%% service that created and owns the hosted zone. For example, if a hosted
%% zone was
%% created by Amazon Elastic File System (Amazon EFS), the value of
%% `Owner' is `efs.amazonaws.com'.
%%
%% `ListHostedZonesByVPC' returns the hosted zones associated with the
%% specified VPC and does not reflect the hosted zone
%% associations to VPCs via Route 53 Profiles. To get the associations to a
%% Profile, call the ListProfileResourceAssociations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileResourceAssociations.html
%% API.
%%
%% When listing private hosted zones, the hosted zone and the Amazon VPC must
%% belong to the same partition where the hosted zones were created. A
%% partition is a
%% group of Amazon Web Services Regions. Each Amazon Web Services account is
%% scoped to
%% one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the Amazon Web Services General Reference.
-spec list_hosted_zones_by_vpc(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_hosted_zones_by_vpc_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_vpc_errors(), tuple()}.
list_hosted_zones_by_vpc(Client, VPCId, VPCRegion)
  when is_map(Client) ->
    list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, #{}, #{}).

-spec list_hosted_zones_by_vpc(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_hosted_zones_by_vpc_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_vpc_errors(), tuple()}.
list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap, []).

-spec list_hosted_zones_by_vpc(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_hosted_zones_by_vpc_response(), tuple()} |
    {error, any()} |
    {error, list_hosted_zones_by_vpc_errors(), tuple()}.
list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonesbyvpc"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)},
        {<<"vpcid">>, VPCId},
        {<<"vpcregion">>, VPCRegion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the configurations for DNS query logging that are associated
%% with the current
%% Amazon Web Services account or the configuration that is associated with a
%% specified
%% hosted zone.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html.
%% Additional information, including the format of
%% DNS query logs, appears in Logging DNS Queries:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html
%% in
%% the Amazon Route 53 Developer Guide.
-spec list_query_logging_configs(aws_client:aws_client()) ->
    {ok, list_query_logging_configs_response(), tuple()} |
    {error, any()} |
    {error, list_query_logging_configs_errors(), tuple()}.
list_query_logging_configs(Client)
  when is_map(Client) ->
    list_query_logging_configs(Client, #{}, #{}).

-spec list_query_logging_configs(aws_client:aws_client(), map(), map()) ->
    {ok, list_query_logging_configs_response(), tuple()} |
    {error, any()} |
    {error, list_query_logging_configs_errors(), tuple()}.
list_query_logging_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_query_logging_configs(Client, QueryMap, HeadersMap, []).

-spec list_query_logging_configs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_query_logging_configs_response(), tuple()} |
    {error, any()} |
    {error, list_query_logging_configs_errors(), tuple()}.
list_query_logging_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/queryloggingconfig"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource record sets in a specified hosted zone.
%%
%% `ListResourceRecordSets' returns up to 300 resource record sets at a
%% time
%% in ASCII order, beginning at a position specified by the `name' and
%% `type' elements.
%%
%% Sort order
%%
%% `ListResourceRecordSets' sorts results first by DNS name with the
%% labels
%% reversed, for example:
%%
%% `com.example.www.'
%%
%% Note the trailing dot, which can change the sort order when the record
%% name contains
%% characters that appear before `.' (decimal 46) in the ASCII table.
%% These
%% characters include the following: `! &quot; # $ % &amp; ' ( ) * + ,
%% -'
%%
%% When multiple records have the same DNS name, `ListResourceRecordSets'
%% sorts results by the record type.
%%
%% Specifying where to start listing records
%%
%% You can use the name and type elements to specify the resource record set
%% that the
%% list begins with:
%%
%% If you do not specify Name or Type
%%
%% The results begin with the first resource record set that the hosted zone
%% contains.
%%
%% If you specify Name but not Type
%%
%% The results begin with the first resource record set in the list whose
%% name is greater than or equal to `Name'.
%%
%% If you specify Type but not Name
%%
%% Amazon Route 53 returns the `InvalidInput' error.
%%
%% If you specify both Name and Type
%%
%% The results begin with the first resource record set in the list whose
%% name is greater than or equal to `Name', and whose type is
%% greater than or equal to `Type'.
%%
%% Type is only used to sort between records with the same record Name.
%%
%% Resource record sets that are PENDING
%%
%% This action returns the most current version of the records. This includes
%% records
%% that are `PENDING', and that are not yet available on all Route 53 DNS
%% servers.
%%
%% Changing resource record sets
%%
%% To ensure that you get an accurate listing of the resource record sets for
%% a hosted
%% zone at a point in time, do not submit a `ChangeResourceRecordSets'
%% request
%% while you're paging through the results of a
%% `ListResourceRecordSets'
%% request. If you do, some pages may display results without the latest
%% changes while
%% other pages display results with the latest changes.
%%
%% Displaying the next page of results
%%
%% If a `ListResourceRecordSets' command returns more than one page of
%% results, the value of `IsTruncated' is `true'. To display the next
%% page of results, get the values of `NextRecordName',
%% `NextRecordType', and `NextRecordIdentifier' (if any) from the
%% response. Then submit another `ListResourceRecordSets' request, and
%% specify
%% those values for `StartRecordName', `StartRecordType', and
%% `StartRecordIdentifier'.
-spec list_resource_record_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_record_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_record_sets_errors(), tuple()}.
list_resource_record_sets(Client, HostedZoneId)
  when is_map(Client) ->
    list_resource_record_sets(Client, HostedZoneId, #{}, #{}).

-spec list_resource_record_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_record_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_record_sets_errors(), tuple()}.
list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap, []).

-spec list_resource_record_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_record_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_record_sets_errors(), tuple()}.
list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/rrset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"identifier">>, maps:get(<<"identifier">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the reusable delegation sets that are associated
%% with the current
%% Amazon Web Services account.
-spec list_reusable_delegation_sets(aws_client:aws_client()) ->
    {ok, list_reusable_delegation_sets_response(), tuple()} |
    {error, any()} |
    {error, list_reusable_delegation_sets_errors(), tuple()}.
list_reusable_delegation_sets(Client)
  when is_map(Client) ->
    list_reusable_delegation_sets(Client, #{}, #{}).

-spec list_reusable_delegation_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_reusable_delegation_sets_response(), tuple()} |
    {error, any()} |
    {error, list_reusable_delegation_sets_errors(), tuple()}.
list_reusable_delegation_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reusable_delegation_sets(Client, QueryMap, HeadersMap, []).

-spec list_reusable_delegation_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_reusable_delegation_sets_response(), tuple()} |
    {error, any()} |
    {error, list_reusable_delegation_sets_errors(), tuple()}.
list_reusable_delegation_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/delegationset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for one health check or hosted zone.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Billing and Cost Management User Guide.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId, ResourceType)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, ResourceType, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for up to 10 health checks or hosted zones.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Billing and Cost Management User Guide.
-spec list_tags_for_resources(aws_client:aws_client(), binary() | list(), list_tags_for_resources_request()) ->
    {ok, list_tags_for_resources_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resources_errors(), tuple()}.
list_tags_for_resources(Client, ResourceType, Input) ->
    list_tags_for_resources(Client, ResourceType, Input, []).

-spec list_tags_for_resources(aws_client:aws_client(), binary() | list(), list_tags_for_resources_request(), proplists:proplist()) ->
    {ok, list_tags_for_resources_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resources_errors(), tuple()}.
list_tags_for_resources(Client, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the latest version for every traffic policy
%% that is associated
%% with the current Amazon Web Services account.
%%
%% Policies are listed in the order that they
%% were created in.
%%
%% For information about how of deleting a traffic policy affects the
%% response from
%% `ListTrafficPolicies', see DeleteTrafficPolicy:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html.
-spec list_traffic_policies(aws_client:aws_client()) ->
    {ok, list_traffic_policies_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policies_errors(), tuple()}.
list_traffic_policies(Client)
  when is_map(Client) ->
    list_traffic_policies(Client, #{}, #{}).

-spec list_traffic_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_traffic_policies_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policies_errors(), tuple()}.
list_traffic_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policies(Client, QueryMap, HeadersMap, []).

-spec list_traffic_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_policies_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policies_errors(), tuple()}.
list_traffic_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyid">>, maps:get(<<"trafficpolicyid">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using the
%% current Amazon Web Services account.
%%
%% After you submit an `UpdateTrafficPolicyInstance' request, there's
%% a
%% brief delay while Amazon Route 53 creates the resource record sets that
%% are
%% specified in the traffic policy definition. For more information, see the
%% `State' response element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic
%% policy instances, you can use the `MaxItems' parameter to list them in
%% groups
%% of up to 100.
-spec list_traffic_policy_instances(aws_client:aws_client()) ->
    {ok, list_traffic_policy_instances_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_errors(), tuple()}.
list_traffic_policy_instances(Client)
  when is_map(Client) ->
    list_traffic_policy_instances(Client, #{}, #{}).

-spec list_traffic_policy_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_traffic_policy_instances_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_errors(), tuple()}.
list_traffic_policy_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances(Client, QueryMap, HeadersMap, []).

-spec list_traffic_policy_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_policy_instances_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_errors(), tuple()}.
list_traffic_policy_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% in a specified
%% hosted zone.
%%
%% After you submit a `CreateTrafficPolicyInstance' or an
%% `UpdateTrafficPolicyInstance' request, there's a brief delay while
%% Amazon Route 53 creates the resource record sets that are specified in the
%% traffic
%% policy definition. For more information, see the `State' response
%% element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic
%% policy instances, you can use the `MaxItems' parameter to list them in
%% groups
%% of up to 100.
-spec list_traffic_policy_instances_by_hosted_zone(aws_client:aws_client(), binary() | list()) ->
    {ok, list_traffic_policy_instances_by_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_hosted_zone_errors(), tuple()}.
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId)
  when is_map(Client) ->
    list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, #{}, #{}).

-spec list_traffic_policy_instances_by_hosted_zone(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_traffic_policy_instances_by_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_hosted_zone_errors(), tuple()}.
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap, []).

-spec list_traffic_policy_instances_by_hosted_zone(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_policy_instances_by_hosted_zone_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_hosted_zone_errors(), tuple()}.
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances/hostedzone"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, HostedZoneId},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using a
%% specify traffic policy version.
%%
%% After you submit a `CreateTrafficPolicyInstance' or an
%% `UpdateTrafficPolicyInstance' request, there's a brief delay while
%% Amazon Route 53 creates the resource record sets that are specified in the
%% traffic
%% policy definition. For more information, see the `State' response
%% element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic
%% policy instances, you can use the `MaxItems' parameter to list them in
%% groups
%% of up to 100.
-spec list_traffic_policy_instances_by_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_traffic_policy_instances_by_policy_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_policy_errors(), tuple()}.
list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion)
  when is_map(Client) ->
    list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, #{}, #{}).

-spec list_traffic_policy_instances_by_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_traffic_policy_instances_by_policy_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_policy_errors(), tuple()}.
list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap, []).

-spec list_traffic_policy_instances_by_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_policy_instances_by_policy_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_instances_by_policy_errors(), tuple()}.
list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances/trafficpolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"id">>, TrafficPolicyId},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)},
        {<<"version">>, TrafficPolicyVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions for a specified traffic
%% policy.
%%
%% Traffic policy versions are listed in numerical order by
%% `VersionNumber'.
-spec list_traffic_policy_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_traffic_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_versions_errors(), tuple()}.
list_traffic_policy_versions(Client, Id)
  when is_map(Client) ->
    list_traffic_policy_versions(Client, Id, #{}, #{}).

-spec list_traffic_policy_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_traffic_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_versions_errors(), tuple()}.
list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap, []).

-spec list_traffic_policy_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_traffic_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policy_versions_errors(), tuple()}.
list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicies/", aws_util:encode_uri(Id), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyversion">>, maps:get(<<"trafficpolicyversion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the VPCs that were created by other accounts and that
%% can be associated
%% with a specified hosted zone because you've submitted one or more
%% `CreateVPCAssociationAuthorization' requests.
%%
%% The response includes a `VPCs' element with a `VPC' child
%% element for each VPC that can be associated with the hosted zone.
-spec list_vpc_association_authorizations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vpc_association_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_association_authorizations_errors(), tuple()}.
list_vpc_association_authorizations(Client, HostedZoneId)
  when is_map(Client) ->
    list_vpc_association_authorizations(Client, HostedZoneId, #{}, #{}).

-spec list_vpc_association_authorizations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vpc_association_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_association_authorizations_errors(), tuple()}.
list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap, []).

-spec list_vpc_association_authorizations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_association_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_association_authorizations_errors(), tuple()}.
list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the value that Amazon Route 53 returns in response to a DNS
%% request for a
%% specified record name and type.
%%
%% You can optionally specify the IP address of a DNS
%% resolver, an EDNS0 client subnet IP address, and a subnet mask.
%%
%% This call only supports querying public hosted zones.
%%
%% The `TestDnsAnswer ' returns information similar to what you would
%% expect from the answer
%% section of the `dig' command. Therefore, if you query for the name
%% servers of a subdomain that point to the parent name servers, those will
%% not be
%% returned.
-spec test_dns_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, test_dns_answer_response(), tuple()} |
    {error, any()} |
    {error, test_dns_answer_errors(), tuple()}.
test_dns_answer(Client, HostedZoneId, RecordName, RecordType)
  when is_map(Client) ->
    test_dns_answer(Client, HostedZoneId, RecordName, RecordType, #{}, #{}).

-spec test_dns_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, test_dns_answer_response(), tuple()} |
    {error, any()} |
    {error, test_dns_answer_errors(), tuple()}.
test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap, []).

-spec test_dns_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, test_dns_answer_response(), tuple()} |
    {error, any()} |
    {error, test_dns_answer_errors(), tuple()}.
test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/testdnsanswer"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"edns0clientsubnetip">>, maps:get(<<"edns0clientsubnetip">>, QueryMap, undefined)},
        {<<"edns0clientsubnetmask">>, maps:get(<<"edns0clientsubnetmask">>, QueryMap, undefined)},
        {<<"hostedzoneid">>, HostedZoneId},
        {<<"recordname">>, RecordName},
        {<<"recordtype">>, RecordType},
        {<<"resolverip">>, maps:get(<<"resolverip">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an existing health check.
%%
%% Note that some values can't be updated.
%%
%% For more information about updating health checks, see Creating,
%% Updating, and Deleting Health Checks:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html
%% in the Amazon Route 53
%% Developer Guide.
-spec update_health_check(aws_client:aws_client(), binary() | list(), update_health_check_request()) ->
    {ok, update_health_check_response(), tuple()} |
    {error, any()} |
    {error, update_health_check_errors(), tuple()}.
update_health_check(Client, HealthCheckId, Input) ->
    update_health_check(Client, HealthCheckId, Input, []).

-spec update_health_check(aws_client:aws_client(), binary() | list(), update_health_check_request(), proplists:proplist()) ->
    {ok, update_health_check_response(), tuple()} |
    {error, any()} |
    {error, update_health_check_errors(), tuple()}.
update_health_check(Client, HealthCheckId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified hosted zone.
-spec update_hosted_zone_comment(aws_client:aws_client(), binary() | list(), update_hosted_zone_comment_request()) ->
    {ok, update_hosted_zone_comment_response(), tuple()} |
    {error, any()} |
    {error, update_hosted_zone_comment_errors(), tuple()}.
update_hosted_zone_comment(Client, Id, Input) ->
    update_hosted_zone_comment(Client, Id, Input, []).

-spec update_hosted_zone_comment(aws_client:aws_client(), binary() | list(), update_hosted_zone_comment_request(), proplists:proplist()) ->
    {ok, update_hosted_zone_comment_response(), tuple()} |
    {error, any()} |
    {error, update_hosted_zone_comment_errors(), tuple()}.
update_hosted_zone_comment(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified traffic policy version.
-spec update_traffic_policy_comment(aws_client:aws_client(), binary() | list(), binary() | list(), update_traffic_policy_comment_request()) ->
    {ok, update_traffic_policy_comment_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_comment_errors(), tuple()}.
update_traffic_policy_comment(Client, Id, Version, Input) ->
    update_traffic_policy_comment(Client, Id, Version, Input, []).

-spec update_traffic_policy_comment(aws_client:aws_client(), binary() | list(), binary() | list(), update_traffic_policy_comment_request(), proplists:proplist()) ->
    {ok, update_traffic_policy_comment_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_comment_errors(), tuple()}.
update_traffic_policy_comment(Client, Id, Version, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
%% After you submit a `UpdateTrafficPolicyInstance' request, there's
%% a brief delay while Route 53 creates the resource record sets
%% that are specified in the traffic policy definition.
%%
%% Use `GetTrafficPolicyInstance' with the `id' of updated traffic
%% policy instance confirm
%% that the
%% `UpdateTrafficPolicyInstance' request completed successfully. For more
%% information, see the `State' response element.
%%
%% Updates the resource record sets in a specified hosted zone that were
%% created based on
%% the settings in a specified traffic policy version.
%%
%% When you update a traffic policy instance, Amazon Route 53 continues to
%% respond to DNS
%% queries for the root resource record set name (such as example.com) while
%% it replaces
%% one group of resource record sets with another. Route 53 performs the
%% following
%% operations:
%%
%% Route 53 creates a new group of resource record sets based on the
%% specified
%% traffic policy. This is true regardless of how significant the differences
%% are
%% between the existing resource record sets and the new resource record
%% sets.
%%
%% When all of the new resource record sets have been created, Route 53
%% starts to
%% respond to DNS queries for the root resource record set name (such as
%% example.com) by using the new resource record sets.
%%
%% Route 53 deletes the old group of resource record sets that are associated
%% with the root resource record set name.
-spec update_traffic_policy_instance(aws_client:aws_client(), binary() | list(), update_traffic_policy_instance_request()) ->
    {ok, update_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_instance_errors(), tuple()}.
update_traffic_policy_instance(Client, Id, Input) ->
    update_traffic_policy_instance(Client, Id, Input, []).

-spec update_traffic_policy_instance(aws_client:aws_client(), binary() | list(), update_traffic_policy_instance_request(), proplists:proplist()) ->
    {ok, update_traffic_policy_instance_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_instance_errors(), tuple()}.
update_traffic_policy_instance(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
    Client1 = Client#{service => <<"route53">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"route53">>, Client1),
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
