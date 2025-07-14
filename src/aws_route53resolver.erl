%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc When you create a VPC using Amazon VPC, you automatically get DNS
%% resolution within the VPC
%% from Route 53 Resolver.
%%
%% By default, Resolver answers DNS queries for VPC domain names
%% such as domain names for EC2 instances or Elastic Load Balancing load
%% balancers.
%% Resolver performs recursive lookups against public name servers for all
%% other domain
%% names.
%%
%% You can also configure DNS resolution between your VPC and your network
%% over a Direct Connect or VPN connection:
%%
%% Forward DNS queries from resolvers on your network to Route 53 Resolver
%%
%% DNS resolvers on your network can forward DNS queries to Resolver in a
%% specified VPC. This allows your DNS resolvers
%% to easily resolve domain names for Amazon Web Services resources such as
%% EC2 instances or records in a Route 53 private hosted zone.
%% For more information, see
%% How DNS Resolvers
%% on Your Network Forward DNS Queries to Route 53 Resolver:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc
%% in the Amazon Route 53 Developer Guide.
%%
%% Conditionally forward queries from a VPC to resolvers on your network
%%
%% You can configure Resolver to forward queries that it receives from EC2
%% instances in your VPCs to DNS resolvers on your network.
%% To forward selected queries, you create Resolver rules that specify the
%% domain names for the DNS queries that you want to forward
%% (such as example.com), and the IP addresses of the DNS resolvers on your
%% network that you want to forward the queries to.
%% If a query matches multiple rules (example.com, acme.example.com),
%% Resolver chooses the rule with the most specific match
%% (acme.example.com) and forwards the query to the IP addresses that you
%% specified in that rule. For more information, see
%% How Route 53 Resolver
%% Forwards DNS Queries from Your VPCs to Your Network:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network
%% in the Amazon Route 53 Developer Guide.
%%
%% Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs,
%% you can choose
%% whether to forward queries from your VPCs to your network (outbound
%% queries), from your
%% network to your VPCs (inbound queries), or both.
-module(aws_route53resolver).

-export([associate_firewall_rule_group/2,
         associate_firewall_rule_group/3,
         associate_resolver_endpoint_ip_address/2,
         associate_resolver_endpoint_ip_address/3,
         associate_resolver_query_log_config/2,
         associate_resolver_query_log_config/3,
         associate_resolver_rule/2,
         associate_resolver_rule/3,
         create_firewall_domain_list/2,
         create_firewall_domain_list/3,
         create_firewall_rule/2,
         create_firewall_rule/3,
         create_firewall_rule_group/2,
         create_firewall_rule_group/3,
         create_outpost_resolver/2,
         create_outpost_resolver/3,
         create_resolver_endpoint/2,
         create_resolver_endpoint/3,
         create_resolver_query_log_config/2,
         create_resolver_query_log_config/3,
         create_resolver_rule/2,
         create_resolver_rule/3,
         delete_firewall_domain_list/2,
         delete_firewall_domain_list/3,
         delete_firewall_rule/2,
         delete_firewall_rule/3,
         delete_firewall_rule_group/2,
         delete_firewall_rule_group/3,
         delete_outpost_resolver/2,
         delete_outpost_resolver/3,
         delete_resolver_endpoint/2,
         delete_resolver_endpoint/3,
         delete_resolver_query_log_config/2,
         delete_resolver_query_log_config/3,
         delete_resolver_rule/2,
         delete_resolver_rule/3,
         disassociate_firewall_rule_group/2,
         disassociate_firewall_rule_group/3,
         disassociate_resolver_endpoint_ip_address/2,
         disassociate_resolver_endpoint_ip_address/3,
         disassociate_resolver_query_log_config/2,
         disassociate_resolver_query_log_config/3,
         disassociate_resolver_rule/2,
         disassociate_resolver_rule/3,
         get_firewall_config/2,
         get_firewall_config/3,
         get_firewall_domain_list/2,
         get_firewall_domain_list/3,
         get_firewall_rule_group/2,
         get_firewall_rule_group/3,
         get_firewall_rule_group_association/2,
         get_firewall_rule_group_association/3,
         get_firewall_rule_group_policy/2,
         get_firewall_rule_group_policy/3,
         get_outpost_resolver/2,
         get_outpost_resolver/3,
         get_resolver_config/2,
         get_resolver_config/3,
         get_resolver_dnssec_config/2,
         get_resolver_dnssec_config/3,
         get_resolver_endpoint/2,
         get_resolver_endpoint/3,
         get_resolver_query_log_config/2,
         get_resolver_query_log_config/3,
         get_resolver_query_log_config_association/2,
         get_resolver_query_log_config_association/3,
         get_resolver_query_log_config_policy/2,
         get_resolver_query_log_config_policy/3,
         get_resolver_rule/2,
         get_resolver_rule/3,
         get_resolver_rule_association/2,
         get_resolver_rule_association/3,
         get_resolver_rule_policy/2,
         get_resolver_rule_policy/3,
         import_firewall_domains/2,
         import_firewall_domains/3,
         list_firewall_configs/2,
         list_firewall_configs/3,
         list_firewall_domain_lists/2,
         list_firewall_domain_lists/3,
         list_firewall_domains/2,
         list_firewall_domains/3,
         list_firewall_rule_group_associations/2,
         list_firewall_rule_group_associations/3,
         list_firewall_rule_groups/2,
         list_firewall_rule_groups/3,
         list_firewall_rules/2,
         list_firewall_rules/3,
         list_outpost_resolvers/2,
         list_outpost_resolvers/3,
         list_resolver_configs/2,
         list_resolver_configs/3,
         list_resolver_dnssec_configs/2,
         list_resolver_dnssec_configs/3,
         list_resolver_endpoint_ip_addresses/2,
         list_resolver_endpoint_ip_addresses/3,
         list_resolver_endpoints/2,
         list_resolver_endpoints/3,
         list_resolver_query_log_config_associations/2,
         list_resolver_query_log_config_associations/3,
         list_resolver_query_log_configs/2,
         list_resolver_query_log_configs/3,
         list_resolver_rule_associations/2,
         list_resolver_rule_associations/3,
         list_resolver_rules/2,
         list_resolver_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_firewall_rule_group_policy/2,
         put_firewall_rule_group_policy/3,
         put_resolver_query_log_config_policy/2,
         put_resolver_query_log_config_policy/3,
         put_resolver_rule_policy/2,
         put_resolver_rule_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_firewall_config/2,
         update_firewall_config/3,
         update_firewall_domains/2,
         update_firewall_domains/3,
         update_firewall_rule/2,
         update_firewall_rule/3,
         update_firewall_rule_group_association/2,
         update_firewall_rule_group_association/3,
         update_outpost_resolver/2,
         update_outpost_resolver/3,
         update_resolver_config/2,
         update_resolver_config/3,
         update_resolver_dnssec_config/2,
         update_resolver_dnssec_config/3,
         update_resolver_endpoint/2,
         update_resolver_endpoint/3,
         update_resolver_rule/2,
         update_resolver_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_resolver_query_log_config_association_request() :: #{
%%   <<"ResolverQueryLogConfigAssociationId">> := string()
%% }
-type get_resolver_query_log_config_association_request() :: #{binary() => any()}.

%% Example:
%% update_firewall_rule_group_association_response() :: #{
%%   <<"FirewallRuleGroupAssociation">> => firewall_rule_group_association()
%% }
-type update_firewall_rule_group_association_response() :: #{binary() => any()}.

%% Example:
%% resolver_config() :: #{
%%   <<"AutodefinedReverse">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type resolver_config() :: #{binary() => any()}.

%% Example:
%% ip_address_update() :: #{
%%   <<"Ip">> => string(),
%%   <<"IpId">> => string(),
%%   <<"Ipv6">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type ip_address_update() :: #{binary() => any()}.

%% Example:
%% update_resolver_dnssec_config_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"Validation">> := list(any())
%% }
-type update_resolver_dnssec_config_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% disassociate_firewall_rule_group_request() :: #{
%%   <<"FirewallRuleGroupAssociationId">> := string()
%% }
-type disassociate_firewall_rule_group_request() :: #{binary() => any()}.

%% Example:
%% create_firewall_rule_group_response() :: #{
%%   <<"FirewallRuleGroup">> => firewall_rule_group()
%% }
-type create_firewall_rule_group_response() :: #{binary() => any()}.

%% Example:
%% associate_resolver_query_log_config_response() :: #{
%%   <<"ResolverQueryLogConfigAssociation">> => resolver_query_log_config_association()
%% }
-type associate_resolver_query_log_config_response() :: #{binary() => any()}.

%% Example:
%% create_resolver_query_log_config_response() :: #{
%%   <<"ResolverQueryLogConfig">> => resolver_query_log_config()
%% }
-type create_resolver_query_log_config_response() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_association_response() :: #{
%%   <<"FirewallRuleGroupAssociation">> => firewall_rule_group_association()
%% }
-type get_firewall_rule_group_association_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_rule_request() :: #{
%%   <<"Action">> => list(any()),
%%   <<"BlockOverrideDnsType">> => list(any()),
%%   <<"BlockOverrideDomain">> => string(),
%%   <<"BlockOverrideTtl">> => integer(),
%%   <<"BlockResponse">> => list(any()),
%%   <<"ConfidenceThreshold">> => list(any()),
%%   <<"DnsThreatProtection">> => list(any()),
%%   <<"FirewallDomainListId">> => string(),
%%   <<"FirewallDomainRedirectionAction">> => list(any()),
%%   <<"FirewallRuleGroupId">> := string(),
%%   <<"FirewallThreatProtectionId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Qtype">> => string()
%% }
-type update_firewall_rule_request() :: #{binary() => any()}.

%% Example:
%% list_firewall_rules_request() :: #{
%%   <<"Action">> => list(any()),
%%   <<"FirewallRuleGroupId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Priority">> => integer()
%% }
-type list_firewall_rules_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_dnssec_config_response() :: #{
%%   <<"ResolverDNSSECConfig">> => resolver_dnssec_config()
%% }
-type get_resolver_dnssec_config_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_endpoint_request() :: #{
%%   <<"ResolverEndpointId">> := string()
%% }
-type get_resolver_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_firewall_rules_response() :: #{
%%   <<"FirewallRules">> => list(firewall_rule()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_rules_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_resolver_query_log_config_response() :: #{
%%   <<"ResolverQueryLogConfig">> => resolver_query_log_config()
%% }
-type delete_resolver_query_log_config_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_configs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_configs_request() :: #{binary() => any()}.

