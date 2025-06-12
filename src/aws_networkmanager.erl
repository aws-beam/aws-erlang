%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services enables you to centrally manage your Amazon Web
%% Services Cloud WAN core network and your Transit Gateway network across
%% Amazon Web Services accounts, Regions, and on-premises locations.
-module(aws_networkmanager).

-export([accept_attachment/3,
         accept_attachment/4,
         associate_connect_peer/3,
         associate_connect_peer/4,
         associate_customer_gateway/3,
         associate_customer_gateway/4,
         associate_link/3,
         associate_link/4,
         associate_transit_gateway_connect_peer/3,
         associate_transit_gateway_connect_peer/4,
         create_connect_attachment/2,
         create_connect_attachment/3,
         create_connect_peer/2,
         create_connect_peer/3,
         create_connection/3,
         create_connection/4,
         create_core_network/2,
         create_core_network/3,
         create_device/3,
         create_device/4,
         create_direct_connect_gateway_attachment/2,
         create_direct_connect_gateway_attachment/3,
         create_global_network/2,
         create_global_network/3,
         create_link/3,
         create_link/4,
         create_site/3,
         create_site/4,
         create_site_to_site_vpn_attachment/2,
         create_site_to_site_vpn_attachment/3,
         create_transit_gateway_peering/2,
         create_transit_gateway_peering/3,
         create_transit_gateway_route_table_attachment/2,
         create_transit_gateway_route_table_attachment/3,
         create_vpc_attachment/2,
         create_vpc_attachment/3,
         delete_attachment/3,
         delete_attachment/4,
         delete_connect_peer/3,
         delete_connect_peer/4,
         delete_connection/4,
         delete_connection/5,
         delete_core_network/3,
         delete_core_network/4,
         delete_core_network_policy_version/4,
         delete_core_network_policy_version/5,
         delete_device/4,
         delete_device/5,
         delete_global_network/3,
         delete_global_network/4,
         delete_link/4,
         delete_link/5,
         delete_peering/3,
         delete_peering/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_site/4,
         delete_site/5,
         deregister_transit_gateway/4,
         deregister_transit_gateway/5,
         describe_global_networks/1,
         describe_global_networks/3,
         describe_global_networks/4,
         disassociate_connect_peer/4,
         disassociate_connect_peer/5,
         disassociate_customer_gateway/4,
         disassociate_customer_gateway/5,
         disassociate_link/3,
         disassociate_link/4,
         disassociate_transit_gateway_connect_peer/4,
         disassociate_transit_gateway_connect_peer/5,
         execute_core_network_change_set/4,
         execute_core_network_change_set/5,
         get_connect_attachment/2,
         get_connect_attachment/4,
         get_connect_attachment/5,
         get_connect_peer/2,
         get_connect_peer/4,
         get_connect_peer/5,
         get_connect_peer_associations/2,
         get_connect_peer_associations/4,
         get_connect_peer_associations/5,
         get_connections/2,
         get_connections/4,
         get_connections/5,
         get_core_network/2,
         get_core_network/4,
         get_core_network/5,
         get_core_network_change_events/3,
         get_core_network_change_events/5,
         get_core_network_change_events/6,
         get_core_network_change_set/3,
         get_core_network_change_set/5,
         get_core_network_change_set/6,
         get_core_network_policy/2,
         get_core_network_policy/4,
         get_core_network_policy/5,
         get_customer_gateway_associations/2,
         get_customer_gateway_associations/4,
         get_customer_gateway_associations/5,
         get_devices/2,
         get_devices/4,
         get_devices/5,
         get_direct_connect_gateway_attachment/2,
         get_direct_connect_gateway_attachment/4,
         get_direct_connect_gateway_attachment/5,
         get_link_associations/2,
         get_link_associations/4,
         get_link_associations/5,
         get_links/2,
         get_links/4,
         get_links/5,
         get_network_resource_counts/2,
         get_network_resource_counts/4,
         get_network_resource_counts/5,
         get_network_resource_relationships/2,
         get_network_resource_relationships/4,
         get_network_resource_relationships/5,
         get_network_resources/2,
         get_network_resources/4,
         get_network_resources/5,
         get_network_routes/3,
         get_network_routes/4,
         get_network_telemetry/2,
         get_network_telemetry/4,
         get_network_telemetry/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_route_analysis/3,
         get_route_analysis/5,
         get_route_analysis/6,
         get_site_to_site_vpn_attachment/2,
         get_site_to_site_vpn_attachment/4,
         get_site_to_site_vpn_attachment/5,
         get_sites/2,
         get_sites/4,
         get_sites/5,
         get_transit_gateway_connect_peer_associations/2,
         get_transit_gateway_connect_peer_associations/4,
         get_transit_gateway_connect_peer_associations/5,
         get_transit_gateway_peering/2,
         get_transit_gateway_peering/4,
         get_transit_gateway_peering/5,
         get_transit_gateway_registrations/2,
         get_transit_gateway_registrations/4,
         get_transit_gateway_registrations/5,
         get_transit_gateway_route_table_attachment/2,
         get_transit_gateway_route_table_attachment/4,
         get_transit_gateway_route_table_attachment/5,
         get_vpc_attachment/2,
         get_vpc_attachment/4,
         get_vpc_attachment/5,
         list_attachments/1,
         list_attachments/3,
         list_attachments/4,
         list_connect_peers/1,
         list_connect_peers/3,
         list_connect_peers/4,
         list_core_network_policy_versions/2,
         list_core_network_policy_versions/4,
         list_core_network_policy_versions/5,
         list_core_networks/1,
         list_core_networks/3,
         list_core_networks/4,
         list_organization_service_access_status/1,
         list_organization_service_access_status/3,
         list_organization_service_access_status/4,
         list_peerings/1,
         list_peerings/3,
         list_peerings/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_core_network_policy/3,
         put_core_network_policy/4,
         put_resource_policy/3,
         put_resource_policy/4,
         register_transit_gateway/3,
         register_transit_gateway/4,
         reject_attachment/3,
         reject_attachment/4,
         restore_core_network_policy_version/4,
         restore_core_network_policy_version/5,
         start_organization_service_access_update/2,
         start_organization_service_access_update/3,
         start_route_analysis/3,
         start_route_analysis/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connection/4,
         update_connection/5,
         update_core_network/3,
         update_core_network/4,
         update_device/4,
         update_device/5,
         update_direct_connect_gateway_attachment/3,
         update_direct_connect_gateway_attachment/4,
         update_global_network/3,
         update_global_network/4,
         update_link/4,
         update_link/5,
         update_network_resource_metadata/4,
         update_network_resource_metadata/5,
         update_site/4,
         update_site/5,
         update_vpc_attachment/3,
         update_vpc_attachment/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_core_network_policy_request() :: #{
%%   <<"Alias">> => list(any()),
%%   <<"PolicyVersionId">> => integer()
%% }
-type get_core_network_policy_request() :: #{binary() => any()}.


%% Example:
%% core_network_policy_version() :: #{
%%   <<"Alias">> => list(any()),
%%   <<"ChangeSetState">> => list(any()),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"PolicyVersionId">> => integer()
%% }
-type core_network_policy_version() :: #{binary() => any()}.


%% Example:
%% get_network_telemetry_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_network_telemetry_request() :: #{binary() => any()}.


%% Example:
%% deregister_transit_gateway_response() :: #{
%%   <<"TransitGatewayRegistration">> => transit_gateway_registration()
%% }
-type deregister_transit_gateway_response() :: #{binary() => any()}.


%% Example:
%% delete_link_response() :: #{
%%   <<"Link">> => link()
%% }
-type delete_link_response() :: #{binary() => any()}.


%% Example:
%% update_connection_request() :: #{
%%   <<"ConnectedLinkId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LinkId">> => string()
%% }
-type update_connection_request() :: #{binary() => any()}.

%% Example:
%% delete_peering_request() :: #{}
-type delete_peering_request() :: #{}.


%% Example:
%% get_network_resource_counts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_network_resource_counts_request() :: #{binary() => any()}.


%% Example:
%% associate_customer_gateway_response() :: #{
%%   <<"CustomerGatewayAssociation">> => customer_gateway_association()
%% }
-type associate_customer_gateway_response() :: #{binary() => any()}.


%% Example:
%% transit_gateway_peering() :: #{
%%   <<"Peering">> => peering(),
%%   <<"TransitGatewayArn">> => string(),
%%   <<"TransitGatewayPeeringAttachmentId">> => string()
%% }
-type transit_gateway_peering() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_transit_gateway_peering_response() :: #{
%%   <<"TransitGatewayPeering">> => transit_gateway_peering()
%% }
-type create_transit_gateway_peering_response() :: #{binary() => any()}.


%% Example:
%% edge_override() :: #{
%%   <<"EdgeSets">> => list(list(string()())()),
%%   <<"UseEdge">> => string()
%% }
-type edge_override() :: #{binary() => any()}.


%% Example:
%% update_device_response() :: #{
%%   <<"Device">> => device()
%% }
-type update_device_response() :: #{binary() => any()}.


%% Example:
%% get_devices_request() :: #{
%%   <<"DeviceIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SiteId">> => string()
%% }
-type get_devices_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{}
-type delete_resource_policy_response() :: #{}.


%% Example:
%% list_core_network_policy_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_core_network_policy_versions_request() :: #{binary() => any()}.


%% Example:
%% get_transit_gateway_connect_peer_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TransitGatewayConnectPeerAssociations">> => list(transit_gateway_connect_peer_association()())
%% }
-type get_transit_gateway_connect_peer_associations_response() :: #{binary() => any()}.


%% Example:
%% get_transit_gateway_connect_peer_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TransitGatewayConnectPeerArns">> => list(string()())
%% }
-type get_transit_gateway_connect_peer_associations_request() :: #{binary() => any()}.


%% Example:
%% get_core_network_policy_response() :: #{
%%   <<"CoreNetworkPolicy">> => core_network_policy()
%% }
-type get_core_network_policy_response() :: #{binary() => any()}.


%% Example:
%% path_component() :: #{
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"Resource">> => network_resource_summary(),
%%   <<"Sequence">> => integer()
%% }
-type path_component() :: #{binary() => any()}.


%% Example:
%% get_network_resource_counts_response() :: #{
%%   <<"NetworkResourceCounts">> => list(network_resource_count()()),
%%   <<"NextToken">> => string()
%% }
-type get_network_resource_counts_response() :: #{binary() => any()}.


%% Example:
%% associate_link_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> := string()
%% }
-type associate_link_request() :: #{binary() => any()}.

%% Example:
%% get_transit_gateway_peering_request() :: #{}
-type get_transit_gateway_peering_request() :: #{}.


%% Example:
%% service_insertion_segments() :: #{
%%   <<"SendTo">> => list(string()()),
%%   <<"SendVia">> => list(string()())
%% }
-type service_insertion_segments() :: #{binary() => any()}.


%% Example:
%% delete_core_network_response() :: #{
%%   <<"CoreNetwork">> => core_network()
%% }
-type delete_core_network_response() :: #{binary() => any()}.


%% Example:
%% connect_attachment_options() :: #{
%%   <<"Protocol">> => list(any())
%% }
-type connect_attachment_options() :: #{binary() => any()}.


%% Example:
%% create_device_response() :: #{
%%   <<"Device">> => device()
%% }
-type create_device_response() :: #{binary() => any()}.

%% Example:
%% disassociate_transit_gateway_connect_peer_request() :: #{}
-type disassociate_transit_gateway_connect_peer_request() :: #{}.


%% Example:
%% route_analysis() :: #{
%%   <<"Destination">> => route_analysis_endpoint_options(),
%%   <<"ForwardPath">> => route_analysis_path(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"IncludeReturnPath">> => boolean(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ReturnPath">> => route_analysis_path(),
%%   <<"RouteAnalysisId">> => string(),
%%   <<"Source">> => route_analysis_endpoint_options(),
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UseMiddleboxes">> => boolean()
%% }
-type route_analysis() :: #{binary() => any()}.


%% Example:
%% get_network_resources_response() :: #{
%%   <<"NetworkResources">> => list(network_resource()()),
%%   <<"NextToken">> => string()
%% }
-type get_network_resources_response() :: #{binary() => any()}.


%% Example:
%% update_global_network_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_global_network_request() :: #{binary() => any()}.


%% Example:
%% get_connect_peer_associations_request() :: #{
%%   <<"ConnectPeerIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_connect_peer_associations_request() :: #{binary() => any()}.


%% Example:
%% create_global_network_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_global_network_request() :: #{binary() => any()}.


%% Example:
%% create_site_to_site_vpn_attachment_response() :: #{
%%   <<"SiteToSiteVpnAttachment">> => site_to_site_vpn_attachment()
%% }
-type create_site_to_site_vpn_attachment_response() :: #{binary() => any()}.


%% Example:
%% vpc_attachment() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"Options">> => vpc_options(),
%%   <<"SubnetArns">> => list(string()())
%% }
-type vpc_attachment() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_device_request() :: #{
%%   <<"AWSLocation">> => aws_location(),
%%   <<"Description">> => string(),
%%   <<"Location">> => location(),
%%   <<"Model">> => string(),
%%   <<"SerialNumber">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"Type">> => string(),
%%   <<"Vendor">> => string()
%% }
-type update_device_request() :: #{binary() => any()}.


%% Example:
%% get_core_network_change_events_response() :: #{
%%   <<"CoreNetworkChangeEvents">> => list(core_network_change_event()()),
%%   <<"NextToken">> => string()
%% }
-type get_core_network_change_events_response() :: #{binary() => any()}.


%% Example:
%% get_core_network_change_set_response() :: #{
%%   <<"CoreNetworkChanges">> => list(core_network_change()()),
%%   <<"NextToken">> => string()
%% }
-type get_core_network_change_set_response() :: #{binary() => any()}.


