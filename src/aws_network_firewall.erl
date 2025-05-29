%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the API Reference for Network Firewall.
%%
%% This guide is for developers who need
%% detailed information about the Network Firewall API actions, data types,
%% and errors.
%%
%% The REST API requires you to handle connection details, such as
%% calculating
%% signatures, handling request retries, and error handling. For general
%% information
%% about using the Amazon Web Services REST APIs, see Amazon Web Services
%% APIs: https://docs.aws.amazon.com/general/latest/gr/aws-apis.html.
%%
%% To view the complete list of Amazon Web Services Regions where Network
%% Firewall is available, see
%% Service
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/network-firewall.html in the
%% Amazon Web Services General
%% Reference.
%%
%% To access Network Firewall using the IPv4 REST API endpoint:
%% `https://network-firewall..amazonaws.com '
%%
%% To access Network Firewall using the Dualstack (IPv4 and IPv6) REST API
%% endpoint:
%% `https://network-firewall..aws.api '
%%
%% Alternatively, you can use one of the Amazon Web Services SDKs to access
%% an API that's tailored to
%% the programming language or platform that you're using. For more
%% information, see
%% Amazon Web Services SDKs: http://aws.amazon.com/tools/#SDKs.
%%
%% For descriptions of Network Firewall features, including and step-by-step
%% instructions on how to use them through the Network Firewall console, see
%% the Network Firewall Developer
%% Guide:
%% https://docs.aws.amazon.com/network-firewall/latest/developerguide/.
%%
%% Network Firewall is a stateful, managed, network firewall and intrusion
%% detection and
%% prevention service for Amazon Virtual Private Cloud (Amazon VPC). With
%% Network Firewall, you can filter traffic at the
%% perimeter of your VPC. This includes filtering traffic going to and coming
%% from an internet
%% gateway, NAT gateway, or over VPN or Direct Connect. Network Firewall uses
%% rules that are compatible
%% with Suricata, a free, open source network analysis and threat detection
%% engine.
%% Network Firewall supports Suricata version 7.0.3. For information about
%% Suricata,
%% see the Suricata website: https://suricata.io/ and the
%% Suricata User Guide: https://suricata.readthedocs.io/en/suricata-7.0.3/.
%%
%% You can use Network Firewall to monitor and protect your VPC traffic in a
%% number of ways.
%% The following are just a few examples:
%%
%% Allow domains or IP addresses for known Amazon Web Services service
%% endpoints, such as Amazon S3, and
%% block all other forms of traffic.
%%
%% Use custom lists of known bad domains to limit the types of domain names
%% that your
%% applications can access.
%%
%% Perform deep packet inspection on traffic entering or leaving your VPC.
%%
%% Use stateful protocol detection to filter protocols like HTTPS, regardless
%% of the
%% port used.
%%
%% To enable Network Firewall for your VPCs, you perform steps in both Amazon
%% VPC and in
%% Network Firewall. For information about using Amazon VPC, see Amazon VPC
%% User Guide: https://docs.aws.amazon.com/vpc/latest/userguide/.
%%
%% To start using Network Firewall, do the following:
%%
%% (Optional) If you don't already have a VPC that you want to protect,
%% create it in
%% Amazon VPC.
%%
%% In Amazon VPC, in each Availability Zone where you want to have a firewall
%% endpoint, create a
%% subnet for the sole use of Network Firewall.
%%
%% In Network Firewall, define the firewall behavior as follows:
%%
%% Create stateless and stateful rule groups,
%% to define the components of the network traffic filtering behavior that
%% you want your firewall to have.
%%
%% Create a firewall policy that uses your rule groups and
%% specifies additional default traffic filtering behavior.
%%
%% In Network Firewall, create a firewall and specify your new firewall
%% policy and
%% VPC subnets. Network Firewall creates a firewall endpoint in each subnet
%% that you
%% specify, with the behavior that's defined in the firewall policy.
%%
%% In Amazon VPC, use ingress routing enhancements to route traffic through
%% the new firewall
%% endpoints.
%%
%% After your firewall is established, you can add firewall endpoints for new
%% Availability Zones by following the prior steps for the Amazon VPC setup
%% and
%% firewall subnet definitions. You can also add endpoints to Availability
%% Zones that you're using in the firewall, either for the same VPC
%% or for another VPC, by following the prior steps for the Amazon VPC setup,
%% and defining the new VPC subnets as VPC endpoint associations.
-module(aws_network_firewall).

-export([associate_firewall_policy/2,
         associate_firewall_policy/3,
         associate_subnets/2,
         associate_subnets/3,
         create_firewall/2,
         create_firewall/3,
         create_firewall_policy/2,
         create_firewall_policy/3,
         create_rule_group/2,
         create_rule_group/3,
         create_t_l_s_inspection_configuration/2,
         create_t_l_s_inspection_configuration/3,
         create_vpc_endpoint_association/2,
         create_vpc_endpoint_association/3,
         delete_firewall/2,
         delete_firewall/3,
         delete_firewall_policy/2,
         delete_firewall_policy/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_rule_group/2,
         delete_rule_group/3,
         delete_t_l_s_inspection_configuration/2,
         delete_t_l_s_inspection_configuration/3,
         delete_vpc_endpoint_association/2,
         delete_vpc_endpoint_association/3,
         describe_firewall/2,
         describe_firewall/3,
         describe_firewall_metadata/2,
         describe_firewall_metadata/3,
         describe_firewall_policy/2,
         describe_firewall_policy/3,
         describe_flow_operation/2,
         describe_flow_operation/3,
         describe_logging_configuration/2,
         describe_logging_configuration/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_rule_group/2,
         describe_rule_group/3,
         describe_rule_group_metadata/2,
         describe_rule_group_metadata/3,
         describe_t_l_s_inspection_configuration/2,
         describe_t_l_s_inspection_configuration/3,
         describe_vpc_endpoint_association/2,
         describe_vpc_endpoint_association/3,
         disassociate_subnets/2,
         disassociate_subnets/3,
         get_analysis_report_results/2,
         get_analysis_report_results/3,
         list_analysis_reports/2,
         list_analysis_reports/3,
         list_firewall_policies/2,
         list_firewall_policies/3,
         list_firewalls/2,
         list_firewalls/3,
         list_flow_operation_results/2,
         list_flow_operation_results/3,
         list_flow_operations/2,
         list_flow_operations/3,
         list_rule_groups/2,
         list_rule_groups/3,
         list_t_l_s_inspection_configurations/2,
         list_t_l_s_inspection_configurations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vpc_endpoint_associations/2,
         list_vpc_endpoint_associations/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_analysis_report/2,
         start_analysis_report/3,
         start_flow_capture/2,
         start_flow_capture/3,
         start_flow_flush/2,
         start_flow_flush/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_firewall_analysis_settings/2,
         update_firewall_analysis_settings/3,
         update_firewall_delete_protection/2,
         update_firewall_delete_protection/3,
         update_firewall_description/2,
         update_firewall_description/3,
         update_firewall_encryption_configuration/2,
         update_firewall_encryption_configuration/3,
         update_firewall_policy/2,
         update_firewall_policy/3,
         update_firewall_policy_change_protection/2,
         update_firewall_policy_change_protection/3,
         update_logging_configuration/2,
         update_logging_configuration/3,
         update_rule_group/2,
         update_rule_group/3,
         update_subnet_change_protection/2,
         update_subnet_change_protection/3,
         update_t_l_s_inspection_configuration/2,
         update_t_l_s_inspection_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_firewall_description_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_description_request() :: #{binary() => any()}.

%% Example:
%% list_t_l_s_inspection_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_t_l_s_inspection_configurations_request() :: #{binary() => any()}.

%% Example:
%% server_certificate_configuration() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CheckCertificateRevocationStatus">> => check_certificate_revocation_status_actions(),
%%   <<"Scopes">> => list(server_certificate_scope()()),
%%   <<"ServerCertificates">> => list(server_certificate()())
%% }
-type server_certificate_configuration() :: #{binary() => any()}.

%% Example:
%% t_c_p_flag_field() :: #{
%%   <<"Flags">> => list(list(any())()),
%%   <<"Masks">> => list(list(any())())
%% }
-type t_c_p_flag_field() :: #{binary() => any()}.

%% Example:
%% a_z_sync_state() :: #{
%%   <<"Attachment">> => attachment()
%% }
-type a_z_sync_state() :: #{binary() => any()}.

%% Example:
%% analysis_result() :: #{
%%   <<"AnalysisDetail">> => string(),
%%   <<"IdentifiedRuleIds">> => list(string()()),
%%   <<"IdentifiedType">> => list(any())
%% }
-type analysis_result() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"KeyId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% rules_source() :: #{
%%   <<"RulesSourceList">> => rules_source_list(),
%%   <<"RulesString">> => string(),
%%   <<"StatefulRules">> => list(stateful_rule()()),
%%   <<"StatelessRulesAndCustomActions">> => stateless_rules_and_custom_actions()
%% }
-type rules_source() :: #{binary() => any()}.

%% Example:
%% update_rule_group_response() :: #{
%%   <<"RuleGroupResponse">> => rule_group_response(),
%%   <<"UpdateToken">> => string()
%% }
-type update_rule_group_response() :: #{binary() => any()}.

%% Example:
%% flow_filter() :: #{
%%   <<"DestinationAddress">> => address(),
%%   <<"DestinationPort">> => string(),
%%   <<"Protocols">> => list(string()()),
%%   <<"SourceAddress">> => address(),
%%   <<"SourcePort">> => string()
%% }
-type flow_filter() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% stateful_rule_group_override() :: #{
%%   <<"Action">> => list(any())
%% }
-type stateful_rule_group_override() :: #{binary() => any()}.

