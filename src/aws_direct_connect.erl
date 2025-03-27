%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Direct Connect links your internal network to an Direct Connect
%% location over a standard Ethernet fiber-optic cable.
%%
%% One end of the cable is connected to your router, the other to an Direct
%% Connect router. With this connection
%% in place, you can create virtual interfaces directly to the Amazon Web
%% Services Cloud (for example, to Amazon EC2
%% and Amazon S3) and to Amazon VPC, bypassing Internet service providers in
%% your network path. A
%% connection provides access to all Amazon Web Services Regions except the
%% China (Beijing) and (China) Ningxia Regions.
%% Amazon Web Services resources in the China Regions can only be accessed
%% through locations associated with those Regions.
-module(aws_direct_connect).

-export([accept_direct_connect_gateway_association_proposal/2,
         accept_direct_connect_gateway_association_proposal/3,
         allocate_connection_on_interconnect/2,
         allocate_connection_on_interconnect/3,
         allocate_hosted_connection/2,
         allocate_hosted_connection/3,
         allocate_private_virtual_interface/2,
         allocate_private_virtual_interface/3,
         allocate_public_virtual_interface/2,
         allocate_public_virtual_interface/3,
         allocate_transit_virtual_interface/2,
         allocate_transit_virtual_interface/3,
         associate_connection_with_lag/2,
         associate_connection_with_lag/3,
         associate_hosted_connection/2,
         associate_hosted_connection/3,
         associate_mac_sec_key/2,
         associate_mac_sec_key/3,
         associate_virtual_interface/2,
         associate_virtual_interface/3,
         confirm_connection/2,
         confirm_connection/3,
         confirm_customer_agreement/2,
         confirm_customer_agreement/3,
         confirm_private_virtual_interface/2,
         confirm_private_virtual_interface/3,
         confirm_public_virtual_interface/2,
         confirm_public_virtual_interface/3,
         confirm_transit_virtual_interface/2,
         confirm_transit_virtual_interface/3,
         create_bgp_peer/2,
         create_bgp_peer/3,
         create_connection/2,
         create_connection/3,
         create_direct_connect_gateway/2,
         create_direct_connect_gateway/3,
         create_direct_connect_gateway_association/2,
         create_direct_connect_gateway_association/3,
         create_direct_connect_gateway_association_proposal/2,
         create_direct_connect_gateway_association_proposal/3,
         create_interconnect/2,
         create_interconnect/3,
         create_lag/2,
         create_lag/3,
         create_private_virtual_interface/2,
         create_private_virtual_interface/3,
         create_public_virtual_interface/2,
         create_public_virtual_interface/3,
         create_transit_virtual_interface/2,
         create_transit_virtual_interface/3,
         delete_bgp_peer/2,
         delete_bgp_peer/3,
         delete_connection/2,
         delete_connection/3,
         delete_direct_connect_gateway/2,
         delete_direct_connect_gateway/3,
         delete_direct_connect_gateway_association/2,
         delete_direct_connect_gateway_association/3,
         delete_direct_connect_gateway_association_proposal/2,
         delete_direct_connect_gateway_association_proposal/3,
         delete_interconnect/2,
         delete_interconnect/3,
         delete_lag/2,
         delete_lag/3,
         delete_virtual_interface/2,
         delete_virtual_interface/3,
         describe_connection_loa/2,
         describe_connection_loa/3,
         describe_connections/2,
         describe_connections/3,
         describe_connections_on_interconnect/2,
         describe_connections_on_interconnect/3,
         describe_customer_metadata/2,
         describe_customer_metadata/3,
         describe_direct_connect_gateway_association_proposals/2,
         describe_direct_connect_gateway_association_proposals/3,
         describe_direct_connect_gateway_associations/2,
         describe_direct_connect_gateway_associations/3,
         describe_direct_connect_gateway_attachments/2,
         describe_direct_connect_gateway_attachments/3,
         describe_direct_connect_gateways/2,
         describe_direct_connect_gateways/3,
         describe_hosted_connections/2,
         describe_hosted_connections/3,
         describe_interconnect_loa/2,
         describe_interconnect_loa/3,
         describe_interconnects/2,
         describe_interconnects/3,
         describe_lags/2,
         describe_lags/3,
         describe_loa/2,
         describe_loa/3,
         describe_locations/2,
         describe_locations/3,
         describe_router_configuration/2,
         describe_router_configuration/3,
         describe_tags/2,
         describe_tags/3,
         describe_virtual_gateways/2,
         describe_virtual_gateways/3,
         describe_virtual_interfaces/2,
         describe_virtual_interfaces/3,
         disassociate_connection_from_lag/2,
         disassociate_connection_from_lag/3,
         disassociate_mac_sec_key/2,
         disassociate_mac_sec_key/3,
         list_virtual_interface_test_history/2,
         list_virtual_interface_test_history/3,
         start_bgp_failover_test/2,
         start_bgp_failover_test/3,
         stop_bgp_failover_test/2,
         stop_bgp_failover_test/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_connection/2,
         update_connection/3,
         update_direct_connect_gateway/2,
         update_direct_connect_gateway/3,
         update_direct_connect_gateway_association/2,
         update_direct_connect_gateway_association/3,
         update_lag/2,
         update_lag/3,
         update_virtual_interface_attributes/2,
         update_virtual_interface_attributes/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% confirm_transit_virtual_interface_request() :: #{
%%   <<"directConnectGatewayId">> := string(),
%%   <<"virtualInterfaceId">> := string()
%% }
-type confirm_transit_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% update_connection_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"connectionName">> => string(),
%%   <<"encryptionMode">> => string()
%% }
-type update_connection_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_associations_result() :: #{
%%   <<"directConnectGatewayAssociations">> => list(direct_connect_gateway_association()()),
%%   <<"nextToken">> => string()
%% }
-type describe_direct_connect_gateway_associations_result() :: #{binary() => any()}.

%% Example:
%% direct_connect_gateway_association_proposal() :: #{
%%   <<"associatedGateway">> => associated_gateway(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"directConnectGatewayOwnerAccount">> => string(),
%%   <<"existingAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"proposalId">> => string(),
%%   <<"proposalState">> => list(any()),
%%   <<"requestedAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()())
%% }
-type direct_connect_gateway_association_proposal() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_virtual_interface_attributes_request() :: #{
%%   <<"enableSiteLink">> => boolean(),
%%   <<"mtu">> => integer(),
%%   <<"virtualInterfaceId">> := string(),
%%   <<"virtualInterfaceName">> => string()
%% }
-type update_virtual_interface_attributes_request() :: #{binary() => any()}.

%% Example:
%% start_bgp_failover_test_request() :: #{
%%   <<"bgpPeers">> => list(string()()),
%%   <<"testDurationInMinutes">> => integer(),
%%   <<"virtualInterfaceId">> := string()
%% }
-type start_bgp_failover_test_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateways_result() :: #{
%%   <<"directConnectGateways">> => list(direct_connect_gateway()()),
%%   <<"nextToken">> => string()
%% }
-type describe_direct_connect_gateways_result() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateways_request() :: #{
%%   <<"directConnectGatewayId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_direct_connect_gateways_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_association_proposals_request() :: #{
%%   <<"associatedGatewayId">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"proposalId">> => string()
%% }
-type describe_direct_connect_gateway_association_proposals_request() :: #{binary() => any()}.

%% Example:
%% describe_lags_request() :: #{
%%   <<"lagId">> => string()
%% }
-type describe_lags_request() :: #{binary() => any()}.

%% Example:
%% stop_bgp_failover_test_request() :: #{
%%   <<"virtualInterfaceId">> := string()
%% }
-type stop_bgp_failover_test_request() :: #{binary() => any()}.

%% Example:
%% new_private_virtual_interface() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"enableSiteLink">> => boolean(),
%%   <<"mtu">> => integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualGatewayId">> => string(),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_private_virtual_interface() :: #{binary() => any()}.

%% Example:
%% confirm_connection_response() :: #{
%%   <<"connectionState">> => list(any())
%% }
-type confirm_connection_response() :: #{binary() => any()}.

%% Example:
%% virtual_gateways() :: #{
%%   <<"virtualGateways">> => list(virtual_gateway()())
%% }
-type virtual_gateways() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_association_proposal_request() :: #{
%%   <<"proposalId">> := string()
%% }
-type delete_direct_connect_gateway_association_proposal_request() :: #{binary() => any()}.

%% Example:
%% new_private_virtual_interface_allocation() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"mtu">> => integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_private_virtual_interface_allocation() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_result() :: #{
%%   <<"directConnectGateway">> => direct_connect_gateway()
%% }
-type create_direct_connect_gateway_result() :: #{binary() => any()}.

%% Example:
%% associated_core_network() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"ownerAccount">> => string()
%% }
-type associated_core_network() :: #{binary() => any()}.

%% Example:
%% create_interconnect_request() :: #{
%%   <<"bandwidth">> := string(),
%%   <<"interconnectName">> := string(),
%%   <<"lagId">> => string(),
%%   <<"location">> := string(),
%%   <<"providerName">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_interconnect_request() :: #{binary() => any()}.

%% Example:
%% loa() :: #{
%%   <<"loaContent">> => binary(),
%%   <<"loaContentType">> => list(any())
%% }
-type loa() :: #{binary() => any()}.

%% Example:
%% direct_connect_client_exception() :: #{
%%   <<"message">> => string()
%% }
-type direct_connect_client_exception() :: #{binary() => any()}.

%% Example:
%% confirm_connection_request() :: #{
%%   <<"connectionId">> := string()
%% }
-type confirm_connection_request() :: #{binary() => any()}.

%% Example:
%% describe_customer_metadata_response() :: #{
%%   <<"agreements">> => list(customer_agreement()()),
%%   <<"nniPartnerType">> => list(any())
%% }
-type describe_customer_metadata_response() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_associations_request() :: #{
%%   <<"associatedGatewayId">> => string(),
%%   <<"associationId">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"virtualGatewayId">> => string()
%% }
-type describe_direct_connect_gateway_associations_request() :: #{binary() => any()}.

%% Example:
%% update_direct_connect_gateway_association_result() :: #{
%%   <<"directConnectGatewayAssociation">> => direct_connect_gateway_association()
%% }
-type update_direct_connect_gateway_association_result() :: #{binary() => any()}.

%% Example:
%% delete_virtual_interface_request() :: #{
%%   <<"virtualInterfaceId">> := string()
%% }
-type delete_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% describe_hosted_connections_request() :: #{
%%   <<"connectionId">> := string()
%% }
-type describe_hosted_connections_request() :: #{binary() => any()}.

%% Example:
%% disassociate_mac_sec_key_response() :: #{
%%   <<"connectionId">> => string(),
%%   <<"macSecKeys">> => list(mac_sec_key()())
%% }
-type disassociate_mac_sec_key_response() :: #{binary() => any()}.

%% Example:
%% create_private_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newPrivateVirtualInterface">> := new_private_virtual_interface()
%% }
-type create_private_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% describe_connections_request() :: #{
%%   <<"connectionId">> => string()
%% }
-type describe_connections_request() :: #{binary() => any()}.

%% Example:
%% bgp_peer() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"awsDeviceV2">> => string(),
%%   <<"awsLogicalDeviceId">> => string(),
%%   <<"bgpPeerId">> => string(),
%%   <<"bgpPeerState">> => list(any()),
%%   <<"bgpStatus">> => list(any()),
%%   <<"customerAddress">> => string()
%% }
-type bgp_peer() :: #{binary() => any()}.