%% Example:
%% get_network_resource_relationships_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Relationships">> => list(relationship()())
%% }
-type get_network_resource_relationships_response() :: #{binary() => any()}.


%% Example:
%% site_to_site_vpn_attachment() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"VpnConnectionArn">> => string()
%% }
-type site_to_site_vpn_attachment() :: #{binary() => any()}.

%% Example:
%% accept_attachment_request() :: #{}
-type accept_attachment_request() :: #{}.


%% Example:
%% relationship() :: #{
%%   <<"From">> => string(),
%%   <<"To">> => string()
%% }
-type relationship() :: #{binary() => any()}.


%% Example:
%% describe_global_networks_response() :: #{
%%   <<"GlobalNetworks">> => list(global_network()()),
%%   <<"NextToken">> => string()
%% }
-type describe_global_networks_response() :: #{binary() => any()}.


%% Example:
%% get_network_telemetry_response() :: #{
%%   <<"NetworkTelemetry">> => list(network_telemetry()()),
%%   <<"NextToken">> => string()
%% }
-type get_network_telemetry_response() :: #{binary() => any()}.


%% Example:
%% transit_gateway_connect_peer_association() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"TransitGatewayConnectPeerArn">> => string()
%% }
-type transit_gateway_connect_peer_association() :: #{binary() => any()}.


%% Example:
%% connect_peer_configuration() :: #{
%%   <<"BgpConfigurations">> => list(connect_peer_bgp_configuration()()),
%%   <<"CoreNetworkAddress">> => string(),
%%   <<"InsideCidrBlocks">> => list(string()()),
%%   <<"PeerAddress">> => string(),
%%   <<"Protocol">> => list(any())
%% }
-type connect_peer_configuration() :: #{binary() => any()}.


%% Example:
%% create_transit_gateway_route_table_attachment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"PeeringId">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransitGatewayRouteTableArn">> := string()
%% }
-type create_transit_gateway_route_table_attachment_request() :: #{binary() => any()}.


%% Example:
%% get_connections_request() :: #{
%%   <<"ConnectionIds">> => list(string()()),
%%   <<"DeviceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_connections_request() :: #{binary() => any()}.


%% Example:
%% get_site_to_site_vpn_attachment_response() :: #{
%%   <<"SiteToSiteVpnAttachment">> => site_to_site_vpn_attachment()
%% }
-type get_site_to_site_vpn_attachment_response() :: #{binary() => any()}.


%% Example:
%% service_insertion_action() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Mode">> => list(any()),
%%   <<"Via">> => via(),
%%   <<"WhenSentTo">> => when_sent_to()
%% }
-type service_insertion_action() :: #{binary() => any()}.


%% Example:
%% create_site_to_site_vpn_attachment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CoreNetworkId">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpnConnectionArn">> := string()
%% }
-type create_site_to_site_vpn_attachment_request() :: #{binary() => any()}.


%% Example:
%% create_core_network_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"GlobalNetworkId">> := string(),
%%   <<"PolicyDocument">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_core_network_request() :: #{binary() => any()}.


%% Example:
%% proposed_network_function_group_change() :: #{
%%   <<"AttachmentPolicyRuleNumber">> => integer(),
%%   <<"NetworkFunctionGroupName">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type proposed_network_function_group_change() :: #{binary() => any()}.


%% Example:
%% peering_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"MissingPermissionsContext">> => permissions_error_context(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type peering_error() :: #{binary() => any()}.


%% Example:
%% attachment() :: #{
%%   <<"AttachmentId">> => string(),
%%   <<"AttachmentPolicyRuleNumber">> => integer(),
%%   <<"AttachmentType">> => list(any()),
%%   <<"CoreNetworkArn">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EdgeLocation">> => string(),
%%   <<"EdgeLocations">> => list(string()()),
%%   <<"LastModificationErrors">> => list(attachment_error()()),
%%   <<"NetworkFunctionGroupName">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProposedNetworkFunctionGroupChange">> => proposed_network_function_group_change(),
%%   <<"ProposedSegmentChange">> => proposed_segment_change(),
%%   <<"ResourceArn">> => string(),
%%   <<"SegmentName">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type attachment() :: #{binary() => any()}.


%% Example:
%% delete_site_response() :: #{
%%   <<"Site">> => site()
%% }
-type delete_site_response() :: #{binary() => any()}.

%% Example:
%% get_direct_connect_gateway_attachment_request() :: #{}
-type get_direct_connect_gateway_attachment_request() :: #{}.


%% Example:
%% core_network_network_function_group_identifier() :: #{
%%   <<"CoreNetworkId">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"NetworkFunctionGroupName">> => string()
%% }
-type core_network_network_function_group_identifier() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"PolicyDocument">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% link() :: #{
%%   <<"Bandwidth">> => bandwidth(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkArn">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"Provider">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string()
%% }
-type link() :: #{binary() => any()}.

%% Example:
%% delete_device_request() :: #{}
-type delete_device_request() :: #{}.


%% Example:
%% put_core_network_policy_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"LatestVersionId">> => integer(),
%%   <<"PolicyDocument">> := string()
%% }
-type put_core_network_policy_request() :: #{binary() => any()}.


%% Example:
%% network_route_destination() :: #{
%%   <<"CoreNetworkAttachmentId">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"NetworkFunctionGroupName">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SegmentName">> => string(),
%%   <<"TransitGatewayAttachmentId">> => string()
%% }
-type network_route_destination() :: #{binary() => any()}.

%% Example:
%% delete_link_request() :: #{}
-type delete_link_request() :: #{}.

%% Example:
%% get_connect_peer_request() :: #{}
-type get_connect_peer_request() :: #{}.


%% Example:
%% update_vpc_attachment_request() :: #{
%%   <<"AddSubnetArns">> => list(string()()),
%%   <<"Options">> => vpc_options(),
%%   <<"RemoveSubnetArns">> => list(string()())
%% }
-type update_vpc_attachment_request() :: #{binary() => any()}.


%% Example:
%% delete_connect_peer_response() :: #{
%%   <<"ConnectPeer">> => connect_peer()
%% }
-type delete_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% describe_global_networks_request() :: #{
%%   <<"GlobalNetworkIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_global_networks_request() :: #{binary() => any()}.


%% Example:
%% route_analysis_path() :: #{
%%   <<"CompletionStatus">> => route_analysis_completion(),
%%   <<"Path">> => list(path_component()())
%% }
-type route_analysis_path() :: #{binary() => any()}.


%% Example:
%% get_connections_response() :: #{
%%   <<"Connections">> => list(connection()()),
%%   <<"NextToken">> => string()
%% }
-type get_connections_response() :: #{binary() => any()}.


%% Example:
%% get_network_routes_request() :: #{
%%   <<"DestinationFilters">> => map(),
%%   <<"ExactCidrMatches">> => list(string()()),
%%   <<"LongestPrefixMatches">> => list(string()()),
%%   <<"PrefixListIds">> => list(string()()),
%%   <<"RouteTableIdentifier">> := route_table_identifier(),
%%   <<"States">> => list(list(any())()),
%%   <<"SubnetOfMatches">> => list(string()()),
%%   <<"SupernetOfMatches">> => list(string()()),
%%   <<"Types">> => list(list(any())())
%% }
-type get_network_routes_request() :: #{binary() => any()}.


%% Example:
%% create_link_response() :: #{
%%   <<"Link">> => link()
%% }
-type create_link_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% permissions_error_context() :: #{
%%   <<"MissingPermission">> => string()
%% }
-type permissions_error_context() :: #{binary() => any()}.


%% Example:
%% get_network_routes_response() :: #{
%%   <<"CoreNetworkSegmentEdge">> => core_network_segment_edge_identifier(),
%%   <<"NetworkRoutes">> => list(network_route()()),
%%   <<"RouteTableArn">> => string(),
%%   <<"RouteTableTimestamp">> => non_neg_integer(),
%%   <<"RouteTableType">> => list(any())
%% }
-type get_network_routes_response() :: #{binary() => any()}.

%% Example:
%% get_core_network_request() :: #{}
-type get_core_network_request() :: #{}.


%% Example:
%% account_status() :: #{
%%   <<"AccountId">> => string(),
%%   <<"SLRDeploymentStatus">> => string()
%% }
-type account_status() :: #{binary() => any()}.


%% Example:
%% register_transit_gateway_response() :: #{
%%   <<"TransitGatewayRegistration">> => transit_gateway_registration()
%% }
-type register_transit_gateway_response() :: #{binary() => any()}.

%% Example:
%% execute_core_network_change_set_request() :: #{}
-type execute_core_network_change_set_request() :: #{}.


%% Example:
%% create_site_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Location">> => location(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_site_request() :: #{binary() => any()}.


%% Example:
%% get_direct_connect_gateway_attachment_response() :: #{
%%   <<"DirectConnectGatewayAttachment">> => direct_connect_gateway_attachment()
%% }
-type get_direct_connect_gateway_attachment_response() :: #{binary() => any()}.


%% Example:
%% start_route_analysis_response() :: #{
%%   <<"RouteAnalysis">> => route_analysis()
%% }
-type start_route_analysis_response() :: #{binary() => any()}.


%% Example:
%% create_direct_connect_gateway_attachment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CoreNetworkId">> := string(),
%%   <<"DirectConnectGatewayArn">> := string(),
%%   <<"EdgeLocations">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_direct_connect_gateway_attachment_request() :: #{binary() => any()}.


%% Example:
%% start_organization_service_access_update_response() :: #{
%%   <<"OrganizationStatus">> => organization_status()
%% }
-type start_organization_service_access_update_response() :: #{binary() => any()}.


%% Example:
%% get_transit_gateway_registrations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TransitGatewayArns">> => list(string()())
%% }
-type get_transit_gateway_registrations_request() :: #{binary() => any()}.


%% Example:
%% start_organization_service_access_update_request() :: #{
%%   <<"Action">> := string()
%% }
-type start_organization_service_access_update_request() :: #{binary() => any()}.


%% Example:
%% connect_peer_association() :: #{
%%   <<"ConnectPeerId">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"State">> => list(any())
%% }
-type connect_peer_association() :: #{binary() => any()}.

%% Example:
%% get_site_to_site_vpn_attachment_request() :: #{}
-type get_site_to_site_vpn_attachment_request() :: #{}.


%% Example:
%% core_network_edge() :: #{
%%   <<"Asn">> => float(),
%%   <<"EdgeLocation">> => string(),
%%   <<"InsideCidrBlocks">> => list(string()())
%% }
-type core_network_edge() :: #{binary() => any()}.

%% Example:
%% get_route_analysis_request() :: #{}
-type get_route_analysis_request() :: #{}.


%% Example:
%% link_association() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkAssociationState">> => list(any()),
%%   <<"LinkId">> => string()
%% }
-type link_association() :: #{binary() => any()}.


%% Example:
%% route_analysis_endpoint_options() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"TransitGatewayArn">> => string(),
%%   <<"TransitGatewayAttachmentArn">> => string()
%% }
-type route_analysis_endpoint_options() :: #{binary() => any()}.


%% Example:
%% create_connect_peer_response() :: #{
%%   <<"ConnectPeer">> => connect_peer()
%% }
-type create_connect_peer_response() :: #{binary() => any()}.

%% Example:
%% get_connect_attachment_request() :: #{}
-type get_connect_attachment_request() :: #{}.


%% Example:
%% create_connect_attachment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CoreNetworkId">> := string(),
%%   <<"EdgeLocation">> := string(),
%%   <<"Options">> := connect_attachment_options(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransportAttachmentId">> := string()
%% }
-type create_connect_attachment_request() :: #{binary() => any()}.


%% Example:
%% connect_peer_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type connect_peer_error() :: #{binary() => any()}.

%% Example:
%% disassociate_connect_peer_request() :: #{}
-type disassociate_connect_peer_request() :: #{}.


%% Example:
%% list_peerings_request() :: #{
%%   <<"CoreNetworkId">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PeeringType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type list_peerings_request() :: #{binary() => any()}.


%% Example:
%% disassociate_link_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> := string()
%% }
-type disassociate_link_request() :: #{binary() => any()}.


%% Example:
%% update_site_response() :: #{
%%   <<"Site">> => site()
%% }
-type update_site_response() :: #{binary() => any()}.


%% Example:
%% when_sent_to() :: #{
%%   <<"WhenSentToSegmentsList">> => list(string()())
%% }
-type when_sent_to() :: #{binary() => any()}.


%% Example:
%% create_transit_gateway_peering_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CoreNetworkId">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransitGatewayArn">> := string()
%% }
-type create_transit_gateway_peering_request() :: #{binary() => any()}.


%% Example:
%% associate_customer_gateway_request() :: #{
%%   <<"CustomerGatewayArn">> := string(),
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> => string()
%% }
-type associate_customer_gateway_request() :: #{binary() => any()}.


%% Example:
%% create_transit_gateway_route_table_attachment_response() :: #{
%%   <<"TransitGatewayRouteTableAttachment">> => transit_gateway_route_table_attachment()
%% }
-type create_transit_gateway_route_table_attachment_response() :: #{binary() => any()}.


%% Example:
%% core_network_change_values() :: #{
%%   <<"Asn">> => float(),
%%   <<"Cidr">> => string(),
%%   <<"DestinationIdentifier">> => string(),
%%   <<"DnsSupport">> => boolean(),
%%   <<"EdgeLocations">> => list(string()()),
%%   <<"InsideCidrBlocks">> => list(string()()),
%%   <<"NetworkFunctionGroupName">> => string(),
%%   <<"SecurityGroupReferencingSupport">> => boolean(),
%%   <<"SegmentName">> => string(),
%%   <<"ServiceInsertionActions">> => list(service_insertion_action()()),
%%   <<"SharedSegments">> => list(string()()),
%%   <<"VpnEcmpSupport">> => boolean()
%% }
-type core_network_change_values() :: #{binary() => any()}.