%% Example:
%% associate_resolver_query_log_config_request() :: #{
%%   <<"ResolverQueryLogConfigId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type associate_resolver_query_log_config_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% update_resolver_endpoint_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type update_resolver_endpoint_response() :: #{binary() => any()}.

%% Example:
%% get_firewall_domain_list_response() :: #{
%%   <<"FirewallDomainList">> => firewall_domain_list()
%% }
-type get_firewall_domain_list_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_rule_group_association_request() :: #{
%%   <<"FirewallRuleGroupAssociationId">> := string(),
%%   <<"MutationProtection">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer()
%% }
-type update_firewall_rule_group_association_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_dnssec_configs_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_dnssec_configs_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_query_log_configs_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_resolver_query_log_configs_request() :: #{binary() => any()}.

%% Example:
%% update_outpost_resolver_request() :: #{
%%   <<"Id">> := string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"PreferredInstanceType">> => string()
%% }
-type update_outpost_resolver_request() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% list_firewall_domain_lists_response() :: #{
%%   <<"FirewallDomainLists">> => list(firewall_domain_list_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_domain_lists_response() :: #{binary() => any()}.

%% Example:
%% create_firewall_rule_request() :: #{
%%   <<"Action">> := list(any()),
%%   <<"BlockOverrideDnsType">> => list(any()),
%%   <<"BlockOverrideDomain">> => string(),
%%   <<"BlockOverrideTtl">> => integer(),
%%   <<"BlockResponse">> => list(any()),
%%   <<"ConfidenceThreshold">> => list(any()),
%%   <<"CreatorRequestId">> := string(),
%%   <<"DnsThreatProtection">> => list(any()),
%%   <<"FirewallDomainListId">> => string(),
%%   <<"FirewallDomainRedirectionAction">> => list(any()),
%%   <<"FirewallRuleGroupId">> := string(),
%%   <<"Name">> := string(),
%%   <<"Priority">> := integer(),
%%   <<"Qtype">> => string()
%% }
-type create_firewall_rule_request() :: #{binary() => any()}.

%% Example:
%% firewall_domain_list() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DomainCount">> => integer(),
%%   <<"Id">> => string(),
%%   <<"ManagedOwnerName">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type firewall_domain_list() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_response() :: #{
%%   <<"FirewallRuleGroup">> => firewall_rule_group()
%% }
-type get_firewall_rule_group_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_domain_lists_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_domain_lists_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_rules_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_rules_request() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_request() :: #{
%%   <<"FirewallRuleGroupId">> := string()
%% }
-type get_firewall_rule_group_request() :: #{binary() => any()}.

%% Example:
%% firewall_config() :: #{
%%   <<"FirewallFailOpen">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type firewall_config() :: #{binary() => any()}.

%% Example:
%% update_resolver_rule_request() :: #{
%%   <<"Config">> := resolver_rule_config(),
%%   <<"ResolverRuleId">> := string()
%% }
-type update_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_firewall_domain_list_response() :: #{
%%   <<"FirewallDomainList">> => firewall_domain_list()
%% }
-type delete_firewall_domain_list_response() :: #{binary() => any()}.

%% Example:
%% delete_firewall_domain_list_request() :: #{
%%   <<"FirewallDomainListId">> := string()
%% }
-type delete_firewall_domain_list_request() :: #{binary() => any()}.

%% Example:
%% get_firewall_domain_list_request() :: #{
%%   <<"FirewallDomainListId">> := string()
%% }
-type get_firewall_domain_list_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_dnssec_config_request() :: #{
%%   <<"ResourceId">> := string()
%% }
-type get_resolver_dnssec_config_request() :: #{binary() => any()}.

%% Example:
%% resolver_query_log_config() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociationCount">> => integer(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DestinationArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type resolver_query_log_config() :: #{binary() => any()}.

%% Example:
%% list_resolver_endpoints_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_endpoints_request() :: #{binary() => any()}.

%% Example:
%% create_resolver_query_log_config_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"DestinationArn">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_resolver_query_log_config_request() :: #{binary() => any()}.

%% Example:
%% put_resolver_rule_policy_response() :: #{
%%   <<"ReturnValue">> => boolean()
%% }
-type put_resolver_rule_policy_response() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.

%% Example:
%% create_firewall_domain_list_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_firewall_domain_list_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_query_log_config_request() :: #{
%%   <<"ResolverQueryLogConfigId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type disassociate_resolver_query_log_config_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_association_request() :: #{
%%   <<"ResolverRuleAssociationId">> := string()
%% }
-type get_resolver_rule_association_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_query_log_config_association_response() :: #{
%%   <<"ResolverQueryLogConfigAssociation">> => resolver_query_log_config_association()
%% }
-type get_resolver_query_log_config_association_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% ip_address_request() :: #{
%%   <<"Ip">> => string(),
%%   <<"Ipv6">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type ip_address_request() :: #{binary() => any()}.

%% Example:
%% delete_resolver_query_log_config_request() :: #{
%%   <<"ResolverQueryLogConfigId">> := string()
%% }
-type delete_resolver_query_log_config_request() :: #{binary() => any()}.

%% Example:
%% list_firewall_domains_request() :: #{
%%   <<"FirewallDomainListId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_domains_request() :: #{binary() => any()}.

%% Example:
%% update_resolver_config_response() :: #{
%%   <<"ResolverConfig">> => resolver_config()
%% }
-type update_resolver_config_response() :: #{binary() => any()}.

%% Example:
%% resolver_rule_association() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResolverRuleId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"VPCId">> => string()
%% }
-type resolver_rule_association() :: #{binary() => any()}.

%% Example:
%% update_firewall_rule_response() :: #{
%%   <<"FirewallRule">> => firewall_rule()
%% }
-type update_firewall_rule_response() :: #{binary() => any()}.

%% Example:
%% associate_firewall_rule_group_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"FirewallRuleGroupId">> := string(),
%%   <<"MutationProtection">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"Priority">> := integer(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcId">> := string()
%% }
-type associate_firewall_rule_group_request() :: #{binary() => any()}.

%% Example:
%% create_resolver_endpoint_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"Direction">> := list(any()),
%%   <<"IpAddresses">> := list(ip_address_request()),
%%   <<"Name">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"PreferredInstanceType">> => string(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"ResolverEndpointType">> => list(any()),
%%   <<"SecurityGroupIds">> := list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_resolver_endpoint_request() :: #{binary() => any()}.

%% Example:
%% delete_firewall_rule_response() :: #{
%%   <<"FirewallRule">> => firewall_rule()
%% }
-type delete_firewall_rule_response() :: #{binary() => any()}.

%% Example:
%% create_outpost_resolver_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"Name">> := string(),
%%   <<"OutpostArn">> := string(),
%%   <<"PreferredInstanceType">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_outpost_resolver_request() :: #{binary() => any()}.

%% Example:
%% delete_resolver_rule_request() :: #{
%%   <<"ResolverRuleId">> := string()
%% }
-type delete_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_query_log_config_response() :: #{
%%   <<"ResolverQueryLogConfigAssociation">> => resolver_query_log_config_association()
%% }
-type disassociate_resolver_query_log_config_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_association_response() :: #{
%%   <<"ResolverRuleAssociation">> => resolver_rule_association()
%% }
-type get_resolver_rule_association_response() :: #{binary() => any()}.

%% Example:
%% list_resolver_endpoints_response() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResolverEndpoints">> => list(resolver_endpoint())
%% }
-type list_resolver_endpoints_response() :: #{binary() => any()}.

%% Example:
%% firewall_rule_group_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ShareStatus">> => list(any())
%% }
-type firewall_rule_group_metadata() :: #{binary() => any()}.

%% Example:
%% put_resolver_rule_policy_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"ResolverRulePolicy">> := string()
%% }
-type put_resolver_rule_policy_request() :: #{binary() => any()}.

%% Example:
%% get_firewall_config_response() :: #{
%%   <<"FirewallConfig">> => firewall_config()
%% }
-type get_firewall_config_response() :: #{binary() => any()}.

%% Example:
%% delete_firewall_rule_group_request() :: #{
%%   <<"FirewallRuleGroupId">> := string()
%% }
-type delete_firewall_rule_group_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_config_request() :: #{
%%   <<"ResourceId">> := string()
%% }
-type get_resolver_config_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_endpoint_ip_addresses_response() :: #{
%%   <<"IpAddresses">> => list(ip_address_response()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_endpoint_ip_addresses_response() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_endpoint_ip_address_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type disassociate_resolver_endpoint_ip_address_response() :: #{binary() => any()}.

%% Example:
%% update_resolver_rule_response() :: #{
%%   <<"ResolverRule">> => resolver_rule()
%% }
-type update_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_firewall_rule_group_response() :: #{
%%   <<"FirewallRuleGroup">> => firewall_rule_group()
%% }
-type delete_firewall_rule_group_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% associate_resolver_rule_request() :: #{
%%   <<"Name">> => string(),
%%   <<"ResolverRuleId">> := string(),
%%   <<"VPCId">> := string()
%% }
-type associate_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% list_outpost_resolvers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutpostArn">> => string()
%% }
-type list_outpost_resolvers_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_policy_response() :: #{
%%   <<"ResolverRulePolicy">> => string()
%% }
-type get_resolver_rule_policy_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_configs_response() :: #{
%%   <<"FirewallConfigs">> => list(firewall_config()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_configs_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_rule_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_firewall_domain_list_response() :: #{
%%   <<"FirewallDomainList">> => firewall_domain_list()
%% }
-type create_firewall_domain_list_response() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% resolver_rule() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DelegationRecord">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ResolverEndpointId">> => string(),
%%   <<"RuleType">> => list(any()),
%%   <<"ShareStatus">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"TargetIps">> => list(target_address())
%% }
-type resolver_rule() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_request() :: #{
%%   <<"ResolverRuleId">> := string()
%% }
-type get_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% firewall_rule_group_association() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"FirewallRuleGroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ManagedOwnerName">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"MutationProtection">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"VpcId">> => string()
%% }
-type firewall_rule_group_association() :: #{binary() => any()}.

%% Example:
%% delete_resolver_endpoint_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type delete_resolver_endpoint_response() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_policy_request() :: #{
%%   <<"Arn">> := string()
%% }
-type get_firewall_rule_group_policy_request() :: #{binary() => any()}.

