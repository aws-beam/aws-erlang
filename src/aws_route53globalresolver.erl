%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 Global Resolver is a global, internet-accessible DNS
%% resolver that enables customers to resolve and forward traffic for both
%% public and private domains while ensuring security and authenticity of
%% queries over the internet.
%%
%% Route 53 Global Resolver supports DNS-over-port 53 (Do53), DNS-over-TLS
%% (DoT), and DNS-over-HTTPS (DoH) protocols through global anycast IP
%% addresses.
-module(aws_route53globalresolver).

-export([associate_hosted_zone/3,
         associate_hosted_zone/4,
         batch_create_firewall_rule/2,
         batch_create_firewall_rule/3,
         batch_delete_firewall_rule/2,
         batch_delete_firewall_rule/3,
         batch_update_firewall_rule/2,
         batch_update_firewall_rule/3,
         create_access_source/2,
         create_access_source/3,
         create_access_token/3,
         create_access_token/4,
         create_dns_view/3,
         create_dns_view/4,
         create_firewall_domain_list/3,
         create_firewall_domain_list/4,
         create_firewall_rule/2,
         create_firewall_rule/3,
         create_global_resolver/2,
         create_global_resolver/3,
         delete_access_source/3,
         delete_access_source/4,
         delete_access_token/3,
         delete_access_token/4,
         delete_dns_view/3,
         delete_dns_view/4,
         delete_firewall_domain_list/3,
         delete_firewall_domain_list/4,
         delete_firewall_rule/3,
         delete_firewall_rule/4,
         delete_global_resolver/3,
         delete_global_resolver/4,
         disable_dns_view/3,
         disable_dns_view/4,
         disassociate_hosted_zone/4,
         disassociate_hosted_zone/5,
         enable_dns_view/3,
         enable_dns_view/4,
         get_access_source/2,
         get_access_source/4,
         get_access_source/5,
         get_access_token/2,
         get_access_token/4,
         get_access_token/5,
         get_dns_view/2,
         get_dns_view/4,
         get_dns_view/5,
         get_firewall_domain_list/2,
         get_firewall_domain_list/4,
         get_firewall_domain_list/5,
         get_firewall_rule/2,
         get_firewall_rule/4,
         get_firewall_rule/5,
         get_global_resolver/2,
         get_global_resolver/4,
         get_global_resolver/5,
         get_hosted_zone_association/2,
         get_hosted_zone_association/4,
         get_hosted_zone_association/5,
         get_managed_firewall_domain_list/2,
         get_managed_firewall_domain_list/4,
         get_managed_firewall_domain_list/5,
         import_firewall_domains/3,
         import_firewall_domains/4,
         list_access_sources/1,
         list_access_sources/3,
         list_access_sources/4,
         list_access_tokens/2,
         list_access_tokens/4,
         list_access_tokens/5,
         list_dns_views/2,
         list_dns_views/4,
         list_dns_views/5,
         list_firewall_domain_lists/1,
         list_firewall_domain_lists/3,
         list_firewall_domain_lists/4,
         list_firewall_domains/2,
         list_firewall_domains/4,
         list_firewall_domains/5,
         list_firewall_rules/2,
         list_firewall_rules/4,
         list_firewall_rules/5,
         list_global_resolvers/1,
         list_global_resolvers/3,
         list_global_resolvers/4,
         list_hosted_zone_associations/2,
         list_hosted_zone_associations/4,
         list_hosted_zone_associations/5,
         list_managed_firewall_domain_lists/2,
         list_managed_firewall_domain_lists/4,
         list_managed_firewall_domain_lists/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_access_source/3,
         update_access_source/4,
         update_access_token/3,
         update_access_token/4,
         update_dns_view/3,
         update_dns_view/4,
         update_firewall_domains/3,
         update_firewall_domains/4,
         update_firewall_rule/3,
         update_firewall_rule/4,
         update_global_resolver/3,
         update_global_resolver/4,
         update_hosted_zone_association/3,
         update_hosted_zone_association/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_firewall_rule_input() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"clientToken">> := string(),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"name">> => string(),
%%   <<"priority">> => float()
%% }
-type update_firewall_rule_input() :: #{binary() => any()}.


%% Example:
%% create_access_source_input() :: #{
%%   <<"cidr">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"dnsViewId">> := string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_access_source_input() :: #{binary() => any()}.


%% Example:
%% create_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_dns_view_output() :: #{binary() => any()}.


%% Example:
%% list_access_sources_input() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_access_sources_input() :: #{binary() => any()}.


%% Example:
%% batch_create_firewall_rule_output() :: #{
%%   <<"failures">> => list(batch_create_firewall_rule_output_item()),
%%   <<"successes">> => list(batch_create_firewall_rule_output_item())
%% }
-type batch_create_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% disable_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type disable_dns_view_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_dns_view_output() :: #{binary() => any()}.


%% Example:
%% managed_firewall_domain_lists_item() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"managedListType">> => [string()],
%%   <<"name">> => string()
%% }
-type managed_firewall_domain_lists_item() :: #{binary() => any()}.


%% Example:
%% access_sources_item() :: #{
%%   <<"arn">> => string(),
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type access_sources_item() :: #{binary() => any()}.


%% Example:
%% create_access_source_output() :: #{
%%   <<"arn">> => string(),
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_access_source_output() :: #{binary() => any()}.


%% Example:
%% global_resolvers_item() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsName">> => string(),
%%   <<"id">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type global_resolvers_item() :: #{binary() => any()}.


%% Example:
%% list_firewall_domains_output() :: #{
%%   <<"domains">> => list(string()),
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_domains_output() :: #{binary() => any()}.


%% Example:
%% create_access_token_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_access_token_input() :: #{binary() => any()}.

%% Example:
%% get_hosted_zone_association_input() :: #{}
-type get_hosted_zone_association_input() :: #{}.


%% Example:
%% delete_firewall_domain_list_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_firewall_domain_list_output() :: #{binary() => any()}.

%% Example:
%% get_access_token_input() :: #{}
-type get_access_token_input() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_firewall_domain_list_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainCount">> => [integer()],
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_firewall_domain_list_output() :: #{binary() => any()}.


%% Example:
%% list_firewall_domain_lists_output() :: #{
%%   <<"firewallDomainLists">> => list(firewall_domain_lists_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_domain_lists_output() :: #{binary() => any()}.

%% Example:
%% delete_access_token_input() :: #{}
-type delete_access_token_input() :: #{}.


%% Example:
%% delete_access_source_output() :: #{
%%   <<"arn">> => string(),
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type delete_access_source_output() :: #{binary() => any()}.


%% Example:
%% list_firewall_domain_lists_input() :: #{
%%   <<"globalResolverId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_domain_lists_input() :: #{binary() => any()}.


%% Example:
%% batch_delete_firewall_rule_input() :: #{
%%   <<"firewallRules">> := list(batch_delete_firewall_rule_input_item())
%% }
-type batch_delete_firewall_rule_input() :: #{binary() => any()}.


%% Example:
%% batch_update_firewall_rule_output() :: #{
%%   <<"failures">> => list(batch_update_firewall_rule_output_item()),
%%   <<"successes">> => list(batch_update_firewall_rule_output_item())
%% }
-type batch_update_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% create_dns_view_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_dns_view_input() :: #{binary() => any()}.