%% Example:
%% disassociate_connect_peer_response() :: #{
%%   <<"ConnectPeerAssociation">> => connect_peer_association()
%% }
-type disassociate_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% get_network_resources_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_network_resources_request() :: #{binary() => any()}.


%% Example:
%% get_link_associations_request() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_link_associations_request() :: #{binary() => any()}.


%% Example:
%% create_core_network_response() :: #{
%%   <<"CoreNetwork">> => core_network()
%% }
-type create_core_network_response() :: #{binary() => any()}.


%% Example:
%% put_core_network_policy_response() :: #{
%%   <<"CoreNetworkPolicy">> => core_network_policy()
%% }
-type put_core_network_policy_response() :: #{binary() => any()}.


%% Example:
%% create_link_request() :: #{
%%   <<"Bandwidth">> := bandwidth(),
%%   <<"Description">> => string(),
%%   <<"Provider">> => string(),
%%   <<"SiteId">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string()
%% }
-type create_link_request() :: #{binary() => any()}.


%% Example:
%% associate_connect_peer_response() :: #{
%%   <<"ConnectPeerAssociation">> => connect_peer_association()
%% }
-type associate_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% network_route() :: #{
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"Destinations">> => list(network_route_destination()()),
%%   <<"PrefixListId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type network_route() :: #{binary() => any()}.

%% Example:
%% execute_core_network_change_set_response() :: #{}
-type execute_core_network_change_set_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Context">> => map(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% bgp_options() :: #{
%%   <<"PeerAsn">> => float()
%% }
-type bgp_options() :: #{binary() => any()}.


%% Example:
%% reject_attachment_response() :: #{
%%   <<"Attachment">> => attachment()
%% }
-type reject_attachment_response() :: #{binary() => any()}.


%% Example:
%% route_analysis_completion() :: #{
%%   <<"ReasonCode">> => list(any()),
%%   <<"ReasonContext">> => map(),
%%   <<"ResultCode">> => list(any())
%% }
-type route_analysis_completion() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% connection() :: #{
%%   <<"ConnectedDeviceId">> => string(),
%%   <<"ConnectedLinkId">> => string(),
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type connection() :: #{binary() => any()}.


%% Example:
%% update_network_resource_metadata_request() :: #{
%%   <<"Metadata">> := map()
%% }
-type update_network_resource_metadata_request() :: #{binary() => any()}.


%% Example:
%% restore_core_network_policy_version_response() :: #{
%%   <<"CoreNetworkPolicy">> => core_network_policy()
%% }
-type restore_core_network_policy_version_response() :: #{binary() => any()}.

%% Example:
%% delete_attachment_request() :: #{}
-type delete_attachment_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"LimitCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_sites_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SiteIds">> => list(string()())
%% }
-type get_sites_request() :: #{binary() => any()}.


%% Example:
%% get_connect_attachment_response() :: #{
%%   <<"ConnectAttachment">> => connect_attachment()
%% }
-type get_connect_attachment_response() :: #{binary() => any()}.


%% Example:
%% connect_peer_bgp_configuration() :: #{
%%   <<"CoreNetworkAddress">> => string(),
%%   <<"CoreNetworkAsn">> => float(),
%%   <<"PeerAddress">> => string(),
%%   <<"PeerAsn">> => float()
%% }
-type connect_peer_bgp_configuration() :: #{binary() => any()}.


%% Example:
%% get_connect_peer_associations_response() :: #{
%%   <<"ConnectPeerAssociations">> => list(connect_peer_association()()),
%%   <<"NextToken">> => string()
%% }
-type get_connect_peer_associations_response() :: #{binary() => any()}.


%% Example:
%% peering() :: #{
%%   <<"CoreNetworkArn">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EdgeLocation">> => string(),
%%   <<"LastModificationErrors">> => list(peering_error()()),
%%   <<"OwnerAccountId">> => string(),
%%   <<"PeeringId">> => string(),
%%   <<"PeeringType">> => list(any()),
%%   <<"ResourceArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type peering() :: #{binary() => any()}.


%% Example:
%% list_organization_service_access_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationStatus">> => organization_status()
%% }
-type list_organization_service_access_status_response() :: #{binary() => any()}.


%% Example:
%% update_vpc_attachment_response() :: #{
%%   <<"VpcAttachment">> => vpc_attachment()
%% }
-type update_vpc_attachment_response() :: #{binary() => any()}.


%% Example:
%% customer_gateway_association() :: #{
%%   <<"CustomerGatewayArn">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"LinkId">> => string(),
%%   <<"State">> => list(any())
%% }
-type customer_gateway_association() :: #{binary() => any()}.


%% Example:
%% attachment_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type attachment_error() :: #{binary() => any()}.

%% Example:
%% delete_site_request() :: #{}
-type delete_site_request() :: #{}.


%% Example:
%% site() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"Location">> => location(),
%%   <<"SiteArn">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type site() :: #{binary() => any()}.


%% Example:
%% core_network() :: #{
%%   <<"CoreNetworkArn">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Edges">> => list(core_network_edge()()),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"NetworkFunctionGroups">> => list(core_network_network_function_group()()),
%%   <<"Segments">> => list(core_network_segment()()),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type core_network() :: #{binary() => any()}.


%% Example:
%% network_resource_summary() :: #{
%%   <<"Definition">> => string(),
%%   <<"IsMiddlebox">> => boolean(),
%%   <<"NameTag">> => string(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type network_resource_summary() :: #{binary() => any()}.


%% Example:
%% transit_gateway_registration() :: #{
%%   <<"GlobalNetworkId">> => string(),
%%   <<"State">> => transit_gateway_registration_state_reason(),
%%   <<"TransitGatewayArn">> => string()
%% }
-type transit_gateway_registration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_connect_peers_request() :: #{
%%   <<"ConnectAttachmentId">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connect_peers_request() :: #{binary() => any()}.


%% Example:
%% delete_core_network_policy_version_response() :: #{
%%   <<"CoreNetworkPolicy">> => core_network_policy()
%% }
-type delete_core_network_policy_version_response() :: #{binary() => any()}.


%% Example:
%% update_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type update_connection_response() :: #{binary() => any()}.


%% Example:
%% core_network_change() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Identifier">> => string(),
%%   <<"IdentifierPath">> => string(),
%%   <<"NewValues">> => core_network_change_values(),
%%   <<"PreviousValues">> => core_network_change_values(),
%%   <<"Type">> => list(any())
%% }
-type core_network_change() :: #{binary() => any()}.

%% Example:
%% deregister_transit_gateway_request() :: #{}
-type deregister_transit_gateway_request() :: #{}.


%% Example:
%% update_direct_connect_gateway_attachment_response() :: #{
%%   <<"DirectConnectGatewayAttachment">> => direct_connect_gateway_attachment()
%% }
-type update_direct_connect_gateway_attachment_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% update_link_response() :: #{
%%   <<"Link">> => link()
%% }
-type update_link_response() :: #{binary() => any()}.


%% Example:
%% location() :: #{
%%   <<"Address">> => string(),
%%   <<"Latitude">> => string(),
%%   <<"Longitude">> => string()
%% }
-type location() :: #{binary() => any()}.


%% Example:
%% get_connect_peer_response() :: #{
%%   <<"ConnectPeer">> => connect_peer()
%% }
-type get_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% list_core_networks_response() :: #{
%%   <<"CoreNetworks">> => list(core_network_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_core_networks_response() :: #{binary() => any()}.


%% Example:
%% connect_peer_summary() :: #{
%%   <<"ConnectAttachmentId">> => string(),
%%   <<"ConnectPeerId">> => string(),
%%   <<"ConnectPeerState">> => list(any()),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EdgeLocation">> => string(),
%%   <<"SubnetArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type connect_peer_summary() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.


%% Example:
%% delete_global_network_response() :: #{
%%   <<"GlobalNetwork">> => global_network()
%% }
-type delete_global_network_response() :: #{binary() => any()}.


%% Example:
%% list_attachments_request() :: #{
%%   <<"AttachmentType">> => list(any()),
%%   <<"CoreNetworkId">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_attachments_request() :: #{binary() => any()}.


%% Example:
%% core_network_policy_exception() :: #{
%%   <<"Errors">> => list(core_network_policy_error()()),
%%   <<"Message">> => string()
%% }
-type core_network_policy_exception() :: #{binary() => any()}.

%% Example:
%% restore_core_network_policy_version_request() :: #{}
-type restore_core_network_policy_version_request() :: #{}.


%% Example:
%% global_network() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GlobalNetworkArn">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type global_network() :: #{binary() => any()}.


%% Example:
%% delete_device_response() :: #{
%%   <<"Device">> => device()
%% }
-type delete_device_response() :: #{binary() => any()}.


%% Example:
%% get_links_response() :: #{
%%   <<"Links">> => list(link()()),
%%   <<"NextToken">> => string()
%% }
-type get_links_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_direct_connect_gateway_attachment_response() :: #{
%%   <<"DirectConnectGatewayAttachment">> => direct_connect_gateway_attachment()
%% }
-type create_direct_connect_gateway_attachment_response() :: #{binary() => any()}.


%% Example:
%% create_vpc_attachment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CoreNetworkId">> := string(),
%%   <<"Options">> => vpc_options(),
%%   <<"SubnetArns">> := list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcArn">> := string()
%% }
-type create_vpc_attachment_request() :: #{binary() => any()}.


%% Example:
%% network_function_group() :: #{
%%   <<"Name">> => string()
%% }
-type network_function_group() :: #{binary() => any()}.


%% Example:
%% core_network_policy() :: #{
%%   <<"Alias">> => list(any()),
%%   <<"ChangeSetState">> => list(any()),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyErrors">> => list(core_network_policy_error()()),
%%   <<"PolicyVersionId">> => integer()
%% }
-type core_network_policy() :: #{binary() => any()}.


%% Example:
%% register_transit_gateway_request() :: #{
%%   <<"TransitGatewayArn">> := string()
%% }
-type register_transit_gateway_request() :: #{binary() => any()}.


%% Example:
%% update_site_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Location">> => location()
%% }
-type update_site_request() :: #{binary() => any()}.


%% Example:
%% associate_connect_peer_request() :: #{
%%   <<"ConnectPeerId">> := string(),
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> => string()
%% }
-type associate_connect_peer_request() :: #{binary() => any()}.

%% Example:
%% delete_connect_peer_request() :: #{}
-type delete_connect_peer_request() :: #{}.


%% Example:
%% get_link_associations_response() :: #{
%%   <<"LinkAssociations">> => list(link_association()()),
%%   <<"NextToken">> => string()
%% }
-type get_link_associations_response() :: #{binary() => any()}.


%% Example:
%% transit_gateway_route_table_attachment() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"PeeringId">> => string(),
%%   <<"TransitGatewayRouteTableArn">> => string()
%% }
-type transit_gateway_route_table_attachment() :: #{binary() => any()}.


%% Example:
%% create_device_request() :: #{
%%   <<"AWSLocation">> => aws_location(),
%%   <<"Description">> => string(),
%%   <<"Location">> => location(),
%%   <<"Model">> => string(),
%%   <<"SerialNumber">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string(),
%%   <<"Vendor">> => string()
%% }
-type create_device_request() :: #{binary() => any()}.


%% Example:
%% disassociate_customer_gateway_response() :: #{
%%   <<"CustomerGatewayAssociation">> => customer_gateway_association()
%% }
-type disassociate_customer_gateway_response() :: #{binary() => any()}.


%% Example:
%% update_direct_connect_gateway_attachment_request() :: #{
%%   <<"EdgeLocations">> => list(string()())
%% }
-type update_direct_connect_gateway_attachment_request() :: #{binary() => any()}.


%% Example:
%% delete_peering_response() :: #{
%%   <<"Peering">> => peering()
%% }
-type delete_peering_response() :: #{binary() => any()}.


%% Example:
%% create_vpc_attachment_response() :: #{
%%   <<"VpcAttachment">> => vpc_attachment()
%% }
-type create_vpc_attachment_response() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"PolicyDocument">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% direct_connect_gateway_attachment() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"DirectConnectGatewayArn">> => string()
%% }
-type direct_connect_gateway_attachment() :: #{binary() => any()}.


%% Example:
%% get_transit_gateway_peering_response() :: #{
%%   <<"TransitGatewayPeering">> => transit_gateway_peering()
%% }
-type get_transit_gateway_peering_response() :: #{binary() => any()}.


%% Example:
%% core_network_change_event_values() :: #{
%%   <<"AttachmentId">> => string(),
%%   <<"Cidr">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"NetworkFunctionGroupName">> => string(),
%%   <<"SegmentName">> => string()
%% }
-type core_network_change_event_values() :: #{binary() => any()}.

%% Example:
%% get_transit_gateway_route_table_attachment_request() :: #{}
-type get_transit_gateway_route_table_attachment_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_core_network_request() :: #{}
-type delete_core_network_request() :: #{}.

%% Example:
%% delete_global_network_request() :: #{}
-type delete_global_network_request() :: #{}.


%% Example:
%% list_core_networks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_core_networks_request() :: #{binary() => any()}.


%% Example:
%% get_devices_response() :: #{
%%   <<"Devices">> => list(device()()),
%%   <<"NextToken">> => string()
%% }
-type get_devices_response() :: #{binary() => any()}.


%% Example:
%% network_resource_count() :: #{
%%   <<"Count">> => integer(),
%%   <<"ResourceType">> => string()
%% }
-type network_resource_count() :: #{binary() => any()}.


%% Example:
%% create_global_network_response() :: #{
%%   <<"GlobalNetwork">> => global_network()
%% }
-type create_global_network_response() :: #{binary() => any()}.


