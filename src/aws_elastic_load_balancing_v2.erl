%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Elastic Load Balancing
%%
%% A load balancer distributes incoming traffic across targets, such as your
%% EC2 instances.
%%
%% This enables you to increase the availability of your application. The
%% load balancer also
%% monitors the health of its registered targets and ensures that it routes
%% traffic only to
%% healthy targets. You configure your load balancer to accept incoming
%% traffic by specifying one
%% or more listeners, which are configured with a protocol and port number
%% for connections from
%% clients to the load balancer. You configure a target group with a protocol
%% and port number for
%% connections from the load balancer to the targets, and with health check
%% settings to be used
%% when checking the health status of the targets.
%%
%% Elastic Load Balancing supports the following types of load balancers:
%% Application Load
%% Balancers, Network Load Balancers, Gateway Load Balancers, and Classic
%% Load Balancers. This
%% reference covers the following load balancer types:
%%
%% Application Load Balancer - Operates at the application layer (layer 7)
%% and supports
%% HTTP and HTTPS.
%%
%% Network Load Balancer - Operates at the transport layer (layer 4) and
%% supports TCP,
%% TLS, and UDP.
%%
%% Gateway Load Balancer - Operates at the network layer (layer 3).
%%
%% For more information, see the Elastic Load Balancing User
%% Guide: https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/.
%%
%% All Elastic Load Balancing operations are idempotent, which means that
%% they complete at
%% most one time. If you repeat an operation, it succeeds.
-module(aws_elastic_load_balancing_v2).

-export([add_listener_certificates/2,
         add_listener_certificates/3,
         add_tags/2,
         add_tags/3,
         add_trust_store_revocations/2,
         add_trust_store_revocations/3,
         create_listener/2,
         create_listener/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_rule/2,
         create_rule/3,
         create_target_group/2,
         create_target_group/3,
         create_trust_store/2,
         create_trust_store/3,
         delete_listener/2,
         delete_listener/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_rule/2,
         delete_rule/3,
         delete_shared_trust_store_association/2,
         delete_shared_trust_store_association/3,
         delete_target_group/2,
         delete_target_group/3,
         delete_trust_store/2,
         delete_trust_store/3,
         deregister_targets/2,
         deregister_targets/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_capacity_reservation/2,
         describe_capacity_reservation/3,
         describe_listener_attributes/2,
         describe_listener_attributes/3,
         describe_listener_certificates/2,
         describe_listener_certificates/3,
         describe_listeners/2,
         describe_listeners/3,
         describe_load_balancer_attributes/2,
         describe_load_balancer_attributes/3,
         describe_load_balancers/2,
         describe_load_balancers/3,
         describe_rules/2,
         describe_rules/3,
         describe_ssl_policies/2,
         describe_ssl_policies/3,
         describe_tags/2,
         describe_tags/3,
         describe_target_group_attributes/2,
         describe_target_group_attributes/3,
         describe_target_groups/2,
         describe_target_groups/3,
         describe_target_health/2,
         describe_target_health/3,
         describe_trust_store_associations/2,
         describe_trust_store_associations/3,
         describe_trust_store_revocations/2,
         describe_trust_store_revocations/3,
         describe_trust_stores/2,
         describe_trust_stores/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_trust_store_ca_certificates_bundle/2,
         get_trust_store_ca_certificates_bundle/3,
         get_trust_store_revocation_content/2,
         get_trust_store_revocation_content/3,
         modify_capacity_reservation/2,
         modify_capacity_reservation/3,
         modify_listener/2,
         modify_listener/3,
         modify_listener_attributes/2,
         modify_listener_attributes/3,
         modify_load_balancer_attributes/2,
         modify_load_balancer_attributes/3,
         modify_rule/2,
         modify_rule/3,
         modify_target_group/2,
         modify_target_group/3,
         modify_target_group_attributes/2,
         modify_target_group_attributes/3,
         modify_trust_store/2,
         modify_trust_store/3,
         register_targets/2,
         register_targets/3,
         remove_listener_certificates/2,
         remove_listener_certificates/3,
         remove_tags/2,
         remove_tags/3,
         remove_trust_store_revocations/2,
         remove_trust_store_revocations/3,
         set_ip_address_type/2,
         set_ip_address_type/3,
         set_rule_priorities/2,
         set_rule_priorities/3,
         set_security_groups/2,
         set_security_groups/3,
         set_subnets/2,
         set_subnets/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_listener_attributes_input() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type describe_listener_attributes_input() :: #{binary() => any()}.

%% Example:
%% target_health() :: #{
%%   <<"Description">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type target_health() :: #{binary() => any()}.

%% Example:
%% invalid_target_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_target_exception() :: #{binary() => any()}.

%% Example:
%% describe_rules_input() :: #{
%%   <<"ListenerArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"RuleArns">> => list(string()())
%% }
-type describe_rules_input() :: #{binary() => any()}.

%% Example:
%% get_trust_store_ca_certificates_bundle_output() :: #{
%%   <<"Location">> => string()
%% }
-type get_trust_store_ca_certificates_bundle_output() :: #{binary() => any()}.

%% Example:
%% describe_capacity_reservation_output() :: #{
%%   <<"CapacityReservationState">> => list(zonal_capacity_reservation_state()()),
%%   <<"DecreaseRequestsRemaining">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MinimumLoadBalancerCapacity">> => minimum_load_balancer_capacity()
%% }
-type describe_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% trust_store_revocation() :: #{
%%   <<"NumberOfRevokedEntries">> => float(),
%%   <<"RevocationId">> => float(),
%%   <<"RevocationType">> => list(any()),
%%   <<"TrustStoreArn">> => string()
%% }
-type trust_store_revocation() :: #{binary() => any()}.

%% Example:
%% minimum_load_balancer_capacity() :: #{
%%   <<"CapacityUnits">> => integer()
%% }
-type minimum_load_balancer_capacity() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"LoadBalancerAddresses">> => list(load_balancer_address()()),
%%   <<"OutpostId">> => string(),
%%   <<"SourceNatIpv6Prefixes">> => list(string()()),
%%   <<"SubnetId">> => string(),
%%   <<"ZoneName">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_output() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% revocation_content() :: #{
%%   <<"RevocationType">> => list(any()),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3ObjectVersion">> => string()
%% }
-type revocation_content() :: #{binary() => any()}.

%% Example:
%% delete_listener_output() :: #{

%% }
-type delete_listener_output() :: #{binary() => any()}.

%% Example:
%% administrative_override() :: #{
%%   <<"Description">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type administrative_override() :: #{binary() => any()}.

%% Example:
%% add_trust_store_revocations_output() :: #{
%%   <<"TrustStoreRevocations">> => list(trust_store_revocation()())
%% }
-type add_trust_store_revocations_output() :: #{binary() => any()}.

%% Example:
%% create_target_group_output() :: #{
%%   <<"TargetGroups">> => list(target_group()())
%% }
-type create_target_group_output() :: #{binary() => any()}.

%% Example:
%% listener() :: #{
%%   <<"AlpnPolicy">> => list(string()()),
%%   <<"Certificates">> => list(certificate()()),
%%   <<"DefaultActions">> => list(action()()),
%%   <<"ListenerArn">> => string(),
%%   <<"LoadBalancerArn">> => string(),
%%   <<"MutualAuthentication">> => mutual_authentication_attributes(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"SslPolicy">> => string()
%% }
-type listener() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% availability_zone_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type availability_zone_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% create_listener_input() :: #{
%%   <<"AlpnPolicy">> => list(string()()),
%%   <<"Certificates">> => list(certificate()()),
%%   <<"DefaultActions">> := list(action()()),
%%   <<"LoadBalancerArn">> := string(),
%%   <<"MutualAuthentication">> => mutual_authentication_attributes(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"SslPolicy">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_listener_input() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_output() :: #{

%% }
-type delete_load_balancer_output() :: #{binary() => any()}.

%% Example:
%% add_listener_certificates_output() :: #{
%%   <<"Certificates">> => list(certificate()())
%% }
-type add_listener_certificates_output() :: #{binary() => any()}.

%% Example:
%% modify_target_group_output() :: #{
%%   <<"TargetGroups">> => list(target_group()())
%% }
-type modify_target_group_output() :: #{binary() => any()}.

%% Example:
%% set_security_groups_input() :: #{
%%   <<"EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic">> => list(any()),
%%   <<"LoadBalancerArn">> := string(),
%%   <<"SecurityGroups">> := list(string()())
%% }
-type set_security_groups_input() :: #{binary() => any()}.

%% Example:
%% add_tags_output() :: #{

%% }
-type add_tags_output() :: #{binary() => any()}.

%% Example:
%% modify_trust_store_input() :: #{
%%   <<"CaCertificatesBundleS3Bucket">> := string(),
%%   <<"CaCertificatesBundleS3Key">> := string(),
%%   <<"CaCertificatesBundleS3ObjectVersion">> => string(),
%%   <<"TrustStoreArn">> := string()
%% }
-type modify_trust_store_input() :: #{binary() => any()}.

%% Example:
%% modify_target_group_attributes_input() :: #{
%%   <<"Attributes">> := list(target_group_attribute()()),
%%   <<"TargetGroupArn">> := string()
%% }
-type modify_target_group_attributes_input() :: #{binary() => any()}.

%% Example:
%% add_listener_certificates_input() :: #{
%%   <<"Certificates">> := list(certificate()()),
%%   <<"ListenerArn">> := string()
%% }
-type add_listener_certificates_input() :: #{binary() => any()}.

%% Example:
%% set_subnets_input() :: #{
%%   <<"EnablePrefixForIpv6SourceNat">> => list(any()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"LoadBalancerArn">> := string(),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"Subnets">> => list(string()())
%% }
-type set_subnets_input() :: #{binary() => any()}.

%% Example:
%% subnet_mapping() :: #{
%%   <<"AllocationId">> => string(),
%%   <<"IPv6Address">> => string(),
%%   <<"PrivateIPv4Address">> => string(),
%%   <<"SourceNatIpv6Prefix">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type subnet_mapping() :: #{binary() => any()}.

%% Example:
%% ssl_policy() :: #{
%%   <<"Ciphers">> => list(cipher()()),
%%   <<"Name">> => string(),
%%   <<"SslProtocols">> => list(string()()),
%%   <<"SupportedLoadBalancerTypes">> => list(string()())
%% }
-type ssl_policy() :: #{binary() => any()}.

%% Example:
%% fixed_response_action_config() :: #{
%%   <<"ContentType">> => string(),
%%   <<"MessageBody">> => string(),
%%   <<"StatusCode">> => string()
%% }
-type fixed_response_action_config() :: #{binary() => any()}.