%% Example:
%% create_firewall_domain_list_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_firewall_domain_list_input() :: #{binary() => any()}.

%% Example:
%% get_access_source_input() :: #{}
-type get_access_source_input() :: #{}.

%% Example:
%% delete_dns_view_input() :: #{}
-type delete_dns_view_input() :: #{}.


%% Example:
%% associate_hosted_zone_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hostedZoneId">> => string(),
%%   <<"hostedZoneName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type associate_hosted_zone_output() :: #{binary() => any()}.


%% Example:
%% update_dns_view_input() :: #{
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"name">> => string()
%% }
-type update_dns_view_input() :: #{binary() => any()}.


%% Example:
%% batch_delete_firewall_rule_output_item() :: #{
%%   <<"code">> => [integer()],
%%   <<"firewallRule">> => batch_delete_firewall_rule_result(),
%%   <<"message">> => [string()]
%% }
-type batch_delete_firewall_rule_output_item() :: #{binary() => any()}.


%% Example:
%% dns_view_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type dns_view_summary() :: #{binary() => any()}.


%% Example:
%% disassociate_hosted_zone_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hostedZoneId">> => string(),
%%   <<"hostedZoneName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type disassociate_hosted_zone_output() :: #{binary() => any()}.


%% Example:
%% list_managed_firewall_domain_lists_output() :: #{
%%   <<"managedFirewallDomainLists">> => list(managed_firewall_domain_lists_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_managed_firewall_domain_lists_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% firewall_rules_item() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type firewall_rules_item() :: #{binary() => any()}.

%% Example:
%% get_dns_view_input() :: #{}
-type get_dns_view_input() :: #{}.


%% Example:
%% update_access_token_output() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type update_access_token_output() :: #{binary() => any()}.


%% Example:
%% create_global_resolver_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> := list(string()),
%%   <<"tags">> => map()
%% }
-type create_global_resolver_input() :: #{binary() => any()}.


%% Example:
%% get_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_dns_view_output() :: #{binary() => any()}.


%% Example:
%% list_hosted_zone_associations_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_hosted_zone_associations_input() :: #{binary() => any()}.


%% Example:
%% update_access_source_output() :: #{
%%   <<"arn">> => string(),
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_access_source_output() :: #{binary() => any()}.


%% Example:
%% create_access_token_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"value">> => string()
%% }
-type create_access_token_output() :: #{binary() => any()}.

%% Example:
%% delete_firewall_domain_list_input() :: #{}
-type delete_firewall_domain_list_input() :: #{}.

%% Example:
%% get_managed_firewall_domain_list_input() :: #{}
-type get_managed_firewall_domain_list_input() :: #{}.


%% Example:
%% list_access_tokens_output() :: #{
%%   <<"accessTokens">> => list(access_token_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_access_tokens_output() :: #{binary() => any()}.

%% Example:
%% delete_access_source_input() :: #{}
-type delete_access_source_input() :: #{}.


%% Example:
%% update_global_resolver_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsName">> => string(),
%%   <<"id">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_global_resolver_output() :: #{binary() => any()}.


%% Example:
%% create_global_resolver_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsName">> => string(),
%%   <<"id">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_global_resolver_output() :: #{binary() => any()}.


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
%% list_access_tokens_input() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_access_tokens_input() :: #{binary() => any()}.


%% Example:
%% update_hosted_zone_association_input() :: #{
%%   <<"name">> => string()
%% }
-type update_hosted_zone_association_input() :: #{binary() => any()}.

%% Example:
%% disassociate_hosted_zone_input() :: #{}
-type disassociate_hosted_zone_input() :: #{}.


%% Example:
%% delete_access_token_output() :: #{
%%   <<"deletedAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_access_token_output() :: #{binary() => any()}.


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
%% list_firewall_domains_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_domains_input() :: #{binary() => any()}.


%% Example:
%% batch_delete_firewall_rule_output() :: #{
%%   <<"failures">> => list(batch_delete_firewall_rule_output_item()),
%%   <<"successes">> => list(batch_delete_firewall_rule_output_item())
%% }
-type batch_delete_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% create_firewall_rule_input() :: #{
%%   <<"action">> := list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> := string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"name">> := string(),
%%   <<"priority">> => float(),
%%   <<"qType">> => string()
%% }
-type create_firewall_rule_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% firewall_domain_lists_item() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type firewall_domain_lists_item() :: #{binary() => any()}.


%% Example:
%% update_firewall_domains_output() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_firewall_domains_output() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% batch_delete_firewall_rule_input_item() :: #{
%%   <<"firewallRuleId">> => string()
%% }
-type batch_delete_firewall_rule_input_item() :: #{binary() => any()}.


%% Example:
%% batch_create_firewall_rule_output_item() :: #{
%%   <<"code">> => [integer()],
%%   <<"firewallRule">> => batch_create_firewall_rule_result(),
%%   <<"message">> => [string()]
%% }
-type batch_create_firewall_rule_output_item() :: #{binary() => any()}.


%% Example:
%% list_managed_firewall_domain_lists_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_managed_firewall_domain_lists_input() :: #{binary() => any()}.

%% Example:
%% disable_dns_view_input() :: #{}
-type disable_dns_view_input() :: #{}.


%% Example:
%% update_access_source_input() :: #{
%%   <<"cidr">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any())
%% }
-type update_access_source_input() :: #{binary() => any()}.


%% Example:
%% batch_create_firewall_rule_result() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"managedDomainListName">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type batch_create_firewall_rule_result() :: #{binary() => any()}.


%% Example:
%% update_firewall_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_firewall_rule_output() :: #{binary() => any()}.

%% Example:
%% get_firewall_rule_input() :: #{}
-type get_firewall_rule_input() :: #{}.


%% Example:
%% delete_global_resolver_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsName">> => string(),
%%   <<"id">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type delete_global_resolver_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% get_firewall_domain_list_input() :: #{}
-type get_firewall_domain_list_input() :: #{}.


%% Example:
%% get_access_source_output() :: #{
%%   <<"arn">> => string(),
%%   <<"cidr">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"id">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_access_source_output() :: #{binary() => any()}.


%% Example:
%% import_firewall_domains_input() :: #{
%%   <<"domainFileUrl">> := [string()],
%%   <<"operation">> := [string()]
%% }
-type import_firewall_domains_input() :: #{binary() => any()}.


%% Example:
%% batch_update_firewall_rule_input_item() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"firewallRuleId">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float()
%% }
-type batch_update_firewall_rule_input_item() :: #{binary() => any()}.


%% Example:
%% get_firewall_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% access_token_item() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type access_token_item() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% import_firewall_domains_output() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type import_firewall_domains_output() :: #{binary() => any()}.


%% Example:
%% get_firewall_domain_list_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainCount">> => [integer()],
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_firewall_domain_list_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_firewall_rules_output() :: #{
%%   <<"firewallRules">> => list(firewall_rules_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_rules_output() :: #{binary() => any()}.


%% Example:
%% update_access_token_input() :: #{
%%   <<"name">> := string()
%% }
-type update_access_token_input() :: #{binary() => any()}.


%% Example:
%% hosted_zone_association_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hostedZoneId">> => string(),
%%   <<"hostedZoneName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type hosted_zone_association_summary() :: #{binary() => any()}.


