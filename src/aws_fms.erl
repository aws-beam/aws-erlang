%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Firewall Manager API Reference.
%%
%% This guide is for
%% developers who need detailed information about the Firewall Manager API
%% actions, data
%% types, and errors. For detailed information about Firewall Manager
%% features, see the
%% Firewall Manager Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html.
%%
%% Some API actions require explicit resource permissions. For information,
%% see the developer guide topic
%% Service roles for Firewall Manager:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service.
-module(aws_fms).

-export([associate_admin_account/2,
         associate_admin_account/3,
         associate_third_party_firewall/2,
         associate_third_party_firewall/3,
         batch_associate_resource/2,
         batch_associate_resource/3,
         batch_disassociate_resource/2,
         batch_disassociate_resource/3,
         delete_apps_list/2,
         delete_apps_list/3,
         delete_notification_channel/2,
         delete_notification_channel/3,
         delete_policy/2,
         delete_policy/3,
         delete_protocols_list/2,
         delete_protocols_list/3,
         delete_resource_set/2,
         delete_resource_set/3,
         disassociate_admin_account/2,
         disassociate_admin_account/3,
         disassociate_third_party_firewall/2,
         disassociate_third_party_firewall/3,
         get_admin_account/2,
         get_admin_account/3,
         get_admin_scope/2,
         get_admin_scope/3,
         get_apps_list/2,
         get_apps_list/3,
         get_compliance_detail/2,
         get_compliance_detail/3,
         get_notification_channel/2,
         get_notification_channel/3,
         get_policy/2,
         get_policy/3,
         get_protection_status/2,
         get_protection_status/3,
         get_protocols_list/2,
         get_protocols_list/3,
         get_resource_set/2,
         get_resource_set/3,
         get_third_party_firewall_association_status/2,
         get_third_party_firewall_association_status/3,
         get_violation_details/2,
         get_violation_details/3,
         list_admin_accounts_for_organization/2,
         list_admin_accounts_for_organization/3,
         list_admins_managing_account/2,
         list_admins_managing_account/3,
         list_apps_lists/2,
         list_apps_lists/3,
         list_compliance_status/2,
         list_compliance_status/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_member_accounts/2,
         list_member_accounts/3,
         list_policies/2,
         list_policies/3,
         list_protocols_lists/2,
         list_protocols_lists/3,
         list_resource_set_resources/2,
         list_resource_set_resources/3,
         list_resource_sets/2,
         list_resource_sets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_third_party_firewall_firewall_policies/2,
         list_third_party_firewall_firewall_policies/3,
         put_admin_account/2,
         put_admin_account/3,
         put_apps_list/2,
         put_apps_list/3,
         put_notification_channel/2,
         put_notification_channel/3,
         put_policy/2,
         put_policy/3,
         put_protocols_list/2,
         put_protocols_list/3,
         put_resource_set/2,
         put_resource_set/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% app() :: #{
%%   <<"AppName">> => string(),
%%   <<"Port">> => float(),
%%   <<"Protocol">> => string()
%% }
-type app() :: #{binary() => any()}.

%% Example:
%% route_has_out_of_scope_endpoint_violation() :: #{
%%   <<"CurrentFirewallSubnetRouteTable">> => string(),
%%   <<"CurrentInternetGatewayRouteTable">> => string(),
%%   <<"FirewallSubnetId">> => string(),
%%   <<"FirewallSubnetRoutes">> => list(route()),
%%   <<"InternetGatewayId">> => string(),
%%   <<"InternetGatewayRoutes">> => list(route()),
%%   <<"RouteTableId">> => string(),
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"SubnetAvailabilityZoneId">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"ViolatingRoutes">> => list(route()),
%%   <<"VpcId">> => string()
%% }
-type route_has_out_of_scope_endpoint_violation() :: #{binary() => any()}.

%% Example:
%% network_acl_entry() :: #{
%%   <<"CidrBlock">> => string(),
%%   <<"Egress">> => boolean(),
%%   <<"IcmpTypeCode">> => network_acl_icmp_type_code(),
%%   <<"Ipv6CidrBlock">> => string(),
%%   <<"PortRange">> => network_acl_port_range(),
%%   <<"Protocol">> => string(),
%%   <<"RuleAction">> => list(any())
%% }
-type network_acl_entry() :: #{binary() => any()}.

%% Example:
%% get_protection_status_response() :: #{
%%   <<"AdminAccountId">> => string(),
%%   <<"Data">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceType">> => list(any())
%% }
-type get_protection_status_response() :: #{binary() => any()}.

%% Example:
%% network_acl_entry_set() :: #{
%%   <<"FirstEntries">> => list(network_acl_entry()),
%%   <<"ForceRemediateForFirstEntries">> => boolean(),
%%   <<"ForceRemediateForLastEntries">> => boolean(),
%%   <<"LastEntries">> => list(network_acl_entry())
%% }
-type network_acl_entry_set() :: #{binary() => any()}.

%% Example:
%% list_member_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_member_accounts_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagList">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_apps_lists_response() :: #{
%%   <<"AppsLists">> => list(apps_list_data_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_apps_lists_response() :: #{binary() => any()}.

%% Example:
%% firewall_subnet_is_out_of_scope_violation() :: #{
%%   <<"FirewallSubnetId">> => string(),
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"SubnetAvailabilityZoneId">> => string(),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type firewall_subnet_is_out_of_scope_violation() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_resource_response() :: #{
%%   <<"FailedItems">> => list(failed_item()),
%%   <<"ResourceSetIdentifier">> => string()
%% }
-type batch_disassociate_resource_response() :: #{binary() => any()}.

%% Example:
%% protocols_list_data_summary() :: #{
%%   <<"ListArn">> => string(),
%%   <<"ListId">> => string(),
%%   <<"ListName">> => string(),
%%   <<"ProtocolsList">> => list(string())
%% }
-type protocols_list_data_summary() :: #{binary() => any()}.

%% Example:
%% batch_associate_resource_request() :: #{
%%   <<"Items">> := list(string()),
%%   <<"ResourceSetIdentifier">> := string()
%% }
-type batch_associate_resource_request() :: #{binary() => any()}.

%% Example:
%% disassociate_admin_account_request() :: #{

%% }
-type disassociate_admin_account_request() :: #{binary() => any()}.

%% Example:
%% security_group_rule_description() :: #{
%%   <<"FromPort">> => float(),
%%   <<"IPV4Range">> => string(),
%%   <<"IPV6Range">> => string(),
%%   <<"PrefixListId">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"ToPort">> => float()
%% }
-type security_group_rule_description() :: #{binary() => any()}.

%% Example:
%% dns_rule_group_limit_exceeded_violation() :: #{
%%   <<"NumberOfRuleGroupsAlreadyAssociated">> => integer(),
%%   <<"ViolationTarget">> => string(),
%%   <<"ViolationTargetDescription">> => string()
%% }
-type dns_rule_group_limit_exceeded_violation() :: #{binary() => any()}.

%% Example:
%% third_party_firewall_missing_expected_route_table_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"CurrentRouteTable">> => string(),
%%   <<"ExpectedRouteTable">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type third_party_firewall_missing_expected_route_table_violation() :: #{binary() => any()}.

%% Example:
%% list_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PolicyList">> => list(policy_summary())
%% }
-type list_policies_response() :: #{binary() => any()}.

%% Example:
%% ec2_create_route_table_action() :: #{
%%   <<"Description">> => string(),
%%   <<"VpcId">> => action_target()
%% }
-type ec2_create_route_table_action() :: #{binary() => any()}.

%% Example:
%% stateful_engine_options() :: #{
%%   <<"RuleOrder">> => list(any()),
%%   <<"StreamExceptionPolicy">> => list(any())
%% }
-type stateful_engine_options() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% invalid_network_acl_entries_violation() :: #{
%%   <<"CurrentAssociatedNetworkAcl">> => string(),
%%   <<"EntryViolations">> => list(entry_violation()),
%%   <<"Subnet">> => string(),
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"Vpc">> => string()
%% }
-type invalid_network_acl_entries_violation() :: #{binary() => any()}.

%% Example:
%% security_group_remediation_action() :: #{
%%   <<"Description">> => string(),
%%   <<"IsDefaultAction">> => boolean(),
%%   <<"RemediationActionType">> => list(any()),
%%   <<"RemediationResult">> => security_group_rule_description()
%% }
-type security_group_remediation_action() :: #{binary() => any()}.

%% Example:
%% stateful_rule_group() :: #{
%%   <<"Override">> => network_firewall_stateful_rule_group_override(),
%%   <<"Priority">> => integer(),
%%   <<"ResourceId">> => string(),
%%   <<"RuleGroupName">> => string()
%% }
-type stateful_rule_group() :: #{binary() => any()}.

%% Example:
%% list_third_party_firewall_firewall_policies_request() :: #{
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string(),
%%   <<"ThirdPartyFirewall">> := list(any())
%% }
-type list_third_party_firewall_firewall_policies_request() :: #{binary() => any()}.

%% Example:
%% list_member_accounts_response() :: #{
%%   <<"MemberAccounts">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_member_accounts_response() :: #{binary() => any()}.

%% Example:
%% list_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_policies_request() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{
%%   <<"PolicyId">> := string()
%% }
-type get_policy_request() :: #{binary() => any()}.

