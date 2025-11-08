%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon VPC Lattice is a fully managed application networking service
%% that you use to connect, secure, and monitor all of your services across
%% multiple accounts and virtual private clouds (VPCs).
%%
%% Amazon VPC Lattice interconnects your microservices and legacy services
%% within a logical boundary, so that you can discover and manage them more
%% efficiently. For more information, see the Amazon VPC Lattice User Guide:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/
-module(aws_vpc_lattice).

-export([batch_update_rule/4,
         batch_update_rule/5,
         create_access_log_subscription/2,
         create_access_log_subscription/3,
         create_listener/3,
         create_listener/4,
         create_resource_configuration/2,
         create_resource_configuration/3,
         create_resource_gateway/2,
         create_resource_gateway/3,
         create_rule/4,
         create_rule/5,
         create_service/2,
         create_service/3,
         create_service_network/2,
         create_service_network/3,
         create_service_network_resource_association/2,
         create_service_network_resource_association/3,
         create_service_network_service_association/2,
         create_service_network_service_association/3,
         create_service_network_vpc_association/2,
         create_service_network_vpc_association/3,
         create_target_group/2,
         create_target_group/3,
         delete_access_log_subscription/3,
         delete_access_log_subscription/4,
         delete_auth_policy/3,
         delete_auth_policy/4,
         delete_domain_verification/3,
         delete_domain_verification/4,
         delete_listener/4,
         delete_listener/5,
         delete_resource_configuration/3,
         delete_resource_configuration/4,
         delete_resource_endpoint_association/3,
         delete_resource_endpoint_association/4,
         delete_resource_gateway/3,
         delete_resource_gateway/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_rule/5,
         delete_rule/6,
         delete_service/3,
         delete_service/4,
         delete_service_network/3,
         delete_service_network/4,
         delete_service_network_resource_association/3,
         delete_service_network_resource_association/4,
         delete_service_network_service_association/3,
         delete_service_network_service_association/4,
         delete_service_network_vpc_association/3,
         delete_service_network_vpc_association/4,
         delete_target_group/3,
         delete_target_group/4,
         deregister_targets/3,
         deregister_targets/4,
         get_access_log_subscription/2,
         get_access_log_subscription/4,
         get_access_log_subscription/5,
         get_auth_policy/2,
         get_auth_policy/4,
         get_auth_policy/5,
         get_domain_verification/2,
         get_domain_verification/4,
         get_domain_verification/5,
         get_listener/3,
         get_listener/5,
         get_listener/6,
         get_resource_configuration/2,
         get_resource_configuration/4,
         get_resource_configuration/5,
         get_resource_gateway/2,
         get_resource_gateway/4,
         get_resource_gateway/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_rule/4,
         get_rule/6,
         get_rule/7,
         get_service/2,
         get_service/4,
         get_service/5,
         get_service_network/2,
         get_service_network/4,
         get_service_network/5,
         get_service_network_resource_association/2,
         get_service_network_resource_association/4,
         get_service_network_resource_association/5,
         get_service_network_service_association/2,
         get_service_network_service_association/4,
         get_service_network_service_association/5,
         get_service_network_vpc_association/2,
         get_service_network_vpc_association/4,
         get_service_network_vpc_association/5,
         get_target_group/2,
         get_target_group/4,
         get_target_group/5,
         list_access_log_subscriptions/2,
         list_access_log_subscriptions/4,
         list_access_log_subscriptions/5,
         list_domain_verifications/1,
         list_domain_verifications/3,
         list_domain_verifications/4,
         list_listeners/2,
         list_listeners/4,
         list_listeners/5,
         list_resource_configurations/1,
         list_resource_configurations/3,
         list_resource_configurations/4,
         list_resource_endpoint_associations/2,
         list_resource_endpoint_associations/4,
         list_resource_endpoint_associations/5,
         list_resource_gateways/1,
         list_resource_gateways/3,
         list_resource_gateways/4,
         list_rules/3,
         list_rules/5,
         list_rules/6,
         list_service_network_resource_associations/1,
         list_service_network_resource_associations/3,
         list_service_network_resource_associations/4,
         list_service_network_service_associations/1,
         list_service_network_service_associations/3,
         list_service_network_service_associations/4,
         list_service_network_vpc_associations/1,
         list_service_network_vpc_associations/3,
         list_service_network_vpc_associations/4,
         list_service_network_vpc_endpoint_associations/2,
         list_service_network_vpc_endpoint_associations/4,
         list_service_network_vpc_endpoint_associations/5,
         list_service_networks/1,
         list_service_networks/3,
         list_service_networks/4,
         list_services/1,
         list_services/3,
         list_services/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_target_groups/1,
         list_target_groups/3,
         list_target_groups/4,
         list_targets/3,
         list_targets/4,
         put_auth_policy/3,
         put_auth_policy/4,
         put_resource_policy/3,
         put_resource_policy/4,
         register_targets/3,
         register_targets/4,
         start_domain_verification/2,
         start_domain_verification/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_access_log_subscription/3,
         update_access_log_subscription/4,
         update_listener/4,
         update_listener/5,
         update_resource_configuration/3,
         update_resource_configuration/4,
         update_resource_gateway/3,
         update_resource_gateway/4,
         update_rule/5,
         update_rule/6,
         update_service/3,
         update_service/4,
         update_service_network/3,
         update_service_network/4,
         update_service_network_vpc_association/3,
         update_service_network_vpc_association/4,
         update_target_group/3,
         update_target_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% http_match() :: #{
%%   <<"headerMatches">> => list(header_match()),
%%   <<"method">> => string(),
%%   <<"pathMatch">> => path_match()
%% }
-type http_match() :: #{binary() => any()}.


%% Example:
%% create_access_log_subscription_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"destinationArn">> := string(),
%%   <<"resourceIdentifier">> := string(),
%%   <<"serviceNetworkLogType">> => string(),
%%   <<"tags">> => map()
%% }
-type create_access_log_subscription_request() :: #{binary() => any()}.


%% Example:
%% update_service_network_vpc_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"id">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string()
%% }
-type update_service_network_vpc_association_response() :: #{binary() => any()}.

%% Example:
%% delete_access_log_subscription_response() :: #{}
-type delete_access_log_subscription_response() :: #{}.


%% Example:
%% rule_update_success() :: #{
%%   <<"action">> => list(),
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"isDefault">> => boolean(),
%%   <<"match">> => list(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type rule_update_success() :: #{binary() => any()}.


%% Example:
%% start_domain_verification_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"domainName">> := string(),
%%   <<"tags">> => map()
%% }
-type start_domain_verification_request() :: #{binary() => any()}.


%% Example:
%% create_service_network_vpc_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"dnsOptions">> => dns_options(),
%%   <<"id">> => string(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string()
%% }
-type create_service_network_vpc_association_response() :: #{binary() => any()}.

%% Example:
%% get_resource_configuration_request() :: #{}
-type get_resource_configuration_request() :: #{}.


%% Example:
%% get_resource_configuration_response() :: #{
%%   <<"allowAssociationToShareableServiceNetwork">> => boolean(),
%%   <<"amazonManaged">> => boolean(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDomainName">> => string(),
%%   <<"domainVerificationArn">> => string(),
%%   <<"domainVerificationId">> => string(),
%%   <<"domainVerificationStatus">> => string(),
%%   <<"failureReason">> => [string()],
%%   <<"groupDomain">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"portRanges">> => list(string()),
%%   <<"protocol">> => string(),
%%   <<"resourceConfigurationDefinition">> => list(),
%%   <<"resourceConfigurationGroupId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type get_resource_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_rule_request() :: #{
%%   <<"action">> := list(),
%%   <<"clientToken">> => string(),
%%   <<"match">> := list(),
%%   <<"name">> := string(),
%%   <<"priority">> := integer(),
%%   <<"tags">> => map()
%% }
-type create_rule_request() :: #{binary() => any()}.


%% Example:
%% create_target_group_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"config">> => target_group_config(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> := string()
%% }
-type create_target_group_request() :: #{binary() => any()}.

%% Example:
%% get_service_network_resource_association_request() :: #{}
-type get_service_network_resource_association_request() :: #{}.


%% Example:
%% batch_update_rule_request() :: #{
%%   <<"rules">> := list(rule_update())
%% }
-type batch_update_rule_request() :: #{binary() => any()}.


%% Example:
%% get_target_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"config">> => target_group_config(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"serviceArns">> => list(string()),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type get_target_group_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_service_network_resource_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"id">> => string(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"status">> => string()
%% }
-type create_service_network_resource_association_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{}
-type delete_resource_policy_response() :: #{}.

%% Example:
%% delete_resource_gateway_request() :: #{}
-type delete_resource_gateway_request() :: #{}.


%% Example:
%% deregister_targets_request() :: #{
%%   <<"targets">> := list(target())
%% }
-type deregister_targets_request() :: #{binary() => any()}.


%% Example:
%% create_listener_response() :: #{
%%   <<"arn">> => string(),
%%   <<"defaultAction">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceId">> => string()
%% }
-type create_listener_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_configuration_response() :: #{}
-type delete_resource_configuration_response() :: #{}.

%% Example:
%% delete_service_network_request() :: #{}
-type delete_service_network_request() :: #{}.


%% Example:
%% get_resource_gateway_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"ipv4AddressesPerEni">> => integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type get_resource_gateway_response() :: #{binary() => any()}.


%% Example:
%% get_service_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"failureCode">> => string(),
%%   <<"failureMessage">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type get_service_response() :: #{binary() => any()}.


%% Example:
%% forward_action() :: #{
%%   <<"targetGroups">> => list(weighted_target_group())
%% }
-type forward_action() :: #{binary() => any()}.


%% Example:
%% create_service_network_request() :: #{
%%   <<"authType">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"sharingConfig">> => sharing_config(),
%%   <<"tags">> => map()
%% }
-type create_service_network_request() :: #{binary() => any()}.


%% Example:
%% service_network_service_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"id">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceId">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string()
%% }
-type service_network_service_association_summary() :: #{binary() => any()}.