%% Example:
%% modify_listener_output() :: #{
%%   <<"Listeners">> => list(listener()())
%% }
-type modify_listener_output() :: #{binary() => any()}.

%% Example:
%% deregister_targets_input() :: #{
%%   <<"TargetGroupArn">> := string(),
%%   <<"Targets">> := list(target_description()())
%% }
-type deregister_targets_input() :: #{binary() => any()}.

%% Example:
%% trust_store_association() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type trust_store_association() :: #{binary() => any()}.

%% Example:
%% add_tags_input() :: #{
%%   <<"ResourceArns">> := list(string()()),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_input() :: #{binary() => any()}.

%% Example:
%% mutual_authentication_attributes() :: #{
%%   <<"IgnoreClientCertificateExpiry">> => boolean(),
%%   <<"Mode">> => string(),
%%   <<"TrustStoreArn">> => string(),
%%   <<"TrustStoreAssociationStatus">> => list(any())
%% }
-type mutual_authentication_attributes() :: #{binary() => any()}.

%% Example:
%% limit() :: #{
%%   <<"Max">> => string(),
%%   <<"Name">> => string()
%% }
-type limit() :: #{binary() => any()}.

%% Example:
%% invalid_configuration_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_configuration_request_exception() :: #{binary() => any()}.

%% Example:
%% subnet_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type subnet_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_rule_output() :: #{
%%   <<"Rules">> => list(rule()())
%% }
-type create_rule_output() :: #{binary() => any()}.

%% Example:
%% add_trust_store_revocations_input() :: #{
%%   <<"RevocationContents">> => list(revocation_content()()),
%%   <<"TrustStoreArn">> := string()
%% }
-type add_trust_store_revocations_input() :: #{binary() => any()}.

%% Example:
%% describe_target_group_attributes_output() :: #{
%%   <<"Attributes">> => list(target_group_attribute()())
%% }
-type describe_target_group_attributes_output() :: #{binary() => any()}.

%% Example:
%% too_many_rules_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_rules_exception() :: #{binary() => any()}.

%% Example:
%% target_description() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Id">> => string(),
%%   <<"Port">> => integer()
%% }
-type target_description() :: #{binary() => any()}.

%% Example:
%% describe_trust_stores_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TrustStores">> => list(trust_store()())
%% }
-type describe_trust_stores_output() :: #{binary() => any()}.

%% Example:
%% describe_ssl_policies_input() :: #{
%%   <<"LoadBalancerType">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"Names">> => list(string()()),
%%   <<"PageSize">> => integer()
%% }
-type describe_ssl_policies_input() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_output() :: #{
%%   <<"LoadBalancers">> => list(load_balancer()())
%% }
-type create_load_balancer_output() :: #{binary() => any()}.

%% Example:
%% delete_target_group_output() :: #{

%% }
-type delete_target_group_output() :: #{binary() => any()}.

%% Example:
%% too_many_load_balancers_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_load_balancers_exception() :: #{binary() => any()}.

%% Example:
%% remove_tags_output() :: #{

%% }
-type remove_tags_output() :: #{binary() => any()}.

%% Example:
%% allocation_id_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type allocation_id_not_found_exception() :: #{binary() => any()}.

%% Example:
%% insufficient_capacity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_capacity_exception() :: #{binary() => any()}.

%% Example:
%% delete_rule_output() :: #{

%% }
-type delete_rule_output() :: #{binary() => any()}.

%% Example:
%% create_trust_store_input() :: #{
%%   <<"CaCertificatesBundleS3Bucket">> := string(),
%%   <<"CaCertificatesBundleS3Key">> := string(),
%%   <<"CaCertificatesBundleS3ObjectVersion">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_trust_store_input() :: #{binary() => any()}.

%% Example:
%% delete_association_same_account_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_association_same_account_exception() :: #{binary() => any()}.

%% Example:
%% query_string_condition_config() :: #{
%%   <<"Values">> => list(query_string_key_value_pair()())
%% }
-type query_string_condition_config() :: #{binary() => any()}.

%% Example:
%% duplicate_listener_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_listener_exception() :: #{binary() => any()}.

%% Example:
%% query_string_key_value_pair() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type query_string_key_value_pair() :: #{binary() => any()}.

%% Example:
%% get_trust_store_revocation_content_output() :: #{
%%   <<"Location">> => string()
%% }
-type get_trust_store_revocation_content_output() :: #{binary() => any()}.

%% Example:
%% host_header_condition_config() :: #{
%%   <<"Values">> => list(string()())
%% }
-type host_header_condition_config() :: #{binary() => any()}.

%% Example:
%% describe_ssl_policies_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"SslPolicies">> => list(ssl_policy()())
%% }
-type describe_ssl_policies_output() :: #{binary() => any()}.

%% Example:
%% describe_trust_store_revocation() :: #{
%%   <<"NumberOfRevokedEntries">> => float(),
%%   <<"RevocationId">> => float(),
%%   <<"RevocationType">> => list(any()),
%%   <<"TrustStoreArn">> => string()
%% }
-type describe_trust_store_revocation() :: #{binary() => any()}.

%% Example:
%% authenticate_oidc_action_config() :: #{
%%   <<"AuthenticationRequestExtraParams">> => map(),
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"OnUnauthenticatedRequest">> => list(any()),
%%   <<"Scope">> => string(),
%%   <<"SessionCookieName">> => string(),
%%   <<"SessionTimeout">> => float(),
%%   <<"TokenEndpoint">> => string(),
%%   <<"UseExistingClientSecret">> => boolean(),
%%   <<"UserInfoEndpoint">> => string()
%% }
-type authenticate_oidc_action_config() :: #{binary() => any()}.

%% Example:
%% redirect_action_config() :: #{
%%   <<"Host">> => string(),
%%   <<"Path">> => string(),
%%   <<"Port">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"Query">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type redirect_action_config() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_tags_input() :: #{
%%   <<"ResourceArns">> := list(string()())
%% }
-type describe_tags_input() :: #{binary() => any()}.

%% Example:
%% priority_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type priority_in_use_exception() :: #{binary() => any()}.

%% Example:
%% create_target_group_input() :: #{
%%   <<"HealthCheckEnabled">> => boolean(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => string(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"HealthCheckTimeoutSeconds">> => integer(),
%%   <<"HealthyThresholdCount">> => integer(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Matcher">> => matcher(),
%%   <<"Name">> := string(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"ProtocolVersion">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetType">> => list(any()),
%%   <<"UnhealthyThresholdCount">> => integer(),
%%   <<"VpcId">> => string()
%% }
-type create_target_group_input() :: #{binary() => any()}.

%% Example:
%% certificate_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type certificate_not_found_exception() :: #{binary() => any()}.

%% Example:
%% deregister_targets_output() :: #{

%% }
-type deregister_targets_output() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% modify_listener_input() :: #{
%%   <<"AlpnPolicy">> => list(string()()),
%%   <<"Certificates">> => list(certificate()()),
%%   <<"DefaultActions">> => list(action()()),
%%   <<"ListenerArn">> := string(),
%%   <<"MutualAuthentication">> => mutual_authentication_attributes(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"SslPolicy">> => string()
%% }
-type modify_listener_input() :: #{binary() => any()}.

%% Example:
%% prior_request_not_complete_exception() :: #{
%%   <<"Message">> => string()
%% }
-type prior_request_not_complete_exception() :: #{binary() => any()}.

%% Example:
%% too_many_unique_target_groups_per_load_balancer_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_unique_target_groups_per_load_balancer_exception() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_input() :: #{
%%   <<"LoadBalancerArn">> := string()
%% }
-type delete_load_balancer_input() :: #{binary() => any()}.

%% Example:
%% set_rule_priorities_output() :: #{
%%   <<"Rules">> => list(rule()())
%% }
-type set_rule_priorities_output() :: #{binary() => any()}.

%% Example:
%% tag_description() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type tag_description() :: #{binary() => any()}.

%% Example:
%% delete_target_group_input() :: #{
%%   <<"TargetGroupArn">> := string()
%% }
-type delete_target_group_input() :: #{binary() => any()}.

%% Example:
%% target_group_tuple() :: #{
%%   <<"TargetGroupArn">> => string(),
%%   <<"Weight">> => integer()
%% }
-type target_group_tuple() :: #{binary() => any()}.

%% Example:
%% set_subnets_output() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()()),
%%   <<"EnablePrefixForIpv6SourceNat">> => list(any()),
%%   <<"IpAddressType">> => list(any())
%% }
-type set_subnets_output() :: #{binary() => any()}.

%% Example:
%% incompatible_protocols_exception() :: #{
%%   <<"Message">> => string()
%% }
-type incompatible_protocols_exception() :: #{binary() => any()}.

%% Example:
%% create_listener_output() :: #{
%%   <<"Listeners">> => list(listener()())
%% }
-type create_listener_output() :: #{binary() => any()}.

%% Example:
%% revocation_id_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type revocation_id_not_found_exception() :: #{binary() => any()}.

%% Example:
%% set_ip_address_type_input() :: #{
%%   <<"IpAddressType">> := list(any()),
%%   <<"LoadBalancerArn">> := string()
%% }
-type set_ip_address_type_input() :: #{binary() => any()}.

%% Example:
%% register_targets_output() :: #{

%% }
-type register_targets_output() :: #{binary() => any()}.

%% Example:
%% too_many_target_groups_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_target_groups_exception() :: #{binary() => any()}.

%% Example:
%% delete_shared_trust_store_association_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TrustStoreArn">> := string()
%% }
-type delete_shared_trust_store_association_input() :: #{binary() => any()}.

%% Example:
%% delete_listener_input() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type delete_listener_input() :: #{binary() => any()}.

%% Example:
%% describe_listener_attributes_output() :: #{
%%   <<"Attributes">> => list(listener_attribute()())
%% }
-type describe_listener_attributes_output() :: #{binary() => any()}.

%% Example:
%% load_balancer_state() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Reason">> => string()
%% }
-type load_balancer_state() :: #{binary() => any()}.

%% Example:
%% trust_store_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trust_store_not_found_exception() :: #{binary() => any()}.

%% Example:
%% remove_listener_certificates_input() :: #{
%%   <<"Certificates">> := list(certificate()()),
%%   <<"ListenerArn">> := string()
%% }
-type remove_listener_certificates_input() :: #{binary() => any()}.

%% Example:
%% forward_action_config() :: #{
%%   <<"TargetGroupStickinessConfig">> => target_group_stickiness_config(),
%%   <<"TargetGroups">> => list(target_group_tuple()())
%% }
-type forward_action_config() :: #{binary() => any()}.