%% Example:
%% disassociate_link_response() :: #{
%%   <<"LinkAssociation">> => link_association()
%% }
-type disassociate_link_response() :: #{binary() => any()}.


%% Example:
%% bandwidth() :: #{
%%   <<"DownloadSpeed">> => integer(),
%%   <<"UploadSpeed">> => integer()
%% }
-type bandwidth() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_connect_attachment_response() :: #{
%%   <<"ConnectAttachment">> => connect_attachment()
%% }
-type create_connect_attachment_response() :: #{binary() => any()}.


%% Example:
%% associate_transit_gateway_connect_peer_response() :: #{
%%   <<"TransitGatewayConnectPeerAssociation">> => transit_gateway_connect_peer_association()
%% }
-type associate_transit_gateway_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% connect_attachment() :: #{
%%   <<"Attachment">> => attachment(),
%%   <<"Options">> => connect_attachment_options(),
%%   <<"TransportAttachmentId">> => string()
%% }
-type connect_attachment() :: #{binary() => any()}.


%% Example:
%% disassociate_transit_gateway_connect_peer_response() :: #{
%%   <<"TransitGatewayConnectPeerAssociation">> => transit_gateway_connect_peer_association()
%% }
-type disassociate_transit_gateway_connect_peer_response() :: #{binary() => any()}.


%% Example:
%% accept_attachment_response() :: #{
%%   <<"Attachment">> => attachment()
%% }
-type accept_attachment_response() :: #{binary() => any()}.


%% Example:
%% core_network_policy_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"Path">> => string()
%% }
-type core_network_policy_error() :: #{binary() => any()}.


%% Example:
%% delete_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type delete_connection_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_transit_gateway_route_table_attachment_response() :: #{
%%   <<"TransitGatewayRouteTableAttachment">> => transit_gateway_route_table_attachment()
%% }
-type get_transit_gateway_route_table_attachment_response() :: #{binary() => any()}.


%% Example:
%% core_network_segment() :: #{
%%   <<"EdgeLocations">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"SharedSegments">> => list(string()())
%% }
-type core_network_segment() :: #{binary() => any()}.


%% Example:
%% get_core_network_change_events_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_core_network_change_events_request() :: #{binary() => any()}.


%% Example:
%% proposed_segment_change() :: #{
%%   <<"AttachmentPolicyRuleNumber">> => integer(),
%%   <<"SegmentName">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type proposed_segment_change() :: #{binary() => any()}.

%% Example:
%% reject_attachment_request() :: #{}
-type reject_attachment_request() :: #{}.


%% Example:
%% transit_gateway_registration_state_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type transit_gateway_registration_state_reason() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% core_network_network_function_group() :: #{
%%   <<"EdgeLocations">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"Segments">> => service_insertion_segments()
%% }
-type core_network_network_function_group() :: #{binary() => any()}.


%% Example:
%% get_customer_gateway_associations_request() :: #{
%%   <<"CustomerGatewayArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_customer_gateway_associations_request() :: #{binary() => any()}.


%% Example:
%% update_global_network_response() :: #{
%%   <<"GlobalNetwork">> => global_network()
%% }
-type update_global_network_response() :: #{binary() => any()}.


%% Example:
%% get_customer_gateway_associations_response() :: #{
%%   <<"CustomerGatewayAssociations">> => list(customer_gateway_association()()),
%%   <<"NextToken">> => string()
%% }
-type get_customer_gateway_associations_response() :: #{binary() => any()}.


%% Example:
%% vpc_options() :: #{
%%   <<"ApplianceModeSupport">> => boolean(),
%%   <<"DnsSupport">> => boolean(),
%%   <<"Ipv6Support">> => boolean(),
%%   <<"SecurityGroupReferencingSupport">> => boolean()
%% }
-type vpc_options() :: #{binary() => any()}.


%% Example:
%% network_resource() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"Definition">> => string(),
%%   <<"DefinitionTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => map(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type network_resource() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{}
-type put_resource_policy_response() :: #{}.


%% Example:
%% route_table_identifier() :: #{
%%   <<"CoreNetworkNetworkFunctionGroup">> => core_network_network_function_group_identifier(),
%%   <<"CoreNetworkSegmentEdge">> => core_network_segment_edge_identifier(),
%%   <<"TransitGatewayRouteTableArn">> => string()
%% }
-type route_table_identifier() :: #{binary() => any()}.


%% Example:
%% network_telemetry() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Address">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"Health">> => connection_health(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type network_telemetry() :: #{binary() => any()}.


%% Example:
%% start_route_analysis_request() :: #{
%%   <<"Destination">> := route_analysis_endpoint_options_specification(),
%%   <<"IncludeReturnPath">> => boolean(),
%%   <<"Source">> := route_analysis_endpoint_options_specification(),
%%   <<"UseMiddleboxes">> => boolean()
%% }
-type start_route_analysis_request() :: #{binary() => any()}.


%% Example:
%% create_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type create_connection_response() :: #{binary() => any()}.


%% Example:
%% associate_transit_gateway_connect_peer_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> => string(),
%%   <<"TransitGatewayConnectPeerArn">> := string()
%% }
-type associate_transit_gateway_connect_peer_request() :: #{binary() => any()}.


%% Example:
%% core_network_segment_edge_identifier() :: #{
%%   <<"CoreNetworkId">> => string(),
%%   <<"EdgeLocation">> => string(),
%%   <<"SegmentName">> => string()
%% }
-type core_network_segment_edge_identifier() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{}
-type delete_resource_policy_request() :: #{}.


%% Example:
%% get_core_network_change_set_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_core_network_change_set_request() :: #{binary() => any()}.


%% Example:
%% connect_peer() :: #{
%%   <<"Configuration">> => connect_peer_configuration(),
%%   <<"ConnectAttachmentId">> => string(),
%%   <<"ConnectPeerId">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EdgeLocation">> => string(),
%%   <<"LastModificationErrors">> => list(connect_peer_error()()),
%%   <<"State">> => list(any()),
%%   <<"SubnetArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type connect_peer() :: #{binary() => any()}.


%% Example:
%% connection_health() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type connection_health() :: #{binary() => any()}.


%% Example:
%% get_links_request() :: #{
%%   <<"LinkIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Provider">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"Type">> => string()
%% }
-type get_links_request() :: #{binary() => any()}.


%% Example:
%% update_network_resource_metadata_response() :: #{
%%   <<"Metadata">> => map(),
%%   <<"ResourceArn">> => string()
%% }
-type update_network_resource_metadata_response() :: #{binary() => any()}.


%% Example:
%% aws_location() :: #{
%%   <<"SubnetArn">> => string(),
%%   <<"Zone">> => string()
%% }
-type aws_location() :: #{binary() => any()}.


%% Example:
%% list_organization_service_access_status_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_organization_service_access_status_request() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"AWSLocation">> => aws_location(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"Location">> => location(),
%%   <<"Model">> => string(),
%%   <<"SerialNumber">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string(),
%%   <<"Vendor">> => string()
%% }
-type device() :: #{binary() => any()}.


%% Example:
%% core_network_change_event() :: #{
%%   <<"Action">> => list(any()),
%%   <<"EventTime">> => non_neg_integer(),
%%   <<"IdentifierPath">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => core_network_change_event_values()
%% }
-type core_network_change_event() :: #{binary() => any()}.

%% Example:
%% get_vpc_attachment_request() :: #{}
-type get_vpc_attachment_request() :: #{}.


%% Example:
%% get_core_network_response() :: #{
%%   <<"CoreNetwork">> => core_network()
%% }
-type get_core_network_response() :: #{binary() => any()}.


%% Example:
%% create_site_response() :: #{
%%   <<"Site">> => site()
%% }
-type create_site_response() :: #{binary() => any()}.


%% Example:
%% core_network_summary() :: #{
%%   <<"CoreNetworkArn">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"Description">> => string(),
%%   <<"GlobalNetworkId">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type core_network_summary() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{}
-type delete_connection_request() :: #{}.


%% Example:
%% list_core_network_policy_versions_response() :: #{
%%   <<"CoreNetworkPolicyVersions">> => list(core_network_policy_version()()),
%%   <<"NextToken">> => string()
%% }
-type list_core_network_policy_versions_response() :: #{binary() => any()}.


%% Example:
%% list_connect_peers_response() :: #{
%%   <<"ConnectPeers">> => list(connect_peer_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_connect_peers_response() :: #{binary() => any()}.


%% Example:
%% list_peerings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Peerings">> => list(peering()())
%% }
-type list_peerings_response() :: #{binary() => any()}.


%% Example:
%% get_network_resource_relationships_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"CoreNetworkId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegisteredGatewayArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_network_resource_relationships_request() :: #{binary() => any()}.


%% Example:
%% get_route_analysis_response() :: #{
%%   <<"RouteAnalysis">> => route_analysis()
%% }
-type get_route_analysis_response() :: #{binary() => any()}.


%% Example:
%% update_core_network_response() :: #{
%%   <<"CoreNetwork">> => core_network()
%% }
-type update_core_network_response() :: #{binary() => any()}.


%% Example:
%% get_sites_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sites">> => list(site()())
%% }
-type get_sites_response() :: #{binary() => any()}.

%% Example:
%% disassociate_customer_gateway_request() :: #{}
-type disassociate_customer_gateway_request() :: #{}.


%% Example:
%% update_core_network_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_core_network_request() :: #{binary() => any()}.


%% Example:
%% get_transit_gateway_registrations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TransitGatewayRegistrations">> => list(transit_gateway_registration()())
%% }
-type get_transit_gateway_registrations_response() :: #{binary() => any()}.


%% Example:
%% delete_attachment_response() :: #{
%%   <<"Attachment">> => attachment()
%% }
-type delete_attachment_response() :: #{binary() => any()}.


%% Example:
%% associate_link_response() :: #{
%%   <<"LinkAssociation">> => link_association()
%% }
-type associate_link_response() :: #{binary() => any()}.


%% Example:
%% create_connection_request() :: #{
%%   <<"ConnectedDeviceId">> := string(),
%%   <<"ConnectedLinkId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceId">> := string(),
%%   <<"LinkId">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_connection_request() :: #{binary() => any()}.


%% Example:
%% list_attachments_response() :: #{
%%   <<"Attachments">> => list(attachment()()),
%%   <<"NextToken">> => string()
%% }
-type list_attachments_response() :: #{binary() => any()}.


%% Example:
%% route_analysis_endpoint_options_specification() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"TransitGatewayAttachmentArn">> => string()
%% }
-type route_analysis_endpoint_options_specification() :: #{binary() => any()}.


%% Example:
%% get_vpc_attachment_response() :: #{
%%   <<"VpcAttachment">> => vpc_attachment()
%% }
-type get_vpc_attachment_response() :: #{binary() => any()}.


%% Example:
%% update_link_request() :: #{
%%   <<"Bandwidth">> => bandwidth(),
%%   <<"Description">> => string(),
%%   <<"Provider">> => string(),
%%   <<"Type">> => string()
%% }
-type update_link_request() :: #{binary() => any()}.


%% Example:
%% organization_status() :: #{
%%   <<"AccountStatusList">> => list(account_status()()),
%%   <<"OrganizationAwsServiceAccessStatus">> => string(),
%%   <<"OrganizationId">> => string(),
%%   <<"SLRDeploymentStatus">> => string()
%% }
-type organization_status() :: #{binary() => any()}.


%% Example:
%% via() :: #{
%%   <<"NetworkFunctionGroups">> => list(network_function_group()()),
%%   <<"WithEdgeOverrides">> => list(edge_override()())
%% }
-type via() :: #{binary() => any()}.


%% Example:
%% create_connect_peer_request() :: #{
%%   <<"BgpOptions">> => bgp_options(),
%%   <<"ClientToken">> => string(),
%%   <<"ConnectAttachmentId">> := string(),
%%   <<"CoreNetworkAddress">> => string(),
%%   <<"InsideCidrBlocks">> => list(string()()),
%%   <<"PeerAddress">> := string(),
%%   <<"SubnetArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_connect_peer_request() :: #{binary() => any()}.

%% Example:
%% delete_core_network_policy_version_request() :: #{}
-type delete_core_network_policy_version_request() :: #{}.

-type accept_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_customer_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_transit_gateway_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_connect_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_core_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    core_network_policy_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_direct_connect_gateway_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_global_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_site_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_site_to_site_vpn_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_transit_gateway_peering_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_transit_gateway_route_table_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_vpc_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_core_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_core_network_policy_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_global_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_peering_errors() ::
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
    conflict_exception().

-type delete_site_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_transit_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_global_networks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_customer_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_transit_gateway_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type execute_core_network_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_connect_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connect_peer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connect_peer_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_core_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_core_network_change_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_core_network_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_core_network_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_customer_gateway_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_devices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_direct_connect_gateway_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_link_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_links_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_resource_counts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_network_resource_relationships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_routes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_telemetry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_route_analysis_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_site_to_site_vpn_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sites_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_transit_gateway_connect_peer_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_transit_gateway_peering_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_transit_gateway_registrations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_transit_gateway_route_table_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_vpc_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_attachments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_connect_peers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_core_network_policy_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_core_networks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_peerings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_core_network_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    core_network_policy_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type register_transit_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reject_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_core_network_policy_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_organization_service_access_update_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_route_analysis_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_core_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_direct_connect_gateway_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_global_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_network_resource_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_site_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_vpc_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a core network attachment request.
%%
%% Once the attachment request is accepted by a core network owner, the
%% attachment is
%% created and connected to a core network.
-spec accept_attachment(aws_client:aws_client(), binary() | list(), accept_attachment_request()) ->
    {ok, accept_attachment_response(), tuple()} |
    {error, any()} |
    {error, accept_attachment_errors(), tuple()}.