%% Example:
%% batch_create_firewall_rule_input() :: #{
%%   <<"firewallRules">> := list(batch_create_firewall_rule_input_item())
%% }
-type batch_create_firewall_rule_input() :: #{binary() => any()}.

%% Example:
%% delete_global_resolver_input() :: #{}
-type delete_global_resolver_input() :: #{}.


%% Example:
%% batch_update_firewall_rule_input() :: #{
%%   <<"firewallRules">> := list(batch_update_firewall_rule_input_item())
%% }
-type batch_update_firewall_rule_input() :: #{binary() => any()}.


%% Example:
%% update_hosted_zone_association_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hostedZoneId">> => string(),
%%   <<"hostedZoneName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_hosted_zone_association_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% update_global_resolver_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string()
%% }
-type update_global_resolver_input() :: #{binary() => any()}.


%% Example:
%% get_managed_firewall_domain_list_output() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"managedListType">> => [string()],
%%   <<"name">> => string()
%% }
-type get_managed_firewall_domain_list_output() :: #{binary() => any()}.


%% Example:
%% list_dns_views_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_dns_views_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_access_token_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsViewId">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"value">> => string()
%% }
-type get_access_token_output() :: #{binary() => any()}.


%% Example:
%% associate_hosted_zone_input() :: #{
%%   <<"name">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type associate_hosted_zone_input() :: #{binary() => any()}.


%% Example:
%% list_firewall_rules_input() :: #{
%%   <<"dnsViewId">> := string(),
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_firewall_rules_input() :: #{binary() => any()}.


%% Example:
%% create_firewall_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% batch_update_firewall_rule_result() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type batch_update_firewall_rule_result() :: #{binary() => any()}.

%% Example:
%% delete_firewall_rule_input() :: #{}
-type delete_firewall_rule_input() :: #{}.