%% Example:
%% get_trust_store_ca_certificates_bundle_input() :: #{
%%   <<"TrustStoreArn">> := string()
%% }
-type get_trust_store_ca_certificates_bundle_input() :: #{binary() => any()}.

%% Example:
%% load_balancer_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type load_balancer_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_tags_output() :: #{
%%   <<"TagDescriptions">> => list(tag_description()())
%% }
-type describe_tags_output() :: #{binary() => any()}.

%% Example:
%% too_many_actions_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_actions_exception() :: #{binary() => any()}.

%% Example:
%% trust_store_association_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trust_store_association_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_trust_stores_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"Names">> => list(string()()),
%%   <<"PageSize">> => integer(),
%%   <<"TrustStoreArns">> => list(string()())
%% }
-type describe_trust_stores_input() :: #{binary() => any()}.

%% Example:
%% too_many_targets_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_targets_exception() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% describe_listener_certificates_output() :: #{
%%   <<"Certificates">> => list(certificate()()),
%%   <<"NextMarker">> => string()
%% }
-type describe_listener_certificates_output() :: #{binary() => any()}.

%% Example:
%% describe_trust_store_associations_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"TrustStoreArn">> := string()
%% }
-type describe_trust_store_associations_input() :: #{binary() => any()}.

%% Example:
%% target_health_description() :: #{
%%   <<"AdministrativeOverride">> => administrative_override(),
%%   <<"AnomalyDetection">> => anomaly_detection(),
%%   <<"HealthCheckPort">> => string(),
%%   <<"Target">> => target_description(),
%%   <<"TargetHealth">> => target_health()
%% }
-type target_health_description() :: #{binary() => any()}.

%% Example:
%% invalid_load_balancer_action_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_load_balancer_action_exception() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"Actions">> => list(action()()),
%%   <<"Conditions">> => list(rule_condition()()),
%%   <<"IsDefault">> => boolean(),
%%   <<"Priority">> => string(),
%%   <<"RuleArn">> => string()
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% create_rule_input() :: #{
%%   <<"Actions">> := list(action()()),
%%   <<"Conditions">> := list(rule_condition()()),
%%   <<"ListenerArn">> := string(),
%%   <<"Priority">> := integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_rule_input() :: #{binary() => any()}.

%% Example:
%% set_rule_priorities_input() :: #{
%%   <<"RulePriorities">> := list(rule_priority_pair()())
%% }
-type set_rule_priorities_input() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_output() :: #{
%%   <<"Limits">> => list(limit()()),
%%   <<"NextMarker">> => string()
%% }
-type describe_account_limits_output() :: #{binary() => any()}.

%% Example:
%% delete_trust_store_output() :: #{

%% }
-type delete_trust_store_output() :: #{binary() => any()}.

%% Example:
%% revocation_content_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type revocation_content_not_found_exception() :: #{binary() => any()}.

%% Example:
%% too_many_listeners_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_listeners_exception() :: #{binary() => any()}.

%% Example:
%% describe_load_balancers_input() :: #{
%%   <<"LoadBalancerArns">> => list(string()()),
%%   <<"Marker">> => string(),
%%   <<"Names">> => list(string()()),
%%   <<"PageSize">> => integer()
%% }
-type describe_load_balancers_input() :: #{binary() => any()}.

%% Example:
%% rule_priority_pair() :: #{
%%   <<"Priority">> => integer(),
%%   <<"RuleArn">> => string()
%% }
-type rule_priority_pair() :: #{binary() => any()}.

%% Example:
%% duplicate_target_group_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_target_group_name_exception() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_pending_exception() :: #{
%%   <<"Message">> => string()
%% }
-type capacity_reservation_pending_exception() :: #{binary() => any()}.

%% Example:
%% describe_listeners_output() :: #{
%%   <<"Listeners">> => list(listener()()),
%%   <<"NextMarker">> => string()
%% }
-type describe_listeners_output() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_attributes_output() :: #{
%%   <<"Attributes">> => list(load_balancer_attribute()())
%% }
-type describe_load_balancer_attributes_output() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"IsDefault">> => boolean()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% modify_load_balancer_attributes_output() :: #{
%%   <<"Attributes">> => list(load_balancer_attribute()())
%% }
-type modify_load_balancer_attributes_output() :: #{binary() => any()}.

%% Example:
%% load_balancer_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type load_balancer_attribute() :: #{binary() => any()}.

%% Example:
%% remove_trust_store_revocations_input() :: #{
%%   <<"RevocationIds">> := list(float()()),
%%   <<"TrustStoreArn">> := string()
%% }
-type remove_trust_store_revocations_input() :: #{binary() => any()}.

%% Example:
%% too_many_certificates_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_certificates_exception() :: #{binary() => any()}.

%% Example:
%% ssl_policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ssl_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% remove_listener_certificates_output() :: #{

%% }
-type remove_listener_certificates_output() :: #{binary() => any()}.

%% Example:
%% invalid_security_group_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_security_group_exception() :: #{binary() => any()}.

%% Example:
%% action() :: #{
%%   <<"AuthenticateCognitoConfig">> => authenticate_cognito_action_config(),
%%   <<"AuthenticateOidcConfig">> => authenticate_oidc_action_config(),
%%   <<"FixedResponseConfig">> => fixed_response_action_config(),
%%   <<"ForwardConfig">> => forward_action_config(),
%%   <<"Order">> => integer(),
%%   <<"RedirectConfig">> => redirect_action_config(),
%%   <<"TargetGroupArn">> => string(),
%%   <<"Type">> => list(any())
%% }
-type action() :: #{binary() => any()}.

%% Example:
%% modify_listener_attributes_output() :: #{
%%   <<"Attributes">> => list(listener_attribute()())
%% }
-type modify_listener_attributes_output() :: #{binary() => any()}.

%% Example:
%% describe_trust_store_associations_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TrustStoreAssociations">> => list(trust_store_association()())
%% }
-type describe_trust_store_associations_output() :: #{binary() => any()}.

%% Example:
%% authenticate_cognito_action_config() :: #{
%%   <<"AuthenticationRequestExtraParams">> => map(),
%%   <<"OnUnauthenticatedRequest">> => list(any()),
%%   <<"Scope">> => string(),
%%   <<"SessionCookieName">> => string(),
%%   <<"SessionTimeout">> => float(),
%%   <<"UserPoolArn">> => string(),
%%   <<"UserPoolClientId">> => string(),
%%   <<"UserPoolDomain">> => string()
%% }
-type authenticate_cognito_action_config() :: #{binary() => any()}.

%% Example:
%% delete_trust_store_input() :: #{
%%   <<"TrustStoreArn">> := string()
%% }
-type delete_trust_store_input() :: #{binary() => any()}.

%% Example:
%% describe_target_groups_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TargetGroups">> => list(target_group()())
%% }
-type describe_target_groups_output() :: #{binary() => any()}.

%% Example:
%% remove_trust_store_revocations_output() :: #{

%% }
-type remove_trust_store_revocations_output() :: #{binary() => any()}.

%% Example:
%% capacity_units_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type capacity_units_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% target_group_stickiness_config() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"Enabled">> => boolean()
%% }
-type target_group_stickiness_config() :: #{binary() => any()}.

%% Example:
%% http_request_method_condition_config() :: #{
%%   <<"Values">> => list(string()())
%% }
-type http_request_method_condition_config() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% describe_trust_store_revocations_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"RevocationIds">> => list(float()()),
%%   <<"TrustStoreArn">> := string()
%% }
-type describe_trust_store_revocations_input() :: #{binary() => any()}.

%% Example:
%% too_many_trust_store_revocation_entries_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_trust_store_revocation_entries_exception() :: #{binary() => any()}.

%% Example:
%% rule_condition() :: #{
%%   <<"Field">> => string(),
%%   <<"HostHeaderConfig">> => host_header_condition_config(),
%%   <<"HttpHeaderConfig">> => http_header_condition_config(),
%%   <<"HttpRequestMethodConfig">> => http_request_method_condition_config(),
%%   <<"PathPatternConfig">> => path_pattern_condition_config(),
%%   <<"QueryStringConfig">> => query_string_condition_config(),
%%   <<"SourceIpConfig">> => source_ip_condition_config(),
%%   <<"Values">> => list(string()())
%% }
-type rule_condition() :: #{binary() => any()}.

%% Example:
%% modify_capacity_reservation_output() :: #{
%%   <<"CapacityReservationState">> => list(zonal_capacity_reservation_state()()),
%%   <<"DecreaseRequestsRemaining">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MinimumLoadBalancerCapacity">> => minimum_load_balancer_capacity()
%% }
-type modify_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% capacity_decrease_requests_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type capacity_decrease_requests_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% target_group_association_limit_exception() :: #{
%%   <<"Message">> => string()
%% }
-type target_group_association_limit_exception() :: #{binary() => any()}.

%% Example:
%% modify_load_balancer_attributes_input() :: #{
%%   <<"Attributes">> := list(load_balancer_attribute()()),
%%   <<"LoadBalancerArn">> := string()
%% }
-type modify_load_balancer_attributes_input() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_input() :: #{
%%   <<"CustomerOwnedIpv4Pool">> => string(),
%%   <<"EnablePrefixForIpv6SourceNat">> => list(any()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"Scheme">> => list(any()),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"Subnets">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => list(any())
%% }
-type create_load_balancer_input() :: #{binary() => any()}.

%% Example:
%% too_many_trust_stores_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_trust_stores_exception() :: #{binary() => any()}.

%% Example:
%% describe_target_group_attributes_input() :: #{
%%   <<"TargetGroupArn">> := string()
%% }
-type describe_target_group_attributes_input() :: #{binary() => any()}.

%% Example:
%% duplicate_tag_keys_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_tag_keys_exception() :: #{binary() => any()}.

%% Example:
%% target_group() :: #{
%%   <<"HealthCheckEnabled">> => boolean(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => string(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"HealthCheckTimeoutSeconds">> => integer(),
%%   <<"HealthyThresholdCount">> => integer(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"LoadBalancerArns">> => list(string()()),
%%   <<"Matcher">> => matcher(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"ProtocolVersion">> => string(),
%%   <<"TargetGroupArn">> => string(),
%%   <<"TargetGroupName">> => string(),
%%   <<"TargetType">> => list(any()),
%%   <<"UnhealthyThresholdCount">> => integer(),
%%   <<"VpcId">> => string()
%% }
-type target_group() :: #{binary() => any()}.

%% Example:
%% load_balancer() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()()),
%%   <<"CanonicalHostedZoneId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"CustomerOwnedIpv4Pool">> => string(),
%%   <<"DNSName">> => string(),
%%   <<"EnablePrefixForIpv6SourceNat">> => list(any()),
%%   <<"EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic">> => string(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"LoadBalancerArn">> => string(),
%%   <<"LoadBalancerName">> => string(),
%%   <<"Scheme">> => list(any()),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"State">> => load_balancer_state(),
%%   <<"Type">> => list(any()),
%%   <<"VpcId">> => string()
%% }
-type load_balancer() :: #{binary() => any()}.

%% Example:
%% describe_target_health_input() :: #{
%%   <<"Include">> => list(list(any())()),
%%   <<"TargetGroupArn">> := string(),
%%   <<"Targets">> => list(target_description()())
%% }
-type describe_target_health_input() :: #{binary() => any()}.

%% Example:
%% matcher() :: #{
%%   <<"GrpcCode">> => string(),
%%   <<"HttpCode">> => string()
%% }
-type matcher() :: #{binary() => any()}.

