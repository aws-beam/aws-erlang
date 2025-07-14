%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Global Accelerator
%%
%% This is the Global Accelerator API Reference.
%%
%% This guide is for developers who need detailed information about
%% Global Accelerator API actions, data types, and errors. For more
%% information about Global Accelerator features, see the
%% Global Accelerator Developer Guide:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html.
%%
%% Global Accelerator is a service in which you create accelerators to
%% improve the performance
%% of your applications for local and global users. Depending on the type of
%% accelerator you choose, you can
%% gain additional benefits.
%%
%% By using a standard accelerator, you can improve availability of your
%% internet applications
%% that are used by a global audience. With a standard accelerator, Global
%% Accelerator directs traffic to optimal endpoints over the Amazon Web
%% Services
%% global network.
%%
%% For other scenarios, you might choose a custom routing accelerator. With a
%% custom routing accelerator, you
%% can use application logic to directly map one or more users to a specific
%% endpoint among many endpoints.
%%
%% Global Accelerator is a global service that supports endpoints in multiple
%% Amazon Web Services Regions but you must specify the
%% US West (Oregon) Region to create, update, or otherwise work with
%% accelerators. That is, for example, specify `--region us-west-2'
%% on Amazon Web Services CLI commands.
%%
%% By default, Global Accelerator provides you with static IP addresses that
%% you associate with your accelerator. The static IP addresses
%% are anycast from the Amazon Web Services edge network. For IPv4, Global
%% Accelerator provides two static IPv4 addresses. For dual-stack,
%% Global Accelerator provides a total of four addresses: two static IPv4
%% addresses and two static IPv6 addresses.
%% With a standard accelerator for IPv4, instead of using the addresses that
%% Global Accelerator provides, you can configure
%% these entry points to be IPv4 addresses from your own IP address ranges
%% that you bring to Global Accelerator (BYOIP).
%%
%% For a standard accelerator,
%% they distribute incoming application traffic across multiple endpoint
%% resources in multiple Amazon Web Services Regions , which increases
%% the availability of your applications. Endpoints for standard accelerators
%% can be Network Load Balancers, Application Load Balancers,
%% Amazon EC2 instances, or Elastic IP addresses that are located in one
%% Amazon Web Services Region or multiple Amazon Web Services Regions. For
%% custom routing
%% accelerators, you map traffic that arrives to the static IP addresses to
%% specific Amazon EC2 servers in endpoints that
%% are virtual private cloud (VPC) subnets.
%%
%% The static IP addresses remain assigned to your accelerator for as long as
%% it exists, even if you
%% disable the accelerator and it no longer accepts or routes traffic.
%% However, when you
%% delete an accelerator, you lose the static IP addresses that
%% are assigned to it, so you can no longer route traffic by using them. You
%% can use
%% IAM policies like tag-based permissions with Global Accelerator to limit
%% the users who have
%% permissions to delete an accelerator. For more information, see Tag-based
%% policies:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html.
%%
%% For standard accelerators, Global Accelerator uses the Amazon Web Services
%% global network to route traffic to the optimal regional endpoint based
%% on health, client location, and policies that you configure. The service
%% reacts instantly to
%% changes in health or configuration to ensure that internet traffic from
%% clients is always
%% directed to healthy endpoints.
%%
%% For more information about understanding and using Global Accelerator, see
%% the
%% Global Accelerator Developer Guide:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html.
-module(aws_global_accelerator).

-export([add_custom_routing_endpoints/2,
         add_custom_routing_endpoints/3,
         add_endpoints/2,
         add_endpoints/3,
         advertise_byoip_cidr/2,
         advertise_byoip_cidr/3,
         allow_custom_routing_traffic/2,
         allow_custom_routing_traffic/3,
         create_accelerator/2,
         create_accelerator/3,
         create_cross_account_attachment/2,
         create_cross_account_attachment/3,
         create_custom_routing_accelerator/2,
         create_custom_routing_accelerator/3,
         create_custom_routing_endpoint_group/2,
         create_custom_routing_endpoint_group/3,
         create_custom_routing_listener/2,
         create_custom_routing_listener/3,
         create_endpoint_group/2,
         create_endpoint_group/3,
         create_listener/2,
         create_listener/3,
         delete_accelerator/2,
         delete_accelerator/3,
         delete_cross_account_attachment/2,
         delete_cross_account_attachment/3,
         delete_custom_routing_accelerator/2,
         delete_custom_routing_accelerator/3,
         delete_custom_routing_endpoint_group/2,
         delete_custom_routing_endpoint_group/3,
         delete_custom_routing_listener/2,
         delete_custom_routing_listener/3,
         delete_endpoint_group/2,
         delete_endpoint_group/3,
         delete_listener/2,
         delete_listener/3,
         deny_custom_routing_traffic/2,
         deny_custom_routing_traffic/3,
         deprovision_byoip_cidr/2,
         deprovision_byoip_cidr/3,
         describe_accelerator/2,
         describe_accelerator/3,
         describe_accelerator_attributes/2,
         describe_accelerator_attributes/3,
         describe_cross_account_attachment/2,
         describe_cross_account_attachment/3,
         describe_custom_routing_accelerator/2,
         describe_custom_routing_accelerator/3,
         describe_custom_routing_accelerator_attributes/2,
         describe_custom_routing_accelerator_attributes/3,
         describe_custom_routing_endpoint_group/2,
         describe_custom_routing_endpoint_group/3,
         describe_custom_routing_listener/2,
         describe_custom_routing_listener/3,
         describe_endpoint_group/2,
         describe_endpoint_group/3,
         describe_listener/2,
         describe_listener/3,
         list_accelerators/2,
         list_accelerators/3,
         list_byoip_cidrs/2,
         list_byoip_cidrs/3,
         list_cross_account_attachments/2,
         list_cross_account_attachments/3,
         list_cross_account_resource_accounts/2,
         list_cross_account_resource_accounts/3,
         list_cross_account_resources/2,
         list_cross_account_resources/3,
         list_custom_routing_accelerators/2,
         list_custom_routing_accelerators/3,
         list_custom_routing_endpoint_groups/2,
         list_custom_routing_endpoint_groups/3,
         list_custom_routing_listeners/2,
         list_custom_routing_listeners/3,
         list_custom_routing_port_mappings/2,
         list_custom_routing_port_mappings/3,
         list_custom_routing_port_mappings_by_destination/2,
         list_custom_routing_port_mappings_by_destination/3,
         list_endpoint_groups/2,
         list_endpoint_groups/3,
         list_listeners/2,
         list_listeners/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         provision_byoip_cidr/2,
         provision_byoip_cidr/3,
         remove_custom_routing_endpoints/2,
         remove_custom_routing_endpoints/3,
         remove_endpoints/2,
         remove_endpoints/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_accelerator/2,
         update_accelerator/3,
         update_accelerator_attributes/2,
         update_accelerator_attributes/3,
         update_cross_account_attachment/2,
         update_cross_account_attachment/3,
         update_custom_routing_accelerator/2,
         update_custom_routing_accelerator/3,
         update_custom_routing_accelerator_attributes/2,
         update_custom_routing_accelerator_attributes/3,
         update_custom_routing_listener/2,
         update_custom_routing_listener/3,
         update_endpoint_group/2,
         update_endpoint_group/3,
         update_listener/2,
         update_listener/3,
         withdraw_byoip_cidr/2,
         withdraw_byoip_cidr/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_custom_routing_endpoint_group_response() :: #{
%%   <<"EndpointGroup">> => custom_routing_endpoint_group()
%% }
-type create_custom_routing_endpoint_group_response() :: #{binary() => any()}.

%% Example:
%% list_cross_account_resource_accounts_request() :: #{

%% }
-type list_cross_account_resource_accounts_request() :: #{binary() => any()}.

%% Example:
%% endpoint_configuration() :: #{
%%   <<"AttachmentArn">> => string(),
%%   <<"ClientIPPreservationEnabled">> => boolean(),
%%   <<"EndpointId">> => string(),
%%   <<"Weight">> => integer()
%% }
-type endpoint_configuration() :: #{binary() => any()}.

%% Example:
%% byoip_cidr() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Events">> => list(byoip_cidr_event()),
%%   <<"State">> => list(any())
%% }
-type byoip_cidr() :: #{binary() => any()}.

%% Example:
%% describe_accelerator_attributes_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type describe_accelerator_attributes_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_cross_account_attachments_response() :: #{
%%   <<"CrossAccountAttachments">> => list(attachment()),
%%   <<"NextToken">> => string()
%% }
-type list_cross_account_attachments_response() :: #{binary() => any()}.

%% Example:
%% update_accelerator_attributes_response() :: #{
%%   <<"AcceleratorAttributes">> => accelerator_attributes()
%% }
-type update_accelerator_attributes_response() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_accelerator_response() :: #{
%%   <<"Accelerator">> => custom_routing_accelerator()
%% }
-type describe_custom_routing_accelerator_response() :: #{binary() => any()}.

%% Example:
%% update_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpAddresses">> => list(string()),
%%   <<"Name">> => string()
%% }
-type update_accelerator_request() :: #{binary() => any()}.

%% Example:
%% accelerator_attributes() :: #{
%%   <<"FlowLogsEnabled">> => boolean(),
%%   <<"FlowLogsS3Bucket">> => string(),
%%   <<"FlowLogsS3Prefix">> => string()
%% }
-type accelerator_attributes() :: #{binary() => any()}.

%% Example:
%% create_accelerator_response() :: #{
%%   <<"Accelerator">> => accelerator()
%% }
-type create_accelerator_response() :: #{binary() => any()}.

%% Example:
%% create_listener_response() :: #{
%%   <<"Listener">> => listener()
%% }
-type create_listener_response() :: #{binary() => any()}.

%% Example:
%% custom_routing_destination_configuration() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"ToPort">> => integer()
%% }
-type custom_routing_destination_configuration() :: #{binary() => any()}.

%% Example:
%% list_cross_account_attachments_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cross_account_attachments_request() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type describe_custom_routing_accelerator_request() :: #{binary() => any()}.

%% Example:
%% deprovision_byoip_cidr_response() :: #{
%%   <<"ByoipCidr">> => byoip_cidr()
%% }
-type deprovision_byoip_cidr_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% listener() :: #{
%%   <<"ClientAffinity">> => list(any()),
%%   <<"ListenerArn">> => string(),
%%   <<"PortRanges">> => list(port_range()),
%%   <<"Protocol">> => list(any())
%% }
-type listener() :: #{binary() => any()}.

%% Example:
%% endpoint_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type endpoint_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_listener_response() :: #{
%%   <<"Listener">> => custom_routing_listener()
%% }
-type update_custom_routing_listener_response() :: #{binary() => any()}.

%% Example:
%% socket_address() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"Port">> => integer()
%% }
-type socket_address() :: #{binary() => any()}.

%% Example:
%% custom_routing_endpoint_group() :: #{
%%   <<"DestinationDescriptions">> => list(custom_routing_destination_description()),
%%   <<"EndpointDescriptions">> => list(custom_routing_endpoint_description()),
%%   <<"EndpointGroupArn">> => string(),
%%   <<"EndpointGroupRegion">> => string()
%% }
-type custom_routing_endpoint_group() :: #{binary() => any()}.

%% Example:
%% create_custom_routing_listener_response() :: #{
%%   <<"Listener">> => custom_routing_listener()
%% }
-type create_custom_routing_listener_response() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_endpoint_groups_response() :: #{
%%   <<"EndpointGroups">> => list(custom_routing_endpoint_group()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_endpoint_groups_response() :: #{binary() => any()}.

%% Example:
%% describe_accelerator_attributes_response() :: #{
%%   <<"AcceleratorAttributes">> => accelerator_attributes()
%% }
-type describe_accelerator_attributes_response() :: #{binary() => any()}.

%% Example:
%% byoip_cidr_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type byoip_cidr_not_found_exception() :: #{binary() => any()}.

%% Example:
%% custom_routing_destination_description() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"ToPort">> => integer()
%% }
-type custom_routing_destination_description() :: #{binary() => any()}.

%% Example:
%% attachment() :: #{
%%   <<"AttachmentArn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Principals">> => list(string()),
%%   <<"Resources">> => list(resource())
%% }
-type attachment() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_port_mappings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PortMappings">> => list(port_mapping())
%% }
-type list_custom_routing_port_mappings_response() :: #{binary() => any()}.

%% Example:
%% provision_byoip_cidr_response() :: #{
%%   <<"ByoipCidr">> => byoip_cidr()
%% }
-type provision_byoip_cidr_response() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_listener_request() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type describe_custom_routing_listener_request() :: #{binary() => any()}.

%% Example:
%% incorrect_cidr_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type incorrect_cidr_state_exception() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_group_request() :: #{
%%   <<"EndpointGroupArn">> := string()
%% }
-type delete_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% attachment_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type attachment_not_found_exception() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.

%% Example:
%% update_accelerator_attributes_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"FlowLogsEnabled">> => boolean(),
%%   <<"FlowLogsS3Bucket">> => string(),
%%   <<"FlowLogsS3Prefix">> => string()
%% }
-type update_accelerator_attributes_request() :: #{binary() => any()}.

%% Example:
%% endpoint_description() :: #{
%%   <<"ClientIPPreservationEnabled">> => boolean(),
%%   <<"EndpointId">> => string(),
%%   <<"HealthReason">> => string(),
%%   <<"HealthState">> => list(any()),
%%   <<"Weight">> => integer()
%% }
-type endpoint_description() :: #{binary() => any()}.

%% Example:
%% describe_cross_account_attachment_response() :: #{
%%   <<"CrossAccountAttachment">> => attachment()
%% }
-type describe_cross_account_attachment_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_custom_routing_listener_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"PortRanges">> := list(port_range())
%% }
-type create_custom_routing_listener_request() :: #{binary() => any()}.

%% Example:
%% accelerator_not_disabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type accelerator_not_disabled_exception() :: #{binary() => any()}.

%% Example:
%% remove_custom_routing_endpoints_request() :: #{
%%   <<"EndpointGroupArn">> := string(),
%%   <<"EndpointIds">> := list(string())
%% }
-type remove_custom_routing_endpoints_request() :: #{binary() => any()}.

%% Example:
%% create_accelerator_request() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpAddresses">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_accelerator_request() :: #{binary() => any()}.

%% Example:
%% describe_cross_account_attachment_request() :: #{
%%   <<"AttachmentArn">> := string()
%% }
-type describe_cross_account_attachment_request() :: #{binary() => any()}.

%% Example:
%% list_byoip_cidrs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_byoip_cidrs_request() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_listeners_response() :: #{
%%   <<"Listeners">> => list(custom_routing_listener()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_listeners_response() :: #{binary() => any()}.

%% Example:
%% update_cross_account_attachment_request() :: #{
%%   <<"AddPrincipals">> => list(string()),
%%   <<"AddResources">> => list(resource()),
%%   <<"AttachmentArn">> := string(),
%%   <<"Name">> => string(),
%%   <<"RemovePrincipals">> => list(string()),
%%   <<"RemoveResources">> => list(resource())
%% }
-type update_cross_account_attachment_request() :: #{binary() => any()}.

%% Example:
%% endpoint_identifier() :: #{
%%   <<"ClientIPPreservationEnabled">> => boolean(),
%%   <<"EndpointId">> => string()
%% }
-type endpoint_identifier() :: #{binary() => any()}.

%% Example:
%% update_cross_account_attachment_response() :: #{
%%   <<"CrossAccountAttachment">> => attachment()
%% }
-type update_cross_account_attachment_response() :: #{binary() => any()}.

%% Example:
%% add_endpoints_request() :: #{
%%   <<"EndpointConfigurations">> := list(endpoint_configuration()),
%%   <<"EndpointGroupArn">> := string()
%% }
-type add_endpoints_request() :: #{binary() => any()}.

%% Example:
%% create_cross_account_attachment_response() :: #{
%%   <<"CrossAccountAttachment">> => attachment()
%% }
-type create_cross_account_attachment_response() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_port_mappings_by_destination_request() :: #{
%%   <<"DestinationAddress">> := string(),
%%   <<"EndpointId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_port_mappings_by_destination_request() :: #{binary() => any()}.

%% Example:
%% describe_accelerator_response() :: #{
%%   <<"Accelerator">> => accelerator()
%% }
-type describe_accelerator_response() :: #{binary() => any()}.

%% Example:
%% port_override() :: #{
%%   <<"EndpointPort">> => integer(),
%%   <<"ListenerPort">> => integer()
%% }
-type port_override() :: #{binary() => any()}.

%% Example:
%% create_endpoint_group_response() :: #{
%%   <<"EndpointGroup">> => endpoint_group()
%% }
-type create_endpoint_group_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_listeners_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_listeners_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% advertise_byoip_cidr_request() :: #{
%%   <<"Cidr">> := string()
%% }
-type advertise_byoip_cidr_request() :: #{binary() => any()}.

%% Example:
%% remove_endpoints_request() :: #{
%%   <<"EndpointGroupArn">> := string(),
%%   <<"EndpointIdentifiers">> := list(endpoint_identifier())
%% }
-type remove_endpoints_request() :: #{binary() => any()}.

%% Example:
%% accelerator_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type accelerator_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_accelerator_attributes_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type describe_custom_routing_accelerator_attributes_request() :: #{binary() => any()}.

%% Example:
%% describe_listener_response() :: #{
%%   <<"Listener">> => listener()
%% }
-type describe_listener_response() :: #{binary() => any()}.

%% Example:
%% list_accelerators_response() :: #{
%%   <<"Accelerators">> => list(accelerator()),
%%   <<"NextToken">> => string()
%% }
-type list_accelerators_response() :: #{binary() => any()}.

%% Example:
%% cross_account_resource() :: #{
%%   <<"AttachmentArn">> => string(),
%%   <<"Cidr">> => string(),
%%   <<"EndpointId">> => string()
%% }
-type cross_account_resource() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_group_request() :: #{
%%   <<"EndpointGroupArn">> := string()
%% }
-type describe_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_listener_request() :: #{
%%   <<"ListenerArn">> := string(),
%%   <<"PortRanges">> := list(port_range())
%% }
-type update_custom_routing_listener_request() :: #{binary() => any()}.

%% Example:
%% describe_listener_request() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type describe_listener_request() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_endpoint_group_response() :: #{
%%   <<"EndpointGroup">> => custom_routing_endpoint_group()
%% }
-type describe_custom_routing_endpoint_group_response() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_port_mappings_by_destination_response() :: #{
%%   <<"DestinationPortMappings">> => list(destination_port_mapping()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_port_mappings_by_destination_response() :: #{binary() => any()}.

%% Example:
%% custom_routing_listener() :: #{
%%   <<"ListenerArn">> => string(),
%%   <<"PortRanges">> => list(port_range())
%% }
-type custom_routing_listener() :: #{binary() => any()}.

%% Example:
%% list_cross_account_resources_request() :: #{
%%   <<"AcceleratorArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceOwnerAwsAccountId">> := string()
%% }
-type list_cross_account_resources_request() :: #{binary() => any()}.

%% Example:
%% ip_set() :: #{
%%   <<"IpAddressFamily">> => list(any()),
%%   <<"IpAddresses">> => list(string()),
%%   <<"IpFamily">> => string()
%% }
-type ip_set() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% accelerator() :: #{
%%   <<"AcceleratorArn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DnsName">> => string(),
%%   <<"DualStackDnsName">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Events">> => list(accelerator_event()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpSets">> => list(ip_set()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type accelerator() :: #{binary() => any()}.

%% Example:
%% advertise_byoip_cidr_response() :: #{
%%   <<"ByoipCidr">> => byoip_cidr()
%% }
-type advertise_byoip_cidr_response() :: #{binary() => any()}.

%% Example:
%% custom_routing_endpoint_configuration() :: #{
%%   <<"AttachmentArn">> => string(),
%%   <<"EndpointId">> => string()
%% }
-type custom_routing_endpoint_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_port_range_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_port_range_exception() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_accelerator_attributes_response() :: #{
%%   <<"AcceleratorAttributes">> => custom_routing_accelerator_attributes()
%% }
-type update_custom_routing_accelerator_attributes_response() :: #{binary() => any()}.

%% Example:
%% create_custom_routing_accelerator_request() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpAddresses">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_custom_routing_accelerator_request() :: #{binary() => any()}.

%% Example:
%% list_listeners_response() :: #{
%%   <<"Listeners">> => list(listener()),
%%   <<"NextToken">> => string()
%% }
-type list_listeners_response() :: #{binary() => any()}.

%% Example:
%% withdraw_byoip_cidr_response() :: #{
%%   <<"ByoipCidr">> => byoip_cidr()
%% }
-type withdraw_byoip_cidr_response() :: #{binary() => any()}.

%% Example:
%% allow_custom_routing_traffic_request() :: #{
%%   <<"AllowAllTrafficToEndpoint">> => boolean(),
%%   <<"DestinationAddresses">> => list(string()),
%%   <<"DestinationPorts">> => list(integer()),
%%   <<"EndpointGroupArn">> := string(),
%%   <<"EndpointId">> := string()
%% }
-type allow_custom_routing_traffic_request() :: #{binary() => any()}.

%% Example:
%% deny_custom_routing_traffic_request() :: #{
%%   <<"DenyAllTrafficToEndpoint">> => boolean(),
%%   <<"DestinationAddresses">> => list(string()),
%%   <<"DestinationPorts">> => list(integer()),
%%   <<"EndpointGroupArn">> := string(),
%%   <<"EndpointId">> := string()
%% }
-type deny_custom_routing_traffic_request() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_listeners_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_listeners_request() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_group_response() :: #{
%%   <<"EndpointGroup">> => endpoint_group()
%% }
-type describe_endpoint_group_response() :: #{binary() => any()}.

%% Example:
%% create_cross_account_attachment_request() :: #{
%%   <<"IdempotencyToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Principals">> => list(string()),
%%   <<"Resources">> => list(resource()),
%%   <<"Tags">> => list(tag())
%% }
-type create_cross_account_attachment_request() :: #{binary() => any()}.

%% Example:
%% update_accelerator_response() :: #{
%%   <<"Accelerator">> => accelerator()
%% }
-type update_accelerator_response() :: #{binary() => any()}.

%% Example:
%% list_cross_account_resources_response() :: #{
%%   <<"CrossAccountResources">> => list(cross_account_resource()),
%%   <<"NextToken">> => string()
%% }
-type list_cross_account_resources_response() :: #{binary() => any()}.

%% Example:
%% associated_listener_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type associated_listener_found_exception() :: #{binary() => any()}.

%% Example:
%% endpoint_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type endpoint_not_found_exception() :: #{binary() => any()}.

%% Example:
%% port_range() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"ToPort">> => integer()
%% }
-type port_range() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_port_mappings_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"EndpointGroupArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_port_mappings_request() :: #{binary() => any()}.

%% Example:
%% add_endpoints_response() :: #{
%%   <<"EndpointDescriptions">> => list(endpoint_description()),
%%   <<"EndpointGroupArn">> => string()
%% }
-type add_endpoints_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_routing_listener_request() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type delete_custom_routing_listener_request() :: #{binary() => any()}.

%% Example:
%% byoip_cidr_event() :: #{
%%   <<"Message">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type byoip_cidr_event() :: #{binary() => any()}.

%% Example:
%% associated_endpoint_group_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type associated_endpoint_group_found_exception() :: #{binary() => any()}.

%% Example:
%% update_endpoint_group_request() :: #{
%%   <<"EndpointConfigurations">> => list(endpoint_configuration()),
%%   <<"EndpointGroupArn">> := string(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => integer(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"PortOverrides">> => list(port_override()),
%%   <<"ThresholdCount">> => integer(),
%%   <<"TrafficDialPercentage">> => float()
%% }
-type update_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpAddresses">> => list(string()),
%%   <<"Name">> => string()
%% }
-type update_custom_routing_accelerator_request() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_endpoint_group_request() :: #{
%%   <<"EndpointGroupArn">> := string()
%% }
-type describe_custom_routing_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% list_endpoint_groups_response() :: #{
%%   <<"EndpointGroups">> => list(endpoint_group()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoint_groups_response() :: #{binary() => any()}.

%% Example:
%% delete_cross_account_attachment_request() :: #{
%%   <<"AttachmentArn">> := string()
%% }
-type delete_cross_account_attachment_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% update_listener_request() :: #{
%%   <<"ClientAffinity">> => list(any()),
%%   <<"ListenerArn">> := string(),
%%   <<"PortRanges">> => list(port_range()),
%%   <<"Protocol">> => list(any())
%% }
-type update_listener_request() :: #{binary() => any()}.

%% Example:
%% update_listener_response() :: #{
%%   <<"Listener">> => listener()
%% }
-type update_listener_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% custom_routing_accelerator_attributes() :: #{
%%   <<"FlowLogsEnabled">> => boolean(),
%%   <<"FlowLogsS3Bucket">> => string(),
%%   <<"FlowLogsS3Prefix">> => string()
%% }
-type custom_routing_accelerator_attributes() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% cidr_authorization_context() :: #{
%%   <<"Message">> => string(),
%%   <<"Signature">> => string()
%% }
-type cidr_authorization_context() :: #{binary() => any()}.

%% Example:
%% port_mapping() :: #{
%%   <<"AcceleratorPort">> => integer(),
%%   <<"DestinationSocketAddress">> => socket_address(),
%%   <<"DestinationTrafficState">> => list(any()),
%%   <<"EndpointGroupArn">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"Protocols">> => list(list(any())())
%% }
-type port_mapping() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_accelerator_response() :: #{
%%   <<"Accelerator">> => custom_routing_accelerator()
%% }
-type update_custom_routing_accelerator_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% add_custom_routing_endpoints_request() :: #{
%%   <<"EndpointConfigurations">> := list(custom_routing_endpoint_configuration()),
%%   <<"EndpointGroupArn">> := string()
%% }
-type add_custom_routing_endpoints_request() :: #{binary() => any()}.

%% Example:
%% list_byoip_cidrs_response() :: #{
%%   <<"ByoipCidrs">> => list(byoip_cidr()),
%%   <<"NextToken">> => string()
%% }
-type list_byoip_cidrs_response() :: #{binary() => any()}.

%% Example:
%% transaction_in_progress_exception() :: #{
%%   <<"Message">> => string()
%% }
-type transaction_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% delete_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type delete_accelerator_request() :: #{binary() => any()}.

%% Example:
%% list_endpoint_groups_request() :: #{
%%   <<"ListenerArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_endpoint_groups_request() :: #{binary() => any()}.

%% Example:
%% withdraw_byoip_cidr_request() :: #{
%%   <<"Cidr">> := string()
%% }
-type withdraw_byoip_cidr_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% endpoint_group_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type endpoint_group_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% list_accelerators_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_accelerators_request() :: #{binary() => any()}.

%% Example:
%% delete_custom_routing_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type delete_custom_routing_accelerator_request() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_accelerators_response() :: #{
%%   <<"Accelerators">> => list(custom_routing_accelerator()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_accelerators_response() :: #{binary() => any()}.

%% Example:
%% custom_routing_accelerator() :: #{
%%   <<"AcceleratorArn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DnsName">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"IpSets">> => list(ip_set()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type custom_routing_accelerator() :: #{binary() => any()}.

%% Example:
%% update_custom_routing_accelerator_attributes_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"FlowLogsEnabled">> => boolean(),
%%   <<"FlowLogsS3Bucket">> => string(),
%%   <<"FlowLogsS3Prefix">> => string()
%% }
-type update_custom_routing_accelerator_attributes_request() :: #{binary() => any()}.

%% Example:
%% describe_accelerator_request() :: #{
%%   <<"AcceleratorArn">> := string()
%% }
-type describe_accelerator_request() :: #{binary() => any()}.

%% Example:
%% add_custom_routing_endpoints_response() :: #{
%%   <<"EndpointDescriptions">> => list(custom_routing_endpoint_description()),
%%   <<"EndpointGroupArn">> => string()
%% }
-type add_custom_routing_endpoints_response() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_endpoint_groups_request() :: #{
%%   <<"ListenerArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_endpoint_groups_request() :: #{binary() => any()}.

%% Example:
%% listener_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type listener_not_found_exception() :: #{binary() => any()}.

%% Example:
%% destination_port_mapping() :: #{
%%   <<"AcceleratorArn">> => string(),
%%   <<"AcceleratorSocketAddresses">> => list(socket_address()),
%%   <<"DestinationSocketAddress">> => socket_address(),
%%   <<"DestinationTrafficState">> => list(any()),
%%   <<"EndpointGroupArn">> => string(),
%%   <<"EndpointGroupRegion">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"IpAddressType">> => list(any())
%% }
-type destination_port_mapping() :: #{binary() => any()}.

%% Example:
%% list_cross_account_resource_accounts_response() :: #{
%%   <<"ResourceOwnerAwsAccountIds">> => list(string())
%% }
-type list_cross_account_resource_accounts_response() :: #{binary() => any()}.

%% Example:
%% delete_listener_request() :: #{
%%   <<"ListenerArn">> := string()
%% }
-type delete_listener_request() :: #{binary() => any()}.

%% Example:
%% accelerator_event() :: #{
%%   <<"Message">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type accelerator_event() :: #{binary() => any()}.

%% Example:
%% endpoint_group_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type endpoint_group_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_endpoint_group_response() :: #{
%%   <<"EndpointGroup">> => endpoint_group()
%% }
-type update_endpoint_group_response() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_accelerator_attributes_response() :: #{
%%   <<"AcceleratorAttributes">> => custom_routing_accelerator_attributes()
%% }
-type describe_custom_routing_accelerator_attributes_response() :: #{binary() => any()}.

%% Example:
%% create_custom_routing_endpoint_group_request() :: #{
%%   <<"DestinationConfigurations">> := list(custom_routing_destination_configuration()),
%%   <<"EndpointGroupRegion">> := string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"ListenerArn">> := string()
%% }
-type create_custom_routing_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% endpoint_group() :: #{
%%   <<"EndpointDescriptions">> => list(endpoint_description()),
%%   <<"EndpointGroupArn">> => string(),
%%   <<"EndpointGroupRegion">> => string(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => integer(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"PortOverrides">> => list(port_override()),
%%   <<"ThresholdCount">> => integer(),
%%   <<"TrafficDialPercentage">> => float()
%% }
-type endpoint_group() :: #{binary() => any()}.

%% Example:
%% deprovision_byoip_cidr_request() :: #{
%%   <<"Cidr">> := string()
%% }
-type deprovision_byoip_cidr_request() :: #{binary() => any()}.

%% Example:
%% custom_routing_endpoint_description() :: #{
%%   <<"EndpointId">> => string()
%% }
-type custom_routing_endpoint_description() :: #{binary() => any()}.

%% Example:
%% list_custom_routing_accelerators_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_routing_accelerators_request() :: #{binary() => any()}.

%% Example:
%% delete_custom_routing_endpoint_group_request() :: #{
%%   <<"EndpointGroupArn">> := string()
%% }
-type delete_custom_routing_endpoint_group_request() :: #{binary() => any()}.

%% Example:
%% create_custom_routing_accelerator_response() :: #{
%%   <<"Accelerator">> => custom_routing_accelerator()
%% }
-type create_custom_routing_accelerator_response() :: #{binary() => any()}.

%% Example:
%% describe_custom_routing_listener_response() :: #{
%%   <<"Listener">> => custom_routing_listener()
%% }
-type describe_custom_routing_listener_response() :: #{binary() => any()}.

%% Example:
%% create_listener_request() :: #{
%%   <<"AcceleratorArn">> := string(),
%%   <<"ClientAffinity">> => list(any()),
%%   <<"IdempotencyToken">> := string(),
%%   <<"PortRanges">> := list(port_range()),
%%   <<"Protocol">> := list(any())
%% }
-type create_listener_request() :: #{binary() => any()}.

%% Example:
%% provision_byoip_cidr_request() :: #{
%%   <<"Cidr">> := string(),
%%   <<"CidrAuthorizationContext">> := cidr_authorization_context()
%% }
-type provision_byoip_cidr_request() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"Cidr">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"Region">> => string()
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% create_endpoint_group_request() :: #{
%%   <<"EndpointConfigurations">> => list(endpoint_configuration()),
%%   <<"EndpointGroupRegion">> := string(),
%%   <<"HealthCheckIntervalSeconds">> => integer(),
%%   <<"HealthCheckPath">> => string(),
%%   <<"HealthCheckPort">> => integer(),
%%   <<"HealthCheckProtocol">> => list(any()),
%%   <<"IdempotencyToken">> := string(),
%%   <<"ListenerArn">> := string(),
%%   <<"PortOverrides">> => list(port_override()),
%%   <<"ThresholdCount">> => integer(),
%%   <<"TrafficDialPercentage">> => float()
%% }
-type create_endpoint_group_request() :: #{binary() => any()}.

-type add_custom_routing_endpoints_errors() ::
    endpoint_group_not_found_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    conflict_exception() | 
    internal_service_error_exception() | 
    endpoint_already_exists_exception().

-type add_endpoints_errors() ::
    endpoint_group_not_found_exception() | 
    limit_exceeded_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type advertise_byoip_cidr_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    incorrect_cidr_state_exception() | 
    byoip_cidr_not_found_exception().

-type allow_custom_routing_traffic_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type create_accelerator_errors() ::
    limit_exceeded_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type create_cross_account_attachment_errors() ::
    limit_exceeded_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type create_custom_routing_accelerator_errors() ::
    limit_exceeded_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type create_custom_routing_endpoint_group_errors() ::
    listener_not_found_exception() | 
    endpoint_group_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    invalid_port_range_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type create_custom_routing_listener_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    invalid_port_range_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type create_endpoint_group_errors() ::
    listener_not_found_exception() | 
    endpoint_group_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type create_listener_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    invalid_port_range_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type delete_accelerator_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    associated_listener_found_exception() | 
    accelerator_not_found_exception() | 
    accelerator_not_disabled_exception() | 
    internal_service_error_exception().

-type delete_cross_account_attachment_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    attachment_not_found_exception().

-type delete_custom_routing_accelerator_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    associated_listener_found_exception() | 
    accelerator_not_found_exception() | 
    accelerator_not_disabled_exception() | 
    internal_service_error_exception().

-type delete_custom_routing_endpoint_group_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type delete_custom_routing_listener_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    associated_endpoint_group_found_exception() | 
    internal_service_error_exception().

-type delete_endpoint_group_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type delete_listener_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    associated_endpoint_group_found_exception() | 
    internal_service_error_exception().

-type deny_custom_routing_traffic_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type deprovision_byoip_cidr_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    incorrect_cidr_state_exception() | 
    byoip_cidr_not_found_exception().

-type describe_accelerator_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type describe_accelerator_attributes_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type describe_cross_account_attachment_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    attachment_not_found_exception().

-type describe_custom_routing_accelerator_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type describe_custom_routing_accelerator_attributes_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type describe_custom_routing_endpoint_group_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type describe_custom_routing_listener_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type describe_endpoint_group_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type describe_listener_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    internal_service_error_exception().

-type list_accelerators_errors() ::
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_byoip_cidrs_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_cross_account_attachments_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_cross_account_resource_accounts_errors() ::
    access_denied_exception() | 
    internal_service_error_exception().

-type list_cross_account_resources_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type list_custom_routing_accelerators_errors() ::
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_custom_routing_endpoint_groups_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_custom_routing_listeners_errors() ::
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type list_custom_routing_port_mappings_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type list_custom_routing_port_mappings_by_destination_errors() ::
    invalid_argument_exception() | 
    endpoint_not_found_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_endpoint_groups_errors() ::
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    internal_service_error_exception().

-type list_listeners_errors() ::
    invalid_argument_exception() | 
    invalid_next_token_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type list_tags_for_resource_errors() ::
    endpoint_group_not_found_exception() | 
    listener_not_found_exception() | 
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception() | 
    attachment_not_found_exception().

-type provision_byoip_cidr_errors() ::
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    incorrect_cidr_state_exception().

-type remove_custom_routing_endpoints_errors() ::
    endpoint_group_not_found_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    endpoint_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type remove_endpoints_errors() ::
    endpoint_group_not_found_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type tag_resource_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type untag_resource_errors() ::
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type update_accelerator_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    accelerator_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_accelerator_attributes_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type update_cross_account_attachment_errors() ::
    limit_exceeded_exception() | 
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    attachment_not_found_exception().

-type update_custom_routing_accelerator_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    accelerator_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type update_custom_routing_accelerator_attributes_errors() ::
    transaction_in_progress_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    accelerator_not_found_exception() | 
    internal_service_error_exception().

-type update_custom_routing_listener_errors() ::
    listener_not_found_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    invalid_port_range_exception() | 
    internal_service_error_exception().

-type update_endpoint_group_errors() ::
    endpoint_group_not_found_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception().

-type update_listener_errors() ::
    listener_not_found_exception() | 
    limit_exceeded_exception() | 
    invalid_argument_exception() | 
    invalid_port_range_exception() | 
    internal_service_error_exception().

-type withdraw_byoip_cidr_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    internal_service_error_exception() | 
    incorrect_cidr_state_exception() | 
    byoip_cidr_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate a virtual private cloud (VPC) subnet endpoint with your
%% custom routing accelerator.
%%
%% The listener port range must be large enough to support the number of IP
%% addresses that can be
%% specified in your subnet. The number of ports required is: subnet size
%% times the number
%% of ports per destination EC2 instances. For example, a subnet defined as
%% /24 requires a listener
%% port range of at least 255 ports.
%%
%% Note: You must have enough remaining listener ports available to
%% map to the subnet ports, or the call will fail with a
%% LimitExceededException.
%%
%% By default, all destinations in a subnet in a custom routing accelerator
%% cannot receive traffic. To enable all
%% destinations to receive traffic, or to specify individual port mappings
%% that can receive
%% traffic, see the
%% AllowCustomRoutingTraffic:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html
%% operation.
-spec add_custom_routing_endpoints(aws_client:aws_client(), add_custom_routing_endpoints_request()) ->
    {ok, add_custom_routing_endpoints_response(), tuple()} |
    {error, any()} |
    {error, add_custom_routing_endpoints_errors(), tuple()}.
add_custom_routing_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_custom_routing_endpoints(Client, Input, []).

-spec add_custom_routing_endpoints(aws_client:aws_client(), add_custom_routing_endpoints_request(), proplists:proplist()) ->
    {ok, add_custom_routing_endpoints_response(), tuple()} |
    {error, any()} |
    {error, add_custom_routing_endpoints_errors(), tuple()}.
add_custom_routing_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCustomRoutingEndpoints">>, Input, Options).

%% @doc Add endpoints to an endpoint group.
%%
%% The `AddEndpoints' API operation is the recommended option for adding
%% endpoints. The
%% alternative options are to add endpoints when you create an endpoint group
%% (with the
%% CreateEndpointGroup:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html
%% API)
%% or when you update an endpoint group (with the
%% UpdateEndpointGroup:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html
%% API).
%%
%% There are two advantages to using `AddEndpoints' to add endpoints in
%% Global Accelerator:
%%
%% It's faster, because Global Accelerator only has to resolve the new
%% endpoints that
%% you're adding, rather than resolving new and existing endpoints.
%%
%% It's more convenient, because you don't need to specify the
%% current
%% endpoints that are already in the endpoint group, in addition to the new
%% endpoints that
%% you want to add.
%%
%% For information about endpoint types and requirements for endpoints that
%% you can add
%% to Global Accelerator, see
%% Endpoints for standard accelerators:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html
%% in the Global Accelerator Developer Guide.
-spec add_endpoints(aws_client:aws_client(), add_endpoints_request()) ->
    {ok, add_endpoints_response(), tuple()} |
    {error, any()} |
    {error, add_endpoints_errors(), tuple()}.
add_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_endpoints(Client, Input, []).

-spec add_endpoints(aws_client:aws_client(), add_endpoints_request(), proplists:proplist()) ->
    {ok, add_endpoints_response(), tuple()} |
    {error, any()} |
    {error, add_endpoints_errors(), tuple()}.
add_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddEndpoints">>, Input, Options).

%% @doc Advertises an IPv4 address range that is provisioned for use with
%% your Amazon Web Services resources
%% through bring your own IP addresses (BYOIP).
%%
%% It can take a few minutes before traffic to
%% the specified addresses starts routing to Amazon Web Services because of
%% propagation delays.
%%
%% To stop advertising the BYOIP address range, use
%% WithdrawByoipCidr:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html.
%%
%% For more information, see Bring your own
%% IP addresses (BYOIP):
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
%% in the Global Accelerator Developer Guide.
-spec advertise_byoip_cidr(aws_client:aws_client(), advertise_byoip_cidr_request()) ->
    {ok, advertise_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, advertise_byoip_cidr_errors(), tuple()}.
advertise_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    advertise_byoip_cidr(Client, Input, []).

-spec advertise_byoip_cidr(aws_client:aws_client(), advertise_byoip_cidr_request(), proplists:proplist()) ->
    {ok, advertise_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, advertise_byoip_cidr_errors(), tuple()}.
advertise_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdvertiseByoipCidr">>, Input, Options).

%% @doc Specify the Amazon EC2 instance (destination) IP addresses and ports
%% for a VPC subnet endpoint that can receive traffic
%% for a custom routing accelerator.
%%
%% You can allow traffic to all destinations in the subnet endpoint, or allow
%% traffic to a
%% specified list of destination IP addresses and ports in the subnet. Note
%% that you cannot specify IP addresses or ports
%% outside of the range that you configured for the endpoint group.
%%
%% After you make changes, you can verify that the updates are complete by
%% checking the status of your
%% accelerator: the status changes from IN_PROGRESS to DEPLOYED.
-spec allow_custom_routing_traffic(aws_client:aws_client(), allow_custom_routing_traffic_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, allow_custom_routing_traffic_errors(), tuple()}.
allow_custom_routing_traffic(Client, Input)
  when is_map(Client), is_map(Input) ->
    allow_custom_routing_traffic(Client, Input, []).

-spec allow_custom_routing_traffic(aws_client:aws_client(), allow_custom_routing_traffic_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, allow_custom_routing_traffic_errors(), tuple()}.
allow_custom_routing_traffic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllowCustomRoutingTraffic">>, Input, Options).

%% @doc Create an accelerator.
%%
%% An accelerator includes one or more listeners that process inbound
%% connections and direct traffic
%% to one or more endpoint groups, each of which includes endpoints, such as
%% Network Load Balancers.
%%
%% Global Accelerator is a global service that supports endpoints in multiple
%% Amazon Web Services Regions but you must specify the
%% US West (Oregon) Region to create, update, or otherwise work with
%% accelerators. That is, for example, specify `--region us-west-2'
%% on Amazon Web Services CLI commands.
-spec create_accelerator(aws_client:aws_client(), create_accelerator_request()) ->
    {ok, create_accelerator_response(), tuple()} |
    {error, any()} |
    {error, create_accelerator_errors(), tuple()}.
