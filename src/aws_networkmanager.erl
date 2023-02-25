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

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a core network attachment request.
%%
%% Once the attachment request is accepted by a core network owner, the
%% attachment is created and connected to a core network.
accept_attachment(Client, AttachmentId, Input) ->
    accept_attachment(Client, AttachmentId, Input, []).
accept_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = post,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), "/accept"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% You can only associate core network Connect peers that have been created
%% on a core network Connect attachment on a core network.
associate_connect_peer(Client, GlobalNetworkId, Input) ->
    associate_connect_peer(Client, GlobalNetworkId, Input, []).
associate_connect_peer(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If you specify a link, it must be associated with the specified device.
%%
%% You can only associate customer gateways that are connected to a VPN
%% attachment on a transit gateway or core network registered in your global
%% network. When you register a transit gateway or core network, customer
%% gateways that are connected to the transit gateway are automatically
%% included in the global network. To list customer gateways that are
%% connected to a transit gateway, use the DescribeVpnConnections EC2 API and
%% filter by `transit-gateway-id'.
%%
%% You cannot associate a customer gateway with more than one device and
%% link.
associate_customer_gateway(Client, GlobalNetworkId, Input) ->
    associate_customer_gateway(Client, GlobalNetworkId, Input, []).
associate_customer_gateway(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
associate_link(Client, GlobalNetworkId, Input) ->
    associate_link(Client, GlobalNetworkId, Input, []).
associate_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If you specify a link, it must be associated with the specified device.
%%
%% You can only associate transit gateway Connect peers that have been
%% created on a transit gateway that's registered in your global network.
%%
%% You cannot associate a transit gateway Connect peer with more than one
%% device and link.
associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input) ->
    associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input, []).
associate_transit_gateway_connect_peer(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% you can use to establish a connection between a core network and an
%% appliance. A core network Connect attachment uses an existing VPC
%% attachment as the underlying transport mechanism.
create_connect_attachment(Client, Input) ->
    create_connect_attachment(Client, Input, []).
create_connect_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connect-attachments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
create_connect_peer(Client, Input) ->
    create_connect_peer(Client, Input, []).
create_connect_peer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connect-peers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
create_connection(Client, GlobalNetworkId, Input) ->
    create_connection(Client, GlobalNetworkId, Input, []).
create_connection(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a core network as part of your global network, and
%% optionally, with a core network policy.
create_core_network(Client, Input) ->
    create_core_network(Client, Input, []).
create_core_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new device in a global network.
%%
%% If you specify both a site ID and a location, the location of the site is
%% used for visualization in the Network Manager console.
create_device(Client, GlobalNetworkId, Input) ->
    create_device(Client, GlobalNetworkId, Input, []).
create_device(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new, empty global network.
create_global_network(Client, Input) ->
    create_global_network(Client, Input, []).
create_global_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new link for a specified site.
create_link(Client, GlobalNetworkId, Input) ->
    create_link(Client, GlobalNetworkId, Input, []).
create_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new site in a global network.
create_site(Client, GlobalNetworkId, Input) ->
    create_site(Client, GlobalNetworkId, Input, []).
create_site(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Web Services site-to-site VPN attachment on an edge
%% location of a core network.
create_site_to_site_vpn_attachment(Client, Input) ->
    create_site_to_site_vpn_attachment(Client, Input, []).
create_site_to_site_vpn_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/site-to-site-vpn-attachments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a transit gateway peering connection.
create_transit_gateway_peering(Client, Input) ->
    create_transit_gateway_peering(Client, Input, []).
create_transit_gateway_peering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/transit-gateway-peerings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a transit gateway route table attachment.
create_transit_gateway_route_table_attachment(Client, Input) ->
    create_transit_gateway_route_table_attachment(Client, Input, []).
create_transit_gateway_route_table_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/transit-gateway-route-table-attachments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a VPC attachment on an edge location of a core network.
create_vpc_attachment(Client, Input) ->
    create_vpc_attachment(Client, Input, []).
create_vpc_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vpc-attachments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_attachment(Client, AttachmentId, Input) ->
    delete_attachment(Client, AttachmentId, Input, []).
delete_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Connect peer.
delete_connect_peer(Client, ConnectPeerId, Input) ->
    delete_connect_peer(Client, ConnectPeerId, Input, []).
delete_connect_peer(Client, ConnectPeerId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-peers/", aws_util:encode_uri(ConnectPeerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified connection in your global network.
delete_connection(Client, ConnectionId, GlobalNetworkId, Input) ->
    delete_connection(Client, ConnectionId, GlobalNetworkId, Input, []).
delete_connection(Client, ConnectionId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_core_network(Client, CoreNetworkId, Input) ->
    delete_core_network(Client, CoreNetworkId, Input, []).
delete_core_network(Client, CoreNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input) ->
    delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input, []).
delete_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing device.
%%
%% You must first disassociate the device from any links and customer
%% gateways.
delete_device(Client, DeviceId, GlobalNetworkId, Input) ->
    delete_device(Client, DeviceId, GlobalNetworkId, Input, []).
delete_device(Client, DeviceId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing global network.
%%
%% You must first delete all global network objects (devices, links, and
%% sites), deregister all transit gateways, and delete any core networks.
delete_global_network(Client, GlobalNetworkId, Input) ->
    delete_global_network(Client, GlobalNetworkId, Input, []).
delete_global_network(Client, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing link.
%%
%% You must first disassociate the link from any devices and customer
%% gateways.
delete_link(Client, GlobalNetworkId, LinkId, Input) ->
    delete_link(Client, GlobalNetworkId, LinkId, Input, []).
delete_link(Client, GlobalNetworkId, LinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing peering connection.
delete_peering(Client, PeeringId, Input) ->
    delete_peering(Client, PeeringId, Input, []).
delete_peering(Client, PeeringId, Input0, Options0) ->
    Method = delete,
    Path = ["/peerings/", aws_util:encode_uri(PeeringId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_site(Client, GlobalNetworkId, SiteId, Input) ->
    delete_site(Client, GlobalNetworkId, SiteId, Input, []).
delete_site(Client, GlobalNetworkId, SiteId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a transit gateway from your global network.
%%
%% This action does not delete your transit gateway, or modify any of its
%% attachments. This action removes any customer gateway associations.
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input) ->
    deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input, []).
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations/", aws_util:encode_uri(TransitGatewayArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more global networks.
%%
%% By default, all global networks are described. To describe the objects in
%% your global network, you must use the appropriate `Get*' action. For
%% example, to list the transit gateways in your global network, use
%% `GetTransitGatewayRegistrations'.
describe_global_networks(Client)
  when is_map(Client) ->
    describe_global_networks(Client, #{}, #{}).

describe_global_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_global_networks(Client, QueryMap, HeadersMap, []).

describe_global_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input) ->
    disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input, []).
disassociate_connect_peer(Client, ConnectPeerId, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations/", aws_util:encode_uri(ConnectPeerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a customer gateway from a device and a link.
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input) ->
    disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input, []).
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations/", aws_util:encode_uri(CustomerGatewayArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an existing device from a link.
%%
%% You must first disassociate any customer gateways that are associated with
%% the link.
disassociate_link(Client, GlobalNetworkId, Input) ->
    disassociate_link(Client, GlobalNetworkId, Input, []).
disassociate_link(Client, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input) ->
    disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input, []).
disassociate_transit_gateway_connect_peer(Client, GlobalNetworkId, TransitGatewayConnectPeerArn, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations/", aws_util:encode_uri(TransitGatewayConnectPeerArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input) ->
    execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input, []).
execute_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-sets/", aws_util:encode_uri(PolicyVersionId), "/execute"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a core network Connect attachment.
get_connect_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_connect_attachment(Client, AttachmentId, #{}, #{}).

get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

get_connect_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network Connect peer.
get_connect_peer(Client, ConnectPeerId)
  when is_map(Client) ->
    get_connect_peer(Client, ConnectPeerId, #{}, #{}).

get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap, []).

get_connect_peer(Client, ConnectPeerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-peers/", aws_util:encode_uri(ConnectPeerId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network Connect peer associations.
get_connect_peer_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_connect_peer_associations(Client, GlobalNetworkId, #{}, #{}).

get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connect-peer-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_connections(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_connections(Client, GlobalNetworkId, #{}, #{}).

get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_connections(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_core_network(Client, CoreNetworkId)
  when is_map(Client) ->
    get_core_network(Client, CoreNetworkId, #{}, #{}).

get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap, []).

get_core_network(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a core network change event.
get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId)
  when is_map(Client) ->
    get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, #{}, #{}).

get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, []).

get_core_network_change_events(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-events/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId)
  when is_map(Client) ->
    get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, #{}, #{}).

get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, []).

get_core_network_change_set(Client, CoreNetworkId, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-change-sets/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_core_network_policy(Client, CoreNetworkId)
  when is_map(Client) ->
    get_core_network_policy(Client, CoreNetworkId, #{}, #{}).

get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap, []).

get_core_network_policy(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"policyVersionId">>, maps:get(<<"policyVersionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the association information for customer gateways that are
%% associated with devices and links in your global network.
get_customer_gateway_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_customer_gateway_associations(Client, GlobalNetworkId, #{}, #{}).

get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_customer_gateway_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_devices(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_devices(Client, GlobalNetworkId, #{}, #{}).

get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_devices(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets the link associations for a device or a link.
%%
%% Either the device ID or the link ID must be specified.
get_link_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_link_associations(Client, GlobalNetworkId, #{}, #{}).

get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_link_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_links(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_links(Client, GlobalNetworkId, #{}, #{}).

get_links(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_links(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_links(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_network_resource_counts(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resource_counts(Client, GlobalNetworkId, #{}, #{}).

get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_network_resource_counts(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resource-count"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_network_resource_relationships(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resource_relationships(Client, GlobalNetworkId, #{}, #{}).

get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_network_resource_relationships(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resource-relationships"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_network_resources(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_resources(Client, GlobalNetworkId, #{}, #{}).

get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_network_resources(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_network_routes(Client, GlobalNetworkId, Input) ->
    get_network_routes(Client, GlobalNetworkId, Input, []).
get_network_routes(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-routes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the network telemetry of the specified global network.
get_network_telemetry(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_network_telemetry(Client, GlobalNetworkId, #{}, #{}).

get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_network_telemetry(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-telemetry"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified route analysis.
get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId)
  when is_map(Client) ->
    get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, #{}, #{}).

get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap, []).

get_route_analysis(Client, GlobalNetworkId, RouteAnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/route-analyses/", aws_util:encode_uri(RouteAnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a site-to-site VPN attachment.
get_site_to_site_vpn_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_site_to_site_vpn_attachment(Client, AttachmentId, #{}, #{}).

get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

get_site_to_site_vpn_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/site-to-site-vpn-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your sites in a global network.
get_sites(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_sites(Client, GlobalNetworkId, #{}, #{}).

get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_sites(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, #{}, #{}).

get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_transit_gateway_connect_peer_associations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-connect-peer-associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_transit_gateway_peering(Client, PeeringId)
  when is_map(Client) ->
    get_transit_gateway_peering(Client, PeeringId, #{}, #{}).

get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap, []).

get_transit_gateway_peering(Client, PeeringId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/transit-gateway-peerings/", aws_util:encode_uri(PeeringId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the transit gateway registrations in a
%% specified global network.
get_transit_gateway_registrations(Client, GlobalNetworkId)
  when is_map(Client) ->
    get_transit_gateway_registrations(Client, GlobalNetworkId, #{}, #{}).

get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap, []).

get_transit_gateway_registrations(Client, GlobalNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_transit_gateway_route_table_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_transit_gateway_route_table_attachment(Client, AttachmentId, #{}, #{}).

get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

get_transit_gateway_route_table_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/transit-gateway-route-table-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a VPC attachment.
get_vpc_attachment(Client, AttachmentId)
  when is_map(Client) ->
    get_vpc_attachment(Client, AttachmentId, #{}, #{}).

get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap, []).

get_vpc_attachment(Client, AttachmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpc-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of core network attachments.
list_attachments(Client)
  when is_map(Client) ->
    list_attachments(Client, #{}, #{}).

list_attachments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attachments(Client, QueryMap, HeadersMap, []).

list_attachments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attachments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_connect_peers(Client)
  when is_map(Client) ->
    list_connect_peers(Client, #{}, #{}).

list_connect_peers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connect_peers(Client, QueryMap, HeadersMap, []).

list_connect_peers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-peers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_core_network_policy_versions(Client, CoreNetworkId)
  when is_map(Client) ->
    list_core_network_policy_versions(Client, CoreNetworkId, #{}, #{}).

list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap, []).

list_core_network_policy_versions(Client, CoreNetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of owned and shared core networks.
list_core_networks(Client)
  when is_map(Client) ->
    list_core_networks(Client, #{}, #{}).

list_core_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_networks(Client, QueryMap, HeadersMap, []).

list_core_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/core-networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_organization_service_access_status(Client)
  when is_map(Client) ->
    list_organization_service_access_status(Client, #{}, #{}).

list_organization_service_access_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_service_access_status(Client, QueryMap, HeadersMap, []).

list_organization_service_access_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organizations/service-access"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the peerings for a core network.
list_peerings(Client)
  when is_map(Client) ->
    list_peerings(Client, #{}, #{}).

list_peerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_peerings(Client, QueryMap, HeadersMap, []).

list_peerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/peerings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new, immutable version of a core network policy.
%%
%% A subsequent change set is created showing the differences between the
%% LIVE policy and the submitted policy.
put_core_network_policy(Client, CoreNetworkId, Input) ->
    put_core_network_policy(Client, CoreNetworkId, Input, []).
put_core_network_policy(Client, CoreNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates a resource policy.
put_resource_policy(Client, ResourceArn, Input) ->
    put_resource_policy(Client, ResourceArn, Input, []).
put_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Registers a transit gateway in your global network.
%%
%% The transit gateway can be in any Amazon Web Services Region, but it must
%% be owned by the same Amazon Web Services account that owns the global
%% network. You cannot register a transit gateway in more than one global
%% network.
register_transit_gateway(Client, GlobalNetworkId, Input) ->
    register_transit_gateway(Client, GlobalNetworkId, Input, []).
register_transit_gateway(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects a core network attachment request.
reject_attachment(Client, AttachmentId, Input) ->
    reject_attachment(Client, AttachmentId, Input, []).
reject_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = post,
    Path = ["/attachments/", aws_util:encode_uri(AttachmentId), "/reject"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input) ->
    restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input, []).
restore_core_network_policy_version(Client, CoreNetworkId, PolicyVersionId, Input0, Options0) ->
    Method = post,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), "/core-network-policy-versions/", aws_util:encode_uri(PolicyVersionId), "/restore"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
start_organization_service_access_update(Client, Input) ->
    start_organization_service_access_update(Client, Input, []).
start_organization_service_access_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organizations/service-access"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% For more information, see Route Analyzer.
start_route_analysis(Client, GlobalNetworkId, Input) ->
    start_route_analysis(Client, GlobalNetworkId, Input, []).
start_route_analysis(Client, GlobalNetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/route-analyses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tags a specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% To remove information for any of the parameters, specify an empty string.
update_connection(Client, ConnectionId, GlobalNetworkId, Input) ->
    update_connection(Client, ConnectionId, GlobalNetworkId, Input, []).
update_connection(Client, ConnectionId, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/connections/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the description of a core network.
update_core_network(Client, CoreNetworkId, Input) ->
    update_core_network(Client, CoreNetworkId, Input, []).
update_core_network(Client, CoreNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/core-networks/", aws_util:encode_uri(CoreNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details for an existing device.
%%
%% To remove information for any of the parameters, specify an empty string.
update_device(Client, DeviceId, GlobalNetworkId, Input) ->
    update_device(Client, DeviceId, GlobalNetworkId, Input, []).
update_device(Client, DeviceId, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing global network.
%%
%% To remove information for any of the parameters, specify an empty string.
update_global_network(Client, GlobalNetworkId, Input) ->
    update_global_network(Client, GlobalNetworkId, Input, []).
update_global_network(Client, GlobalNetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details for an existing link.
%%
%% To remove information for any of the parameters, specify an empty string.
update_link(Client, GlobalNetworkId, LinkId, Input) ->
    update_link(Client, GlobalNetworkId, LinkId, Input, []).
update_link(Client, GlobalNetworkId, LinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource metadata for the specified global network.
update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input) ->
    update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input, []).
update_network_resource_metadata(Client, GlobalNetworkId, ResourceArn, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/network-resources/", aws_util:encode_uri(ResourceArn), "/metadata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the information for an existing site.
%%
%% To remove information for any of the parameters, specify an empty string.
update_site(Client, GlobalNetworkId, SiteId, Input) ->
    update_site(Client, GlobalNetworkId, SiteId, Input, []).
update_site(Client, GlobalNetworkId, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a VPC attachment.
update_vpc_attachment(Client, AttachmentId, Input) ->
    update_vpc_attachment(Client, AttachmentId, Input, []).
update_vpc_attachment(Client, AttachmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/vpc-attachments/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