%% Example:
%% arn_resource() :: #{
%%   <<"arn">> => string()
%% }
-type arn_resource() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% get_service_network_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"numberOfAssociatedServices">> => [float()],
%%   <<"numberOfAssociatedVPCs">> => [float()],
%%   <<"sharingConfig">> => sharing_config()
%% }
-type get_service_network_response() :: #{binary() => any()}.


%% Example:
%% update_service_network_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type update_service_network_response() :: #{binary() => any()}.


%% Example:
%% update_resource_configuration_response() :: #{
%%   <<"allowAssociationToShareableServiceNetwork">> => boolean(),
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"portRanges">> => list(string()),
%%   <<"protocol">> => string(),
%%   <<"resourceConfigurationDefinition">> => list(),
%%   <<"resourceConfigurationGroupId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type update_resource_configuration_response() :: #{binary() => any()}.


%% Example:
%% delete_resource_endpoint_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"resourceConfigurationArn">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"vpcEndpointId">> => string()
%% }
-type delete_resource_endpoint_association_response() :: #{binary() => any()}.


%% Example:
%% create_service_network_service_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type create_service_network_service_association_response() :: #{binary() => any()}.


%% Example:
%% create_service_network_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sharingConfig">> => sharing_config()
%% }
-type create_service_network_response() :: #{binary() => any()}.


%% Example:
%% list_service_network_vpc_endpoint_associations_response() :: #{
%%   <<"items">> => list(service_network_endpoint_association()),
%%   <<"nextToken">> => string()
%% }
-type list_service_network_vpc_endpoint_associations_response() :: #{binary() => any()}.


%% Example:
%% list_service_network_vpc_associations_response() :: #{
%%   <<"items">> := list(service_network_vpc_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_service_network_vpc_associations_response() :: #{binary() => any()}.

%% Example:
%% get_access_log_subscription_request() :: #{}
-type get_access_log_subscription_request() :: #{}.


%% Example:
%% ip_resource() :: #{
%%   <<"ipAddress">> => string()
%% }
-type ip_resource() :: #{binary() => any()}.

%% Example:
%% get_service_network_request() :: #{}
-type get_service_network_request() :: #{}.


%% Example:
%% service_network_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"numberOfAssociatedResourceConfigurations">> => [float()],
%%   <<"numberOfAssociatedServices">> => [float()],
%%   <<"numberOfAssociatedVPCs">> => [float()]
%% }
-type service_network_summary() :: #{binary() => any()}.


%% Example:
%% create_resource_gateway_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"ipv4AddressesPerEni">> => integer(),
%%   <<"name">> := string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"vpcIdentifier">> => string()
%% }
-type create_resource_gateway_request() :: #{binary() => any()}.


%% Example:
%% update_rule_request() :: #{
%%   <<"action">> => list(),
%%   <<"match">> => list(),
%%   <<"priority">> => integer()
%% }
-type update_rule_request() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"policy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_auth_policy_response() :: #{}
-type delete_auth_policy_response() :: #{}.


%% Example:
%% get_service_network_vpc_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dnsOptions">> => dns_options(),
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string(),
%%   <<"vpcId">> => string()
%% }
-type get_service_network_vpc_association_response() :: #{binary() => any()}.

%% Example:
%% get_rule_request() :: #{}
-type get_rule_request() :: #{}.


%% Example:
%% list_access_log_subscriptions_response() :: #{
%%   <<"items">> := list(access_log_subscription_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_access_log_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% list_domain_verifications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_domain_verifications_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_access_log_subscription_response() :: #{
%%   <<"arn">> := string(),
%%   <<"destinationArn">> := string(),
%%   <<"id">> := string(),
%%   <<"resourceArn">> := string(),
%%   <<"resourceId">> := string(),
%%   <<"serviceNetworkLogType">> => string()
%% }
-type create_access_log_subscription_response() :: #{binary() => any()}.


%% Example:
%% list_rules_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_rules_request() :: #{binary() => any()}.


%% Example:
%% target_group_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"lambdaEventStructureVersion">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"serviceArns">> => list(string()),
%%   <<"status">> => string(),
%%   <<"type">> => string(),
%%   <<"vpcIdentifier">> => string()
%% }
-type target_group_summary() :: #{binary() => any()}.


%% Example:
%% list_service_network_service_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceIdentifier">> => string(),
%%   <<"serviceNetworkIdentifier">> => string()
%% }
-type list_service_network_service_associations_request() :: #{binary() => any()}.

%% Example:
%% get_service_request() :: #{}
-type get_service_request() :: #{}.


%% Example:
%% update_resource_gateway_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type update_resource_gateway_response() :: #{binary() => any()}.


%% Example:
%% get_listener_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"defaultAction">> => list(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceId">> => string()
%% }
-type get_listener_response() :: #{binary() => any()}.


%% Example:
%% get_auth_policy_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"policy">> => string(),
%%   <<"state">> => string()
%% }
-type get_auth_policy_response() :: #{binary() => any()}.


%% Example:
%% create_resource_gateway_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"ipv4AddressesPerEni">> => integer(),
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcIdentifier">> => string()
%% }
-type create_resource_gateway_response() :: #{binary() => any()}.


%% Example:
%% update_target_group_request() :: #{
%%   <<"healthCheck">> := health_check_config()
%% }
-type update_target_group_request() :: #{binary() => any()}.


%% Example:
%% list_services_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{}
-type delete_rule_request() :: #{}.


%% Example:
%% update_target_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"config">> => target_group_config(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type update_target_group_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_response() :: #{}
-type delete_rule_response() :: #{}.


%% Example:
%% resource_configuration_summary() :: #{
%%   <<"amazonManaged">> => boolean(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDomainName">> => string(),
%%   <<"domainVerificationId">> => string(),
%%   <<"groupDomain">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"resourceConfigurationGroupId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type resource_configuration_summary() :: #{binary() => any()}.


%% Example:
%% service_network_vpc_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dnsOptions">> => dns_options(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string(),
%%   <<"vpcId">> => string()
%% }
-type service_network_vpc_association_summary() :: #{binary() => any()}.

%% Example:
%% get_resource_gateway_request() :: #{}
-type get_resource_gateway_request() :: #{}.


%% Example:
%% target() :: #{
%%   <<"id">> => [string()],
%%   <<"port">> => integer()
%% }
-type target() :: #{binary() => any()}.


%% Example:
%% service_network_endpoint_association() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => [string()],
%%   <<"serviceNetworkArn">> => string(),
%%   <<"state">> => [string()],
%%   <<"vpcEndpointId">> => [string()],
%%   <<"vpcEndpointOwnerId">> => [string()],
%%   <<"vpcId">> => [string()]
%% }
-type service_network_endpoint_association() :: #{binary() => any()}.


%% Example:
%% list_service_networks_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_service_networks_request() :: #{binary() => any()}.

%% Example:
%% delete_service_network_resource_association_request() :: #{}
-type delete_service_network_resource_association_request() :: #{}.


%% Example:
%% update_rule_response() :: #{
%%   <<"action">> => list(),
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"isDefault">> => boolean(),
%%   <<"match">> => list(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type update_rule_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_resource_endpoint_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceConfigurationIdentifier">> := string(),
%%   <<"resourceEndpointAssociationIdentifier">> => string(),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcEndpointOwner">> => string()
%% }
-type list_resource_endpoint_associations_request() :: #{binary() => any()}.


%% Example:
%% resource_gateway_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => string(),
%%   <<"ipv4AddressesPerEni">> => integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcIdentifier">> => string()
%% }
-type resource_gateway_summary() :: #{binary() => any()}.


%% Example:
%% list_listeners_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_listeners_request() :: #{binary() => any()}.


%% Example:
%% dns_resource() :: #{
%%   <<"domainName">> => string(),
%%   <<"ipAddressType">> => string()
%% }
-type dns_resource() :: #{binary() => any()}.


%% Example:
%% list_services_response() :: #{
%%   <<"items">> => list(service_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_services_response() :: #{binary() => any()}.


%% Example:
%% create_target_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"config">> => target_group_config(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type create_target_group_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% target_summary() :: #{
%%   <<"id">> => [string()],
%%   <<"port">> => integer(),
%%   <<"reasonCode">> => [string()],
%%   <<"status">> => string()
%% }
-type target_summary() :: #{binary() => any()}.


%% Example:
%% weighted_target_group() :: #{
%%   <<"targetGroupIdentifier">> => string(),
%%   <<"weight">> => integer()
%% }
-type weighted_target_group() :: #{binary() => any()}.


%% Example:
%% service_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type service_summary() :: #{binary() => any()}.


%% Example:
%% list_resource_gateways_response() :: #{
%%   <<"items">> => list(resource_gateway_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_gateways_response() :: #{binary() => any()}.

%% Example:
%% delete_service_network_vpc_association_request() :: #{}
-type delete_service_network_vpc_association_request() :: #{}.


%% Example:
%% create_service_request() :: #{
%%   <<"authType">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_service_request() :: #{binary() => any()}.


%% Example:
%% list_domain_verifications_response() :: #{
%%   <<"items">> => list(domain_verification_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_domain_verifications_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_configuration_request() :: #{}
-type delete_resource_configuration_request() :: #{}.


%% Example:
%% path_match() :: #{
%%   <<"caseSensitive">> => boolean(),
%%   <<"match">> => list()
%% }
-type path_match() :: #{binary() => any()}.


%% Example:
%% delete_target_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type delete_target_group_response() :: #{binary() => any()}.


%% Example:
%% header_match() :: #{
%%   <<"caseSensitive">> => boolean(),
%%   <<"match">> => list(),
%%   <<"name">> => string()
%% }
-type header_match() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_auth_policy_request() :: #{}
-type delete_auth_policy_request() :: #{}.