create_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_accelerator(Client, Input, []).

-spec create_accelerator(aws_client:aws_client(), create_accelerator_request(), proplists:proplist()) ->
    {ok, create_accelerator_response(), tuple()} |
    {error, any()} |
    {error, create_accelerator_errors(), tuple()}.
create_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccelerator">>, Input, Options).

%% @doc Create a cross-account attachment in Global Accelerator.
%%
%% You create a cross-account attachment to
%% specify the principals who have permission to work with resources
%% in accelerators in their own account. You specify, in the same attachment,
%% the resources that are shared.
%%
%% A principal can be an Amazon Web Services account number or the Amazon
%% Resource Name (ARN) for an
%% accelerator. For account numbers that are listed as principals, to work
%% with a resource listed in the attachment,
%% you must sign in to an account specified as a principal. Then, you can
%% work with resources that are listed,
%% with any of your accelerators. If an accelerator ARN is listed in the
%% cross-account attachment as a principal,
%% anyone with permission to make updates to the accelerator can work with
%% resources that are listed in the
%% attachment.
%%
%% Specify each principal and resource separately. To specify two CIDR
%% address pools, list
%% them individually under `Resources', and so on. For a command line
%% operation, for example,
%% you might use a statement like the following:
%%
%% ` &quot;Resources&quot;: [{&quot;Cidr&quot;:
%% &quot;169.254.60.0/24&quot;},{&quot;Cidr&quot;:
%% &quot;169.254.59.0/24&quot;}]'
%%
%% For more information, see
%% Working with cross-account attachments and resources in Global
%% Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html
%% in the
%% Global Accelerator Developer Guide.
-spec create_cross_account_attachment(aws_client:aws_client(), create_cross_account_attachment_request()) ->
    {ok, create_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_cross_account_attachment_errors(), tuple()}.