%% Example:
%% rule_group_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type rule_group_metadata() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuleGroups">> => list(rule_group_metadata()())
%% }
-type list_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% start_flow_capture_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"FlowFilters">> := list(flow_filter()()),
%%   <<"MinimumFlowAgeInSeconds">> => integer(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type start_flow_capture_request() :: #{binary() => any()}.

%% Example:
%% describe_flow_operation_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"FlowOperationId">> := string(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type describe_flow_operation_request() :: #{binary() => any()}.

%% Example:
%% describe_flow_operation_response() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FlowOperation">> => flow_operation(),
%%   <<"FlowOperationId">> => string(),
%%   <<"FlowOperationStatus">> => list(any()),
%%   <<"FlowOperationType">> => list(any()),
%%   <<"FlowRequestTimestamp">> => non_neg_integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type describe_flow_operation_response() :: #{binary() => any()}.

%% Example:
%% associate_subnets_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"UpdateToken">> => string()
%% }
-type associate_subnets_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_policy_change_protection_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyChangeProtection">> := boolean(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_policy_change_protection_request() :: #{binary() => any()}.

%% Example:
%% stateful_engine_options() :: #{
%%   <<"FlowTimeouts">> => flow_timeouts(),
%%   <<"RuleOrder">> => list(any()),
%%   <<"StreamExceptionPolicy">> => list(any())
%% }
-type stateful_engine_options() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% rule_definition() :: #{
%%   <<"Actions">> => list(string()()),
%%   <<"MatchAttributes">> => match_attributes()
%% }
-type rule_definition() :: #{binary() => any()}.

%% Example:
%% resource_owner_check_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_owner_check_exception() :: #{binary() => any()}.

%% Example:
%% t_l_s_inspection_configuration_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type t_l_s_inspection_configuration_metadata() :: #{binary() => any()}.

%% Example:
%% describe_t_l_s_inspection_configuration_request() :: #{
%%   <<"TLSInspectionConfigurationArn">> => string(),
%%   <<"TLSInspectionConfigurationName">> => string()
%% }
-type describe_t_l_s_inspection_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_rule_group_metadata_request() :: #{
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_rule_group_metadata_request() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_association_response() :: #{
%%   <<"VpcEndpointAssociation">> => vpc_endpoint_association(),
%%   <<"VpcEndpointAssociationStatus">> => vpc_endpoint_association_status()
%% }
-type delete_vpc_endpoint_association_response() :: #{binary() => any()}.

%% Example:
%% get_analysis_report_results_response() :: #{
%%   <<"AnalysisReportResults">> => list(analysis_type_report_result()()),
%%   <<"AnalysisType">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReportTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type get_analysis_report_results_response() :: #{binary() => any()}.

%% Example:
%% describe_rule_group_request() :: #{
%%   <<"AnalyzeRuleGroup">> => boolean(),
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_rule_group_request() :: #{binary() => any()}.

%% Example:
%% rule_group() :: #{
%%   <<"ReferenceSets">> => reference_sets(),
%%   <<"RuleVariables">> => rule_variables(),
%%   <<"RulesSource">> => rules_source(),
%%   <<"StatefulRuleOptions">> => stateful_rule_options()
%% }
-type rule_group() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% attachment() :: #{
%%   <<"EndpointId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type attachment() :: #{binary() => any()}.

%% Example:
%% update_firewall_analysis_settings_request() :: #{
%%   <<"EnabledAnalysisTypes">> => list(list(any())()),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_analysis_settings_request() :: #{binary() => any()}.

%% Example:
%% t_l_s_inspection_configuration() :: #{
%%   <<"ServerCertificateConfigurations">> => list(server_certificate_configuration()())
%% }
-type t_l_s_inspection_configuration() :: #{binary() => any()}.

%% Example:
%% update_logging_configuration_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type update_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% subnet_mapping() :: #{
%%   <<"IPAddressType">> => list(any()),
%%   <<"SubnetId">> => string()
%% }
-type subnet_mapping() :: #{binary() => any()}.

%% Example:
%% update_firewall_encryption_configuration_response() :: #{
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_encryption_configuration_response() :: #{binary() => any()}.

%% Example:
%% publish_metric_action() :: #{
%%   <<"Dimensions">> => list(dimension()())
%% }
-type publish_metric_action() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% header() :: #{
%%   <<"Destination">> => string(),
%%   <<"DestinationPort">> => string(),
%%   <<"Direction">> => list(any()),
%%   <<"Protocol">> => list(any()),
%%   <<"Source">> => string(),
%%   <<"SourcePort">> => string()
%% }
-type header() :: #{binary() => any()}.

%% Example:
%% describe_firewall_metadata_response() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SupportedAvailabilityZones">> => map()
%% }
-type describe_firewall_metadata_response() :: #{binary() => any()}.

%% Example:
%% create_firewall_policy_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallPolicy">> := firewall_policy(),
%%   <<"FirewallPolicyName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_firewall_policy_request() :: #{binary() => any()}.

%% Example:
%% associate_firewall_policy_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyArn">> := string(),
%%   <<"UpdateToken">> => string()
%% }
-type associate_firewall_policy_request() :: #{binary() => any()}.

%% Example:
%% list_vpc_endpoint_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointAssociations">> => list(vpc_endpoint_association_metadata()())
%% }
-type list_vpc_endpoint_associations_response() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"LogDestinationConfigs">> => list(log_destination_config()())
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% tls_certificate_data() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateSerial">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type tls_certificate_data() :: #{binary() => any()}.

%% Example:
%% firewall_policy() :: #{
%%   <<"PolicyVariables">> => policy_variables(),
%%   <<"StatefulDefaultActions">> => list(string()()),
%%   <<"StatefulEngineOptions">> => stateful_engine_options(),
%%   <<"StatefulRuleGroupReferences">> => list(stateful_rule_group_reference()()),
%%   <<"StatelessCustomActions">> => list(custom_action()()),
%%   <<"StatelessDefaultActions">> => list(string()()),
%%   <<"StatelessFragmentDefaultActions">> => list(string()()),
%%   <<"StatelessRuleGroupReferences">> => list(stateless_rule_group_reference()()),
%%   <<"TLSInspectionConfigurationArn">> => string()
%% }
-type firewall_policy() :: #{binary() => any()}.

%% Example:
%% describe_vpc_endpoint_association_response() :: #{
%%   <<"VpcEndpointAssociation">> => vpc_endpoint_association(),
%%   <<"VpcEndpointAssociationStatus">> => vpc_endpoint_association_status()
%% }
-type describe_vpc_endpoint_association_response() :: #{binary() => any()}.

%% Example:
%% get_analysis_report_results_request() :: #{
%%   <<"AnalysisReportId">> := string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_analysis_report_results_request() :: #{binary() => any()}.

%% Example:
%% update_firewall_policy_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallPolicy">> := firewall_policy(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyName">> => string(),
%%   <<"UpdateToken">> := string()
%% }
-type update_firewall_policy_request() :: #{binary() => any()}.

%% Example:
%% create_rule_group_response() :: #{
%%   <<"RuleGroupResponse">> => rule_group_response(),
%%   <<"UpdateToken">> => string()
%% }
-type create_rule_group_response() :: #{binary() => any()}.

%% Example:
%% create_rule_group_request() :: #{
%%   <<"AnalyzeRuleGroup">> => boolean(),
%%   <<"Capacity">> := integer(),
%%   <<"Description">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"RuleGroup">> => rule_group(),
%%   <<"RuleGroupName">> := string(),
%%   <<"Rules">> => string(),
%%   <<"SourceMetadata">> => source_metadata(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> := list(any())
%% }
-type create_rule_group_request() :: #{binary() => any()}.

%% Example:
%% ip_set_metadata() :: #{
%%   <<"ResolvedCIDRCount">> => integer()
%% }
-type ip_set_metadata() :: #{binary() => any()}.

%% Example:
%% insufficient_capacity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_capacity_exception() :: #{binary() => any()}.

%% Example:
%% list_analysis_reports_response() :: #{
%%   <<"AnalysisReports">> => list(analysis_report()()),
%%   <<"NextToken">> => string()
%% }
-type list_analysis_reports_response() :: #{binary() => any()}.

%% Example:
%% firewall_status() :: #{
%%   <<"CapacityUsageSummary">> => capacity_usage_summary(),
%%   <<"ConfigurationSyncStateSummary">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"SyncStates">> => map()
%% }
-type firewall_status() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_association_status() :: #{
%%   <<"AssociationSyncState">> => map(),
%%   <<"Status">> => list(any())
%% }
-type vpc_endpoint_association_status() :: #{binary() => any()}.

%% Example:
%% delete_firewall_response() :: #{
%%   <<"Firewall">> => firewall(),
%%   <<"FirewallStatus">> => firewall_status()
%% }
-type delete_firewall_response() :: #{binary() => any()}.

%% Example:
%% list_flow_operations_response() :: #{
%%   <<"FlowOperations">> => list(flow_operation_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type list_flow_operations_response() :: #{binary() => any()}.

%% Example:
%% describe_vpc_endpoint_association_request() :: #{
%%   <<"VpcEndpointAssociationArn">> := string()
%% }
-type describe_vpc_endpoint_association_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_firewall_policy_response() :: #{
%%   <<"FirewallPolicyResponse">> => firewall_policy_response()
%% }
-type delete_firewall_policy_response() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_association_metadata() :: #{
%%   <<"VpcEndpointAssociationArn">> => string()
%% }
-type vpc_endpoint_association_metadata() :: #{binary() => any()}.

%% Example:
%% create_firewall_policy_response() :: #{
%%   <<"FirewallPolicyResponse">> => firewall_policy_response(),
%%   <<"UpdateToken">> => string()
%% }
-type create_firewall_policy_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% server_certificate_scope() :: #{
%%   <<"DestinationPorts">> => list(port_range()()),
%%   <<"Destinations">> => list(address()()),
%%   <<"Protocols">> => list(integer()()),
%%   <<"SourcePorts">> => list(port_range()()),
%%   <<"Sources">> => list(address()())
%% }
-type server_certificate_scope() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% flow_operation_metadata() :: #{
%%   <<"FlowOperationId">> => string(),
%%   <<"FlowOperationStatus">> => list(any()),
%%   <<"FlowOperationType">> => list(any()),
%%   <<"FlowRequestTimestamp">> => non_neg_integer()
%% }
-type flow_operation_metadata() :: #{binary() => any()}.

%% Example:
%% describe_logging_configuration_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string()
%% }
-type describe_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% disassociate_subnets_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"UpdateToken">> => string()
%% }
-type disassociate_subnets_response() :: #{binary() => any()}.