%% Example:
%% duplicate_trust_store_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_trust_store_name_exception() :: #{binary() => any()}.

%% Example:
%% describe_trust_store_revocations_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TrustStoreRevocations">> => list(describe_trust_store_revocation()())
%% }
-type describe_trust_store_revocations_output() :: #{binary() => any()}.

%% Example:
%% describe_listeners_input() :: #{
%%   <<"ListenerArns">> => list(string()()),
%%   <<"LoadBalancerArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type describe_listeners_input() :: #{binary() => any()}.

%% Example:
%% register_targets_input() :: #{
%%   <<"TargetGroupArn">> := string(),
%%   <<"Targets">> := list(target_description()())
%% }
-type register_targets_input() :: #{binary() => any()}.

%% Example:
%% set_ip_address_type_output() :: #{
%%   <<"IpAddressType">> => list(any())
%% }
-type set_ip_address_type_output() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_attributes_input() :: #{
%%   <<"LoadBalancerArn">> := string()
%% }
-type describe_load_balancer_attributes_input() :: #{binary() => any()}.

%% Example:
%% invalid_revocation_content_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_revocation_content_exception() :: #{binary() => any()}.

%% Example:
%% a_l_p_n_policy_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type a_l_p_n_policy_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% target_group_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type target_group_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_listener_certificates_input() :: #{
%%   <<"ListenerArn">> := string(),
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type describe_listener_certificates_input() :: #{binary() => any()}.

%% Example:
%% too_many_registrations_for_target_id_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_registrations_for_target_id_exception() :: #{binary() => any()}.

%% Example:
%% get_trust_store_revocation_content_input() :: #{
%%   <<"RevocationId">> := float(),
%%   <<"TrustStoreArn">> := string()
%% }
-type get_trust_store_revocation_content_input() :: #{binary() => any()}.

%% Example:
%% trust_store_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trust_store_in_use_exception() :: #{binary() => any()}.

%% Example:
%% describe_rules_output() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"Rules">> => list(rule()())
%% }
-type describe_rules_output() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type describe_account_limits_input() :: #{binary() => any()}.

%% Example:
%% load_balancer_address() :: #{
%%   <<"AllocationId">> => string(),
%%   <<"IPv6Address">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"PrivateIPv4Address">> => string()
%% }
-type load_balancer_address() :: #{binary() => any()}.

%% Example:
%% modify_rule_input() :: #{
%%   <<"Actions">> => list(action()()),
%%   <<"Conditions">> => list(rule_condition()()),
%%   <<"RuleArn">> := string()
%% }
-type modify_rule_input() :: #{binary() => any()}.

%% Example:
%% delete_rule_input() :: #{
%%   <<"RuleArn">> := string()
%% }
-type delete_rule_input() :: #{binary() => any()}.

%% Example:
%% describe_capacity_reservation_input() :: #{
%%   <<"LoadBalancerArn">> := string()
%% }
-type describe_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% invalid_ca_certificates_bundle_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_ca_certificates_bundle_exception() :: #{binary() => any()}.

%% Example:
%% health_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type health_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% describe_load_balancers_output() :: #{
%%   <<"LoadBalancers">> => list(load_balancer()()),
%%   <<"NextMarker">> => string()
%% }
-type describe_load_balancers_output() :: #{binary() => any()}.

%% Example:
%% target_group_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type target_group_attribute() :: #{binary() => any()}.

%% Example:
%% modify_capacity_reservation_input() :: #{
%%   <<"LoadBalancerArn">> := string(),
%%   <<"MinimumLoadBalancerCapacity">> => minimum_load_balancer_capacity(),
%%   <<"ResetCapacityReservation">> => boolean()
%% }
-type modify_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% invalid_subnet_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_subnet_exception() :: #{binary() => any()}.

%% Example:
%% trust_store_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type trust_store_not_ready_exception() :: #{binary() => any()}.

%% Example:
%% describe_target_groups_input() :: #{
%%   <<"LoadBalancerArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"Names">> => list(string()()),
%%   <<"PageSize">> => integer(),
%%   <<"TargetGroupArns">> => list(string()())
%% }
-type describe_target_groups_input() :: #{binary() => any()}.

%% Example:
%% duplicate_load_balancer_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_load_balancer_name_exception() :: #{binary() => any()}.

%% Example:
%% remove_tags_input() :: #{
%%   <<"ResourceArns">> := list(string()()),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_input() :: #{binary() => any()}.

%% Example:
%% http_header_condition_config() :: #{
%%   <<"HttpHeaderName">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type http_header_condition_config() :: #{binary() => any()}.

%% Example:
%% listener_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type listener_not_found_exception() :: #{binary() => any()}.

%% Example:
%% path_pattern_condition_config() :: #{
%%   <<"Values">> => list(string()())
%% }
-type path_pattern_condition_config() :: #{binary() => any()}.

%% Example:
%% ca_certificates_bundle_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ca_certificates_bundle_not_found_exception() :: #{binary() => any()}.

%% Example:
%% zonal_capacity_reservation_state() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"EffectiveCapacityUnits">> => float(),
%%   <<"State">> => capacity_reservation_status()
%% }
-type zonal_capacity_reservation_state() :: #{binary() => any()}.

%% Example:
%% invalid_scheme_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_scheme_exception() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_status() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Reason">> => string()
%% }
-type capacity_reservation_status() :: #{binary() => any()}.

%% Example:
%% anomaly_detection() :: #{
%%   <<"MitigationInEffect">> => list(any()),
%%   <<"Result">> => list(any())
%% }
-type anomaly_detection() :: #{binary() => any()}.

%% Example:
%% describe_target_health_output() :: #{
%%   <<"TargetHealthDescriptions">> => list(target_health_description()())
%% }
-type describe_target_health_output() :: #{binary() => any()}.

%% Example:
%% source_ip_condition_config() :: #{
%%   <<"Values">> => list(string()())
%% }
-type source_ip_condition_config() :: #{binary() => any()}.

%% Example:
%% cipher() :: #{
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer()
%% }
-type cipher() :: #{binary() => any()}.

%% Example:
%% rule_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type rule_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_trust_store_output() :: #{
%%   <<"TrustStores">> => list(trust_store()())
%% }
-type create_trust_store_output() :: #{binary() => any()}.

%% Example:
%% set_security_groups_output() :: #{
%%   <<"EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()())
%% }
-type set_security_groups_output() :: #{binary() => any()}.

%% Example:
%% modify_trust_store_output() :: #{
%%   <<"TrustStores">> => list(trust_store()())
%% }
-type modify_trust_store_output() :: #{binary() => any()}.

%% Example:
%% listener_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type listener_attribute() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_protocol_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_protocol_exception() :: #{binary() => any()}.

%% Example:
%% modify_listener_attributes_input() :: #{
%%   <<"Attributes">> := list(listener_attribute()()),
%%   <<"ListenerArn">> := string()
%% }
-type modify_listener_attributes_input() :: #{binary() => any()}.

%% Example:
%% modify_target_group_input() :: #{
%%   <<"HealthCheckEnabled">> => boolean(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => string(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"HealthCheckTimeoutSeconds">> => integer(),
%%   <<"HealthyThresholdCount">> => integer(),
%%   <<"Matcher">> => matcher(),
%%   <<"TargetGroupArn">> := string(),
%%   <<"UnhealthyThresholdCount">> => integer()
%% }
-type modify_target_group_input() :: #{binary() => any()}.

%% Example:
%% modify_rule_output() :: #{
%%   <<"Rules">> => list(rule()())
%% }
-type modify_rule_output() :: #{binary() => any()}.

%% Example:
%% delete_shared_trust_store_association_output() :: #{

%% }
-type delete_shared_trust_store_association_output() :: #{binary() => any()}.

%% Example:
%% trust_store() :: #{
%%   <<"Name">> => string(),
%%   <<"NumberOfCaCertificates">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalRevokedEntries">> => float(),
%%   <<"TrustStoreArn">> => string()
%% }
-type trust_store() :: #{binary() => any()}.

%% Example:
%% modify_target_group_attributes_output() :: #{
%%   <<"Attributes">> => list(target_group_attribute()())
%% }
-type modify_target_group_attributes_output() :: #{binary() => any()}.

-type add_listener_certificates_errors() ::
    listener_not_found_exception() | 
    too_many_certificates_exception() | 
    certificate_not_found_exception().

-type add_tags_errors() ::
    too_many_tags_exception() | 
    rule_not_found_exception() | 
    listener_not_found_exception() | 
    target_group_not_found_exception() | 
    duplicate_tag_keys_exception() | 
    load_balancer_not_found_exception() | 
    trust_store_not_found_exception().

-type add_trust_store_revocations_errors() ::
    invalid_revocation_content_exception() | 
    too_many_trust_store_revocation_entries_exception() | 
    revocation_content_not_found_exception() | 
    trust_store_not_found_exception().

-type create_listener_errors() ::
    unsupported_protocol_exception() | 
    too_many_tags_exception() | 
    trust_store_not_ready_exception() | 
    too_many_registrations_for_target_id_exception() | 
    target_group_not_found_exception() | 
    a_l_p_n_policy_not_supported_exception() | 
    target_group_association_limit_exception() | 
    ssl_policy_not_found_exception() | 
    too_many_certificates_exception() | 
    too_many_listeners_exception() | 
    invalid_load_balancer_action_exception() | 
    too_many_targets_exception() | 
    too_many_actions_exception() | 
    load_balancer_not_found_exception() | 
    trust_store_not_found_exception() | 
    incompatible_protocols_exception() | 
    too_many_unique_target_groups_per_load_balancer_exception() | 
    certificate_not_found_exception() | 
    duplicate_listener_exception() | 
    invalid_configuration_request_exception().