create_cross_account_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cross_account_attachment(Client, Input, []).

-spec create_cross_account_attachment(aws_client:aws_client(), create_cross_account_attachment_request(), proplists:proplist()) ->
    {ok, create_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_cross_account_attachment_errors(), tuple()}.
create_cross_account_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCrossAccountAttachment">>, Input, Options).

%% @doc Create a custom routing accelerator.
%%
%% A custom routing accelerator directs traffic to one of possibly thousands
%% of Amazon EC2 instance destinations running in a single or multiple
%% virtual private clouds (VPC) subnet endpoints.
%%
%% Be aware that, by default, all destination EC2 instances in a VPC subnet
%% endpoint cannot receive
%% traffic. To enable all destinations to receive traffic, or to specify
%% individual port
%% mappings that can receive traffic, see the
%% AllowCustomRoutingTraffic:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html
%% operation.
%%
%% Global Accelerator is a global service that supports endpoints in multiple
%% Amazon Web Services Regions but you must specify the
%% US West (Oregon) Region to create, update, or otherwise work with
%% accelerators. That is, for example, specify `--region us-west-2'
%% on Amazon Web Services CLI commands.
-spec create_custom_routing_accelerator(aws_client:aws_client(), create_custom_routing_accelerator_request()) ->
    {ok, create_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_accelerator_errors(), tuple()}.
create_custom_routing_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_routing_accelerator(Client, Input, []).

-spec create_custom_routing_accelerator(aws_client:aws_client(), create_custom_routing_accelerator_request(), proplists:proplist()) ->
    {ok, create_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_accelerator_errors(), tuple()}.
create_custom_routing_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomRoutingAccelerator">>, Input, Options).

%% @doc Create an endpoint group for the specified listener for a custom
%% routing accelerator.
%%
%% An endpoint group is a collection of endpoints in one Amazon Web Services
%% Region.
-spec create_custom_routing_endpoint_group(aws_client:aws_client(), create_custom_routing_endpoint_group_request()) ->
    {ok, create_custom_routing_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_endpoint_group_errors(), tuple()}.
create_custom_routing_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_routing_endpoint_group(Client, Input, []).

-spec create_custom_routing_endpoint_group(aws_client:aws_client(), create_custom_routing_endpoint_group_request(), proplists:proplist()) ->
    {ok, create_custom_routing_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_endpoint_group_errors(), tuple()}.
create_custom_routing_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomRoutingEndpointGroup">>, Input, Options).

%% @doc Create a listener to process inbound connections from clients to a
%% custom routing accelerator.
%%
%% Connections arrive to assigned static IP addresses on the port range that
%% you specify.
-spec create_custom_routing_listener(aws_client:aws_client(), create_custom_routing_listener_request()) ->
    {ok, create_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_listener_errors(), tuple()}.
create_custom_routing_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_routing_listener(Client, Input, []).

-spec create_custom_routing_listener(aws_client:aws_client(), create_custom_routing_listener_request(), proplists:proplist()) ->
    {ok, create_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, create_custom_routing_listener_errors(), tuple()}.
create_custom_routing_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomRoutingListener">>, Input, Options).

%% @doc Create an endpoint group for the specified listener.
%%
%% An endpoint group is a collection of endpoints in one Amazon Web Services
%% Region. A resource must be valid and active when you add it as an
%% endpoint.
%%
%% For more information about endpoint types and requirements for endpoints
%% that you can add
%% to Global Accelerator, see
%% Endpoints for standard accelerators:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html
%% in the Global Accelerator Developer Guide.
-spec create_endpoint_group(aws_client:aws_client(), create_endpoint_group_request()) ->
    {ok, create_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_group_errors(), tuple()}.
create_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_group(Client, Input, []).

-spec create_endpoint_group(aws_client:aws_client(), create_endpoint_group_request(), proplists:proplist()) ->
    {ok, create_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_group_errors(), tuple()}.
create_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointGroup">>, Input, Options).

%% @doc Create a listener to process inbound connections from clients to an
%% accelerator.
%%
%% Connections arrive to assigned static
%% IP addresses on a port, port range, or list of port ranges that you
%% specify.
-spec create_listener(aws_client:aws_client(), create_listener_request()) ->
    {ok, create_listener_response(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_listener(Client, Input, []).

-spec create_listener(aws_client:aws_client(), create_listener_request(), proplists:proplist()) ->
    {ok, create_listener_response(), tuple()} |
    {error, any()} |
    {error, create_listener_errors(), tuple()}.
create_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateListener">>, Input, Options).

%% @doc Delete an accelerator.
%%
%% Before you can delete an accelerator, you must disable it and remove all
%% dependent resources
%% (listeners and endpoint groups). To disable the accelerator, update the
%% accelerator to set `Enabled' to false.
%%
%% When you create an accelerator, by default, Global Accelerator provides
%% you with a set of two static IP addresses.
%% Alternatively, you can bring your own IP address ranges to Global
%% Accelerator and assign IP addresses from those ranges.
%%
%% The IP addresses are assigned to your accelerator for as long as it
%% exists, even if you disable the accelerator and
%% it no longer accepts or routes traffic. However, when you delete an
%% accelerator, you lose the
%% static IP addresses that are assigned to the accelerator, so you can no
%% longer route traffic by using them.
%% As a best practice, ensure that you have permissions in place to avoid
%% inadvertently deleting accelerators. You
%% can use IAM policies with Global Accelerator to limit the users who have
%% permissions to delete an accelerator. For more information,
%% see Identity and access management:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html
%% in
%% the Global Accelerator Developer Guide.
-spec delete_accelerator(aws_client:aws_client(), delete_accelerator_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_accelerator_errors(), tuple()}.
delete_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_accelerator(Client, Input, []).