%% Example:
%% sync_state() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"Config">> => map()
%% }
-type sync_state() :: #{binary() => any()}.

%% Example:
%% hits() :: #{
%%   <<"Count">> => integer()
%% }
-type hits() :: #{binary() => any()}.

%% Example:
%% create_firewall_response() :: #{
%%   <<"Firewall">> => firewall(),
%%   <<"FirewallStatus">> => firewall_status()
%% }
-type create_firewall_response() :: #{binary() => any()}.

%% Example:
%% per_object_status() :: #{
%%   <<"SyncStatus">> => list(any()),
%%   <<"UpdateToken">> => string()
%% }
-type per_object_status() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_association() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"SubnetMapping">> => subnet_mapping(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointAssociationId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type vpc_endpoint_association() :: #{binary() => any()}.

%% Example:
%% describe_firewall_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string()
%% }
-type describe_firewall_request() :: #{binary() => any()}.

%% Example:
%% delete_t_l_s_inspection_configuration_request() :: #{
%%   <<"TLSInspectionConfigurationArn">> => string(),
%%   <<"TLSInspectionConfigurationName">> => string()
%% }
-type delete_t_l_s_inspection_configuration_request() :: #{binary() => any()}.

%% Example:
%% rule_group_response() :: #{
%%   <<"AnalysisResults">> => list(analysis_result()()),
%%   <<"Capacity">> => integer(),
%%   <<"ConsumedCapacity">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NumberOfAssociations">> => integer(),
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupId">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"RuleGroupStatus">> => list(any()),
%%   <<"SnsTopic">> => string(),
%%   <<"SourceMetadata">> => source_metadata(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => list(any())
%% }
-type rule_group_response() :: #{binary() => any()}.

%% Example:
%% analysis_report() :: #{
%%   <<"AnalysisReportId">> => string(),
%%   <<"AnalysisType">> => list(any()),
%%   <<"ReportTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type analysis_report() :: #{binary() => any()}.

%% Example:
%% ip_set() :: #{
%%   <<"Definition">> => list(string()())
%% }
-type ip_set() :: #{binary() => any()}.

%% Example:
%% list_flow_operation_results_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"FlowOperationId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type list_flow_operation_results_request() :: #{binary() => any()}.

%% Example:
%% stateful_rule() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Header">> => header(),
%%   <<"RuleOptions">> => list(rule_option()())
%% }
-type stateful_rule() :: #{binary() => any()}.

%% Example:
%% create_vpc_endpoint_association_response() :: #{
%%   <<"VpcEndpointAssociation">> => vpc_endpoint_association(),
%%   <<"VpcEndpointAssociationStatus">> => vpc_endpoint_association_status()
%% }
-type create_vpc_endpoint_association_response() :: #{binary() => any()}.

%% Example:
%% stateful_rule_group_reference() :: #{
%%   <<"Override">> => stateful_rule_group_override(),
%%   <<"Priority">> => integer(),
%%   <<"ResourceArn">> => string()
%% }
-type stateful_rule_group_reference() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_firewalls_response() :: #{
%%   <<"Firewalls">> => list(firewall_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type list_firewalls_response() :: #{binary() => any()}.

%% Example:
%% create_t_l_s_inspection_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"TLSInspectionConfiguration">> := t_l_s_inspection_configuration(),
%%   <<"TLSInspectionConfigurationName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_t_l_s_inspection_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_analysis_reports_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_analysis_reports_request() :: #{binary() => any()}.

%% Example:
%% firewall_policy_response() :: #{
%%   <<"ConsumedStatefulRuleCapacity">> => integer(),
%%   <<"ConsumedStatelessRuleCapacity">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyId">> => string(),
%%   <<"FirewallPolicyName">> => string(),
%%   <<"FirewallPolicyStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NumberOfAssociations">> => integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type firewall_policy_response() :: #{binary() => any()}.

%% Example:
%% flow_operation() :: #{
%%   <<"FlowFilters">> => list(flow_filter()()),
%%   <<"MinimumFlowAgeInSeconds">> => integer()
%% }
-type flow_operation() :: #{binary() => any()}.

%% Example:
%% start_flow_capture_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FlowOperationId">> => string(),
%%   <<"FlowOperationStatus">> => list(any())
%% }
-type start_flow_capture_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_policy_change_protection_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyChangeProtection">> => boolean(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_policy_change_protection_response() :: #{binary() => any()}.

%% Example:
%% reference_sets() :: #{
%%   <<"IPSetReferences">> => map()
%% }
-type reference_sets() :: #{binary() => any()}.

%% Example:
%% update_subnet_change_protection_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetChangeProtection">> := boolean(),
%%   <<"UpdateToken">> => string()
%% }
-type update_subnet_change_protection_request() :: #{binary() => any()}.

%% Example:
%% list_flow_operations_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"FlowOperationType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type list_flow_operations_request() :: #{binary() => any()}.

%% Example:
%% firewall() :: #{
%%   <<"DeleteProtection">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"EnabledAnalysisTypes">> => list(list(any())()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallId">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyChangeProtection">> => boolean(),
%%   <<"NumberOfAssociations">> => integer(),
%%   <<"SubnetChangeProtection">> => boolean(),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> => string()
%% }
-type firewall() :: #{binary() => any()}.

%% Example:
%% policy_variables() :: #{
%%   <<"RuleVariables">> => map()
%% }
-type policy_variables() :: #{binary() => any()}.

%% Example:
%% create_firewall_request() :: #{
%%   <<"DeleteProtection">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"EnabledAnalysisTypes">> => list(list(any())()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallName">> := string(),
%%   <<"FirewallPolicyArn">> := string(),
%%   <<"FirewallPolicyChangeProtection">> => boolean(),
%%   <<"SubnetChangeProtection">> => boolean(),
%%   <<"SubnetMappings">> => list(subnet_mapping()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> => string()
%% }
-type create_firewall_request() :: #{binary() => any()}.

%% Example:
%% analysis_type_report_result() :: #{
%%   <<"Domain">> => string(),
%%   <<"FirstAccessed">> => non_neg_integer(),
%%   <<"Hits">> => hits(),
%%   <<"LastAccessed">> => non_neg_integer(),
%%   <<"Protocol">> => string(),
%%   <<"UniqueSources">> => unique_sources()
%% }
-type analysis_type_report_result() :: #{binary() => any()}.

%% Example:
%% delete_firewall_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string()
%% }
-type delete_firewall_request() :: #{binary() => any()}.

%% Example:
%% list_t_l_s_inspection_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TLSInspectionConfigurations">> => list(t_l_s_inspection_configuration_metadata()())
%% }
-type list_t_l_s_inspection_configurations_response() :: #{binary() => any()}.

%% Example:
%% start_flow_flush_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"FlowFilters">> := list(flow_filter()()),
%%   <<"MinimumFlowAgeInSeconds">> => integer(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type start_flow_flush_request() :: #{binary() => any()}.

%% Example:
%% start_flow_flush_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FlowOperationId">> => string(),
%%   <<"FlowOperationStatus">> => list(any())
%% }
-type start_flow_flush_response() :: #{binary() => any()}.

%% Example:
%% t_l_s_inspection_configuration_response() :: #{
%%   <<"CertificateAuthority">> => tls_certificate_data(),
%%   <<"Certificates">> => list(tls_certificate_data()()),
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NumberOfAssociations">> => integer(),
%%   <<"TLSInspectionConfigurationArn">> => string(),
%%   <<"TLSInspectionConfigurationId">> => string(),
%%   <<"TLSInspectionConfigurationName">> => string(),
%%   <<"TLSInspectionConfigurationStatus">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type t_l_s_inspection_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_t_l_s_inspection_configuration_response() :: #{
%%   <<"TLSInspectionConfiguration">> => t_l_s_inspection_configuration(),
%%   <<"TLSInspectionConfigurationResponse">> => t_l_s_inspection_configuration_response(),
%%   <<"UpdateToken">> => string()
%% }
-type describe_t_l_s_inspection_configuration_response() :: #{binary() => any()}.

%% Example:
%% flow_timeouts() :: #{
%%   <<"TcpIdleTimeoutSeconds">> => integer()
%% }
-type flow_timeouts() :: #{binary() => any()}.

%% Example:
%% custom_action() :: #{
%%   <<"ActionDefinition">> => action_definition(),
%%   <<"ActionName">> => string()
%% }
-type custom_action() :: #{binary() => any()}.

%% Example:
%% port_range() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"ToPort">> => integer()
%% }
-type port_range() :: #{binary() => any()}.

%% Example:
%% rules_source_list() :: #{
%%   <<"GeneratedRulesType">> => list(any()),
%%   <<"TargetTypes">> => list(list(any())()),
%%   <<"Targets">> => list(string()())
%% }
-type rules_source_list() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% list_firewall_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_policies_request() :: #{binary() => any()}.

%% Example:
%% list_firewall_policies_response() :: #{
%%   <<"FirewallPolicies">> => list(firewall_policy_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type list_firewall_policies_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_delete_protection_response() :: #{
%%   <<"DeleteProtection">> => boolean(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_delete_protection_response() :: #{binary() => any()}.

%% Example:
%% port_set() :: #{
%%   <<"Definition">> => list(string()())
%% }
-type port_set() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% capacity_usage_summary() :: #{
%%   <<"CIDRs">> => c_id_r_summary()
%% }
-type capacity_usage_summary() :: #{binary() => any()}.

%% Example:
%% update_firewall_encryption_configuration_request() :: #{
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_encryption_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_t_l_s_inspection_configuration_response() :: #{
%%   <<"TLSInspectionConfigurationResponse">> => t_l_s_inspection_configuration_response()
%% }
-type delete_t_l_s_inspection_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_rule_group_request() :: #{
%%   <<"AnalyzeRuleGroup">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"RuleGroup">> => rule_group(),
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"Rules">> => string(),
%%   <<"SourceMetadata">> => source_metadata(),
%%   <<"Type">> => list(any()),
%%   <<"UpdateToken">> := string()
%% }
-type update_rule_group_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_response() :: #{
%%   <<"RuleGroupResponse">> => rule_group_response()
%% }
-type delete_rule_group_response() :: #{binary() => any()}.