%% Example:
%% interconnect() :: #{
%%   <<"awsDevice">> => string(),
%%   <<"awsDeviceV2">> => string(),
%%   <<"awsLogicalDeviceId">> => string(),
%%   <<"bandwidth">> => string(),
%%   <<"hasLogicalRedundancy">> => list(any()),
%%   <<"interconnectId">> => string(),
%%   <<"interconnectName">> => string(),
%%   <<"interconnectState">> => list(any()),
%%   <<"jumboFrameCapable">> => boolean(),
%%   <<"lagId">> => string(),
%%   <<"loaIssueTime">> => non_neg_integer(),
%%   <<"location">> => string(),
%%   <<"providerName">> => string(),
%%   <<"region">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type interconnect() :: #{binary() => any()}.

%% Example:
%% confirm_customer_agreement_request() :: #{
%%   <<"agreementName">> => string()
%% }
-type confirm_customer_agreement_request() :: #{binary() => any()}.

%% Example:
%% create_transit_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newTransitVirtualInterface">> := new_transit_virtual_interface()
%% }
-type create_transit_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% direct_connect_gateway_association() :: #{
%%   <<"allowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"associatedCoreNetwork">> => associated_core_network(),
%%   <<"associatedGateway">> => associated_gateway(),
%%   <<"associationId">> => string(),
%%   <<"associationState">> => list(any()),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"directConnectGatewayOwnerAccount">> => string(),
%%   <<"stateChangeError">> => string(),
%%   <<"virtualGatewayId">> => string(),
%%   <<"virtualGatewayOwnerAccount">> => string(),
%%   <<"virtualGatewayRegion">> => string()
%% }
-type direct_connect_gateway_association() :: #{binary() => any()}.

%% Example:
%% router_type() :: #{
%%   <<"platform">> => string(),
%%   <<"routerTypeIdentifier">> => string(),
%%   <<"software">> => string(),
%%   <<"vendor">> => string(),
%%   <<"xsltTemplateName">> => string(),
%%   <<"xsltTemplateNameForMacSec">> => string()
%% }
-type router_type() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_bgp_peer_request() :: #{
%%   <<"newBGPPeer">> => new_bgp_peer(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type create_bgp_peer_request() :: #{binary() => any()}.

%% Example:
%% create_bgp_peer_response() :: #{
%%   <<"virtualInterface">> => virtual_interface()
%% }
-type create_bgp_peer_response() :: #{binary() => any()}.

%% Example:
%% describe_tags_response() :: #{
%%   <<"resourceTags">> => list(resource_tag()())
%% }
-type describe_tags_response() :: #{binary() => any()}.

%% Example:
%% list_virtual_interface_test_history_request() :: #{
%%   <<"bgpPeers">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string(),
%%   <<"testId">> => string(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type list_virtual_interface_test_history_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_attachments_result() :: #{
%%   <<"directConnectGatewayAttachments">> => list(direct_connect_gateway_attachment()()),
%%   <<"nextToken">> => string()
%% }
-type describe_direct_connect_gateway_attachments_result() :: #{binary() => any()}.

%% Example:
%% virtual_interfaces() :: #{
%%   <<"virtualInterfaces">> => list(virtual_interface()())
%% }
-type virtual_interfaces() :: #{binary() => any()}.

%% Example:
%% disassociate_mac_sec_key_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"secretARN">> := string()
%% }
-type disassociate_mac_sec_key_request() :: #{binary() => any()}.

%% Example:
%% new_transit_virtual_interface_allocation() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"mtu">> => integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_transit_virtual_interface_allocation() :: #{binary() => any()}.

%% Example:
%% delete_bgp_peer_request() :: #{
%%   <<"asn">> => integer(),
%%   <<"bgpPeerId">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type delete_bgp_peer_request() :: #{binary() => any()}.

%% Example:
%% allocate_transit_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newTransitVirtualInterfaceAllocation">> := new_transit_virtual_interface_allocation(),
%%   <<"ownerAccount">> := string()
%% }
-type allocate_transit_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% allocate_transit_virtual_interface_result() :: #{
%%   <<"virtualInterface">> => virtual_interface()
%% }
-type allocate_transit_virtual_interface_result() :: #{binary() => any()}.

%% Example:
%% update_direct_connect_gateway_response() :: #{
%%   <<"directConnectGateway">> => direct_connect_gateway()
%% }
-type update_direct_connect_gateway_response() :: #{binary() => any()}.

%% Example:
%% delete_bgp_peer_response() :: #{
%%   <<"virtualInterface">> => virtual_interface()
%% }
-type delete_bgp_peer_response() :: #{binary() => any()}.

%% Example:
%% create_lag_request() :: #{
%%   <<"childConnectionTags">> => list(tag()()),
%%   <<"connectionId">> => string(),
%%   <<"connectionsBandwidth">> := string(),
%%   <<"lagName">> := string(),
%%   <<"location">> := string(),
%%   <<"numberOfConnections">> := integer(),
%%   <<"providerName">> => string(),
%%   <<"requestMACSec">> => boolean(),
%%   <<"tags">> => list(tag()())
%% }
-type create_lag_request() :: #{binary() => any()}.

%% Example:
%% confirm_public_virtual_interface_response() :: #{
%%   <<"virtualInterfaceState">> => list(any())
%% }
-type confirm_public_virtual_interface_response() :: #{binary() => any()}.

%% Example:
%% describe_interconnect_loa_response() :: #{
%%   <<"loa">> => loa()
%% }
-type describe_interconnect_loa_response() :: #{binary() => any()}.

%% Example:
%% list_virtual_interface_test_history_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"virtualInterfaceTestHistory">> => list(virtual_interface_test_history()())
%% }
-type list_virtual_interface_test_history_response() :: #{binary() => any()}.

%% Example:
%% virtual_gateway() :: #{
%%   <<"virtualGatewayId">> => string(),
%%   <<"virtualGatewayState">> => string()
%% }
-type virtual_gateway() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% start_bgp_failover_test_response() :: #{
%%   <<"virtualInterfaceTest">> => virtual_interface_test_history()
%% }
-type start_bgp_failover_test_response() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_result() :: #{
%%   <<"directConnectGateway">> => direct_connect_gateway()
%% }
-type delete_direct_connect_gateway_result() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"awsDevice">> => string(),
%%   <<"awsDeviceV2">> => string(),
%%   <<"awsLogicalDeviceId">> => string(),
%%   <<"bandwidth">> => string(),
%%   <<"connectionId">> => string(),
%%   <<"connectionName">> => string(),
%%   <<"connectionState">> => list(any()),
%%   <<"encryptionMode">> => string(),
%%   <<"hasLogicalRedundancy">> => list(any()),
%%   <<"jumboFrameCapable">> => boolean(),
%%   <<"lagId">> => string(),
%%   <<"loaIssueTime">> => non_neg_integer(),
%%   <<"location">> => string(),
%%   <<"macSecCapable">> => boolean(),
%%   <<"macSecKeys">> => list(mac_sec_key()()),
%%   <<"ownerAccount">> => string(),
%%   <<"partnerName">> => string(),
%%   <<"portEncryptionStatus">> => string(),
%%   <<"providerName">> => string(),
%%   <<"region">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"vlan">> => integer()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% stop_bgp_failover_test_response() :: #{
%%   <<"virtualInterfaceTest">> => virtual_interface_test_history()
%% }
-type stop_bgp_failover_test_response() :: #{binary() => any()}.

%% Example:
%% new_public_virtual_interface() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"routeFilterPrefixes">> => list(route_filter_prefix()()),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_public_virtual_interface() :: #{binary() => any()}.

%% Example:
%% create_public_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newPublicVirtualInterface">> := new_public_virtual_interface()
%% }
-type create_public_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% delete_interconnect_response() :: #{
%%   <<"interconnectState">> => list(any())
%% }
-type delete_interconnect_response() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_association_proposal_result() :: #{
%%   <<"directConnectGatewayAssociationProposal">> => direct_connect_gateway_association_proposal()
%% }
-type delete_direct_connect_gateway_association_proposal_result() :: #{binary() => any()}.

%% Example:
%% customer_agreement() :: #{
%%   <<"agreementName">> => string(),
%%   <<"status">> => string()
%% }
-type customer_agreement() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_request() :: #{
%%   <<"amazonSideAsn">> => float(),
%%   <<"directConnectGatewayName">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_direct_connect_gateway_request() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_association_request() :: #{
%%   <<"addAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"directConnectGatewayId">> := string(),
%%   <<"gatewayId">> => string(),
%%   <<"virtualGatewayId">> => string()
%% }
-type create_direct_connect_gateway_association_request() :: #{binary() => any()}.

%% Example:
%% describe_interconnect_loa_request() :: #{
%%   <<"interconnectId">> := string(),
%%   <<"loaContentType">> => list(any()),
%%   <<"providerName">> => string()
%% }
-type describe_interconnect_loa_request() :: #{binary() => any()}.

%% Example:
%% mac_sec_key() :: #{
%%   <<"ckn">> => string(),
%%   <<"secretARN">> => string(),
%%   <<"startOn">> => string(),
%%   <<"state">> => string()
%% }
-type mac_sec_key() :: #{binary() => any()}.

%% Example:
%% location() :: #{
%%   <<"availableMacSecPortSpeeds">> => list(string()()),
%%   <<"availablePortSpeeds">> => list(string()()),
%%   <<"availableProviders">> => list(string()()),
%%   <<"locationCode">> => string(),
%%   <<"locationName">> => string(),
%%   <<"region">> => string()
%% }
-type location() :: #{binary() => any()}.

%% Example:
%% describe_router_configuration_request() :: #{
%%   <<"routerTypeIdentifier">> => string(),
%%   <<"virtualInterfaceId">> := string()
%% }
-type describe_router_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_lag_request() :: #{
%%   <<"lagId">> := string()
%% }
-type delete_lag_request() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_request() :: #{
%%   <<"directConnectGatewayId">> := string()
%% }
-type delete_direct_connect_gateway_request() :: #{binary() => any()}.

%% Example:
%% describe_virtual_interfaces_request() :: #{
%%   <<"connectionId">> => string(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type describe_virtual_interfaces_request() :: #{binary() => any()}.

%% Example:
%% connections() :: #{
%%   <<"connections">> => list(connection()())
%% }
-type connections() :: #{binary() => any()}.

%% Example:
%% confirm_private_virtual_interface_response() :: #{
%%   <<"virtualInterfaceState">> => list(any())
%% }
-type confirm_private_virtual_interface_response() :: #{binary() => any()}.

%% Example:
%% locations() :: #{
%%   <<"locations">> => list(location()())
%% }
-type locations() :: #{binary() => any()}.

%% Example:
%% accept_direct_connect_gateway_association_proposal_result() :: #{
%%   <<"directConnectGatewayAssociation">> => direct_connect_gateway_association()
%% }
-type accept_direct_connect_gateway_association_proposal_result() :: #{binary() => any()}.