%% Example:
%% get_rule_response() :: #{
%%   <<"action">> => list(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"isDefault">> => boolean(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"match">> => list(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type get_rule_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% delete_service_network_service_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type delete_service_network_service_association_response() :: #{binary() => any()}.


%% Example:
%% create_rule_response() :: #{
%%   <<"action">> => list(),
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"match">> => list(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type create_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_service_network_response() :: #{}
-type delete_service_network_response() :: #{}.


%% Example:
%% list_service_network_resource_associations_response() :: #{
%%   <<"items">> => list(service_network_resource_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_service_network_resource_associations_response() :: #{binary() => any()}.


%% Example:
%% put_auth_policy_request() :: #{
%%   <<"policy">> := string()
%% }
-type put_auth_policy_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.


%% Example:
%% delete_service_network_vpc_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type delete_service_network_vpc_association_response() :: #{binary() => any()}.


%% Example:
%% list_listeners_response() :: #{
%%   <<"items">> := list(listener_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_listeners_response() :: #{binary() => any()}.


%% Example:
%% list_target_groups_response() :: #{
%%   <<"items">> => list(target_group_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_target_groups_response() :: #{binary() => any()}.


%% Example:
%% update_access_log_subscription_response() :: #{
%%   <<"arn">> := string(),
%%   <<"destinationArn">> := string(),
%%   <<"id">> := string(),
%%   <<"resourceArn">> := string(),
%%   <<"resourceId">> := string()
%% }
-type update_access_log_subscription_response() :: #{binary() => any()}.

%% Example:
%% delete_access_log_subscription_request() :: #{}
-type delete_access_log_subscription_request() :: #{}.


%% Example:
%% update_service_request() :: #{
%%   <<"authType">> => string(),
%%   <<"certificateArn">> => string()
%% }
-type update_service_request() :: #{binary() => any()}.


%% Example:
%% list_resource_configurations_response() :: #{
%%   <<"items">> => list(resource_configuration_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_configurations_response() :: #{binary() => any()}.

%% Example:
%% delete_target_group_request() :: #{}
-type delete_target_group_request() :: #{}.


%% Example:
%% rule_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"isDefault">> => boolean(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type rule_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_resource_configurations_request() :: #{
%%   <<"domainVerificationIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceConfigurationGroupIdentifier">> => string(),
%%   <<"resourceGatewayIdentifier">> => string()
%% }
-type list_resource_configurations_request() :: #{binary() => any()}.


%% Example:
%% register_targets_request() :: #{
%%   <<"targets">> := list(target())
%% }
-type register_targets_request() :: #{binary() => any()}.


%% Example:
%% domain_verification_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"domainName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastVerifiedTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"txtMethodConfig">> => txt_method_config()
%% }
-type domain_verification_summary() :: #{binary() => any()}.


%% Example:
%% create_service_network_resource_association_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"resourceConfigurationIdentifier">> := string(),
%%   <<"serviceNetworkIdentifier">> := string(),
%%   <<"tags">> => map()
%% }
-type create_service_network_resource_association_request() :: #{binary() => any()}.


%% Example:
%% list_targets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"targets">> => list(target())
%% }
-type list_targets_request() :: #{binary() => any()}.


%% Example:
%% update_access_log_subscription_request() :: #{
%%   <<"destinationArn">> := string()
%% }
-type update_access_log_subscription_request() :: #{binary() => any()}.


%% Example:
%% access_log_subscription_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationArn">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"serviceNetworkLogType">> => string()
%% }
-type access_log_subscription_summary() :: #{binary() => any()}.


%% Example:
%% get_domain_verification_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"domainName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastVerifiedTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"txtMethodConfig">> => txt_method_config()
%% }
-type get_domain_verification_response() :: #{binary() => any()}.


%% Example:
%% get_service_network_service_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceId">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string()
%% }
-type get_service_network_service_association_response() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"policy">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_verification_request() :: #{}
-type delete_domain_verification_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_domain_verification_request() :: #{}
-type get_domain_verification_request() :: #{}.


%% Example:
%% update_listener_request() :: #{
%%   <<"defaultAction">> := list()
%% }
-type update_listener_request() :: #{binary() => any()}.


%% Example:
%% update_listener_response() :: #{
%%   <<"arn">> => string(),
%%   <<"defaultAction">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceId">> => string()
%% }
-type update_listener_response() :: #{binary() => any()}.


%% Example:
%% list_rules_response() :: #{
%%   <<"items">> := list(rule_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_rules_response() :: #{binary() => any()}.


%% Example:
%% update_resource_gateway_request() :: #{
%%   <<"securityGroupIds">> => list(string())
%% }
-type update_resource_gateway_request() :: #{binary() => any()}.


%% Example:
%% list_target_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"targetGroupType">> => string(),
%%   <<"vpcIdentifier">> => string()
%% }
-type list_target_groups_request() :: #{binary() => any()}.


%% Example:
%% listener_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string()
%% }
-type listener_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% delete_domain_verification_response() :: #{}
-type delete_domain_verification_response() :: #{}.


%% Example:
%% list_resource_endpoint_associations_response() :: #{
%%   <<"items">> => list(resource_endpoint_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_endpoint_associations_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% start_domain_verification_response() :: #{
%%   <<"arn">> => string(),
%%   <<"domainName">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"txtMethodConfig">> => txt_method_config()
%% }
-type start_domain_verification_response() :: #{binary() => any()}.

%% Example:
%% delete_service_request() :: #{}
-type delete_service_request() :: #{}.


%% Example:
%% health_check_config() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"healthCheckIntervalSeconds">> => integer(),
%%   <<"healthCheckTimeoutSeconds">> => integer(),
%%   <<"healthyThresholdCount">> => integer(),
%%   <<"matcher">> => list(),
%%   <<"path">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"protocolVersion">> => string(),
%%   <<"unhealthyThresholdCount">> => integer()
%% }
-type health_check_config() :: #{binary() => any()}.


%% Example:
%% delete_service_network_resource_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type delete_service_network_resource_association_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_service_network_service_association_request() :: #{}
-type delete_service_network_service_association_request() :: #{}.


%% Example:
%% fixed_response_action() :: #{
%%   <<"statusCode">> => integer()
%% }
-type fixed_response_action() :: #{binary() => any()}.


%% Example:
%% create_resource_configuration_request() :: #{
%%   <<"allowAssociationToShareableServiceNetwork">> => boolean(),
%%   <<"clientToken">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"domainVerificationIdentifier">> => string(),
%%   <<"groupDomain">> => string(),
%%   <<"name">> := string(),
%%   <<"portRanges">> => list(string()),
%%   <<"protocol">> => string(),
%%   <<"resourceConfigurationDefinition">> => list(),
%%   <<"resourceConfigurationGroupIdentifier">> => string(),
%%   <<"resourceGatewayIdentifier">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> := string()
%% }
-type create_resource_configuration_request() :: #{binary() => any()}.


%% Example:
%% resource_endpoint_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"id">> => string(),
%%   <<"resourceConfigurationArn">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceConfigurationName">> => string(),
%%   <<"vpcEndpointId">> => string(),
%%   <<"vpcEndpointOwner">> => string()
%% }
-type resource_endpoint_association_summary() :: #{binary() => any()}.


%% Example:
%% list_service_network_vpc_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceNetworkIdentifier">> => string(),
%%   <<"vpcIdentifier">> => string()
%% }
-type list_service_network_vpc_associations_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_endpoint_association_request() :: #{}
-type delete_resource_endpoint_association_request() :: #{}.


%% Example:
%% put_auth_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"state">> => string()
%% }
-type put_auth_policy_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{}
-type put_resource_policy_response() :: #{}.


%% Example:
%% list_resource_gateways_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_resource_gateways_request() :: #{binary() => any()}.


%% Example:
%% delete_resource_gateway_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type delete_resource_gateway_response() :: #{binary() => any()}.


%% Example:
%% target_failure() :: #{
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => [string()],
%%   <<"port">> => integer()
%% }
-type target_failure() :: #{binary() => any()}.


%% Example:
%% txt_method_config() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type txt_method_config() :: #{binary() => any()}.

%% Example:
%% get_auth_policy_request() :: #{}
-type get_auth_policy_request() :: #{}.

%% Example:
%% delete_resource_policy_request() :: #{}
-type delete_resource_policy_request() :: #{}.


%% Example:
%% get_service_network_resource_association_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"domainVerificationStatus">> => string(),
%%   <<"failureCode">> => [string()],
%%   <<"failureReason">> => [string()],
%%   <<"id">> => string(),
%%   <<"isManagedAssociation">> => boolean(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"privateDnsEntry">> => dns_entry(),
%%   <<"resourceConfigurationArn">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceConfigurationName">> => string(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string()
%% }
-type get_service_network_resource_association_response() :: #{binary() => any()}.


%% Example:
%% register_targets_response() :: #{
%%   <<"successful">> => list(target()),
%%   <<"unsuccessful">> => list(target_failure())
%% }
-type register_targets_response() :: #{binary() => any()}.


%% Example:
%% service_network_resource_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"failureCode">> => [string()],
%%   <<"id">> => string(),
%%   <<"isManagedAssociation">> => boolean(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"privateDnsEntry">> => dns_entry(),
%%   <<"resourceConfigurationArn">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceConfigurationName">> => string(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkId">> => string(),
%%   <<"serviceNetworkName">> => string(),
%%   <<"status">> => string()
%% }
-type service_network_resource_association_summary() :: #{binary() => any()}.


%% Example:
%% rule_update() :: #{
%%   <<"action">> => list(),
%%   <<"match">> => list(),
%%   <<"priority">> => integer(),
%%   <<"ruleIdentifier">> => string()
%% }
-type rule_update() :: #{binary() => any()}.


%% Example:
%% dns_entry() :: #{
%%   <<"domainName">> => [string()],
%%   <<"hostedZoneId">> => [string()]
%% }
-type dns_entry() :: #{binary() => any()}.


%% Example:
%% list_service_network_resource_associations_request() :: #{
%%   <<"includeChildren">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceConfigurationIdentifier">> => string(),
%%   <<"serviceNetworkIdentifier">> => string()
%% }
-type list_service_network_resource_associations_request() :: #{binary() => any()}.


%% Example:
%% update_service_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type update_service_response() :: #{binary() => any()}.


%% Example:
%% delete_service_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type delete_service_response() :: #{binary() => any()}.


%% Example:
%% update_service_network_vpc_association_request() :: #{
%%   <<"securityGroupIds">> := list(string())
%% }
-type update_service_network_vpc_association_request() :: #{binary() => any()}.


%% Example:
%% list_service_network_vpc_endpoint_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceNetworkIdentifier">> := string()
%% }
-type list_service_network_vpc_endpoint_associations_request() :: #{binary() => any()}.