%% Example:
%% list_resource_set_resources_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_set_resources_request() :: #{binary() => any()}.

%% Example:
%% get_compliance_detail_request() :: #{
%%   <<"MemberAccount">> := string(),
%%   <<"PolicyId">> := string()
%% }
-type get_compliance_detail_request() :: #{binary() => any()}.

%% Example:
%% get_notification_channel_request() :: #{

%% }
-type get_notification_channel_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_set_request() :: #{
%%   <<"Identifier">> := string()
%% }
-type delete_resource_set_request() :: #{binary() => any()}.

%% Example:
%% list_resource_set_resources_response() :: #{
%%   <<"Items">> => list(resource()),
%%   <<"NextToken">> => string()
%% }
-type list_resource_set_resources_response() :: #{binary() => any()}.

%% Example:
%% network_firewall_unexpected_gateway_routes_violation() :: #{
%%   <<"GatewayId">> => string(),
%%   <<"RouteTableId">> => string(),
%%   <<"ViolatingRoutes">> => list(route()),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_unexpected_gateway_routes_violation() :: #{binary() => any()}.

%% Example:
%% get_protocols_list_request() :: #{
%%   <<"DefaultList">> => boolean(),
%%   <<"ListId">> := string()
%% }
-type get_protocols_list_request() :: #{binary() => any()}.

%% Example:
%% list_resource_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_sets_request() :: #{binary() => any()}.

%% Example:
%% associate_third_party_firewall_response() :: #{
%%   <<"ThirdPartyFirewallStatus">> => list(any())
%% }
-type associate_third_party_firewall_response() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% list_admins_managing_account_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_admins_managing_account_request() :: #{binary() => any()}.

%% Example:
%% ec2_create_route_action() :: #{
%%   <<"Description">> => string(),
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"DestinationIpv6CidrBlock">> => string(),
%%   <<"DestinationPrefixListId">> => string(),
%%   <<"GatewayId">> => action_target(),
%%   <<"RouteTableId">> => action_target(),
%%   <<"VpcEndpointId">> => action_target()
%% }
-type ec2_create_route_action() :: #{binary() => any()}.

%% Example:
%% network_acl_icmp_type_code() :: #{
%%   <<"Code">> => integer(),
%%   <<"Type">> => integer()
%% }
-type network_acl_icmp_type_code() :: #{binary() => any()}.

%% Example:
%% get_violation_details_request() :: #{
%%   <<"MemberAccount">> := string(),
%%   <<"PolicyId">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := string()
%% }
-type get_violation_details_request() :: #{binary() => any()}.

%% Example:
%% compliance_violator() :: #{
%%   <<"Metadata">> => map(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ViolationReason">> => list(any())
%% }
-type compliance_violator() :: #{binary() => any()}.

%% Example:
%% associate_admin_account_request() :: #{
%%   <<"AdminAccount">> := string()
%% }
-type associate_admin_account_request() :: #{binary() => any()}.

%% Example:
%% network_firewall_invalid_route_configuration_violation() :: #{
%%   <<"ActualFirewallEndpoint">> => string(),
%%   <<"ActualFirewallSubnetId">> => string(),
%%   <<"ActualFirewallSubnetRoutes">> => list(route()),
%%   <<"ActualInternetGatewayRoutes">> => list(route()),
%%   <<"AffectedSubnets">> => list(string()),
%%   <<"CurrentFirewallSubnetRouteTable">> => string(),
%%   <<"CurrentInternetGatewayRouteTable">> => string(),
%%   <<"ExpectedFirewallEndpoint">> => string(),
%%   <<"ExpectedFirewallSubnetId">> => string(),
%%   <<"ExpectedFirewallSubnetRoutes">> => list(expected_route()),
%%   <<"ExpectedInternetGatewayRoutes">> => list(expected_route()),
%%   <<"InternetGatewayId">> => string(),
%%   <<"IsRouteTableUsedInDifferentAZ">> => boolean(),
%%   <<"RouteTableId">> => string(),
%%   <<"ViolatingRoute">> => route(),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_invalid_route_configuration_violation() :: #{binary() => any()}.

%% Example:
%% get_notification_channel_response() :: #{
%%   <<"SnsRoleName">> => string(),
%%   <<"SnsTopicArn">> => string()
%% }
-type get_notification_channel_response() :: #{binary() => any()}.

%% Example:
%% network_firewall_policy_description() :: #{
%%   <<"StatefulDefaultActions">> => list(string()),
%%   <<"StatefulEngineOptions">> => stateful_engine_options(),
%%   <<"StatefulRuleGroups">> => list(stateful_rule_group()),
%%   <<"StatelessCustomActions">> => list(string()),
%%   <<"StatelessDefaultActions">> => list(string()),
%%   <<"StatelessFragmentDefaultActions">> => list(string()),
%%   <<"StatelessRuleGroups">> => list(stateless_rule_group())
%% }
-type network_firewall_policy_description() :: #{binary() => any()}.

%% Example:
%% network_firewall_unexpected_firewall_routes_violation() :: #{
%%   <<"FirewallEndpoint">> => string(),
%%   <<"FirewallSubnetId">> => string(),
%%   <<"RouteTableId">> => string(),
%%   <<"ViolatingRoutes">> => list(route()),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_unexpected_firewall_routes_violation() :: #{binary() => any()}.

%% Example:
%% dns_duplicate_rule_group_violation() :: #{
%%   <<"ViolationTarget">> => string(),
%%   <<"ViolationTargetDescription">> => string()
%% }
-type dns_duplicate_rule_group_violation() :: #{binary() => any()}.

%% Example:
%% violation_detail() :: #{
%%   <<"MemberAccount">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"ResourceDescription">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceTags">> => list(tag()),
%%   <<"ResourceType">> => string(),
%%   <<"ResourceViolations">> => list(resource_violation())
%% }
-type violation_detail() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% network_firewall_missing_subnet_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"TargetViolationReason">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type network_firewall_missing_subnet_violation() :: #{binary() => any()}.

%% Example:
%% list_protocols_lists_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProtocolsLists">> => list(protocols_list_data_summary())
%% }
-type list_protocols_lists_response() :: #{binary() => any()}.

%% Example:
%% get_apps_list_response() :: #{
%%   <<"AppsList">> => apps_list_data(),
%%   <<"AppsListArn">> => string()
%% }
-type get_apps_list_response() :: #{binary() => any()}.

%% Example:
%% get_admin_account_response() :: #{
%%   <<"AdminAccount">> => string(),
%%   <<"RoleStatus">> => list(any())
%% }
-type get_admin_account_response() :: #{binary() => any()}.

%% Example:
%% network_firewall_policy() :: #{
%%   <<"FirewallDeploymentModel">> => list(any())
%% }
-type network_firewall_policy() :: #{binary() => any()}.

%% Example:
%% apps_list_data() :: #{
%%   <<"AppsList">> => list(app()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"ListId">> => string(),
%%   <<"ListName">> => string(),
%%   <<"ListUpdateToken">> => string(),
%%   <<"PreviousAppsList">> => map()
%% }
-type apps_list_data() :: #{binary() => any()}.

%% Example:
%% get_compliance_detail_response() :: #{
%%   <<"PolicyComplianceDetail">> => policy_compliance_detail()
%% }
-type get_compliance_detail_response() :: #{binary() => any()}.

%% Example:
%% put_protocols_list_request() :: #{
%%   <<"ProtocolsList">> := protocols_list_data(),
%%   <<"TagList">> => list(tag())
%% }
-type put_protocols_list_request() :: #{binary() => any()}.

%% Example:
%% delete_network_acl_entries_action() :: #{
%%   <<"Description">> => string(),
%%   <<"FMSCanRemediate">> => boolean(),
%%   <<"NetworkAclEntriesToBeDeleted">> => list(entry_description()),
%%   <<"NetworkAclId">> => action_target()
%% }
-type delete_network_acl_entries_action() :: #{binary() => any()}.

%% Example:
%% associate_third_party_firewall_request() :: #{
%%   <<"ThirdPartyFirewall">> := list(any())
%% }
-type associate_third_party_firewall_request() :: #{binary() => any()}.

%% Example:
%% remediation_action() :: #{
%%   <<"CreateNetworkAclAction">> => create_network_acl_action(),
%%   <<"CreateNetworkAclEntriesAction">> => create_network_acl_entries_action(),
%%   <<"DeleteNetworkAclEntriesAction">> => delete_network_acl_entries_action(),
%%   <<"Description">> => string(),
%%   <<"EC2AssociateRouteTableAction">> => ec2_associate_route_table_action(),
%%   <<"EC2CopyRouteTableAction">> => ec2_copy_route_table_action(),
%%   <<"EC2CreateRouteAction">> => ec2_create_route_action(),
%%   <<"EC2CreateRouteTableAction">> => ec2_create_route_table_action(),
%%   <<"EC2DeleteRouteAction">> => ec2_delete_route_action(),
%%   <<"EC2ReplaceRouteAction">> => ec2_replace_route_action(),
%%   <<"EC2ReplaceRouteTableAssociationAction">> => ec2_replace_route_table_association_action(),
%%   <<"FMSPolicyUpdateFirewallCreationConfigAction">> => f_m_s_policy_update_firewall_creation_config_action(),
%%   <<"ReplaceNetworkAclAssociationAction">> => replace_network_acl_association_action()
%% }
-type remediation_action() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_response() :: #{
%%   <<"Items">> => list(discovered_resource()),
%%   <<"NextToken">> => string()
%% }
-type list_discovered_resources_response() :: #{binary() => any()}.