-type create_load_balancer_errors() ::
    too_many_tags_exception() | 
    invalid_scheme_exception() | 
    duplicate_load_balancer_name_exception() | 
    invalid_subnet_exception() | 
    duplicate_tag_keys_exception() | 
    invalid_security_group_exception() | 
    operation_not_permitted_exception() | 
    allocation_id_not_found_exception() | 
    too_many_load_balancers_exception() | 
    subnet_not_found_exception() | 
    invalid_configuration_request_exception() | 
    availability_zone_not_supported_exception() | 
    resource_in_use_exception().

-type create_rule_errors() ::
    unsupported_protocol_exception() | 
    too_many_tags_exception() | 
    listener_not_found_exception() | 
    too_many_registrations_for_target_id_exception() | 
    target_group_not_found_exception() | 
    target_group_association_limit_exception() | 
    invalid_load_balancer_action_exception() | 
    too_many_targets_exception() | 
    too_many_actions_exception() | 
    too_many_target_groups_exception() | 
    incompatible_protocols_exception() | 
    too_many_unique_target_groups_per_load_balancer_exception() | 
    priority_in_use_exception() | 
    too_many_rules_exception() | 
    invalid_configuration_request_exception().

-type create_target_group_errors() ::
    too_many_tags_exception() | 
    duplicate_target_group_name_exception() | 
    too_many_target_groups_exception() | 
    invalid_configuration_request_exception().

-type create_trust_store_errors() ::
    too_many_tags_exception() | 
    ca_certificates_bundle_not_found_exception() | 
    invalid_ca_certificates_bundle_exception() | 
    duplicate_trust_store_name_exception() | 
    duplicate_tag_keys_exception() | 
    too_many_trust_stores_exception().

-type delete_listener_errors() ::
    listener_not_found_exception() | 
    resource_in_use_exception().

-type delete_load_balancer_errors() ::
    operation_not_permitted_exception() | 
    load_balancer_not_found_exception() | 
    resource_in_use_exception().

-type delete_rule_errors() ::
    rule_not_found_exception() | 
    operation_not_permitted_exception().

-type delete_shared_trust_store_association_errors() ::
    trust_store_association_not_found_exception() | 
    trust_store_not_found_exception() | 
    delete_association_same_account_exception().

-type delete_target_group_errors() ::
    resource_in_use_exception().

-type delete_trust_store_errors() ::
    trust_store_in_use_exception() | 
    trust_store_not_found_exception().

-type deregister_targets_errors() ::
    target_group_not_found_exception() | 
    invalid_target_exception().

-type describe_capacity_reservation_errors() ::
    load_balancer_not_found_exception().

-type describe_listener_attributes_errors() ::
    listener_not_found_exception().

-type describe_listener_certificates_errors() ::
    listener_not_found_exception().

-type describe_listeners_errors() ::
    unsupported_protocol_exception() | 
    listener_not_found_exception() | 
    load_balancer_not_found_exception().

-type describe_load_balancer_attributes_errors() ::
    load_balancer_not_found_exception().

-type describe_load_balancers_errors() ::
    load_balancer_not_found_exception().

-type describe_rules_errors() ::
    unsupported_protocol_exception() | 
    rule_not_found_exception() | 
    listener_not_found_exception().

-type describe_ssl_policies_errors() ::
    ssl_policy_not_found_exception().

-type describe_tags_errors() ::
    rule_not_found_exception() | 
    listener_not_found_exception() | 
    target_group_not_found_exception() | 
    load_balancer_not_found_exception() | 
    trust_store_not_found_exception().

-type describe_target_group_attributes_errors() ::
    target_group_not_found_exception().

-type describe_target_groups_errors() ::
    target_group_not_found_exception() | 
    load_balancer_not_found_exception().

-type describe_target_health_errors() ::
    health_unavailable_exception() | 
    target_group_not_found_exception() | 
    invalid_target_exception().

-type describe_trust_store_associations_errors() ::
    trust_store_not_found_exception().

-type describe_trust_store_revocations_errors() ::
    trust_store_not_found_exception() | 
    revocation_id_not_found_exception().

-type describe_trust_stores_errors() ::
    trust_store_not_found_exception().

-type get_resource_policy_errors() ::
    resource_not_found_exception().

-type get_trust_store_ca_certificates_bundle_errors() ::
    trust_store_not_found_exception().

-type get_trust_store_revocation_content_errors() ::
    trust_store_not_found_exception() | 
    revocation_id_not_found_exception().

-type modify_capacity_reservation_errors() ::
    capacity_decrease_requests_limit_exceeded_exception() | 
    capacity_units_limit_exceeded_exception() | 
    capacity_reservation_pending_exception() | 
    operation_not_permitted_exception() | 
    load_balancer_not_found_exception() | 
    prior_request_not_complete_exception() | 
    insufficient_capacity_exception() | 
    invalid_configuration_request_exception().

-type modify_listener_errors() ::
    unsupported_protocol_exception() | 
    listener_not_found_exception() | 
    trust_store_not_ready_exception() | 
    too_many_registrations_for_target_id_exception() | 
    target_group_not_found_exception() | 
    a_l_p_n_policy_not_supported_exception() | 
    target_group_association_limit_exception() | 
    ssl_policy_not_found_exception() | 
    too_many_certificates_exception() | 
    too_many_listeners_exception() | 
    invalid_load_balancer_action_exception() | 
    too_many_targets_exception() | 
    too_many_actions_exception() | 
    trust_store_not_found_exception() | 
    incompatible_protocols_exception() | 
    too_many_unique_target_groups_per_load_balancer_exception() | 
    certificate_not_found_exception() | 
    duplicate_listener_exception() | 
    invalid_configuration_request_exception().

-type modify_listener_attributes_errors() ::
    listener_not_found_exception() | 
    invalid_configuration_request_exception().

-type modify_load_balancer_attributes_errors() ::
    load_balancer_not_found_exception() | 
    invalid_configuration_request_exception().

-type modify_rule_errors() ::
    unsupported_protocol_exception() | 
    rule_not_found_exception() | 
    too_many_registrations_for_target_id_exception() | 
    target_group_not_found_exception() | 
    target_group_association_limit_exception() | 
    invalid_load_balancer_action_exception() | 
    operation_not_permitted_exception() | 
    too_many_targets_exception() | 
    too_many_actions_exception() | 
    incompatible_protocols_exception() | 
    too_many_unique_target_groups_per_load_balancer_exception().

-type modify_target_group_errors() ::
    target_group_not_found_exception() | 
    invalid_configuration_request_exception().

-type modify_target_group_attributes_errors() ::
    target_group_not_found_exception() | 
    invalid_configuration_request_exception().

-type modify_trust_store_errors() ::
    ca_certificates_bundle_not_found_exception() | 
    invalid_ca_certificates_bundle_exception() | 
    trust_store_not_found_exception().

-type register_targets_errors() ::
    too_many_registrations_for_target_id_exception() | 
    target_group_not_found_exception() | 
    too_many_targets_exception() | 
    invalid_target_exception().

-type remove_listener_certificates_errors() ::
    listener_not_found_exception() | 
    operation_not_permitted_exception().

-type remove_tags_errors() ::
    too_many_tags_exception() | 
    rule_not_found_exception() | 
    listener_not_found_exception() | 
    target_group_not_found_exception() | 
    load_balancer_not_found_exception() | 
    trust_store_not_found_exception().

-type remove_trust_store_revocations_errors() ::
    trust_store_not_found_exception() | 
    revocation_id_not_found_exception().

-type set_ip_address_type_errors() ::
    invalid_subnet_exception() | 
    load_balancer_not_found_exception() | 
    invalid_configuration_request_exception().

-type set_rule_priorities_errors() ::
    rule_not_found_exception() | 
    operation_not_permitted_exception() | 
    priority_in_use_exception().

-type set_security_groups_errors() ::
    invalid_security_group_exception() | 
    load_balancer_not_found_exception() | 
    invalid_configuration_request_exception().

-type set_subnets_errors() ::
    invalid_subnet_exception() | 
    capacity_reservation_pending_exception() | 
    load_balancer_not_found_exception() | 
    allocation_id_not_found_exception() | 
    subnet_not_found_exception() | 
    invalid_configuration_request_exception() | 
    availability_zone_not_supported_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds the specified SSL server certificate to the certificate list for
%% the specified HTTPS
%% or TLS listener.
%%
%% If the certificate in already in the certificate list, the call is
%% successful but the
%% certificate is not added again.
%%
%% For more information, see HTTPS
%% listeners:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html
%% in the Application Load Balancers Guide or TLS
%% listeners:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html
%% in the Network Load Balancers Guide.
-spec add_listener_certificates(aws_client:aws_client(), add_listener_certificates_input()) ->
    {ok, add_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, add_listener_certificates_errors(), tuple()}.
add_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_listener_certificates(Client, Input, []).

-spec add_listener_certificates(aws_client:aws_client(), add_listener_certificates_input(), proplists:proplist()) ->
    {ok, add_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, add_listener_certificates_errors(), tuple()}.
add_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddListenerCertificates">>, Input, Options).