%% Example:
%% put_resolver_query_log_config_policy_response() :: #{
%%   <<"ReturnValue">> => boolean()
%% }
-type put_resolver_query_log_config_policy_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_config_request() :: #{
%%   <<"FirewallFailOpen">> := list(any()),
%%   <<"ResourceId">> := string()
%% }
-type update_firewall_config_request() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_association_request() :: #{
%%   <<"FirewallRuleGroupAssociationId">> := string()
%% }
-type get_firewall_rule_group_association_request() :: #{binary() => any()}.

%% Example:
%% put_firewall_rule_group_policy_response() :: #{
%%   <<"ReturnValue">> => boolean()
%% }
-type put_firewall_rule_group_policy_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% put_resolver_query_log_config_policy_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"ResolverQueryLogConfigPolicy">> := string()
%% }
-type put_resolver_query_log_config_policy_request() :: #{binary() => any()}.

%% Example:
%% get_outpost_resolver_response() :: #{
%%   <<"OutpostResolver">> => outpost_resolver()
%% }
-type get_outpost_resolver_response() :: #{binary() => any()}.

%% Example:
%% firewall_rule() :: #{
%%   <<"Action">> => list(any()),
%%   <<"BlockOverrideDnsType">> => list(any()),
%%   <<"BlockOverrideDomain">> => string(),
%%   <<"BlockOverrideTtl">> => integer(),
%%   <<"BlockResponse">> => list(any()),
%%   <<"ConfidenceThreshold">> => list(any()),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DnsThreatProtection">> => list(any()),
%%   <<"FirewallDomainListId">> => string(),
%%   <<"FirewallDomainRedirectionAction">> => list(any()),
%%   <<"FirewallRuleGroupId">> => string(),
%%   <<"FirewallThreatProtectionId">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Qtype">> => string()
%% }
-type firewall_rule() :: #{binary() => any()}.

%% Example:
%% disassociate_firewall_rule_group_response() :: #{
%%   <<"FirewallRuleGroupAssociation">> => firewall_rule_group_association()
%% }
-type disassociate_firewall_rule_group_response() :: #{binary() => any()}.

%% Example:
%% resolver_endpoint() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Direction">> => list(any()),
%%   <<"HostVPCId">> => string(),
%%   <<"Id">> => string(),
%%   <<"IpAddressCount">> => integer(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"PreferredInstanceType">> => string(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"ResolverEndpointType">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type resolver_endpoint() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_policy_request() :: #{
%%   <<"Arn">> := string()
%% }
-type get_resolver_rule_policy_request() :: #{binary() => any()}.

%% Example:
%% import_firewall_domains_response() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type import_firewall_domains_response() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% firewall_rule_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"RuleCount">> => integer(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type firewall_rule_group() :: #{binary() => any()}.

%% Example:
%% put_firewall_rule_group_policy_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"FirewallRuleGroupPolicy">> := string()
%% }
-type put_firewall_rule_group_policy_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResolverConfigs">> => list(resolver_config())
%% }
-type list_resolver_configs_response() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_rule_request() :: #{
%%   <<"ResolverRuleId">> := string(),
%%   <<"VPCId">> := string()
%% }
-type disassociate_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% import_firewall_domains_request() :: #{
%%   <<"DomainFileUrl">> := string(),
%%   <<"FirewallDomainListId">> := string(),
%%   <<"Operation">> := list(any())
%% }
-type import_firewall_domains_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_dnssec_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResolverDnssecConfigs">> => list(resolver_dnssec_config())
%% }
-type list_resolver_dnssec_configs_response() :: #{binary() => any()}.

%% Example:
%% delete_firewall_rule_request() :: #{
%%   <<"FirewallDomainListId">> => string(),
%%   <<"FirewallRuleGroupId">> := string(),
%%   <<"FirewallThreatProtectionId">> => string(),
%%   <<"Qtype">> => string()
%% }
-type delete_firewall_rule_request() :: #{binary() => any()}.

%% Example:
%% create_resolver_rule_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"DelegationRecord">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResolverEndpointId">> => string(),
%%   <<"RuleType">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetIps">> => list(target_address())
%% }
-type create_resolver_rule_request() :: #{binary() => any()}.

%% Example:
%% create_resolver_rule_response() :: #{
%%   <<"ResolverRule">> => resolver_rule()
%% }
-type create_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_resolver_endpoint_request() :: #{
%%   <<"ResolverEndpointId">> := string()
%% }
-type delete_resolver_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_query_log_config_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResolverQueryLogConfigAssociations">> => list(resolver_query_log_config_association()),
%%   <<"TotalCount">> => integer(),
%%   <<"TotalFilteredCount">> => integer()
%% }
-type list_resolver_query_log_config_associations_response() :: #{binary() => any()}.

%% Example:
%% create_firewall_rule_group_request() :: #{
%%   <<"CreatorRequestId">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_firewall_rule_group_request() :: #{binary() => any()}.

%% Example:
%% associate_firewall_rule_group_response() :: #{
%%   <<"FirewallRuleGroupAssociation">> => firewall_rule_group_association()
%% }
-type associate_firewall_rule_group_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_rule_groups_response() :: #{
%%   <<"FirewallRuleGroups">> => list(firewall_rule_group_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_domains_response() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type update_firewall_domains_response() :: #{binary() => any()}.

%% Example:
%% list_resolver_rules_response() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResolverRules">> => list(resolver_rule())
%% }
-type list_resolver_rules_response() :: #{binary() => any()}.

%% Example:
%% update_resolver_config_request() :: #{
%%   <<"AutodefinedReverseFlag">> := list(any()),
%%   <<"ResourceId">> := string()
%% }
-type update_resolver_config_request() :: #{binary() => any()}.

%% Example:
%% resource_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_exists_exception() :: #{binary() => any()}.

%% Example:
%% resolver_dnssec_config() :: #{
%%   <<"Id">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ValidationStatus">> => list(any())
%% }
-type resolver_dnssec_config() :: #{binary() => any()}.

%% Example:
%% unknown_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unknown_resource_exception() :: #{binary() => any()}.

%% Example:
%% delete_outpost_resolver_response() :: #{
%%   <<"OutpostResolver">> => outpost_resolver()
%% }
-type delete_outpost_resolver_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"FieldName">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% update_ip_address() :: #{
%%   <<"IpId">> => string(),
%%   <<"Ipv6">> => string()
%% }
-type update_ip_address() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_query_log_config_response() :: #{
%%   <<"ResolverQueryLogConfig">> => resolver_query_log_config()
%% }
-type get_resolver_query_log_config_response() :: #{binary() => any()}.

%% Example:
%% update_outpost_resolver_response() :: #{
%%   <<"OutpostResolver">> => outpost_resolver()
%% }
-type update_outpost_resolver_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% associate_resolver_endpoint_ip_address_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type associate_resolver_endpoint_ip_address_response() :: #{binary() => any()}.

%% Example:
%% create_outpost_resolver_response() :: #{
%%   <<"OutpostResolver">> => outpost_resolver()
%% }
-type create_outpost_resolver_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_query_log_config_policy_response() :: #{
%%   <<"ResolverQueryLogConfigPolicy">> => string()
%% }
-type get_resolver_query_log_config_policy_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_rule_group_associations_response() :: #{
%%   <<"FirewallRuleGroupAssociations">> => list(firewall_rule_group_association()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_rule_group_associations_response() :: #{binary() => any()}.

%% Example:
%% get_firewall_config_request() :: #{
%%   <<"ResourceId">> := string()
%% }
-type get_firewall_config_request() :: #{binary() => any()}.

%% Example:
%% get_resolver_rule_response() :: #{
%%   <<"ResolverRule">> => resolver_rule()
%% }
-type get_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% update_resolver_endpoint_request() :: #{
%%   <<"Name">> => string(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"ResolverEndpointId">> := string(),
%%   <<"ResolverEndpointType">> => list(any()),
%%   <<"UpdateIpAddresses">> => list(update_ip_address())
%% }
-type update_resolver_endpoint_request() :: #{binary() => any()}.

%% Example:
%% update_firewall_domains_request() :: #{
%%   <<"Domains">> := list(string()),
%%   <<"FirewallDomainListId">> := string(),
%%   <<"Operation">> := list(any())
%% }
-type update_firewall_domains_request() :: #{binary() => any()}.

%% Example:
%% associate_resolver_endpoint_ip_address_request() :: #{
%%   <<"IpAddress">> := ip_address_update(),
%%   <<"ResolverEndpointId">> := string()
%% }
-type associate_resolver_endpoint_ip_address_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_resolver_endpoint_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type create_resolver_endpoint_response() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_endpoint_ip_address_request() :: #{
%%   <<"IpAddress">> := ip_address_update(),
%%   <<"ResolverEndpointId">> := string()
%% }
-type disassociate_resolver_endpoint_ip_address_request() :: #{binary() => any()}.

%% Example:
%% target_address() :: #{
%%   <<"Ip">> => string(),
%%   <<"Ipv6">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"ServerNameIndication">> => string()
%% }
-type target_address() :: #{binary() => any()}.

%% Example:
%% create_firewall_rule_response() :: #{
%%   <<"FirewallRule">> => firewall_rule()
%% }
-type create_firewall_rule_response() :: #{binary() => any()}.

%% Example:
%% resolver_rule_config() :: #{
%%   <<"Name">> => string(),
%%   <<"ResolverEndpointId">> => string(),
%%   <<"TargetIps">> => list(target_address())
%% }
-type resolver_rule_config() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_resolver_query_log_config_request() :: #{
%%   <<"ResolverQueryLogConfigId">> := string()
%% }
-type get_resolver_query_log_config_request() :: #{binary() => any()}.

%% Example:
%% update_firewall_config_response() :: #{
%%   <<"FirewallConfig">> => firewall_config()
%% }
-type update_firewall_config_response() :: #{binary() => any()}.

%% Example:
%% list_resolver_query_log_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResolverQueryLogConfigs">> => list(resolver_query_log_config()),
%%   <<"TotalCount">> => integer(),
%%   <<"TotalFilteredCount">> => integer()
%% }
-type list_resolver_query_log_configs_response() :: #{binary() => any()}.

%% Example:
%% list_resolver_rule_associations_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_rule_associations_request() :: #{binary() => any()}.

%% Example:
%% firewall_domain_list_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ManagedOwnerName">> => string(),
%%   <<"Name">> => string()
%% }
-type firewall_domain_list_metadata() :: #{binary() => any()}.

%% Example:
%% get_resolver_query_log_config_policy_request() :: #{
%%   <<"Arn">> := string()
%% }
-type get_resolver_query_log_config_policy_request() :: #{binary() => any()}.