%% Example:
%% third_party_firewall_firewall_policy() :: #{
%%   <<"FirewallPolicyId">> => string(),
%%   <<"FirewallPolicyName">> => string()
%% }
-type third_party_firewall_firewall_policy() :: #{binary() => any()}.

%% Example:
%% third_party_firewall_policy() :: #{
%%   <<"FirewallDeploymentModel">> => list(any())
%% }
-type third_party_firewall_policy() :: #{binary() => any()}.

%% Example:
%% list_admin_accounts_for_organization_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_admin_accounts_for_organization_request() :: #{binary() => any()}.

%% Example:
%% network_firewall_internet_traffic_not_inspected_violation() :: #{
%%   <<"ActualFirewallSubnetRoutes">> => list(route()),
%%   <<"ActualInternetGatewayRoutes">> => list(route()),
%%   <<"CurrentFirewallSubnetRouteTable">> => string(),
%%   <<"CurrentInternetGatewayRouteTable">> => string(),
%%   <<"ExpectedFirewallEndpoint">> => string(),
%%   <<"ExpectedFirewallSubnetRoutes">> => list(expected_route()),
%%   <<"ExpectedInternetGatewayRoutes">> => list(expected_route()),
%%   <<"FirewallSubnetId">> => string(),
%%   <<"InternetGatewayId">> => string(),
%%   <<"IsRouteTableUsedInDifferentAZ">> => boolean(),
%%   <<"RouteTableId">> => string(),
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"ViolatingRoutes">> => list(route()),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_internet_traffic_not_inspected_violation() :: #{binary() => any()}.

%% Example:
%% replace_network_acl_association_action() :: #{
%%   <<"AssociationId">> => action_target(),
%%   <<"Description">> => string(),
%%   <<"FMSCanRemediate">> => boolean(),
%%   <<"NetworkAclId">> => action_target()
%% }
-type replace_network_acl_association_action() :: #{binary() => any()}.

%% Example:
%% apps_list_data_summary() :: #{
%%   <<"AppsList">> => list(app()),
%%   <<"ListArn">> => string(),
%%   <<"ListId">> => string(),
%%   <<"ListName">> => string()
%% }
-type apps_list_data_summary() :: #{binary() => any()}.

%% Example:
%% network_firewall_stateful_rule_group_override() :: #{
%%   <<"Action">> => list(any())
%% }
-type network_firewall_stateful_rule_group_override() :: #{binary() => any()}.

%% Example:
%% resource_violation() :: #{
%%   <<"AwsEc2InstanceViolation">> => aws_ec2_instance_violation(),
%%   <<"AwsEc2NetworkInterfaceViolation">> => aws_ec2_network_interface_violation(),
%%   <<"AwsVPCSecurityGroupViolation">> => aws_vpc_security_group_violation(),
%%   <<"DnsDuplicateRuleGroupViolation">> => dns_duplicate_rule_group_violation(),
%%   <<"DnsRuleGroupLimitExceededViolation">> => dns_rule_group_limit_exceeded_violation(),
%%   <<"DnsRuleGroupPriorityConflictViolation">> => dns_rule_group_priority_conflict_violation(),
%%   <<"FirewallSubnetIsOutOfScopeViolation">> => firewall_subnet_is_out_of_scope_violation(),
%%   <<"FirewallSubnetMissingVPCEndpointViolation">> => firewall_subnet_missing_vpcendpoint_violation(),
%%   <<"InvalidNetworkAclEntriesViolation">> => invalid_network_acl_entries_violation(),
%%   <<"NetworkFirewallBlackHoleRouteDetectedViolation">> => network_firewall_black_hole_route_detected_violation(),
%%   <<"NetworkFirewallInternetTrafficNotInspectedViolation">> => network_firewall_internet_traffic_not_inspected_violation(),
%%   <<"NetworkFirewallInvalidRouteConfigurationViolation">> => network_firewall_invalid_route_configuration_violation(),
%%   <<"NetworkFirewallMissingExpectedRTViolation">> => network_firewall_missing_expected_r_t_violation(),
%%   <<"NetworkFirewallMissingExpectedRoutesViolation">> => network_firewall_missing_expected_routes_violation(),
%%   <<"NetworkFirewallMissingFirewallViolation">> => network_firewall_missing_firewall_violation(),
%%   <<"NetworkFirewallMissingSubnetViolation">> => network_firewall_missing_subnet_violation(),
%%   <<"NetworkFirewallPolicyModifiedViolation">> => network_firewall_policy_modified_violation(),
%%   <<"NetworkFirewallUnexpectedFirewallRoutesViolation">> => network_firewall_unexpected_firewall_routes_violation(),
%%   <<"NetworkFirewallUnexpectedGatewayRoutesViolation">> => network_firewall_unexpected_gateway_routes_violation(),
%%   <<"PossibleRemediationActions">> => possible_remediation_actions(),
%%   <<"RouteHasOutOfScopeEndpointViolation">> => route_has_out_of_scope_endpoint_violation(),
%%   <<"ThirdPartyFirewallMissingExpectedRouteTableViolation">> => third_party_firewall_missing_expected_route_table_violation(),
%%   <<"ThirdPartyFirewallMissingFirewallViolation">> => third_party_firewall_missing_firewall_violation(),
%%   <<"ThirdPartyFirewallMissingSubnetViolation">> => third_party_firewall_missing_subnet_violation(),
%%   <<"WebACLHasIncompatibleConfigurationViolation">> => web_acl_has_incompatible_configuration_violation(),
%%   <<"WebACLHasOutOfScopeResourcesViolation">> => web_acl_has_out_of_scope_resources_violation()
%% }
-type resource_violation() :: #{binary() => any()}.

%% Example:
%% region_scope() :: #{
%%   <<"AllRegionsEnabled">> => boolean(),
%%   <<"Regions">> => list(string())
%% }
-type region_scope() :: #{binary() => any()}.

%% Example:
%% ec2_associate_route_table_action() :: #{
%%   <<"Description">> => string(),
%%   <<"GatewayId">> => action_target(),
%%   <<"RouteTableId">> => action_target(),
%%   <<"SubnetId">> => action_target()
%% }
-type ec2_associate_route_table_action() :: #{binary() => any()}.

%% Example:
%% remediation_action_with_order() :: #{
%%   <<"Order">> => integer(),
%%   <<"RemediationAction">> => remediation_action()
%% }
-type remediation_action_with_order() :: #{binary() => any()}.

%% Example:
%% entry_description() :: #{
%%   <<"EntryDetail">> => network_acl_entry(),
%%   <<"EntryRuleNumber">> => integer(),
%%   <<"EntryType">> => list(any())
%% }
-type entry_description() :: #{binary() => any()}.

%% Example:
%% dns_rule_group_priority_conflict_violation() :: #{
%%   <<"ConflictingPolicyId">> => string(),
%%   <<"ConflictingPriority">> => integer(),
%%   <<"UnavailablePriorities">> => list(integer()),
%%   <<"ViolationTarget">> => string(),
%%   <<"ViolationTargetDescription">> => string()
%% }
-type dns_rule_group_priority_conflict_violation() :: #{binary() => any()}.

%% Example:
%% get_violation_details_response() :: #{
%%   <<"ViolationDetail">> => violation_detail()
%% }
-type get_violation_details_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% ec2_replace_route_table_association_action() :: #{
%%   <<"AssociationId">> => action_target(),
%%   <<"Description">> => string(),
%%   <<"RouteTableId">> => action_target()
%% }
-type ec2_replace_route_table_association_action() :: #{binary() => any()}.

%% Example:
%% stateless_rule_group() :: #{
%%   <<"Priority">> => integer(),
%%   <<"ResourceId">> => string(),
%%   <<"RuleGroupName">> => string()
%% }
-type stateless_rule_group() :: #{binary() => any()}.

%% Example:
%% list_protocols_lists_request() :: #{
%%   <<"DefaultLists">> => boolean(),
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string()
%% }
-type list_protocols_lists_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% web_acl_has_incompatible_configuration_violation() :: #{
%%   <<"Description">> => string(),
%%   <<"WebACLArn">> => string()
%% }
-type web_acl_has_incompatible_configuration_violation() :: #{binary() => any()}.

%% Example:
%% entry_violation() :: #{
%%   <<"ActualEvaluationOrder">> => string(),
%%   <<"EntriesWithConflicts">> => list(entry_description()),
%%   <<"EntryAtExpectedEvaluationOrder">> => entry_description(),
%%   <<"EntryViolationReasons">> => list(list(any())()),
%%   <<"ExpectedEntry">> => entry_description(),
%%   <<"ExpectedEvaluationOrder">> => string()
%% }
-type entry_violation() :: #{binary() => any()}.

%% Example:
%% partial_match() :: #{
%%   <<"Reference">> => string(),
%%   <<"TargetViolationReasons">> => list(string())
%% }
-type partial_match() :: #{binary() => any()}.