%% Example:
%% create_t_l_s_inspection_configuration_response() :: #{
%%   <<"TLSInspectionConfigurationResponse">> => t_l_s_inspection_configuration_response(),
%%   <<"UpdateToken">> => string()
%% }
-type create_t_l_s_inspection_configuration_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% firewall_policy_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type firewall_policy_metadata() :: #{binary() => any()}.

%% Example:
%% stateful_rule_options() :: #{
%%   <<"RuleOrder">> => list(any())
%% }
-type stateful_rule_options() :: #{binary() => any()}.

%% Example:
%% list_firewalls_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VpcIds">> => list(string()())
%% }
-type list_firewalls_request() :: #{binary() => any()}.

%% Example:
%% associate_firewall_policy_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type associate_firewall_policy_response() :: #{binary() => any()}.

%% Example:
%% log_destination_config() :: #{
%%   <<"LogDestination">> => map(),
%%   <<"LogDestinationType">> => list(any()),
%%   <<"LogType">> => list(any())
%% }
-type log_destination_config() :: #{binary() => any()}.

%% Example:
%% invalid_resource_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_resource_policy_exception() :: #{binary() => any()}.

%% Example:
%% describe_firewall_response() :: #{
%%   <<"Firewall">> => firewall(),
%%   <<"FirewallStatus">> => firewall_status(),
%%   <<"UpdateToken">> => string()
%% }
-type describe_firewall_response() :: #{binary() => any()}.

%% Example:
%% unique_sources() :: #{
%%   <<"Count">> => integer()
%% }
-type unique_sources() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_t_l_s_inspection_configuration_response() :: #{
%%   <<"TLSInspectionConfigurationResponse">> => t_l_s_inspection_configuration_response(),
%%   <<"UpdateToken">> => string()
%% }
-type update_t_l_s_inspection_configuration_response() :: #{binary() => any()}.

%% Example:
%% rule_variables() :: #{
%%   <<"IPSets">> => map(),
%%   <<"PortSets">> => map()
%% }
-type rule_variables() :: #{binary() => any()}.

%% Example:
%% update_firewall_analysis_settings_response() :: #{
%%   <<"EnabledAnalysisTypes">> => list(list(any())()),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_analysis_settings_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% describe_logging_configuration_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type describe_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type describe_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% disassociate_subnets_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"UpdateToken">> => string()
%% }
-type disassociate_subnets_request() :: #{binary() => any()}.

%% Example:
%% log_destination_permission_exception() :: #{
%%   <<"Message">> => string()
%% }
-type log_destination_permission_exception() :: #{binary() => any()}.

%% Example:
%% availability_zone_metadata() :: #{
%%   <<"IPAddressType">> => list(any())
%% }
-type availability_zone_metadata() :: #{binary() => any()}.

%% Example:
%% delete_firewall_policy_request() :: #{
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyName">> => string()
%% }
-type delete_firewall_policy_request() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{

%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_vpc_endpoint_association_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> := string(),
%%   <<"SubnetMapping">> := subnet_mapping(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> := string()
%% }
-type create_vpc_endpoint_association_request() :: #{binary() => any()}.

%% Example:
%% start_analysis_report_request() :: #{
%%   <<"AnalysisType">> := list(any()),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string()
%% }
-type start_analysis_report_request() :: #{binary() => any()}.

%% Example:
%% dimension() :: #{
%%   <<"Value">> => string()
%% }
-type dimension() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% update_t_l_s_inspection_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"TLSInspectionConfiguration">> := t_l_s_inspection_configuration(),
%%   <<"TLSInspectionConfigurationArn">> => string(),
%%   <<"TLSInspectionConfigurationName">> => string(),
%%   <<"UpdateToken">> := string()
%% }
-type update_t_l_s_inspection_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_flow_operation_results_response() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FlowOperationId">> => string(),
%%   <<"FlowOperationStatus">> => list(any()),
%%   <<"FlowRequestTimestamp">> => non_neg_integer(),
%%   <<"Flows">> => list(flow()()),
%%   <<"NextToken">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"VpcEndpointAssociationArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type list_flow_operation_results_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_delete_protection_request() :: #{
%%   <<"DeleteProtection">> := boolean(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_delete_protection_request() :: #{binary() => any()}.

%% Example:
%% source_metadata() :: #{
%%   <<"SourceArn">> => string(),
%%   <<"SourceUpdateToken">> => string()
%% }
-type source_metadata() :: #{binary() => any()}.

%% Example:
%% update_firewall_policy_response() :: #{
%%   <<"FirewallPolicyResponse">> => firewall_policy_response(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_policy_response() :: #{binary() => any()}.

%% Example:
%% update_firewall_description_response() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"UpdateToken">> => string()
%% }
-type update_firewall_description_response() :: #{binary() => any()}.

%% Example:
%% match_attributes() :: #{
%%   <<"DestinationPorts">> => list(port_range()()),
%%   <<"Destinations">> => list(address()()),
%%   <<"Protocols">> => list(integer()()),
%%   <<"SourcePorts">> => list(port_range()()),
%%   <<"Sources">> => list(address()()),
%%   <<"TCPFlags">> => list(t_c_p_flag_field()())
%% }
-type match_attributes() :: #{binary() => any()}.

%% Example:
%% describe_rule_group_metadata_response() :: #{
%%   <<"Capacity">> => integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"StatefulRuleOptions">> => stateful_rule_options(),
%%   <<"Type">> => list(any())
%% }
-type describe_rule_group_metadata_response() :: #{binary() => any()}.

%% Example:
%% associate_subnets_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetMappings">> := list(subnet_mapping()()),
%%   <<"UpdateToken">> => string()
%% }
-type associate_subnets_request() :: #{binary() => any()}.

%% Example:
%% address() :: #{
%%   <<"AddressDefinition">> => string()
%% }
-type address() :: #{binary() => any()}.

%% Example:
%% describe_firewall_metadata_request() :: #{
%%   <<"FirewallArn">> => string()
%% }
-type describe_firewall_metadata_request() :: #{binary() => any()}.

%% Example:
%% flow() :: #{
%%   <<"Age">> => integer(),
%%   <<"ByteCount">> => float(),
%%   <<"DestinationAddress">> => address(),
%%   <<"DestinationPort">> => string(),
%%   <<"PacketCount">> => integer(),
%%   <<"Protocol">> => string(),
%%   <<"SourceAddress">> => address(),
%%   <<"SourcePort">> => string()
%% }
-type flow() :: #{binary() => any()}.

%% Example:
%% update_logging_configuration_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type update_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_rule_group_response() :: #{
%%   <<"RuleGroup">> => rule_group(),
%%   <<"RuleGroupResponse">> => rule_group_response(),
%%   <<"UpdateToken">> => string()
%% }
-type describe_rule_group_response() :: #{binary() => any()}.

%% Example:
%% stateless_rule() :: #{
%%   <<"Priority">> => integer(),
%%   <<"RuleDefinition">> => rule_definition()
%% }
-type stateless_rule() :: #{binary() => any()}.

%% Example:
%% invalid_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_token_exception() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_request() :: #{
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type delete_rule_group_request() :: #{binary() => any()}.

%% Example:
%% stateless_rule_group_reference() :: #{
%%   <<"Priority">> => integer(),
%%   <<"ResourceArn">> => string()
%% }
-type stateless_rule_group_reference() :: #{binary() => any()}.

%% Example:
%% firewall_metadata() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string()
%% }
-type firewall_metadata() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_association_request() :: #{
%%   <<"VpcEndpointAssociationArn">> := string()
%% }
-type delete_vpc_endpoint_association_request() :: #{binary() => any()}.

%% Example:
%% c_id_r_summary() :: #{
%%   <<"AvailableCIDRCount">> => integer(),
%%   <<"IPSetReferences">> => map(),
%%   <<"UtilizedCIDRCount">> => integer()
%% }
-type c_id_r_summary() :: #{binary() => any()}.

%% Example:
%% update_subnet_change_protection_response() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"SubnetChangeProtection">> => boolean(),
%%   <<"UpdateToken">> => string()
%% }
-type update_subnet_change_protection_response() :: #{binary() => any()}.

%% Example:
%% stateless_rules_and_custom_actions() :: #{
%%   <<"CustomActions">> => list(custom_action()()),
%%   <<"StatelessRules">> => list(stateless_rule()())
%% }
-type stateless_rules_and_custom_actions() :: #{binary() => any()}.

%% Example:
%% rule_option() :: #{
%%   <<"Keyword">> => string(),
%%   <<"Settings">> => list(string()())
%% }
-type rule_option() :: #{binary() => any()}.

%% Example:
%% check_certificate_revocation_status_actions() :: #{
%%   <<"RevokedStatusAction">> => list(any()),
%%   <<"UnknownStatusAction">> => list(any())
%% }
-type check_certificate_revocation_status_actions() :: #{binary() => any()}.

%% Example:
%% start_analysis_report_response() :: #{
%%   <<"AnalysisReportId">> => string()
%% }
-type start_analysis_report_response() :: #{binary() => any()}.

%% Example:
%% ip_set_reference() :: #{
%%   <<"ReferenceArn">> => string()
%% }
-type ip_set_reference() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_request() :: #{
%%   <<"ManagedType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Scope">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type list_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% action_definition() :: #{
%%   <<"PublishMetricAction">> => publish_metric_action()
%% }
-type action_definition() :: #{binary() => any()}.

%% Example:
%% describe_firewall_policy_request() :: #{
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyName">> => string()
%% }
-type describe_firewall_policy_request() :: #{binary() => any()}.

%% Example:
%% server_certificate() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type server_certificate() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type describe_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% list_vpc_endpoint_associations_request() :: #{
%%   <<"FirewallArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoint_associations_request() :: #{binary() => any()}.

%% Example:
%% describe_firewall_policy_response() :: #{
%%   <<"FirewallPolicy">> => firewall_policy(),
%%   <<"FirewallPolicyResponse">> => firewall_policy_response(),
%%   <<"UpdateToken">> => string()
%% }
-type describe_firewall_policy_response() :: #{binary() => any()}.

-type associate_firewall_policy_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type associate_subnets_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    insufficient_capacity_exception() | 
    invalid_operation_exception().