%% Example:
%% deregister_targets_response() :: #{
%%   <<"successful">> => list(target()),
%%   <<"unsuccessful">> => list(target_failure())
%% }
-type deregister_targets_response() :: #{binary() => any()}.


%% Example:
%% update_service_network_request() :: #{
%%   <<"authType">> := string()
%% }
-type update_service_network_request() :: #{binary() => any()}.

%% Example:
%% get_listener_request() :: #{}
-type get_listener_request() :: #{}.


%% Example:
%% create_service_response() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"dnsEntry">> => dns_entry(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type create_service_response() :: #{binary() => any()}.


%% Example:
%% batch_update_rule_response() :: #{
%%   <<"successful">> => list(rule_update_success()),
%%   <<"unsuccessful">> => list(rule_update_failure())
%% }
-type batch_update_rule_response() :: #{binary() => any()}.

%% Example:
%% get_target_group_request() :: #{}
-type get_target_group_request() :: #{}.

%% Example:
%% delete_listener_request() :: #{}
-type delete_listener_request() :: #{}.


%% Example:
%% list_targets_response() :: #{
%%   <<"items">> := list(target_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_targets_response() :: #{binary() => any()}.


%% Example:
%% update_resource_configuration_request() :: #{
%%   <<"allowAssociationToShareableServiceNetwork">> => boolean(),
%%   <<"portRanges">> => list(string()),
%%   <<"resourceConfigurationDefinition">> => list()
%% }
-type update_resource_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_access_log_subscription_response() :: #{
%%   <<"arn">> := string(),
%%   <<"createdAt">> := non_neg_integer(),
%%   <<"destinationArn">> := string(),
%%   <<"id">> := string(),
%%   <<"lastUpdatedAt">> := non_neg_integer(),
%%   <<"resourceArn">> := string(),
%%   <<"resourceId">> := string(),
%%   <<"serviceNetworkLogType">> => string()
%% }
-type get_access_log_subscription_response() :: #{binary() => any()}.


%% Example:
%% target_group_config() :: #{
%%   <<"healthCheck">> => health_check_config(),
%%   <<"ipAddressType">> => string(),
%%   <<"lambdaEventStructureVersion">> => string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"protocolVersion">> => string(),
%%   <<"vpcIdentifier">> => string()
%% }
-type target_group_config() :: #{binary() => any()}.


%% Example:
%% create_service_network_vpc_association_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dnsOptions">> => dns_options(),
%%   <<"privateDnsEnabled">> => boolean(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"serviceNetworkIdentifier">> := string(),
%%   <<"tags">> => map(),
%%   <<"vpcIdentifier">> := string()
%% }
-type create_service_network_vpc_association_request() :: #{binary() => any()}.


%% Example:
%% list_access_log_subscriptions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceIdentifier">> := string()
%% }
-type list_access_log_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% delete_listener_response() :: #{}
-type delete_listener_response() :: #{}.


%% Example:
%% rule_update_failure() :: #{
%%   <<"failureCode">> => string(),
%%   <<"failureMessage">> => string(),
%%   <<"ruleIdentifier">> => string()
%% }
-type rule_update_failure() :: #{binary() => any()}.


%% Example:
%% list_service_networks_response() :: #{
%%   <<"items">> := list(service_network_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_service_networks_response() :: #{binary() => any()}.


%% Example:
%% sharing_config() :: #{
%%   <<"enabled">> => boolean()
%% }
-type sharing_config() :: #{binary() => any()}.


%% Example:
%% list_service_network_service_associations_response() :: #{
%%   <<"items">> := list(service_network_service_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_service_network_service_associations_response() :: #{binary() => any()}.


%% Example:
%% dns_options() :: #{
%%   <<"privateDnsPreference">> => string(),
%%   <<"privateDnsSpecifiedDomains">> => list(string())
%% }
-type dns_options() :: #{binary() => any()}.

%% Example:
%% get_service_network_service_association_request() :: #{}
-type get_service_network_service_association_request() :: #{}.


%% Example:
%% create_listener_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"defaultAction">> := list(),
%%   <<"name">> := string(),
%%   <<"port">> => integer(),
%%   <<"protocol">> := string(),
%%   <<"tags">> => map()
%% }
-type create_listener_request() :: #{binary() => any()}.


%% Example:
%% create_service_network_service_association_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"serviceIdentifier">> := string(),
%%   <<"serviceNetworkIdentifier">> := string(),
%%   <<"tags">> => map()
%% }
-type create_service_network_service_association_request() :: #{binary() => any()}.

%% Example:
%% get_service_network_vpc_association_request() :: #{}
-type get_service_network_vpc_association_request() :: #{}.