%% Example:
%% possible_remediation_action() :: #{
%%   <<"Description">> => string(),
%%   <<"IsDefaultAction">> => boolean(),
%%   <<"OrderedRemediationActions">> => list(remediation_action_with_order())
%% }
-type possible_remediation_action() :: #{binary() => any()}.

%% Example:
%% network_firewall_policy_modified_violation() :: #{
%%   <<"CurrentPolicyDescription">> => network_firewall_policy_description(),
%%   <<"ExpectedPolicyDescription">> => network_firewall_policy_description(),
%%   <<"ViolationTarget">> => string()
%% }
-type network_firewall_policy_modified_violation() :: #{binary() => any()}.

%% Example:
%% put_policy_response() :: #{
%%   <<"Policy">> => policy(),
%%   <<"PolicyArn">> => string()
%% }
-type put_policy_response() :: #{binary() => any()}.

%% Example:
%% put_apps_list_request() :: #{
%%   <<"AppsList">> := apps_list_data(),
%%   <<"TagList">> => list(tag())
%% }
-type put_apps_list_request() :: #{binary() => any()}.

%% Example:
%% list_admins_managing_account_response() :: #{
%%   <<"AdminAccounts">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_admins_managing_account_response() :: #{binary() => any()}.

%% Example:
%% list_apps_lists_request() :: #{
%%   <<"DefaultLists">> => boolean(),
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string()
%% }
-type list_apps_lists_request() :: #{binary() => any()}.

%% Example:
%% get_resource_set_request() :: #{
%%   <<"Identifier">> := string()
%% }
-type get_resource_set_request() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MemberAccountIds">> := list(string()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> := string()
%% }
-type list_discovered_resources_request() :: #{binary() => any()}.

%% Example:
%% route() :: #{
%%   <<"Destination">> => string(),
%%   <<"DestinationType">> => list(any()),
%%   <<"Target">> => string(),
%%   <<"TargetType">> => list(any())
%% }
-type route() :: #{binary() => any()}.

%% Example:
%% organizational_unit_scope() :: #{
%%   <<"AllOrganizationalUnitsEnabled">> => boolean(),
%%   <<"ExcludeSpecifiedOrganizationalUnits">> => boolean(),
%%   <<"OrganizationalUnits">> => list(string())
%% }
-type organizational_unit_scope() :: #{binary() => any()}.

%% Example:
%% create_network_acl_entries_action() :: #{
%%   <<"Description">> => string(),
%%   <<"FMSCanRemediate">> => boolean(),
%%   <<"NetworkAclEntriesToBeCreated">> => list(entry_description()),
%%   <<"NetworkAclId">> => action_target()
%% }
-type create_network_acl_entries_action() :: #{binary() => any()}.

%% Example:
%% list_compliance_status_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyId">> := string()
%% }
-type list_compliance_status_request() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_resource_request() :: #{
%%   <<"Items">> := list(string()),
%%   <<"ResourceSetIdentifier">> := string()
%% }
-type batch_disassociate_resource_request() :: #{binary() => any()}.

%% Example:
%% admin_scope() :: #{
%%   <<"AccountScope">> => account_scope(),
%%   <<"OrganizationalUnitScope">> => organizational_unit_scope(),
%%   <<"PolicyTypeScope">> => policy_type_scope(),
%%   <<"RegionScope">> => region_scope()
%% }
-type admin_scope() :: #{binary() => any()}.

%% Example:
%% action_target() :: #{
%%   <<"Description">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type action_target() :: #{binary() => any()}.

%% Example:
%% create_network_acl_action() :: #{
%%   <<"Description">> => string(),
%%   <<"FMSCanRemediate">> => boolean(),
%%   <<"Vpc">> => action_target()
%% }
-type create_network_acl_action() :: #{binary() => any()}.

%% Example:
%% possible_remediation_actions() :: #{
%%   <<"Actions">> => list(possible_remediation_action()),
%%   <<"Description">> => string()
%% }
-type possible_remediation_actions() :: #{binary() => any()}.

%% Example:
%% policy_compliance_status() :: #{
%%   <<"EvaluationResults">> => list(evaluation_result()),
%%   <<"IssueInfoMap">> => map(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"MemberAccount">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyOwner">> => string()
%% }
-type policy_compliance_status() :: #{binary() => any()}.

%% Example:
%% put_notification_channel_request() :: #{
%%   <<"SnsRoleName">> := string(),
%%   <<"SnsTopicArn">> := string()
%% }
-type put_notification_channel_request() :: #{binary() => any()}.

%% Example:
%% get_protection_status_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"MemberAccountId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyId">> := string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_protection_status_request() :: #{binary() => any()}.

%% Example:
%% f_m_s_policy_update_firewall_creation_config_action() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallCreationConfig">> => string()
%% }
-type f_m_s_policy_update_firewall_creation_config_action() :: #{binary() => any()}.

%% Example:
%% get_policy_response() :: #{
%%   <<"Policy">> => policy(),
%%   <<"PolicyArn">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.

%% Example:
%% aws_ec2_instance_violation() :: #{
%%   <<"AwsEc2NetworkInterfaceViolations">> => list(aws_ec2_network_interface_violation()),
%%   <<"ViolationTarget">> => string()
%% }
-type aws_ec2_instance_violation() :: #{binary() => any()}.

%% Example:
%% ec2_copy_route_table_action() :: #{
%%   <<"Description">> => string(),
%%   <<"RouteTableId">> => action_target(),
%%   <<"VpcId">> => action_target()
%% }
-type ec2_copy_route_table_action() :: #{binary() => any()}.

%% Example:
%% network_firewall_missing_firewall_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"TargetViolationReason">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type network_firewall_missing_firewall_violation() :: #{binary() => any()}.

%% Example:
%% put_admin_account_request() :: #{
%%   <<"AdminAccount">> := string(),
%%   <<"AdminScope">> => admin_scope()
%% }
-type put_admin_account_request() :: #{binary() => any()}.

%% Example:
%% get_resource_set_response() :: #{
%%   <<"ResourceSet">> => resource_set(),
%%   <<"ResourceSetArn">> => string()
%% }
-type get_resource_set_response() :: #{binary() => any()}.

%% Example:
%% list_resource_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceSets">> => list(resource_set_summary())
%% }
-type list_resource_sets_response() :: #{binary() => any()}.

%% Example:
%% policy_option() :: #{
%%   <<"NetworkAclCommonPolicy">> => network_acl_common_policy(),
%%   <<"NetworkFirewallPolicy">> => network_firewall_policy(),
%%   <<"ThirdPartyFirewallPolicy">> => third_party_firewall_policy()
%% }
-type policy_option() :: #{binary() => any()}.

%% Example:
%% get_admin_scope_request() :: #{
%%   <<"AdminAccount">> := string()
%% }
-type get_admin_scope_request() :: #{binary() => any()}.

%% Example:
%% delete_policy_request() :: #{
%%   <<"DeleteAllPolicyResources">> => boolean(),
%%   <<"PolicyId">> := string()
%% }
-type delete_policy_request() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% invalid_type_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_type_exception() :: #{binary() => any()}.

%% Example:
%% discovered_resource() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"URI">> => string()
%% }
-type discovered_resource() :: #{binary() => any()}.

%% Example:
%% policy() :: #{
%%   <<"DeleteUnusedFMManagedResources">> => boolean(),
%%   <<"ExcludeMap">> => map(),
%%   <<"ExcludeResourceTags">> => boolean(),
%%   <<"IncludeMap">> => map(),
%%   <<"PolicyDescription">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyStatus">> => list(any()),
%%   <<"PolicyUpdateToken">> => string(),
%%   <<"RemediationEnabled">> => boolean(),
%%   <<"ResourceSetIds">> => list(string()),
%%   <<"ResourceTagLogicalOperator">> => list(any()),
%%   <<"ResourceTags">> => list(resource_tag()),
%%   <<"ResourceType">> => string(),
%%   <<"ResourceTypeList">> => list(string()),
%%   <<"SecurityServicePolicyData">> => security_service_policy_data()
%% }
-type policy() :: #{binary() => any()}.

%% Example:
%% aws_vpc_security_group_violation() :: #{
%%   <<"PartialMatches">> => list(partial_match()),
%%   <<"PossibleSecurityGroupRemediationActions">> => list(security_group_remediation_action()),
%%   <<"ViolationTarget">> => string(),
%%   <<"ViolationTargetDescription">> => string()
%% }
-type aws_vpc_security_group_violation() :: #{binary() => any()}.

%% Example:
%% list_third_party_firewall_firewall_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ThirdPartyFirewallFirewallPolicies">> => list(third_party_firewall_firewall_policy())
%% }
-type list_third_party_firewall_firewall_policies_response() :: #{binary() => any()}.

%% Example:
%% put_resource_set_response() :: #{
%%   <<"ResourceSet">> => resource_set(),
%%   <<"ResourceSetArn">> => string()
%% }
-type put_resource_set_response() :: #{binary() => any()}.

%% Example:
%% network_acl_port_range() :: #{
%%   <<"From">> => integer(),
%%   <<"To">> => integer()
%% }
-type network_acl_port_range() :: #{binary() => any()}.

%% Example:
%% resource_set() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceSetStatus">> => list(any()),
%%   <<"ResourceTypeList">> => list(string()),
%%   <<"UpdateToken">> => string()
%% }
-type resource_set() :: #{binary() => any()}.