-type create_firewall_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    insufficient_capacity_exception() | 
    invalid_operation_exception().

-type create_firewall_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    insufficient_capacity_exception().

-type create_rule_group_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    insufficient_capacity_exception().

-type create_t_l_s_inspection_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    insufficient_capacity_exception().

-type create_vpc_endpoint_association_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    insufficient_capacity_exception() | 
    invalid_operation_exception().

-type delete_firewall_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception() | 
    unsupported_operation_exception().

-type delete_firewall_policy_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception() | 
    unsupported_operation_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    invalid_resource_policy_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_rule_group_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception() | 
    unsupported_operation_exception().

-type delete_t_l_s_inspection_configuration_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type delete_vpc_endpoint_association_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type describe_firewall_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_firewall_metadata_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_firewall_policy_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_flow_operation_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_logging_configuration_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_resource_policy_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_rule_group_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_rule_group_metadata_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_t_l_s_inspection_configuration_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_vpc_endpoint_association_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type disassociate_subnets_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_operation_exception().

-type get_analysis_report_results_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_analysis_reports_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_firewall_policies_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception().

-type list_firewalls_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception().

-type list_flow_operation_results_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_flow_operations_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_rule_groups_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception().

-type list_t_l_s_inspection_configurations_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_vpc_endpoint_associations_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    invalid_resource_policy_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_analysis_report_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_flow_capture_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_flow_flush_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_firewall_analysis_settings_errors() ::
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_firewall_delete_protection_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_owner_check_exception().

-type update_firewall_description_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_firewall_encryption_configuration_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_owner_check_exception().

-type update_firewall_policy_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_firewall_policy_change_protection_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_owner_check_exception().

-type update_logging_configuration_errors() ::
    invalid_token_exception() | 
    log_destination_permission_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_rule_group_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_subnet_change_protection_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_owner_check_exception().

-type update_t_l_s_inspection_configuration_errors() ::
    invalid_token_exception() | 
    throttling_exception() | 
    internal_server_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a `FirewallPolicy' to a `Firewall'.
%%
%% A firewall policy defines how to monitor and manage your VPC network
%% traffic, using a
%% collection of inspection rule groups and other settings. Each firewall
%% requires one
%% firewall policy association, and you can use the same firewall policy for
%% multiple
%% firewalls.
-spec associate_firewall_policy(aws_client:aws_client(), associate_firewall_policy_request()) ->
    {ok, associate_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, associate_firewall_policy_errors(), tuple()}.
associate_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_firewall_policy(Client, Input, []).

-spec associate_firewall_policy(aws_client:aws_client(), associate_firewall_policy_request(), proplists:proplist()) ->
    {ok, associate_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, associate_firewall_policy_errors(), tuple()}.
associate_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFirewallPolicy">>, Input, Options).

%% @doc Associates the specified subnets in the Amazon VPC to the firewall.
%%
%% You can specify one
%% subnet for each of the Availability Zones that the VPC spans.
%%
%% This request creates an Network Firewall firewall endpoint in each of the
%% subnets. To
%% enable the firewall's protections, you must also modify the VPC's
%% route tables for each
%% subnet's Availability Zone, to redirect the traffic that's coming
%% into and going out of the
%% zone through the firewall endpoint.
-spec associate_subnets(aws_client:aws_client(), associate_subnets_request()) ->
    {ok, associate_subnets_response(), tuple()} |
    {error, any()} |
    {error, associate_subnets_errors(), tuple()}.
associate_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_subnets(Client, Input, []).

-spec associate_subnets(aws_client:aws_client(), associate_subnets_request(), proplists:proplist()) ->
    {ok, associate_subnets_response(), tuple()} |
    {error, any()} |
    {error, associate_subnets_errors(), tuple()}.
associate_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSubnets">>, Input, Options).

%% @doc Creates an Network Firewall `Firewall' and accompanying
%% `FirewallStatus' for a VPC.
%%
%% The firewall defines the configuration settings for an Network Firewall
%% firewall. The settings that you can define at creation include the
%% firewall policy, the subnets in your VPC to use for the firewall
%% endpoints, and any tags that are attached to the firewall Amazon Web
%% Services resource.
%%
%% After you create a firewall, you can provide additional settings, like the
%% logging configuration.
%%
%% To update the settings for a firewall, you use the operations that apply
%% to the settings
%% themselves, for example `UpdateLoggingConfiguration',
%% `AssociateSubnets', and `UpdateFirewallDeleteProtection'.
%%
%% To manage a firewall's tags, use the standard Amazon Web Services
%% resource tagging operations, `ListTagsForResource', `TagResource',
%% and `UntagResource'.
%%
%% To retrieve information about firewalls, use `ListFirewalls' and
%% `DescribeFirewall'.
%%
%% To generate a report on the last 30 days of traffic monitored by a
%% firewall, use `StartAnalysisReport'.
-spec create_firewall(aws_client:aws_client(), create_firewall_request()) ->
    {ok, create_firewall_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_errors(), tuple()}.
create_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall(Client, Input, []).

-spec create_firewall(aws_client:aws_client(), create_firewall_request(), proplists:proplist()) ->
    {ok, create_firewall_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_errors(), tuple()}.
create_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewall">>, Input, Options).

%% @doc Creates the firewall policy for the firewall according to the
%% specifications.
%%
%% An Network Firewall firewall policy defines the behavior of a firewall, in
%% a collection of
%% stateless and stateful rule groups and other settings. You can use one
%% firewall policy for
%% multiple firewalls.
-spec create_firewall_policy(aws_client:aws_client(), create_firewall_policy_request()) ->
    {ok, create_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_policy_errors(), tuple()}.
create_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_firewall_policy(Client, Input, []).

-spec create_firewall_policy(aws_client:aws_client(), create_firewall_policy_request(), proplists:proplist()) ->
    {ok, create_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, create_firewall_policy_errors(), tuple()}.
create_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFirewallPolicy">>, Input, Options).

%% @doc Creates the specified stateless or stateful rule group, which
%% includes the rules for
%% network traffic inspection, a capacity setting, and tags.
%%
%% You provide your rule group specification in your request using either
%% `RuleGroup' or `Rules'.
-spec create_rule_group(aws_client:aws_client(), create_rule_group_request()) ->
    {ok, create_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_rule_group_errors(), tuple()}.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).

-spec create_rule_group(aws_client:aws_client(), create_rule_group_request(), proplists:proplist()) ->
    {ok, create_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_rule_group_errors(), tuple()}.
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc Creates an Network Firewall TLS inspection configuration.
%%
%% Network Firewall uses TLS inspection configurations to decrypt your
%% firewall's inbound and outbound SSL/TLS traffic. After decryption,
%% Network Firewall inspects the traffic according to your firewall
%% policy's stateful rules, and then re-encrypts it before sending it to
%% its destination. You can enable inspection of your firewall's inbound
%% traffic, outbound traffic, or both. To use TLS inspection with your
%% firewall, you must first import or provision certificates using ACM,
%% create a TLS inspection configuration, add that configuration to a new
%% firewall policy, and then associate that policy with your firewall.
%%
%% To update the settings for a TLS inspection configuration, use
%% `UpdateTLSInspectionConfiguration'.
%%
%% To manage a TLS inspection configuration's tags, use the standard
%% Amazon Web Services resource tagging operations,
%% `ListTagsForResource', `TagResource', and `UntagResource'.
%%
%% To retrieve information about TLS inspection configurations, use
%% `ListTLSInspectionConfigurations' and
%% `DescribeTLSInspectionConfiguration'.
%%
%% For more information about TLS inspection configurations, see Inspecting
%% SSL/TLS traffic with TLS
%% inspection configurations:
%% https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
%% in the Network Firewall Developer Guide.
-spec create_t_l_s_inspection_configuration(aws_client:aws_client(), create_t_l_s_inspection_configuration_request()) ->
    {ok, create_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_t_l_s_inspection_configuration_errors(), tuple()}.
create_t_l_s_inspection_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_t_l_s_inspection_configuration(Client, Input, []).

-spec create_t_l_s_inspection_configuration(aws_client:aws_client(), create_t_l_s_inspection_configuration_request(), proplists:proplist()) ->
    {ok, create_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_t_l_s_inspection_configuration_errors(), tuple()}.
create_t_l_s_inspection_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTLSInspectionConfiguration">>, Input, Options).

%% @doc Creates a firewall endpoint for an Network Firewall firewall.
%%
%% This type of firewall endpoint is independent of the firewall endpoints
%% that you specify in the `Firewall' itself, and you define it in
%% addition to those endpoints after the firewall has been created. You can
%% define a VPC endpoint association using a different VPC than the one you
%% used in the firewall specifications.
-spec create_vpc_endpoint_association(aws_client:aws_client(), create_vpc_endpoint_association_request()) ->
    {ok, create_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_association_errors(), tuple()}.
create_vpc_endpoint_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint_association(Client, Input, []).

-spec create_vpc_endpoint_association(aws_client:aws_client(), create_vpc_endpoint_association_request(), proplists:proplist()) ->
    {ok, create_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_association_errors(), tuple()}.
create_vpc_endpoint_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpointAssociation">>, Input, Options).

%% @doc Deletes the specified `Firewall' and its `FirewallStatus'.
%%
%% This operation requires the firewall's `DeleteProtection' flag to
%% be
%% `FALSE'. You can't revert this operation.
%%
%% You can check whether a firewall is
%% in use by reviewing the route tables for the Availability Zones where you
%% have
%% firewall subnet mappings. Retrieve the subnet mappings by calling
%% `DescribeFirewall'.
%% You define and update the route tables through Amazon VPC. As needed,
%% update the route tables for the
%% zones to remove the firewall endpoints. When the route tables no longer
%% use the firewall endpoints,
%% you can remove the firewall safely.
%%
%% To delete a firewall, remove the delete protection if you need to using
%% `UpdateFirewallDeleteProtection',
%% then delete the firewall by calling `DeleteFirewall'.
-spec delete_firewall(aws_client:aws_client(), delete_firewall_request()) ->
    {ok, delete_firewall_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_errors(), tuple()}.