%% Example:
%% create_resource_configuration_response() :: #{
%%   <<"allowAssociationToShareableServiceNetwork">> => boolean(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDomainName">> => string(),
%%   <<"domainVerificationArn">> => string(),
%%   <<"domainVerificationId">> => string(),
%%   <<"failureReason">> => [string()],
%%   <<"groupDomain">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"portRanges">> => list(string()),
%%   <<"protocol">> => string(),
%%   <<"resourceConfigurationDefinition">> => list(),
%%   <<"resourceConfigurationGroupId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type create_resource_configuration_response() :: #{binary() => any()}.

-type batch_update_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_access_log_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_listener_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_resource_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_resource_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_network_resource_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_network_service_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_network_vpc_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_target_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_access_log_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_auth_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_domain_verification_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_listener_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_endpoint_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_resource_gateway_errors() ::
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

-type delete_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_network_resource_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_network_service_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_network_vpc_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_target_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_targets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_access_log_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_auth_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_domain_verification_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_listener_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_gateway_errors() ::
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

-type get_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_network_resource_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_network_service_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_network_vpc_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_target_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_access_log_subscriptions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_domain_verifications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_listeners_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resource_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_resource_endpoint_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_resource_gateways_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_network_resource_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_network_service_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_network_vpc_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_network_vpc_endpoint_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_networks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_services_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_target_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_targets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_auth_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_targets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_domain_verification_errors() ::
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
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_access_log_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_listener_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_resource_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_resource_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_network_vpc_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_target_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Updates the listener rules in a batch.
%%
%% You can use this operation to change the priority of listener rules. This
%% can be useful when bulk updating or swapping rule priority.
%%
%% Required permissions: `vpc-lattice:UpdateRule'
%%
%% For more information, see How Amazon VPC Lattice works with IAM:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/security_iam_service-with-iam.html
%% in the Amazon VPC Lattice User Guide.
-spec batch_update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), batch_update_rule_request()) ->
    {ok, batch_update_rule_response(), tuple()} |
    {error, any()} |
    {error, batch_update_rule_errors(), tuple()}.
batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input, []).

-spec batch_update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), batch_update_rule_request(), proplists:proplist()) ->
    {ok, batch_update_rule_response(), tuple()} |
    {error, any()} |
    {error, batch_update_rule_errors(), tuple()}.
batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
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

%% @doc Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and
%% Amazon Kinesis Data Firehose.
%%
%% The service network owner can use the access logs to audit the services in
%% the network. The service network owner can only see access logs from
%% clients and services that are associated with their service network.
%% Access log entries represent traffic originated from VPCs associated with
%% that network. For more information, see Access logs:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html
%% in the Amazon VPC Lattice User Guide.
-spec create_access_log_subscription(aws_client:aws_client(), create_access_log_subscription_request()) ->
    {ok, create_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_access_log_subscription_errors(), tuple()}.
create_access_log_subscription(Client, Input) ->
    create_access_log_subscription(Client, Input, []).

-spec create_access_log_subscription(aws_client:aws_client(), create_access_log_subscription_request(), proplists:proplist()) ->
    {ok, create_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_access_log_subscription_errors(), tuple()}.
create_access_log_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accesslogsubscriptions"],
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

%% @doc Creates a listener for a service.
%%
%% Before you start using your Amazon VPC Lattice service, you must add one
%% or more listeners. A listener is a process that checks for connection
%% requests to your services. For more information, see Listeners:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html in the
%% Amazon VPC Lattice User Guide.
-spec create_listener(aws_client:aws_client(), binary() | list(), create_listener_request()) ->
    {ok, create_listener_response(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, ServiceIdentifier, Input) ->
    create_listener(Client, ServiceIdentifier, Input, []).

-spec create_listener(aws_client:aws_client(), binary() | list(), create_listener_request(), proplists:proplist()) ->
    {ok, create_listener_response(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, ServiceIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners"],
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

%% @doc Creates a resource configuration.
%%
%% A resource configuration defines a specific resource. You can associate a
%% resource configuration with a service network or a VPC endpoint.
-spec create_resource_configuration(aws_client:aws_client(), create_resource_configuration_request()) ->
    {ok, create_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_resource_configuration_errors(), tuple()}.
create_resource_configuration(Client, Input) ->
    create_resource_configuration(Client, Input, []).

-spec create_resource_configuration(aws_client:aws_client(), create_resource_configuration_request(), proplists:proplist()) ->
    {ok, create_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_resource_configuration_errors(), tuple()}.
create_resource_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resourceconfigurations"],
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

%% @doc A resource gateway is a point of ingress into the VPC where a
%% resource resides.
%%
%% It spans multiple Availability Zones. For your resource to be accessible
%% from all Availability Zones, you should create your resource gateways to
%% span as many Availability Zones as possible. A VPC can have multiple
%% resource gateways.
-spec create_resource_gateway(aws_client:aws_client(), create_resource_gateway_request()) ->
    {ok, create_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_resource_gateway_errors(), tuple()}.
create_resource_gateway(Client, Input) ->
    create_resource_gateway(Client, Input, []).

-spec create_resource_gateway(aws_client:aws_client(), create_resource_gateway_request(), proplists:proplist()) ->
    {ok, create_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_resource_gateway_errors(), tuple()}.
create_resource_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resourcegateways"],
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

%% @doc Creates a listener rule.
%%
%% Each listener has a default rule for checking connection requests, but you
%% can define additional rules. Each rule consists of a priority, one or more
%% actions, and one or more conditions. For more information, see Listener
%% rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the Amazon VPC Lattice User Guide.
-spec create_rule(aws_client:aws_client(), binary() | list(), binary() | list(), create_rule_request()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input, []).

-spec create_rule(aws_client:aws_client(), binary() | list(), binary() | list(), create_rule_request(), proplists:proplist()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
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

%% @doc Creates a service.
%%
%% A service is any software application that can run on instances
%% containers, or serverless functions within an account or virtual private
%% cloud (VPC).
%%
%% For more information, see Services:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html in the
%% Amazon VPC Lattice User Guide.
-spec create_service(aws_client:aws_client(), create_service_request()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input) ->
    create_service(Client, Input, []).

-spec create_service(aws_client:aws_client(), create_service_request(), proplists:proplist()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/services"],
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

%% @doc Creates a service network.
%%
%% A service network is a logical boundary for a collection of services. You
%% can associate services and VPCs with a service network.
%%
%% For more information, see Service networks:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html in
%% the Amazon VPC Lattice User Guide.
-spec create_service_network(aws_client:aws_client(), create_service_network_request()) ->
    {ok, create_service_network_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_errors(), tuple()}.
create_service_network(Client, Input) ->
    create_service_network(Client, Input, []).

-spec create_service_network(aws_client:aws_client(), create_service_network_request(), proplists:proplist()) ->
    {ok, create_service_network_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_errors(), tuple()}.
create_service_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworks"],
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

%% @doc Associates the specified service network with the specified resource
%% configuration.
%%
%% This allows the resource configuration to receive connections through the
%% service network, including through a service network VPC endpoint.
-spec create_service_network_resource_association(aws_client:aws_client(), create_service_network_resource_association_request()) ->
    {ok, create_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_resource_association_errors(), tuple()}.
create_service_network_resource_association(Client, Input) ->
    create_service_network_resource_association(Client, Input, []).

-spec create_service_network_resource_association(aws_client:aws_client(), create_service_network_resource_association_request(), proplists:proplist()) ->
    {ok, create_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_resource_association_errors(), tuple()}.
create_service_network_resource_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworkresourceassociations"],
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

%% @doc Associates the specified service with the specified service network.
%%
%% For more information, see Manage service associations:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-service-associations
%% in the Amazon VPC Lattice User Guide.
%%
%% You can't use this operation if the service and service network are
%% already associated or if there is a disassociation or deletion in
%% progress. If the association fails, you can retry the operation by
%% deleting the association and recreating it.
%%
%% You cannot associate a service and service network that are shared with a
%% caller. The caller must own either the service or the service network.
%%
%% As a result of this operation, the association is created in the service
%% network account and the association owner account.
-spec create_service_network_service_association(aws_client:aws_client(), create_service_network_service_association_request()) ->
    {ok, create_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_service_association_errors(), tuple()}.
create_service_network_service_association(Client, Input) ->
    create_service_network_service_association(Client, Input, []).

-spec create_service_network_service_association(aws_client:aws_client(), create_service_network_service_association_request(), proplists:proplist()) ->
    {ok, create_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_service_association_errors(), tuple()}.
create_service_network_service_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworkserviceassociations"],
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

%% @doc Associates a VPC with a service network.
%%
%% When you associate a VPC with the service network, it enables all the
%% resources within that VPC to be clients and communicate with other
%% services in the service network. For more information, see Manage VPC
%% associations:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations
%% in the Amazon VPC Lattice User Guide.
%%
%% You can't use this operation if there is a disassociation in progress.
%% If the association fails, retry by deleting the association and recreating
%% it.
%%
%% As a result of this operation, the association gets created in the service
%% network account and the VPC owner account.
%%
%% If you add a security group to the service network and VPC association,
%% the association must continue to always have at least one security group.
%% You can add or edit security groups at any time. However, to remove all
%% security groups, you must first delete the association and recreate it
%% without security groups.
-spec create_service_network_vpc_association(aws_client:aws_client(), create_service_network_vpc_association_request()) ->
    {ok, create_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_vpc_association_errors(), tuple()}.
create_service_network_vpc_association(Client, Input) ->
    create_service_network_vpc_association(Client, Input, []).

-spec create_service_network_vpc_association(aws_client:aws_client(), create_service_network_vpc_association_request(), proplists:proplist()) ->
    {ok, create_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, create_service_network_vpc_association_errors(), tuple()}.
create_service_network_vpc_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworkvpcassociations"],
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

%% @doc Creates a target group.
%%
%% A target group is a collection of targets, or compute resources, that run
%% your application or service. A target group can only be used by a single
%% service.
%%
%% For more information, see Target groups:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html in
%% the Amazon VPC Lattice User Guide.
-spec create_target_group(aws_client:aws_client(), create_target_group_request()) ->
    {ok, create_target_group_response(), tuple()} |
    {error, any()} |
    {error, create_target_group_errors(), tuple()}.
create_target_group(Client, Input) ->
    create_target_group(Client, Input, []).

-spec create_target_group(aws_client:aws_client(), create_target_group_request(), proplists:proplist()) ->
    {ok, create_target_group_response(), tuple()} |
    {error, any()} |
    {error, create_target_group_errors(), tuple()}.
create_target_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups"],
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

%% @doc Deletes the specified access log subscription.
-spec delete_access_log_subscription(aws_client:aws_client(), binary() | list(), delete_access_log_subscription_request()) ->
    {ok, delete_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_access_log_subscription_errors(), tuple()}.
delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input) ->
    delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input, []).

-spec delete_access_log_subscription(aws_client:aws_client(), binary() | list(), delete_access_log_subscription_request(), proplists:proplist()) ->
    {ok, delete_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_access_log_subscription_errors(), tuple()}.
delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
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

%% @doc Deletes the specified auth policy.
%%
%% If an auth is set to `AWS_IAM' and the auth policy is deleted, all
%% requests are denied. If you are trying to remove the auth policy
%% completely, you must set the auth type to `NONE'. If auth is enabled
%% on the resource, but no auth policy is set, all requests are denied.
-spec delete_auth_policy(aws_client:aws_client(), binary() | list(), delete_auth_policy_request()) ->
    {ok, delete_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_auth_policy_errors(), tuple()}.
delete_auth_policy(Client, ResourceIdentifier, Input) ->
    delete_auth_policy(Client, ResourceIdentifier, Input, []).

-spec delete_auth_policy(aws_client:aws_client(), binary() | list(), delete_auth_policy_request(), proplists:proplist()) ->
    {ok, delete_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_auth_policy_errors(), tuple()}.
delete_auth_policy(Client, ResourceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Deletes the specified domain verification.
-spec delete_domain_verification(aws_client:aws_client(), binary() | list(), delete_domain_verification_request()) ->
    {ok, delete_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_verification_errors(), tuple()}.
delete_domain_verification(Client, DomainVerificationIdentifier, Input) ->
    delete_domain_verification(Client, DomainVerificationIdentifier, Input, []).

-spec delete_domain_verification(aws_client:aws_client(), binary() | list(), delete_domain_verification_request(), proplists:proplist()) ->
    {ok, delete_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_verification_errors(), tuple()}.
delete_domain_verification(Client, DomainVerificationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/domainverifications/", aws_util:encode_uri(DomainVerificationIdentifier), ""],
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

%% @doc Deletes the specified listener.
-spec delete_listener(aws_client:aws_client(), binary() | list(), binary() | list(), delete_listener_request()) ->
    {ok, delete_listener_response(), tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input, []).

-spec delete_listener(aws_client:aws_client(), binary() | list(), binary() | list(), delete_listener_request(), proplists:proplist()) ->
    {ok, delete_listener_response(), tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
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

%% @doc Deletes the specified resource configuration.
-spec delete_resource_configuration(aws_client:aws_client(), binary() | list(), delete_resource_configuration_request()) ->
    {ok, delete_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_configuration_errors(), tuple()}.
delete_resource_configuration(Client, ResourceConfigurationIdentifier, Input) ->
    delete_resource_configuration(Client, ResourceConfigurationIdentifier, Input, []).

-spec delete_resource_configuration(aws_client:aws_client(), binary() | list(), delete_resource_configuration_request(), proplists:proplist()) ->
    {ok, delete_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_configuration_errors(), tuple()}.
delete_resource_configuration(Client, ResourceConfigurationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/resourceconfigurations/", aws_util:encode_uri(ResourceConfigurationIdentifier), ""],
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

%% @doc Disassociates the resource configuration from the resource VPC
%% endpoint.
-spec delete_resource_endpoint_association(aws_client:aws_client(), binary() | list(), delete_resource_endpoint_association_request()) ->
    {ok, delete_resource_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_endpoint_association_errors(), tuple()}.
delete_resource_endpoint_association(Client, ResourceEndpointAssociationIdentifier, Input) ->
    delete_resource_endpoint_association(Client, ResourceEndpointAssociationIdentifier, Input, []).

-spec delete_resource_endpoint_association(aws_client:aws_client(), binary() | list(), delete_resource_endpoint_association_request(), proplists:proplist()) ->
    {ok, delete_resource_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_endpoint_association_errors(), tuple()}.
delete_resource_endpoint_association(Client, ResourceEndpointAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/resourceendpointassociations/", aws_util:encode_uri(ResourceEndpointAssociationIdentifier), ""],
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

%% @doc Deletes the specified resource gateway.
-spec delete_resource_gateway(aws_client:aws_client(), binary() | list(), delete_resource_gateway_request()) ->
    {ok, delete_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_gateway_errors(), tuple()}.
delete_resource_gateway(Client, ResourceGatewayIdentifier, Input) ->
    delete_resource_gateway(Client, ResourceGatewayIdentifier, Input, []).

-spec delete_resource_gateway(aws_client:aws_client(), binary() | list(), delete_resource_gateway_request(), proplists:proplist()) ->
    {ok, delete_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_gateway_errors(), tuple()}.
delete_resource_gateway(Client, ResourceGatewayIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcegateways/", aws_util:encode_uri(ResourceGatewayIdentifier), ""],
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

%% @doc Deletes the specified resource policy.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Deletes a listener rule.
%%
%% Each listener has a default rule for checking connection requests, but you
%% can define additional rules. Each rule consists of a priority, one or more
%% actions, and one or more conditions. You can delete additional listener
%% rules, but you cannot delete the default rule.
%%
%% For more information, see Listener rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the Amazon VPC Lattice User Guide.
-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_rule_request()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input) ->
    delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input, []).

-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_rule_request(), proplists:proplist()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
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

%% @doc Deletes a service.
%%
%% A service can't be deleted if it's associated with a service
%% network. If you delete a service, all resources related to the service,
%% such as the resource policy, auth policy, listeners, listener rules, and
%% access log subscriptions, are also deleted. For more information, see
%% Delete a service:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service
%% in the Amazon VPC Lattice User Guide.
-spec delete_service(aws_client:aws_client(), binary() | list(), delete_service_request()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, ServiceIdentifier, Input) ->
    delete_service(Client, ServiceIdentifier, Input, []).

-spec delete_service(aws_client:aws_client(), binary() | list(), delete_service_request(), proplists:proplist()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
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

%% @doc Deletes a service network.
%%
%% You can only delete the service network if there is no service or VPC
%% associated with it. If you delete a service network, all resources related
%% to the service network, such as the resource policy, auth policy, and
%% access log subscriptions, are also deleted. For more information, see
%% Delete a service network:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network
%% in the Amazon VPC Lattice User Guide.
-spec delete_service_network(aws_client:aws_client(), binary() | list(), delete_service_network_request()) ->
    {ok, delete_service_network_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_errors(), tuple()}.
delete_service_network(Client, ServiceNetworkIdentifier, Input) ->
    delete_service_network(Client, ServiceNetworkIdentifier, Input, []).

-spec delete_service_network(aws_client:aws_client(), binary() | list(), delete_service_network_request(), proplists:proplist()) ->
    {ok, delete_service_network_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_errors(), tuple()}.
delete_service_network(Client, ServiceNetworkIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
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

%% @doc Deletes the association between a service network and a resource
%% configuration.
-spec delete_service_network_resource_association(aws_client:aws_client(), binary() | list(), delete_service_network_resource_association_request()) ->
    {ok, delete_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_resource_association_errors(), tuple()}.
delete_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, Input) ->
    delete_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, Input, []).

-spec delete_service_network_resource_association(aws_client:aws_client(), binary() | list(), delete_service_network_resource_association_request(), proplists:proplist()) ->
    {ok, delete_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_resource_association_errors(), tuple()}.
delete_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworkresourceassociations/", aws_util:encode_uri(ServiceNetworkResourceAssociationIdentifier), ""],
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

%% @doc Deletes the association between a service and a service network.
%%
%% This operation fails if an association is still in progress.
-spec delete_service_network_service_association(aws_client:aws_client(), binary() | list(), delete_service_network_service_association_request()) ->
    {ok, delete_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_service_association_errors(), tuple()}.
delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input) ->
    delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input, []).

-spec delete_service_network_service_association(aws_client:aws_client(), binary() | list(), delete_service_network_service_association_request(), proplists:proplist()) ->
    {ok, delete_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_service_association_errors(), tuple()}.
delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworkserviceassociations/", aws_util:encode_uri(ServiceNetworkServiceAssociationIdentifier), ""],
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

%% @doc Disassociates the VPC from the service network.
%%
%% You can't disassociate the VPC if there is a create or update
%% association in progress.
-spec delete_service_network_vpc_association(aws_client:aws_client(), binary() | list(), delete_service_network_vpc_association_request()) ->
    {ok, delete_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_vpc_association_errors(), tuple()}.
delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input) ->
    delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input, []).

-spec delete_service_network_vpc_association(aws_client:aws_client(), binary() | list(), delete_service_network_vpc_association_request(), proplists:proplist()) ->
    {ok, delete_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, delete_service_network_vpc_association_errors(), tuple()}.
delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
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

%% @doc Deletes a target group.
%%
%% You can't delete a target group if it is used in a listener rule or if
%% the target group creation is in progress.
-spec delete_target_group(aws_client:aws_client(), binary() | list(), delete_target_group_request()) ->
    {ok, delete_target_group_response(), tuple()} |
    {error, any()} |
    {error, delete_target_group_errors(), tuple()}.
delete_target_group(Client, TargetGroupIdentifier, Input) ->
    delete_target_group(Client, TargetGroupIdentifier, Input, []).

-spec delete_target_group(aws_client:aws_client(), binary() | list(), delete_target_group_request(), proplists:proplist()) ->
    {ok, delete_target_group_response(), tuple()} |
    {error, any()} |
    {error, delete_target_group_errors(), tuple()}.
delete_target_group(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
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

%% @doc Deregisters the specified targets from the specified target group.
-spec deregister_targets(aws_client:aws_client(), binary() | list(), deregister_targets_request()) ->
    {ok, deregister_targets_response(), tuple()} |
    {error, any()} |
    {error, deregister_targets_errors(), tuple()}.
deregister_targets(Client, TargetGroupIdentifier, Input) ->
    deregister_targets(Client, TargetGroupIdentifier, Input, []).

-spec deregister_targets(aws_client:aws_client(), binary() | list(), deregister_targets_request(), proplists:proplist()) ->
    {ok, deregister_targets_response(), tuple()} |
    {error, any()} |
    {error, deregister_targets_errors(), tuple()}.
deregister_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/deregistertargets"],
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

%% @doc Retrieves information about the specified access log subscription.
-spec get_access_log_subscription(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_access_log_subscription_errors(), tuple()}.
get_access_log_subscription(Client, AccessLogSubscriptionIdentifier)
  when is_map(Client) ->
    get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, #{}, #{}).

-spec get_access_log_subscription(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_access_log_subscription_errors(), tuple()}.
get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap, []).

-spec get_access_log_subscription(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_access_log_subscription_errors(), tuple()}.
get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the auth policy for the specified service
%% or service network.
-spec get_auth_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, get_auth_policy_errors(), tuple()}.
get_auth_policy(Client, ResourceIdentifier)
  when is_map(Client) ->
    get_auth_policy(Client, ResourceIdentifier, #{}, #{}).

-spec get_auth_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, get_auth_policy_errors(), tuple()}.
get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

-spec get_auth_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, get_auth_policy_errors(), tuple()}.
get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a domain verification.ß
-spec get_domain_verification(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, get_domain_verification_errors(), tuple()}.
get_domain_verification(Client, DomainVerificationIdentifier)
  when is_map(Client) ->
    get_domain_verification(Client, DomainVerificationIdentifier, #{}, #{}).

-spec get_domain_verification(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, get_domain_verification_errors(), tuple()}.
get_domain_verification(Client, DomainVerificationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_verification(Client, DomainVerificationIdentifier, QueryMap, HeadersMap, []).

-spec get_domain_verification(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, get_domain_verification_errors(), tuple()}.
get_domain_verification(Client, DomainVerificationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainverifications/", aws_util:encode_uri(DomainVerificationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified listener for the specified
%% service.
-spec get_listener(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_listener_response(), tuple()} |
    {error, any()} |
    {error, get_listener_errors(), tuple()}.
get_listener(Client, ListenerIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_listener(Client, ListenerIdentifier, ServiceIdentifier, #{}, #{}).

-spec get_listener(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_listener_response(), tuple()} |
    {error, any()} |
    {error, get_listener_errors(), tuple()}.
get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec get_listener(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_listener_response(), tuple()} |
    {error, any()} |
    {error, get_listener_errors(), tuple()}.
get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified resource configuration.
-spec get_resource_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_configuration_errors(), tuple()}.
get_resource_configuration(Client, ResourceConfigurationIdentifier)
  when is_map(Client) ->
    get_resource_configuration(Client, ResourceConfigurationIdentifier, #{}, #{}).

-spec get_resource_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_configuration_errors(), tuple()}.
get_resource_configuration(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_configuration(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap, []).

-spec get_resource_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_configuration_errors(), tuple()}.
get_resource_configuration(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourceconfigurations/", aws_util:encode_uri(ResourceConfigurationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified resource gateway.
-spec get_resource_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_resource_gateway_errors(), tuple()}.
get_resource_gateway(Client, ResourceGatewayIdentifier)
  when is_map(Client) ->
    get_resource_gateway(Client, ResourceGatewayIdentifier, #{}, #{}).

-spec get_resource_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_resource_gateway_errors(), tuple()}.
get_resource_gateway(Client, ResourceGatewayIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_gateway(Client, ResourceGatewayIdentifier, QueryMap, HeadersMap, []).

-spec get_resource_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_resource_gateway_errors(), tuple()}.
get_resource_gateway(Client, ResourceGatewayIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcegateways/", aws_util:encode_uri(ResourceGatewayIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified resource policy.
%%
%% The resource policy is an IAM policy created on behalf of the resource
%% owner when they share a resource.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified listener rules.
%%
%% You can also retrieve information about the default listener rule. For
%% more information, see Listener rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the Amazon VPC Lattice User Guide.
-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, #{}, #{}).

-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified service.
-spec get_service(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceIdentifier)
  when is_map(Client) ->
    get_service(Client, ServiceIdentifier, #{}, #{}).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified service network.
-spec get_service_network(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_network_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_errors(), tuple()}.
get_service_network(Client, ServiceNetworkIdentifier)
  when is_map(Client) ->
    get_service_network(Client, ServiceNetworkIdentifier, #{}, #{}).

-spec get_service_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_network_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_errors(), tuple()}.
get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, []).

-spec get_service_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_network_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_errors(), tuple()}.
get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified association between a
%% service network and a resource configuration.
-spec get_service_network_resource_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_resource_association_errors(), tuple()}.
get_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier)
  when is_map(Client) ->
    get_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, #{}, #{}).

-spec get_service_network_resource_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_resource_association_errors(), tuple()}.
get_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, QueryMap, HeadersMap, []).

-spec get_service_network_resource_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_network_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_resource_association_errors(), tuple()}.
get_service_network_resource_association(Client, ServiceNetworkResourceAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkresourceassociations/", aws_util:encode_uri(ServiceNetworkResourceAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified association between a
%% service network and a service.
-spec get_service_network_service_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_service_association_errors(), tuple()}.
get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier)
  when is_map(Client) ->
    get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, #{}, #{}).

-spec get_service_network_service_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_service_association_errors(), tuple()}.
get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap, []).

-spec get_service_network_service_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_network_service_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_service_association_errors(), tuple()}.
get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkserviceassociations/", aws_util:encode_uri(ServiceNetworkServiceAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified association between a
%% service network and a VPC.
-spec get_service_network_vpc_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_vpc_association_errors(), tuple()}.
get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier)
  when is_map(Client) ->
    get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, #{}, #{}).

-spec get_service_network_vpc_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_vpc_association_errors(), tuple()}.
get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap, []).

-spec get_service_network_vpc_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, get_service_network_vpc_association_errors(), tuple()}.
get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified target group.
-spec get_target_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_target_group_response(), tuple()} |
    {error, any()} |
    {error, get_target_group_errors(), tuple()}.
get_target_group(Client, TargetGroupIdentifier)
  when is_map(Client) ->
    get_target_group(Client, TargetGroupIdentifier, #{}, #{}).

-spec get_target_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_target_group_response(), tuple()} |
    {error, any()} |
    {error, get_target_group_errors(), tuple()}.
get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap, []).

-spec get_target_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_target_group_response(), tuple()} |
    {error, any()} |
    {error, get_target_group_errors(), tuple()}.
get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the access log subscriptions for the specified service network
%% or service.
-spec list_access_log_subscriptions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_log_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_access_log_subscriptions_errors(), tuple()}.
list_access_log_subscriptions(Client, ResourceIdentifier)
  when is_map(Client) ->
    list_access_log_subscriptions(Client, ResourceIdentifier, #{}, #{}).

-spec list_access_log_subscriptions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_log_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_access_log_subscriptions_errors(), tuple()}.
list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

-spec list_access_log_subscriptions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_log_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_access_log_subscriptions_errors(), tuple()}.
list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accesslogsubscriptions"],
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
        {<<"resourceIdentifier">>, ResourceIdentifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the domain verifications.
-spec list_domain_verifications(aws_client:aws_client()) ->
    {ok, list_domain_verifications_response(), tuple()} |
    {error, any()} |
    {error, list_domain_verifications_errors(), tuple()}.
list_domain_verifications(Client)
  when is_map(Client) ->
    list_domain_verifications(Client, #{}, #{}).

-spec list_domain_verifications(aws_client:aws_client(), map(), map()) ->
    {ok, list_domain_verifications_response(), tuple()} |
    {error, any()} |
    {error, list_domain_verifications_errors(), tuple()}.
list_domain_verifications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_verifications(Client, QueryMap, HeadersMap, []).

-spec list_domain_verifications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_verifications_response(), tuple()} |
    {error, any()} |
    {error, list_domain_verifications_errors(), tuple()}.
list_domain_verifications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainverifications"],
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

%% @doc Lists the listeners for the specified service.
-spec list_listeners(aws_client:aws_client(), binary() | list()) ->
    {ok, list_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_listeners_errors(), tuple()}.
list_listeners(Client, ServiceIdentifier)
  when is_map(Client) ->
    list_listeners(Client, ServiceIdentifier, #{}, #{}).

-spec list_listeners(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_listeners_errors(), tuple()}.
list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec list_listeners(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_listeners_errors(), tuple()}.
list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners"],
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

%% @doc Lists the resource configurations owned by or shared with this
%% account.
-spec list_resource_configurations(aws_client:aws_client()) ->
    {ok, list_resource_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_configurations_errors(), tuple()}.
list_resource_configurations(Client)
  when is_map(Client) ->
    list_resource_configurations(Client, #{}, #{}).

-spec list_resource_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_resource_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_configurations_errors(), tuple()}.
list_resource_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_configurations(Client, QueryMap, HeadersMap, []).

-spec list_resource_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_configurations_errors(), tuple()}.
list_resource_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourceconfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainVerificationIdentifier">>, maps:get(<<"domainVerificationIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceConfigurationGroupIdentifier">>, maps:get(<<"resourceConfigurationGroupIdentifier">>, QueryMap, undefined)},
        {<<"resourceGatewayIdentifier">>, maps:get(<<"resourceGatewayIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the associations for the specified VPC endpoint.
-spec list_resource_endpoint_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_endpoint_associations_errors(), tuple()}.
list_resource_endpoint_associations(Client, ResourceConfigurationIdentifier)
  when is_map(Client) ->
    list_resource_endpoint_associations(Client, ResourceConfigurationIdentifier, #{}, #{}).

-spec list_resource_endpoint_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_endpoint_associations_errors(), tuple()}.
list_resource_endpoint_associations(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_endpoint_associations(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap, []).

-spec list_resource_endpoint_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_endpoint_associations_errors(), tuple()}.
list_resource_endpoint_associations(Client, ResourceConfigurationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourceendpointassociations"],
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
        {<<"resourceConfigurationIdentifier">>, ResourceConfigurationIdentifier},
        {<<"resourceEndpointAssociationIdentifier">>, maps:get(<<"resourceEndpointAssociationIdentifier">>, QueryMap, undefined)},
        {<<"vpcEndpointId">>, maps:get(<<"vpcEndpointId">>, QueryMap, undefined)},
        {<<"vpcEndpointOwner">>, maps:get(<<"vpcEndpointOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource gateways that you own or that were shared with
%% you.
-spec list_resource_gateways(aws_client:aws_client()) ->
    {ok, list_resource_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_resource_gateways_errors(), tuple()}.
list_resource_gateways(Client)
  when is_map(Client) ->
    list_resource_gateways(Client, #{}, #{}).

-spec list_resource_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_resource_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_resource_gateways_errors(), tuple()}.
list_resource_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_gateways(Client, QueryMap, HeadersMap, []).

-spec list_resource_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_resource_gateways_errors(), tuple()}.
list_resource_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcegateways"],
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

%% @doc Lists the rules for the specified listener.
-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, ListenerIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    list_rules(Client, ListenerIdentifier, ServiceIdentifier, #{}, #{}).

-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
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

%% @doc Lists the associations between a service network and a resource
%% configuration.
-spec list_service_network_resource_associations(aws_client:aws_client()) ->
    {ok, list_service_network_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_resource_associations_errors(), tuple()}.
list_service_network_resource_associations(Client)
  when is_map(Client) ->
    list_service_network_resource_associations(Client, #{}, #{}).

-spec list_service_network_resource_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_service_network_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_resource_associations_errors(), tuple()}.
list_service_network_resource_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_resource_associations(Client, QueryMap, HeadersMap, []).

-spec list_service_network_resource_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_service_network_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_resource_associations_errors(), tuple()}.
list_service_network_resource_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkresourceassociations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeChildren">>, maps:get(<<"includeChildren">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceConfigurationIdentifier">>, maps:get(<<"resourceConfigurationIdentifier">>, QueryMap, undefined)},
        {<<"serviceNetworkIdentifier">>, maps:get(<<"serviceNetworkIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the associations between a service network and a service.
%%
%% You can filter the list either by service or service network. You must
%% provide either the service network identifier or the service identifier.
%%
%% Every association in Amazon VPC Lattice has a unique Amazon Resource Name
%% (ARN), such as when a service network is associated with a VPC or when a
%% service is associated with a service network. If the association is for a
%% resource is shared with another account, the association includes the
%% local account ID as the prefix in the ARN.
-spec list_service_network_service_associations(aws_client:aws_client()) ->
    {ok, list_service_network_service_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_service_associations_errors(), tuple()}.
list_service_network_service_associations(Client)
  when is_map(Client) ->
    list_service_network_service_associations(Client, #{}, #{}).

-spec list_service_network_service_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_service_network_service_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_service_associations_errors(), tuple()}.
list_service_network_service_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_service_associations(Client, QueryMap, HeadersMap, []).

-spec list_service_network_service_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_service_network_service_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_service_associations_errors(), tuple()}.
list_service_network_service_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkserviceassociations"],
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
        {<<"serviceIdentifier">>, maps:get(<<"serviceIdentifier">>, QueryMap, undefined)},
        {<<"serviceNetworkIdentifier">>, maps:get(<<"serviceNetworkIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the associations between a service network and a VPC.
%%
%% You can filter the list either by VPC or service network. You must provide
%% either the ID of the service network identifier or the ID of the VPC.
-spec list_service_network_vpc_associations(aws_client:aws_client()) ->
    {ok, list_service_network_vpc_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_associations_errors(), tuple()}.
list_service_network_vpc_associations(Client)
  when is_map(Client) ->
    list_service_network_vpc_associations(Client, #{}, #{}).

-spec list_service_network_vpc_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_service_network_vpc_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_associations_errors(), tuple()}.
list_service_network_vpc_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_vpc_associations(Client, QueryMap, HeadersMap, []).

-spec list_service_network_vpc_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_service_network_vpc_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_associations_errors(), tuple()}.
list_service_network_vpc_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkvpcassociations"],
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
        {<<"serviceNetworkIdentifier">>, maps:get(<<"serviceNetworkIdentifier">>, QueryMap, undefined)},
        {<<"vpcIdentifier">>, maps:get(<<"vpcIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the associations between a service network and a VPC endpoint.
-spec list_service_network_vpc_endpoint_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_network_vpc_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_endpoint_associations_errors(), tuple()}.
list_service_network_vpc_endpoint_associations(Client, ServiceNetworkIdentifier)
  when is_map(Client) ->
    list_service_network_vpc_endpoint_associations(Client, ServiceNetworkIdentifier, #{}, #{}).

-spec list_service_network_vpc_endpoint_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_network_vpc_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_endpoint_associations_errors(), tuple()}.
list_service_network_vpc_endpoint_associations(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_vpc_endpoint_associations(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, []).

-spec list_service_network_vpc_endpoint_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_network_vpc_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_service_network_vpc_endpoint_associations_errors(), tuple()}.
list_service_network_vpc_endpoint_associations(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkvpcendpointassociations"],
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
        {<<"serviceNetworkIdentifier">>, ServiceNetworkIdentifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service networks owned by or shared with this account.
%%
%% The account ID in the ARN shows which account owns the service network.
-spec list_service_networks(aws_client:aws_client()) ->
    {ok, list_service_networks_response(), tuple()} |
    {error, any()} |
    {error, list_service_networks_errors(), tuple()}.
list_service_networks(Client)
  when is_map(Client) ->
    list_service_networks(Client, #{}, #{}).

-spec list_service_networks(aws_client:aws_client(), map(), map()) ->
    {ok, list_service_networks_response(), tuple()} |
    {error, any()} |
    {error, list_service_networks_errors(), tuple()}.
list_service_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_networks(Client, QueryMap, HeadersMap, []).

-spec list_service_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_service_networks_response(), tuple()} |
    {error, any()} |
    {error, list_service_networks_errors(), tuple()}.
list_service_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworks"],
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

%% @doc Lists the services owned by the caller account or shared with the
%% caller account.
-spec list_services(aws_client:aws_client()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client)
  when is_map(Client) ->
    list_services(Client, #{}, #{}).

-spec list_services(aws_client:aws_client(), map(), map()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, QueryMap, HeadersMap, []).

-spec list_services(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services"],
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

%% @doc Lists the tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your target groups.
%%
%% You can narrow your search by using the filters below in your request.
-spec list_target_groups(aws_client:aws_client()) ->
    {ok, list_target_groups_response(), tuple()} |
    {error, any()} |
    {error, list_target_groups_errors(), tuple()}.
list_target_groups(Client)
  when is_map(Client) ->
    list_target_groups(Client, #{}, #{}).

-spec list_target_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_target_groups_response(), tuple()} |
    {error, any()} |
    {error, list_target_groups_errors(), tuple()}.
list_target_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_target_groups(Client, QueryMap, HeadersMap, []).

-spec list_target_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_target_groups_response(), tuple()} |
    {error, any()} |
    {error, list_target_groups_errors(), tuple()}.
list_target_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetgroups"],
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
        {<<"targetGroupType">>, maps:get(<<"targetGroupType">>, QueryMap, undefined)},
        {<<"vpcIdentifier">>, maps:get(<<"vpcIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the targets for the target group.
%%
%% By default, all targets are included. You can use this API to check the
%% health status of targets. You can also ﬁlter the results by target.
-spec list_targets(aws_client:aws_client(), binary() | list(), list_targets_request()) ->
    {ok, list_targets_response(), tuple()} |
    {error, any()} |
    {error, list_targets_errors(), tuple()}.
list_targets(Client, TargetGroupIdentifier, Input) ->
    list_targets(Client, TargetGroupIdentifier, Input, []).

-spec list_targets(aws_client:aws_client(), binary() | list(), list_targets_request(), proplists:proplist()) ->
    {ok, list_targets_response(), tuple()} |
    {error, any()} |
    {error, list_targets_errors(), tuple()}.
list_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/listtargets"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates the auth policy.
%%
%% The policy string in JSON must not contain newlines or blank lines.
%%
%% For more information, see Auth policies:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/auth-policies.html in
%% the Amazon VPC Lattice User Guide.
-spec put_auth_policy(aws_client:aws_client(), binary() | list(), put_auth_policy_request()) ->
    {ok, put_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, put_auth_policy_errors(), tuple()}.
put_auth_policy(Client, ResourceIdentifier, Input) ->
    put_auth_policy(Client, ResourceIdentifier, Input, []).

-spec put_auth_policy(aws_client:aws_client(), binary() | list(), put_auth_policy_request(), proplists:proplist()) ->
    {ok, put_auth_policy_response(), tuple()} |
    {error, any()} |
    {error, put_auth_policy_errors(), tuple()}.
put_auth_policy(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Attaches a resource-based permission policy to a service or service
%% network.
%%
%% The policy must contain the same actions and condition statements as the
%% Amazon Web Services Resource Access Manager permission for sharing
%% services and service networks.
-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, ResourceArn, Input) ->
    put_resource_policy(Client, ResourceArn, Input, []).

-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Registers the targets with the target group.
%%
%% If it's a Lambda target, you can only have one target in a target
%% group.
-spec register_targets(aws_client:aws_client(), binary() | list(), register_targets_request()) ->
    {ok, register_targets_response(), tuple()} |
    {error, any()} |
    {error, register_targets_errors(), tuple()}.
register_targets(Client, TargetGroupIdentifier, Input) ->
    register_targets(Client, TargetGroupIdentifier, Input, []).

-spec register_targets(aws_client:aws_client(), binary() | list(), register_targets_request(), proplists:proplist()) ->
    {ok, register_targets_response(), tuple()} |
    {error, any()} |
    {error, register_targets_errors(), tuple()}.
register_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/registertargets"],
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

%% @doc Starts the domain verification process for a custom domain name.
-spec start_domain_verification(aws_client:aws_client(), start_domain_verification_request()) ->
    {ok, start_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, start_domain_verification_errors(), tuple()}.
start_domain_verification(Client, Input) ->
    start_domain_verification(Client, Input, []).

-spec start_domain_verification(aws_client:aws_client(), start_domain_verification_request(), proplists:proplist()) ->
    {ok, start_domain_verification_response(), tuple()} |
    {error, any()} |
    {error, start_domain_verification_errors(), tuple()}.
start_domain_verification(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domainverifications"],
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

%% @doc Adds the specified tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes the specified tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates the specified access log subscription.
-spec update_access_log_subscription(aws_client:aws_client(), binary() | list(), update_access_log_subscription_request()) ->
    {ok, update_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_access_log_subscription_errors(), tuple()}.
update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input) ->
    update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input, []).

-spec update_access_log_subscription(aws_client:aws_client(), binary() | list(), update_access_log_subscription_request(), proplists:proplist()) ->
    {ok, update_access_log_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_access_log_subscription_errors(), tuple()}.
update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
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

%% @doc Updates the specified listener for the specified service.
-spec update_listener(aws_client:aws_client(), binary() | list(), binary() | list(), update_listener_request()) ->
    {ok, update_listener_response(), tuple()} |
    {error, any()} |
    {error, update_listener_errors(), tuple()}.
update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input, []).

-spec update_listener(aws_client:aws_client(), binary() | list(), binary() | list(), update_listener_request(), proplists:proplist()) ->
    {ok, update_listener_response(), tuple()} |
    {error, any()} |
    {error, update_listener_errors(), tuple()}.
update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
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

%% @doc Updates the specified resource configuration.
-spec update_resource_configuration(aws_client:aws_client(), binary() | list(), update_resource_configuration_request()) ->
    {ok, update_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_resource_configuration_errors(), tuple()}.
update_resource_configuration(Client, ResourceConfigurationIdentifier, Input) ->
    update_resource_configuration(Client, ResourceConfigurationIdentifier, Input, []).

-spec update_resource_configuration(aws_client:aws_client(), binary() | list(), update_resource_configuration_request(), proplists:proplist()) ->
    {ok, update_resource_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_resource_configuration_errors(), tuple()}.
update_resource_configuration(Client, ResourceConfigurationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/resourceconfigurations/", aws_util:encode_uri(ResourceConfigurationIdentifier), ""],
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

%% @doc Updates the specified resource gateway.
-spec update_resource_gateway(aws_client:aws_client(), binary() | list(), update_resource_gateway_request()) ->
    {ok, update_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_resource_gateway_errors(), tuple()}.
update_resource_gateway(Client, ResourceGatewayIdentifier, Input) ->
    update_resource_gateway(Client, ResourceGatewayIdentifier, Input, []).

-spec update_resource_gateway(aws_client:aws_client(), binary() | list(), update_resource_gateway_request(), proplists:proplist()) ->
    {ok, update_resource_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_resource_gateway_errors(), tuple()}.
update_resource_gateway(Client, ResourceGatewayIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/resourcegateways/", aws_util:encode_uri(ResourceGatewayIdentifier), ""],
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

%% @doc Updates a specified rule for the listener.
%%
%% You can't modify a default listener rule. To modify a default listener
%% rule, use `UpdateListener'.
-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_rule_request()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input) ->
    update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input, []).