%% Example:
%% virtual_interface_test_history() :: #{
%%   <<"bgpPeers">> => list(string()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"ownerAccount">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"testDurationInMinutes">> => integer(),
%%   <<"testId">> => string(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type virtual_interface_test_history() :: #{binary() => any()}.

%% Example:
%% new_transit_virtual_interface() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"enableSiteLink">> => boolean(),
%%   <<"mtu">> => integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_transit_virtual_interface() :: #{binary() => any()}.

%% Example:
%% describe_connections_on_interconnect_request() :: #{
%%   <<"interconnectId">> := string()
%% }
-type describe_connections_on_interconnect_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_association_proposals_result() :: #{
%%   <<"directConnectGatewayAssociationProposals">> => list(direct_connect_gateway_association_proposal()()),
%%   <<"nextToken">> => string()
%% }
-type describe_direct_connect_gateway_association_proposals_result() :: #{binary() => any()}.

%% Example:
%% virtual_interface() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"amazonSideAsn">> => float(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"awsDeviceV2">> => string(),
%%   <<"awsLogicalDeviceId">> => string(),
%%   <<"bgpPeers">> => list(bgp_peer()()),
%%   <<"connectionId">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"customerRouterConfig">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"jumboFrameCapable">> => boolean(),
%%   <<"location">> => string(),
%%   <<"mtu">> => integer(),
%%   <<"ownerAccount">> => string(),
%%   <<"region">> => string(),
%%   <<"routeFilterPrefixes">> => list(route_filter_prefix()()),
%%   <<"siteLinkEnabled">> => boolean(),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualGatewayId">> => string(),
%%   <<"virtualInterfaceId">> => string(),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"virtualInterfaceState">> => list(any()),
%%   <<"virtualInterfaceType">> => string(),
%%   <<"vlan">> => integer()
%% }
-type virtual_interface() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% allocate_hosted_connection_request() :: #{
%%   <<"bandwidth">> := string(),
%%   <<"connectionId">> := string(),
%%   <<"connectionName">> := string(),
%%   <<"ownerAccount">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"vlan">> := integer()
%% }
-type allocate_hosted_connection_request() :: #{binary() => any()}.

%% Example:
%% associate_mac_sec_key_request() :: #{
%%   <<"cak">> => string(),
%%   <<"ckn">> => string(),
%%   <<"connectionId">> := string(),
%%   <<"secretARN">> => string()
%% }
-type associate_mac_sec_key_request() :: #{binary() => any()}.

%% Example:
%% associate_hosted_connection_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"parentConnectionId">> := string()
%% }
-type associate_hosted_connection_request() :: #{binary() => any()}.

%% Example:
%% describe_direct_connect_gateway_attachments_request() :: #{
%%   <<"directConnectGatewayId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"virtualInterfaceId">> => string()
%% }
-type describe_direct_connect_gateway_attachments_request() :: #{binary() => any()}.

%% Example:
%% direct_connect_gateway_attachment() :: #{
%%   <<"attachmentState">> => list(any()),
%%   <<"attachmentType">> => list(any()),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"stateChangeError">> => string(),
%%   <<"virtualInterfaceId">> => string(),
%%   <<"virtualInterfaceOwnerAccount">> => string(),
%%   <<"virtualInterfaceRegion">> => string()
%% }
-type direct_connect_gateway_attachment() :: #{binary() => any()}.

%% Example:
%% describe_connection_loa_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"loaContentType">> => list(any()),
%%   <<"providerName">> => string()
%% }
-type describe_connection_loa_request() :: #{binary() => any()}.

%% Example:
%% update_lag_request() :: #{
%%   <<"encryptionMode">> => string(),
%%   <<"lagId">> := string(),
%%   <<"lagName">> => string(),
%%   <<"minimumLinks">> => integer()
%% }
-type update_lag_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_interconnects_request() :: #{
%%   <<"interconnectId">> => string()
%% }
-type describe_interconnects_request() :: #{binary() => any()}.

%% Example:
%% delete_virtual_interface_response() :: #{
%%   <<"virtualInterfaceState">> => list(any())
%% }
-type delete_virtual_interface_response() :: #{binary() => any()}.

%% Example:
%% update_direct_connect_gateway_association_request() :: #{
%%   <<"addAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"associationId">> => string(),
%%   <<"removeAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()())
%% }
-type update_direct_connect_gateway_association_request() :: #{binary() => any()}.

%% Example:
%% confirm_private_virtual_interface_request() :: #{
%%   <<"directConnectGatewayId">> => string(),
%%   <<"virtualGatewayId">> => string(),
%%   <<"virtualInterfaceId">> := string()
%% }
-type confirm_private_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% delete_interconnect_request() :: #{
%%   <<"interconnectId">> := string()
%% }
-type delete_interconnect_request() :: #{binary() => any()}.

%% Example:
%% interconnects() :: #{
%%   <<"interconnects">> => list(interconnect()())
%% }
-type interconnects() :: #{binary() => any()}.

%% Example:
%% duplicate_tag_keys_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_tag_keys_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_connection_from_lag_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"lagId">> := string()
%% }
-type disassociate_connection_from_lag_request() :: #{binary() => any()}.

%% Example:
%% route_filter_prefix() :: #{
%%   <<"cidr">> => string()
%% }
-type route_filter_prefix() :: #{binary() => any()}.

%% Example:
%% allocate_connection_on_interconnect_request() :: #{
%%   <<"bandwidth">> := string(),
%%   <<"connectionName">> := string(),
%%   <<"interconnectId">> := string(),
%%   <<"ownerAccount">> := string(),
%%   <<"vlan">> := integer()
%% }
-type allocate_connection_on_interconnect_request() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_association_proposal_result() :: #{
%%   <<"directConnectGatewayAssociationProposal">> => direct_connect_gateway_association_proposal()
%% }
-type create_direct_connect_gateway_association_proposal_result() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_association_proposal_request() :: #{
%%   <<"addAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"directConnectGatewayId">> := string(),
%%   <<"directConnectGatewayOwnerAccount">> := string(),
%%   <<"gatewayId">> := string(),
%%   <<"removeAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()())
%% }
-type create_direct_connect_gateway_association_proposal_request() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_association_request() :: #{
%%   <<"associationId">> => string(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"virtualGatewayId">> => string()
%% }
-type delete_direct_connect_gateway_association_request() :: #{binary() => any()}.

%% Example:
%% confirm_transit_virtual_interface_response() :: #{
%%   <<"virtualInterfaceState">> => list(any())
%% }
-type confirm_transit_virtual_interface_response() :: #{binary() => any()}.

%% Example:
%% accept_direct_connect_gateway_association_proposal_request() :: #{
%%   <<"associatedGatewayOwnerAccount">> := string(),
%%   <<"directConnectGatewayId">> := string(),
%%   <<"overrideAllowedPrefixesToDirectConnectGateway">> => list(route_filter_prefix()()),
%%   <<"proposalId">> := string()
%% }
-type accept_direct_connect_gateway_association_proposal_request() :: #{binary() => any()}.

%% Example:
%% allocate_private_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newPrivateVirtualInterfaceAllocation">> := new_private_virtual_interface_allocation(),
%%   <<"ownerAccount">> := string()
%% }
-type allocate_private_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% associate_mac_sec_key_response() :: #{
%%   <<"connectionId">> => string(),
%%   <<"macSecKeys">> => list(mac_sec_key()())
%% }
-type associate_mac_sec_key_response() :: #{binary() => any()}.

%% Example:
%% allocate_public_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"newPublicVirtualInterfaceAllocation">> := new_public_virtual_interface_allocation(),
%%   <<"ownerAccount">> := string()
%% }
-type allocate_public_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% direct_connect_gateway() :: #{
%%   <<"amazonSideAsn">> => float(),
%%   <<"directConnectGatewayId">> => string(),
%%   <<"directConnectGatewayName">> => string(),
%%   <<"directConnectGatewayState">> => list(any()),
%%   <<"ownerAccount">> => string(),
%%   <<"stateChangeError">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type direct_connect_gateway() :: #{binary() => any()}.

%% Example:
%% associate_connection_with_lag_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"lagId">> := string()
%% }
-type associate_connection_with_lag_request() :: #{binary() => any()}.

%% Example:
%% describe_tags_request() :: #{
%%   <<"resourceArns">> := list(string()())
%% }
-type describe_tags_request() :: #{binary() => any()}.

%% Example:
%% create_direct_connect_gateway_association_result() :: #{
%%   <<"directConnectGatewayAssociation">> => direct_connect_gateway_association()
%% }
-type create_direct_connect_gateway_association_result() :: #{binary() => any()}.

%% Example:
%% confirm_customer_agreement_response() :: #{
%%   <<"status">> => string()
%% }
-type confirm_customer_agreement_response() :: #{binary() => any()}.

%% Example:
%% associated_gateway() :: #{
%%   <<"id">> => string(),
%%   <<"ownerAccount">> => string(),
%%   <<"region">> => string(),
%%   <<"type">> => list(any())
%% }
-type associated_gateway() :: #{binary() => any()}.

%% Example:
%% describe_router_configuration_response() :: #{
%%   <<"customerRouterConfig">> => string(),
%%   <<"router">> => router_type(),
%%   <<"virtualInterfaceId">> => string(),
%%   <<"virtualInterfaceName">> => string()
%% }
-type describe_router_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{
%%   <<"connectionId">> := string()
%% }
-type delete_connection_request() :: #{binary() => any()}.

%% Example:
%% direct_connect_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type direct_connect_server_exception() :: #{binary() => any()}.

%% Example:
%% confirm_public_virtual_interface_request() :: #{
%%   <<"virtualInterfaceId">> := string()
%% }
-type confirm_public_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% associate_virtual_interface_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"virtualInterfaceId">> := string()
%% }
-type associate_virtual_interface_request() :: #{binary() => any()}.

%% Example:
%% lags() :: #{
%%   <<"lags">> => list(lag()())
%% }
-type lags() :: #{binary() => any()}.

%% Example:
%% describe_loa_request() :: #{
%%   <<"connectionId">> := string(),
%%   <<"loaContentType">> => list(any()),
%%   <<"providerName">> => string()
%% }
-type describe_loa_request() :: #{binary() => any()}.

%% Example:
%% describe_connection_loa_response() :: #{
%%   <<"loa">> => loa()
%% }
-type describe_connection_loa_response() :: #{binary() => any()}.

%% Example:
%% create_connection_request() :: #{
%%   <<"bandwidth">> := string(),
%%   <<"connectionName">> := string(),
%%   <<"lagId">> => string(),
%%   <<"location">> := string(),
%%   <<"providerName">> => string(),
%%   <<"requestMACSec">> => boolean(),
%%   <<"tags">> => list(tag()())
%% }
-type create_connection_request() :: #{binary() => any()}.

%% Example:
%% update_direct_connect_gateway_request() :: #{
%%   <<"directConnectGatewayId">> := string(),
%%   <<"newDirectConnectGatewayName">> := string()
%% }
-type update_direct_connect_gateway_request() :: #{binary() => any()}.

%% Example:
%% delete_direct_connect_gateway_association_result() :: #{
%%   <<"directConnectGatewayAssociation">> => direct_connect_gateway_association()
%% }
-type delete_direct_connect_gateway_association_result() :: #{binary() => any()}.