delete_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall(Client, Input, []).

-spec delete_firewall(aws_client:aws_client(), delete_firewall_request(), proplists:proplist()) ->
    {ok, delete_firewall_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_errors(), tuple()}.
delete_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewall">>, Input, Options).

%% @doc Deletes the specified `FirewallPolicy'.
-spec delete_firewall_policy(aws_client:aws_client(), delete_firewall_policy_request()) ->
    {ok, delete_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_policy_errors(), tuple()}.
delete_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_policy(Client, Input, []).

-spec delete_firewall_policy(aws_client:aws_client(), delete_firewall_policy_request(), proplists:proplist()) ->
    {ok, delete_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_policy_errors(), tuple()}.
delete_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallPolicy">>, Input, Options).

%% @doc Deletes a resource policy that you created in a
%% `PutResourcePolicy' request.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the specified `RuleGroup'.
-spec delete_rule_group(aws_client:aws_client(), delete_rule_group_request()) ->
    {ok, delete_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_group_errors(), tuple()}.
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).

-spec delete_rule_group(aws_client:aws_client(), delete_rule_group_request(), proplists:proplist()) ->
    {ok, delete_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_group_errors(), tuple()}.
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc Deletes the specified `TLSInspectionConfiguration'.
-spec delete_t_l_s_inspection_configuration(aws_client:aws_client(), delete_t_l_s_inspection_configuration_request()) ->
    {ok, delete_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_t_l_s_inspection_configuration_errors(), tuple()}.
delete_t_l_s_inspection_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_t_l_s_inspection_configuration(Client, Input, []).

-spec delete_t_l_s_inspection_configuration(aws_client:aws_client(), delete_t_l_s_inspection_configuration_request(), proplists:proplist()) ->
    {ok, delete_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_t_l_s_inspection_configuration_errors(), tuple()}.
delete_t_l_s_inspection_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTLSInspectionConfiguration">>, Input, Options).

%% @doc Deletes the specified `VpcEndpointAssociation'.
%%
%% You can check whether an endpoint association is
%% in use by reviewing the route tables for the Availability Zones where you
%% have the endpoint subnet mapping.
%% You can retrieve the subnet mapping by calling
%% `DescribeVpcEndpointAssociation'.
%% You define and update the route tables through Amazon VPC. As needed,
%% update the route tables for the
%% Availability Zone to remove the firewall endpoint for the association.
%% When the route tables no longer use the firewall endpoint,
%% you can remove the endpoint association safely.
-spec delete_vpc_endpoint_association(aws_client:aws_client(), delete_vpc_endpoint_association_request()) ->
    {ok, delete_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_association_errors(), tuple()}.
delete_vpc_endpoint_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoint_association(Client, Input, []).

-spec delete_vpc_endpoint_association(aws_client:aws_client(), delete_vpc_endpoint_association_request(), proplists:proplist()) ->
    {ok, delete_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_association_errors(), tuple()}.
delete_vpc_endpoint_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpointAssociation">>, Input, Options).

%% @doc Returns the data objects for the specified firewall.
-spec describe_firewall(aws_client:aws_client(), describe_firewall_request()) ->
    {ok, describe_firewall_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_errors(), tuple()}.
describe_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_firewall(Client, Input, []).

-spec describe_firewall(aws_client:aws_client(), describe_firewall_request(), proplists:proplist()) ->
    {ok, describe_firewall_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_errors(), tuple()}.
describe_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFirewall">>, Input, Options).

%% @doc Returns the high-level information about a firewall, including the
%% Availability Zones where the Firewall is
%% currently in use.
-spec describe_firewall_metadata(aws_client:aws_client(), describe_firewall_metadata_request()) ->
    {ok, describe_firewall_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_metadata_errors(), tuple()}.
describe_firewall_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_firewall_metadata(Client, Input, []).

-spec describe_firewall_metadata(aws_client:aws_client(), describe_firewall_metadata_request(), proplists:proplist()) ->
    {ok, describe_firewall_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_metadata_errors(), tuple()}.
describe_firewall_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFirewallMetadata">>, Input, Options).

%% @doc Returns the data objects for the specified firewall policy.
-spec describe_firewall_policy(aws_client:aws_client(), describe_firewall_policy_request()) ->
    {ok, describe_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_policy_errors(), tuple()}.
describe_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_firewall_policy(Client, Input, []).

-spec describe_firewall_policy(aws_client:aws_client(), describe_firewall_policy_request(), proplists:proplist()) ->
    {ok, describe_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_firewall_policy_errors(), tuple()}.
describe_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFirewallPolicy">>, Input, Options).

%% @doc Returns key information about a specific flow operation.
-spec describe_flow_operation(aws_client:aws_client(), describe_flow_operation_request()) ->
    {ok, describe_flow_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_operation_errors(), tuple()}.
describe_flow_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flow_operation(Client, Input, []).

-spec describe_flow_operation(aws_client:aws_client(), describe_flow_operation_request(), proplists:proplist()) ->
    {ok, describe_flow_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_operation_errors(), tuple()}.
describe_flow_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlowOperation">>, Input, Options).

%% @doc Returns the logging configuration for the specified firewall.
-spec describe_logging_configuration(aws_client:aws_client(), describe_logging_configuration_request()) ->
    {ok, describe_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_configuration_errors(), tuple()}.
describe_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_logging_configuration(Client, Input, []).

-spec describe_logging_configuration(aws_client:aws_client(), describe_logging_configuration_request(), proplists:proplist()) ->
    {ok, describe_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_configuration_errors(), tuple()}.
describe_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoggingConfiguration">>, Input, Options).

%% @doc Retrieves a resource policy that you created in a
%% `PutResourcePolicy' request.
-spec describe_resource_policy(aws_client:aws_client(), describe_resource_policy_request()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).