%% @doc Adds the specified tags to the specified Elastic Load Balancing
%% resource.
%%
%% You can tag your
%% Application Load Balancers, Network Load Balancers, Gateway Load
%% Balancers, target groups,
%% trust stores, listeners, and rules.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the
%% same key, `AddTags' updates its value.
-spec add_tags(aws_client:aws_client(), add_tags_input()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_input(), proplists:proplist()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Adds the specified revocation file to the specified trust store.
-spec add_trust_store_revocations(aws_client:aws_client(), add_trust_store_revocations_input()) ->
    {ok, add_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, add_trust_store_revocations_errors(), tuple()}.
add_trust_store_revocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_trust_store_revocations(Client, Input, []).

-spec add_trust_store_revocations(aws_client:aws_client(), add_trust_store_revocations_input(), proplists:proplist()) ->
    {ok, add_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, add_trust_store_revocations_errors(), tuple()}.
add_trust_store_revocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTrustStoreRevocations">>, Input, Options).

%% @doc Creates a listener for the specified Application Load Balancer,
%% Network Load Balancer, or
%% Gateway Load Balancer.
%%
%% For more information, see the following:
%%
%% Listeners for
%% your Application Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html
%%
%% Listeners for
%% your Network Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html
%%
%% Listeners for your
%% Gateway Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you
%% attempt to create multiple listeners with the same settings, each call
%% succeeds.
-spec create_listener(aws_client:aws_client(), create_listener_input()) ->
    {ok, create_listener_output(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_listener(Client, Input, []).

-spec create_listener(aws_client:aws_client(), create_listener_input(), proplists:proplist()) ->
    {ok, create_listener_output(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateListener">>, Input, Options).

%% @doc Creates an Application Load Balancer, Network Load Balancer, or
%% Gateway Load
%% Balancer.
%%
%% For more information, see the following:
%%
%% Application Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html
%%
%% Network Load
%% Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html
%%
%% Gateway Load
%% Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you
%% attempt to create multiple load balancers with the same settings, each
%% call succeeds.
-spec create_load_balancer(aws_client:aws_client(), create_load_balancer_input()) ->
    {ok, create_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).

-spec create_load_balancer(aws_client:aws_client(), create_load_balancer_input(), proplists:proplist()) ->
    {ok, create_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates a rule for the specified listener.
%%
%% The listener must be associated with an
%% Application Load Balancer.
%%
%% Each rule consists of a priority, one or more actions, and one or more
%% conditions. Rules
%% are evaluated in priority order, from the lowest value to the highest
%% value. When the
%% conditions for a rule are met, its actions are performed. If the
%% conditions for no rules are
%% met, the actions for the default rule are performed. For more information,
%% see Listener rules:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules
%% in the Application Load Balancers Guide.
-spec create_rule(aws_client:aws_client(), create_rule_input()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).

-spec create_rule(aws_client:aws_client(), create_rule_input(), proplists:proplist()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc Creates a target group.
%%
%% For more information, see the following:
%%
%% Target
%% groups for your Application Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html
%%
%% Target groups
%% for your Network Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html
%%
%% Target groups for your
%% Gateway Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html
%%
%% This operation is idempotent, which means that it completes at most one
%% time. If you
%% attempt to create multiple target groups with the same settings, each call
%% succeeds.
-spec create_target_group(aws_client:aws_client(), create_target_group_input()) ->
    {ok, create_target_group_output(), tuple()} |
    {error, any()} |
    {error, create_target_group_errors(), tuple()}.
create_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_target_group(Client, Input, []).

-spec create_target_group(aws_client:aws_client(), create_target_group_input(), proplists:proplist()) ->
    {ok, create_target_group_output(), tuple()} |
    {error, any()} |
    {error, create_target_group_errors(), tuple()}.
create_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTargetGroup">>, Input, Options).

%% @doc Creates a trust store.
-spec create_trust_store(aws_client:aws_client(), create_trust_store_input()) ->
    {ok, create_trust_store_output(), tuple()} |
    {error, any()} |
    {error, create_trust_store_errors(), tuple()}.
create_trust_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trust_store(Client, Input, []).

-spec create_trust_store(aws_client:aws_client(), create_trust_store_input(), proplists:proplist()) ->
    {ok, create_trust_store_output(), tuple()} |
    {error, any()} |
    {error, create_trust_store_errors(), tuple()}.
create_trust_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrustStore">>, Input, Options).

%% @doc Deletes the specified listener.
%%
%% Alternatively, your listener is deleted when you delete the load balancer
%% to which it is
%% attached.
-spec delete_listener(aws_client:aws_client(), delete_listener_input()) ->
    {ok, delete_listener_output(), tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_listener(Client, Input, []).

-spec delete_listener(aws_client:aws_client(), delete_listener_input(), proplists:proplist()) ->
    {ok, delete_listener_output(), tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteListener">>, Input, Options).

%% @doc Deletes the specified Application Load Balancer, Network Load
%% Balancer, or Gateway Load
%% Balancer.
%%
%% Deleting a load balancer also deletes its listeners.
%%
%% You can't delete a load balancer if deletion protection is enabled. If
%% the load balancer
%% does not exist or has already been deleted, the call succeeds.
%%
%% Deleting a load balancer does not affect its registered targets. For
%% example, your EC2
%% instances continue to run and are still registered to their target groups.
%% If you no longer
%% need these EC2 instances, you can stop or terminate them.
-spec delete_load_balancer(aws_client:aws_client(), delete_load_balancer_input()) ->
    {ok, delete_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_errors(), tuple()}.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).

-spec delete_load_balancer(aws_client:aws_client(), delete_load_balancer_input(), proplists:proplist()) ->
    {ok, delete_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_errors(), tuple()}.
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes the specified rule.
%%
%% You can't delete the default rule.
-spec delete_rule(aws_client:aws_client(), delete_rule_input()) ->
    {ok, delete_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).

-spec delete_rule(aws_client:aws_client(), delete_rule_input(), proplists:proplist()) ->
    {ok, delete_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Deletes a shared trust store association.
-spec delete_shared_trust_store_association(aws_client:aws_client(), delete_shared_trust_store_association_input()) ->
    {ok, delete_shared_trust_store_association_output(), tuple()} |
    {error, any()} |
    {error, delete_shared_trust_store_association_errors(), tuple()}.
delete_shared_trust_store_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_shared_trust_store_association(Client, Input, []).

-spec delete_shared_trust_store_association(aws_client:aws_client(), delete_shared_trust_store_association_input(), proplists:proplist()) ->
    {ok, delete_shared_trust_store_association_output(), tuple()} |
    {error, any()} |
    {error, delete_shared_trust_store_association_errors(), tuple()}.
delete_shared_trust_store_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSharedTrustStoreAssociation">>, Input, Options).

%% @doc Deletes the specified target group.
%%
%% You can delete a target group if it is not referenced by any actions.
%% Deleting a target
%% group also deletes any associated health checks. Deleting a target group
%% does not affect its
%% registered targets. For example, any EC2 instances continue to run until
%% you stop or terminate
%% them.
-spec delete_target_group(aws_client:aws_client(), delete_target_group_input()) ->
    {ok, delete_target_group_output(), tuple()} |
    {error, any()} |
    {error, delete_target_group_errors(), tuple()}.
delete_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_target_group(Client, Input, []).

-spec delete_target_group(aws_client:aws_client(), delete_target_group_input(), proplists:proplist()) ->
    {ok, delete_target_group_output(), tuple()} |
    {error, any()} |
    {error, delete_target_group_errors(), tuple()}.
delete_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTargetGroup">>, Input, Options).

%% @doc Deletes a trust store.
-spec delete_trust_store(aws_client:aws_client(), delete_trust_store_input()) ->
    {ok, delete_trust_store_output(), tuple()} |
    {error, any()} |
    {error, delete_trust_store_errors(), tuple()}.
delete_trust_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trust_store(Client, Input, []).

-spec delete_trust_store(aws_client:aws_client(), delete_trust_store_input(), proplists:proplist()) ->
    {ok, delete_trust_store_output(), tuple()} |
    {error, any()} |
    {error, delete_trust_store_errors(), tuple()}.
delete_trust_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrustStore">>, Input, Options).

%% @doc Deregisters the specified targets from the specified target group.
%%
%% After the targets are
%% deregistered, they no longer receive traffic from the load balancer.
%%
%% The load balancer stops sending requests to targets that are
%% deregistering, but uses
%% connection draining to ensure that in-flight traffic completes on the
%% existing connections.
%% This deregistration delay is configured by default but can be updated for
%% each target group.
%%
%% For more information, see the following:
%%
%% Deregistration delay:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#deregistration-delay
%% in the Application Load Balancers User Guide
%%
%% Deregistration delay:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay
%% in the Network Load Balancers User Guide
%%
%% Deregistration delay:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#deregistration-delay
%% in the Gateway Load Balancers User Guide
%%
%% Note: If the specified target does not exist, the action returns
%% successfully.
-spec deregister_targets(aws_client:aws_client(), deregister_targets_input()) ->
    {ok, deregister_targets_output(), tuple()} |
    {error, any()} |
    {error, deregister_targets_errors(), tuple()}.
deregister_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_targets(Client, Input, []).

-spec deregister_targets(aws_client:aws_client(), deregister_targets_input(), proplists:proplist()) ->
    {ok, deregister_targets_output(), tuple()} |
    {error, any()} |
    {error, deregister_targets_errors(), tuple()}.
deregister_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTargets">>, Input, Options).

%% @doc Describes the current Elastic Load Balancing resource limits for your
%% Amazon Web Services
%% account.
%%
%% For more information, see the following:
%%
%% Quotas for your
%% Application Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html
%%
%% Quotas for your
%% Network Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html
%%
%% Quotas for your Gateway
%% Load Balancers:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html
-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).

-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input(), proplists:proplist()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the capacity reservation status for the specified load
%% balancer.
-spec describe_capacity_reservation(aws_client:aws_client(), describe_capacity_reservation_input()) ->
    {ok, describe_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, describe_capacity_reservation_errors(), tuple()}.
describe_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_reservation(Client, Input, []).

-spec describe_capacity_reservation(aws_client:aws_client(), describe_capacity_reservation_input(), proplists:proplist()) ->
    {ok, describe_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, describe_capacity_reservation_errors(), tuple()}.
describe_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityReservation">>, Input, Options).

%% @doc Describes the attributes for the specified listener.
-spec describe_listener_attributes(aws_client:aws_client(), describe_listener_attributes_input()) ->
    {ok, describe_listener_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_listener_attributes_errors(), tuple()}.
describe_listener_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listener_attributes(Client, Input, []).

-spec describe_listener_attributes(aws_client:aws_client(), describe_listener_attributes_input(), proplists:proplist()) ->
    {ok, describe_listener_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_listener_attributes_errors(), tuple()}.
describe_listener_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListenerAttributes">>, Input, Options).

%% @doc Describes the default certificate and the certificate list for the
%% specified HTTPS or TLS
%% listener.
%%
%% If the default certificate is also in the certificate list, it appears
%% twice in the
%% results (once with `IsDefault' set to true and once with
%% `IsDefault' set
%% to false).
%%
%% For more information, see SSL certificates:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates
%% in the Application Load Balancers Guide or
%% Server certificates:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#tls-listener-certificate
%% in the Network Load Balancers
%% Guide.
-spec describe_listener_certificates(aws_client:aws_client(), describe_listener_certificates_input()) ->
    {ok, describe_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, describe_listener_certificates_errors(), tuple()}.
describe_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listener_certificates(Client, Input, []).

-spec describe_listener_certificates(aws_client:aws_client(), describe_listener_certificates_input(), proplists:proplist()) ->
    {ok, describe_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, describe_listener_certificates_errors(), tuple()}.
describe_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListenerCertificates">>, Input, Options).

%% @doc Describes the specified listeners or the listeners for the specified
%% Application Load
%% Balancer, Network Load Balancer, or Gateway Load Balancer.
%%
%% You must specify either a load
%% balancer or one or more listeners.
-spec describe_listeners(aws_client:aws_client(), describe_listeners_input()) ->
    {ok, describe_listeners_output(), tuple()} |
    {error, any()} |
    {error, describe_listeners_errors(), tuple()}.
describe_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listeners(Client, Input, []).

-spec describe_listeners(aws_client:aws_client(), describe_listeners_input(), proplists:proplist()) ->
    {ok, describe_listeners_output(), tuple()} |
    {error, any()} |
    {error, describe_listeners_errors(), tuple()}.
describe_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListeners">>, Input, Options).

%% @doc Describes the attributes for the specified Application Load Balancer,
%% Network Load
%% Balancer, or Gateway Load Balancer.
%%
%% For more information, see the following:
%%
%% Load balancer attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes
%% in the Application Load Balancers
%% Guide
%%
%% Load balancer attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes
%% in the Network Load Balancers
%% Guide
%%
%% Load balancer attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes
%% in the Gateway Load Balancers
%% Guide
-spec describe_load_balancer_attributes(aws_client:aws_client(), describe_load_balancer_attributes_input()) ->
    {ok, describe_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_attributes_errors(), tuple()}.
describe_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_attributes(Client, Input, []).

-spec describe_load_balancer_attributes(aws_client:aws_client(), describe_load_balancer_attributes_input(), proplists:proplist()) ->
    {ok, describe_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_attributes_errors(), tuple()}.
describe_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerAttributes">>, Input, Options).

%% @doc Describes the specified load balancers or all of your load balancers.
-spec describe_load_balancers(aws_client:aws_client(), describe_load_balancers_input()) ->
    {ok, describe_load_balancers_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).

-spec describe_load_balancers(aws_client:aws_client(), describe_load_balancers_input(), proplists:proplist()) ->
    {ok, describe_load_balancers_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the specified rules or the rules for the specified
%% listener.
%%
%% You must specify
%% either a listener or one or more rules.
-spec describe_rules(aws_client:aws_client(), describe_rules_input()) ->
    {ok, describe_rules_output(), tuple()} |
    {error, any()} |
    {error, describe_rules_errors(), tuple()}.
describe_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rules(Client, Input, []).

-spec describe_rules(aws_client:aws_client(), describe_rules_input(), proplists:proplist()) ->
    {ok, describe_rules_output(), tuple()} |
    {error, any()} |
    {error, describe_rules_errors(), tuple()}.
describe_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRules">>, Input, Options).

%% @doc Describes the specified policies or all policies used for SSL
%% negotiation.
%%
%% For more information, see Security policies:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
%% in the Application Load Balancers Guide or
%% Security policies:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies
%% in the Network Load Balancers Guide.
-spec describe_ssl_policies(aws_client:aws_client(), describe_ssl_policies_input()) ->
    {ok, describe_ssl_policies_output(), tuple()} |
    {error, any()} |
    {error, describe_ssl_policies_errors(), tuple()}.
describe_ssl_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ssl_policies(Client, Input, []).

-spec describe_ssl_policies(aws_client:aws_client(), describe_ssl_policies_input(), proplists:proplist()) ->
    {ok, describe_ssl_policies_output(), tuple()} |
    {error, any()} |
    {error, describe_ssl_policies_errors(), tuple()}.
describe_ssl_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSSLPolicies">>, Input, Options).

%% @doc Describes the tags for the specified Elastic Load Balancing
%% resources.
%%
%% You can describe
%% the tags for one or more Application Load Balancers, Network Load
%% Balancers, Gateway Load
%% Balancers, target groups, listeners, or rules.
-spec describe_tags(aws_client:aws_client(), describe_tags_input()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_input(), proplists:proplist()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the attributes for the specified target group.
%%
%% For more information, see the following:
%%
%% Target group attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes
%% in the Application Load Balancers
%% Guide
%%
%% Target group attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes
%% in the Network Load Balancers
%% Guide
%%
%% Target group attributes:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes
%% in the Gateway Load Balancers
%% Guide
-spec describe_target_group_attributes(aws_client:aws_client(), describe_target_group_attributes_input()) ->
    {ok, describe_target_group_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_target_group_attributes_errors(), tuple()}.
describe_target_group_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_group_attributes(Client, Input, []).

-spec describe_target_group_attributes(aws_client:aws_client(), describe_target_group_attributes_input(), proplists:proplist()) ->
    {ok, describe_target_group_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_target_group_attributes_errors(), tuple()}.
describe_target_group_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetGroupAttributes">>, Input, Options).

%% @doc Describes the specified target groups or all of your target groups.
%%
%% By default, all target
%% groups are described. Alternatively, you can specify one of the following
%% to filter the
%% results: the ARN of the load balancer, the names of one or more target
%% groups, or the ARNs of
%% one or more target groups.
-spec describe_target_groups(aws_client:aws_client(), describe_target_groups_input()) ->
    {ok, describe_target_groups_output(), tuple()} |
    {error, any()} |
    {error, describe_target_groups_errors(), tuple()}.
describe_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_groups(Client, Input, []).

-spec describe_target_groups(aws_client:aws_client(), describe_target_groups_input(), proplists:proplist()) ->
    {ok, describe_target_groups_output(), tuple()} |
    {error, any()} |
    {error, describe_target_groups_errors(), tuple()}.
describe_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetGroups">>, Input, Options).

%% @doc Describes the health of the specified targets or all of your targets.
-spec describe_target_health(aws_client:aws_client(), describe_target_health_input()) ->
    {ok, describe_target_health_output(), tuple()} |
    {error, any()} |
    {error, describe_target_health_errors(), tuple()}.
describe_target_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_target_health(Client, Input, []).

-spec describe_target_health(aws_client:aws_client(), describe_target_health_input(), proplists:proplist()) ->
    {ok, describe_target_health_output(), tuple()} |
    {error, any()} |
    {error, describe_target_health_errors(), tuple()}.
describe_target_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetHealth">>, Input, Options).

%% @doc Describes all resources associated with the specified trust store.
-spec describe_trust_store_associations(aws_client:aws_client(), describe_trust_store_associations_input()) ->
    {ok, describe_trust_store_associations_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_store_associations_errors(), tuple()}.
describe_trust_store_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trust_store_associations(Client, Input, []).

-spec describe_trust_store_associations(aws_client:aws_client(), describe_trust_store_associations_input(), proplists:proplist()) ->
    {ok, describe_trust_store_associations_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_store_associations_errors(), tuple()}.
describe_trust_store_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustStoreAssociations">>, Input, Options).

%% @doc Describes the revocation files in use by the specified trust store or
%% revocation
%% files.
-spec describe_trust_store_revocations(aws_client:aws_client(), describe_trust_store_revocations_input()) ->
    {ok, describe_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_store_revocations_errors(), tuple()}.
describe_trust_store_revocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trust_store_revocations(Client, Input, []).

-spec describe_trust_store_revocations(aws_client:aws_client(), describe_trust_store_revocations_input(), proplists:proplist()) ->
    {ok, describe_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_store_revocations_errors(), tuple()}.
describe_trust_store_revocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustStoreRevocations">>, Input, Options).

%% @doc Describes all trust stores for the specified account.
-spec describe_trust_stores(aws_client:aws_client(), describe_trust_stores_input()) ->
    {ok, describe_trust_stores_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_stores_errors(), tuple()}.
describe_trust_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trust_stores(Client, Input, []).

-spec describe_trust_stores(aws_client:aws_client(), describe_trust_stores_input(), proplists:proplist()) ->
    {ok, describe_trust_stores_output(), tuple()} |
    {error, any()} |
    {error, describe_trust_stores_errors(), tuple()}.
describe_trust_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustStores">>, Input, Options).

%% @doc Retrieves the resource policy for a specified resource.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input(), proplists:proplist()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Retrieves the ca certificate bundle.
%%
%% This action returns a pre-signed S3 URI which is
%% active for ten minutes.
-spec get_trust_store_ca_certificates_bundle(aws_client:aws_client(), get_trust_store_ca_certificates_bundle_input()) ->
    {ok, get_trust_store_ca_certificates_bundle_output(), tuple()} |
    {error, any()} |
    {error, get_trust_store_ca_certificates_bundle_errors(), tuple()}.
get_trust_store_ca_certificates_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trust_store_ca_certificates_bundle(Client, Input, []).

-spec get_trust_store_ca_certificates_bundle(aws_client:aws_client(), get_trust_store_ca_certificates_bundle_input(), proplists:proplist()) ->
    {ok, get_trust_store_ca_certificates_bundle_output(), tuple()} |
    {error, any()} |
    {error, get_trust_store_ca_certificates_bundle_errors(), tuple()}.
get_trust_store_ca_certificates_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrustStoreCaCertificatesBundle">>, Input, Options).

%% @doc Retrieves the specified revocation file.
%%
%% This action returns a pre-signed S3 URI which is
%% active for ten minutes.
-spec get_trust_store_revocation_content(aws_client:aws_client(), get_trust_store_revocation_content_input()) ->
    {ok, get_trust_store_revocation_content_output(), tuple()} |
    {error, any()} |
    {error, get_trust_store_revocation_content_errors(), tuple()}.
get_trust_store_revocation_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trust_store_revocation_content(Client, Input, []).

-spec get_trust_store_revocation_content(aws_client:aws_client(), get_trust_store_revocation_content_input(), proplists:proplist()) ->
    {ok, get_trust_store_revocation_content_output(), tuple()} |
    {error, any()} |
    {error, get_trust_store_revocation_content_errors(), tuple()}.
get_trust_store_revocation_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrustStoreRevocationContent">>, Input, Options).

%% @doc Modifies the capacity reservation of the specified load balancer.
%%
%% When modifying capacity reservation, you must include at least one
%% `MinimumLoadBalancerCapacity'
%% or `ResetCapacityReservation'.
-spec modify_capacity_reservation(aws_client:aws_client(), modify_capacity_reservation_input()) ->
    {ok, modify_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, modify_capacity_reservation_errors(), tuple()}.
modify_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_capacity_reservation(Client, Input, []).

-spec modify_capacity_reservation(aws_client:aws_client(), modify_capacity_reservation_input(), proplists:proplist()) ->
    {ok, modify_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, modify_capacity_reservation_errors(), tuple()}.
modify_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCapacityReservation">>, Input, Options).

%% @doc Replaces the specified properties of the specified listener.
%%
%% Any properties that you do
%% not specify remain unchanged.
%%
%% Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the
%% security policy
%% and default certificate properties. If you change the protocol from HTTP
%% to HTTPS, or from TCP
%% to TLS, you must add the security policy and default certificate
%% properties.
%%
%% To add an item to a list, remove an item from a list, or update an item in
%% a list, you
%% must provide the entire list. For example, to add an action, specify a
%% list with the current
%% actions plus the new action.
-spec modify_listener(aws_client:aws_client(), modify_listener_input()) ->
    {ok, modify_listener_output(), tuple()} |
    {error, any()} |
    {error, modify_listener_errors(), tuple()}.
modify_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_listener(Client, Input, []).

-spec modify_listener(aws_client:aws_client(), modify_listener_input(), proplists:proplist()) ->
    {ok, modify_listener_output(), tuple()} |
    {error, any()} |
    {error, modify_listener_errors(), tuple()}.
modify_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyListener">>, Input, Options).

%% @doc Modifies the specified attributes of the specified listener.
-spec modify_listener_attributes(aws_client:aws_client(), modify_listener_attributes_input()) ->
    {ok, modify_listener_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_listener_attributes_errors(), tuple()}.
modify_listener_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_listener_attributes(Client, Input, []).

-spec modify_listener_attributes(aws_client:aws_client(), modify_listener_attributes_input(), proplists:proplist()) ->
    {ok, modify_listener_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_listener_attributes_errors(), tuple()}.
modify_listener_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyListenerAttributes">>, Input, Options).

%% @doc Modifies the specified attributes of the specified Application Load
%% Balancer, Network Load
%% Balancer, or Gateway Load Balancer.
%%
%% If any of the specified attributes can't be modified as requested, the
%% call fails. Any
%% existing attributes that you do not modify retain their current values.
-spec modify_load_balancer_attributes(aws_client:aws_client(), modify_load_balancer_attributes_input()) ->
    {ok, modify_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_load_balancer_attributes_errors(), tuple()}.
modify_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_load_balancer_attributes(Client, Input, []).

-spec modify_load_balancer_attributes(aws_client:aws_client(), modify_load_balancer_attributes_input(), proplists:proplist()) ->
    {ok, modify_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_load_balancer_attributes_errors(), tuple()}.
modify_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLoadBalancerAttributes">>, Input, Options).

%% @doc Replaces the specified properties of the specified rule.
%%
%% Any properties that you do not
%% specify are unchanged.
%%
%% To add an item to a list, remove an item from a list, or update an item in
%% a list, you
%% must provide the entire list. For example, to add an action, specify a
%% list with the current
%% actions plus the new action.
-spec modify_rule(aws_client:aws_client(), modify_rule_input()) ->
    {ok, modify_rule_output(), tuple()} |
    {error, any()} |
    {error, modify_rule_errors(), tuple()}.
modify_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_rule(Client, Input, []).

-spec modify_rule(aws_client:aws_client(), modify_rule_input(), proplists:proplist()) ->
    {ok, modify_rule_output(), tuple()} |
    {error, any()} |
    {error, modify_rule_errors(), tuple()}.
modify_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyRule">>, Input, Options).

%% @doc Modifies the health checks used when evaluating the health state of
%% the targets in the
%% specified target group.
-spec modify_target_group(aws_client:aws_client(), modify_target_group_input()) ->
    {ok, modify_target_group_output(), tuple()} |
    {error, any()} |
    {error, modify_target_group_errors(), tuple()}.
modify_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_target_group(Client, Input, []).

-spec modify_target_group(aws_client:aws_client(), modify_target_group_input(), proplists:proplist()) ->
    {ok, modify_target_group_output(), tuple()} |
    {error, any()} |
    {error, modify_target_group_errors(), tuple()}.
modify_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTargetGroup">>, Input, Options).

%% @doc Modifies the specified attributes of the specified target group.
-spec modify_target_group_attributes(aws_client:aws_client(), modify_target_group_attributes_input()) ->
    {ok, modify_target_group_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_target_group_attributes_errors(), tuple()}.
modify_target_group_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_target_group_attributes(Client, Input, []).

-spec modify_target_group_attributes(aws_client:aws_client(), modify_target_group_attributes_input(), proplists:proplist()) ->
    {ok, modify_target_group_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_target_group_attributes_errors(), tuple()}.
modify_target_group_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTargetGroupAttributes">>, Input, Options).

%% @doc Update the ca certificate bundle for the specified trust store.
-spec modify_trust_store(aws_client:aws_client(), modify_trust_store_input()) ->
    {ok, modify_trust_store_output(), tuple()} |
    {error, any()} |
    {error, modify_trust_store_errors(), tuple()}.
modify_trust_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_trust_store(Client, Input, []).

-spec modify_trust_store(aws_client:aws_client(), modify_trust_store_input(), proplists:proplist()) ->
    {ok, modify_trust_store_output(), tuple()} |
    {error, any()} |
    {error, modify_trust_store_errors(), tuple()}.
modify_trust_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTrustStore">>, Input, Options).

%% @doc Registers the specified targets with the specified target group.
%%
%% If the target is an EC2 instance, it must be in the `running' state
%% when you
%% register it.
%%
%% By default, the load balancer routes requests to registered targets using
%% the protocol and
%% port for the target group. Alternatively, you can override the port for a
%% target when you
%% register it. You can register each EC2 instance or IP address with the
%% same target group
%% multiple times using different ports.
%%
%% With a Network Load Balancer, you can't register instances by instance
%% ID if they have
%% the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2,
%% HI1, HS1, M1, M2, M3,
%% and T1. You can register instances of these types by IP address.
-spec register_targets(aws_client:aws_client(), register_targets_input()) ->
    {ok, register_targets_output(), tuple()} |
    {error, any()} |
    {error, register_targets_errors(), tuple()}.
