%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Direct Connect links your internal network to an Direct Connect
%% location over a standard Ethernet fiber-optic cable.
%%
%% One end of the cable is connected to your router, the other to an Direct
%% Connect router. With this connection in place, you can create virtual
%% interfaces directly to the Amazon Web Services Cloud (for example, to
%% Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing Internet service
%% providers in your network path. A connection provides access to all Amazon
%% Web Services Regions except the China (Beijing) and (China) Ningxia
%% Regions. Amazon Web Services resources in the China Regions can only be
%% accessed through locations associated with those Regions.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a proposal request to attach a virtual private gateway or
%% transit gateway to a Direct Connect gateway.
accept_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_direct_connect_gateway_association_proposal(Client, Input, []).
accept_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `AllocateHostedConnection' instead.
%%
%% Creates a hosted connection on an interconnect.
%%
%% Allocates a VLAN number and a specified amount of bandwidth for use by a
%% hosted connection on the specified interconnect.
%%
%% Intended for use by Direct Connect Partners only.
allocate_connection_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_connection_on_interconnect(Client, Input, []).
allocate_connection_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateConnectionOnInterconnect">>, Input, Options).

%% @doc Creates a hosted connection on the specified interconnect or a link
%% aggregation group (LAG) of interconnects.
%%
%% Allocates a VLAN number and a specified amount of capacity (bandwidth) for
%% use by a hosted connection on the specified interconnect or LAG of
%% interconnects. Amazon Web Services polices the hosted connection for the
%% specified capacity and the Direct Connect Partner must also police the
%% hosted connection for the specified capacity.
%%
%% Intended for use by Direct Connect Partners only.
allocate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_hosted_connection(Client, Input, []).
allocate_hosted_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateHostedConnection">>, Input, Options).

%% @doc Provisions a private virtual interface to be owned by the specified
%% Amazon Web Services account.
%%
%% Virtual interfaces created using this action must be confirmed by the
%% owner using `ConfirmPrivateVirtualInterface'. Until then, the virtual
%% interface is in the `Confirming' state and is not available to handle
%% traffic.
allocate_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_private_virtual_interface(Client, Input, []).
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
%% owner using `ConfirmPublicVirtualInterface'. Until this step has been
%% completed, the virtual interface is in the `confirming' state and is
%% not available to handle traffic.
%%
%% When creating an IPv6 public virtual interface, omit the Amazon address
%% and customer address. IPv6 addresses are automatically assigned from the
%% Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.
allocate_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_public_virtual_interface(Client, Input, []).
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
allocate_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_transit_virtual_interface(Client, Input, []).
allocate_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateTransitVirtualInterface">>, Input, Options).

%% @doc Associates an existing connection with a link aggregation group
%% (LAG).
%%
%% The connection is interrupted and re-established as a member of the LAG
%% (connectivity to Amazon Web Services is interrupted). The connection must
%% be hosted on the same Direct Connect endpoint as the LAG, and its
%% bandwidth must match the bandwidth for the LAG. You can re-associate a
%% connection that's currently associated with a different LAG; however,
%% if removing the connection would cause the original LAG to fall below its
%% setting for minimum number of operational connections, the request fails.
%%
%% Any virtual interfaces that are directly associated with the connection
%% are automatically re-associated with the LAG. If the connection was
%% originally associated with a different LAG, the virtual interfaces remain
%% associated with the original LAG.
%%
%% For interconnects, any hosted connections are automatically re-associated
%% with the LAG. If the interconnect was originally associated with a
%% different LAG, the hosted connections remain associated with the original
%% LAG.
associate_connection_with_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_connection_with_lag(Client, Input, []).
associate_connection_with_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConnectionWithLag">>, Input, Options).

%% @doc Associates a hosted connection and its virtual interfaces with a link
%% aggregation group (LAG) or interconnect.
%%
%% If the target interconnect or LAG has an existing hosted connection with a
%% conflicting VLAN number or IP address, the operation fails. This action
%% temporarily interrupts the hosted connection's connectivity to Amazon
%% Web Services as it is being migrated.
%%
%% Intended for use by Direct Connect Partners only.
associate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_hosted_connection(Client, Input, []).
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
%% pre-shared CKN/CAK key considerations in the Direct Connect User Guide.
associate_mac_sec_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_mac_sec_key(Client, Input, []).
associate_mac_sec_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMacSecKey">>, Input, Options).

%% @doc Associates a virtual interface with a specified link aggregation
%% group (LAG) or connection.
%%
%% Connectivity to Amazon Web Services is temporarily interrupted as the
%% virtual interface is being migrated. If the target connection or LAG has
%% an associated virtual interface with a conflicting VLAN number or a
%% conflicting IP address, the operation fails.
%%
%% Virtual interfaces associated with a hosted connection cannot be
%% associated with a LAG; hosted connections must be migrated along with
%% their virtual interfaces using `AssociateHostedConnection'.
%%
%% To reassociate a virtual interface to a new connection or LAG, the
%% requester must own either the virtual interface itself or the connection
%% to which the virtual interface is currently associated. Additionally, the
%% requester must own the connection or LAG for the association.
associate_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_virtual_interface(Client, Input, []).
associate_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVirtualInterface">>, Input, Options).

%% @doc Confirms the creation of the specified hosted connection on an
%% interconnect.
%%
%% Upon creation, the hosted connection is initially in the `Ordering'
%% state, and remains in this state until the owner confirms creation of the
%% hosted connection.
confirm_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_connection(Client, Input, []).
confirm_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmConnection">>, Input, Options).

%% @doc The confirmation of the terms of agreement when creating the
%% connection/link aggregation group (LAG).
confirm_customer_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_customer_agreement(Client, Input, []).
confirm_customer_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmCustomerAgreement">>, Input, Options).

%% @doc Accepts ownership of a private virtual interface created by another
%% Amazon Web Services account.
%%
%% After the virtual interface owner makes this call, the virtual interface
%% is created and attached to the specified virtual private gateway or Direct
%% Connect gateway, and is made available to handle traffic.
confirm_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_private_virtual_interface(Client, Input, []).
confirm_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPrivateVirtualInterface">>, Input, Options).

%% @doc Accepts ownership of a public virtual interface created by another
%% Amazon Web Services account.
%%
%% After the virtual interface owner makes this call, the specified virtual
%% interface is created and made available to handle traffic.
confirm_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_public_virtual_interface(Client, Input, []).
confirm_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPublicVirtualInterface">>, Input, Options).

%% @doc Accepts ownership of a transit virtual interface created by another
%% Amazon Web Services account.
%%
%% After the owner of the transit virtual interface makes this call, the
%% specified transit virtual interface is created and made available to
%% handle traffic.
confirm_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_transit_virtual_interface(Client, Input, []).
confirm_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmTransitVirtualInterface">>, Input, Options).

%% @doc Creates a BGP peer on the specified virtual interface.
%%
%% You must create a BGP peer for the corresponding address family
%% (IPv4/IPv6) in order to access Amazon Web Services resources that also use
%% that address family.
%%
%% If logical redundancy is not supported by the connection, interconnect, or
%% LAG, the BGP peer cannot be in the same address family as an existing BGP
%% peer on the virtual interface.
%%
%% When creating a IPv6 BGP peer, omit the Amazon address and customer
%% address. IPv6 addresses are automatically assigned from the Amazon pool of
%% IPv6 addresses; you cannot specify custom IPv6 addresses.
%%
%% For a public virtual interface, the Autonomous System Number (ASN) must be
%% private or already on the allow list for the virtual interface.
create_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bgp_peer(Client, Input, []).
create_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBGPPeer">>, Input, Options).

%% @doc Creates a connection between a customer network and a specific Direct
%% Connect location.
%%
%% A connection links your internal network to an Direct Connect location
%% over a standard Ethernet fiber-optic cable. One end of the cable is
%% connected to your router, the other to an Direct Connect router.
%%
%% To find the locations for your Region, use `DescribeLocations'.
%%
%% You can automatically add the new connection to a link aggregation group
%% (LAG) by specifying a LAG ID in the request. This ensures that the new
%% connection is allocated on the same Direct Connect endpoint that hosts the
%% specified LAG. If there are no available ports on the endpoint, the
%% request fails and no connection is created.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a Direct Connect gateway, which is an intermediate object
%% that enables you to connect a set of virtual interfaces and virtual
%% private gateways.
%%
%% A Direct Connect gateway is global and visible in any Amazon Web Services
%% Region after it is created. The virtual interfaces and virtual private
%% gateways that are connected through a Direct Connect gateway can be in
%% different Amazon Web Services Regions. This enables you to connect to a
%% VPC in any Region, regardless of the Region in which the virtual
%% interfaces are located, and pass traffic between them.
create_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway(Client, Input, []).
create_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGateway">>, Input, Options).

%% @doc Creates an association between a Direct Connect gateway and a virtual
%% private gateway.
%%
%% The virtual private gateway must be attached to a VPC and must not be
%% associated with another Direct Connect gateway.
create_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway_association(Client, Input, []).
create_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Creates a proposal to associate the specified virtual private gateway
%% or transit gateway with the specified Direct Connect gateway.
%%
%% You can associate a Direct Connect gateway and virtual private gateway or
%% transit gateway that is owned by any Amazon Web Services account.
create_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway_association_proposal(Client, Input, []).
create_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc Creates an interconnect between an Direct Connect Partner's
%% network and a specific Direct Connect location.
%%
%% An interconnect is a connection that is capable of hosting other
%% connections. The Direct Connect Partner can use an interconnect to provide
%% Direct Connect hosted connections to customers through their own network
%% services. Like a standard connection, an interconnect links the
%% partner's network to an Direct Connect location over a standard
%% Ethernet fiber-optic cable. One end is connected to the partner's
%% router, the other to an Direct Connect router.
%%
%% You can automatically add the new interconnect to a link aggregation group
%% (LAG) by specifying a LAG ID in the request. This ensures that the new
%% interconnect is allocated on the same Direct Connect endpoint that hosts
%% the specified LAG. If there are no available ports on the endpoint, the
%% request fails and no interconnect is created.
%%
%% For each end customer, the Direct Connect Partner provisions a connection
%% on their interconnect by calling `AllocateHostedConnection'. The end
%% customer can then connect to Amazon Web Services resources by creating a
%% virtual interface on their connection, using the VLAN assigned to them by
%% the Direct Connect Partner.
%%
%% Intended for use by Direct Connect Partners only.
create_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_interconnect(Client, Input, []).
create_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInterconnect">>, Input, Options).

%% @doc Creates a link aggregation group (LAG) with the specified number of
%% bundled physical dedicated connections between the customer network and a
%% specific Direct Connect location.
%%
%% A LAG is a logical interface that uses the Link Aggregation Control
%% Protocol (LACP) to aggregate multiple interfaces, enabling you to treat
%% them as a single interface.
%%
%% All connections in a LAG must use the same bandwidth (either 1Gbps or
%% 10Gbps) and must terminate at the same Direct Connect endpoint.
%%
%% You can have up to 10 dedicated connections per LAG. Regardless of this
%% limit, if you request more connections for the LAG than Direct Connect can
%% allocate on a single endpoint, no LAG is created.
%%
%% You can specify an existing physical dedicated connection or interconnect
%% to include in the LAG (which counts towards the total number of
%% connections). Doing so interrupts the current physical dedicated
%% connection, and re-establishes them as a member of the LAG. The LAG will
%% be created on the same Direct Connect endpoint to which the dedicated
%% connection terminates. Any virtual interfaces associated with the
%% dedicated connection are automatically disassociated and re-associated
%% with the LAG. The connection ID does not change.
%%
%% If the Amazon Web Services account used to create a LAG is a registered
%% Direct Connect Partner, the LAG is automatically enabled to host
%% sub-connections. For a LAG owned by a partner, any associated virtual
%% interfaces cannot be directly configured.
create_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lag(Client, Input, []).
create_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLag">>, Input, Options).

%% @doc Creates a private virtual interface.
%%
%% A virtual interface is the VLAN that transports Direct Connect traffic. A
%% private virtual interface can be connected to either a Direct Connect
%% gateway or a Virtual Private Gateway (VGW). Connecting the private virtual
%% interface to a Direct Connect gateway enables the possibility for
%% connecting to multiple VPCs, including VPCs in different Amazon Web
%% Services Regions. Connecting the private virtual interface to a VGW only
%% provides access to a single VPC within the same Region.
%%
%% Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an
%% update to the underlying physical connection if it wasn't updated to
%% support jumbo frames. Updating the connection disrupts network
%% connectivity for all virtual interfaces associated with the connection for
%% up to 30 seconds. To check whether your connection supports jumbo frames,
%% call `DescribeConnections'. To check whether your virtual interface
%% supports jumbo frames, call `DescribeVirtualInterfaces'.
create_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_virtual_interface(Client, Input, []).
create_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateVirtualInterface">>, Input, Options).

%% @doc Creates a public virtual interface.
%%
%% A virtual interface is the VLAN that transports Direct Connect traffic. A
%% public virtual interface supports sending traffic to public services of
%% Amazon Web Services such as Amazon S3.
%%
%% When creating an IPv6 public virtual interface (`addressFamily' is
%% `ipv6'), leave the `customer' and `amazon' address fields
%% blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not
%% supported.
create_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_virtual_interface(Client, Input, []).
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
%% Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an
%% update to the underlying physical connection if it wasn't updated to
%% support jumbo frames. Updating the connection disrupts network
%% connectivity for all virtual interfaces associated with the connection for
%% up to 30 seconds. To check whether your connection supports jumbo frames,
%% call `DescribeConnections'. To check whether your virtual interface
%% supports jumbo frames, call `DescribeVirtualInterfaces'.
create_transit_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_virtual_interface(Client, Input, []).
create_transit_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitVirtualInterface">>, Input, Options).

%% @doc Deletes the specified BGP peer on the specified virtual interface
%% with the specified customer address and ASN.
%%
%% You cannot delete the last BGP peer from a virtual interface.
delete_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bgp_peer(Client, Input, []).
delete_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBGPPeer">>, Input, Options).

%% @doc Deletes the specified connection.
%%
%% Deleting a connection only stops the Direct Connect port hour and data
%% transfer charges. If you are partnering with any third parties to connect
%% with the Direct Connect location, you must cancel your service with them
%% separately.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified Direct Connect gateway.
%%
%% You must first delete all virtual interfaces that are attached to the
%% Direct Connect gateway and disassociate all virtual private gateways
%% associated with the Direct Connect gateway.
delete_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway(Client, Input, []).
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
delete_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway_association(Client, Input, []).
delete_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Deletes the association proposal request between the specified Direct
%% Connect gateway and virtual private gateway or transit gateway.
delete_direct_connect_gateway_association_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway_association_proposal(Client, Input, []).
delete_direct_connect_gateway_association_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGatewayAssociationProposal">>, Input, Options).

%% @doc Deletes the specified interconnect.
%%
%% Intended for use by Direct Connect Partners only.
delete_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_interconnect(Client, Input, []).
delete_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInterconnect">>, Input, Options).

%% @doc Deletes the specified link aggregation group (LAG).
%%
%% You cannot delete a LAG if it has active virtual interfaces or hosted
%% connections.
delete_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lag(Client, Input, []).
delete_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLag">>, Input, Options).

%% @doc Deletes a virtual interface.
delete_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_interface(Client, Input, []).
delete_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualInterface">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `DescribeLoa' instead.
%%
%% Gets the LOA-CFA for a connection.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that your APN partner or service provider uses when
%% establishing your cross connect to Amazon Web Services at the colocation
%% facility. For more information, see Requesting Cross Connects at Direct
%% Connect Locations in the Direct Connect User Guide.
describe_connection_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_loa(Client, Input, []).
describe_connection_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionLoa">>, Input, Options).

%% @doc Displays the specified connection or all connections in this Region.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `DescribeHostedConnections' instead.
%%
%% Lists the connections that have been provisioned on the specified
%% interconnect.
%%
%% Intended for use by Direct Connect Partners only.
describe_connections_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections_on_interconnect(Client, Input, []).
describe_connections_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionsOnInterconnect">>, Input, Options).

%% @doc Get and view a list of customer agreements, along with their signed
%% status and whether the customer is an NNIPartner, NNIPartnerV2, or a
%% nonPartner.
describe_customer_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_customer_metadata(Client, Input, []).
describe_customer_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomerMetadata">>, Input, Options).

%% @doc Describes one or more association proposals for connection between a
%% virtual private gateway or transit gateway and a Direct Connect gateway.
describe_direct_connect_gateway_association_proposals(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_association_proposals(Client, Input, []).
describe_direct_connect_gateway_association_proposals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAssociationProposals">>, Input, Options).

%% @doc Lists the associations between your Direct Connect gateways and
%% virtual private gateways and transit gateways.
%%
%% You must specify one of the following:
%%
%% <ul> <li> A Direct Connect gateway
%%
%% The response contains all virtual private gateways and transit gateways
%% associated with the Direct Connect gateway.
%%
%% </li> <li> A virtual private gateway
%%
%% The response contains the Direct Connect gateway.
%%
%% </li> <li> A transit gateway
%%
%% The response contains the Direct Connect gateway.
%%
%% </li> <li> A Direct Connect gateway and a virtual private gateway
%%
%% The response contains the association between the Direct Connect gateway
%% and virtual private gateway.
%%
%% </li> <li> A Direct Connect gateway and a transit gateway
%%
%% The response contains the association between the Direct Connect gateway
%% and transit gateway.
%%
%% </li> </ul>
describe_direct_connect_gateway_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_associations(Client, Input, []).
describe_direct_connect_gateway_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAssociations">>, Input, Options).

%% @doc Lists the attachments between your Direct Connect gateways and
%% virtual interfaces.
%%
%% You must specify a Direct Connect gateway, a virtual interface, or both.
%% If you specify a Direct Connect gateway, the response contains all virtual
%% interfaces attached to the Direct Connect gateway. If you specify a
%% virtual interface, the response contains all Direct Connect gateways
%% attached to the virtual interface. If you specify both, the response
%% contains the attachment between the Direct Connect gateway and the virtual
%% interface.
describe_direct_connect_gateway_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_attachments(Client, Input, []).
describe_direct_connect_gateway_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAttachments">>, Input, Options).

%% @doc Lists all your Direct Connect gateways or only the specified Direct
%% Connect gateway.
%%
%% Deleted Direct Connect gateways are not returned.
describe_direct_connect_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateways(Client, Input, []).
describe_direct_connect_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGateways">>, Input, Options).

%% @doc Lists the hosted connections that have been provisioned on the
%% specified interconnect or link aggregation group (LAG).
%%
%% Intended for use by Direct Connect Partners only.
describe_hosted_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hosted_connections(Client, Input, []).
describe_hosted_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostedConnections">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `DescribeLoa' instead.
%%
%% Gets the LOA-CFA for the specified interconnect.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing your cross connect to Amazon Web
%% Services at the colocation facility. For more information, see Requesting
%% Cross Connects at Direct Connect Locations in the Direct Connect User
%% Guide.
describe_interconnect_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnect_loa(Client, Input, []).
describe_interconnect_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnectLoa">>, Input, Options).

%% @doc Lists the interconnects owned by the Amazon Web Services account or
%% only the specified interconnect.
describe_interconnects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnects(Client, Input, []).
describe_interconnects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnects">>, Input, Options).

%% @doc Describes all your link aggregation groups (LAG) or the specified
%% LAG.
describe_lags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lags(Client, Input, []).
describe_lags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLags">>, Input, Options).

%% @doc Gets the LOA-CFA for a connection, interconnect, or link aggregation
%% group (LAG).
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing your cross connect to Amazon Web
%% Services at the colocation facility. For more information, see Requesting
%% Cross Connects at Direct Connect Locations in the Direct Connect User
%% Guide.
describe_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_loa(Client, Input, []).
describe_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoa">>, Input, Options).

%% @doc Lists the Direct Connect locations in the current Amazon Web Services
%% Region.
%%
%% These are the locations that can be selected when calling
%% `CreateConnection' or `CreateInterconnect'.
describe_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_locations(Client, Input, []).
describe_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocations">>, Input, Options).

%% @doc Details about the router.
describe_router_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_router_configuration(Client, Input, []).
describe_router_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRouterConfiguration">>, Input, Options).

%% @doc Describes the tags associated with the specified Direct Connect
%% resources.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Lists the virtual private gateways owned by the Amazon Web Services
%% account.
%%
%% You can create one or more Direct Connect private virtual interfaces
%% linked to a virtual private gateway.
describe_virtual_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_gateways(Client, Input, []).
describe_virtual_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualGateways">>, Input, Options).

%% @doc Displays all virtual interfaces for an Amazon Web Services account.
%%
%% Virtual interfaces deleted fewer than 15 minutes before you make the
%% request are also returned. If you specify a connection ID, only the
%% virtual interfaces associated with the connection are returned. If you
%% specify a virtual interface ID, then only a single virtual interface is
%% returned.
%%
%% A virtual interface (VLAN) transmits the traffic between the Direct
%% Connect location and the customer network.
describe_virtual_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_interfaces(Client, Input, []).
describe_virtual_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualInterfaces">>, Input, Options).

%% @doc Disassociates a connection from a link aggregation group (LAG).
%%
%% The connection is interrupted and re-established as a standalone
%% connection (the connection is not deleted; to delete the connection, use
%% the `DeleteConnection' request). If the LAG has associated virtual
%% interfaces or hosted connections, they remain associated with the LAG. A
%% disassociated connection owned by an Direct Connect Partner is
%% automatically converted to an interconnect.
%%
%% If disassociating the connection would cause the LAG to fall below its
%% setting for minimum number of operational connections, the request fails,
%% except when it's the last member of the LAG. If all connections are
%% disassociated, the LAG continues to exist as an empty LAG with no physical
%% connections.
disassociate_connection_from_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connection_from_lag(Client, Input, []).
disassociate_connection_from_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnectionFromLag">>, Input, Options).

%% @doc Removes the association between a MAC Security (MACsec) security key
%% and an Direct Connect dedicated connection.
disassociate_mac_sec_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_mac_sec_key(Client, Input, []).
disassociate_mac_sec_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMacSecKey">>, Input, Options).

%% @doc Lists the virtual interface failover test history.
list_virtual_interface_test_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_interface_test_history(Client, Input, []).
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
%% You can use ListVirtualInterfaceTestHistory to view the virtual interface
%% test history.
%%
%% If you need to stop the test before the test interval completes, use
%% StopBgpFailoverTest.
start_bgp_failover_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_bgp_failover_test(Client, Input, []).
start_bgp_failover_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBgpFailoverTest">>, Input, Options).

%% @doc Stops the virtual interface failover test.
stop_bgp_failover_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_bgp_failover_test(Client, Input, []).
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
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from the specified Direct Connect resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the Direct Connect dedicated connection configuration.
%%
%% You can update the following parameters for a connection:
%%
%% <ul> <li> The connection name
%%
%% </li> <li> The connection's MAC Security (MACsec) encryption mode.
%%
%% </li> </ul>
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

%% @doc Updates the name of a current Direct Connect gateway.
update_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_direct_connect_gateway(Client, Input, []).
update_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectConnectGateway">>, Input, Options).

%% @doc Updates the specified attributes of the Direct Connect gateway
%% association.
%%
%% Add or remove prefixes from the association.
update_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_direct_connect_gateway_association(Client, Input, []).
update_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Updates the attributes of the specified link aggregation group (LAG).
%%
%% You can update the following LAG attributes:
%%
%% <ul> <li> The name of the LAG.
%%
%% </li> <li> The value for the minimum number of connections that must be
%% operational for the LAG itself to be operational.
%%
%% </li> <li> The LAG's MACsec encryption mode.
%%
%% Amazon Web Services assigns this value to each connection which is part of
%% the LAG.
%%
%% </li> <li> The tags
%%
%% </li> </ul> If you adjust the threshold value for the minimum number of
%% operational connections, ensure that the new value does not cause the LAG
%% to fall below the threshold and become non-operational.
update_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_lag(Client, Input, []).
update_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLag">>, Input, Options).

%% @doc Updates the specified attributes of the specified virtual private
%% interface.
%%
%% Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an
%% update to the underlying physical connection if it wasn't updated to
%% support jumbo frames. Updating the connection disrupts network
%% connectivity for all virtual interfaces associated with the connection for
%% up to 30 seconds. To check whether your connection supports jumbo frames,
%% call `DescribeConnections'. To check whether your virtual q interface
%% supports jumbo frames, call `DescribeVirtualInterfaces'.
update_virtual_interface_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_virtual_interface_attributes(Client, Input, []).
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