-spec describe_resource_policy(aws_client:aws_client(), describe_resource_policy_request(), proplists:proplist()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Returns the data objects for the specified rule group.
-spec describe_rule_group(aws_client:aws_client(), describe_rule_group_request()) ->
    {ok, describe_rule_group_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_group_errors(), tuple()}.
describe_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule_group(Client, Input, []).

-spec describe_rule_group(aws_client:aws_client(), describe_rule_group_request(), proplists:proplist()) ->
    {ok, describe_rule_group_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_group_errors(), tuple()}.
describe_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuleGroup">>, Input, Options).

%% @doc High-level information about a rule group, returned by operations
%% like create and describe.
%%
%% You can use the information provided in the metadata to retrieve and
%% manage a rule group.
%% You can retrieve all objects for a rule group by calling
%% `DescribeRuleGroup'.
-spec describe_rule_group_metadata(aws_client:aws_client(), describe_rule_group_metadata_request()) ->
    {ok, describe_rule_group_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_group_metadata_errors(), tuple()}.
describe_rule_group_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule_group_metadata(Client, Input, []).

-spec describe_rule_group_metadata(aws_client:aws_client(), describe_rule_group_metadata_request(), proplists:proplist()) ->
    {ok, describe_rule_group_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_rule_group_metadata_errors(), tuple()}.
describe_rule_group_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuleGroupMetadata">>, Input, Options).

%% @doc Returns the data objects for the specified TLS inspection
%% configuration.
-spec describe_t_l_s_inspection_configuration(aws_client:aws_client(), describe_t_l_s_inspection_configuration_request()) ->
    {ok, describe_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_t_l_s_inspection_configuration_errors(), tuple()}.
describe_t_l_s_inspection_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_t_l_s_inspection_configuration(Client, Input, []).

-spec describe_t_l_s_inspection_configuration(aws_client:aws_client(), describe_t_l_s_inspection_configuration_request(), proplists:proplist()) ->
    {ok, describe_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_t_l_s_inspection_configuration_errors(), tuple()}.
describe_t_l_s_inspection_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTLSInspectionConfiguration">>, Input, Options).

%% @doc Returns the data object for the specified VPC endpoint association.
-spec describe_vpc_endpoint_association(aws_client:aws_client(), describe_vpc_endpoint_association_request()) ->
    {ok, describe_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_endpoint_association_errors(), tuple()}.
describe_vpc_endpoint_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_association(Client, Input, []).

-spec describe_vpc_endpoint_association(aws_client:aws_client(), describe_vpc_endpoint_association_request(), proplists:proplist()) ->
    {ok, describe_vpc_endpoint_association_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_endpoint_association_errors(), tuple()}.
describe_vpc_endpoint_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointAssociation">>, Input, Options).

%% @doc Removes the specified subnet associations from the firewall.
%%
%% This removes the
%% firewall endpoints from the subnets and removes any network filtering
%% protections that the endpoints
%% were providing.
-spec disassociate_subnets(aws_client:aws_client(), disassociate_subnets_request()) ->
    {ok, disassociate_subnets_response(), tuple()} |
    {error, any()} |
    {error, disassociate_subnets_errors(), tuple()}.
disassociate_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_subnets(Client, Input, []).

-spec disassociate_subnets(aws_client:aws_client(), disassociate_subnets_request(), proplists:proplist()) ->
    {ok, disassociate_subnets_response(), tuple()} |
    {error, any()} |
    {error, disassociate_subnets_errors(), tuple()}.
disassociate_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSubnets">>, Input, Options).

%% @doc The results of a `COMPLETED' analysis report generated with
%% `StartAnalysisReport'.
%%
%% For more information, see `AnalysisTypeReportResult'.
-spec get_analysis_report_results(aws_client:aws_client(), get_analysis_report_results_request()) ->
    {ok, get_analysis_report_results_response(), tuple()} |
    {error, any()} |
    {error, get_analysis_report_results_errors(), tuple()}.
get_analysis_report_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_analysis_report_results(Client, Input, []).

-spec get_analysis_report_results(aws_client:aws_client(), get_analysis_report_results_request(), proplists:proplist()) ->
    {ok, get_analysis_report_results_response(), tuple()} |
    {error, any()} |
    {error, get_analysis_report_results_errors(), tuple()}.
get_analysis_report_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnalysisReportResults">>, Input, Options).

%% @doc Returns a list of all traffic analysis reports generated within the
%% last 30 days.
-spec list_analysis_reports(aws_client:aws_client(), list_analysis_reports_request()) ->
    {ok, list_analysis_reports_response(), tuple()} |
    {error, any()} |
    {error, list_analysis_reports_errors(), tuple()}.
list_analysis_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_analysis_reports(Client, Input, []).

-spec list_analysis_reports(aws_client:aws_client(), list_analysis_reports_request(), proplists:proplist()) ->
    {ok, list_analysis_reports_response(), tuple()} |
    {error, any()} |
    {error, list_analysis_reports_errors(), tuple()}.
list_analysis_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAnalysisReports">>, Input, Options).

%% @doc Retrieves the metadata for the firewall policies that you have
%% defined.
%%
%% Depending on
%% your setting for max results and the number of firewall policies, a single
%% call might not
%% return the full list.
-spec list_firewall_policies(aws_client:aws_client(), list_firewall_policies_request()) ->
    {ok, list_firewall_policies_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_policies_errors(), tuple()}.
list_firewall_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewall_policies(Client, Input, []).

-spec list_firewall_policies(aws_client:aws_client(), list_firewall_policies_request(), proplists:proplist()) ->
    {ok, list_firewall_policies_response(), tuple()} |
    {error, any()} |
    {error, list_firewall_policies_errors(), tuple()}.
list_firewall_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewallPolicies">>, Input, Options).

%% @doc Retrieves the metadata for the firewalls that you have defined.
%%
%% If you provide VPC
%% identifiers in your request, this returns only the firewalls for those
%% VPCs.
%%
%% Depending on your setting for max results and the number of firewalls, a
%% single call
%% might not return the full list.
-spec list_firewalls(aws_client:aws_client(), list_firewalls_request()) ->
    {ok, list_firewalls_response(), tuple()} |
    {error, any()} |
    {error, list_firewalls_errors(), tuple()}.
list_firewalls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_firewalls(Client, Input, []).

-spec list_firewalls(aws_client:aws_client(), list_firewalls_request(), proplists:proplist()) ->
    {ok, list_firewalls_response(), tuple()} |
    {error, any()} |
    {error, list_firewalls_errors(), tuple()}.
list_firewalls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFirewalls">>, Input, Options).

%% @doc Returns the results of a specific flow operation.
%%
%% Flow operations let you manage the flows tracked in the flow table, also
%% known as the firewall table.
%%
%% A flow is network traffic that is monitored by a firewall, either by
%% stateful or stateless rules.
%% For traffic to be considered part of a flow, it must share Destination,
%% DestinationPort, Direction, Protocol, Source, and SourcePort.
-spec list_flow_operation_results(aws_client:aws_client(), list_flow_operation_results_request()) ->
    {ok, list_flow_operation_results_response(), tuple()} |
    {error, any()} |
    {error, list_flow_operation_results_errors(), tuple()}.
list_flow_operation_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_operation_results(Client, Input, []).

-spec list_flow_operation_results(aws_client:aws_client(), list_flow_operation_results_request(), proplists:proplist()) ->
    {ok, list_flow_operation_results_response(), tuple()} |
    {error, any()} |
    {error, list_flow_operation_results_errors(), tuple()}.
list_flow_operation_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowOperationResults">>, Input, Options).

%% @doc Returns a list of all flow operations ran in a specific firewall.
%%
%% You can optionally narrow the request scope by specifying the operation
%% type or Availability Zone associated with a firewall's flow
%% operations.
%%
%% Flow operations let you manage the flows tracked in the flow table, also
%% known as the firewall table.
%%
%% A flow is network traffic that is monitored by a firewall, either by
%% stateful or stateless rules.
%% For traffic to be considered part of a flow, it must share Destination,
%% DestinationPort, Direction, Protocol, Source, and SourcePort.
-spec list_flow_operations(aws_client:aws_client(), list_flow_operations_request()) ->
    {ok, list_flow_operations_response(), tuple()} |
    {error, any()} |
    {error, list_flow_operations_errors(), tuple()}.
list_flow_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_operations(Client, Input, []).

-spec list_flow_operations(aws_client:aws_client(), list_flow_operations_request(), proplists:proplist()) ->
    {ok, list_flow_operations_response(), tuple()} |
    {error, any()} |
    {error, list_flow_operations_errors(), tuple()}.
list_flow_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowOperations">>, Input, Options).

%% @doc Retrieves the metadata for the rule groups that you have defined.
%%
%% Depending on your
%% setting for max results and the number of rule groups, a single call might
%% not return the
%% full list.
-spec list_rule_groups(aws_client:aws_client(), list_rule_groups_request()) ->
    {ok, list_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_errors(), tuple()}.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).

-spec list_rule_groups(aws_client:aws_client(), list_rule_groups_request(), proplists:proplist()) ->
    {ok, list_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_errors(), tuple()}.
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc Retrieves the metadata for the TLS inspection configurations that you
%% have defined.
%%
%% Depending on your setting for max results and the number of TLS inspection
%% configurations, a single call might not return the full list.
-spec list_t_l_s_inspection_configurations(aws_client:aws_client(), list_t_l_s_inspection_configurations_request()) ->
    {ok, list_t_l_s_inspection_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_t_l_s_inspection_configurations_errors(), tuple()}.
list_t_l_s_inspection_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_t_l_s_inspection_configurations(Client, Input, []).

-spec list_t_l_s_inspection_configurations(aws_client:aws_client(), list_t_l_s_inspection_configurations_request(), proplists:proplist()) ->
    {ok, list_t_l_s_inspection_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_t_l_s_inspection_configurations_errors(), tuple()}.
list_t_l_s_inspection_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTLSInspectionConfigurations">>, Input, Options).

%% @doc Retrieves the tags associated with the specified resource.
%%
%% Tags are key:value pairs that
%% you can use to categorize and manage your resources, for purposes like
%% billing. For
%% example, you might set the tag key to &quot;customer&quot; and the value
%% to the customer name or ID.
%% You can specify one or more tags to add to each Amazon Web Services
%% resource, up to 50 tags for a
%% resource.
%%
%% You can tag the Amazon Web Services resources that you manage through
%% Network Firewall: firewalls, firewall
%% policies, and rule groups.
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

%% @doc Retrieves the metadata for the VPC endpoint associations that you
%% have defined.
%%
%% If you specify a fireawll,
%% this returns only the endpoint associations for that firewall.
%%
%% Depending on your setting for max results and the number of associations,
%% a single call
%% might not return the full list.
-spec list_vpc_endpoint_associations(aws_client:aws_client(), list_vpc_endpoint_associations_request()) ->
    {ok, list_vpc_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoint_associations_errors(), tuple()}.
list_vpc_endpoint_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_endpoint_associations(Client, Input, []).

-spec list_vpc_endpoint_associations(aws_client:aws_client(), list_vpc_endpoint_associations_request(), proplists:proplist()) ->
    {ok, list_vpc_endpoint_associations_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoint_associations_errors(), tuple()}.
list_vpc_endpoint_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcEndpointAssociations">>, Input, Options).

%% @doc Creates or updates an IAM policy for your rule group, firewall
%% policy, or firewall.
%%
%% Use this to share these resources between accounts. This operation works
%% in conjunction with the Amazon Web Services Resource Access Manager (RAM)
%% service to manage resource sharing for Network Firewall.
%%
%% For information about using sharing with Network Firewall resources, see
%% Sharing Network Firewall resources:
%% https://docs.aws.amazon.com/network-firewall/latest/developerguide/sharing.html
%% in the Network Firewall Developer Guide.
%%
%% Use this operation to create or update a resource policy for your Network
%% Firewall rule group, firewall policy, or firewall. In the resource policy,
%% you specify the accounts that you want to share the Network Firewall
%% resource with and the operations that you want the accounts to be able to
%% perform.
%%
%% When you add an account in the resource policy, you then run the following
%% Resource Access Manager (RAM) operations to access and accept the shared
%% resource.
%%
%% GetResourceShareInvitations:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html
%% - Returns the Amazon Resource Names (ARNs) of the resource share
%% invitations.
%%
%% AcceptResourceShareInvitation:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html
%% - Accepts the share invitation for a specified resource share.
%%
%% For additional information about resource sharing using RAM, see Resource
%% Access Manager User Guide:
%% https://docs.aws.amazon.com/ram/latest/userguide/what-is.html.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Generates a traffic analysis report for the timeframe and traffic
%% type you specify.
%%
%% For information on the contents of a traffic analysis report, see
%% `AnalysisReport'.
-spec start_analysis_report(aws_client:aws_client(), start_analysis_report_request()) ->
    {ok, start_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, start_analysis_report_errors(), tuple()}.
start_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_analysis_report(Client, Input, []).

-spec start_analysis_report(aws_client:aws_client(), start_analysis_report_request(), proplists:proplist()) ->
    {ok, start_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, start_analysis_report_errors(), tuple()}.
start_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAnalysisReport">>, Input, Options).

%% @doc Begins capturing the flows in a firewall, according to the filters
%% you define.
%%
%% Captures are similar, but not identical to snapshots. Capture operations
%% provide visibility into flows that are not closed and are tracked by a
%% firewall's flow table.
%% Unlike snapshots, captures are a time-boxed view.
%%
%% A flow is network traffic that is monitored by a firewall, either by
%% stateful or stateless rules.
%% For traffic to be considered part of a flow, it must share Destination,
%% DestinationPort, Direction, Protocol, Source, and SourcePort.
%%
%% To avoid encountering operation limits, you should avoid starting captures
%% with broad filters, like wide IP ranges.
%% Instead, we recommend you define more specific criteria with
%% `FlowFilters', like narrow IP ranges, ports, or protocols.
-spec start_flow_capture(aws_client:aws_client(), start_flow_capture_request()) ->
    {ok, start_flow_capture_response(), tuple()} |
    {error, any()} |
    {error, start_flow_capture_errors(), tuple()}.