-spec delete_accelerator(aws_client:aws_client(), delete_accelerator_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_accelerator_errors(), tuple()}.
delete_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccelerator">>, Input, Options).

%% @doc Delete a cross-account attachment.
%%
%% When you delete an attachment, Global Accelerator revokes the permission
%% to use the resources in the attachment from all principals in the list of
%% principals. Global Accelerator
%% revokes the permission for specific resources.
%%
%% For more information, see
%% Working with cross-account attachments and resources in Global
%% Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html
%% in the
%% Global Accelerator Developer Guide.
-spec delete_cross_account_attachment(aws_client:aws_client(), delete_cross_account_attachment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cross_account_attachment_errors(), tuple()}.
delete_cross_account_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cross_account_attachment(Client, Input, []).

-spec delete_cross_account_attachment(aws_client:aws_client(), delete_cross_account_attachment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cross_account_attachment_errors(), tuple()}.
delete_cross_account_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCrossAccountAttachment">>, Input, Options).

%% @doc Delete a custom routing accelerator.
%%
%% Before you can delete an accelerator, you must disable it and remove all
%% dependent resources
%% (listeners and endpoint groups). To disable the accelerator, update the
%% accelerator to set `Enabled' to false.
%%
%% When you create a custom routing accelerator, by default, Global
%% Accelerator provides you with a set of two static IP addresses.
%%
%% The IP
%% addresses are assigned to your accelerator for as long as it exists, even
%% if you disable the accelerator and
%% it no longer accepts or routes traffic. However, when you delete an
%% accelerator, you lose the
%% static IP addresses that are assigned to the accelerator, so you can no
%% longer route traffic by using them.
%% As a best practice, ensure that you have permissions in place to avoid
%% inadvertently deleting accelerators. You
%% can use IAM policies with Global Accelerator to limit the users who have
%% permissions to delete an accelerator. For more information,
%% see Identity and access management:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html
%% in
%% the Global Accelerator Developer Guide.
-spec delete_custom_routing_accelerator(aws_client:aws_client(), delete_custom_routing_accelerator_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_accelerator_errors(), tuple()}.
delete_custom_routing_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_routing_accelerator(Client, Input, []).

-spec delete_custom_routing_accelerator(aws_client:aws_client(), delete_custom_routing_accelerator_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_accelerator_errors(), tuple()}.
delete_custom_routing_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomRoutingAccelerator">>, Input, Options).

%% @doc Delete an endpoint group from a listener for a custom routing
%% accelerator.
-spec delete_custom_routing_endpoint_group(aws_client:aws_client(), delete_custom_routing_endpoint_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_endpoint_group_errors(), tuple()}.
delete_custom_routing_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_routing_endpoint_group(Client, Input, []).

-spec delete_custom_routing_endpoint_group(aws_client:aws_client(), delete_custom_routing_endpoint_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_endpoint_group_errors(), tuple()}.
delete_custom_routing_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomRoutingEndpointGroup">>, Input, Options).

%% @doc Delete a listener for a custom routing accelerator.
-spec delete_custom_routing_listener(aws_client:aws_client(), delete_custom_routing_listener_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_listener_errors(), tuple()}.
delete_custom_routing_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_routing_listener(Client, Input, []).

-spec delete_custom_routing_listener(aws_client:aws_client(), delete_custom_routing_listener_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_routing_listener_errors(), tuple()}.
delete_custom_routing_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomRoutingListener">>, Input, Options).

%% @doc Delete an endpoint group from a listener.
-spec delete_endpoint_group(aws_client:aws_client(), delete_endpoint_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_group_errors(), tuple()}.
delete_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_group(Client, Input, []).

-spec delete_endpoint_group(aws_client:aws_client(), delete_endpoint_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_group_errors(), tuple()}.
delete_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointGroup">>, Input, Options).

%% @doc Delete a listener from an accelerator.
-spec delete_listener(aws_client:aws_client(), delete_listener_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_listener(Client, Input, []).

-spec delete_listener(aws_client:aws_client(), delete_listener_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_listener_errors(), tuple()}.
delete_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteListener">>, Input, Options).

%% @doc Specify the Amazon EC2 instance (destination) IP addresses and ports
%% for a VPC subnet endpoint that cannot receive traffic
%% for a custom routing accelerator.
%%
%% You can deny traffic to all destinations in the VPC endpoint, or deny
%% traffic to a
%% specified list of destination IP addresses and ports. Note that you cannot
%% specify IP addresses
%% or ports outside of the range that you configured for the endpoint group.
%%
%% After you make changes, you can verify that the updates are complete by
%% checking the status of your
%% accelerator: the status changes from IN_PROGRESS to DEPLOYED.
-spec deny_custom_routing_traffic(aws_client:aws_client(), deny_custom_routing_traffic_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deny_custom_routing_traffic_errors(), tuple()}.
deny_custom_routing_traffic(Client, Input)
  when is_map(Client), is_map(Input) ->
    deny_custom_routing_traffic(Client, Input, []).

-spec deny_custom_routing_traffic(aws_client:aws_client(), deny_custom_routing_traffic_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deny_custom_routing_traffic_errors(), tuple()}.
deny_custom_routing_traffic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DenyCustomRoutingTraffic">>, Input, Options).

%% @doc Releases the specified address range that you provisioned to use with
%% your Amazon Web Services resources
%% through bring your own IP addresses (BYOIP) and deletes the corresponding
%% address pool.
%%
%% Before you can release an address range, you must stop advertising it by
%% using WithdrawByoipCidr:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html
%% and you must not have
%% any accelerators that are using static IP addresses allocated from its
%% address range.
%%
%% For more information, see Bring
%% your own IP addresses (BYOIP):
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
%% in the Global Accelerator Developer Guide.
-spec deprovision_byoip_cidr(aws_client:aws_client(), deprovision_byoip_cidr_request()) ->
    {ok, deprovision_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, deprovision_byoip_cidr_errors(), tuple()}.
deprovision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_byoip_cidr(Client, Input, []).

-spec deprovision_byoip_cidr(aws_client:aws_client(), deprovision_byoip_cidr_request(), proplists:proplist()) ->
    {ok, deprovision_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, deprovision_byoip_cidr_errors(), tuple()}.
deprovision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionByoipCidr">>, Input, Options).

%% @doc Describe an accelerator.
-spec describe_accelerator(aws_client:aws_client(), describe_accelerator_request()) ->
    {ok, describe_accelerator_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_errors(), tuple()}.
describe_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_accelerator(Client, Input, []).

-spec describe_accelerator(aws_client:aws_client(), describe_accelerator_request(), proplists:proplist()) ->
    {ok, describe_accelerator_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_errors(), tuple()}.
describe_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccelerator">>, Input, Options).

%% @doc Describe the attributes of an accelerator.
-spec describe_accelerator_attributes(aws_client:aws_client(), describe_accelerator_attributes_request()) ->
    {ok, describe_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_attributes_errors(), tuple()}.
describe_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_accelerator_attributes(Client, Input, []).

-spec describe_accelerator_attributes(aws_client:aws_client(), describe_accelerator_attributes_request(), proplists:proplist()) ->
    {ok, describe_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_attributes_errors(), tuple()}.
describe_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcceleratorAttributes">>, Input, Options).

%% @doc Gets configuration information about a cross-account attachment.
-spec describe_cross_account_attachment(aws_client:aws_client(), describe_cross_account_attachment_request()) ->
    {ok, describe_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, describe_cross_account_attachment_errors(), tuple()}.
describe_cross_account_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cross_account_attachment(Client, Input, []).

-spec describe_cross_account_attachment(aws_client:aws_client(), describe_cross_account_attachment_request(), proplists:proplist()) ->
    {ok, describe_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, describe_cross_account_attachment_errors(), tuple()}.
describe_cross_account_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCrossAccountAttachment">>, Input, Options).

%% @doc Describe a custom routing accelerator.
-spec describe_custom_routing_accelerator(aws_client:aws_client(), describe_custom_routing_accelerator_request()) ->
    {ok, describe_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_accelerator_errors(), tuple()}.
describe_custom_routing_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_routing_accelerator(Client, Input, []).

-spec describe_custom_routing_accelerator(aws_client:aws_client(), describe_custom_routing_accelerator_request(), proplists:proplist()) ->
    {ok, describe_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_accelerator_errors(), tuple()}.
describe_custom_routing_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomRoutingAccelerator">>, Input, Options).

%% @doc Describe the attributes of a custom routing accelerator.
-spec describe_custom_routing_accelerator_attributes(aws_client:aws_client(), describe_custom_routing_accelerator_attributes_request()) ->
    {ok, describe_custom_routing_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_accelerator_attributes_errors(), tuple()}.
describe_custom_routing_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_routing_accelerator_attributes(Client, Input, []).

-spec describe_custom_routing_accelerator_attributes(aws_client:aws_client(), describe_custom_routing_accelerator_attributes_request(), proplists:proplist()) ->
    {ok, describe_custom_routing_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_accelerator_attributes_errors(), tuple()}.
describe_custom_routing_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomRoutingAcceleratorAttributes">>, Input, Options).

%% @doc Describe an endpoint group for a custom routing accelerator.
-spec describe_custom_routing_endpoint_group(aws_client:aws_client(), describe_custom_routing_endpoint_group_request()) ->
    {ok, describe_custom_routing_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_endpoint_group_errors(), tuple()}.
describe_custom_routing_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_routing_endpoint_group(Client, Input, []).

-spec describe_custom_routing_endpoint_group(aws_client:aws_client(), describe_custom_routing_endpoint_group_request(), proplists:proplist()) ->
    {ok, describe_custom_routing_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_endpoint_group_errors(), tuple()}.
describe_custom_routing_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomRoutingEndpointGroup">>, Input, Options).

%% @doc The description of a listener for a custom routing accelerator.
-spec describe_custom_routing_listener(aws_client:aws_client(), describe_custom_routing_listener_request()) ->
    {ok, describe_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_listener_errors(), tuple()}.
describe_custom_routing_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_routing_listener(Client, Input, []).

-spec describe_custom_routing_listener(aws_client:aws_client(), describe_custom_routing_listener_request(), proplists:proplist()) ->
    {ok, describe_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_routing_listener_errors(), tuple()}.
describe_custom_routing_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomRoutingListener">>, Input, Options).

%% @doc Describe an endpoint group.
-spec describe_endpoint_group(aws_client:aws_client(), describe_endpoint_group_request()) ->
    {ok, describe_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_group_errors(), tuple()}.
describe_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_group(Client, Input, []).

-spec describe_endpoint_group(aws_client:aws_client(), describe_endpoint_group_request(), proplists:proplist()) ->
    {ok, describe_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_group_errors(), tuple()}.
describe_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointGroup">>, Input, Options).

%% @doc Describe a listener.
-spec describe_listener(aws_client:aws_client(), describe_listener_request()) ->
    {ok, describe_listener_response(), tuple()} |
    {error, any()} |
    {error, describe_listener_errors(), tuple()}.
describe_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_listener(Client, Input, []).

-spec describe_listener(aws_client:aws_client(), describe_listener_request(), proplists:proplist()) ->
    {ok, describe_listener_response(), tuple()} |
    {error, any()} |
    {error, describe_listener_errors(), tuple()}.
describe_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeListener">>, Input, Options).

%% @doc List the accelerators for an Amazon Web Services account.
-spec list_accelerators(aws_client:aws_client(), list_accelerators_request()) ->
    {ok, list_accelerators_response(), tuple()} |
    {error, any()} |
    {error, list_accelerators_errors(), tuple()}.
list_accelerators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accelerators(Client, Input, []).

-spec list_accelerators(aws_client:aws_client(), list_accelerators_request(), proplists:proplist()) ->
    {ok, list_accelerators_response(), tuple()} |
    {error, any()} |
    {error, list_accelerators_errors(), tuple()}.
list_accelerators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccelerators">>, Input, Options).

%% @doc Lists the IP address ranges that were specified in calls to
%% ProvisionByoipCidr:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html,
%% including
%% the current state and a history of state changes.
-spec list_byoip_cidrs(aws_client:aws_client(), list_byoip_cidrs_request()) ->
    {ok, list_byoip_cidrs_response(), tuple()} |
    {error, any()} |
    {error, list_byoip_cidrs_errors(), tuple()}.
list_byoip_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_byoip_cidrs(Client, Input, []).

-spec list_byoip_cidrs(aws_client:aws_client(), list_byoip_cidrs_request(), proplists:proplist()) ->
    {ok, list_byoip_cidrs_response(), tuple()} |
    {error, any()} |
    {error, list_byoip_cidrs_errors(), tuple()}.
list_byoip_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListByoipCidrs">>, Input, Options).

%% @doc List the cross-account attachments that have been created in Global
%% Accelerator.
-spec list_cross_account_attachments(aws_client:aws_client(), list_cross_account_attachments_request()) ->
    {ok, list_cross_account_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_attachments_errors(), tuple()}.
list_cross_account_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cross_account_attachments(Client, Input, []).

-spec list_cross_account_attachments(aws_client:aws_client(), list_cross_account_attachments_request(), proplists:proplist()) ->
    {ok, list_cross_account_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_attachments_errors(), tuple()}.
list_cross_account_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrossAccountAttachments">>, Input, Options).

%% @doc List the accounts that have cross-account resources.
%%
%% For more information, see
%% Working with cross-account attachments and resources in Global
%% Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html
%% in the
%% Global Accelerator Developer Guide.
-spec list_cross_account_resource_accounts(aws_client:aws_client(), list_cross_account_resource_accounts_request()) ->
    {ok, list_cross_account_resource_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_resource_accounts_errors(), tuple()}.
list_cross_account_resource_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cross_account_resource_accounts(Client, Input, []).

-spec list_cross_account_resource_accounts(aws_client:aws_client(), list_cross_account_resource_accounts_request(), proplists:proplist()) ->
    {ok, list_cross_account_resource_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_resource_accounts_errors(), tuple()}.
list_cross_account_resource_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrossAccountResourceAccounts">>, Input, Options).

%% @doc List the cross-account resources available to work with.
-spec list_cross_account_resources(aws_client:aws_client(), list_cross_account_resources_request()) ->
    {ok, list_cross_account_resources_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_resources_errors(), tuple()}.
list_cross_account_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cross_account_resources(Client, Input, []).

-spec list_cross_account_resources(aws_client:aws_client(), list_cross_account_resources_request(), proplists:proplist()) ->
    {ok, list_cross_account_resources_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_resources_errors(), tuple()}.
list_cross_account_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrossAccountResources">>, Input, Options).

%% @doc List the custom routing accelerators for an Amazon Web Services
%% account.
-spec list_custom_routing_accelerators(aws_client:aws_client(), list_custom_routing_accelerators_request()) ->
    {ok, list_custom_routing_accelerators_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_accelerators_errors(), tuple()}.
list_custom_routing_accelerators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_routing_accelerators(Client, Input, []).

-spec list_custom_routing_accelerators(aws_client:aws_client(), list_custom_routing_accelerators_request(), proplists:proplist()) ->
    {ok, list_custom_routing_accelerators_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_accelerators_errors(), tuple()}.
list_custom_routing_accelerators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomRoutingAccelerators">>, Input, Options).

%% @doc List the endpoint groups that are associated with a listener for a
%% custom routing accelerator.
-spec list_custom_routing_endpoint_groups(aws_client:aws_client(), list_custom_routing_endpoint_groups_request()) ->
    {ok, list_custom_routing_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_endpoint_groups_errors(), tuple()}.
list_custom_routing_endpoint_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_routing_endpoint_groups(Client, Input, []).

-spec list_custom_routing_endpoint_groups(aws_client:aws_client(), list_custom_routing_endpoint_groups_request(), proplists:proplist()) ->
    {ok, list_custom_routing_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_endpoint_groups_errors(), tuple()}.
list_custom_routing_endpoint_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomRoutingEndpointGroups">>, Input, Options).

%% @doc List the listeners for a custom routing accelerator.
-spec list_custom_routing_listeners(aws_client:aws_client(), list_custom_routing_listeners_request()) ->
    {ok, list_custom_routing_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_listeners_errors(), tuple()}.
list_custom_routing_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_routing_listeners(Client, Input, []).

-spec list_custom_routing_listeners(aws_client:aws_client(), list_custom_routing_listeners_request(), proplists:proplist()) ->
    {ok, list_custom_routing_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_listeners_errors(), tuple()}.
list_custom_routing_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomRoutingListeners">>, Input, Options).

%% @doc Provides a complete mapping from the public accelerator IP address
%% and port to destination EC2 instance
%% IP addresses and ports in the virtual public cloud (VPC) subnet endpoint
%% for a custom routing accelerator.
%%
%% For each subnet endpoint that you add, Global Accelerator creates a new
%% static port mapping for the accelerator. The port
%% mappings don't change after Global Accelerator generates them, so you
%% can retrieve and cache the full mapping on your servers.
%%
%% If you remove a subnet from your accelerator, Global Accelerator removes
%% (reclaims) the port mappings. If you add a subnet to
%% your accelerator, Global Accelerator creates new port mappings (the
%% existing ones don't change). If you add or remove EC2 instances
%% in your subnet, the port mappings don't change, because the mappings
%% are created when you add the subnet to Global Accelerator.
%%
%% The mappings also include a flag for each destination denoting which
%% destination IP addresses and
%% ports are allowed or denied traffic.
-spec list_custom_routing_port_mappings(aws_client:aws_client(), list_custom_routing_port_mappings_request()) ->
    {ok, list_custom_routing_port_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_port_mappings_errors(), tuple()}.
list_custom_routing_port_mappings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_routing_port_mappings(Client, Input, []).

-spec list_custom_routing_port_mappings(aws_client:aws_client(), list_custom_routing_port_mappings_request(), proplists:proplist()) ->
    {ok, list_custom_routing_port_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_port_mappings_errors(), tuple()}.
list_custom_routing_port_mappings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomRoutingPortMappings">>, Input, Options).

%% @doc List the port mappings for a specific EC2 instance (destination) in a
%% VPC subnet endpoint.
%%
%% The
%% response is the mappings for one destination IP address. This is useful
%% when your subnet endpoint has mappings that
%% span multiple custom routing accelerators in your account, or for
%% scenarios where you only want to
%% list the port mappings for a specific destination instance.
-spec list_custom_routing_port_mappings_by_destination(aws_client:aws_client(), list_custom_routing_port_mappings_by_destination_request()) ->
    {ok, list_custom_routing_port_mappings_by_destination_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_port_mappings_by_destination_errors(), tuple()}.
list_custom_routing_port_mappings_by_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_routing_port_mappings_by_destination(Client, Input, []).

-spec list_custom_routing_port_mappings_by_destination(aws_client:aws_client(), list_custom_routing_port_mappings_by_destination_request(), proplists:proplist()) ->
    {ok, list_custom_routing_port_mappings_by_destination_response(), tuple()} |
    {error, any()} |
    {error, list_custom_routing_port_mappings_by_destination_errors(), tuple()}.
list_custom_routing_port_mappings_by_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomRoutingPortMappingsByDestination">>, Input, Options).

%% @doc List the endpoint groups that are associated with a listener.
-spec list_endpoint_groups(aws_client:aws_client(), list_endpoint_groups_request()) ->
    {ok, list_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_endpoint_groups_errors(), tuple()}.
list_endpoint_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_groups(Client, Input, []).

-spec list_endpoint_groups(aws_client:aws_client(), list_endpoint_groups_request(), proplists:proplist()) ->
    {ok, list_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_endpoint_groups_errors(), tuple()}.
list_endpoint_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointGroups">>, Input, Options).

%% @doc List the listeners for an accelerator.
-spec list_listeners(aws_client:aws_client(), list_listeners_request()) ->
    {ok, list_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_listeners_errors(), tuple()}.
list_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_listeners(Client, Input, []).

-spec list_listeners(aws_client:aws_client(), list_listeners_request(), proplists:proplist()) ->
    {ok, list_listeners_response(), tuple()} |
    {error, any()} |
    {error, list_listeners_errors(), tuple()}.
list_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListListeners">>, Input, Options).

%% @doc List all tags for an accelerator.
%%
%% For more information, see Tagging
%% in Global Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
%% in the Global Accelerator Developer Guide.
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

%% @doc Provisions an IP address range to use with your Amazon Web Services
%% resources through bring your own IP
%% addresses (BYOIP) and creates a corresponding address pool.
%%
%% After the address range is provisioned,
%% it is ready to be advertised using
%% AdvertiseByoipCidr:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html.
%%
%% For more information, see Bring your own
%% IP addresses (BYOIP):
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
%% in the Global Accelerator Developer Guide.
-spec provision_byoip_cidr(aws_client:aws_client(), provision_byoip_cidr_request()) ->
    {ok, provision_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, provision_byoip_cidr_errors(), tuple()}.
provision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_byoip_cidr(Client, Input, []).

-spec provision_byoip_cidr(aws_client:aws_client(), provision_byoip_cidr_request(), proplists:proplist()) ->
    {ok, provision_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, provision_byoip_cidr_errors(), tuple()}.
provision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionByoipCidr">>, Input, Options).

%% @doc Remove endpoints from a custom routing accelerator.
-spec remove_custom_routing_endpoints(aws_client:aws_client(), remove_custom_routing_endpoints_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_custom_routing_endpoints_errors(), tuple()}.
remove_custom_routing_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_custom_routing_endpoints(Client, Input, []).

-spec remove_custom_routing_endpoints(aws_client:aws_client(), remove_custom_routing_endpoints_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_custom_routing_endpoints_errors(), tuple()}.
remove_custom_routing_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveCustomRoutingEndpoints">>, Input, Options).

%% @doc Remove endpoints from an endpoint group.
%%
%% The `RemoveEndpoints' API operation is the recommended option for
%% removing endpoints. The alternative is to remove
%% endpoints by updating an endpoint group by using the
%% UpdateEndpointGroup:
%% https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html
%% API operation. There are two advantages to using `AddEndpoints' to
%% remove endpoints instead:
%%
%% It's more convenient, because you only need to specify the endpoints
%% that you want to remove. With the
%% `UpdateEndpointGroup' API operation, you must specify all of the
%% endpoints in the
%% endpoint group except the ones that you want to remove from the group.
%%
%% It's faster, because Global Accelerator doesn't need to resolve
%% any endpoints. With the
%% `UpdateEndpointGroup' API operation, Global Accelerator must resolve
%% all of the endpoints that
%% remain in the group.
-spec remove_endpoints(aws_client:aws_client(), remove_endpoints_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_endpoints_errors(), tuple()}.
remove_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_endpoints(Client, Input, []).

-spec remove_endpoints(aws_client:aws_client(), remove_endpoints_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_endpoints_errors(), tuple()}.
remove_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveEndpoints">>, Input, Options).

%% @doc Add tags to an accelerator resource.
%%
%% For more information, see Tagging
%% in Global Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
%% in the Global Accelerator Developer Guide.
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

%% @doc Remove tags from a Global Accelerator resource.
%%
%% When you specify a tag key, the action removes both that key and its
%% associated value.
%% The operation succeeds even if you attempt to remove tags from an
%% accelerator that was already removed.
%%
%% For more information, see Tagging
%% in Global Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
%% in the Global Accelerator Developer Guide.
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

%% @doc Update an accelerator to make changes, such as the following:
%%
%% Change the name of the accelerator.
%%
%% Disable the accelerator so that it no longer accepts or routes traffic, or
%% so that you can delete it.
%%
%% Enable the accelerator, if it is disabled.
%%
%% Change the IP address type to dual-stack if it is IPv4, or change the IP
%% address type to IPv4 if it's dual-stack.
%%
%% Be aware that static IP addresses remain assigned to your accelerator for
%% as long as it exists, even if you disable the accelerator and it no
%% longer accepts or routes traffic. However, when you delete the
%% accelerator, you lose the static IP addresses that are assigned to it, so
%% you
%% can no longer route traffic by using them.
%%
%% Global Accelerator is a global service that supports endpoints in multiple
%% Amazon Web Services Regions but you must specify the
%% US West (Oregon) Region to create, update, or otherwise work with
%% accelerators. That is, for example, specify `--region us-west-2'
%% on Amazon Web Services CLI commands.
-spec update_accelerator(aws_client:aws_client(), update_accelerator_request()) ->
    {ok, update_accelerator_response(), tuple()} |
    {error, any()} |
    {error, update_accelerator_errors(), tuple()}.