%% Example:
%% lag() :: #{
%%   <<"allowsHostedConnections">> => boolean(),
%%   <<"awsDevice">> => string(),
%%   <<"awsDeviceV2">> => string(),
%%   <<"awsLogicalDeviceId">> => string(),
%%   <<"connections">> => list(connection()()),
%%   <<"connectionsBandwidth">> => string(),
%%   <<"encryptionMode">> => string(),
%%   <<"hasLogicalRedundancy">> => list(any()),
%%   <<"jumboFrameCapable">> => boolean(),
%%   <<"lagId">> => string(),
%%   <<"lagName">> => string(),
%%   <<"lagState">> => list(any()),
%%   <<"location">> => string(),
%%   <<"macSecCapable">> => boolean(),
%%   <<"macSecKeys">> => list(mac_sec_key()()),
%%   <<"minimumLinks">> => integer(),
%%   <<"numberOfConnections">> => integer(),
%%   <<"ownerAccount">> => string(),
%%   <<"providerName">> => string(),
%%   <<"region">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type lag() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% new_public_virtual_interface_allocation() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string(),
%%   <<"routeFilterPrefixes">> => list(route_filter_prefix()()),
%%   <<"tags">> => list(tag()()),
%%   <<"virtualInterfaceName">> => string(),
%%   <<"vlan">> => integer()
%% }
-type new_public_virtual_interface_allocation() :: #{binary() => any()}.

%% Example:
%% new_bgp_peer() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"amazonAddress">> => string(),
%%   <<"asn">> => integer(),
%%   <<"authKey">> => string(),
%%   <<"customerAddress">> => string()
%% }
-type new_bgp_peer() :: #{binary() => any()}.

%% Example:
%% create_transit_virtual_interface_result() :: #{
%%   <<"virtualInterface">> => virtual_interface()
%% }
-type create_transit_virtual_interface_result() :: #{binary() => any()}.

-type accept_direct_connect_gateway_association_proposal_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type allocate_connection_on_interconnect_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type allocate_hosted_connection_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type allocate_private_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type allocate_public_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type allocate_transit_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type associate_connection_with_lag_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type associate_hosted_connection_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type associate_mac_sec_key_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type associate_virtual_interface_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type confirm_connection_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type confirm_customer_agreement_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type confirm_private_virtual_interface_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type confirm_public_virtual_interface_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type confirm_transit_virtual_interface_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type create_bgp_peer_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type create_connection_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type create_direct_connect_gateway_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type create_direct_connect_gateway_association_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type create_direct_connect_gateway_association_proposal_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type create_interconnect_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type create_lag_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type create_private_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type create_public_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type create_transit_virtual_interface_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type delete_bgp_peer_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_connection_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_direct_connect_gateway_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_direct_connect_gateway_association_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_direct_connect_gateway_association_proposal_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_interconnect_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_lag_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type delete_virtual_interface_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_connection_loa_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_connections_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_connections_on_interconnect_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_customer_metadata_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_direct_connect_gateway_association_proposals_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_direct_connect_gateway_associations_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_direct_connect_gateway_attachments_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_direct_connect_gateways_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_hosted_connections_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_interconnect_loa_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_interconnects_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_lags_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_loa_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_locations_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_router_configuration_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_tags_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_virtual_gateways_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type describe_virtual_interfaces_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type disassociate_connection_from_lag_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type disassociate_mac_sec_key_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type list_virtual_interface_test_history_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type start_bgp_failover_test_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type stop_bgp_failover_test_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    direct_connect_server_exception() | 
    duplicate_tag_keys_exception() | 
    direct_connect_client_exception().

-type untag_resource_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type update_connection_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type update_direct_connect_gateway_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type update_direct_connect_gateway_association_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type update_lag_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

-type update_virtual_interface_attributes_errors() ::
    direct_connect_server_exception() | 
    direct_connect_client_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a proposal request to attach a virtual private gateway or
%% transit gateway to a Direct Connect gateway.
-spec accept_direct_connect_gateway_association_proposal(aws_client:aws_client(), accept_direct_connect_gateway_association_proposal_request()) ->
    {ok, accept_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, accept_direct_connect_gateway_association_proposal_errors(), tuple()}.
accept_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_direct_connect_gateway_association_proposal(Client, Input, []).

-spec accept_direct_connect_gateway_association_proposal(aws_client:aws_client(), accept_direct_connect_gateway_association_proposal_request(), proplists:proplist()) ->
    {ok, accept_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, accept_direct_connect_gateway_association_proposal_errors(), tuple()}.
accept_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc
%% Deprecated.
%%
%% Use `AllocateHostedConnection' instead.
%%
%% Creates a hosted connection on an interconnect.
%%
%% Allocates a VLAN number and a specified amount of bandwidth for use by a
%% hosted connection on the specified interconnect.
%%
%% Intended for use by Direct Connect Partners only.
-spec allocate_connection_on_interconnect(aws_client:aws_client(), allocate_connection_on_interconnect_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, allocate_connection_on_interconnect_errors(), tuple()}.
allocate_connection_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_connection_on_interconnect(Client, Input, []).

-spec allocate_connection_on_interconnect(aws_client:aws_client(), allocate_connection_on_interconnect_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, allocate_connection_on_interconnect_errors(), tuple()}.
allocate_connection_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateConnectionOnInterconnect">>, Input, Options).

%% @doc Creates a hosted connection on the specified interconnect or a link
%% aggregation group (LAG) of interconnects.
%%
%% Allocates a VLAN number and a specified amount of capacity (bandwidth) for
%% use by a hosted connection on the specified interconnect or LAG of
%% interconnects.
%% Amazon Web Services polices the hosted connection for the specified
%% capacity and the Direct Connect Partner must also police the hosted
%% connection for the specified capacity.
%%
%% Intended for use by Direct Connect Partners only.
-spec allocate_hosted_connection(aws_client:aws_client(), allocate_hosted_connection_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, allocate_hosted_connection_errors(), tuple()}.
allocate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_hosted_connection(Client, Input, []).

-spec allocate_hosted_connection(aws_client:aws_client(), allocate_hosted_connection_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, allocate_hosted_connection_errors(), tuple()}.
allocate_hosted_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateHostedConnection">>, Input, Options).

%% @doc Provisions a private virtual interface to be owned by the specified
%% Amazon Web Services account.
%%
%% Virtual interfaces created using this action must be confirmed by the
%% owner using `ConfirmPrivateVirtualInterface'.
%% Until then, the virtual interface is in the `Confirming' state and is
%% not available to handle traffic.
-spec allocate_private_virtual_interface(aws_client:aws_client(), allocate_private_virtual_interface_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, allocate_private_virtual_interface_errors(), tuple()}.
allocate_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_private_virtual_interface(Client, Input, []).

-spec allocate_private_virtual_interface(aws_client:aws_client(), allocate_private_virtual_interface_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, allocate_private_virtual_interface_errors(), tuple()}.
allocate_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePrivateVirtualInterface">>, Input, Options).

%% @doc Provisions a public virtual interface to be owned by the specified
%% Amazon Web Services account.
%%
%% The owner of a connection calls this function to provision a public
%% virtual interface to be owned by the specified Amazon Web Services
%% account.
%%
%% Virtual interfaces created using this function must be confirmed by the
%% owner using `ConfirmPublicVirtualInterface'.
%% Until this step has been completed, the virtual interface is in the
%% `confirming' state and is not available to handle traffic.
%%
%% When creating an IPv6 public virtual interface, omit the Amazon address
%% and customer address. IPv6 addresses are automatically assigned from
%% the Amazon pool of IPv6 addresses; you cannot specify custom IPv6
%% addresses.
-spec allocate_public_virtual_interface(aws_client:aws_client(), allocate_public_virtual_interface_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, allocate_public_virtual_interface_errors(), tuple()}.
allocate_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_public_virtual_interface(Client, Input, []).

-spec allocate_public_virtual_interface(aws_client:aws_client(), allocate_public_virtual_interface_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, allocate_public_virtual_interface_errors(), tuple()}.
allocate_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePublicVirtualInterface">>, Input, Options).

%% @doc Provisions a transit virtual interface to be owned by the specified
%% Amazon Web Services account.
%%
%% Use this type of interface to connect a transit gateway to your Direct
%% Connect gateway.
%%
%% The owner of a connection provisions a transit virtual interface to be
%% owned by the specified Amazon Web Services account.
%%
%% After you create a transit virtual interface, it must be confirmed by the
%% owner using `ConfirmTransitVirtualInterface'. Until this step has been
%% completed, the transit virtual interface is in the `requested' state
%% and is not available to handle traffic.
-spec allocate_transit_virtual_interface(aws_client:aws_client(), allocate_transit_virtual_interface_request()) ->
    {ok, allocate_transit_virtual_interface_result(), tuple()} |
    {error, any()} |
    {error, allocate_transit_virtual_interface_errors(), tuple()}.
allocate_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_transit_virtual_interface(Client, Input, []).

-spec allocate_transit_virtual_interface(aws_client:aws_client(), allocate_transit_virtual_interface_request(), proplists:proplist()) ->
    {ok, allocate_transit_virtual_interface_result(), tuple()} |
    {error, any()} |
    {error, allocate_transit_virtual_interface_errors(), tuple()}.
allocate_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateTransitVirtualInterface">>, Input, Options).

%% @doc Associates an existing connection with a link aggregation group
%% (LAG).
%%
%% The connection
%% is interrupted and re-established as a member of the LAG (connectivity to
%% Amazon Web Services is
%% interrupted). The connection must be hosted on the same Direct Connect
%% endpoint as the LAG, and its
%% bandwidth must match the bandwidth for the LAG. You can re-associate a
%% connection that's
%% currently associated with a different LAG; however, if removing the
%% connection would cause
%% the original LAG to fall below its setting for minimum number of
%% operational connections,
%% the request fails.
%%
%% Any virtual interfaces that are directly associated with the connection
%% are
%% automatically re-associated with the LAG. If the connection was originally
%% associated
%% with a different LAG, the virtual interfaces remain associated with the
%% original
%% LAG.
%%
%% For interconnects, any hosted connections are automatically re-associated
%% with the
%% LAG. If the interconnect was originally associated with a different LAG,
%% the hosted
%% connections remain associated with the original LAG.
-spec associate_connection_with_lag(aws_client:aws_client(), associate_connection_with_lag_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, associate_connection_with_lag_errors(), tuple()}.
associate_connection_with_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_connection_with_lag(Client, Input, []).

-spec associate_connection_with_lag(aws_client:aws_client(), associate_connection_with_lag_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, associate_connection_with_lag_errors(), tuple()}.
associate_connection_with_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConnectionWithLag">>, Input, Options).

%% @doc Associates a hosted connection and its virtual interfaces with a link
%% aggregation
%% group (LAG) or interconnect.
%%
%% If the target interconnect or LAG has an existing hosted
%% connection with a conflicting VLAN number or IP address, the operation
%% fails. This
%% action temporarily interrupts the hosted connection's connectivity to
%% Amazon Web Services
%% as it is being migrated.
%%
%% Intended for use by Direct Connect Partners only.
-spec associate_hosted_connection(aws_client:aws_client(), associate_hosted_connection_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, associate_hosted_connection_errors(), tuple()}.
associate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_hosted_connection(Client, Input, []).

-spec associate_hosted_connection(aws_client:aws_client(), associate_hosted_connection_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, associate_hosted_connection_errors(), tuple()}.
associate_hosted_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateHostedConnection">>, Input, Options).

%% @doc Associates a MAC Security (MACsec) Connection Key Name (CKN)/
%% Connectivity Association Key (CAK) pair with an Direct Connect dedicated
%% connection.
%%
%% You must supply either the `secretARN,' or the CKN/CAK (`ckn' and
%% `cak') pair in the request.
%%
%% For information about MAC Security (MACsec) key considerations, see MACsec
%% pre-shared CKN/CAK key considerations :
%% https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration
%% in the Direct Connect User Guide.
-spec associate_mac_sec_key(aws_client:aws_client(), associate_mac_sec_key_request()) ->
    {ok, associate_mac_sec_key_response(), tuple()} |
    {error, any()} |
    {error, associate_mac_sec_key_errors(), tuple()}.
associate_mac_sec_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_mac_sec_key(Client, Input, []).

-spec associate_mac_sec_key(aws_client:aws_client(), associate_mac_sec_key_request(), proplists:proplist()) ->
    {ok, associate_mac_sec_key_response(), tuple()} |
    {error, any()} |
    {error, associate_mac_sec_key_errors(), tuple()}.
associate_mac_sec_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMacSecKey">>, Input, Options).

%% @doc Associates a virtual interface with a specified link aggregation
%% group (LAG) or
%% connection.
%%
%% Connectivity to Amazon Web Services is temporarily interrupted as the
%% virtual interface is
%% being migrated. If the target connection or LAG has an associated virtual
%% interface with
%% a conflicting VLAN number or a conflicting IP address, the operation
%% fails.
%%
%% Virtual interfaces associated with a hosted connection cannot be
%% associated with a
%% LAG; hosted connections must be migrated along with their virtual
%% interfaces using `AssociateHostedConnection'.
%%
%% To reassociate a virtual interface to a new connection or LAG, the
%% requester
%% must own either the virtual interface itself or the connection to which
%% the virtual
%% interface is currently associated. Additionally, the requester must own
%% the connection
%% or LAG for the association.
-spec associate_virtual_interface(aws_client:aws_client(), associate_virtual_interface_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, associate_virtual_interface_errors(), tuple()}.
associate_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_virtual_interface(Client, Input, []).