start_flow_capture(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_flow_capture(Client, Input, []).

-spec start_flow_capture(aws_client:aws_client(), start_flow_capture_request(), proplists:proplist()) ->
    {ok, start_flow_capture_response(), tuple()} |
    {error, any()} |
    {error, start_flow_capture_errors(), tuple()}.
start_flow_capture(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFlowCapture">>, Input, Options).

%% @doc Begins the flushing of traffic from the firewall, according to the
%% filters you define.
%%
%% When the operation starts, impacted flows are temporarily marked as timed
%% out before the Suricata engine prunes,
%% or flushes, the flows from the firewall table.
%%
%% While the flush completes, impacted flows are processed as midstream
%% traffic. This may result in a
%% temporary increase in midstream traffic metrics. We recommend that you
%% double check your stream exception policy
%% before you perform a flush operation.
-spec start_flow_flush(aws_client:aws_client(), start_flow_flush_request()) ->
    {ok, start_flow_flush_response(), tuple()} |
    {error, any()} |
    {error, start_flow_flush_errors(), tuple()}.
start_flow_flush(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_flow_flush(Client, Input, []).

-spec start_flow_flush(aws_client:aws_client(), start_flow_flush_request(), proplists:proplist()) ->
    {ok, start_flow_flush_response(), tuple()} |
    {error, any()} |
    {error, start_flow_flush_errors(), tuple()}.
start_flow_flush(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFlowFlush">>, Input, Options).

%% @doc Adds the specified tags to the specified resource.
%%
%% Tags are key:value pairs that you can
%% use to categorize and manage your resources, for purposes like billing.
%% For example, you
%% might set the tag key to &quot;customer&quot; and the value to the
%% customer name or ID. You can
%% specify one or more tags to add to each Amazon Web Services resource, up
%% to 50 tags for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through
%% Network Firewall: firewalls, firewall
%% policies, and rule groups.
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

%% @doc Removes the tags with the specified keys from the specified resource.
%%
%% Tags are key:value
%% pairs that you can use to categorize and manage your resources, for
%% purposes like billing.
%% For example, you might set the tag key to &quot;customer&quot; and the
%% value to the customer name or
%% ID. You can specify one or more tags to add to each Amazon Web Services
%% resource, up to 50 tags for a
%% resource.
%%
%% You can manage tags for the Amazon Web Services resources that you manage
%% through Network Firewall:
%% firewalls, firewall policies, and rule groups.
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

%% @doc Enables specific types of firewall analysis on a specific firewall
%% you define.
-spec update_firewall_analysis_settings(aws_client:aws_client(), update_firewall_analysis_settings_request()) ->
    {ok, update_firewall_analysis_settings_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_analysis_settings_errors(), tuple()}.
update_firewall_analysis_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_analysis_settings(Client, Input, []).

-spec update_firewall_analysis_settings(aws_client:aws_client(), update_firewall_analysis_settings_request(), proplists:proplist()) ->
    {ok, update_firewall_analysis_settings_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_analysis_settings_errors(), tuple()}.
update_firewall_analysis_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallAnalysisSettings">>, Input, Options).

%% @doc Modifies the flag, `DeleteProtection', which indicates whether it
%% is possible
%% to delete the firewall.
%%
%% If the flag is set to `TRUE', the firewall is protected
%% against deletion. This setting helps protect against accidentally deleting
%% a firewall
%% that's in use.
-spec update_firewall_delete_protection(aws_client:aws_client(), update_firewall_delete_protection_request()) ->
    {ok, update_firewall_delete_protection_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_delete_protection_errors(), tuple()}.
update_firewall_delete_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_delete_protection(Client, Input, []).

-spec update_firewall_delete_protection(aws_client:aws_client(), update_firewall_delete_protection_request(), proplists:proplist()) ->
    {ok, update_firewall_delete_protection_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_delete_protection_errors(), tuple()}.
update_firewall_delete_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallDeleteProtection">>, Input, Options).

%% @doc Modifies the description for the specified firewall.
%%
%% Use the description to help you
%% identify the firewall when you're working with it.
-spec update_firewall_description(aws_client:aws_client(), update_firewall_description_request()) ->
    {ok, update_firewall_description_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_description_errors(), tuple()}.
update_firewall_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_description(Client, Input, []).

-spec update_firewall_description(aws_client:aws_client(), update_firewall_description_request(), proplists:proplist()) ->
    {ok, update_firewall_description_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_description_errors(), tuple()}.
update_firewall_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallDescription">>, Input, Options).

%% @doc A complex type that contains settings for encryption of your firewall
%% resources.
-spec update_firewall_encryption_configuration(aws_client:aws_client(), update_firewall_encryption_configuration_request()) ->
    {ok, update_firewall_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_encryption_configuration_errors(), tuple()}.
update_firewall_encryption_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_encryption_configuration(Client, Input, []).

-spec update_firewall_encryption_configuration(aws_client:aws_client(), update_firewall_encryption_configuration_request(), proplists:proplist()) ->
    {ok, update_firewall_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_encryption_configuration_errors(), tuple()}.
update_firewall_encryption_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallEncryptionConfiguration">>, Input, Options).

%% @doc Updates the properties of the specified firewall policy.
-spec update_firewall_policy(aws_client:aws_client(), update_firewall_policy_request()) ->
    {ok, update_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_policy_errors(), tuple()}.
update_firewall_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_policy(Client, Input, []).

-spec update_firewall_policy(aws_client:aws_client(), update_firewall_policy_request(), proplists:proplist()) ->
    {ok, update_firewall_policy_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_policy_errors(), tuple()}.
update_firewall_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallPolicy">>, Input, Options).

%% @doc Modifies the flag, `ChangeProtection', which indicates whether it
%% is possible to change the firewall.
%%
%% If the flag is set to `TRUE', the firewall is protected
%% from changes. This setting helps protect against accidentally changing a
%% firewall that's in use.
-spec update_firewall_policy_change_protection(aws_client:aws_client(), update_firewall_policy_change_protection_request()) ->
    {ok, update_firewall_policy_change_protection_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_policy_change_protection_errors(), tuple()}.
update_firewall_policy_change_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_firewall_policy_change_protection(Client, Input, []).

-spec update_firewall_policy_change_protection(aws_client:aws_client(), update_firewall_policy_change_protection_request(), proplists:proplist()) ->
    {ok, update_firewall_policy_change_protection_response(), tuple()} |
    {error, any()} |
    {error, update_firewall_policy_change_protection_errors(), tuple()}.
update_firewall_policy_change_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFirewallPolicyChangeProtection">>, Input, Options).

%% @doc Sets the logging configuration for the specified firewall.
%%
%% To change the logging configuration, retrieve the
%% `LoggingConfiguration' by calling `DescribeLoggingConfiguration',
%% then change it and provide
%% the modified object to this update call. You must change the logging
%% configuration one
%% `LogDestinationConfig' at a time inside the retrieved
%% `LoggingConfiguration' object.
%%
%% You can perform only one of the following actions in any call to
%% `UpdateLoggingConfiguration':
%%
%% Create a new log destination object by adding a single
%% `LogDestinationConfig' array element to
%% `LogDestinationConfigs'.
%%
%% Delete a log destination object by removing a single
%% `LogDestinationConfig' array element from
%% `LogDestinationConfigs'.
%%
%% Change the `LogDestination' setting in a single
%% `LogDestinationConfig' array element.
%%
%% You can't change the `LogDestinationType' or `LogType' in a
%% `LogDestinationConfig'. To change these settings, delete the existing
%% `LogDestinationConfig' object and create a new one, using two separate
%% calls
%% to this update operation.
-spec update_logging_configuration(aws_client:aws_client(), update_logging_configuration_request()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_logging_configuration(Client, Input, []).

-spec update_logging_configuration(aws_client:aws_client(), update_logging_configuration_request(), proplists:proplist()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoggingConfiguration">>, Input, Options).

%% @doc Updates the rule settings for the specified rule group.
%%
%% You use a rule group by
%% reference in one or more firewall policies. When you modify a rule group,
%% you modify all
%% firewall policies that use the rule group.
%%
%% To update a rule group, first call `DescribeRuleGroup' to retrieve the
%% current `RuleGroup' object, update the object as needed, and then
%% provide
%% the updated object to this call.
-spec update_rule_group(aws_client:aws_client(), update_rule_group_request()) ->
    {ok, update_rule_group_response(), tuple()} |
    {error, any()} |
    {error, update_rule_group_errors(), tuple()}.
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).

-spec update_rule_group(aws_client:aws_client(), update_rule_group_request(), proplists:proplist()) ->
    {ok, update_rule_group_response(), tuple()} |
    {error, any()} |
    {error, update_rule_group_errors(), tuple()}.
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc
-spec update_subnet_change_protection(aws_client:aws_client(), update_subnet_change_protection_request()) ->
    {ok, update_subnet_change_protection_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_change_protection_errors(), tuple()}.
update_subnet_change_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_change_protection(Client, Input, []).

-spec update_subnet_change_protection(aws_client:aws_client(), update_subnet_change_protection_request(), proplists:proplist()) ->
    {ok, update_subnet_change_protection_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_change_protection_errors(), tuple()}.
update_subnet_change_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetChangeProtection">>, Input, Options).

%% @doc Updates the TLS inspection configuration settings for the specified
%% TLS inspection configuration.
%%
%% You use a TLS inspection configuration by
%% referencing it in one or more firewall policies. When you modify a TLS
%% inspection configuration, you modify all
%% firewall policies that use the TLS inspection configuration.
%%
%% To update a TLS inspection configuration, first call
%% `DescribeTLSInspectionConfiguration' to retrieve the
%% current `TLSInspectionConfiguration' object, update the object as
%% needed, and then provide
%% the updated object to this call.
-spec update_t_l_s_inspection_configuration(aws_client:aws_client(), update_t_l_s_inspection_configuration_request()) ->
    {ok, update_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_t_l_s_inspection_configuration_errors(), tuple()}.
update_t_l_s_inspection_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_t_l_s_inspection_configuration(Client, Input, []).

-spec update_t_l_s_inspection_configuration(aws_client:aws_client(), update_t_l_s_inspection_configuration_request(), proplists:proplist()) ->
    {ok, update_t_l_s_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_t_l_s_inspection_configuration_errors(), tuple()}.
update_t_l_s_inspection_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTLSInspectionConfiguration">>, Input, Options).

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
    Client1 = Client#{service => <<"network-firewall">>},
    Host = build_host(<<"network-firewall">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"NetworkFirewall_20201112.", Action/binary>>}
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