update_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_accelerator(Client, Input, []).

-spec update_accelerator(aws_client:aws_client(), update_accelerator_request(), proplists:proplist()) ->
    {ok, update_accelerator_response(), tuple()} |
    {error, any()} |
    {error, update_accelerator_errors(), tuple()}.
update_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccelerator">>, Input, Options).

%% @doc Update the attributes for an accelerator.
-spec update_accelerator_attributes(aws_client:aws_client(), update_accelerator_attributes_request()) ->
    {ok, update_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_accelerator_attributes_errors(), tuple()}.
update_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_accelerator_attributes(Client, Input, []).

-spec update_accelerator_attributes(aws_client:aws_client(), update_accelerator_attributes_request(), proplists:proplist()) ->
    {ok, update_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_accelerator_attributes_errors(), tuple()}.
update_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAcceleratorAttributes">>, Input, Options).

%% @doc Update a cross-account attachment to add or remove principals or
%% resources.
%%
%% When you update
%% an attachment to remove a principal (account ID or accelerator) or a
%% resource, Global Accelerator
%% revokes the permission for specific resources.
%%
%% For more information, see
%% Working with cross-account attachments and resources in Global
%% Accelerator:
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html
%% in the
%% Global Accelerator Developer Guide.
-spec update_cross_account_attachment(aws_client:aws_client(), update_cross_account_attachment_request()) ->
    {ok, update_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_cross_account_attachment_errors(), tuple()}.