-spec associate_virtual_interface(aws_client:aws_client(), associate_virtual_interface_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, associate_virtual_interface_errors(), tuple()}.
associate_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVirtualInterface">>, Input, Options).

%% @doc Confirms the creation of the specified hosted connection on an
%% interconnect.
%%
%% Upon creation, the hosted connection is initially in the `Ordering'
%% state, and
%% remains in this state until the owner confirms creation of the hosted
%% connection.
-spec confirm_connection(aws_client:aws_client(), confirm_connection_request()) ->
    {ok, confirm_connection_response(), tuple()} |
    {error, any()} |
    {error, confirm_connection_errors(), tuple()}.
confirm_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_connection(Client, Input, []).

-spec confirm_connection(aws_client:aws_client(), confirm_connection_request(), proplists:proplist()) ->
    {ok, confirm_connection_response(), tuple()} |
    {error, any()} |
    {error, confirm_connection_errors(), tuple()}.
confirm_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmConnection">>, Input, Options).

%% @doc
%% The confirmation of the terms of agreement when creating the
%% connection/link aggregation group (LAG).
-spec confirm_customer_agreement(aws_client:aws_client(), confirm_customer_agreement_request()) ->
    {ok, confirm_customer_agreement_response(), tuple()} |
    {error, any()} |
    {error, confirm_customer_agreement_errors(), tuple()}.
confirm_customer_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_customer_agreement(Client, Input, []).

-spec confirm_customer_agreement(aws_client:aws_client(), confirm_customer_agreement_request(), proplists:proplist()) ->
    {ok, confirm_customer_agreement_response(), tuple()} |
    {error, any()} |
    {error, confirm_customer_agreement_errors(), tuple()}.
confirm_customer_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmCustomerAgreement">>, Input, Options).

%% @doc Accepts ownership of a private virtual interface created by another
%% Amazon Web Services account.
%%
%% After the virtual interface owner makes this call, the virtual interface
%% is
%% created and attached to the specified virtual private gateway or Direct
%% Connect gateway, and is
%% made available to handle traffic.
-spec confirm_private_virtual_interface(aws_client:aws_client(), confirm_private_virtual_interface_request()) ->
    {ok, confirm_private_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_private_virtual_interface_errors(), tuple()}.
confirm_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_private_virtual_interface(Client, Input, []).

-spec confirm_private_virtual_interface(aws_client:aws_client(), confirm_private_virtual_interface_request(), proplists:proplist()) ->
    {ok, confirm_private_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_private_virtual_interface_errors(), tuple()}.
confirm_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPrivateVirtualInterface">>, Input, Options).

%% @doc Accepts ownership of a public virtual interface created by another
%% Amazon Web Services account.
%%
%% After the virtual interface owner makes this call, the specified virtual
%% interface is
%% created and made available to handle traffic.
-spec confirm_public_virtual_interface(aws_client:aws_client(), confirm_public_virtual_interface_request()) ->
    {ok, confirm_public_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_public_virtual_interface_errors(), tuple()}.
confirm_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_public_virtual_interface(Client, Input, []).

-spec confirm_public_virtual_interface(aws_client:aws_client(), confirm_public_virtual_interface_request(), proplists:proplist()) ->
    {ok, confirm_public_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_public_virtual_interface_errors(), tuple()}.
confirm_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPublicVirtualInterface">>, Input, Options).

%% @doc Accepts ownership of a transit virtual interface created by another
%% Amazon Web Services account.
%%
%% After the owner of the transit virtual interface makes this call, the
%% specified transit virtual interface is created and made available to
%% handle traffic.
-spec confirm_transit_virtual_interface(aws_client:aws_client(), confirm_transit_virtual_interface_request()) ->
    {ok, confirm_transit_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_transit_virtual_interface_errors(), tuple()}.
confirm_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_transit_virtual_interface(Client, Input, []).

-spec confirm_transit_virtual_interface(aws_client:aws_client(), confirm_transit_virtual_interface_request(), proplists:proplist()) ->
    {ok, confirm_transit_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, confirm_transit_virtual_interface_errors(), tuple()}.
confirm_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmTransitVirtualInterface">>, Input, Options).

%% @doc Creates a BGP peer on the specified virtual interface.
%%
%% You must create a BGP peer for the corresponding address family
%% (IPv4/IPv6) in order to
%% access Amazon Web Services resources that also use that address family.
%%
%% If logical redundancy is not supported by the connection, interconnect, or
%% LAG, the BGP peer cannot
%% be in the same address family as an existing BGP peer on the virtual
%% interface.
%%
%% When creating a IPv6 BGP peer, omit the Amazon address and customer
%% address. IPv6 addresses are automatically assigned from
%% the Amazon pool of IPv6 addresses; you cannot specify custom IPv6
%% addresses.
%%
%% If you let Amazon Web Services auto-assign IPv4 addresses, a /30 CIDR will
%% be allocated
%% from 169.254.0.0/16. Amazon Web Services does not recommend this option if
%% you intend to use
%% the customer router peer IP address as the source and destination for
%% traffic. Instead you
%% should use RFC 1918 or other addressing, and specify the address yourself.
%% For more
%% information about RFC 1918 see
%% Address Allocation for Private Internets:
%% https://datatracker.ietf.org/doc/html/rfc1918.
%%
%% For a public virtual interface, the Autonomous System Number (ASN) must be
%% private or already on the allow list for the virtual interface.
-spec create_bgp_peer(aws_client:aws_client(), create_bgp_peer_request()) ->
    {ok, create_bgp_peer_response(), tuple()} |
    {error, any()} |
    {error, create_bgp_peer_errors(), tuple()}.
create_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bgp_peer(Client, Input, []).

-spec create_bgp_peer(aws_client:aws_client(), create_bgp_peer_request(), proplists:proplist()) ->
    {ok, create_bgp_peer_response(), tuple()} |
    {error, any()} |
    {error, create_bgp_peer_errors(), tuple()}.
create_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBGPPeer">>, Input, Options).

%% @doc Creates a connection between a customer network and a specific Direct
%% Connect location.
%%
%% A connection links your internal network to an Direct Connect location
%% over a standard Ethernet fiber-optic
%% cable. One end of the cable is connected to your router, the other to an
%% Direct Connect router.
%%
%% To find the locations for your Region, use `DescribeLocations'.
%%
%% You can automatically add the new connection to a link aggregation group
%% (LAG) by
%% specifying a LAG ID in the request. This ensures that the new connection
%% is allocated on the
%% same Direct Connect endpoint that hosts the specified LAG. If there are no
%% available ports on the endpoint,
%% the request fails and no connection is created.
-spec create_connection(aws_client:aws_client(), create_connection_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a Direct Connect gateway, which is an intermediate object
%% that enables you to connect a set
%% of virtual interfaces and virtual private gateways.
%%
%% A Direct Connect gateway is global and visible in any
%% Amazon Web Services Region after it is created. The virtual interfaces and
%% virtual private gateways that
%% are connected through a Direct Connect gateway can be in different Amazon
%% Web Services Regions. This enables you to
%% connect to a VPC in any Region, regardless of the Region in which the
%% virtual interfaces
%% are located, and pass traffic between them.
-spec create_direct_connect_gateway(aws_client:aws_client(), create_direct_connect_gateway_request()) ->
    {ok, create_direct_connect_gateway_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_errors(), tuple()}.
create_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway(Client, Input, []).

-spec create_direct_connect_gateway(aws_client:aws_client(), create_direct_connect_gateway_request(), proplists:proplist()) ->
    {ok, create_direct_connect_gateway_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_errors(), tuple()}.
create_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGateway">>, Input, Options).

%% @doc Creates an association between a Direct Connect gateway and a virtual
%% private gateway.
%%
%% The virtual
%% private gateway must be attached to a VPC and must not be associated with
%% another Direct Connect gateway.
-spec create_direct_connect_gateway_association(aws_client:aws_client(), create_direct_connect_gateway_association_request()) ->
    {ok, create_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_association_errors(), tuple()}.
create_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway_association(Client, Input, []).

-spec create_direct_connect_gateway_association(aws_client:aws_client(), create_direct_connect_gateway_association_request(), proplists:proplist()) ->
    {ok, create_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_association_errors(), tuple()}.
create_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Creates a proposal to associate the specified virtual private gateway
%% or transit gateway with the specified Direct Connect gateway.
%%
%% You can associate a Direct Connect gateway and virtual private gateway or
%% transit gateway that is owned by any Amazon Web Services account.
-spec create_direct_connect_gateway_association_proposal(aws_client:aws_client(), create_direct_connect_gateway_association_proposal_request()) ->
    {ok, create_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_association_proposal_errors(), tuple()}.
create_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway_association_proposal(Client, Input, []).

-spec create_direct_connect_gateway_association_proposal(aws_client:aws_client(), create_direct_connect_gateway_association_proposal_request(), proplists:proplist()) ->
    {ok, create_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_association_proposal_errors(), tuple()}.
create_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc Creates an interconnect between an Direct Connect Partner's
%% network and a specific Direct Connect location.
%%
%% An interconnect is a connection that is capable of hosting other
%% connections. The
%% Direct Connect Partner can use an interconnect to provide Direct Connect
%% hosted
%% connections to customers through their own network services. Like a
%% standard connection, an
%% interconnect links the partner's network to an Direct Connect location
%% over a standard Ethernet
%% fiber-optic cable. One end is connected to the partner's router, the
%% other to an Direct Connect
%% router.
%%
%% You can automatically add the new interconnect to a link aggregation group
%% (LAG) by
%% specifying a LAG ID in the request. This ensures that the new interconnect
%% is allocated on
%% the same Direct Connect endpoint that hosts the specified LAG. If there
%% are no available ports on the
%% endpoint, the request fails and no interconnect is created.
%%
%% For each end customer, the Direct Connect Partner provisions a connection
%% on their interconnect by calling `AllocateHostedConnection'.
%% The end customer can then connect to Amazon Web Services resources by
%% creating a virtual interface on their connection, using the VLAN assigned
%% to them by the Direct Connect Partner.
%%
%% Intended for use by Direct Connect Partners only.
-spec create_interconnect(aws_client:aws_client(), create_interconnect_request()) ->
    {ok, interconnect(), tuple()} |
    {error, any()} |
    {error, create_interconnect_errors(), tuple()}.
create_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_interconnect(Client, Input, []).

-spec create_interconnect(aws_client:aws_client(), create_interconnect_request(), proplists:proplist()) ->
    {ok, interconnect(), tuple()} |
    {error, any()} |
    {error, create_interconnect_errors(), tuple()}.
create_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInterconnect">>, Input, Options).

%% @doc Creates a link aggregation group (LAG) with the specified number of
%% bundled
%% physical dedicated connections between the customer network and a specific
%% Direct Connect location.
%%
%% A LAG is a logical interface that uses the Link Aggregation Control
%% Protocol
%% (LACP) to aggregate multiple interfaces, enabling you to treat them as a
%% single
%% interface.
%%
%% All connections in a LAG must use the same bandwidth (either 1Gbps,
%% 10Gbps, 100Gbps,
%% or 400Gbps) and must terminate at the same Direct Connect endpoint.
%%
%% You can have up to 10 dedicated connections per location. Regardless of
%% this limit, if you
%% request more connections for the LAG than Direct Connect can allocate on a
%% single endpoint, no LAG is
%% created..
%%
%% You can specify an existing physical dedicated connection or interconnect
%% to include in
%% the LAG (which counts towards the total number of connections). Doing so
%% interrupts the
%% current physical dedicated connection, and re-establishes them as a member
%% of the LAG. The LAG
%% will be created on the same Direct Connect endpoint to which the dedicated
%% connection terminates. Any
%% virtual interfaces associated with the dedicated connection are
%% automatically disassociated
%% and re-associated with the LAG. The connection ID does not change.
%%
%% If the Amazon Web Services account used to create a LAG is a registered
%% Direct Connect Partner, the LAG is
%% automatically enabled to host sub-connections. For a LAG owned by a
%% partner, any associated virtual
%% interfaces cannot be directly configured.
-spec create_lag(aws_client:aws_client(), create_lag_request()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, create_lag_errors(), tuple()}.
create_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lag(Client, Input, []).

-spec create_lag(aws_client:aws_client(), create_lag_request(), proplists:proplist()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, create_lag_errors(), tuple()}.
create_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLag">>, Input, Options).

%% @doc Creates a private virtual interface.
%%
%% A virtual interface is the VLAN that transports Direct Connect traffic.
%% A private virtual interface can be connected to either a Direct Connect
%% gateway or a Virtual Private Gateway (VGW).
%% Connecting the private virtual interface to a Direct Connect gateway
%% enables the possibility for connecting to multiple
%% VPCs, including VPCs in different Amazon Web Services Regions. Connecting
%% the private virtual interface
%% to a VGW only provides access to a single VPC within the same Region.
%%
%% Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an
%% update to
%% the underlying physical connection if it wasn't updated to support
%% jumbo frames. Updating
%% the connection disrupts network connectivity for all virtual interfaces
%% associated with
%% the connection for up to 30 seconds. To check whether your connection
%% supports jumbo
%% frames, call `DescribeConnections'. To check whether your virtual
%% interface supports jumbo frames, call `DescribeVirtualInterfaces'.
-spec create_private_virtual_interface(aws_client:aws_client(), create_private_virtual_interface_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, create_private_virtual_interface_errors(), tuple()}.
create_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_virtual_interface(Client, Input, []).

-spec create_private_virtual_interface(aws_client:aws_client(), create_private_virtual_interface_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, create_private_virtual_interface_errors(), tuple()}.
create_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateVirtualInterface">>, Input, Options).

%% @doc Creates a public virtual interface.
%%
%% A virtual interface is the VLAN that transports Direct Connect traffic.
%% A public virtual interface supports sending traffic to public services of
%% Amazon Web Services such as Amazon S3.
%%
%% When creating an IPv6 public virtual interface (`addressFamily' is
%% `ipv6'), leave the `customer'
%% and `amazon' address fields blank to use auto-assigned IPv6 space.
%% Custom IPv6 addresses are not supported.
-spec create_public_virtual_interface(aws_client:aws_client(), create_public_virtual_interface_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, create_public_virtual_interface_errors(), tuple()}.
create_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_virtual_interface(Client, Input, []).

-spec create_public_virtual_interface(aws_client:aws_client(), create_public_virtual_interface_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, create_public_virtual_interface_errors(), tuple()}.
create_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicVirtualInterface">>, Input, Options).

%% @doc Creates a transit virtual interface.
%%
%% A transit virtual interface should be used to access one or more transit
%% gateways associated with Direct Connect gateways. A transit virtual
%% interface enables the connection of multiple VPCs attached to a transit
%% gateway to a Direct Connect gateway.
%%
%% If you associate your transit gateway with one or more Direct Connect
%% gateways, the Autonomous System Number (ASN) used by the transit gateway
%% and the Direct Connect gateway must be different. For example, if you use
%% the default ASN 64512 for both your the transit gateway and Direct Connect
%% gateway, the association request fails.
%%
%% A jumbo MTU value must be either 1500 or 8500. No other values will be
%% accepted. Setting
%% the MTU of a virtual interface to 8500 (jumbo frames) can cause an update
%% to the underlying
%% physical connection if it wasn't updated to support jumbo frames.
%% Updating the connection
%% disrupts network connectivity for all virtual interfaces associated with
%% the connection for up
%% to 30 seconds. To check whether your connection supports jumbo frames,
%% call `DescribeConnections'. To check whether your virtual interface
%% supports jumbo
%% frames, call `DescribeVirtualInterfaces'.
-spec create_transit_virtual_interface(aws_client:aws_client(), create_transit_virtual_interface_request()) ->
    {ok, create_transit_virtual_interface_result(), tuple()} |
    {error, any()} |
    {error, create_transit_virtual_interface_errors(), tuple()}.
create_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_virtual_interface(Client, Input, []).

-spec create_transit_virtual_interface(aws_client:aws_client(), create_transit_virtual_interface_request(), proplists:proplist()) ->
    {ok, create_transit_virtual_interface_result(), tuple()} |
    {error, any()} |
    {error, create_transit_virtual_interface_errors(), tuple()}.
create_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitVirtualInterface">>, Input, Options).

%% @doc Deletes the specified BGP peer on the specified virtual interface
%% with the specified customer address and ASN.
%%
%% You cannot delete the last BGP peer from a virtual interface.
-spec delete_bgp_peer(aws_client:aws_client(), delete_bgp_peer_request()) ->
    {ok, delete_bgp_peer_response(), tuple()} |
    {error, any()} |
    {error, delete_bgp_peer_errors(), tuple()}.
delete_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bgp_peer(Client, Input, []).

-spec delete_bgp_peer(aws_client:aws_client(), delete_bgp_peer_request(), proplists:proplist()) ->
    {ok, delete_bgp_peer_response(), tuple()} |
    {error, any()} |
    {error, delete_bgp_peer_errors(), tuple()}.
delete_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBGPPeer">>, Input, Options).

%% @doc Deletes the specified connection.
%%
%% Deleting a connection only stops the Direct Connect port hour and data
%% transfer charges.
%% If you are partnering with any third parties to connect with the Direct
%% Connect location,
%% you must cancel your service with them separately.
-spec delete_connection(aws_client:aws_client(), delete_connection_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified Direct Connect gateway.
%%
%% You must first delete all virtual interfaces that are
%% attached to the Direct Connect gateway and disassociate all virtual
%% private gateways associated
%% with the Direct Connect gateway.
-spec delete_direct_connect_gateway(aws_client:aws_client(), delete_direct_connect_gateway_request()) ->
    {ok, delete_direct_connect_gateway_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_errors(), tuple()}.
delete_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway(Client, Input, []).

-spec delete_direct_connect_gateway(aws_client:aws_client(), delete_direct_connect_gateway_request(), proplists:proplist()) ->
    {ok, delete_direct_connect_gateway_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_errors(), tuple()}.
delete_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGateway">>, Input, Options).

%% @doc Deletes the association between the specified Direct Connect gateway
%% and virtual private gateway.
%%
%% We recommend that you specify the `associationID' to delete the
%% association. Alternatively, if you own virtual gateway and a Direct
%% Connect gateway association, you can specify the `virtualGatewayId'
%% and `directConnectGatewayId' to delete an association.
-spec delete_direct_connect_gateway_association(aws_client:aws_client(), delete_direct_connect_gateway_association_request()) ->
    {ok, delete_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_association_errors(), tuple()}.
delete_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway_association(Client, Input, []).

-spec delete_direct_connect_gateway_association(aws_client:aws_client(), delete_direct_connect_gateway_association_request(), proplists:proplist()) ->
    {ok, delete_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_association_errors(), tuple()}.
delete_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Deletes the association proposal request between the specified Direct
%% Connect gateway and virtual private gateway or transit gateway.
-spec delete_direct_connect_gateway_association_proposal(aws_client:aws_client(), delete_direct_connect_gateway_association_proposal_request()) ->
    {ok, delete_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_association_proposal_errors(), tuple()}.
delete_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway_association_proposal(Client, Input, []).

-spec delete_direct_connect_gateway_association_proposal(aws_client:aws_client(), delete_direct_connect_gateway_association_proposal_request(), proplists:proplist()) ->
    {ok, delete_direct_connect_gateway_association_proposal_result(), tuple()} |
    {error, any()} |
    {error, delete_direct_connect_gateway_association_proposal_errors(), tuple()}.
delete_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc Deletes the specified interconnect.
%%
%% Intended for use
%% by Direct Connect Partners only.
-spec delete_interconnect(aws_client:aws_client(), delete_interconnect_request()) ->
    {ok, delete_interconnect_response(), tuple()} |
    {error, any()} |
    {error, delete_interconnect_errors(), tuple()}.
delete_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_interconnect(Client, Input, []).

-spec delete_interconnect(aws_client:aws_client(), delete_interconnect_request(), proplists:proplist()) ->
    {ok, delete_interconnect_response(), tuple()} |
    {error, any()} |
    {error, delete_interconnect_errors(), tuple()}.
delete_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInterconnect">>, Input, Options).

%% @doc Deletes the specified link aggregation group (LAG).
%%
%% You cannot delete a LAG if it has active
%% virtual interfaces or hosted connections.
-spec delete_lag(aws_client:aws_client(), delete_lag_request()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, delete_lag_errors(), tuple()}.
delete_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lag(Client, Input, []).

-spec delete_lag(aws_client:aws_client(), delete_lag_request(), proplists:proplist()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, delete_lag_errors(), tuple()}.
delete_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLag">>, Input, Options).

%% @doc Deletes a virtual interface.
-spec delete_virtual_interface(aws_client:aws_client(), delete_virtual_interface_request()) ->
    {ok, delete_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, delete_virtual_interface_errors(), tuple()}.
delete_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_interface(Client, Input, []).

-spec delete_virtual_interface(aws_client:aws_client(), delete_virtual_interface_request(), proplists:proplist()) ->
    {ok, delete_virtual_interface_response(), tuple()} |
    {error, any()} |
    {error, delete_virtual_interface_errors(), tuple()}.
delete_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualInterface">>, Input, Options).

%% @doc
%% Deprecated.
%%
%% Use `DescribeLoa' instead.
%%
%% Gets the LOA-CFA for a connection.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that your APN partner or
%% service provider uses when establishing your cross connect to Amazon Web
%% Services at the colocation facility. For more information,
%% see Requesting Cross Connects
%% at Direct Connect Locations:
%% https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
%% in the Direct Connect User Guide.
-spec describe_connection_loa(aws_client:aws_client(), describe_connection_loa_request()) ->
    {ok, describe_connection_loa_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_loa_errors(), tuple()}.
describe_connection_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_loa(Client, Input, []).

-spec describe_connection_loa(aws_client:aws_client(), describe_connection_loa_request(), proplists:proplist()) ->
    {ok, describe_connection_loa_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_loa_errors(), tuple()}.
describe_connection_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionLoa">>, Input, Options).

%% @doc Displays the specified connection or all connections in this Region.
-spec describe_connections(aws_client:aws_client(), describe_connections_request()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_connections_errors(), tuple()}.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).

-spec describe_connections(aws_client:aws_client(), describe_connections_request(), proplists:proplist()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_connections_errors(), tuple()}.
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc
%% Deprecated.
%%
%% Use `DescribeHostedConnections' instead.
%%
%% Lists the connections that have been provisioned on the specified
%% interconnect.
%%
%% Intended for use by Direct Connect Partners only.
-spec describe_connections_on_interconnect(aws_client:aws_client(), describe_connections_on_interconnect_request()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_connections_on_interconnect_errors(), tuple()}.
describe_connections_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections_on_interconnect(Client, Input, []).

-spec describe_connections_on_interconnect(aws_client:aws_client(), describe_connections_on_interconnect_request(), proplists:proplist()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_connections_on_interconnect_errors(), tuple()}.
describe_connections_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionsOnInterconnect">>, Input, Options).

%% @doc Get and view a list of customer agreements, along with their signed
%% status and whether the customer is an NNIPartner, NNIPartnerV2, or a
%% nonPartner.
-spec describe_customer_metadata(aws_client:aws_client(), #{}) ->
    {ok, describe_customer_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_customer_metadata_errors(), tuple()}.
describe_customer_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_customer_metadata(Client, Input, []).

-spec describe_customer_metadata(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_customer_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_customer_metadata_errors(), tuple()}.
describe_customer_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomerMetadata">>, Input, Options).

%% @doc Describes one or more association proposals for connection between a
%% virtual private gateway or transit gateway and a Direct Connect gateway.
-spec describe_direct_connect_gateway_association_proposals(aws_client:aws_client(), describe_direct_connect_gateway_association_proposals_request()) ->
    {ok, describe_direct_connect_gateway_association_proposals_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_association_proposals_errors(), tuple()}.
describe_direct_connect_gateway_association_proposals(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_association_proposals(Client, Input, []).

-spec describe_direct_connect_gateway_association_proposals(aws_client:aws_client(), describe_direct_connect_gateway_association_proposals_request(), proplists:proplist()) ->
    {ok, describe_direct_connect_gateway_association_proposals_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_association_proposals_errors(), tuple()}.
describe_direct_connect_gateway_association_proposals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAssociationProposals">>, Input, Options).

%% @doc Lists the associations between your Direct Connect gateways and
%% virtual private gateways and transit gateways.
%%
%% You must specify one of the following:
%%
%% A Direct Connect gateway
%%
%% The response contains all virtual private gateways and transit gateways
%% associated with the Direct Connect gateway.
%%
%% A virtual private gateway
%%
%% The response contains the Direct Connect gateway.
%%
%% A transit gateway
%%
%% The response contains the Direct Connect gateway.
%%
%% A Direct Connect gateway and a virtual private gateway
%%
%% The response contains the association between the Direct Connect gateway
%% and virtual private gateway.
%%
%% A Direct Connect gateway and a transit gateway
%%
%% The response contains the association between the Direct Connect gateway
%% and transit gateway.
%%
%% A Direct Connect gateway and a virtual private gateway
%%
%% The response contains the association between the Direct Connect gateway
%% and virtual private gateway.
%%
%% A Direct Connect gateway association to a Cloud WAN core network
%%
%% The response contains the Cloud WAN core network ID that the Direct
%% Connect gateway is associated to.
-spec describe_direct_connect_gateway_associations(aws_client:aws_client(), describe_direct_connect_gateway_associations_request()) ->
    {ok, describe_direct_connect_gateway_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_associations_errors(), tuple()}.
describe_direct_connect_gateway_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_associations(Client, Input, []).

-spec describe_direct_connect_gateway_associations(aws_client:aws_client(), describe_direct_connect_gateway_associations_request(), proplists:proplist()) ->
    {ok, describe_direct_connect_gateway_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_associations_errors(), tuple()}.
describe_direct_connect_gateway_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAssociations">>, Input, Options).

%% @doc Lists the attachments between your Direct Connect gateways and
%% virtual interfaces.
%%
%% You must specify
%% a Direct Connect gateway, a virtual interface, or both. If you specify a
%% Direct Connect gateway, the response contains
%% all virtual interfaces attached to the Direct Connect gateway. If you
%% specify a virtual interface, the
%% response contains all Direct Connect gateways attached to the virtual
%% interface. If you specify both,
%% the response contains the attachment between the Direct Connect gateway
%% and the virtual interface.
-spec describe_direct_connect_gateway_attachments(aws_client:aws_client(), describe_direct_connect_gateway_attachments_request()) ->
    {ok, describe_direct_connect_gateway_attachments_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_attachments_errors(), tuple()}.
describe_direct_connect_gateway_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_attachments(Client, Input, []).

-spec describe_direct_connect_gateway_attachments(aws_client:aws_client(), describe_direct_connect_gateway_attachments_request(), proplists:proplist()) ->
    {ok, describe_direct_connect_gateway_attachments_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateway_attachments_errors(), tuple()}.
describe_direct_connect_gateway_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAttachments">>, Input, Options).

%% @doc Lists all your Direct Connect gateways or only the specified Direct
%% Connect gateway.
%%
%% Deleted Direct Connect gateways are not returned.
-spec describe_direct_connect_gateways(aws_client:aws_client(), describe_direct_connect_gateways_request()) ->
    {ok, describe_direct_connect_gateways_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateways_errors(), tuple()}.
describe_direct_connect_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateways(Client, Input, []).

-spec describe_direct_connect_gateways(aws_client:aws_client(), describe_direct_connect_gateways_request(), proplists:proplist()) ->
    {ok, describe_direct_connect_gateways_result(), tuple()} |
    {error, any()} |
    {error, describe_direct_connect_gateways_errors(), tuple()}.
describe_direct_connect_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGateways">>, Input, Options).

%% @doc Lists the hosted connections that have been provisioned on the
%% specified
%% interconnect or link aggregation group (LAG).
%%
%% Intended for use by Direct Connect Partners only.
-spec describe_hosted_connections(aws_client:aws_client(), describe_hosted_connections_request()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_hosted_connections_errors(), tuple()}.
describe_hosted_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hosted_connections(Client, Input, []).

-spec describe_hosted_connections(aws_client:aws_client(), describe_hosted_connections_request(), proplists:proplist()) ->
    {ok, connections(), tuple()} |
    {error, any()} |
    {error, describe_hosted_connections_errors(), tuple()}.
describe_hosted_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostedConnections">>, Input, Options).

%% @doc
%% Deprecated.
%%
%% Use `DescribeLoa' instead.
%%
%% Gets the LOA-CFA for the specified interconnect.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing your cross connect to Amazon Web
%% Services at the colocation facility.
%% For more information, see Requesting Cross Connects at Direct Connect
%% Locations:
%% https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
%% in the Direct Connect User Guide.
-spec describe_interconnect_loa(aws_client:aws_client(), describe_interconnect_loa_request()) ->
    {ok, describe_interconnect_loa_response(), tuple()} |
    {error, any()} |
    {error, describe_interconnect_loa_errors(), tuple()}.
describe_interconnect_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnect_loa(Client, Input, []).

-spec describe_interconnect_loa(aws_client:aws_client(), describe_interconnect_loa_request(), proplists:proplist()) ->
    {ok, describe_interconnect_loa_response(), tuple()} |
    {error, any()} |
    {error, describe_interconnect_loa_errors(), tuple()}.
describe_interconnect_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnectLoa">>, Input, Options).

%% @doc Lists the interconnects owned by the Amazon Web Services account or
%% only the specified interconnect.
-spec describe_interconnects(aws_client:aws_client(), describe_interconnects_request()) ->
    {ok, interconnects(), tuple()} |
    {error, any()} |
    {error, describe_interconnects_errors(), tuple()}.
describe_interconnects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnects(Client, Input, []).

-spec describe_interconnects(aws_client:aws_client(), describe_interconnects_request(), proplists:proplist()) ->
    {ok, interconnects(), tuple()} |
    {error, any()} |
    {error, describe_interconnects_errors(), tuple()}.
describe_interconnects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnects">>, Input, Options).

%% @doc Describes all your link aggregation groups (LAG) or the specified
%% LAG.
-spec describe_lags(aws_client:aws_client(), describe_lags_request()) ->
    {ok, lags(), tuple()} |
    {error, any()} |
    {error, describe_lags_errors(), tuple()}.
describe_lags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lags(Client, Input, []).

-spec describe_lags(aws_client:aws_client(), describe_lags_request(), proplists:proplist()) ->
    {ok, lags(), tuple()} |
    {error, any()} |
    {error, describe_lags_errors(), tuple()}.
describe_lags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLags">>, Input, Options).

%% @doc Gets the LOA-CFA for a connection, interconnect, or link aggregation
%% group (LAG).
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing
%% your cross connect to Amazon Web Services at the colocation facility. For
%% more information, see Requesting Cross Connects at Direct Connect
%% Locations:
%% https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
%% in the Direct Connect User Guide.
-spec describe_loa(aws_client:aws_client(), describe_loa_request()) ->
    {ok, loa(), tuple()} |
    {error, any()} |
    {error, describe_loa_errors(), tuple()}.
describe_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_loa(Client, Input, []).

-spec describe_loa(aws_client:aws_client(), describe_loa_request(), proplists:proplist()) ->
    {ok, loa(), tuple()} |
    {error, any()} |
    {error, describe_loa_errors(), tuple()}.
describe_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoa">>, Input, Options).

%% @doc Lists the Direct Connect locations in the current Amazon Web Services
%% Region.
%%
%% These are the locations that can be selected when calling
%% `CreateConnection' or `CreateInterconnect'.
-spec describe_locations(aws_client:aws_client(), #{}) ->
    {ok, locations(), tuple()} |
    {error, any()} |
    {error, describe_locations_errors(), tuple()}.
describe_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_locations(Client, Input, []).

-spec describe_locations(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, locations(), tuple()} |
    {error, any()} |
    {error, describe_locations_errors(), tuple()}.
describe_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocations">>, Input, Options).

%% @doc
%% Details about the router.
-spec describe_router_configuration(aws_client:aws_client(), describe_router_configuration_request()) ->
    {ok, describe_router_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_router_configuration_errors(), tuple()}.
describe_router_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_router_configuration(Client, Input, []).

-spec describe_router_configuration(aws_client:aws_client(), describe_router_configuration_request(), proplists:proplist()) ->
    {ok, describe_router_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_router_configuration_errors(), tuple()}.
describe_router_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRouterConfiguration">>, Input, Options).

%% @doc Describes the tags associated with the specified Direct Connect
%% resources.
-spec describe_tags(aws_client:aws_client(), describe_tags_request()) ->
    {ok, describe_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_request(), proplists:proplist()) ->
    {ok, describe_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc
%% Deprecated.
%%
%% Use `DescribeVpnGateways' instead. See DescribeVPNGateways:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnGateways.html
%% in the Amazon Elastic Compute Cloud API Reference.
%%
%% Lists the virtual private gateways owned by the Amazon Web Services
%% account.
%%
%% You can create one or more Direct Connect private virtual interfaces
%% linked to a virtual private gateway.
-spec describe_virtual_gateways(aws_client:aws_client(), #{}) ->
    {ok, virtual_gateways(), tuple()} |
    {error, any()} |
    {error, describe_virtual_gateways_errors(), tuple()}.
describe_virtual_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_gateways(Client, Input, []).

-spec describe_virtual_gateways(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, virtual_gateways(), tuple()} |
    {error, any()} |
    {error, describe_virtual_gateways_errors(), tuple()}.
describe_virtual_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualGateways">>, Input, Options).

%% @doc Displays all virtual interfaces for an Amazon Web Services account.
%%
%% Virtual interfaces deleted fewer
%% than 15 minutes before you make the request are also returned. If you
%% specify a
%% connection ID, only the virtual interfaces associated with the connection
%% are returned.
%% If you specify a virtual interface ID, then only a single virtual
%% interface is returned.
%%
%% A virtual interface (VLAN) transmits the traffic between the Direct
%% Connect location and the customer network.
-spec describe_virtual_interfaces(aws_client:aws_client(), describe_virtual_interfaces_request()) ->
    {ok, virtual_interfaces(), tuple()} |
    {error, any()} |
    {error, describe_virtual_interfaces_errors(), tuple()}.
describe_virtual_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_interfaces(Client, Input, []).

-spec describe_virtual_interfaces(aws_client:aws_client(), describe_virtual_interfaces_request(), proplists:proplist()) ->
    {ok, virtual_interfaces(), tuple()} |
    {error, any()} |
    {error, describe_virtual_interfaces_errors(), tuple()}.
describe_virtual_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualInterfaces">>, Input, Options).

%% @doc Disassociates a connection from a link aggregation group (LAG).
%%
%% The connection is
%% interrupted and re-established as a standalone connection (the connection
%% is not
%% deleted; to delete the connection, use the `DeleteConnection'
%% request).
%% If the LAG has associated virtual interfaces or hosted connections, they
%% remain
%% associated with the LAG. A disassociated connection owned by an Direct
%% Connect Partner is
%% automatically converted to an interconnect.
%%
%% If disassociating the connection would cause the LAG to fall below its
%% setting for
%% minimum number of operational connections, the request fails, except when
%% it's the last
%% member of the LAG. If all connections are disassociated, the LAG continues
%% to exist as
%% an empty LAG with no physical connections.
-spec disassociate_connection_from_lag(aws_client:aws_client(), disassociate_connection_from_lag_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, disassociate_connection_from_lag_errors(), tuple()}.
disassociate_connection_from_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connection_from_lag(Client, Input, []).

-spec disassociate_connection_from_lag(aws_client:aws_client(), disassociate_connection_from_lag_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, disassociate_connection_from_lag_errors(), tuple()}.
disassociate_connection_from_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnectionFromLag">>, Input, Options).

%% @doc Removes the association between a MAC Security (MACsec) security key
%% and an Direct Connect dedicated connection.
-spec disassociate_mac_sec_key(aws_client:aws_client(), disassociate_mac_sec_key_request()) ->
    {ok, disassociate_mac_sec_key_response(), tuple()} |
    {error, any()} |
    {error, disassociate_mac_sec_key_errors(), tuple()}.
disassociate_mac_sec_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_mac_sec_key(Client, Input, []).

-spec disassociate_mac_sec_key(aws_client:aws_client(), disassociate_mac_sec_key_request(), proplists:proplist()) ->
    {ok, disassociate_mac_sec_key_response(), tuple()} |
    {error, any()} |
    {error, disassociate_mac_sec_key_errors(), tuple()}.
disassociate_mac_sec_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMacSecKey">>, Input, Options).

%% @doc Lists the virtual interface failover test history.
-spec list_virtual_interface_test_history(aws_client:aws_client(), list_virtual_interface_test_history_request()) ->
    {ok, list_virtual_interface_test_history_response(), tuple()} |
    {error, any()} |
    {error, list_virtual_interface_test_history_errors(), tuple()}.
list_virtual_interface_test_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_interface_test_history(Client, Input, []).

-spec list_virtual_interface_test_history(aws_client:aws_client(), list_virtual_interface_test_history_request(), proplists:proplist()) ->
    {ok, list_virtual_interface_test_history_response(), tuple()} |
    {error, any()} |
    {error, list_virtual_interface_test_history_errors(), tuple()}.
list_virtual_interface_test_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVirtualInterfaceTestHistory">>, Input, Options).

%% @doc Starts the virtual interface failover test that verifies your
%% configuration meets your resiliency requirements by placing the BGP
%% peering session in the DOWN state.
%%
%% You can then send traffic to verify that there are no outages.
%%
%% You can run the test on public, private, transit, and hosted virtual
%% interfaces.
%%
%% You can use ListVirtualInterfaceTestHistory:
%% https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html
%% to view the virtual interface test history.
%%
%% If you need to stop the test before the test interval completes, use
%% StopBgpFailoverTest:
%% https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html.
-spec start_bgp_failover_test(aws_client:aws_client(), start_bgp_failover_test_request()) ->
    {ok, start_bgp_failover_test_response(), tuple()} |
    {error, any()} |
    {error, start_bgp_failover_test_errors(), tuple()}.
start_bgp_failover_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_bgp_failover_test(Client, Input, []).

-spec start_bgp_failover_test(aws_client:aws_client(), start_bgp_failover_test_request(), proplists:proplist()) ->
    {ok, start_bgp_failover_test_response(), tuple()} |
    {error, any()} |
    {error, start_bgp_failover_test_errors(), tuple()}.
start_bgp_failover_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBgpFailoverTest">>, Input, Options).

%% @doc Stops the virtual interface failover test.
-spec stop_bgp_failover_test(aws_client:aws_client(), stop_bgp_failover_test_request()) ->
    {ok, stop_bgp_failover_test_response(), tuple()} |
    {error, any()} |
    {error, stop_bgp_failover_test_errors(), tuple()}.
stop_bgp_failover_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_bgp_failover_test(Client, Input, []).

-spec stop_bgp_failover_test(aws_client:aws_client(), stop_bgp_failover_test_request(), proplists:proplist()) ->
    {ok, stop_bgp_failover_test_response(), tuple()} |
    {error, any()} |
    {error, stop_bgp_failover_test_errors(), tuple()}.
stop_bgp_failover_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopBgpFailoverTest">>, Input, Options).

%% @doc Adds the specified tags to the specified Direct Connect resource.
%%
%% Each resource can have a maximum of 50 tags.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated with the resource, this action updates its
%% value.
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

%% @doc Removes one or more tags from the specified Direct Connect resource.
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

%% @doc Updates the Direct Connect dedicated connection configuration.
%%
%% You can update the following parameters for a connection:
%%
%% The connection name
%%
%% The connection's MAC Security (MACsec) encryption mode.
-spec update_connection(aws_client:aws_client(), update_connection_request()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).

-spec update_connection(aws_client:aws_client(), update_connection_request(), proplists:proplist()) ->
    {ok, connection(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

%% @doc Updates the name of a current Direct Connect gateway.
-spec update_direct_connect_gateway(aws_client:aws_client(), update_direct_connect_gateway_request()) ->
    {ok, update_direct_connect_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_errors(), tuple()}.
update_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_direct_connect_gateway(Client, Input, []).

-spec update_direct_connect_gateway(aws_client:aws_client(), update_direct_connect_gateway_request(), proplists:proplist()) ->
    {ok, update_direct_connect_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_errors(), tuple()}.
update_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectConnectGateway">>, Input, Options).

%% @doc Updates the specified attributes of the Direct Connect gateway
%% association.
%%
%% Add or remove prefixes from the association.
-spec update_direct_connect_gateway_association(aws_client:aws_client(), update_direct_connect_gateway_association_request()) ->
    {ok, update_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_association_errors(), tuple()}.
update_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_direct_connect_gateway_association(Client, Input, []).

-spec update_direct_connect_gateway_association(aws_client:aws_client(), update_direct_connect_gateway_association_request(), proplists:proplist()) ->
    {ok, update_direct_connect_gateway_association_result(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_association_errors(), tuple()}.
update_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Updates the attributes of the specified link aggregation group (LAG).
%%
%% You can update the following LAG attributes:
%%
%% The name of the LAG.
%%
%% The value for the minimum number of connections that must be operational
%% for the LAG itself to be operational.
%%
%% The LAG's MACsec encryption mode.
%%
%% Amazon Web Services assigns this value to each connection which is part of
%% the LAG.
%%
%% The tags
%%
%% If you adjust the threshold value for the minimum number of operational
%% connections, ensure
%% that the new value does not cause the LAG to fall below the threshold and
%% become
%% non-operational.
-spec update_lag(aws_client:aws_client(), update_lag_request()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, update_lag_errors(), tuple()}.
update_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_lag(Client, Input, []).

-spec update_lag(aws_client:aws_client(), update_lag_request(), proplists:proplist()) ->
    {ok, lag(), tuple()} |
    {error, any()} |
    {error, update_lag_errors(), tuple()}.
update_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLag">>, Input, Options).

%% @doc Updates the specified attributes of the specified virtual private
%% interface.
%%
%% Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an
%% update to
%% the underlying physical connection if it wasn't updated to support
%% jumbo frames. Updating
%% the connection disrupts network connectivity for all virtual interfaces
%% associated with
%% the connection for up to 30 seconds. To check whether your connection
%% supports jumbo
%% frames, call `DescribeConnections'. To check whether your virtual
%% interface supports jumbo frames, call `DescribeVirtualInterfaces'.
-spec update_virtual_interface_attributes(aws_client:aws_client(), update_virtual_interface_attributes_request()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, update_virtual_interface_attributes_errors(), tuple()}.
update_virtual_interface_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_virtual_interface_attributes(Client, Input, []).

-spec update_virtual_interface_attributes(aws_client:aws_client(), update_virtual_interface_attributes_request(), proplists:proplist()) ->
    {ok, virtual_interface(), tuple()} |
    {error, any()} |
    {error, update_virtual_interface_attributes_errors(), tuple()}.
update_virtual_interface_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVirtualInterfaceAttributes">>, Input, Options).

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
    Client1 = Client#{service => <<"directconnect">>},
    Host = build_host(<<"directconnect">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"OvertureService.", Action/binary>>}
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