%% Example:
%% outpost_resolver() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"ModificationTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"PreferredInstanceType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type outpost_resolver() :: #{binary() => any()}.

%% Example:
%% list_resolver_query_log_config_associations_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_resolver_query_log_config_associations_request() :: #{binary() => any()}.

%% Example:
%% list_resolver_rule_associations_response() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResolverRuleAssociations">> => list(resolver_rule_association())
%% }
-type list_resolver_rule_associations_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_domains_response() :: #{
%%   <<"Domains">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_domains_response() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_group_policy_response() :: #{
%%   <<"FirewallRuleGroupPolicy">> => string()
%% }
-type get_firewall_rule_group_policy_response() :: #{binary() => any()}.

%% Example:
%% list_outpost_resolvers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OutpostResolvers">> => list(outpost_resolver())
%% }
-type list_outpost_resolvers_response() :: #{binary() => any()}.

%% Example:
%% get_outpost_resolver_request() :: #{
%%   <<"Id">> := string()
%% }
-type get_outpost_resolver_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resolver_rule_response() :: #{
%%   <<"ResolverRuleAssociation">> => resolver_rule_association()
%% }
-type disassociate_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% invalid_tag_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_tag_exception() :: #{binary() => any()}.

%% Example:
%% get_resolver_endpoint_response() :: #{
%%   <<"ResolverEndpoint">> => resolver_endpoint()
%% }
-type get_resolver_endpoint_response() :: #{binary() => any()}.

%% Example:
%% invalid_policy_document() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_policy_document() :: #{binary() => any()}.

%% Example:
%% list_resolver_endpoint_ip_addresses_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResolverEndpointId">> := string()
%% }
-type list_resolver_endpoint_ip_addresses_request() :: #{binary() => any()}.

%% Example:
%% ip_address_response() :: #{
%%   <<"CreationTime">> => string(),
%%   <<"Ip">> => string(),
%%   <<"IpId">> => string(),
%%   <<"Ipv6">> => string(),
%%   <<"ModificationTime">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type ip_address_response() :: #{binary() => any()}.

%% Example:
%% list_firewall_rule_group_associations_request() :: #{
%%   <<"FirewallRuleGroupId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"VpcId">> => string()
%% }
-type list_firewall_rule_group_associations_request() :: #{binary() => any()}.

%% Example:
%% resolver_query_log_config_association() :: #{
%%   <<"CreationTime">> => string(),
%%   <<"Error">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"ResolverQueryLogConfigId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type resolver_query_log_config_association() :: #{binary() => any()}.

%% Example:
%% delete_resolver_rule_response() :: #{
%%   <<"ResolverRule">> => resolver_rule()
%% }
-type delete_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_outpost_resolver_request() :: #{
%%   <<"Id">> := string()
%% }
-type delete_outpost_resolver_request() :: #{binary() => any()}.

%% Example:
%% update_resolver_dnssec_config_response() :: #{
%%   <<"ResolverDNSSECConfig">> => resolver_dnssec_config()
%% }
-type update_resolver_dnssec_config_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_config_response() :: #{
%%   <<"ResolverConfig">> => resolver_config()
%% }
-type get_resolver_config_response() :: #{binary() => any()}.

%% Example:
%% associate_resolver_rule_response() :: #{
%%   <<"ResolverRuleAssociation">> => resolver_rule_association()
%% }
-type associate_resolver_rule_response() :: #{binary() => any()}.

%% Example:
%% list_resolver_configs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resolver_configs_request() :: #{binary() => any()}.

-type associate_firewall_rule_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type associate_resolver_endpoint_ip_address_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type associate_resolver_query_log_config_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type associate_resolver_rule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception() | 
    resource_unavailable_exception().

-type create_firewall_domain_list_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type create_firewall_rule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_firewall_rule_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type create_outpost_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_resolver_endpoint_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_resolver_query_log_config_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_resolver_rule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception() | 
    resource_unavailable_exception().

-type delete_firewall_domain_list_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type delete_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_firewall_rule_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type delete_outpost_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type delete_resolver_endpoint_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_resolver_query_log_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_resolver_rule_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception() | 
    resource_in_use_exception().

-type disassociate_firewall_rule_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type disassociate_resolver_endpoint_ip_address_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type disassociate_resolver_query_log_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type disassociate_resolver_rule_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_firewall_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_firewall_domain_list_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_firewall_rule_group_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_firewall_rule_group_association_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_firewall_rule_group_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_outpost_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_dnssec_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_endpoint_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_query_log_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_query_log_config_association_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_query_log_config_policy_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unknown_resource_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type get_resolver_rule_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_rule_association_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_resolver_rule_policy_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unknown_resource_exception() | 
    internal_service_error_exception().

-type import_firewall_domains_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type list_firewall_configs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type list_firewall_domain_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type list_firewall_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_firewall_rule_group_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type list_firewall_rule_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type list_firewall_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_outpost_resolvers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_resolver_configs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_dnssec_configs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_endpoint_ip_addresses_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_resolver_endpoints_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_query_log_config_associations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_query_log_configs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_rule_associations_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_resolver_rules_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type put_firewall_rule_group_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type put_resolver_query_log_config_policy_errors() ::
    invalid_policy_document() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unknown_resource_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type put_resolver_rule_policy_errors() ::
    invalid_policy_document() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unknown_resource_exception() | 
    internal_service_error_exception().

-type tag_resource_errors() ::
    invalid_tag_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_firewall_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_firewall_domains_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_firewall_rule_group_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_outpost_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_resolver_config_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception() | 
    resource_unavailable_exception().

-type update_resolver_dnssec_config_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_resolver_endpoint_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_resolver_rule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception() | 
    resource_unavailable_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a `FirewallRuleGroup' with a VPC, to provide DNS
%% filtering for the VPC.
-spec associate_firewall_rule_group(aws_client:aws_client(), associate_firewall_rule_group_request()) ->
    {ok, associate_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, associate_firewall_rule_group_errors(), tuple()}.
associate_firewall_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_firewall_rule_group(Client, Input, []).

-spec associate_firewall_rule_group(aws_client:aws_client(), associate_firewall_rule_group_request(), proplists:proplist()) ->
    {ok, associate_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, associate_firewall_rule_group_errors(), tuple()}.
associate_firewall_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFirewallRuleGroup">>, Input, Options).

%% @doc Adds IP addresses to an inbound or an outbound Resolver endpoint.
%%
%% If you want to add more than one IP address,
%% submit one `AssociateResolverEndpointIpAddress' request for each IP
%% address.
%%
%% To remove an IP address from an endpoint, see
%% DisassociateResolverEndpointIpAddress:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html.
-spec associate_resolver_endpoint_ip_address(aws_client:aws_client(), associate_resolver_endpoint_ip_address_request()) ->
    {ok, associate_resolver_endpoint_ip_address_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_endpoint_ip_address_errors(), tuple()}.
associate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_endpoint_ip_address(Client, Input, []).

-spec associate_resolver_endpoint_ip_address(aws_client:aws_client(), associate_resolver_endpoint_ip_address_request(), proplists:proplist()) ->
    {ok, associate_resolver_endpoint_ip_address_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_endpoint_ip_address_errors(), tuple()}.
associate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Associates an Amazon VPC with a specified query logging
%% configuration.
%%
%% Route 53 Resolver logs DNS queries that originate in all of the Amazon
%% VPCs
%% that are associated with a specified query logging configuration. To
%% associate more than one VPC with a configuration, submit one
%% `AssociateResolverQueryLogConfig'
%% request for each VPC.
%%
%% The VPCs that you associate with a query logging configuration must be in
%% the same Region as the configuration.
%%
%% To remove a VPC from a query logging configuration, see
%% DisassociateResolverQueryLogConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html.
-spec associate_resolver_query_log_config(aws_client:aws_client(), associate_resolver_query_log_config_request()) ->
    {ok, associate_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_query_log_config_errors(), tuple()}.
associate_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_query_log_config(Client, Input, []).

-spec associate_resolver_query_log_config(aws_client:aws_client(), associate_resolver_query_log_config_request(), proplists:proplist()) ->
    {ok, associate_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_query_log_config_errors(), tuple()}.
associate_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverQueryLogConfig">>, Input, Options).

%% @doc Associates a Resolver rule with a VPC.
%%
%% When you associate a rule with a VPC, Resolver forwards all DNS queries
%% for the domain name that is specified in the rule and that originate in
%% the VPC. The queries are forwarded to the
%% IP addresses for the DNS resolvers that are specified in the rule. For
%% more information about rules, see
%% CreateResolverRule:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html.
-spec associate_resolver_rule(aws_client:aws_client(), associate_resolver_rule_request()) ->
    {ok, associate_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_rule_errors(), tuple()}.
associate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resolver_rule(Client, Input, []).

-spec associate_resolver_rule(aws_client:aws_client(), associate_resolver_rule_request(), proplists:proplist()) ->
    {ok, associate_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, associate_resolver_rule_errors(), tuple()}.
associate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResolverRule">>, Input, Options).

%% @doc Creates an empty firewall domain list for use in DNS Firewall rules.
%%
%% You can populate the domains for the new list with a file, using
%% `ImportFirewallDomains', or with domain strings, using
%% `UpdateFirewallDomains'.
-spec create_firewall_domain_list(aws_client:aws_client(), create_firewall_domain_list_request()) ->
    {ok, create_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_domain_list_errors(), tuple()}.
create_firewall_domain_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall_domain_list(Client, Input, []).

-spec create_firewall_domain_list(aws_client:aws_client(), create_firewall_domain_list_request(), proplists:proplist()) ->
    {ok, create_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_domain_list_errors(), tuple()}.
create_firewall_domain_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewallDomainList">>, Input, Options).

%% @doc Creates a single DNS Firewall rule in the specified rule group, using
%% the specified domain list.
-spec create_firewall_rule(aws_client:aws_client(), create_firewall_rule_request()) ->
    {ok, create_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_errors(), tuple()}.
create_firewall_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall_rule(Client, Input, []).

-spec create_firewall_rule(aws_client:aws_client(), create_firewall_rule_request(), proplists:proplist()) ->
    {ok, create_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_errors(), tuple()}.
create_firewall_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewallRule">>, Input, Options).

%% @doc Creates an empty DNS Firewall rule group for filtering DNS network
%% traffic in a VPC.
%%
%% You can add rules to the new rule group
%% by calling `CreateFirewallRule'.
-spec create_firewall_rule_group(aws_client:aws_client(), create_firewall_rule_group_request()) ->
    {ok, create_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_group_errors(), tuple()}.