update_cross_account_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cross_account_attachment(Client, Input, []).

-spec update_cross_account_attachment(aws_client:aws_client(), update_cross_account_attachment_request(), proplists:proplist()) ->
    {ok, update_cross_account_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_cross_account_attachment_errors(), tuple()}.
update_cross_account_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCrossAccountAttachment">>, Input, Options).

%% @doc Update a custom routing accelerator.
-spec update_custom_routing_accelerator(aws_client:aws_client(), update_custom_routing_accelerator_request()) ->
    {ok, update_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_accelerator_errors(), tuple()}.
update_custom_routing_accelerator(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_routing_accelerator(Client, Input, []).

-spec update_custom_routing_accelerator(aws_client:aws_client(), update_custom_routing_accelerator_request(), proplists:proplist()) ->
    {ok, update_custom_routing_accelerator_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_accelerator_errors(), tuple()}.
update_custom_routing_accelerator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomRoutingAccelerator">>, Input, Options).

%% @doc Update the attributes for a custom routing accelerator.
-spec update_custom_routing_accelerator_attributes(aws_client:aws_client(), update_custom_routing_accelerator_attributes_request()) ->
    {ok, update_custom_routing_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_accelerator_attributes_errors(), tuple()}.
update_custom_routing_accelerator_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_routing_accelerator_attributes(Client, Input, []).

-spec update_custom_routing_accelerator_attributes(aws_client:aws_client(), update_custom_routing_accelerator_attributes_request(), proplists:proplist()) ->
    {ok, update_custom_routing_accelerator_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_accelerator_attributes_errors(), tuple()}.
update_custom_routing_accelerator_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomRoutingAcceleratorAttributes">>, Input, Options).

%% @doc Update a listener for a custom routing accelerator.
-spec update_custom_routing_listener(aws_client:aws_client(), update_custom_routing_listener_request()) ->
    {ok, update_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_listener_errors(), tuple()}.
update_custom_routing_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_routing_listener(Client, Input, []).

-spec update_custom_routing_listener(aws_client:aws_client(), update_custom_routing_listener_request(), proplists:proplist()) ->
    {ok, update_custom_routing_listener_response(), tuple()} |
    {error, any()} |
    {error, update_custom_routing_listener_errors(), tuple()}.
update_custom_routing_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomRoutingListener">>, Input, Options).

%% @doc Update an endpoint group.
%%
%% A resource must be valid and active when you add it as an endpoint.
-spec update_endpoint_group(aws_client:aws_client(), update_endpoint_group_request()) ->
    {ok, update_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_group_errors(), tuple()}.
update_endpoint_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_group(Client, Input, []).

-spec update_endpoint_group(aws_client:aws_client(), update_endpoint_group_request(), proplists:proplist()) ->
    {ok, update_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_group_errors(), tuple()}.
update_endpoint_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpointGroup">>, Input, Options).

%% @doc Update a listener.
-spec update_listener(aws_client:aws_client(), update_listener_request()) ->
    {ok, update_listener_response(), tuple()} |
    {error, any()} |
    {error, update_listener_errors(), tuple()}.
update_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_listener(Client, Input, []).

-spec update_listener(aws_client:aws_client(), update_listener_request(), proplists:proplist()) ->
    {ok, update_listener_response(), tuple()} |
    {error, any()} |
    {error, update_listener_errors(), tuple()}.
update_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateListener">>, Input, Options).

%% @doc Stops advertising an address range that is provisioned as an address
%% pool.
%%
%% You can perform this operation at most once every 10 seconds, even if you
%% specify different address
%% ranges each time.
%%
%% It can take a few minutes before traffic to the specified addresses stops
%% routing to Amazon Web Services because of
%% propagation delays.
%%
%% For more information, see Bring your own
%% IP addresses (BYOIP):
%% https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
%% in the Global Accelerator Developer Guide.
-spec withdraw_byoip_cidr(aws_client:aws_client(), withdraw_byoip_cidr_request()) ->
    {ok, withdraw_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, withdraw_byoip_cidr_errors(), tuple()}.
withdraw_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    withdraw_byoip_cidr(Client, Input, []).

-spec withdraw_byoip_cidr(aws_client:aws_client(), withdraw_byoip_cidr_request(), proplists:proplist()) ->
    {ok, withdraw_byoip_cidr_response(), tuple()} |
    {error, any()} |
    {error, withdraw_byoip_cidr_errors(), tuple()}.
withdraw_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"WithdrawByoipCidr">>, Input, Options).

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
    Client1 = Client#{service => <<"globalaccelerator">>},
    Host = build_host(<<"globalaccelerator">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"GlobalAccelerator_V20180706.", Action/binary>>}
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