%% Example:
%% list_access_sources_output() :: #{
%%   <<"accessSources">> => list(access_sources_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_access_sources_output() :: #{binary() => any()}.


%% Example:
%% list_hosted_zone_associations_output() :: #{
%%   <<"hostedZoneAssociations">> => list(hosted_zone_association_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_hosted_zone_associations_output() :: #{binary() => any()}.


%% Example:
%% batch_update_firewall_rule_output_item() :: #{
%%   <<"code">> => [integer()],
%%   <<"firewallRule">> => batch_update_firewall_rule_result(),
%%   <<"message">> => [string()]
%% }
-type batch_update_firewall_rule_output_item() :: #{binary() => any()}.


%% Example:
%% delete_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type delete_dns_view_output() :: #{binary() => any()}.


%% Example:
%% list_dns_views_output() :: #{
%%   <<"dnsViews">> => list(dns_view_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_dns_views_output() :: #{binary() => any()}.


%% Example:
%% get_hosted_zone_association_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hostedZoneId">> => string(),
%%   <<"hostedZoneName">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_hosted_zone_association_output() :: #{binary() => any()}.


%% Example:
%% get_global_resolver_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsName">> => string(),
%%   <<"id">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"name">> => string(),
%%   <<"observabilityRegion">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_global_resolver_output() :: #{binary() => any()}.

%% Example:
%% enable_dns_view_input() :: #{}
-type enable_dns_view_input() :: #{}.


%% Example:
%% batch_delete_firewall_rule_result() :: #{
%%   <<"clientToken">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type batch_delete_firewall_rule_result() :: #{binary() => any()}.


%% Example:
%% batch_create_firewall_rule_input_item() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"qType">> => string()
%% }
-type batch_create_firewall_rule_input_item() :: #{binary() => any()}.


%% Example:
%% list_global_resolvers_output() :: #{
%%   <<"globalResolvers">> => list(global_resolvers_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_global_resolvers_output() :: #{binary() => any()}.


%% Example:
%% list_global_resolvers_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_global_resolvers_input() :: #{binary() => any()}.

%% Example:
%% get_global_resolver_input() :: #{}
-type get_global_resolver_input() :: #{}.


%% Example:
%% delete_firewall_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"blockOverrideDnsType">> => list(any()),
%%   <<"blockOverrideDomain">> => string(),
%%   <<"blockOverrideTtl">> => integer(),
%%   <<"blockResponse">> => list(any()),
%%   <<"confidenceThreshold">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnsAdvancedProtection">> => list(any()),
%%   <<"dnsViewId">> => string(),
%%   <<"firewallDomainListId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => float(),
%%   <<"queryType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type delete_firewall_rule_output() :: #{binary() => any()}.


%% Example:
%% enable_dns_view_output() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dnssecValidation">> => list(any()),
%%   <<"ednsClientSubnet">> => list(any()),
%%   <<"firewallRulesFailOpen">> => list(any()),
%%   <<"globalResolverId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type enable_dns_view_output() :: #{binary() => any()}.


%% Example:
%% update_firewall_domains_input() :: #{
%%   <<"domains">> := list(string()),
%%   <<"operation">> := [string()]
%% }
-type update_firewall_domains_input() :: #{binary() => any()}.

-type associate_hosted_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_create_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_delete_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_update_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_access_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_access_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_firewall_domain_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_global_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_access_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_access_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_firewall_domain_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_global_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_hosted_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_access_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_access_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_firewall_domain_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_global_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_hosted_zone_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_firewall_domain_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type import_firewall_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_access_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_access_tokens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_dns_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_firewall_domain_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_firewall_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_firewall_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_global_resolvers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_hosted_zone_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_managed_firewall_domain_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_access_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_access_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_dns_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_firewall_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_firewall_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_global_resolver_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_hosted_zone_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a Route 53 private hosted zone with a Route 53 Global
%% Resolver resource.
%%
%% This allows the resolver to resolve DNS queries for the private hosted
%% zone from anywhere globally.
-spec associate_hosted_zone(aws_client:aws_client(), binary() | list(), associate_hosted_zone_input()) ->
    {ok, associate_hosted_zone_output(), tuple()} |
    {error, any()} |
    {error, associate_hosted_zone_errors(), tuple()}.
associate_hosted_zone(Client, HostedZoneId, Input) ->
    associate_hosted_zone(Client, HostedZoneId, Input, []).

-spec associate_hosted_zone(aws_client:aws_client(), binary() | list(), associate_hosted_zone_input(), proplists:proplist()) ->
    {ok, associate_hosted_zone_output(), tuple()} |
    {error, any()} |
    {error, associate_hosted_zone_errors(), tuple()}.
associate_hosted_zone(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/hosted-zone-associations/", aws_util:encode_uri(HostedZoneId), ""],
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

%% @doc Creates multiple DNS firewall rules in a single operation.
%%
%% This is more efficient than creating rules individually when you need to
%% set up multiple rules at once.
-spec batch_create_firewall_rule(aws_client:aws_client(), batch_create_firewall_rule_input()) ->
    {ok, batch_create_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_create_firewall_rule_errors(), tuple()}.
batch_create_firewall_rule(Client, Input) ->
    batch_create_firewall_rule(Client, Input, []).

-spec batch_create_firewall_rule(aws_client:aws_client(), batch_create_firewall_rule_input(), proplists:proplist()) ->
    {ok, batch_create_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_create_firewall_rule_errors(), tuple()}.
batch_create_firewall_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/firewall-rules/batch-create"],
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

%% @doc Deletes multiple DNS firewall rules in a single operation.
%%
%% This is more efficient than deleting rules individually.
-spec batch_delete_firewall_rule(aws_client:aws_client(), batch_delete_firewall_rule_input()) ->
    {ok, batch_delete_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_firewall_rule_errors(), tuple()}.
batch_delete_firewall_rule(Client, Input) ->
    batch_delete_firewall_rule(Client, Input, []).

-spec batch_delete_firewall_rule(aws_client:aws_client(), batch_delete_firewall_rule_input(), proplists:proplist()) ->
    {ok, batch_delete_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_firewall_rule_errors(), tuple()}.
batch_delete_firewall_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/firewall-rules/batch-delete"],
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

%% @doc Updates multiple DNS firewall rules in a single operation.
%%
%% This is more efficient than updating rules individually.
-spec batch_update_firewall_rule(aws_client:aws_client(), batch_update_firewall_rule_input()) ->
    {ok, batch_update_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_update_firewall_rule_errors(), tuple()}.
batch_update_firewall_rule(Client, Input) ->
    batch_update_firewall_rule(Client, Input, []).

-spec batch_update_firewall_rule(aws_client:aws_client(), batch_update_firewall_rule_input(), proplists:proplist()) ->
    {ok, batch_update_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_update_firewall_rule_errors(), tuple()}.
batch_update_firewall_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/firewall-rules/batch-update"],
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

%% @doc Creates an access source for a DNS view.
%%
%% Access sources define IP addresses or CIDR ranges that are allowed to send
%% DNS queries to the Route 53 Global Resolver, along with the permitted DNS
%% protocols.
-spec create_access_source(aws_client:aws_client(), create_access_source_input()) ->
    {ok, create_access_source_output(), tuple()} |
    {error, any()} |
    {error, create_access_source_errors(), tuple()}.
create_access_source(Client, Input) ->
    create_access_source(Client, Input, []).

-spec create_access_source(aws_client:aws_client(), create_access_source_input(), proplists:proplist()) ->
    {ok, create_access_source_output(), tuple()} |
    {error, any()} |
    {error, create_access_source_errors(), tuple()}.
create_access_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/access-sources"],
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

%% @doc Creates an access token for a DNS view.
%%
%% Access tokens provide token-based authentication for DNS-over-HTTPS (DoH)
%% and DNS-over-TLS (DoT) connections to the Route 53 Global Resolver.
-spec create_access_token(aws_client:aws_client(), binary() | list(), create_access_token_input()) ->
    {ok, create_access_token_output(), tuple()} |
    {error, any()} |
    {error, create_access_token_errors(), tuple()}.
create_access_token(Client, DnsViewId, Input) ->
    create_access_token(Client, DnsViewId, Input, []).

-spec create_access_token(aws_client:aws_client(), binary() | list(), create_access_token_input(), proplists:proplist()) ->
    {ok, create_access_token_output(), tuple()} |
    {error, any()} |
    {error, create_access_token_errors(), tuple()}.
create_access_token(Client, DnsViewId, Input0, Options0) ->
    Method = post,
    Path = ["/tokens/", aws_util:encode_uri(DnsViewId), ""],
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

%% @doc Creates a DNS view within a Route 53 Global Resolver.
%%
%% A DNS view models end users, user groups, networks, and devices, and
%% serves as a parent resource that holds configurations controlling access,
%% authorization, DNS firewall rules, and forwarding rules.
-spec create_dns_view(aws_client:aws_client(), binary() | list(), create_dns_view_input()) ->
    {ok, create_dns_view_output(), tuple()} |
    {error, any()} |
    {error, create_dns_view_errors(), tuple()}.
create_dns_view(Client, GlobalResolverId, Input) ->
    create_dns_view(Client, GlobalResolverId, Input, []).

-spec create_dns_view(aws_client:aws_client(), binary() | list(), create_dns_view_input(), proplists:proplist()) ->
    {ok, create_dns_view_output(), tuple()} |
    {error, any()} |
    {error, create_dns_view_errors(), tuple()}.
create_dns_view(Client, GlobalResolverId, Input0, Options0) ->
    Method = post,
    Path = ["/dns-views/", aws_util:encode_uri(GlobalResolverId), ""],
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

%% @doc Creates a firewall domain list.
%%
%% Domain lists are reusable sets of domain specifications that you use in
%% DNS firewall rules to allow, block, or alert on DNS queries to specific
%% domains.
-spec create_firewall_domain_list(aws_client:aws_client(), binary() | list(), create_firewall_domain_list_input()) ->
    {ok, create_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, create_firewall_domain_list_errors(), tuple()}.
create_firewall_domain_list(Client, GlobalResolverId, Input) ->
    create_firewall_domain_list(Client, GlobalResolverId, Input, []).

-spec create_firewall_domain_list(aws_client:aws_client(), binary() | list(), create_firewall_domain_list_input(), proplists:proplist()) ->
    {ok, create_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, create_firewall_domain_list_errors(), tuple()}.
create_firewall_domain_list(Client, GlobalResolverId, Input0, Options0) ->
    Method = post,
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(GlobalResolverId), ""],
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

%% @doc Creates a DNS firewall rule.
%%
%% Firewall rules define actions (ALLOW, BLOCK, or ALERT) to take on DNS
%% queries that match specified domain lists, managed domain lists, or
%% advanced threat protections.
-spec create_firewall_rule(aws_client:aws_client(), create_firewall_rule_input()) ->
    {ok, create_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_errors(), tuple()}.
create_firewall_rule(Client, Input) ->
    create_firewall_rule(Client, Input, []).

-spec create_firewall_rule(aws_client:aws_client(), create_firewall_rule_input(), proplists:proplist()) ->
    {ok, create_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, create_firewall_rule_errors(), tuple()}.
create_firewall_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/firewall-rules"],
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

%% @doc Creates a new Route 53 Global Resolver instance.
%%
%% A Route 53 Global Resolver is a global, internet-accessible DNS resolver
%% that provides secure DNS resolution for both public and private domains
%% through global anycast IP addresses.
-spec create_global_resolver(aws_client:aws_client(), create_global_resolver_input()) ->
    {ok, create_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, create_global_resolver_errors(), tuple()}.
create_global_resolver(Client, Input) ->
    create_global_resolver(Client, Input, []).

-spec create_global_resolver(aws_client:aws_client(), create_global_resolver_input(), proplists:proplist()) ->
    {ok, create_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, create_global_resolver_errors(), tuple()}.
create_global_resolver(Client, Input0, Options0) ->
    Method = post,
    Path = ["/global-resolver"],
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

%% @doc Deletes an access source.
%%
%% This operation cannot be undone.
-spec delete_access_source(aws_client:aws_client(), binary() | list(), delete_access_source_input()) ->
    {ok, delete_access_source_output(), tuple()} |
    {error, any()} |
    {error, delete_access_source_errors(), tuple()}.
delete_access_source(Client, AccessSourceId, Input) ->
    delete_access_source(Client, AccessSourceId, Input, []).

-spec delete_access_source(aws_client:aws_client(), binary() | list(), delete_access_source_input(), proplists:proplist()) ->
    {ok, delete_access_source_output(), tuple()} |
    {error, any()} |
    {error, delete_access_source_errors(), tuple()}.
delete_access_source(Client, AccessSourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/access-sources/", aws_util:encode_uri(AccessSourceId), ""],
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

%% @doc Deletes an access token.
%%
%% This operation cannot be undone.
-spec delete_access_token(aws_client:aws_client(), binary() | list(), delete_access_token_input()) ->
    {ok, delete_access_token_output(), tuple()} |
    {error, any()} |
    {error, delete_access_token_errors(), tuple()}.
delete_access_token(Client, AccessTokenId, Input) ->
    delete_access_token(Client, AccessTokenId, Input, []).

-spec delete_access_token(aws_client:aws_client(), binary() | list(), delete_access_token_input(), proplists:proplist()) ->
    {ok, delete_access_token_output(), tuple()} |
    {error, any()} |
    {error, delete_access_token_errors(), tuple()}.
delete_access_token(Client, AccessTokenId, Input0, Options0) ->
    Method = delete,
    Path = ["/tokens/", aws_util:encode_uri(AccessTokenId), ""],
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

%% @doc Deletes a DNS view.
%%
%% This operation cannot be undone.
-spec delete_dns_view(aws_client:aws_client(), binary() | list(), delete_dns_view_input()) ->
    {ok, delete_dns_view_output(), tuple()} |
    {error, any()} |
    {error, delete_dns_view_errors(), tuple()}.
delete_dns_view(Client, DnsViewId, Input) ->
    delete_dns_view(Client, DnsViewId, Input, []).

-spec delete_dns_view(aws_client:aws_client(), binary() | list(), delete_dns_view_input(), proplists:proplist()) ->
    {ok, delete_dns_view_output(), tuple()} |
    {error, any()} |
    {error, delete_dns_view_errors(), tuple()}.
delete_dns_view(Client, DnsViewId, Input0, Options0) ->
    Method = delete,
    Path = ["/dns-views/", aws_util:encode_uri(DnsViewId), ""],
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

%% @doc Deletes a firewall domain list.
%%
%% This operation cannot be undone.
-spec delete_firewall_domain_list(aws_client:aws_client(), binary() | list(), delete_firewall_domain_list_input()) ->
    {ok, delete_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, delete_firewall_domain_list_errors(), tuple()}.
delete_firewall_domain_list(Client, FirewallDomainListId, Input) ->
    delete_firewall_domain_list(Client, FirewallDomainListId, Input, []).

-spec delete_firewall_domain_list(aws_client:aws_client(), binary() | list(), delete_firewall_domain_list_input(), proplists:proplist()) ->
    {ok, delete_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, delete_firewall_domain_list_errors(), tuple()}.
delete_firewall_domain_list(Client, FirewallDomainListId, Input0, Options0) ->
    Method = delete,
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(FirewallDomainListId), ""],
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

%% @doc Deletes a DNS firewall rule.
%%
%% This operation cannot be undone.
-spec delete_firewall_rule(aws_client:aws_client(), binary() | list(), delete_firewall_rule_input()) ->
    {ok, delete_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_errors(), tuple()}.
delete_firewall_rule(Client, FirewallRuleId, Input) ->
    delete_firewall_rule(Client, FirewallRuleId, Input, []).

-spec delete_firewall_rule(aws_client:aws_client(), binary() | list(), delete_firewall_rule_input(), proplists:proplist()) ->
    {ok, delete_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_firewall_rule_errors(), tuple()}.
delete_firewall_rule(Client, FirewallRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/firewall-rules/", aws_util:encode_uri(FirewallRuleId), ""],
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

%% @doc Deletes a Route 53 Global Resolver instance.
%%
%% This operation cannot be undone. All associated DNS views, access sources,
%% tokens, and firewall rules are also deleted.
-spec delete_global_resolver(aws_client:aws_client(), binary() | list(), delete_global_resolver_input()) ->
    {ok, delete_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, delete_global_resolver_errors(), tuple()}.
delete_global_resolver(Client, GlobalResolverId, Input) ->
    delete_global_resolver(Client, GlobalResolverId, Input, []).

-spec delete_global_resolver(aws_client:aws_client(), binary() | list(), delete_global_resolver_input(), proplists:proplist()) ->
    {ok, delete_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, delete_global_resolver_errors(), tuple()}.
delete_global_resolver(Client, GlobalResolverId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-resolver/", aws_util:encode_uri(GlobalResolverId), ""],
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

%% @doc Disables a DNS view, preventing it from serving DNS queries.
-spec disable_dns_view(aws_client:aws_client(), binary() | list(), disable_dns_view_input()) ->
    {ok, disable_dns_view_output(), tuple()} |
    {error, any()} |
    {error, disable_dns_view_errors(), tuple()}.
disable_dns_view(Client, DnsViewId, Input) ->
    disable_dns_view(Client, DnsViewId, Input, []).

-spec disable_dns_view(aws_client:aws_client(), binary() | list(), disable_dns_view_input(), proplists:proplist()) ->
    {ok, disable_dns_view_output(), tuple()} |
    {error, any()} |
    {error, disable_dns_view_errors(), tuple()}.
disable_dns_view(Client, DnsViewId, Input0, Options0) ->
    Method = patch,
    Path = ["/dns-views/", aws_util:encode_uri(DnsViewId), "/disable"],
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

%% @doc Disassociates a Route 53 private hosted zone from a Route 53 Global
%% Resolver resource.
-spec disassociate_hosted_zone(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_hosted_zone_input()) ->
    {ok, disassociate_hosted_zone_output(), tuple()} |
    {error, any()} |
    {error, disassociate_hosted_zone_errors(), tuple()}.
disassociate_hosted_zone(Client, HostedZoneId, ResourceArn, Input) ->
    disassociate_hosted_zone(Client, HostedZoneId, ResourceArn, Input, []).

-spec disassociate_hosted_zone(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_hosted_zone_input(), proplists:proplist()) ->
    {ok, disassociate_hosted_zone_output(), tuple()} |
    {error, any()} |
    {error, disassociate_hosted_zone_errors(), tuple()}.
disassociate_hosted_zone(Client, HostedZoneId, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/hosted-zone-associations/hosted-zone/", aws_util:encode_uri(HostedZoneId), "/resource-arn/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Enables a disabled DNS view, allowing it to serve DNS queries again.
-spec enable_dns_view(aws_client:aws_client(), binary() | list(), enable_dns_view_input()) ->
    {ok, enable_dns_view_output(), tuple()} |
    {error, any()} |
    {error, enable_dns_view_errors(), tuple()}.
enable_dns_view(Client, DnsViewId, Input) ->
    enable_dns_view(Client, DnsViewId, Input, []).

-spec enable_dns_view(aws_client:aws_client(), binary() | list(), enable_dns_view_input(), proplists:proplist()) ->
    {ok, enable_dns_view_output(), tuple()} |
    {error, any()} |
    {error, enable_dns_view_errors(), tuple()}.
enable_dns_view(Client, DnsViewId, Input0, Options0) ->
    Method = patch,
    Path = ["/dns-views/", aws_util:encode_uri(DnsViewId), "/enable"],
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

%% @doc Retrieves information about an access source.
-spec get_access_source(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_source_output(), tuple()} |
    {error, any()} |
    {error, get_access_source_errors(), tuple()}.
get_access_source(Client, AccessSourceId)
  when is_map(Client) ->
    get_access_source(Client, AccessSourceId, #{}, #{}).

-spec get_access_source(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_source_output(), tuple()} |
    {error, any()} |
    {error, get_access_source_errors(), tuple()}.
get_access_source(Client, AccessSourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_source(Client, AccessSourceId, QueryMap, HeadersMap, []).

-spec get_access_source(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_source_output(), tuple()} |
    {error, any()} |
    {error, get_access_source_errors(), tuple()}.
get_access_source(Client, AccessSourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-sources/", aws_util:encode_uri(AccessSourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an access token.
-spec get_access_token(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_token_output(), tuple()} |
    {error, any()} |
    {error, get_access_token_errors(), tuple()}.
get_access_token(Client, AccessTokenId)
  when is_map(Client) ->
    get_access_token(Client, AccessTokenId, #{}, #{}).

-spec get_access_token(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_token_output(), tuple()} |
    {error, any()} |
    {error, get_access_token_errors(), tuple()}.
get_access_token(Client, AccessTokenId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_token(Client, AccessTokenId, QueryMap, HeadersMap, []).

-spec get_access_token(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_token_output(), tuple()} |
    {error, any()} |
    {error, get_access_token_errors(), tuple()}.
get_access_token(Client, AccessTokenId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tokens/", aws_util:encode_uri(AccessTokenId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a DNS view.
-spec get_dns_view(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dns_view_output(), tuple()} |
    {error, any()} |
    {error, get_dns_view_errors(), tuple()}.
get_dns_view(Client, DnsViewId)
  when is_map(Client) ->
    get_dns_view(Client, DnsViewId, #{}, #{}).

-spec get_dns_view(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dns_view_output(), tuple()} |
    {error, any()} |
    {error, get_dns_view_errors(), tuple()}.
get_dns_view(Client, DnsViewId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dns_view(Client, DnsViewId, QueryMap, HeadersMap, []).

-spec get_dns_view(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dns_view_output(), tuple()} |
    {error, any()} |
    {error, get_dns_view_errors(), tuple()}.
get_dns_view(Client, DnsViewId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dns-views/", aws_util:encode_uri(DnsViewId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a firewall domain list.
-spec get_firewall_domain_list(aws_client:aws_client(), binary() | list()) ->
    {ok, get_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_domain_list_errors(), tuple()}.
get_firewall_domain_list(Client, FirewallDomainListId)
  when is_map(Client) ->
    get_firewall_domain_list(Client, FirewallDomainListId, #{}, #{}).

-spec get_firewall_domain_list(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_domain_list_errors(), tuple()}.
get_firewall_domain_list(Client, FirewallDomainListId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_firewall_domain_list(Client, FirewallDomainListId, QueryMap, HeadersMap, []).

-spec get_firewall_domain_list(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_domain_list_errors(), tuple()}.
get_firewall_domain_list(Client, FirewallDomainListId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(FirewallDomainListId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a DNS firewall rule.
-spec get_firewall_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_errors(), tuple()}.
get_firewall_rule(Client, FirewallRuleId)
  when is_map(Client) ->
    get_firewall_rule(Client, FirewallRuleId, #{}, #{}).

-spec get_firewall_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_errors(), tuple()}.
get_firewall_rule(Client, FirewallRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_firewall_rule(Client, FirewallRuleId, QueryMap, HeadersMap, []).

-spec get_firewall_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, get_firewall_rule_errors(), tuple()}.
get_firewall_rule(Client, FirewallRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/firewall-rules/", aws_util:encode_uri(FirewallRuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Route 53 Global Resolver instance.
-spec get_global_resolver(aws_client:aws_client(), binary() | list()) ->
    {ok, get_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, get_global_resolver_errors(), tuple()}.
get_global_resolver(Client, GlobalResolverId)
  when is_map(Client) ->
    get_global_resolver(Client, GlobalResolverId, #{}, #{}).

-spec get_global_resolver(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, get_global_resolver_errors(), tuple()}.
get_global_resolver(Client, GlobalResolverId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_resolver(Client, GlobalResolverId, QueryMap, HeadersMap, []).

-spec get_global_resolver(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, get_global_resolver_errors(), tuple()}.
get_global_resolver(Client, GlobalResolverId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-resolver/", aws_util:encode_uri(GlobalResolverId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a hosted zone association.
-spec get_hosted_zone_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_hosted_zone_association_output(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_association_errors(), tuple()}.
get_hosted_zone_association(Client, HostedZoneAssociationId)
  when is_map(Client) ->
    get_hosted_zone_association(Client, HostedZoneAssociationId, #{}, #{}).

-spec get_hosted_zone_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_hosted_zone_association_output(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_association_errors(), tuple()}.
get_hosted_zone_association(Client, HostedZoneAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone_association(Client, HostedZoneAssociationId, QueryMap, HeadersMap, []).

-spec get_hosted_zone_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_hosted_zone_association_output(), tuple()} |
    {error, any()} |
    {error, get_hosted_zone_association_errors(), tuple()}.
get_hosted_zone_association(Client, HostedZoneAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hosted-zone-associations/", aws_util:encode_uri(HostedZoneAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an AWS-managed firewall domain list.
%%
%% Managed domain lists contain domains associated with malicious activity,
%% content categories, or specific threats.
-spec get_managed_firewall_domain_list(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_managed_firewall_domain_list_errors(), tuple()}.
get_managed_firewall_domain_list(Client, ManagedFirewallDomainListId)
  when is_map(Client) ->
    get_managed_firewall_domain_list(Client, ManagedFirewallDomainListId, #{}, #{}).

-spec get_managed_firewall_domain_list(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_managed_firewall_domain_list_errors(), tuple()}.
get_managed_firewall_domain_list(Client, ManagedFirewallDomainListId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_firewall_domain_list(Client, ManagedFirewallDomainListId, QueryMap, HeadersMap, []).

-spec get_managed_firewall_domain_list(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_firewall_domain_list_output(), tuple()} |
    {error, any()} |
    {error, get_managed_firewall_domain_list_errors(), tuple()}.
get_managed_firewall_domain_list(Client, ManagedFirewallDomainListId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-firewall-domain-lists/", aws_util:encode_uri(ManagedFirewallDomainListId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a list of domains from an Amazon S3 file into a firewall
%% domain list.
%%
%% The file should contain one domain per line.
-spec import_firewall_domains(aws_client:aws_client(), binary() | list(), import_firewall_domains_input()) ->
    {ok, import_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, import_firewall_domains_errors(), tuple()}.
import_firewall_domains(Client, FirewallDomainListId, Input) ->
    import_firewall_domains(Client, FirewallDomainListId, Input, []).

-spec import_firewall_domains(aws_client:aws_client(), binary() | list(), import_firewall_domains_input(), proplists:proplist()) ->
    {ok, import_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, import_firewall_domains_errors(), tuple()}.
import_firewall_domains(Client, FirewallDomainListId, Input0, Options0) ->
    Method = patch,
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(FirewallDomainListId), "/domains/s3_file_url"],
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

%% @doc Lists all access sources with pagination support.
-spec list_access_sources(aws_client:aws_client()) ->
    {ok, list_access_sources_output(), tuple()} |
    {error, any()} |
    {error, list_access_sources_errors(), tuple()}.
list_access_sources(Client)
  when is_map(Client) ->
    list_access_sources(Client, #{}, #{}).

-spec list_access_sources(aws_client:aws_client(), map(), map()) ->
    {ok, list_access_sources_output(), tuple()} |
    {error, any()} |
    {error, list_access_sources_errors(), tuple()}.
list_access_sources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_sources(Client, QueryMap, HeadersMap, []).

-spec list_access_sources(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_access_sources_output(), tuple()} |
    {error, any()} |
    {error, list_access_sources_errors(), tuple()}.
list_access_sources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-sources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filters">>, maps:get(<<"filters">>, QueryMap, undefined)},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all access tokens for a DNS view with pagination support.
-spec list_access_tokens(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_tokens_output(), tuple()} |
    {error, any()} |
    {error, list_access_tokens_errors(), tuple()}.
list_access_tokens(Client, DnsViewId)
  when is_map(Client) ->
    list_access_tokens(Client, DnsViewId, #{}, #{}).

-spec list_access_tokens(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_tokens_output(), tuple()} |
    {error, any()} |
    {error, list_access_tokens_errors(), tuple()}.
list_access_tokens(Client, DnsViewId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_tokens(Client, DnsViewId, QueryMap, HeadersMap, []).

-spec list_access_tokens(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_tokens_output(), tuple()} |
    {error, any()} |
    {error, list_access_tokens_errors(), tuple()}.
list_access_tokens(Client, DnsViewId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tokens/dns-view/", aws_util:encode_uri(DnsViewId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filters">>, maps:get(<<"filters">>, QueryMap, undefined)},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all DNS views for a Route 53 Global Resolver with pagination
%% support.
-spec list_dns_views(aws_client:aws_client(), binary() | list()) ->
    {ok, list_dns_views_output(), tuple()} |
    {error, any()} |
    {error, list_dns_views_errors(), tuple()}.
list_dns_views(Client, GlobalResolverId)
  when is_map(Client) ->
    list_dns_views(Client, GlobalResolverId, #{}, #{}).

-spec list_dns_views(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_dns_views_output(), tuple()} |
    {error, any()} |
    {error, list_dns_views_errors(), tuple()}.
list_dns_views(Client, GlobalResolverId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dns_views(Client, GlobalResolverId, QueryMap, HeadersMap, []).

-spec list_dns_views(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dns_views_output(), tuple()} |
    {error, any()} |
    {error, list_dns_views_errors(), tuple()}.
list_dns_views(Client, GlobalResolverId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dns-views/resolver/", aws_util:encode_uri(GlobalResolverId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all firewall domain lists for a Route 53 Global Resolver with
%% pagination support.
-spec list_firewall_domain_lists(aws_client:aws_client()) ->
    {ok, list_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domain_lists_errors(), tuple()}.
list_firewall_domain_lists(Client)
  when is_map(Client) ->
    list_firewall_domain_lists(Client, #{}, #{}).

-spec list_firewall_domain_lists(aws_client:aws_client(), map(), map()) ->
    {ok, list_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domain_lists_errors(), tuple()}.
list_firewall_domain_lists(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_firewall_domain_lists(Client, QueryMap, HeadersMap, []).

-spec list_firewall_domain_lists(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domain_lists_errors(), tuple()}.
list_firewall_domain_lists(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/firewall-domain-lists"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"global_resolver_id">>, maps:get(<<"global_resolver_id">>, QueryMap, undefined)},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the domains in DNS Firewall domain list you have created.
-spec list_firewall_domains(aws_client:aws_client(), binary() | list()) ->
    {ok, list_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domains_errors(), tuple()}.
list_firewall_domains(Client, FirewallDomainListId)
  when is_map(Client) ->
    list_firewall_domains(Client, FirewallDomainListId, #{}, #{}).

-spec list_firewall_domains(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domains_errors(), tuple()}.
list_firewall_domains(Client, FirewallDomainListId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_firewall_domains(Client, FirewallDomainListId, QueryMap, HeadersMap, []).

-spec list_firewall_domains(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_domains_errors(), tuple()}.
list_firewall_domains(Client, FirewallDomainListId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(FirewallDomainListId), "/domains"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all DNS firewall rules for a DNS view with pagination support.
-spec list_firewall_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_firewall_rules_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_rules_errors(), tuple()}.
list_firewall_rules(Client, DnsViewId)
  when is_map(Client) ->
    list_firewall_rules(Client, DnsViewId, #{}, #{}).

-spec list_firewall_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_firewall_rules_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_rules_errors(), tuple()}.
list_firewall_rules(Client, DnsViewId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_firewall_rules(Client, DnsViewId, QueryMap, HeadersMap, []).

-spec list_firewall_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_firewall_rules_output(), tuple()} |
    {error, any()} |
    {error, list_firewall_rules_errors(), tuple()}.
list_firewall_rules(Client, DnsViewId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/firewall-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filters">>, maps:get(<<"filters">>, QueryMap, undefined)},
        {<<"dnsview_id">>, DnsViewId},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Route 53 Global Resolver instances in your account with
%% pagination support.
-spec list_global_resolvers(aws_client:aws_client()) ->
    {ok, list_global_resolvers_output(), tuple()} |
    {error, any()} |
    {error, list_global_resolvers_errors(), tuple()}.
list_global_resolvers(Client)
  when is_map(Client) ->
    list_global_resolvers(Client, #{}, #{}).

-spec list_global_resolvers(aws_client:aws_client(), map(), map()) ->
    {ok, list_global_resolvers_output(), tuple()} |
    {error, any()} |
    {error, list_global_resolvers_errors(), tuple()}.
list_global_resolvers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_global_resolvers(Client, QueryMap, HeadersMap, []).

-spec list_global_resolvers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_global_resolvers_output(), tuple()} |
    {error, any()} |
    {error, list_global_resolvers_errors(), tuple()}.
list_global_resolvers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-resolver"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all hosted zone associations for a Route 53 Global Resolver
%% resource with pagination support.
-spec list_hosted_zone_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_hosted_zone_associations_output(), tuple()} |
    {error, any()} |
    {error, list_hosted_zone_associations_errors(), tuple()}.
list_hosted_zone_associations(Client, ResourceArn)
  when is_map(Client) ->
    list_hosted_zone_associations(Client, ResourceArn, #{}, #{}).

-spec list_hosted_zone_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_hosted_zone_associations_output(), tuple()} |
    {error, any()} |
    {error, list_hosted_zone_associations_errors(), tuple()}.
list_hosted_zone_associations(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zone_associations(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_hosted_zone_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_hosted_zone_associations_output(), tuple()} |
    {error, any()} |
    {error, list_hosted_zone_associations_errors(), tuple()}.
list_hosted_zone_associations(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hosted-zone-associations/resource-arn/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of the AWS Managed DNS Lists and the
%% categories for DNS Firewall.
%%
%% The categories are either `THREAT' or `CONTENT'.
-spec list_managed_firewall_domain_lists(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_managed_firewall_domain_lists_errors(), tuple()}.
list_managed_firewall_domain_lists(Client, ManagedFirewallDomainListType)
  when is_map(Client) ->
    list_managed_firewall_domain_lists(Client, ManagedFirewallDomainListType, #{}, #{}).

-spec list_managed_firewall_domain_lists(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_managed_firewall_domain_lists_errors(), tuple()}.
list_managed_firewall_domain_lists(Client, ManagedFirewallDomainListType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_firewall_domain_lists(Client, ManagedFirewallDomainListType, QueryMap, HeadersMap, []).

-spec list_managed_firewall_domain_lists(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_firewall_domain_lists_output(), tuple()} |
    {error, any()} |
    {error, list_managed_firewall_domain_lists_errors(), tuple()}.
list_managed_firewall_domain_lists(Client, ManagedFirewallDomainListType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-managed-firewall-domain-lists/", aws_util:encode_uri(ManagedFirewallDomainListType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with a Route 53 Global Resolver resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-all-tags"],
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

%% @doc Adds or updates tags for a Route 53 Global Resolver resource.
%%
%% Tags are key-value pairs that help you organize and identify your
%% resources.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tag-resource"],
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

%% @doc Removes tags from a Route 53 Global Resolver resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untag-resource"],
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

%% @doc Updates the configuration of an access source.
-spec update_access_source(aws_client:aws_client(), binary() | list(), update_access_source_input()) ->
    {ok, update_access_source_output(), tuple()} |
    {error, any()} |
    {error, update_access_source_errors(), tuple()}.
update_access_source(Client, AccessSourceId, Input) ->
    update_access_source(Client, AccessSourceId, Input, []).

-spec update_access_source(aws_client:aws_client(), binary() | list(), update_access_source_input(), proplists:proplist()) ->
    {ok, update_access_source_output(), tuple()} |
    {error, any()} |
    {error, update_access_source_errors(), tuple()}.
update_access_source(Client, AccessSourceId, Input0, Options0) ->
    Method = patch,
    Path = ["/access-sources/", aws_util:encode_uri(AccessSourceId), ""],
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

%% @doc Updates the configuration of an access token.
-spec update_access_token(aws_client:aws_client(), binary() | list(), update_access_token_input()) ->
    {ok, update_access_token_output(), tuple()} |
    {error, any()} |
    {error, update_access_token_errors(), tuple()}.
update_access_token(Client, AccessTokenId, Input) ->
    update_access_token(Client, AccessTokenId, Input, []).

-spec update_access_token(aws_client:aws_client(), binary() | list(), update_access_token_input(), proplists:proplist()) ->
    {ok, update_access_token_output(), tuple()} |
    {error, any()} |
    {error, update_access_token_errors(), tuple()}.
update_access_token(Client, AccessTokenId, Input0, Options0) ->
    Method = patch,
    Path = ["/tokens/", aws_util:encode_uri(AccessTokenId), ""],
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

%% @doc Updates the configuration of a DNS view.
-spec update_dns_view(aws_client:aws_client(), binary() | list(), update_dns_view_input()) ->
    {ok, update_dns_view_output(), tuple()} |
    {error, any()} |
    {error, update_dns_view_errors(), tuple()}.
update_dns_view(Client, DnsViewId, Input) ->
    update_dns_view(Client, DnsViewId, Input, []).

-spec update_dns_view(aws_client:aws_client(), binary() | list(), update_dns_view_input(), proplists:proplist()) ->
    {ok, update_dns_view_output(), tuple()} |
    {error, any()} |
    {error, update_dns_view_errors(), tuple()}.
update_dns_view(Client, DnsViewId, Input0, Options0) ->
    Method = patch,
    Path = ["/dns-views/", aws_util:encode_uri(DnsViewId), ""],
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

%% @doc Updates a DNS Firewall domain list from an array of specified
%% domains.
-spec update_firewall_domains(aws_client:aws_client(), binary() | list(), update_firewall_domains_input()) ->
    {ok, update_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, update_firewall_domains_errors(), tuple()}.
update_firewall_domains(Client, FirewallDomainListId, Input) ->
    update_firewall_domains(Client, FirewallDomainListId, Input, []).

-spec update_firewall_domains(aws_client:aws_client(), binary() | list(), update_firewall_domains_input(), proplists:proplist()) ->
    {ok, update_firewall_domains_output(), tuple()} |
    {error, any()} |
    {error, update_firewall_domains_errors(), tuple()}.
update_firewall_domains(Client, FirewallDomainListId, Input0, Options0) ->
    Method = patch,
    Path = ["/firewall-domain-lists/", aws_util:encode_uri(FirewallDomainListId), "/domains"],
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

%% @doc Updates the configuration of a DNS firewall rule.
-spec update_firewall_rule(aws_client:aws_client(), binary() | list(), update_firewall_rule_input()) ->
    {ok, update_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_errors(), tuple()}.
update_firewall_rule(Client, FirewallRuleId, Input) ->
    update_firewall_rule(Client, FirewallRuleId, Input, []).

-spec update_firewall_rule(aws_client:aws_client(), binary() | list(), update_firewall_rule_input(), proplists:proplist()) ->
    {ok, update_firewall_rule_output(), tuple()} |
    {error, any()} |
    {error, update_firewall_rule_errors(), tuple()}.
update_firewall_rule(Client, FirewallRuleId, Input0, Options0) ->
    Method = patch,
    Path = ["/firewall-rules/", aws_util:encode_uri(FirewallRuleId), ""],
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

%% @doc Updates the configuration of a Route 53 Global Resolver instance.
%%
%% You can modify the name, description, and observability region.
-spec update_global_resolver(aws_client:aws_client(), binary() | list(), update_global_resolver_input()) ->
    {ok, update_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, update_global_resolver_errors(), tuple()}.
update_global_resolver(Client, GlobalResolverId, Input) ->
    update_global_resolver(Client, GlobalResolverId, Input, []).

-spec update_global_resolver(aws_client:aws_client(), binary() | list(), update_global_resolver_input(), proplists:proplist()) ->
    {ok, update_global_resolver_output(), tuple()} |
    {error, any()} |
    {error, update_global_resolver_errors(), tuple()}.
update_global_resolver(Client, GlobalResolverId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-resolver/", aws_util:encode_uri(GlobalResolverId), ""],
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

%% @doc Updates the configuration of a hosted zone association.
-spec update_hosted_zone_association(aws_client:aws_client(), binary() | list(), update_hosted_zone_association_input()) ->
    {ok, update_hosted_zone_association_output(), tuple()} |
    {error, any()} |
    {error, update_hosted_zone_association_errors(), tuple()}.
update_hosted_zone_association(Client, HostedZoneAssociationId, Input) ->
    update_hosted_zone_association(Client, HostedZoneAssociationId, Input, []).

-spec update_hosted_zone_association(aws_client:aws_client(), binary() | list(), update_hosted_zone_association_input(), proplists:proplist()) ->
    {ok, update_hosted_zone_association_output(), tuple()} |
    {error, any()} |
    {error, update_hosted_zone_association_errors(), tuple()}.
update_hosted_zone_association(Client, HostedZoneAssociationId, Input0, Options0) ->
    Method = patch,
    Path = ["/hosted-zone-associations/", aws_util:encode_uri(HostedZoneAssociationId), ""],
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
    Client1 = Client#{service => <<"route53globalresolver">>},
    Host = build_host(<<"route53globalresolver">>, Client1),
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