accept_attachment(Client, AttachmentId, Input) ->
    accept_attachment(Client, AttachmentId, Input, []).

-spec accept_attachment(aws_client:aws_client(), binary() | list(), accept_attachment_request(), proplists:proplist()) ->
    {ok, accept_attachment_response(), tuple()} |
    {error, any()} |
    {error, accept_attachment_errors(), tuple()}.
accept_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = post,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), "/accept"],
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

%% @doc Associates a core network Connect peer with a device and optionally,
%% with a link.
%%
%% If you specify a link, it must be associated with the specified device.
%% You can only
%% associate core network Connect peers that have been created on a core
%% network Connect
%% attachment on a core network.
-spec associate_connect_peer(aws_client:aws_client(), binary() | list(), associate_connect_peer_request()) ->
    {ok, associate_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, associate_connect_peer_errors(), tuple()}.
associate_connect_peer(Client, GlobalNetworkId, Input) ->
    associate_connect_peer(Client, GlobalNetworkId, Input, []).

-spec associate_connect_peer(aws_client:aws_client(), binary() | list(), associate_connect_peer_request(), proplists:proplist()) ->
    {ok, associate_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, associate_connect_peer_errors(), tuple()}.
associate_connect_peer(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations"],
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

%% @doc Associates a customer gateway with a device and optionally, with a
%% link.
%%
%% If you
%% specify a link, it must be associated with the specified device.
%%
%% You can only associate customer gateways that are connected to a VPN
%% attachment on a
%% transit gateway or core network registered in your global network. When
%% you register a
%% transit gateway or core network, customer gateways that are connected to
%% the transit
%% gateway are automatically included in the global network. To list customer
%% gateways
%% that are connected to a transit gateway, use the DescribeVpnConnections:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html
%% EC2 API and filter by
%% `transit-gateway-id'.
%%
%% You cannot associate a customer gateway with more than one device and
%% link.
-spec associate_customer_gateway(aws_client:aws_client(), binary() | list(), associate_customer_gateway_request()) ->
    {ok, associate_customer_gateway_response(), tuple()} |
    {error, any()} |
    {error, associate_customer_gateway_errors(), tuple()}.
associate_customer_gateway(Client, GlobalNetworkId, Input) ->
    associate_customer_gateway(Client, GlobalNetworkId, Input, []).

-spec associate_customer_gateway(aws_client:aws_client(), binary() | list(), associate_customer_gateway_request(), proplists:proplist()) ->
    {ok, associate_customer_gateway_response(), tuple()} |
    {error, any()} |
    {error, associate_customer_gateway_errors(), tuple()}.
associate_customer_gateway(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
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

%% @doc Associates a link to a device.
%%
%% A device can be associated to multiple links and a link can be associated
%% to multiple devices. The device and link must be in the same global
%% network and the same site.
-spec associate_link(aws_client:aws_client(), binary() | list(), associate_link_request()) ->
    {ok, associate_link_response(), tuple()} |
    {error, any()} |
    {error, associate_link_errors(), tuple()}.
associate_link(Client, GlobalNetworkId, Input) ->
    associate_link(Client, GlobalNetworkId, Input, []).

-spec associate_link(aws_client:aws_client(), binary() | list(), associate_link_request(), proplists:proplist()) ->
    {ok, associate_link_response(), tuple()} |
    {error, any()} |
    {error, associate_link_errors(), tuple()}.
associate_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
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

%% @doc Associates a transit gateway Connect peer with a device, and
%% optionally, with a link.
%%
%% If you
%% specify a link, it must be associated with the specified device.
%%
%% You can only associate transit gateway Connect peers that have been
%% created on a
%% transit gateway that's registered in your global network.
%%
%% You cannot associate a transit gateway Connect peer with more than one
%% device and link.
-spec associate_transit_gateway_connect_peer(aws_client:aws_client(), binary() | list(), associate_transit_gateway_connect_peer_request()) ->
    {ok, associate_transit_gateway_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, associate_transit_gateway_connect_peer_errors(), tuple()}.
associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input) ->
    associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input, []).

-spec associate_transit_gateway_connect_peer(aws_client:aws_client(), binary() | list(), associate_transit_gateway_connect_peer_request(), proplists:proplist()) ->
    {ok, associate_transit_gateway_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, associate_transit_gateway_connect_peer_errors(), tuple()}.
associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations"],
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

%% @doc Creates a core network Connect attachment from a specified core
%% network attachment.
%%
%% A core network Connect attachment is a GRE-based tunnel attachment that
%% you can use to
%% establish a connection between a core network and an appliance. A core
%% network Connect
%% attachment uses an existing VPC attachment as the underlying transport
%% mechanism.
-spec create_connect_attachment(aws_client:aws_client(), create_connect_attachment_request()) ->
    {ok, create_connect_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_connect_attachment_errors(), tuple()}.
create_connect_attachment(Client, Input) ->
    create_connect_attachment(Client, Input, []).

-spec create_connect_attachment(aws_client:aws_client(), create_connect_attachment_request(), proplists:proplist()) ->
    {ok, create_connect_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_connect_attachment_errors(), tuple()}.
create_connect_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connect-attachments"],
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

%% @doc Creates a core network Connect peer for a specified core network
%% connect attachment between a core network and an appliance.
%%
%% The peer address and transit gateway address must be the same IP address
%% family (IPv4 or IPv6).
-spec create_connect_peer(aws_client:aws_client(), create_connect_peer_request()) ->
    {ok, create_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, create_connect_peer_errors(), tuple()}.
create_connect_peer(Client, Input) ->
    create_connect_peer(Client, Input, []).

-spec create_connect_peer(aws_client:aws_client(), create_connect_peer_request(), proplists:proplist()) ->
    {ok, create_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, create_connect_peer_errors(), tuple()}.
create_connect_peer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connect-peers"],
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

%% @doc Creates a connection between two devices.
%%
%% The devices can be a physical or virtual appliance that connects to a
%% third-party appliance in a VPC, or a physical appliance that connects to
%% another physical appliance in an on-premises network.
-spec create_connection(aws_client:aws_client(), binary() | list(), create_connection_request()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, GlobalNetworkId, Input) ->
    create_connection(Client, GlobalNetworkId, Input, []).

-spec create_connection(aws_client:aws_client(), binary() | list(), create_connection_request(), proplists:proplist()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections"],
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

%% @doc Creates a core network as part of your global network, and
%% optionally, with a core network policy.
-spec create_core_network(aws_client:aws_client(), create_core_network_request()) ->
    {ok, create_core_network_response(), tuple()} |
    {error, any()} |
    {error, create_core_network_errors(), tuple()}.
create_core_network(Client, Input) ->
    create_core_network(Client, Input, []).

-spec create_core_network(aws_client:aws_client(), create_core_network_request(), proplists:proplist()) ->
    {ok, create_core_network_response(), tuple()} |
    {error, any()} |
    {error, create_core_network_errors(), tuple()}.
create_core_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks"],
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

%% @doc Creates a new device in a global network.
%%
%% If you specify both a site ID and a
%% location, the location of the site is used for visualization in the
%% Network Manager console.
-spec create_device(aws_client:aws_client(), binary() | list(), create_device_request()) ->
    {ok, create_device_response(), tuple()} |
    {error, any()} |
    {error, create_device_errors(), tuple()}.
create_device(Client, GlobalNetworkId, Input) ->
    create_device(Client, GlobalNetworkId, Input, []).

-spec create_device(aws_client:aws_client(), binary() | list(), create_device_request(), proplists:proplist()) ->
    {ok, create_device_response(), tuple()} |
    {error, any()} |
    {error, create_device_errors(), tuple()}.
create_device(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
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

%% @doc Creates an Amazon Web Services Direct Connect gateway attachment
-spec create_direct_connect_gateway_attachment(aws_client:aws_client(), create_direct_connect_gateway_attachment_request()) ->
    {ok, create_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_attachment_errors(), tuple()}.
create_direct_connect_gateway_attachment(Client, Input) ->
    create_direct_connect_gateway_attachment(Client, Input, []).

-spec create_direct_connect_gateway_attachment(aws_client:aws_client(), create_direct_connect_gateway_attachment_request(), proplists:proplist()) ->
    {ok, create_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_direct_connect_gateway_attachment_errors(), tuple()}.
create_direct_connect_gateway_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/direct-connect-gateway-attachments"],
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

%% @doc Creates a new, empty global network.
-spec create_global_network(aws_client:aws_client(), create_global_network_request()) ->
    {ok, create_global_network_response(), tuple()} |
    {error, any()} |
    {error, create_global_network_errors(), tuple()}.
create_global_network(Client, Input) ->
    create_global_network(Client, Input, []).

-spec create_global_network(aws_client:aws_client(), create_global_network_request(), proplists:proplist()) ->
    {ok, create_global_network_response(), tuple()} |
    {error, any()} |
    {error, create_global_network_errors(), tuple()}.
create_global_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks"],
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

%% @doc Creates a new link for a specified site.
-spec create_link(aws_client:aws_client(), binary() | list(), create_link_request()) ->
    {ok, create_link_response(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, GlobalNetworkId, Input) ->
    create_link(Client, GlobalNetworkId, Input, []).

-spec create_link(aws_client:aws_client(), binary() | list(), create_link_request(), proplists:proplist()) ->
    {ok, create_link_response(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
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

%% @doc Creates a new site in a global network.
-spec create_site(aws_client:aws_client(), binary() | list(), create_site_request()) ->
    {ok, create_site_response(), tuple()} |
    {error, any()} |
    {error, create_site_errors(), tuple()}.
create_site(Client, GlobalNetworkId, Input) ->
    create_site(Client, GlobalNetworkId, Input, []).

-spec create_site(aws_client:aws_client(), binary() | list(), create_site_request(), proplists:proplist()) ->
    {ok, create_site_response(), tuple()} |
    {error, any()} |
    {error, create_site_errors(), tuple()}.
create_site(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
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

%% @doc Creates an Amazon Web Services site-to-site VPN attachment on an edge
%% location of a core network.
-spec create_site_to_site_vpn_attachment(aws_client:aws_client(), create_site_to_site_vpn_attachment_request()) ->
    {ok, create_site_to_site_vpn_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_site_to_site_vpn_attachment_errors(), tuple()}.
create_site_to_site_vpn_attachment(Client, Input) ->
    create_site_to_site_vpn_attachment(Client, Input, []).

-spec create_site_to_site_vpn_attachment(aws_client:aws_client(), create_site_to_site_vpn_attachment_request(), proplists:proplist()) ->
    {ok, create_site_to_site_vpn_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_site_to_site_vpn_attachment_errors(), tuple()}.
create_site_to_site_vpn_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/site-to-site-vpn-attachments"],
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

%% @doc Creates a transit gateway peering connection.
-spec create_transit_gateway_peering(aws_client:aws_client(), create_transit_gateway_peering_request()) ->
    {ok, create_transit_gateway_peering_response(), tuple()} |
    {error, any()} |
    {error, create_transit_gateway_peering_errors(), tuple()}.
create_transit_gateway_peering(Client, Input) ->
    create_transit_gateway_peering(Client, Input, []).

-spec create_transit_gateway_peering(aws_client:aws_client(), create_transit_gateway_peering_request(), proplists:proplist()) ->
    {ok, create_transit_gateway_peering_response(), tuple()} |
    {error, any()} |
    {error, create_transit_gateway_peering_errors(), tuple()}.
create_transit_gateway_peering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/transit-gateway-peerings"],
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

%% @doc Creates a transit gateway route table attachment.
-spec create_transit_gateway_route_table_attachment(aws_client:aws_client(), create_transit_gateway_route_table_attachment_request()) ->
    {ok, create_transit_gateway_route_table_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_transit_gateway_route_table_attachment_errors(), tuple()}.
create_transit_gateway_route_table_attachment(Client, Input) ->
    create_transit_gateway_route_table_attachment(Client, Input, []).

-spec create_transit_gateway_route_table_attachment(aws_client:aws_client(), create_transit_gateway_route_table_attachment_request(), proplists:proplist()) ->
    {ok, create_transit_gateway_route_table_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_transit_gateway_route_table_attachment_errors(), tuple()}.
create_transit_gateway_route_table_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/transit-gateway-route-table-attachments"],
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

%% @doc Creates a VPC attachment on an edge location of a core network.
-spec create_vpc_attachment(aws_client:aws_client(), create_vpc_attachment_request()) ->
    {ok, create_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_attachment_errors(), tuple()}.
create_vpc_attachment(Client, Input) ->
    create_vpc_attachment(Client, Input, []).

-spec create_vpc_attachment(aws_client:aws_client(), create_vpc_attachment_request(), proplists:proplist()) ->
    {ok, create_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_attachment_errors(), tuple()}.
create_vpc_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vpc-attachments"],
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

%% @doc Deletes an attachment.
%%
%% Supports all attachment types.
-spec delete_attachment(aws_client:aws_client(), binary() | list(), delete_attachment_request()) ->
    {ok, delete_attachment_response(), tuple()} |
    {error, any()} |
    {error, delete_attachment_errors(), tuple()}.
delete_attachment(Client, AttachmentId, Input) ->
    delete_attachment(Client, AttachmentId, Input, []).

-spec delete_attachment(aws_client:aws_client(), binary() | list(), delete_attachment_request(), proplists:proplist()) ->
    {ok, delete_attachment_response(), tuple()} |
    {error, any()} |
    {error, delete_attachment_errors(), tuple()}.
delete_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), ""],
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

%% @doc Deletes a Connect peer.
-spec delete_connect_peer(aws_client:aws_client(), binary() | list(), delete_connect_peer_request()) ->
    {ok, delete_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, delete_connect_peer_errors(), tuple()}.
delete_connect_peer(Client, ConnectPeerId, Input) ->
    delete_connect_peer(Client, ConnectPeerId, Input, []).

-spec delete_connect_peer(aws_client:aws_client(), binary() | list(), delete_connect_peer_request(), proplists:proplist()) ->
    {ok, delete_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, delete_connect_peer_errors(), tuple()}.
delete_connect_peer(Client, ConnectPeerId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-peers/", aws_util:encode_uri(ConnectPeerId), ""],
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

%% @doc Deletes the specified connection in your global network.
-spec delete_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_connection_request()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, ConnectionId, GlobalNetworkId, Input) ->
    delete_connection(Client, ConnectionId, GlobalNetworkId, Input, []).

-spec delete_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_connection_request(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, ConnectionId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections/", aws_util:encode_uri(ConnectionId), ""],
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

%% @doc Deletes a core network along with all core network policies.
%%
%% This can only be done if there are no attachments on a core network.
-spec delete_core_network(aws_client:aws_client(), binary() | list(), delete_core_network_request()) ->
    {ok, delete_core_network_response(), tuple()} |
    {error, any()} |
    {error, delete_core_network_errors(), tuple()}.
delete_core_network(Client, CoreNetworkId, Input) ->
    delete_core_network(Client, CoreNetworkId, Input, []).

-spec delete_core_network(aws_client:aws_client(), binary() | list(), delete_core_network_request(), proplists:proplist()) ->
    {ok, delete_core_network_response(), tuple()} |
    {error, any()} |
    {error, delete_core_network_errors(), tuple()}.
delete_core_network(Client, CoreNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
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

%% @doc Deletes a policy version from a core network.
%%
%% You can't delete the current LIVE policy.
-spec delete_core_network_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_core_network_policy_version_request()) ->
    {ok, delete_core_network_policy_version_response(), tuple()} |
    {error, any()} |
    {error, delete_core_network_policy_version_errors(), tuple()}.
delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input) ->
    delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input, []).

-spec delete_core_network_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_core_network_policy_version_request(), proplists:proplist()) ->
    {ok, delete_core_network_policy_version_response(), tuple()} |
    {error, any()} |
    {error, delete_core_network_policy_version_errors(), tuple()}.
delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions/", aws_util:encode_uri(PolicyVersionId), ""],
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

%% @doc Deletes an existing device.
%%
%% You must first disassociate the device from any links and
%% customer gateways.
-spec delete_device(aws_client:aws_client(), binary() | list(), binary() | list(), delete_device_request()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, DeviceId, GlobalNetworkId, Input) ->
    delete_device(Client, DeviceId, GlobalNetworkId, Input, []).

-spec delete_device(aws_client:aws_client(), binary() | list(), binary() | list(), delete_device_request(), proplists:proplist()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, DeviceId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Deletes an existing global network.
%%
%% You must first delete all global network objects
%% (devices, links, and sites), deregister all transit gateways, and delete
%% any core networks.
-spec delete_global_network(aws_client:aws_client(), binary() | list(), delete_global_network_request()) ->
    {ok, delete_global_network_response(), tuple()} |
    {error, any()} |
    {error, delete_global_network_errors(), tuple()}.
delete_global_network(Client, GlobalNetworkId, Input) ->
    delete_global_network(Client, GlobalNetworkId, Input, []).

-spec delete_global_network(aws_client:aws_client(), binary() | list(), delete_global_network_request(), proplists:proplist()) ->
    {ok, delete_global_network_response(), tuple()} |
    {error, any()} |
    {error, delete_global_network_errors(), tuple()}.
delete_global_network(Client, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
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

%% @doc Deletes an existing link.
%%
%% You must first disassociate the link from any devices and
%% customer gateways.
-spec delete_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_link_request()) ->
    {ok, delete_link_response(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, GlobalNetworkId, LinkId, Input) ->
    delete_link(Client, GlobalNetworkId, LinkId, Input, []).

-spec delete_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_link_request(), proplists:proplist()) ->
    {ok, delete_link_response(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, GlobalNetworkId, LinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Deletes an existing peering connection.
-spec delete_peering(aws_client:aws_client(), binary() | list(), delete_peering_request()) ->
    {ok, delete_peering_response(), tuple()} |
    {error, any()} |
    {error, delete_peering_errors(), tuple()}.
delete_peering(Client, PeeringId, Input) ->
    delete_peering(Client, PeeringId, Input, []).

-spec delete_peering(aws_client:aws_client(), binary() | list(), delete_peering_request(), proplists:proplist()) ->
    {ok, delete_peering_response(), tuple()} |
    {error, any()} |
    {error, delete_peering_errors(), tuple()}.
delete_peering(Client, PeeringId, Input0, Options0) ->
    Method = delete,
    Path = ["/peerings/", aws_util:encode_uri(PeeringId), ""],
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

%% @doc Deletes a resource policy for the specified resource.
%%
%% This revokes the access of the principals specified in the resource
%% policy.
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
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Deletes an existing site.
%%
%% The site cannot be associated with any device or link.
-spec delete_site(aws_client:aws_client(), binary() | list(), binary() | list(), delete_site_request()) ->
    {ok, delete_site_response(), tuple()} |
    {error, any()} |
    {error, delete_site_errors(), tuple()}.
delete_site(Client, GlobalNetworkId, SiteId, Input) ->
    delete_site(Client, GlobalNetworkId, SiteId, Input, []).

-spec delete_site(aws_client:aws_client(), binary() | list(), binary() | list(), delete_site_request(), proplists:proplist()) ->
    {ok, delete_site_response(), tuple()} |
    {error, any()} |
    {error, delete_site_errors(), tuple()}.
delete_site(Client, GlobalNetworkId, SiteId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Deregisters a transit gateway from your global network.
%%
%% This action does not delete
%% your transit gateway, or modify any of its attachments. This action
%% removes any customer gateway associations.
-spec deregister_transit_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_transit_gateway_request()) ->
    {ok, deregister_transit_gateway_response(), tuple()} |
    {error, any()} |
    {error, deregister_transit_gateway_errors(), tuple()}.
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input) ->
    deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input, []).

-spec deregister_transit_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_transit_gateway_request(), proplists:proplist()) ->
    {ok, deregister_transit_gateway_response(), tuple()} |
    {error, any()} |
    {error, deregister_transit_gateway_errors(), tuple()}.
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations/", aws_util:encode_uri(TransitGatewayArn), ""],
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

%% @doc Describes one or more global networks.
%%
%% By default, all global networks are
%% described. To describe the objects in your global network, you must use
%% the appropriate
%% `Get*' action. For example, to list the transit gateways in your
%% global
%% network, use `GetTransitGatewayRegistrations'.
-spec describe_global_networks(aws_client:aws_client()) ->
    {ok, describe_global_networks_response(), tuple()} |
    {error, any()} |
    {error, describe_global_networks_errors(), tuple()}.
describe_global_networks(Client)
  when is_map(Client) ->
    describe_global_networks(Client, #{}, #{}).

-spec describe_global_networks(aws_client:aws_client(), map(), map()) ->
    {ok, describe_global_networks_response(), tuple()} |
    {error, any()} |
    {error, describe_global_networks_errors(), tuple()}.
describe_global_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_global_networks(Client, QueryMap, HeadersMap, []).

-spec describe_global_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_global_networks_response(), tuple()} |
    {error, any()} |
    {error, describe_global_networks_errors(), tuple()}.
describe_global_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"globalNetworkIds">>, maps:get(<<"globalNetworkIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a core network Connect peer from a device and a link.
-spec disassociate_connect_peer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_connect_peer_request()) ->
    {ok, disassociate_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_connect_peer_errors(), tuple()}.
disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input) ->
    disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input, []).

-spec disassociate_connect_peer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_connect_peer_request(), proplists:proplist()) ->
    {ok, disassociate_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_connect_peer_errors(), tuple()}.
disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations/", aws_util:encode_uri(ConnectPeerId), ""],
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

%% @doc Disassociates a customer gateway from a device and a link.
-spec disassociate_customer_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_customer_gateway_request()) ->
    {ok, disassociate_customer_gateway_response(), tuple()} |
    {error, any()} |
    {error, disassociate_customer_gateway_errors(), tuple()}.
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input) ->
    disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input, []).

-spec disassociate_customer_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_customer_gateway_request(), proplists:proplist()) ->
    {ok, disassociate_customer_gateway_response(), tuple()} |
    {error, any()} |
    {error, disassociate_customer_gateway_errors(), tuple()}.
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations/", aws_util:encode_uri(CustomerGatewayArn), ""],
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

%% @doc Disassociates an existing device from a link.
%%
%% You must first disassociate any customer
%% gateways that are associated with the link.
-spec disassociate_link(aws_client:aws_client(), binary() | list(), disassociate_link_request()) ->
    {ok, disassociate_link_response(), tuple()} |
    {error, any()} |
    {error, disassociate_link_errors(), tuple()}.
disassociate_link(Client, GlobalNetworkId, Input) ->
    disassociate_link(Client, GlobalNetworkId, Input, []).

-spec disassociate_link(aws_client:aws_client(), binary() | list(), disassociate_link_request(), proplists:proplist()) ->
    {ok, disassociate_link_response(), tuple()} |
    {error, any()} |
    {error, disassociate_link_errors(), tuple()}.
disassociate_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
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
                     {<<"deviceId">>, <<"DeviceId">>},
                     {<<"linkId">>, <<"LinkId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a transit gateway Connect peer from a device and link.
-spec disassociate_transit_gateway_connect_peer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_transit_gateway_connect_peer_request()) ->
    {ok, disassociate_transit_gateway_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_transit_gateway_connect_peer_errors(), tuple()}.
disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input) ->
    disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input, []).

-spec disassociate_transit_gateway_connect_peer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_transit_gateway_connect_peer_request(), proplists:proplist()) ->
    {ok, disassociate_transit_gateway_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_transit_gateway_connect_peer_errors(), tuple()}.
disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations/", aws_util:encode_uri(TransitGatewayConnectPeerArn), ""],
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

%% @doc Executes a change set on your core network.
%%
%% Deploys changes globally based on the policy submitted..
-spec execute_core_network_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), execute_core_network_change_set_request()) ->
    {ok, execute_core_network_change_set_response(), tuple()} |
    {error, any()} |
    {error, execute_core_network_change_set_errors(), tuple()}.
execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input) ->
    execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input, []).

-spec execute_core_network_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), execute_core_network_change_set_request(), proplists:proplist()) ->
    {ok, execute_core_network_change_set_response(), tuple()} |
    {error, any()} |
    {error, execute_core_network_change_set_errors(), tuple()}.
execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-sets/", aws_util:encode_uri(PolicyVersionId), "/execute"],
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

%% @doc Returns information about a core network Connect attachment.
-spec get_connect_attachment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connect_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_connect_attachment_errors(), tuple()}.
get_connect_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_connect_attachment(Client, AttachmentId, #{}, #{}).

-spec get_connect_attachment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connect_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_connect_attachment_errors(), tuple()}.
get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

-spec get_connect_attachment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connect_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_connect_attachment_errors(), tuple()}.
get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network Connect peer.
-spec get_connect_peer(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_errors(), tuple()}.
get_connect_peer(Client, ConnectPeerId)
  when is_map(Client) ->
    get_connect_peer(Client, ConnectPeerId, #{}, #{}).

-spec get_connect_peer(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_errors(), tuple()}.
get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap, []).

-spec get_connect_peer(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connect_peer_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_errors(), tuple()}.
get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-peers/", aws_util:encode_uri(ConnectPeerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network Connect peer associations.
-spec get_connect_peer_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_associations_errors(), tuple()}.
get_connect_peer_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_connect_peer_associations(Client, GlobalNetworkId, #{}, #{}).

-spec get_connect_peer_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_associations_errors(), tuple()}.
get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_connect_peer_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_connect_peer_associations_errors(), tuple()}.
get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"connectPeerIds">>, maps:get(<<"connectPeerIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your connections in a global
%% network.
-spec get_connections(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connections_response(), tuple()} |
    {error, any()} |
    {error, get_connections_errors(), tuple()}.
get_connections(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_connections(Client, GlobalNetworkId, #{}, #{}).

-spec get_connections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connections_response(), tuple()} |
    {error, any()} |
    {error, get_connections_errors(), tuple()}.
get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_connections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connections_response(), tuple()} |
    {error, any()} |
    {error, get_connections_errors(), tuple()}.
get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"connectionIds">>, maps:get(<<"connectionIds">>, QueryMap, undefined)},
        {<<"deviceId">>, maps:get(<<"deviceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the LIVE policy for a core network.
-spec get_core_network(aws_client:aws_client(), binary() | list()) ->
    {ok, get_core_network_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_errors(), tuple()}.
get_core_network(Client, CoreNetworkId)
  when is_map(Client) ->
    get_core_network(Client, CoreNetworkId, #{}, #{}).

-spec get_core_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_core_network_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_errors(), tuple()}.
get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap, []).

-spec get_core_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_network_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_errors(), tuple()}.
get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network change event.
-spec get_core_network_change_events(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_core_network_change_events_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_events_errors(), tuple()}.
get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId)
  when is_map(Client) ->
    get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, #{}, #{}).

-spec get_core_network_change_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_core_network_change_events_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_events_errors(), tuple()}.
get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, []).

-spec get_core_network_change_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_network_change_events_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_events_errors(), tuple()}.
get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-events/", aws_util:encode_uri(PolicyVersionId), ""],
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

%% @doc Returns a change set between the LIVE core network policy and a
%% submitted policy.
-spec get_core_network_change_set(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_core_network_change_set_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_set_errors(), tuple()}.
get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId)
  when is_map(Client) ->
    get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, #{}, #{}).

-spec get_core_network_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_core_network_change_set_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_set_errors(), tuple()}.
get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, []).

-spec get_core_network_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_network_change_set_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_change_set_errors(), tuple()}.
get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-sets/", aws_util:encode_uri(PolicyVersionId), ""],
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

%% @doc Returns details about a core network policy.
%%
%% You can get details about your current live policy or any previous policy
%% version.
-spec get_core_network_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_core_network_policy_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_policy_errors(), tuple()}.
get_core_network_policy(Client, CoreNetworkId)
  when is_map(Client) ->
    get_core_network_policy(Client, CoreNetworkId, #{}, #{}).

-spec get_core_network_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_core_network_policy_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_policy_errors(), tuple()}.
get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap, []).

-spec get_core_network_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_network_policy_response(), tuple()} |
    {error, any()} |
    {error, get_core_network_policy_errors(), tuple()}.
get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"policyVersionId">>, maps:get(<<"policyVersionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the association information for customer gateways that are
%% associated with
%% devices and links in your global network.
-spec get_customer_gateway_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_customer_gateway_associations_response(), tuple()} |
    {error, any()} |
    {error, get_customer_gateway_associations_errors(), tuple()}.
get_customer_gateway_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_customer_gateway_associations(Client, GlobalNetworkId, #{}, #{}).

-spec get_customer_gateway_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_customer_gateway_associations_response(), tuple()} |
    {error, any()} |
    {error, get_customer_gateway_associations_errors(), tuple()}.
get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_customer_gateway_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_customer_gateway_associations_response(), tuple()} |
    {error, any()} |
    {error, get_customer_gateway_associations_errors(), tuple()}.
get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"customerGatewayArns">>, maps:get(<<"customerGatewayArns">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your devices in a global
%% network.
-spec get_devices(aws_client:aws_client(), binary() | list()) ->
    {ok, get_devices_response(), tuple()} |
    {error, any()} |
    {error, get_devices_errors(), tuple()}.
get_devices(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_devices(Client, GlobalNetworkId, #{}, #{}).

-spec get_devices(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_devices_response(), tuple()} |
    {error, any()} |
    {error, get_devices_errors(), tuple()}.
get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_devices(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_devices_response(), tuple()} |
    {error, any()} |
    {error, get_devices_errors(), tuple()}.
get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deviceIds">>, maps:get(<<"deviceIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"siteId">>, maps:get(<<"siteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific Amazon Web Services Direct
%% Connect gateway attachment.
-spec get_direct_connect_gateway_attachment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_direct_connect_gateway_attachment_errors(), tuple()}.
get_direct_connect_gateway_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_direct_connect_gateway_attachment(Client, AttachmentId, #{}, #{}).

-spec get_direct_connect_gateway_attachment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_direct_connect_gateway_attachment_errors(), tuple()}.
get_direct_connect_gateway_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_direct_connect_gateway_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

-spec get_direct_connect_gateway_attachment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_direct_connect_gateway_attachment_errors(), tuple()}.
get_direct_connect_gateway_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/direct-connect-gateway-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the link associations for a device or a link.
%%
%% Either the device ID or the link ID
%% must be specified.
-spec get_link_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_link_associations_response(), tuple()} |
    {error, any()} |
    {error, get_link_associations_errors(), tuple()}.
get_link_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_link_associations(Client, GlobalNetworkId, #{}, #{}).

-spec get_link_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_link_associations_response(), tuple()} |
    {error, any()} |
    {error, get_link_associations_errors(), tuple()}.
get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_link_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_link_associations_response(), tuple()} |
    {error, any()} |
    {error, get_link_associations_errors(), tuple()}.
get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deviceId">>, maps:get(<<"deviceId">>, QueryMap, undefined)},
        {<<"linkId">>, maps:get(<<"linkId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more links in a specified global
%% network.
%%
%% If you specify the site ID, you cannot specify the type or provider in the
%% same request. You can specify the type and provider in the same request.
-spec get_links(aws_client:aws_client(), binary() | list()) ->
    {ok, get_links_response(), tuple()} |
    {error, any()} |
    {error, get_links_errors(), tuple()}.
get_links(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_links(Client, GlobalNetworkId, #{}, #{}).

-spec get_links(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_links_response(), tuple()} |
    {error, any()} |
    {error, get_links_errors(), tuple()}.
get_links(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_links(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_links(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_links_response(), tuple()} |
    {error, any()} |
    {error, get_links_errors(), tuple()}.
get_links(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"linkIds">>, maps:get(<<"linkIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"provider">>, maps:get(<<"provider">>, QueryMap, undefined)},
        {<<"siteId">>, maps:get(<<"siteId">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the count of network resources, by resource type, for the
%% specified global network.
-spec get_network_resource_counts(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_counts_errors(), tuple()}.
get_network_resource_counts(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resource_counts(Client, GlobalNetworkId, #{}, #{}).

-spec get_network_resource_counts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_counts_errors(), tuple()}.
get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_network_resource_counts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_counts_errors(), tuple()}.
get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resource-count"],
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
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the network resource relationships for the specified global
%% network.
-spec get_network_resource_relationships(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_resource_relationships_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_relationships_errors(), tuple()}.
get_network_resource_relationships(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resource_relationships(Client, GlobalNetworkId, #{}, #{}).

-spec get_network_resource_relationships(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_resource_relationships_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_relationships_errors(), tuple()}.
get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_network_resource_relationships(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_resource_relationships_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_relationships_errors(), tuple()}.
get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resource-relationships"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"awsRegion">>, maps:get(<<"awsRegion">>, QueryMap, undefined)},
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registeredGatewayArn">>, maps:get(<<"registeredGatewayArn">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the network resources for the specified global network.
%%
%% The results include information from the corresponding Describe call for
%% the resource, minus any sensitive information such as pre-shared keys.
-spec get_network_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_resources_response(), tuple()} |
    {error, any()} |
    {error, get_network_resources_errors(), tuple()}.
get_network_resources(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resources(Client, GlobalNetworkId, #{}, #{}).

-spec get_network_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_resources_response(), tuple()} |
    {error, any()} |
    {error, get_network_resources_errors(), tuple()}.
get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_network_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_resources_response(), tuple()} |
    {error, any()} |
    {error, get_network_resources_errors(), tuple()}.
get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"awsRegion">>, maps:get(<<"awsRegion">>, QueryMap, undefined)},
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registeredGatewayArn">>, maps:get(<<"registeredGatewayArn">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the network routes of the specified global network.
-spec get_network_routes(aws_client:aws_client(), binary() | list(), get_network_routes_request()) ->
    {ok, get_network_routes_response(), tuple()} |
    {error, any()} |
    {error, get_network_routes_errors(), tuple()}.
get_network_routes(Client, GlobalNetworkId, Input) ->
    get_network_routes(Client, GlobalNetworkId, Input, []).

-spec get_network_routes(aws_client:aws_client(), binary() | list(), get_network_routes_request(), proplists:proplist()) ->
    {ok, get_network_routes_response(), tuple()} |
    {error, any()} |
    {error, get_network_routes_errors(), tuple()}.
get_network_routes(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-routes"],
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

%% @doc Gets the network telemetry of the specified global network.
-spec get_network_telemetry(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_telemetry_response(), tuple()} |
    {error, any()} |
    {error, get_network_telemetry_errors(), tuple()}.
get_network_telemetry(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_telemetry(Client, GlobalNetworkId, #{}, #{}).

-spec get_network_telemetry(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_telemetry_response(), tuple()} |
    {error, any()} |
    {error, get_network_telemetry_errors(), tuple()}.
get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_network_telemetry(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_telemetry_response(), tuple()} |
    {error, any()} |
    {error, get_network_telemetry_errors(), tuple()}.
get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-telemetry"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"awsRegion">>, maps:get(<<"awsRegion">>, QueryMap, undefined)},
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registeredGatewayArn">>, maps:get(<<"registeredGatewayArn">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a resource policy.
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
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified route analysis.
-spec get_route_analysis(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_route_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_route_analysis_errors(), tuple()}.
get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId)
  when is_map(Client) ->
    get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, #{}, #{}).

-spec get_route_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_route_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_route_analysis_errors(), tuple()}.
get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap, []).

-spec get_route_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_route_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_route_analysis_errors(), tuple()}.
get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/route-analyses/", aws_util:encode_uri(RouteAnalysisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a site-to-site VPN attachment.
-spec get_site_to_site_vpn_attachment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_site_to_site_vpn_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_site_to_site_vpn_attachment_errors(), tuple()}.
get_site_to_site_vpn_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_site_to_site_vpn_attachment(Client, AttachmentId, #{}, #{}).

-spec get_site_to_site_vpn_attachment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_site_to_site_vpn_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_site_to_site_vpn_attachment_errors(), tuple()}.
get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

-spec get_site_to_site_vpn_attachment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_site_to_site_vpn_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_site_to_site_vpn_attachment_errors(), tuple()}.
get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/site-to-site-vpn-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your sites in a global network.
-spec get_sites(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sites_response(), tuple()} |
    {error, any()} |
    {error, get_sites_errors(), tuple()}.
get_sites(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_sites(Client, GlobalNetworkId, #{}, #{}).

-spec get_sites(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sites_response(), tuple()} |
    {error, any()} |
    {error, get_sites_errors(), tuple()}.
get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_sites(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sites_response(), tuple()} |
    {error, any()} |
    {error, get_sites_errors(), tuple()}.
get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
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
        {<<"siteIds">>, maps:get(<<"siteIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your transit gateway Connect
%% peer associations in a global network.
-spec get_transit_gateway_connect_peer_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_transit_gateway_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_connect_peer_associations_errors(), tuple()}.
get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, #{}, #{}).

-spec get_transit_gateway_connect_peer_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_transit_gateway_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_connect_peer_associations_errors(), tuple()}.
get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_transit_gateway_connect_peer_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_transit_gateway_connect_peer_associations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_connect_peer_associations_errors(), tuple()}.
get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations"],
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
        {<<"transitGatewayConnectPeerArns">>, maps:get(<<"transitGatewayConnectPeerArns">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a transit gateway peer.
-spec get_transit_gateway_peering(aws_client:aws_client(), binary() | list()) ->
    {ok, get_transit_gateway_peering_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_peering_errors(), tuple()}.
get_transit_gateway_peering(Client, PeeringId)
  when is_map(Client) ->
    get_transit_gateway_peering(Client, PeeringId, #{}, #{}).

-spec get_transit_gateway_peering(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_transit_gateway_peering_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_peering_errors(), tuple()}.
get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap, []).

-spec get_transit_gateway_peering(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_transit_gateway_peering_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_peering_errors(), tuple()}.
get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/transit-gateway-peerings/", aws_util:encode_uri(PeeringId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the transit gateway registrations in a
%% specified
%% global network.
-spec get_transit_gateway_registrations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_transit_gateway_registrations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_registrations_errors(), tuple()}.
get_transit_gateway_registrations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_transit_gateway_registrations(Client, GlobalNetworkId, #{}, #{}).

-spec get_transit_gateway_registrations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_transit_gateway_registrations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_registrations_errors(), tuple()}.
get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

-spec get_transit_gateway_registrations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_transit_gateway_registrations_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_registrations_errors(), tuple()}.
get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
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
        {<<"transitGatewayArns">>, maps:get(<<"transitGatewayArns">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a transit gateway route table attachment.
-spec get_transit_gateway_route_table_attachment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_transit_gateway_route_table_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_route_table_attachment_errors(), tuple()}.
get_transit_gateway_route_table_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_transit_gateway_route_table_attachment(Client, AttachmentId, #{}, #{}).

-spec get_transit_gateway_route_table_attachment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_transit_gateway_route_table_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_route_table_attachment_errors(), tuple()}.
get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

-spec get_transit_gateway_route_table_attachment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_transit_gateway_route_table_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_transit_gateway_route_table_attachment_errors(), tuple()}.
get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/transit-gateway-route-table-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a VPC attachment.
-spec get_vpc_attachment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_attachment_errors(), tuple()}.
get_vpc_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_vpc_attachment(Client, AttachmentId, #{}, #{}).

-spec get_vpc_attachment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_attachment_errors(), tuple()}.
get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

-spec get_vpc_attachment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_attachment_errors(), tuple()}.
get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpc-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of core network attachments.
-spec list_attachments(aws_client:aws_client()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client)
  when is_map(Client) ->
    list_attachments(Client, #{}, #{}).

-spec list_attachments(aws_client:aws_client(), map(), map()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attachments(Client, QueryMap, HeadersMap, []).

-spec list_attachments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attachments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"attachmentType">>, maps:get(<<"attachmentType">>, QueryMap, undefined)},
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"edgeLocation">>, maps:get(<<"edgeLocation">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of core network Connect peers.
-spec list_connect_peers(aws_client:aws_client()) ->
    {ok, list_connect_peers_response(), tuple()} |
    {error, any()} |
    {error, list_connect_peers_errors(), tuple()}.
list_connect_peers(Client)
  when is_map(Client) ->
    list_connect_peers(Client, #{}, #{}).

-spec list_connect_peers(aws_client:aws_client(), map(), map()) ->
    {ok, list_connect_peers_response(), tuple()} |
    {error, any()} |
    {error, list_connect_peers_errors(), tuple()}.
list_connect_peers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connect_peers(Client, QueryMap, HeadersMap, []).

-spec list_connect_peers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_connect_peers_response(), tuple()} |
    {error, any()} |
    {error, list_connect_peers_errors(), tuple()}.
list_connect_peers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-peers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"connectAttachmentId">>, maps:get(<<"connectAttachmentId">>, QueryMap, undefined)},
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of core network policy versions.
-spec list_core_network_policy_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_core_network_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_network_policy_versions_errors(), tuple()}.
list_core_network_policy_versions(Client, CoreNetworkId)
  when is_map(Client) ->
    list_core_network_policy_versions(Client, CoreNetworkId, #{}, #{}).

-spec list_core_network_policy_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_core_network_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_network_policy_versions_errors(), tuple()}.
list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap, []).

-spec list_core_network_policy_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_core_network_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_network_policy_versions_errors(), tuple()}.
list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions"],
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

%% @doc Returns a list of owned and shared core networks.
-spec list_core_networks(aws_client:aws_client()) ->
    {ok, list_core_networks_response(), tuple()} |
    {error, any()} |
    {error, list_core_networks_errors(), tuple()}.
list_core_networks(Client)
  when is_map(Client) ->
    list_core_networks(Client, #{}, #{}).

-spec list_core_networks(aws_client:aws_client(), map(), map()) ->
    {ok, list_core_networks_response(), tuple()} |
    {error, any()} |
    {error, list_core_networks_errors(), tuple()}.
list_core_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_networks(Client, QueryMap, HeadersMap, []).

-spec list_core_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_core_networks_response(), tuple()} |
    {error, any()} |
    {error, list_core_networks_errors(), tuple()}.
list_core_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks"],
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

%% @doc Gets the status of the Service Linked Role (SLR) deployment for the
%% accounts in a given Amazon Web Services Organization.
-spec list_organization_service_access_status(aws_client:aws_client()) ->
    {ok, list_organization_service_access_status_response(), tuple()} |
    {error, any()}.
list_organization_service_access_status(Client)
  when is_map(Client) ->
    list_organization_service_access_status(Client, #{}, #{}).

-spec list_organization_service_access_status(aws_client:aws_client(), map(), map()) ->
    {ok, list_organization_service_access_status_response(), tuple()} |
    {error, any()}.
list_organization_service_access_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_service_access_status(Client, QueryMap, HeadersMap, []).

-spec list_organization_service_access_status(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_service_access_status_response(), tuple()} |
    {error, any()}.
list_organization_service_access_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organizations/service-access"],
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

%% @doc Lists the peerings for a core network.
-spec list_peerings(aws_client:aws_client()) ->
    {ok, list_peerings_response(), tuple()} |
    {error, any()} |
    {error, list_peerings_errors(), tuple()}.
list_peerings(Client)
  when is_map(Client) ->
    list_peerings(Client, #{}, #{}).

-spec list_peerings(aws_client:aws_client(), map(), map()) ->
    {ok, list_peerings_response(), tuple()} |
    {error, any()} |
    {error, list_peerings_errors(), tuple()}.
list_peerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_peerings(Client, QueryMap, HeadersMap, []).

-spec list_peerings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_peerings_response(), tuple()} |
    {error, any()} |
    {error, list_peerings_errors(), tuple()}.
list_peerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/peerings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"coreNetworkId">>, maps:get(<<"coreNetworkId">>, QueryMap, undefined)},
        {<<"edgeLocation">>, maps:get(<<"edgeLocation">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"peeringType">>, maps:get(<<"peeringType">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a specified resource.
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

%% @doc Creates a new, immutable version of a core network policy.
%%
%% A subsequent change set is created showing the differences between the
%% LIVE policy and the submitted policy.
-spec put_core_network_policy(aws_client:aws_client(), binary() | list(), put_core_network_policy_request()) ->
    {ok, put_core_network_policy_response(), tuple()} |
    {error, any()} |
    {error, put_core_network_policy_errors(), tuple()}.
put_core_network_policy(Client, CoreNetworkId, Input) ->
    put_core_network_policy(Client, CoreNetworkId, Input, []).

-spec put_core_network_policy(aws_client:aws_client(), binary() | list(), put_core_network_policy_request(), proplists:proplist()) ->
    {ok, put_core_network_policy_response(), tuple()} |
    {error, any()} |
    {error, put_core_network_policy_errors(), tuple()}.
put_core_network_policy(Client, CoreNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy"],
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

%% @doc Creates or updates a resource policy.
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
    Method = post,
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Registers a transit gateway in your global network.
%%
%% Not all Regions support transit
%% gateways for global networks. For a list of the supported Regions, see
%% Region Availability:
%% https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions
%% in the Amazon Web Services Transit Gateways for Global
%% Networks User Guide. The transit gateway can be in any of the supported
%% Amazon Web Services Regions, but it must be owned by the same Amazon Web
%% Services account that owns the global
%% network. You cannot register a transit gateway in more than one global
%% network.
-spec register_transit_gateway(aws_client:aws_client(), binary() | list(), register_transit_gateway_request()) ->
    {ok, register_transit_gateway_response(), tuple()} |
    {error, any()} |
    {error, register_transit_gateway_errors(), tuple()}.
register_transit_gateway(Client, GlobalNetworkId, Input) ->
    register_transit_gateway(Client, GlobalNetworkId, Input, []).

-spec register_transit_gateway(aws_client:aws_client(), binary() | list(), register_transit_gateway_request(), proplists:proplist()) ->
    {ok, register_transit_gateway_response(), tuple()} |
    {error, any()} |
    {error, register_transit_gateway_errors(), tuple()}.
register_transit_gateway(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
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

%% @doc Rejects a core network attachment request.
-spec reject_attachment(aws_client:aws_client(), binary() | list(), reject_attachment_request()) ->
    {ok, reject_attachment_response(), tuple()} |
    {error, any()} |
    {error, reject_attachment_errors(), tuple()}.
reject_attachment(Client, AttachmentId, Input) ->
    reject_attachment(Client, AttachmentId, Input, []).

-spec reject_attachment(aws_client:aws_client(), binary() | list(), reject_attachment_request(), proplists:proplist()) ->
    {ok, reject_attachment_response(), tuple()} |
    {error, any()} |
    {error, reject_attachment_errors(), tuple()}.
reject_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = post,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), "/reject"],
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

%% @doc Restores a previous policy version as a new, immutable version of a
%% core network policy.
%%
%% A subsequent change set is created showing the differences between the
%% LIVE policy and restored policy.
-spec restore_core_network_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), restore_core_network_policy_version_request()) ->
    {ok, restore_core_network_policy_version_response(), tuple()} |
    {error, any()} |
    {error, restore_core_network_policy_version_errors(), tuple()}.
restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input) ->
    restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input, []).

-spec restore_core_network_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), restore_core_network_policy_version_request(), proplists:proplist()) ->
    {ok, restore_core_network_policy_version_response(), tuple()} |
    {error, any()} |
    {error, restore_core_network_policy_version_errors(), tuple()}.
restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions/", aws_util:encode_uri(PolicyVersionId), "/restore"],
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

%% @doc Enables the Network Manager service for an Amazon Web Services
%% Organization.
%%
%% This can only be called by a management account within the organization.
-spec start_organization_service_access_update(aws_client:aws_client(), start_organization_service_access_update_request()) ->
    {ok, start_organization_service_access_update_response(), tuple()} |
    {error, any()} |
    {error, start_organization_service_access_update_errors(), tuple()}.
start_organization_service_access_update(Client, Input) ->
    start_organization_service_access_update(Client, Input, []).

-spec start_organization_service_access_update(aws_client:aws_client(), start_organization_service_access_update_request(), proplists:proplist()) ->
    {ok, start_organization_service_access_update_response(), tuple()} |
    {error, any()} |
    {error, start_organization_service_access_update_errors(), tuple()}.
start_organization_service_access_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organizations/service-access"],
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

%% @doc Starts analyzing the routing path between the specified source and
%% destination.
%%
%% For more information,
%% see Route Analyzer:
%% https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html.
-spec start_route_analysis(aws_client:aws_client(), binary() | list(), start_route_analysis_request()) ->
    {ok, start_route_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_route_analysis_errors(), tuple()}.
start_route_analysis(Client, GlobalNetworkId, Input) ->
    start_route_analysis(Client, GlobalNetworkId, Input, []).

-spec start_route_analysis(aws_client:aws_client(), binary() | list(), start_route_analysis_request(), proplists:proplist()) ->
    {ok, start_route_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_route_analysis_errors(), tuple()}.
start_route_analysis(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/route-analyses"],
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

%% @doc Tags a specified resource.
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

%% @doc Removes tags from a specified resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the information for an existing connection.
%%
%% To remove information for any of the parameters,
%% specify an empty string.
-spec update_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_connection_request()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, ConnectionId, GlobalNetworkId, Input) ->
    update_connection(Client, ConnectionId, GlobalNetworkId, Input, []).

-spec update_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_connection_request(), proplists:proplist()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, ConnectionId, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections/", aws_util:encode_uri(ConnectionId), ""],
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

%% @doc Updates the description of a core network.
-spec update_core_network(aws_client:aws_client(), binary() | list(), update_core_network_request()) ->
    {ok, update_core_network_response(), tuple()} |
    {error, any()} |
    {error, update_core_network_errors(), tuple()}.
update_core_network(Client, CoreNetworkId, Input) ->
    update_core_network(Client, CoreNetworkId, Input, []).

-spec update_core_network(aws_client:aws_client(), binary() | list(), update_core_network_request(), proplists:proplist()) ->
    {ok, update_core_network_response(), tuple()} |
    {error, any()} |
    {error, update_core_network_errors(), tuple()}.
update_core_network(Client, CoreNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
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

%% @doc Updates the details for an existing device.
%%
%% To remove information for any of the
%% parameters, specify an empty string.
-spec update_device(aws_client:aws_client(), binary() | list(), binary() | list(), update_device_request()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, DeviceId, GlobalNetworkId, Input) ->
    update_device(Client, DeviceId, GlobalNetworkId, Input, []).

-spec update_device(aws_client:aws_client(), binary() | list(), binary() | list(), update_device_request(), proplists:proplist()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, DeviceId, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Updates the edge locations associated with an Amazon Web Services
%% Direct Connect gateway attachment.
-spec update_direct_connect_gateway_attachment(aws_client:aws_client(), binary() | list(), update_direct_connect_gateway_attachment_request()) ->
    {ok, update_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_attachment_errors(), tuple()}.
update_direct_connect_gateway_attachment(Client, AttachmentId, Input) ->
    update_direct_connect_gateway_attachment(Client, AttachmentId, Input, []).

-spec update_direct_connect_gateway_attachment(aws_client:aws_client(), binary() | list(), update_direct_connect_gateway_attachment_request(), proplists:proplist()) ->
    {ok, update_direct_connect_gateway_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_direct_connect_gateway_attachment_errors(), tuple()}.
update_direct_connect_gateway_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/direct-connect-gateway-attachments/", aws_util:encode_uri(AttachmentId), ""],
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

%% @doc Updates an existing global network.
%%
%% To remove information for any of the parameters,
%% specify an empty string.
-spec update_global_network(aws_client:aws_client(), binary() | list(), update_global_network_request()) ->
    {ok, update_global_network_response(), tuple()} |
    {error, any()} |
    {error, update_global_network_errors(), tuple()}.
update_global_network(Client, GlobalNetworkId, Input) ->
    update_global_network(Client, GlobalNetworkId, Input, []).

-spec update_global_network(aws_client:aws_client(), binary() | list(), update_global_network_request(), proplists:proplist()) ->
    {ok, update_global_network_response(), tuple()} |
    {error, any()} |
    {error, update_global_network_errors(), tuple()}.
update_global_network(Client, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
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

%% @doc Updates the details for an existing link.
%%
%% To remove information for any of the
%% parameters, specify an empty string.
-spec update_link(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_request()) ->
    {ok, update_link_response(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, GlobalNetworkId, LinkId, Input) ->
    update_link(Client, GlobalNetworkId, LinkId, Input, []).

-spec update_link(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_request(), proplists:proplist()) ->
    {ok, update_link_response(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, GlobalNetworkId, LinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Updates the resource metadata for the specified global network.
-spec update_network_resource_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_network_resource_metadata_request()) ->
    {ok, update_network_resource_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_network_resource_metadata_errors(), tuple()}.
update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input) ->
    update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input, []).

-spec update_network_resource_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_network_resource_metadata_request(), proplists:proplist()) ->
    {ok, update_network_resource_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_network_resource_metadata_errors(), tuple()}.
update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resources/", aws_util:encode_uri(ResourceArn), "/metadata"],
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

%% @doc Updates the information for an existing site.
%%
%% To remove information for any of the
%% parameters, specify an empty string.
-spec update_site(aws_client:aws_client(), binary() | list(), binary() | list(), update_site_request()) ->
    {ok, update_site_response(), tuple()} |
    {error, any()} |
    {error, update_site_errors(), tuple()}.
update_site(Client, GlobalNetworkId, SiteId, Input) ->
    update_site(Client, GlobalNetworkId, SiteId, Input, []).

-spec update_site(aws_client:aws_client(), binary() | list(), binary() | list(), update_site_request(), proplists:proplist()) ->
    {ok, update_site_response(), tuple()} |
    {error, any()} |
    {error, update_site_errors(), tuple()}.
update_site(Client, GlobalNetworkId, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Updates a VPC attachment.
-spec update_vpc_attachment(aws_client:aws_client(), binary() | list(), update_vpc_attachment_request()) ->
    {ok, update_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_attachment_errors(), tuple()}.
update_vpc_attachment(Client, AttachmentId, Input) ->
    update_vpc_attachment(Client, AttachmentId, Input, []).

-spec update_vpc_attachment(aws_client:aws_client(), binary() | list(), update_vpc_attachment_request(), proplists:proplist()) ->
    {ok, update_vpc_attachment_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_attachment_errors(), tuple()}.
update_vpc_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/vpc-attachments/", aws_util:encode_uri(AttachmentId), ""],
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
    Client1 = Client#{service => <<"networkmanager">>,
                      region => <<"us-west-2">>},
    Host = build_host(<<"networkmanager">>, Client1),
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
  jsx:encode(Input).