%% Example:
%% ec2_delete_route_action() :: #{
%%   <<"Description">> => string(),
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"DestinationIpv6CidrBlock">> => string(),
%%   <<"DestinationPrefixListId">> => string(),
%%   <<"RouteTableId">> => action_target()
%% }
-type ec2_delete_route_action() :: #{binary() => any()}.

%% Example:
%% protocols_list_data() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"ListId">> => string(),
%%   <<"ListName">> => string(),
%%   <<"ListUpdateToken">> => string(),
%%   <<"PreviousProtocolsList">> => map(),
%%   <<"ProtocolsList">> => list(string())
%% }
-type protocols_list_data() :: #{binary() => any()}.

%% Example:
%% network_firewall_black_hole_route_detected_violation() :: #{
%%   <<"RouteTableId">> => string(),
%%   <<"ViolatingRoutes">> => list(route()),
%%   <<"ViolationTarget">> => string(),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_black_hole_route_detected_violation() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% resource_set_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceSetStatus">> => list(any())
%% }
-type resource_set_summary() :: #{binary() => any()}.

%% Example:
%% get_apps_list_request() :: #{
%%   <<"DefaultList">> => boolean(),
%%   <<"ListId">> := string()
%% }
-type get_apps_list_request() :: #{binary() => any()}.

%% Example:
%% ec2_replace_route_action() :: #{
%%   <<"Description">> => string(),
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"DestinationIpv6CidrBlock">> => string(),
%%   <<"DestinationPrefixListId">> => string(),
%%   <<"GatewayId">> => action_target(),
%%   <<"RouteTableId">> => action_target()
%% }
-type ec2_replace_route_action() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% expected_route() :: #{
%%   <<"AllowedTargets">> => list(string()),
%%   <<"ContributingSubnets">> => list(string()),
%%   <<"IpV4Cidr">> => string(),
%%   <<"IpV6Cidr">> => string(),
%%   <<"PrefixListId">> => string(),
%%   <<"RouteTableId">> => string()
%% }
-type expected_route() :: #{binary() => any()}.

%% Example:
%% failed_item() :: #{
%%   <<"Reason">> => list(any()),
%%   <<"URI">> => string()
%% }
-type failed_item() :: #{binary() => any()}.

%% Example:
%% firewall_subnet_missing_vpcendpoint_violation() :: #{
%%   <<"FirewallSubnetId">> => string(),
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"SubnetAvailabilityZoneId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type firewall_subnet_missing_vpcendpoint_violation() :: #{binary() => any()}.

%% Example:
%% web_acl_has_out_of_scope_resources_violation() :: #{
%%   <<"OutOfScopeResourceList">> => list(string()),
%%   <<"WebACLArn">> => string()
%% }
-type web_acl_has_out_of_scope_resources_violation() :: #{binary() => any()}.

%% Example:
%% policy_compliance_detail() :: #{
%%   <<"EvaluationLimitExceeded">> => boolean(),
%%   <<"ExpiredAt">> => non_neg_integer(),
%%   <<"IssueInfoMap">> => map(),
%%   <<"MemberAccount">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyOwner">> => string(),
%%   <<"Violators">> => list(compliance_violator())
%% }
-type policy_compliance_detail() :: #{binary() => any()}.

%% Example:
%% get_third_party_firewall_association_status_response() :: #{
%%   <<"MarketplaceOnboardingStatus">> => list(any()),
%%   <<"ThirdPartyFirewallStatus">> => list(any())
%% }
-type get_third_party_firewall_association_status_response() :: #{binary() => any()}.

%% Example:
%% admin_account_summary() :: #{
%%   <<"AdminAccount">> => string(),
%%   <<"DefaultAdmin">> => boolean(),
%%   <<"Status">> => list(any())
%% }
-type admin_account_summary() :: #{binary() => any()}.

%% Example:
%% delete_apps_list_request() :: #{
%%   <<"ListId">> := string()
%% }
-type delete_apps_list_request() :: #{binary() => any()}.

%% Example:
%% policy_summary() :: #{
%%   <<"DeleteUnusedFMManagedResources">> => boolean(),
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyStatus">> => list(any()),
%%   <<"RemediationEnabled">> => boolean(),
%%   <<"ResourceType">> => string(),
%%   <<"SecurityServiceType">> => list(any())
%% }
-type policy_summary() :: #{binary() => any()}.

%% Example:
%% aws_ec2_network_interface_violation() :: #{
%%   <<"ViolatingSecurityGroups">> => list(string()),
%%   <<"ViolationTarget">> => string()
%% }
-type aws_ec2_network_interface_violation() :: #{binary() => any()}.

%% Example:
%% disassociate_third_party_firewall_response() :: #{
%%   <<"ThirdPartyFirewallStatus">> => list(any())
%% }
-type disassociate_third_party_firewall_response() :: #{binary() => any()}.

%% Example:
%% batch_associate_resource_response() :: #{
%%   <<"FailedItems">> => list(failed_item()),
%%   <<"ResourceSetIdentifier">> => string()
%% }
-type batch_associate_resource_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% network_acl_common_policy() :: #{
%%   <<"NetworkAclEntrySet">> => network_acl_entry_set()
%% }
-type network_acl_common_policy() :: #{binary() => any()}.

%% Example:
%% get_admin_account_request() :: #{

%% }
-type get_admin_account_request() :: #{binary() => any()}.

%% Example:
%% account_scope() :: #{
%%   <<"Accounts">> => list(string()),
%%   <<"AllAccountsEnabled">> => boolean(),
%%   <<"ExcludeSpecifiedAccounts">> => boolean()
%% }
-type account_scope() :: #{binary() => any()}.

%% Example:
%% disassociate_third_party_firewall_request() :: #{
%%   <<"ThirdPartyFirewall">> := list(any())
%% }
-type disassociate_third_party_firewall_request() :: #{binary() => any()}.

%% Example:
%% delete_protocols_list_request() :: #{
%%   <<"ListId">> := string()
%% }
-type delete_protocols_list_request() :: #{binary() => any()}.

%% Example:
%% evaluation_result() :: #{
%%   <<"ComplianceStatus">> => list(any()),
%%   <<"EvaluationLimitExceeded">> => boolean(),
%%   <<"ViolatorCount">> => float()
%% }
-type evaluation_result() :: #{binary() => any()}.

%% Example:
%% put_policy_request() :: #{
%%   <<"Policy">> := policy(),
%%   <<"TagList">> => list(tag())
%% }
-type put_policy_request() :: #{binary() => any()}.

%% Example:
%% security_service_policy_data() :: #{
%%   <<"ManagedServiceData">> => string(),
%%   <<"PolicyOption">> => policy_option(),
%%   <<"Type">> => list(any())
%% }
-type security_service_policy_data() :: #{binary() => any()}.

%% Example:
%% put_resource_set_request() :: #{
%%   <<"ResourceSet">> := resource_set(),
%%   <<"TagList">> => list(tag())
%% }
-type put_resource_set_request() :: #{binary() => any()}.

%% Example:
%% put_protocols_list_response() :: #{
%%   <<"ProtocolsList">> => protocols_list_data(),
%%   <<"ProtocolsListArn">> => string()
%% }
-type put_protocols_list_response() :: #{binary() => any()}.

%% Example:
%% get_admin_scope_response() :: #{
%%   <<"AdminScope">> => admin_scope(),
%%   <<"Status">> => list(any())
%% }
-type get_admin_scope_response() :: #{binary() => any()}.

%% Example:
%% network_firewall_missing_expected_r_t_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"CurrentRouteTable">> => string(),
%%   <<"ExpectedRouteTable">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type network_firewall_missing_expected_r_t_violation() :: #{binary() => any()}.

%% Example:
%% get_protocols_list_response() :: #{
%%   <<"ProtocolsList">> => protocols_list_data(),
%%   <<"ProtocolsListArn">> => string()
%% }
-type get_protocols_list_response() :: #{binary() => any()}.

%% Example:
%% list_admin_accounts_for_organization_response() :: #{
%%   <<"AdminAccounts">> => list(admin_account_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_admin_accounts_for_organization_response() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% third_party_firewall_missing_firewall_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"TargetViolationReason">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type third_party_firewall_missing_firewall_violation() :: #{binary() => any()}.

%% Example:
%% network_firewall_missing_expected_routes_violation() :: #{
%%   <<"ExpectedRoutes">> => list(expected_route()),
%%   <<"ViolationTarget">> => string(),
%%   <<"VpcId">> => string()
%% }
-type network_firewall_missing_expected_routes_violation() :: #{binary() => any()}.

%% Example:
%% policy_type_scope() :: #{
%%   <<"AllPolicyTypesEnabled">> => boolean(),
%%   <<"PolicyTypes">> => list(list(any())())
%% }
-type policy_type_scope() :: #{binary() => any()}.

%% Example:
%% get_third_party_firewall_association_status_request() :: #{
%%   <<"ThirdPartyFirewall">> := list(any())
%% }
-type get_third_party_firewall_association_status_request() :: #{binary() => any()}.

%% Example:
%% third_party_firewall_missing_subnet_violation() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"TargetViolationReason">> => string(),
%%   <<"VPC">> => string(),
%%   <<"ViolationTarget">> => string()
%% }
-type third_party_firewall_missing_subnet_violation() :: #{binary() => any()}.