create_firewall_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall_rule_group(Client, Input, []).

-spec create_firewall_rule_group(aws_client:aws_client(), create_firewall_rule_group_request(), proplists:proplist()) ->
    {ok, create_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_group_errors(), tuple()}.
create_firewall_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewallRuleGroup">>, Input, Options).

%% @doc Creates a Route 53 Resolver on an Outpost.
-spec create_outpost_resolver(aws_client:aws_client(), create_outpost_resolver_request()) ->
    {ok, create_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, create_outpost_resolver_errors(), tuple()}.
create_outpost_resolver(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_outpost_resolver(Client, Input, []).

-spec create_outpost_resolver(aws_client:aws_client(), create_outpost_resolver_request(), proplists:proplist()) ->
    {ok, create_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, create_outpost_resolver_errors(), tuple()}.
create_outpost_resolver(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOutpostResolver">>, Input, Options).

%% @doc Creates a Resolver endpoint.
%%
%% There are two types of Resolver endpoints, inbound and outbound:
%%
%% An inbound Resolver endpoint forwards DNS queries to the DNS service for a
%% VPC
%% from your network.
%%
%% An outbound Resolver endpoint forwards DNS queries from the DNS service
%% for a VPC
%% to your network.
-spec create_resolver_endpoint(aws_client:aws_client(), create_resolver_endpoint_request()) ->
    {ok, create_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_endpoint_errors(), tuple()}.
create_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_endpoint(Client, Input, []).

-spec create_resolver_endpoint(aws_client:aws_client(), create_resolver_endpoint_request(), proplists:proplist()) ->
    {ok, create_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_endpoint_errors(), tuple()}.
create_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverEndpoint">>, Input, Options).

%% @doc Creates a Resolver query logging configuration, which defines where
%% you want Resolver to save DNS query logs that originate in your VPCs.
%%
%% Resolver can log queries only for VPCs that are in the same Region as the
%% query logging configuration.
%%
%% To specify which VPCs you want to log queries for, you use
%% `AssociateResolverQueryLogConfig'. For more information, see
%% AssociateResolverQueryLogConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html.
%%
%% You can optionally use Resource Access Manager (RAM) to share a query
%% logging configuration with other Amazon Web Services accounts. The other
%% accounts
%% can then associate VPCs with the configuration. The query logs that
%% Resolver creates for a configuration include all DNS queries that
%% originate in all
%% VPCs that are associated with the configuration.
-spec create_resolver_query_log_config(aws_client:aws_client(), create_resolver_query_log_config_request()) ->
    {ok, create_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_query_log_config_errors(), tuple()}.
create_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_query_log_config(Client, Input, []).

-spec create_resolver_query_log_config(aws_client:aws_client(), create_resolver_query_log_config_request(), proplists:proplist()) ->
    {ok, create_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_query_log_config_errors(), tuple()}.
create_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverQueryLogConfig">>, Input, Options).

%% @doc For DNS queries that originate in your VPCs, specifies which Resolver
%% endpoint the queries pass through,
%% one domain name that you want to forward to your network, and the IP
%% addresses of the DNS resolvers in your network.
-spec create_resolver_rule(aws_client:aws_client(), create_resolver_rule_request()) ->
    {ok, create_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_rule_errors(), tuple()}.
create_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resolver_rule(Client, Input, []).

-spec create_resolver_rule(aws_client:aws_client(), create_resolver_rule_request(), proplists:proplist()) ->
    {ok, create_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_rule_errors(), tuple()}.
create_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResolverRule">>, Input, Options).

%% @doc Deletes the specified domain list.
-spec delete_firewall_domain_list(aws_client:aws_client(), delete_firewall_domain_list_request()) ->
    {ok, delete_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_domain_list_errors(), tuple()}.
delete_firewall_domain_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_domain_list(Client, Input, []).

-spec delete_firewall_domain_list(aws_client:aws_client(), delete_firewall_domain_list_request(), proplists:proplist()) ->
    {ok, delete_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_domain_list_errors(), tuple()}.
delete_firewall_domain_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallDomainList">>, Input, Options).

%% @doc Deletes the specified firewall rule.
-spec delete_firewall_rule(aws_client:aws_client(), delete_firewall_rule_request()) ->
    {ok, delete_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_errors(), tuple()}.
delete_firewall_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_rule(Client, Input, []).

-spec delete_firewall_rule(aws_client:aws_client(), delete_firewall_rule_request(), proplists:proplist()) ->
    {ok, delete_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_errors(), tuple()}.
delete_firewall_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallRule">>, Input, Options).

%% @doc Deletes the specified firewall rule group.
-spec delete_firewall_rule_group(aws_client:aws_client(), delete_firewall_rule_group_request()) ->
    {ok, delete_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_group_errors(), tuple()}.
delete_firewall_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_rule_group(Client, Input, []).

-spec delete_firewall_rule_group(aws_client:aws_client(), delete_firewall_rule_group_request(), proplists:proplist()) ->
    {ok, delete_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_group_errors(), tuple()}.
delete_firewall_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallRuleGroup">>, Input, Options).

%% @doc Deletes a Resolver on the Outpost.
-spec delete_outpost_resolver(aws_client:aws_client(), delete_outpost_resolver_request()) ->
    {ok, delete_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, delete_outpost_resolver_errors(), tuple()}.
delete_outpost_resolver(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_outpost_resolver(Client, Input, []).

-spec delete_outpost_resolver(aws_client:aws_client(), delete_outpost_resolver_request(), proplists:proplist()) ->
    {ok, delete_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, delete_outpost_resolver_errors(), tuple()}.
delete_outpost_resolver(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOutpostResolver">>, Input, Options).

%% @doc Deletes a Resolver endpoint.
%%
%% The effect of deleting a Resolver endpoint depends on whether it's an
%% inbound or an outbound
%% Resolver endpoint:
%%
%% Inbound: DNS queries from your network are no longer routed
%% to the DNS service for the specified VPC.
%%
%% Outbound: DNS queries from a VPC are no longer routed to your network.
-spec delete_resolver_endpoint(aws_client:aws_client(), delete_resolver_endpoint_request()) ->
    {ok, delete_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_endpoint_errors(), tuple()}.
delete_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_endpoint(Client, Input, []).

-spec delete_resolver_endpoint(aws_client:aws_client(), delete_resolver_endpoint_request(), proplists:proplist()) ->
    {ok, delete_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_endpoint_errors(), tuple()}.
delete_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverEndpoint">>, Input, Options).

%% @doc Deletes a query logging configuration.
%%
%% When you delete a configuration, Resolver stops logging DNS queries for
%% all of the Amazon VPCs that are
%% associated with the configuration. This also applies if the query logging
%% configuration is shared with other Amazon Web Services accounts, and
%% the other accounts have associated VPCs with the shared configuration.
%%
%% Before you can delete a query logging configuration, you must first
%% disassociate all VPCs from the configuration. See
%% DisassociateResolverQueryLogConfig:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html.
%%
%% If you used Resource Access Manager (RAM) to share a query logging
%% configuration with other accounts, you must stop sharing
%% the configuration before you can delete a configuration. The accounts that
%% you shared the configuration with can first disassociate VPCs
%% that they associated with the configuration, but that's not necessary.
%% If you stop sharing the configuration, those VPCs are automatically
%% disassociated from the configuration.
-spec delete_resolver_query_log_config(aws_client:aws_client(), delete_resolver_query_log_config_request()) ->
    {ok, delete_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_query_log_config_errors(), tuple()}.
delete_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_query_log_config(Client, Input, []).

-spec delete_resolver_query_log_config(aws_client:aws_client(), delete_resolver_query_log_config_request(), proplists:proplist()) ->
    {ok, delete_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_query_log_config_errors(), tuple()}.
delete_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverQueryLogConfig">>, Input, Options).

%% @doc Deletes a Resolver rule.
%%
%% Before you can delete a Resolver rule, you must disassociate it from all
%% the VPCs that you
%% associated the Resolver rule with. For more information, see
%% DisassociateResolverRule:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html.
-spec delete_resolver_rule(aws_client:aws_client(), delete_resolver_rule_request()) ->
    {ok, delete_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_rule_errors(), tuple()}.
delete_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resolver_rule(Client, Input, []).

-spec delete_resolver_rule(aws_client:aws_client(), delete_resolver_rule_request(), proplists:proplist()) ->
    {ok, delete_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_rule_errors(), tuple()}.
delete_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResolverRule">>, Input, Options).

%% @doc Disassociates a `FirewallRuleGroup' from a VPC, to remove DNS
%% filtering from the VPC.
-spec disassociate_firewall_rule_group(aws_client:aws_client(), disassociate_firewall_rule_group_request()) ->
    {ok, disassociate_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_firewall_rule_group_errors(), tuple()}.
disassociate_firewall_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_firewall_rule_group(Client, Input, []).

-spec disassociate_firewall_rule_group(aws_client:aws_client(), disassociate_firewall_rule_group_request(), proplists:proplist()) ->
    {ok, disassociate_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_firewall_rule_group_errors(), tuple()}.
disassociate_firewall_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFirewallRuleGroup">>, Input, Options).

%% @doc Removes IP addresses from an inbound or an outbound Resolver
%% endpoint.
%%
%% If you want to remove more than one IP address,
%% submit one `DisassociateResolverEndpointIpAddress' request for each IP
%% address.
%%
%% To add an IP address to an endpoint, see
%% AssociateResolverEndpointIpAddress:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html.
-spec disassociate_resolver_endpoint_ip_address(aws_client:aws_client(), disassociate_resolver_endpoint_ip_address_request()) ->
    {ok, disassociate_resolver_endpoint_ip_address_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_endpoint_ip_address_errors(), tuple()}.
disassociate_resolver_endpoint_ip_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_endpoint_ip_address(Client, Input, []).

-spec disassociate_resolver_endpoint_ip_address(aws_client:aws_client(), disassociate_resolver_endpoint_ip_address_request(), proplists:proplist()) ->
    {ok, disassociate_resolver_endpoint_ip_address_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_endpoint_ip_address_errors(), tuple()}.
disassociate_resolver_endpoint_ip_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverEndpointIpAddress">>, Input, Options).

%% @doc Disassociates a VPC from a query logging configuration.
%%
%% Before you can delete a query logging configuration, you must first
%% disassociate all VPCs
%% from the configuration. If you used Resource Access Manager (RAM) to share
%% a
%% query logging configuration with other accounts, VPCs can be disassociated
%% from the
%% configuration in the following ways:
%%
%% The accounts that you shared the configuration with can disassociate VPCs
%% from the configuration.
%%
%% You can stop sharing the configuration.
-spec disassociate_resolver_query_log_config(aws_client:aws_client(), disassociate_resolver_query_log_config_request()) ->
    {ok, disassociate_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_query_log_config_errors(), tuple()}.
disassociate_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_query_log_config(Client, Input, []).

-spec disassociate_resolver_query_log_config(aws_client:aws_client(), disassociate_resolver_query_log_config_request(), proplists:proplist()) ->
    {ok, disassociate_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_query_log_config_errors(), tuple()}.
disassociate_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverQueryLogConfig">>, Input, Options).

%% @doc Removes the association between a specified Resolver rule and a
%% specified VPC.
%%
%% If you disassociate a Resolver rule from a VPC, Resolver stops forwarding
%% DNS queries for the
%% domain name that you specified in the Resolver rule.
-spec disassociate_resolver_rule(aws_client:aws_client(), disassociate_resolver_rule_request()) ->
    {ok, disassociate_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_rule_errors(), tuple()}.
disassociate_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resolver_rule(Client, Input, []).

-spec disassociate_resolver_rule(aws_client:aws_client(), disassociate_resolver_rule_request(), proplists:proplist()) ->
    {ok, disassociate_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resolver_rule_errors(), tuple()}.
disassociate_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResolverRule">>, Input, Options).

%% @doc Retrieves the configuration of the firewall behavior provided by DNS
%% Firewall for a
%% single VPC from Amazon Virtual Private Cloud (Amazon VPC).
-spec get_firewall_config(aws_client:aws_client(), get_firewall_config_request()) ->
    {ok, get_firewall_config_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_config_errors(), tuple()}.
get_firewall_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_firewall_config(Client, Input, []).

-spec get_firewall_config(aws_client:aws_client(), get_firewall_config_request(), proplists:proplist()) ->
    {ok, get_firewall_config_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_config_errors(), tuple()}.
get_firewall_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFirewallConfig">>, Input, Options).

%% @doc Retrieves the specified firewall domain list.
-spec get_firewall_domain_list(aws_client:aws_client(), get_firewall_domain_list_request()) ->
    {ok, get_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_domain_list_errors(), tuple()}.
get_firewall_domain_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_firewall_domain_list(Client, Input, []).

-spec get_firewall_domain_list(aws_client:aws_client(), get_firewall_domain_list_request(), proplists:proplist()) ->
    {ok, get_firewall_domain_list_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_domain_list_errors(), tuple()}.
get_firewall_domain_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFirewallDomainList">>, Input, Options).

%% @doc Retrieves the specified firewall rule group.
-spec get_firewall_rule_group(aws_client:aws_client(), get_firewall_rule_group_request()) ->
    {ok, get_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_errors(), tuple()}.
get_firewall_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_firewall_rule_group(Client, Input, []).

-spec get_firewall_rule_group(aws_client:aws_client(), get_firewall_rule_group_request(), proplists:proplist()) ->
    {ok, get_firewall_rule_group_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_errors(), tuple()}.
get_firewall_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFirewallRuleGroup">>, Input, Options).

%% @doc Retrieves a firewall rule group association, which enables DNS
%% filtering for a VPC with one rule group.
%%
%% A VPC can have more than one firewall rule group association, and a rule
%% group can be associated with more than one VPC.
-spec get_firewall_rule_group_association(aws_client:aws_client(), get_firewall_rule_group_association_request()) ->
    {ok, get_firewall_rule_group_association_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_association_errors(), tuple()}.
get_firewall_rule_group_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_firewall_rule_group_association(Client, Input, []).

-spec get_firewall_rule_group_association(aws_client:aws_client(), get_firewall_rule_group_association_request(), proplists:proplist()) ->
    {ok, get_firewall_rule_group_association_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_association_errors(), tuple()}.
get_firewall_rule_group_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFirewallRuleGroupAssociation">>, Input, Options).

%% @doc Returns the Identity and Access Management (Amazon Web Services IAM)
%% policy for sharing the
%% specified rule group.
%%
%% You can use the policy to share the rule group using Resource Access
%% Manager (RAM).
-spec get_firewall_rule_group_policy(aws_client:aws_client(), get_firewall_rule_group_policy_request()) ->
    {ok, get_firewall_rule_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_policy_errors(), tuple()}.
get_firewall_rule_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_firewall_rule_group_policy(Client, Input, []).

-spec get_firewall_rule_group_policy(aws_client:aws_client(), get_firewall_rule_group_policy_request(), proplists:proplist()) ->
    {ok, get_firewall_rule_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_group_policy_errors(), tuple()}.
get_firewall_rule_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFirewallRuleGroupPolicy">>, Input, Options).

%% @doc Gets information about a specified Resolver on the Outpost, such as
%% its instance count and
%% type, name, and the current status of the Resolver.
-spec get_outpost_resolver(aws_client:aws_client(), get_outpost_resolver_request()) ->
    {ok, get_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, get_outpost_resolver_errors(), tuple()}.
get_outpost_resolver(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_outpost_resolver(Client, Input, []).

-spec get_outpost_resolver(aws_client:aws_client(), get_outpost_resolver_request(), proplists:proplist()) ->
    {ok, get_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, get_outpost_resolver_errors(), tuple()}.
get_outpost_resolver(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOutpostResolver">>, Input, Options).

%% @doc Retrieves the behavior configuration of Route 53 Resolver behavior
%% for a single VPC from
%% Amazon Virtual Private Cloud.
-spec get_resolver_config(aws_client:aws_client(), get_resolver_config_request()) ->
    {ok, get_resolver_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_config_errors(), tuple()}.
get_resolver_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_config(Client, Input, []).

-spec get_resolver_config(aws_client:aws_client(), get_resolver_config_request(), proplists:proplist()) ->
    {ok, get_resolver_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_config_errors(), tuple()}.
get_resolver_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverConfig">>, Input, Options).

%% @doc Gets DNSSEC validation information for a specified resource.
-spec get_resolver_dnssec_config(aws_client:aws_client(), get_resolver_dnssec_config_request()) ->
    {ok, get_resolver_dnssec_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_dnssec_config_errors(), tuple()}.
get_resolver_dnssec_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_dnssec_config(Client, Input, []).

-spec get_resolver_dnssec_config(aws_client:aws_client(), get_resolver_dnssec_config_request(), proplists:proplist()) ->
    {ok, get_resolver_dnssec_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_dnssec_config_errors(), tuple()}.
get_resolver_dnssec_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverDnssecConfig">>, Input, Options).

%% @doc Gets information about a specified Resolver endpoint, such as whether
%% it's an inbound or an outbound Resolver endpoint, and the
%% current status of the endpoint.
-spec get_resolver_endpoint(aws_client:aws_client(), get_resolver_endpoint_request()) ->
    {ok, get_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_endpoint_errors(), tuple()}.
get_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_endpoint(Client, Input, []).

-spec get_resolver_endpoint(aws_client:aws_client(), get_resolver_endpoint_request(), proplists:proplist()) ->
    {ok, get_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_endpoint_errors(), tuple()}.
get_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverEndpoint">>, Input, Options).

%% @doc Gets information about a specified Resolver query logging
%% configuration, such as the number of VPCs that the configuration
%% is logging queries for and the location that logs are sent to.
-spec get_resolver_query_log_config(aws_client:aws_client(), get_resolver_query_log_config_request()) ->
    {ok, get_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_errors(), tuple()}.
get_resolver_query_log_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config(Client, Input, []).

-spec get_resolver_query_log_config(aws_client:aws_client(), get_resolver_query_log_config_request(), proplists:proplist()) ->
    {ok, get_resolver_query_log_config_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_errors(), tuple()}.
get_resolver_query_log_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfig">>, Input, Options).

%% @doc Gets information about a specified association between a Resolver
%% query logging configuration and an Amazon VPC.
%%
%% When you associate a VPC
%% with a query logging configuration, Resolver logs DNS queries that
%% originate in that VPC.
-spec get_resolver_query_log_config_association(aws_client:aws_client(), get_resolver_query_log_config_association_request()) ->
    {ok, get_resolver_query_log_config_association_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_association_errors(), tuple()}.
get_resolver_query_log_config_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config_association(Client, Input, []).

-spec get_resolver_query_log_config_association(aws_client:aws_client(), get_resolver_query_log_config_association_request(), proplists:proplist()) ->
    {ok, get_resolver_query_log_config_association_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_association_errors(), tuple()}.
get_resolver_query_log_config_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfigAssociation">>, Input, Options).

%% @doc Gets information about a query logging policy.
%%
%% A query logging policy specifies the Resolver query logging
%% operations and resources that you want to allow another Amazon Web
%% Services account to be able to use.
-spec get_resolver_query_log_config_policy(aws_client:aws_client(), get_resolver_query_log_config_policy_request()) ->
    {ok, get_resolver_query_log_config_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_policy_errors(), tuple()}.
get_resolver_query_log_config_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_query_log_config_policy(Client, Input, []).

-spec get_resolver_query_log_config_policy(aws_client:aws_client(), get_resolver_query_log_config_policy_request(), proplists:proplist()) ->
    {ok, get_resolver_query_log_config_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_query_log_config_policy_errors(), tuple()}.
get_resolver_query_log_config_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverQueryLogConfigPolicy">>, Input, Options).

%% @doc Gets information about a specified Resolver rule, such as the domain
%% name that the rule forwards DNS queries for and the ID of the
%% outbound Resolver endpoint that the rule is associated with.
-spec get_resolver_rule(aws_client:aws_client(), get_resolver_rule_request()) ->
    {ok, get_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_errors(), tuple()}.
get_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule(Client, Input, []).

-spec get_resolver_rule(aws_client:aws_client(), get_resolver_rule_request(), proplists:proplist()) ->
    {ok, get_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_errors(), tuple()}.
get_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRule">>, Input, Options).

%% @doc Gets information about an association between a specified Resolver
%% rule and a VPC.
%%
%% You associate a Resolver rule and a VPC using
%% AssociateResolverRule:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html.
-spec get_resolver_rule_association(aws_client:aws_client(), get_resolver_rule_association_request()) ->
    {ok, get_resolver_rule_association_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_association_errors(), tuple()}.
get_resolver_rule_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_association(Client, Input, []).

-spec get_resolver_rule_association(aws_client:aws_client(), get_resolver_rule_association_request(), proplists:proplist()) ->
    {ok, get_resolver_rule_association_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_association_errors(), tuple()}.
get_resolver_rule_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRuleAssociation">>, Input, Options).

%% @doc Gets information about the Resolver rule policy for a specified rule.
%%
%% A Resolver rule policy includes the rule that you want to share
%% with another account, the account that you want to share the rule with,
%% and the Resolver operations that you want to allow the account to use.
-spec get_resolver_rule_policy(aws_client:aws_client(), get_resolver_rule_policy_request()) ->
    {ok, get_resolver_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_policy_errors(), tuple()}.
get_resolver_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resolver_rule_policy(Client, Input, []).

-spec get_resolver_rule_policy(aws_client:aws_client(), get_resolver_rule_policy_request(), proplists:proplist()) ->
    {ok, get_resolver_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_rule_policy_errors(), tuple()}.
get_resolver_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResolverRulePolicy">>, Input, Options).

%% @doc Imports domain names from a file into a domain list, for use in a DNS
%% firewall rule group.
%%
%% Each domain specification in your domain list must satisfy the following
%% requirements:
%%
%% It can optionally start with `*' (asterisk).
%%
%% With the exception of the optional starting asterisk, it must only contain
%% the following characters: `A-Z', `a-z',
%% `0-9', `-' (hyphen).
%%
%% It must be from 1-255 characters in length.
-spec import_firewall_domains(aws_client:aws_client(), import_firewall_domains_request()) ->
    {ok, import_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, import_firewall_domains_errors(), tuple()}.
import_firewall_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_firewall_domains(Client, Input, []).

-spec import_firewall_domains(aws_client:aws_client(), import_firewall_domains_request(), proplists:proplist()) ->
    {ok, import_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, import_firewall_domains_errors(), tuple()}.
import_firewall_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportFirewallDomains">>, Input, Options).

%% @doc Retrieves the firewall configurations that you have defined.
%%
%% DNS Firewall uses the configurations to manage firewall behavior for your
%% VPCs.
%%
%% A single call might return only a partial list of the configurations. For
%% information, see `MaxResults'.
-spec list_firewall_configs(aws_client:aws_client(), list_firewall_configs_request()) ->
    {ok, list_firewall_configs_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_configs_errors(), tuple()}.
list_firewall_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_configs(Client, Input, []).

-spec list_firewall_configs(aws_client:aws_client(), list_firewall_configs_request(), proplists:proplist()) ->
    {ok, list_firewall_configs_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_configs_errors(), tuple()}.
list_firewall_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallConfigs">>, Input, Options).

%% @doc Retrieves the firewall domain lists that you have defined.
%%
%% For each firewall domain list, you can retrieve the domains that are
%% defined for a list by calling `ListFirewallDomains'.
%%
%% A single call to this list operation might return only a partial list of
%% the domain lists. For information, see `MaxResults'.
-spec list_firewall_domain_lists(aws_client:aws_client(), list_firewall_domain_lists_request()) ->
    {ok, list_firewall_domain_lists_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_domain_lists_errors(), tuple()}.
list_firewall_domain_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_domain_lists(Client, Input, []).

-spec list_firewall_domain_lists(aws_client:aws_client(), list_firewall_domain_lists_request(), proplists:proplist()) ->
    {ok, list_firewall_domain_lists_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_domain_lists_errors(), tuple()}.
list_firewall_domain_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallDomainLists">>, Input, Options).

%% @doc Retrieves the domains that you have defined for the specified
%% firewall domain list.
%%
%% A single call might return only a partial list of the domains. For
%% information, see `MaxResults'.
-spec list_firewall_domains(aws_client:aws_client(), list_firewall_domains_request()) ->
    {ok, list_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_domains_errors(), tuple()}.
list_firewall_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_domains(Client, Input, []).

-spec list_firewall_domains(aws_client:aws_client(), list_firewall_domains_request(), proplists:proplist()) ->
    {ok, list_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_domains_errors(), tuple()}.
list_firewall_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallDomains">>, Input, Options).

%% @doc Retrieves the firewall rule group associations that you have defined.
%%
%% Each association enables DNS filtering for a VPC with one rule group.
%%
%% A single call might return only a partial list of the associations. For
%% information, see `MaxResults'.
-spec list_firewall_rule_group_associations(aws_client:aws_client(), list_firewall_rule_group_associations_request()) ->
    {ok, list_firewall_rule_group_associations_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rule_group_associations_errors(), tuple()}.
list_firewall_rule_group_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_rule_group_associations(Client, Input, []).

-spec list_firewall_rule_group_associations(aws_client:aws_client(), list_firewall_rule_group_associations_request(), proplists:proplist()) ->
    {ok, list_firewall_rule_group_associations_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rule_group_associations_errors(), tuple()}.
list_firewall_rule_group_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallRuleGroupAssociations">>, Input, Options).

%% @doc Retrieves the minimal high-level information for the rule groups that
%% you have defined.
%%
%% A single call might return only a partial list of the rule groups. For
%% information, see `MaxResults'.
-spec list_firewall_rule_groups(aws_client:aws_client(), list_firewall_rule_groups_request()) ->
    {ok, list_firewall_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rule_groups_errors(), tuple()}.
list_firewall_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_rule_groups(Client, Input, []).

-spec list_firewall_rule_groups(aws_client:aws_client(), list_firewall_rule_groups_request(), proplists:proplist()) ->
    {ok, list_firewall_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rule_groups_errors(), tuple()}.
list_firewall_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallRuleGroups">>, Input, Options).

%% @doc Retrieves the firewall rules that you have defined for the specified
%% firewall rule group.
%%
%% DNS Firewall uses the rules in a rule group to filter DNS network traffic
%% for a VPC.
%%
%% A single call might return only a partial list of the rules. For
%% information, see `MaxResults'.
-spec list_firewall_rules(aws_client:aws_client(), list_firewall_rules_request()) ->
    {ok, list_firewall_rules_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rules_errors(), tuple()}.
list_firewall_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_rules(Client, Input, []).

-spec list_firewall_rules(aws_client:aws_client(), list_firewall_rules_request(), proplists:proplist()) ->
    {ok, list_firewall_rules_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_rules_errors(), tuple()}.
list_firewall_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallRules">>, Input, Options).

%% @doc Lists all the Resolvers on Outposts that were created using the
%% current Amazon Web Services account.
-spec list_outpost_resolvers(aws_client:aws_client(), list_outpost_resolvers_request()) ->
    {ok, list_outpost_resolvers_response(), tuple()} |
    {error, any()} |
    {error, list_outpost_resolvers_errors(), tuple()}.
list_outpost_resolvers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_outpost_resolvers(Client, Input, []).

-spec list_outpost_resolvers(aws_client:aws_client(), list_outpost_resolvers_request(), proplists:proplist()) ->
    {ok, list_outpost_resolvers_response(), tuple()} |
    {error, any()} |
    {error, list_outpost_resolvers_errors(), tuple()}.
list_outpost_resolvers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOutpostResolvers">>, Input, Options).

%% @doc Retrieves the Resolver configurations that you have defined.
%%
%% Route 53 Resolver uses the configurations to manage DNS resolution
%% behavior for your VPCs.
-spec list_resolver_configs(aws_client:aws_client(), list_resolver_configs_request()) ->
    {ok, list_resolver_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_configs_errors(), tuple()}.
list_resolver_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_configs(Client, Input, []).

-spec list_resolver_configs(aws_client:aws_client(), list_resolver_configs_request(), proplists:proplist()) ->
    {ok, list_resolver_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_configs_errors(), tuple()}.
list_resolver_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverConfigs">>, Input, Options).

%% @doc Lists the configurations for DNSSEC validation that are associated
%% with the current Amazon Web Services account.
-spec list_resolver_dnssec_configs(aws_client:aws_client(), list_resolver_dnssec_configs_request()) ->
    {ok, list_resolver_dnssec_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_dnssec_configs_errors(), tuple()}.
list_resolver_dnssec_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_dnssec_configs(Client, Input, []).

-spec list_resolver_dnssec_configs(aws_client:aws_client(), list_resolver_dnssec_configs_request(), proplists:proplist()) ->
    {ok, list_resolver_dnssec_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_dnssec_configs_errors(), tuple()}.
list_resolver_dnssec_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverDnssecConfigs">>, Input, Options).

%% @doc Gets the IP addresses for a specified Resolver endpoint.
-spec list_resolver_endpoint_ip_addresses(aws_client:aws_client(), list_resolver_endpoint_ip_addresses_request()) ->
    {ok, list_resolver_endpoint_ip_addresses_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_endpoint_ip_addresses_errors(), tuple()}.
list_resolver_endpoint_ip_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoint_ip_addresses(Client, Input, []).

-spec list_resolver_endpoint_ip_addresses(aws_client:aws_client(), list_resolver_endpoint_ip_addresses_request(), proplists:proplist()) ->
    {ok, list_resolver_endpoint_ip_addresses_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_endpoint_ip_addresses_errors(), tuple()}.
list_resolver_endpoint_ip_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpointIpAddresses">>, Input, Options).

%% @doc Lists all the Resolver endpoints that were created using the current
%% Amazon Web Services account.
-spec list_resolver_endpoints(aws_client:aws_client(), list_resolver_endpoints_request()) ->
    {ok, list_resolver_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_endpoints_errors(), tuple()}.
list_resolver_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_endpoints(Client, Input, []).

-spec list_resolver_endpoints(aws_client:aws_client(), list_resolver_endpoints_request(), proplists:proplist()) ->
    {ok, list_resolver_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_endpoints_errors(), tuple()}.
list_resolver_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverEndpoints">>, Input, Options).

%% @doc Lists information about associations between Amazon VPCs and query
%% logging configurations.
-spec list_resolver_query_log_config_associations(aws_client:aws_client(), list_resolver_query_log_config_associations_request()) ->
    {ok, list_resolver_query_log_config_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_query_log_config_associations_errors(), tuple()}.
list_resolver_query_log_config_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_query_log_config_associations(Client, Input, []).

-spec list_resolver_query_log_config_associations(aws_client:aws_client(), list_resolver_query_log_config_associations_request(), proplists:proplist()) ->
    {ok, list_resolver_query_log_config_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_query_log_config_associations_errors(), tuple()}.
list_resolver_query_log_config_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverQueryLogConfigAssociations">>, Input, Options).

%% @doc Lists information about the specified query logging configurations.
%%
%% Each configuration defines where you want Resolver to save
%% DNS query logs and specifies the VPCs that you want to log queries for.
-spec list_resolver_query_log_configs(aws_client:aws_client(), list_resolver_query_log_configs_request()) ->
    {ok, list_resolver_query_log_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_query_log_configs_errors(), tuple()}.
list_resolver_query_log_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_query_log_configs(Client, Input, []).

-spec list_resolver_query_log_configs(aws_client:aws_client(), list_resolver_query_log_configs_request(), proplists:proplist()) ->
    {ok, list_resolver_query_log_configs_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_query_log_configs_errors(), tuple()}.
list_resolver_query_log_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverQueryLogConfigs">>, Input, Options).

%% @doc Lists the associations that were created between Resolver rules and
%% VPCs using the current Amazon Web Services account.
-spec list_resolver_rule_associations(aws_client:aws_client(), list_resolver_rule_associations_request()) ->
    {ok, list_resolver_rule_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_rule_associations_errors(), tuple()}.
list_resolver_rule_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_rule_associations(Client, Input, []).

-spec list_resolver_rule_associations(aws_client:aws_client(), list_resolver_rule_associations_request(), proplists:proplist()) ->
    {ok, list_resolver_rule_associations_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_rule_associations_errors(), tuple()}.
list_resolver_rule_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverRuleAssociations">>, Input, Options).

%% @doc Lists the Resolver rules that were created using the current Amazon
%% Web Services account.
-spec list_resolver_rules(aws_client:aws_client(), list_resolver_rules_request()) ->
    {ok, list_resolver_rules_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_rules_errors(), tuple()}.
list_resolver_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resolver_rules(Client, Input, []).

-spec list_resolver_rules(aws_client:aws_client(), list_resolver_rules_request(), proplists:proplist()) ->
    {ok, list_resolver_rules_response(), tuple()} |
    {error, any()} |
    {error, list_resolver_rules_errors(), tuple()}.
list_resolver_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResolverRules">>, Input, Options).

%% @doc Lists the tags that you associated with the specified resource.
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

%% @doc Attaches an Identity and Access Management (Amazon Web Services IAM)
%% policy for sharing the rule
%% group.
%%
%% You can use the policy to share the rule group using Resource Access
%% Manager
%% (RAM).
-spec put_firewall_rule_group_policy(aws_client:aws_client(), put_firewall_rule_group_policy_request()) ->
    {ok, put_firewall_rule_group_policy_response(), tuple()} |
    {error, any()} |
    {error, put_firewall_rule_group_policy_errors(), tuple()}.
put_firewall_rule_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_firewall_rule_group_policy(Client, Input, []).

-spec put_firewall_rule_group_policy(aws_client:aws_client(), put_firewall_rule_group_policy_request(), proplists:proplist()) ->
    {ok, put_firewall_rule_group_policy_response(), tuple()} |
    {error, any()} |
    {error, put_firewall_rule_group_policy_errors(), tuple()}.
put_firewall_rule_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutFirewallRuleGroupPolicy">>, Input, Options).

%% @doc Specifies an Amazon Web Services account that you want to share a
%% query logging configuration with, the query logging configuration that you
%% want to share,
%% and the operations that you want the account to be able to perform on the
%% configuration.
-spec put_resolver_query_log_config_policy(aws_client:aws_client(), put_resolver_query_log_config_policy_request()) ->
    {ok, put_resolver_query_log_config_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resolver_query_log_config_policy_errors(), tuple()}.
put_resolver_query_log_config_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resolver_query_log_config_policy(Client, Input, []).

-spec put_resolver_query_log_config_policy(aws_client:aws_client(), put_resolver_query_log_config_policy_request(), proplists:proplist()) ->
    {ok, put_resolver_query_log_config_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resolver_query_log_config_policy_errors(), tuple()}.
put_resolver_query_log_config_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResolverQueryLogConfigPolicy">>, Input, Options).

%% @doc Specifies an Amazon Web Services rule that you want to share with
%% another account, the account that you want to share the rule with,
%% and the operations that you want the account to be able to perform on the
%% rule.
-spec put_resolver_rule_policy(aws_client:aws_client(), put_resolver_rule_policy_request()) ->
    {ok, put_resolver_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resolver_rule_policy_errors(), tuple()}.
put_resolver_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resolver_rule_policy(Client, Input, []).

-spec put_resolver_rule_policy(aws_client:aws_client(), put_resolver_rule_policy_request(), proplists:proplist()) ->
    {ok, put_resolver_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resolver_rule_policy_errors(), tuple()}.
put_resolver_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResolverRulePolicy">>, Input, Options).

%% @doc Adds one or more tags to a specified resource.
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

%% @doc Removes one or more tags from a specified resource.
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

%% @doc Updates the configuration of the firewall behavior provided by DNS
%% Firewall for a single
%% VPC from Amazon Virtual Private Cloud (Amazon VPC).
-spec update_firewall_config(aws_client:aws_client(), update_firewall_config_request()) ->
    {ok, update_firewall_config_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_config_errors(), tuple()}.
update_firewall_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_config(Client, Input, []).

-spec update_firewall_config(aws_client:aws_client(), update_firewall_config_request(), proplists:proplist()) ->
    {ok, update_firewall_config_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_config_errors(), tuple()}.
update_firewall_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallConfig">>, Input, Options).

%% @doc Updates the firewall domain list from an array of domain
%% specifications.
-spec update_firewall_domains(aws_client:aws_client(), update_firewall_domains_request()) ->
    {ok, update_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_domains_errors(), tuple()}.
update_firewall_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_domains(Client, Input, []).

-spec update_firewall_domains(aws_client:aws_client(), update_firewall_domains_request(), proplists:proplist()) ->
    {ok, update_firewall_domains_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_domains_errors(), tuple()}.
update_firewall_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallDomains">>, Input, Options).

%% @doc Updates the specified firewall rule.
-spec update_firewall_rule(aws_client:aws_client(), update_firewall_rule_request()) ->
    {ok, update_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_errors(), tuple()}.
update_firewall_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_rule(Client, Input, []).

-spec update_firewall_rule(aws_client:aws_client(), update_firewall_rule_request(), proplists:proplist()) ->
    {ok, update_firewall_rule_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_errors(), tuple()}.
update_firewall_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallRule">>, Input, Options).

%% @doc Changes the association of a `FirewallRuleGroup' with a VPC.
%%
%% The association enables DNS filtering for the VPC.
-spec update_firewall_rule_group_association(aws_client:aws_client(), update_firewall_rule_group_association_request()) ->
    {ok, update_firewall_rule_group_association_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_group_association_errors(), tuple()}.
update_firewall_rule_group_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_rule_group_association(Client, Input, []).

-spec update_firewall_rule_group_association(aws_client:aws_client(), update_firewall_rule_group_association_request(), proplists:proplist()) ->
    {ok, update_firewall_rule_group_association_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_group_association_errors(), tuple()}.
update_firewall_rule_group_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallRuleGroupAssociation">>, Input, Options).

%% @doc You can use `UpdateOutpostResolver' to update the instance count,
%% type, or name of a Resolver on an Outpost.
-spec update_outpost_resolver(aws_client:aws_client(), update_outpost_resolver_request()) ->
    {ok, update_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, update_outpost_resolver_errors(), tuple()}.
update_outpost_resolver(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_outpost_resolver(Client, Input, []).

-spec update_outpost_resolver(aws_client:aws_client(), update_outpost_resolver_request(), proplists:proplist()) ->
    {ok, update_outpost_resolver_response(), tuple()} |
    {error, any()} |
    {error, update_outpost_resolver_errors(), tuple()}.
update_outpost_resolver(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOutpostResolver">>, Input, Options).

%% @doc Updates the behavior configuration of Route 53 Resolver behavior for
%% a single VPC from
%% Amazon Virtual Private Cloud.
-spec update_resolver_config(aws_client:aws_client(), update_resolver_config_request()) ->
    {ok, update_resolver_config_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_config_errors(), tuple()}.
update_resolver_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_config(Client, Input, []).

-spec update_resolver_config(aws_client:aws_client(), update_resolver_config_request(), proplists:proplist()) ->
    {ok, update_resolver_config_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_config_errors(), tuple()}.
update_resolver_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverConfig">>, Input, Options).

%% @doc Updates an existing DNSSEC validation configuration.
%%
%% If there is no existing DNSSEC validation configuration, one is created.
-spec update_resolver_dnssec_config(aws_client:aws_client(), update_resolver_dnssec_config_request()) ->
    {ok, update_resolver_dnssec_config_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_dnssec_config_errors(), tuple()}.
update_resolver_dnssec_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_dnssec_config(Client, Input, []).

-spec update_resolver_dnssec_config(aws_client:aws_client(), update_resolver_dnssec_config_request(), proplists:proplist()) ->
    {ok, update_resolver_dnssec_config_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_dnssec_config_errors(), tuple()}.
update_resolver_dnssec_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverDnssecConfig">>, Input, Options).

%% @doc Updates the name, or endpoint type for an inbound or an outbound
%% Resolver endpoint.
%%
%% You can only update between IPV4 and DUALSTACK, IPV6 endpoint type
%% can't be updated to other type.
-spec update_resolver_endpoint(aws_client:aws_client(), update_resolver_endpoint_request()) ->
    {ok, update_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_endpoint_errors(), tuple()}.
update_resolver_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_endpoint(Client, Input, []).

-spec update_resolver_endpoint(aws_client:aws_client(), update_resolver_endpoint_request(), proplists:proplist()) ->
    {ok, update_resolver_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_endpoint_errors(), tuple()}.
update_resolver_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverEndpoint">>, Input, Options).

%% @doc Updates settings for a specified Resolver rule.
%%
%% `ResolverRuleId' is required, and all other parameters are optional.
%% If you don't specify a parameter, it retains its current value.
-spec update_resolver_rule(aws_client:aws_client(), update_resolver_rule_request()) ->
    {ok, update_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_rule_errors(), tuple()}.
update_resolver_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resolver_rule(Client, Input, []).

-spec update_resolver_rule(aws_client:aws_client(), update_resolver_rule_request(), proplists:proplist()) ->
    {ok, update_resolver_rule_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_rule_errors(), tuple()}.
update_resolver_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResolverRule">>, Input, Options).

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
    Client1 = Client#{service => <<"route53resolver">>},
    Host = build_host(<<"route53resolver">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Route53Resolver.", Action/binary>>}
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
