%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Transit Gateway Network Manager (Network Manager) enables you to
%% create a global network, in which you can monitor your Amazon Web Services
%% and on-premises networks that are built around transit gateways.
-module(aws_networkmanager).

-export([associate_customer_gateway/3,
         associate_customer_gateway/4,
         associate_link/3,
         associate_link/4,
         associate_transit_gateway_connect_peer/3,
         associate_transit_gateway_connect_peer/4,
         create_connection/3,
         create_connection/4,
         create_device/3,
         create_device/4,
         create_global_network/2,
         create_global_network/3,
         create_link/3,
         create_link/4,
         create_site/3,
         create_site/4,
         delete_connection/4,
         delete_connection/5,
         delete_device/4,
         delete_device/5,
         delete_global_network/3,
         delete_global_network/4,
         delete_link/4,
         delete_link/5,
         delete_site/4,
         delete_site/5,
         deregister_transit_gateway/4,
         deregister_transit_gateway/5,
         describe_global_networks/1,
         describe_global_networks/3,
         describe_global_networks/4,
         disassociate_customer_gateway/4,
         disassociate_customer_gateway/5,
         disassociate_link/3,
         disassociate_link/4,
         disassociate_transit_gateway_connect_peer/4,
         disassociate_transit_gateway_connect_peer/5,
         get_connections/2,
         get_connections/4,
         get_connections/5,
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
         get_route_analysis/3,
         get_route_analysis/5,
         get_route_analysis/6,
         get_sites/2,
         get_sites/4,
         get_sites/5,
         get_transit_gateway_connect_peer_associations/2,
         get_transit_gateway_connect_peer_associations/4,
         get_transit_gateway_connect_peer_associations/5,
         get_transit_gateway_registrations/2,
         get_transit_gateway_registrations/4,
         get_transit_gateway_registrations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_transit_gateway/3,
         register_transit_gateway/4,
         start_route_analysis/3,
         start_route_analysis/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connection/4,
         update_connection/5,
         update_device/4,
         update_device/5,
         update_global_network/3,
         update_global_network/4,
         update_link/4,
         update_link/5,
         update_network_resource_metadata/4,
         update_network_resource_metadata/5,
         update_site/4,
         update_site/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a customer gateway with a device and optionally, with a
%% link.
%%
%% If you specify a link, it must be associated with the specified device.
%%
%% You can only associate customer gateways that are connected to a VPN
%% attachment on a transit gateway. The transit gateway must be registered in
%% your global network. When you register a transit gateway, customer
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% sites) and deregister all transit gateways.
delete_global_network(Client, GlobalNetworkId, Input) ->
    delete_global_network(Client, GlobalNetworkId, Input, []).
delete_global_network(Client, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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

%% @doc Disassociates a customer gateway from a device and a link.
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input) ->
    disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input, []).
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations/", aws_util:encode_uri(CustomerGatewayArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registeredGatewayArn">>, maps:get(<<"registeredGatewayArn">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"networkmanager">>,
                      region => <<"us-west-2">>},
    Host = build_host(<<"networkmanager">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