%% Example:
%% delete_notification_channel_request() :: #{

%% }
-type delete_notification_channel_request() :: #{binary() => any()}.

%% Example:
%% list_compliance_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PolicyComplianceStatusList">> => list(policy_compliance_status())
%% }
-type list_compliance_status_response() :: #{binary() => any()}.

%% Example:
%% put_apps_list_response() :: #{
%%   <<"AppsList">> => apps_list_data(),
%%   <<"AppsListArn">> => string()
%% }
-type put_apps_list_response() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"AccountId">> => string(),
%%   <<"URI">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type associate_admin_account_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type associate_third_party_firewall_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type batch_associate_resource_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type batch_disassociate_resource_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_apps_list_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_notification_channel_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_policy_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_protocols_list_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_resource_set_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disassociate_admin_account_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type disassociate_third_party_firewall_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_admin_account_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_admin_scope_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_apps_list_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_compliance_detail_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_notification_channel_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_policy_errors() ::
    internal_error_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_protection_status_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_protocols_list_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_resource_set_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_third_party_firewall_association_status_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_violation_details_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_admin_accounts_for_organization_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_admins_managing_account_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_apps_lists_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_compliance_status_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type list_discovered_resources_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    invalid_operation_exception().

-type list_member_accounts_errors() ::
    internal_error_exception() | 
    resource_not_found_exception().

-type list_policies_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_protocols_lists_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_resource_set_resources_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_resource_sets_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    invalid_operation_exception().

-type list_tags_for_resource_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type list_third_party_firewall_firewall_policies_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type put_admin_account_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    invalid_operation_exception().

-type put_apps_list_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type put_notification_channel_errors() ::
    internal_error_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type put_policy_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_type_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type put_protocols_list_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type put_resource_set_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    invalid_operation_exception().

-type tag_resource_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type untag_resource_errors() ::
    internal_error_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sets a Firewall Manager default administrator account.
%%
%% The Firewall Manager default administrator account can manage third-party
%% firewalls and has full administrative scope that allows administration of
%% all policy types, accounts, organizational units, and Regions. This
%% account must be a member account of the organization in Organizations
%% whose resources you want to protect.
%%
%% For information about working with Firewall Manager administrator
%% accounts, see Managing Firewall Manager administrators:
%% https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html
%% in the Firewall Manager Developer Guide.
-spec associate_admin_account(aws_client:aws_client(), associate_admin_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_admin_account_errors(), tuple()}.
associate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_admin_account(Client, Input, []).

-spec associate_admin_account(aws_client:aws_client(), associate_admin_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_admin_account_errors(), tuple()}.
associate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAdminAccount">>, Input, Options).

%% @doc Sets the Firewall Manager policy administrator as a tenant
%% administrator of a third-party firewall service.
%%
%% A tenant is an instance of the third-party firewall service that's
%% associated with your Amazon Web Services customer account.
-spec associate_third_party_firewall(aws_client:aws_client(), associate_third_party_firewall_request()) ->
    {ok, associate_third_party_firewall_response(), tuple()} |
    {error, any()} |
    {error, associate_third_party_firewall_errors(), tuple()}.
associate_third_party_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_third_party_firewall(Client, Input, []).

-spec associate_third_party_firewall(aws_client:aws_client(), associate_third_party_firewall_request(), proplists:proplist()) ->
    {ok, associate_third_party_firewall_response(), tuple()} |
    {error, any()} |
    {error, associate_third_party_firewall_errors(), tuple()}.
associate_third_party_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateThirdPartyFirewall">>, Input, Options).

%% @doc Associate resources to a Firewall Manager resource set.
-spec batch_associate_resource(aws_client:aws_client(), batch_associate_resource_request()) ->
    {ok, batch_associate_resource_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_resource_errors(), tuple()}.
batch_associate_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_resource(Client, Input, []).

-spec batch_associate_resource(aws_client:aws_client(), batch_associate_resource_request(), proplists:proplist()) ->
    {ok, batch_associate_resource_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_resource_errors(), tuple()}.
batch_associate_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateResource">>, Input, Options).

%% @doc Disassociates resources from a Firewall Manager resource set.
-spec batch_disassociate_resource(aws_client:aws_client(), batch_disassociate_resource_request()) ->
    {ok, batch_disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_resource_errors(), tuple()}.
batch_disassociate_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_resource(Client, Input, []).

-spec batch_disassociate_resource(aws_client:aws_client(), batch_disassociate_resource_request(), proplists:proplist()) ->
    {ok, batch_disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_resource_errors(), tuple()}.
batch_disassociate_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateResource">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager applications list.
-spec delete_apps_list(aws_client:aws_client(), delete_apps_list_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_apps_list_errors(), tuple()}.
delete_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_apps_list(Client, Input, []).

-spec delete_apps_list(aws_client:aws_client(), delete_apps_list_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_apps_list_errors(), tuple()}.
delete_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppsList">>, Input, Options).

%% @doc Deletes an Firewall Manager association with the IAM role and the
%% Amazon Simple
%% Notification Service (SNS) topic that is used to record Firewall Manager
%% SNS logs.
-spec delete_notification_channel(aws_client:aws_client(), delete_notification_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_channel_errors(), tuple()}.
delete_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification_channel(Client, Input, []).