register_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_targets(Client, Input, []).

-spec register_targets(aws_client:aws_client(), register_targets_input(), proplists:proplist()) ->
    {ok, register_targets_output(), tuple()} |
    {error, any()} |
    {error, register_targets_errors(), tuple()}.
register_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTargets">>, Input, Options).

%% @doc Removes the specified certificate from the certificate list for the
%% specified HTTPS or TLS
%% listener.
-spec remove_listener_certificates(aws_client:aws_client(), remove_listener_certificates_input()) ->
    {ok, remove_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, remove_listener_certificates_errors(), tuple()}.
remove_listener_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_listener_certificates(Client, Input, []).

-spec remove_listener_certificates(aws_client:aws_client(), remove_listener_certificates_input(), proplists:proplist()) ->
    {ok, remove_listener_certificates_output(), tuple()} |
    {error, any()} |
    {error, remove_listener_certificates_errors(), tuple()}.
remove_listener_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveListenerCertificates">>, Input, Options).

%% @doc Removes the specified tags from the specified Elastic Load Balancing
%% resources.
%%
%% You can
%% remove the tags for one or more Application Load Balancers, Network Load
%% Balancers, Gateway
%% Load Balancers, target groups, listeners, or rules.
-spec remove_tags(aws_client:aws_client(), remove_tags_input()) ->
    {ok, remove_tags_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).