-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_rule_request(), proplists:proplist()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
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

%% @doc Updates the specified service.
-spec update_service(aws_client:aws_client(), binary() | list(), update_service_request()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, ServiceIdentifier, Input) ->
    update_service(Client, ServiceIdentifier, Input, []).

-spec update_service(aws_client:aws_client(), binary() | list(), update_service_request(), proplists:proplist()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
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

%% @doc Updates the specified service network.
-spec update_service_network(aws_client:aws_client(), binary() | list(), update_service_network_request()) ->
    {ok, update_service_network_response(), tuple()} |
    {error, any()} |
    {error, update_service_network_errors(), tuple()}.
update_service_network(Client, ServiceNetworkIdentifier, Input) ->
    update_service_network(Client, ServiceNetworkIdentifier, Input, []).

-spec update_service_network(aws_client:aws_client(), binary() | list(), update_service_network_request(), proplists:proplist()) ->
    {ok, update_service_network_response(), tuple()} |
    {error, any()} |
    {error, update_service_network_errors(), tuple()}.
update_service_network(Client, ServiceNetworkIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
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

%% @doc Updates the service network and VPC association.
%%
%% If you add a security group to the service network and VPC association,
%% the association must continue to have at least one security group. You can
%% add or edit security groups at any time. However, to remove all security
%% groups, you must first delete the association and then recreate it without
%% security groups.
-spec update_service_network_vpc_association(aws_client:aws_client(), binary() | list(), update_service_network_vpc_association_request()) ->
    {ok, update_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, update_service_network_vpc_association_errors(), tuple()}.
update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input) ->
    update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input, []).

-spec update_service_network_vpc_association(aws_client:aws_client(), binary() | list(), update_service_network_vpc_association_request(), proplists:proplist()) ->
    {ok, update_service_network_vpc_association_response(), tuple()} |
    {error, any()} |
    {error, update_service_network_vpc_association_errors(), tuple()}.
update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
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

%% @doc Updates the specified target group.
-spec update_target_group(aws_client:aws_client(), binary() | list(), update_target_group_request()) ->
    {ok, update_target_group_response(), tuple()} |
    {error, any()} |
    {error, update_target_group_errors(), tuple()}.
update_target_group(Client, TargetGroupIdentifier, Input) ->
    update_target_group(Client, TargetGroupIdentifier, Input, []).

-spec update_target_group(aws_client:aws_client(), binary() | list(), update_target_group_request(), proplists:proplist()) ->
    {ok, update_target_group_response(), tuple()} |
    {error, any()} |
    {error, update_target_group_errors(), tuple()}.
update_target_group(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
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
    Client1 = Client#{service => <<"vpc-lattice">>},
    Host = build_host(<<"vpc-lattice">>, Client1),
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