-spec delete_notification_channel(aws_client:aws_client(), delete_notification_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_channel_errors(), tuple()}.
delete_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotificationChannel">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager policy.
-spec delete_policy(aws_client:aws_client(), delete_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager protocols list.
-spec delete_protocols_list(aws_client:aws_client(), delete_protocols_list_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_protocols_list_errors(), tuple()}.
delete_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protocols_list(Client, Input, []).

-spec delete_protocols_list(aws_client:aws_client(), delete_protocols_list_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_protocols_list_errors(), tuple()}.
delete_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtocolsList">>, Input, Options).

%% @doc Deletes the specified `ResourceSet'.
-spec delete_resource_set(aws_client:aws_client(), delete_resource_set_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_set_errors(), tuple()}.
delete_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_set(Client, Input, []).

-spec delete_resource_set(aws_client:aws_client(), delete_resource_set_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_set_errors(), tuple()}.
delete_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceSet">>, Input, Options).

%% @doc Disassociates an Firewall Manager administrator account.
%%
%% To set a different account as an Firewall Manager administrator, submit a
%% `PutAdminAccount' request. To set an account as a default
%% administrator account, you must submit an `AssociateAdminAccount'
%% request.
%%
%% Disassociation of the default administrator account follows the first in,
%% last out principle. If you are the default administrator, all Firewall
%% Manager administrators within the organization must first disassociate
%% their accounts before you can disassociate your account.
-spec disassociate_admin_account(aws_client:aws_client(), disassociate_admin_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_admin_account_errors(), tuple()}.
disassociate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_admin_account(Client, Input, []).

-spec disassociate_admin_account(aws_client:aws_client(), disassociate_admin_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_admin_account_errors(), tuple()}.
disassociate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAdminAccount">>, Input, Options).

%% @doc Disassociates a Firewall Manager policy administrator from a
%% third-party firewall tenant.
%%
%% When you call `DisassociateThirdPartyFirewall', the third-party
%% firewall vendor deletes all of the firewalls that are associated with the
%% account.
-spec disassociate_third_party_firewall(aws_client:aws_client(), disassociate_third_party_firewall_request()) ->
    {ok, disassociate_third_party_firewall_response(), tuple()} |
    {error, any()} |
    {error, disassociate_third_party_firewall_errors(), tuple()}.
disassociate_third_party_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_third_party_firewall(Client, Input, []).

-spec disassociate_third_party_firewall(aws_client:aws_client(), disassociate_third_party_firewall_request(), proplists:proplist()) ->
    {ok, disassociate_third_party_firewall_response(), tuple()} |
    {error, any()} |
    {error, disassociate_third_party_firewall_errors(), tuple()}.
disassociate_third_party_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateThirdPartyFirewall">>, Input, Options).

%% @doc Returns the Organizations account that is associated with Firewall
%% Manager
%% as the Firewall Manager default administrator.
-spec get_admin_account(aws_client:aws_client(), get_admin_account_request()) ->
    {ok, get_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_admin_account_errors(), tuple()}.
get_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_admin_account(Client, Input, []).

-spec get_admin_account(aws_client:aws_client(), get_admin_account_request(), proplists:proplist()) ->
    {ok, get_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_admin_account_errors(), tuple()}.
get_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdminAccount">>, Input, Options).

%% @doc Returns information about the specified account's administrative
%% scope.
%%
%% The administrative scope defines the resources that an Firewall Manager
%% administrator can manage.
-spec get_admin_scope(aws_client:aws_client(), get_admin_scope_request()) ->
    {ok, get_admin_scope_response(), tuple()} |
    {error, any()} |
    {error, get_admin_scope_errors(), tuple()}.
get_admin_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_admin_scope(Client, Input, []).

-spec get_admin_scope(aws_client:aws_client(), get_admin_scope_request(), proplists:proplist()) ->
    {ok, get_admin_scope_response(), tuple()} |
    {error, any()} |
    {error, get_admin_scope_errors(), tuple()}.
get_admin_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdminScope">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager applications
%% list.
-spec get_apps_list(aws_client:aws_client(), get_apps_list_request()) ->
    {ok, get_apps_list_response(), tuple()} |
    {error, any()} |
    {error, get_apps_list_errors(), tuple()}.
get_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_apps_list(Client, Input, []).

-spec get_apps_list(aws_client:aws_client(), get_apps_list_request(), proplists:proplist()) ->
    {ok, get_apps_list_response(), tuple()} |
    {error, any()} |
    {error, get_apps_list_errors(), tuple()}.
get_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppsList">>, Input, Options).

%% @doc Returns detailed compliance information about the specified member
%% account.
%%
%% Details
%% include resources that are in and out of compliance with the specified
%% policy.
%%
%% The reasons for resources being considered compliant depend on the
%% Firewall Manager policy type.
-spec get_compliance_detail(aws_client:aws_client(), get_compliance_detail_request()) ->
    {ok, get_compliance_detail_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_detail_errors(), tuple()}.
get_compliance_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_detail(Client, Input, []).

-spec get_compliance_detail(aws_client:aws_client(), get_compliance_detail_request(), proplists:proplist()) ->
    {ok, get_compliance_detail_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_detail_errors(), tuple()}.
get_compliance_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetail">>, Input, Options).

%% @doc Information
%% about the Amazon Simple Notification Service (SNS) topic that is used to
%% record Firewall Manager SNS logs.
-spec get_notification_channel(aws_client:aws_client(), get_notification_channel_request()) ->
    {ok, get_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, get_notification_channel_errors(), tuple()}.
get_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_notification_channel(Client, Input, []).

-spec get_notification_channel(aws_client:aws_client(), get_notification_channel_request(), proplists:proplist()) ->
    {ok, get_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, get_notification_channel_errors(), tuple()}.
get_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNotificationChannel">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager policy.
-spec get_policy(aws_client:aws_client(), get_policy_request()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).

-spec get_policy(aws_client:aws_client(), get_policy_request(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc If you created a Shield Advanced policy, returns policy-level attack
%% summary information
%% in the event of a potential DDoS attack.
%%
%% Other policy types are currently unsupported.
-spec get_protection_status(aws_client:aws_client(), get_protection_status_request()) ->
    {ok, get_protection_status_response(), tuple()} |
    {error, any()} |
    {error, get_protection_status_errors(), tuple()}.
get_protection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protection_status(Client, Input, []).

-spec get_protection_status(aws_client:aws_client(), get_protection_status_request(), proplists:proplist()) ->
    {ok, get_protection_status_response(), tuple()} |
    {error, any()} |
    {error, get_protection_status_errors(), tuple()}.
get_protection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtectionStatus">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager protocols
%% list.
-spec get_protocols_list(aws_client:aws_client(), get_protocols_list_request()) ->
    {ok, get_protocols_list_response(), tuple()} |
    {error, any()} |
    {error, get_protocols_list_errors(), tuple()}.
get_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protocols_list(Client, Input, []).

-spec get_protocols_list(aws_client:aws_client(), get_protocols_list_request(), proplists:proplist()) ->
    {ok, get_protocols_list_response(), tuple()} |
    {error, any()} |
    {error, get_protocols_list_errors(), tuple()}.
get_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtocolsList">>, Input, Options).

%% @doc Gets information about a specific resource set.
-spec get_resource_set(aws_client:aws_client(), get_resource_set_request()) ->
    {ok, get_resource_set_response(), tuple()} |
    {error, any()} |
    {error, get_resource_set_errors(), tuple()}.
get_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_set(Client, Input, []).

-spec get_resource_set(aws_client:aws_client(), get_resource_set_request(), proplists:proplist()) ->
    {ok, get_resource_set_response(), tuple()} |
    {error, any()} |
    {error, get_resource_set_errors(), tuple()}.
get_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSet">>, Input, Options).

%% @doc The onboarding status of a Firewall Manager admin account to
%% third-party firewall vendor tenant.
-spec get_third_party_firewall_association_status(aws_client:aws_client(), get_third_party_firewall_association_status_request()) ->
    {ok, get_third_party_firewall_association_status_response(), tuple()} |
    {error, any()} |
    {error, get_third_party_firewall_association_status_errors(), tuple()}.
get_third_party_firewall_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_third_party_firewall_association_status(Client, Input, []).

-spec get_third_party_firewall_association_status(aws_client:aws_client(), get_third_party_firewall_association_status_request(), proplists:proplist()) ->
    {ok, get_third_party_firewall_association_status_response(), tuple()} |
    {error, any()} |
    {error, get_third_party_firewall_association_status_errors(), tuple()}.
get_third_party_firewall_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetThirdPartyFirewallAssociationStatus">>, Input, Options).

%% @doc Retrieves violations for a resource based on the specified Firewall
%% Manager policy and Amazon Web Services account.
-spec get_violation_details(aws_client:aws_client(), get_violation_details_request()) ->
    {ok, get_violation_details_response(), tuple()} |
    {error, any()} |
    {error, get_violation_details_errors(), tuple()}.
get_violation_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_violation_details(Client, Input, []).

-spec get_violation_details(aws_client:aws_client(), get_violation_details_request(), proplists:proplist()) ->
    {ok, get_violation_details_response(), tuple()} |
    {error, any()} |
    {error, get_violation_details_errors(), tuple()}.
get_violation_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetViolationDetails">>, Input, Options).

%% @doc Returns a `AdminAccounts' object that lists the Firewall Manager
%% administrators within the organization that are onboarded to Firewall
%% Manager by `AssociateAdminAccount'.
%%
%% This operation can be called only from the organization's management
%% account.
-spec list_admin_accounts_for_organization(aws_client:aws_client(), list_admin_accounts_for_organization_request()) ->
    {ok, list_admin_accounts_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_admin_accounts_for_organization_errors(), tuple()}.
list_admin_accounts_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_admin_accounts_for_organization(Client, Input, []).

-spec list_admin_accounts_for_organization(aws_client:aws_client(), list_admin_accounts_for_organization_request(), proplists:proplist()) ->
    {ok, list_admin_accounts_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_admin_accounts_for_organization_errors(), tuple()}.
list_admin_accounts_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdminAccountsForOrganization">>, Input, Options).

%% @doc Lists the accounts that are managing the specified Organizations
%% member account.
%%
%% This is useful for any member account so that they can view the accounts
%% who are managing their account. This operation only returns the managing
%% administrators that have the requested account within their
%% `AdminScope'.
-spec list_admins_managing_account(aws_client:aws_client(), list_admins_managing_account_request()) ->
    {ok, list_admins_managing_account_response(), tuple()} |
    {error, any()} |
    {error, list_admins_managing_account_errors(), tuple()}.
list_admins_managing_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_admins_managing_account(Client, Input, []).

-spec list_admins_managing_account(aws_client:aws_client(), list_admins_managing_account_request(), proplists:proplist()) ->
    {ok, list_admins_managing_account_response(), tuple()} |
    {error, any()} |
    {error, list_admins_managing_account_errors(), tuple()}.
list_admins_managing_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdminsManagingAccount">>, Input, Options).

%% @doc Returns an array of `AppsListDataSummary' objects.
-spec list_apps_lists(aws_client:aws_client(), list_apps_lists_request()) ->
    {ok, list_apps_lists_response(), tuple()} |
    {error, any()} |
    {error, list_apps_lists_errors(), tuple()}.
list_apps_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps_lists(Client, Input, []).

-spec list_apps_lists(aws_client:aws_client(), list_apps_lists_request(), proplists:proplist()) ->
    {ok, list_apps_lists_response(), tuple()} |
    {error, any()} |
    {error, list_apps_lists_errors(), tuple()}.
list_apps_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAppsLists">>, Input, Options).

%% @doc Returns an array of `PolicyComplianceStatus' objects.
%%
%% Use
%% `PolicyComplianceStatus' to get a summary of which member accounts are
%% protected
%% by the specified policy.
-spec list_compliance_status(aws_client:aws_client(), list_compliance_status_request()) ->
    {ok, list_compliance_status_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_status_errors(), tuple()}.
list_compliance_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_status(Client, Input, []).

-spec list_compliance_status(aws_client:aws_client(), list_compliance_status_request(), proplists:proplist()) ->
    {ok, list_compliance_status_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_status_errors(), tuple()}.
list_compliance_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceStatus">>, Input, Options).

%% @doc Returns an array of resources in the organization's accounts that
%% are available to be associated with a resource set.
-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request()) ->
    {ok, list_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).

-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request(), proplists:proplist()) ->
    {ok, list_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Returns a `MemberAccounts' object that lists the member accounts
%% in the
%% administrator's Amazon Web Services organization.
%%
%% Either an Firewall Manager administrator or the organization's
%% management account can make this request.
-spec list_member_accounts(aws_client:aws_client(), list_member_accounts_request()) ->
    {ok, list_member_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_member_accounts_errors(), tuple()}.
list_member_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_member_accounts(Client, Input, []).

-spec list_member_accounts(aws_client:aws_client(), list_member_accounts_request(), proplists:proplist()) ->
    {ok, list_member_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_member_accounts_errors(), tuple()}.
list_member_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMemberAccounts">>, Input, Options).

%% @doc Returns an array of `PolicySummary' objects.
-spec list_policies(aws_client:aws_client(), list_policies_request()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).

-spec list_policies(aws_client:aws_client(), list_policies_request(), proplists:proplist()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Returns an array of `ProtocolsListDataSummary' objects.
-spec list_protocols_lists(aws_client:aws_client(), list_protocols_lists_request()) ->
    {ok, list_protocols_lists_response(), tuple()} |
    {error, any()} |
    {error, list_protocols_lists_errors(), tuple()}.
list_protocols_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protocols_lists(Client, Input, []).

-spec list_protocols_lists(aws_client:aws_client(), list_protocols_lists_request(), proplists:proplist()) ->
    {ok, list_protocols_lists_response(), tuple()} |
    {error, any()} |
    {error, list_protocols_lists_errors(), tuple()}.
list_protocols_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtocolsLists">>, Input, Options).

%% @doc Returns an array of resources that are currently associated to a
%% resource set.
-spec list_resource_set_resources(aws_client:aws_client(), list_resource_set_resources_request()) ->
    {ok, list_resource_set_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resource_set_resources_errors(), tuple()}.
list_resource_set_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_set_resources(Client, Input, []).

-spec list_resource_set_resources(aws_client:aws_client(), list_resource_set_resources_request(), proplists:proplist()) ->
    {ok, list_resource_set_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resource_set_resources_errors(), tuple()}.
list_resource_set_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSetResources">>, Input, Options).

%% @doc Returns an array of `ResourceSetSummary' objects.
-spec list_resource_sets(aws_client:aws_client(), list_resource_sets_request()) ->
    {ok, list_resource_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_sets_errors(), tuple()}.
list_resource_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_sets(Client, Input, []).

-spec list_resource_sets(aws_client:aws_client(), list_resource_sets_request(), proplists:proplist()) ->
    {ok, list_resource_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_sets_errors(), tuple()}.
list_resource_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSets">>, Input, Options).

%% @doc Retrieves the list of tags for the specified Amazon Web Services
%% resource.
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

%% @doc Retrieves a list of all of the third-party firewall policies that are
%% associated with the third-party firewall administrator's account.
-spec list_third_party_firewall_firewall_policies(aws_client:aws_client(), list_third_party_firewall_firewall_policies_request()) ->
    {ok, list_third_party_firewall_firewall_policies_response(), tuple()} |
    {error, any()} |
    {error, list_third_party_firewall_firewall_policies_errors(), tuple()}.
list_third_party_firewall_firewall_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_third_party_firewall_firewall_policies(Client, Input, []).

-spec list_third_party_firewall_firewall_policies(aws_client:aws_client(), list_third_party_firewall_firewall_policies_request(), proplists:proplist()) ->
    {ok, list_third_party_firewall_firewall_policies_response(), tuple()} |
    {error, any()} |
    {error, list_third_party_firewall_firewall_policies_errors(), tuple()}.
list_third_party_firewall_firewall_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListThirdPartyFirewallFirewallPolicies">>, Input, Options).

%% @doc Creates or updates an Firewall Manager administrator account.
%%
%% The account must be a member of the organization that was onboarded to
%% Firewall Manager by `AssociateAdminAccount'. Only the
%% organization's management account can create an Firewall Manager
%% administrator account. When you create an Firewall Manager administrator
%% account, the service checks to see if the account is already a delegated
%% administrator within Organizations. If the account isn't a delegated
%% administrator, Firewall Manager calls Organizations to delegate the
%% account within Organizations. For more information about administrator
%% accounts within Organizations, see
%% Managing the Amazon Web Services Accounts in Your Organization:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html.
-spec put_admin_account(aws_client:aws_client(), put_admin_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_admin_account_errors(), tuple()}.
put_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_admin_account(Client, Input, []).

-spec put_admin_account(aws_client:aws_client(), put_admin_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_admin_account_errors(), tuple()}.
put_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAdminAccount">>, Input, Options).

%% @doc Creates an Firewall Manager applications list.
-spec put_apps_list(aws_client:aws_client(), put_apps_list_request()) ->
    {ok, put_apps_list_response(), tuple()} |
    {error, any()} |
    {error, put_apps_list_errors(), tuple()}.
put_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_apps_list(Client, Input, []).

-spec put_apps_list(aws_client:aws_client(), put_apps_list_request(), proplists:proplist()) ->
    {ok, put_apps_list_response(), tuple()} |
    {error, any()} |
    {error, put_apps_list_errors(), tuple()}.
put_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppsList">>, Input, Options).

%% @doc Designates the IAM role and Amazon Simple Notification Service (SNS)
%% topic that
%% Firewall Manager uses to record SNS logs.
%%
%% To perform this action outside of the console, you must first configure
%% the SNS topic's access policy to allow the `SnsRoleName' to
%% publish SNS logs. If the `SnsRoleName' provided is a role other than
%% the `AWSServiceRoleForFMS' service-linked role, this role must have a
%% trust relationship configured to allow the Firewall Manager service
%% principal `fms.amazonaws.com' to assume this role. For information
%% about configuring an SNS access policy, see
%% Service roles for Firewall Manager:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service
%% in the Firewall Manager Developer Guide.
-spec put_notification_channel(aws_client:aws_client(), put_notification_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_notification_channel_errors(), tuple()}.
put_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_channel(Client, Input, []).

-spec put_notification_channel(aws_client:aws_client(), put_notification_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_notification_channel_errors(), tuple()}.
put_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationChannel">>, Input, Options).

%% @doc Creates an Firewall Manager policy.
%%
%% A Firewall Manager policy is specific to the individual policy type. If
%% you want to enforce multiple
%% policy types across accounts, you can create multiple policies. You can
%% create more than one
%% policy for each type.
%%
%% If you add a new account to an organization that you created with
%% Organizations, Firewall Manager
%% automatically applies the policy to the resources in that account that are
%% within scope of
%% the policy.
%%
%% Firewall Manager provides the following types of policies:
%%
%% WAF policy - This policy applies WAF web ACL
%% protections to specified accounts and resources.
%%
%% Shield Advanced policy - This policy applies Shield Advanced
%% protection to specified accounts and resources.
%%
%% Security Groups policy - This type of policy gives you
%% control over security groups that are in use throughout your organization
%% in
%% Organizations and lets you enforce a baseline set of rules across your
%% organization.
%%
%% Network ACL policy - This type of policy gives you
%% control over the network ACLs that are in use throughout your organization
%% in
%% Organizations and lets you enforce a baseline set of first and last
%% network ACL rules across your organization.
%%
%% Network Firewall policy - This policy applies
%% Network Firewall protection to your organization's VPCs.
%%
%% DNS Firewall policy - This policy applies
%% Amazon Route 53 Resolver DNS Firewall protections to your
%% organization's VPCs.
%%
%% Third-party firewall policy - This policy applies third-party firewall
%% protections. Third-party firewalls are available by subscription through
%% the Amazon Web Services Marketplace console at Amazon Web Services
%% Marketplace: http://aws.amazon.com/marketplace.
%%
%% Palo Alto Networks Cloud NGFW policy - This policy applies Palo Alto
%% Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto
%% Networks Cloud NGFW rulestacks to your organization's VPCs.
%%
%% Fortigate CNF policy - This policy applies
%% Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a
%% cloud-centered solution that blocks Zero-Day threats and secures cloud
%% infrastructures with industry-leading advanced threat prevention, smart
%% web application firewalls (WAF), and API protection.
-spec put_policy(aws_client:aws_client(), put_policy_request()) ->
    {ok, put_policy_response(), tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_policy(Client, Input, []).

-spec put_policy(aws_client:aws_client(), put_policy_request(), proplists:proplist()) ->
    {ok, put_policy_response(), tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPolicy">>, Input, Options).

%% @doc Creates an Firewall Manager protocols list.
-spec put_protocols_list(aws_client:aws_client(), put_protocols_list_request()) ->
    {ok, put_protocols_list_response(), tuple()} |
    {error, any()} |
    {error, put_protocols_list_errors(), tuple()}.
put_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_protocols_list(Client, Input, []).

-spec put_protocols_list(aws_client:aws_client(), put_protocols_list_request(), proplists:proplist()) ->
    {ok, put_protocols_list_response(), tuple()} |
    {error, any()} |
    {error, put_protocols_list_errors(), tuple()}.
put_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProtocolsList">>, Input, Options).

%% @doc Creates the resource set.
%%
%% An Firewall Manager resource set defines the resources to import into an
%% Firewall Manager policy from another Amazon Web Services service.
-spec put_resource_set(aws_client:aws_client(), put_resource_set_request()) ->
    {ok, put_resource_set_response(), tuple()} |
    {error, any()} |
    {error, put_resource_set_errors(), tuple()}.
put_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_set(Client, Input, []).

-spec put_resource_set(aws_client:aws_client(), put_resource_set_request(), proplists:proplist()) ->
    {ok, put_resource_set_response(), tuple()} |
    {error, any()} |
    {error, put_resource_set_errors(), tuple()}.
put_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceSet">>, Input, Options).

%% @doc Adds one or more tags to an Amazon Web Services resource.
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

%% @doc Removes one or more tags from an Amazon Web Services resource.
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
    Client1 = Client#{service => <<"fms">>},
    Host = build_host(<<"fms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSFMS_20180101.", Action/binary>>}
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