-spec remove_tags(aws_client:aws_client(), remove_tags_input(), proplists:proplist()) ->
    {ok, remove_tags_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Removes the specified revocation file from the specified trust store.
-spec remove_trust_store_revocations(aws_client:aws_client(), remove_trust_store_revocations_input()) ->
    {ok, remove_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, remove_trust_store_revocations_errors(), tuple()}.
remove_trust_store_revocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_trust_store_revocations(Client, Input, []).

-spec remove_trust_store_revocations(aws_client:aws_client(), remove_trust_store_revocations_input(), proplists:proplist()) ->
    {ok, remove_trust_store_revocations_output(), tuple()} |
    {error, any()} |
    {error, remove_trust_store_revocations_errors(), tuple()}.
remove_trust_store_revocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTrustStoreRevocations">>, Input, Options).

%% @doc Sets the type of IP addresses used by the subnets of the specified
%% load balancer.
-spec set_ip_address_type(aws_client:aws_client(), set_ip_address_type_input()) ->
    {ok, set_ip_address_type_output(), tuple()} |
    {error, any()} |
    {error, set_ip_address_type_errors(), tuple()}.
set_ip_address_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_ip_address_type(Client, Input, []).

-spec set_ip_address_type(aws_client:aws_client(), set_ip_address_type_input(), proplists:proplist()) ->
    {ok, set_ip_address_type_output(), tuple()} |
    {error, any()} |
    {error, set_ip_address_type_errors(), tuple()}.
set_ip_address_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIpAddressType">>, Input, Options).

%% @doc Sets the priorities of the specified rules.
%%
%% You can reorder the rules as long as there are no priority conflicts in
%% the new order. Any
%% existing rules that you do not specify retain their current priority.
-spec set_rule_priorities(aws_client:aws_client(), set_rule_priorities_input()) ->
    {ok, set_rule_priorities_output(), tuple()} |
    {error, any()} |
    {error, set_rule_priorities_errors(), tuple()}.
set_rule_priorities(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_rule_priorities(Client, Input, []).

-spec set_rule_priorities(aws_client:aws_client(), set_rule_priorities_input(), proplists:proplist()) ->
    {ok, set_rule_priorities_output(), tuple()} |
    {error, any()} |
    {error, set_rule_priorities_errors(), tuple()}.
set_rule_priorities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRulePriorities">>, Input, Options).

%% @doc Associates the specified security groups with the specified
%% Application Load Balancer or
%% Network Load Balancer.
%%
%% The specified security groups override the previously associated
%% security groups.
%%
%% You can't perform this operation on a Network Load Balancer unless you
%% specified a
%% security group for the load balancer when you created it.
%%
%% You can't associate a security group with a Gateway Load Balancer.
-spec set_security_groups(aws_client:aws_client(), set_security_groups_input()) ->
    {ok, set_security_groups_output(), tuple()} |
    {error, any()} |
    {error, set_security_groups_errors(), tuple()}.
set_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_security_groups(Client, Input, []).

-spec set_security_groups(aws_client:aws_client(), set_security_groups_input(), proplists:proplist()) ->
    {ok, set_security_groups_output(), tuple()} |
    {error, any()} |
    {error, set_security_groups_errors(), tuple()}.
set_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSecurityGroups">>, Input, Options).

%% @doc Enables the Availability Zones for the specified public subnets for
%% the specified
%% Application Load Balancer, Network Load Balancer or Gateway Load Balancer.
%%
%% The specified subnets replace the
%% previously enabled subnets.
%%
%% When you specify subnets for a Network Load Balancer, or Gateway Load
%% Balancer you must include all subnets that
%% were enabled previously, with their existing configurations, plus any
%% additional
%% subnets.
-spec set_subnets(aws_client:aws_client(), set_subnets_input()) ->
    {ok, set_subnets_output(), tuple()} |
    {error, any()} |
    {error, set_subnets_errors(), tuple()}.
set_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_subnets(Client, Input, []).

-spec set_subnets(aws_client:aws_client(), set_subnets_input(), proplists:proplist()) ->
    {ok, set_subnets_output(), tuple()} |
    {error, any()} |
    {error, set_subnets_errors(), tuple()}.
set_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSubnets">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticloadbalancing">>},
    Host = build_host(<<"elasticloadbalancing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2015-12-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
