%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Transit Gateway Network Manager (Network Manager) enables you to
%% create a global network, in which you can monitor your AWS and on-premises
%% networks that are built around transit gateways.
-module(aws_networkmanager).

-export([associate_customer_gateway/3,
         associate_customer_gateway/4,
         associate_link/3,
         associate_link/4,
         create_device/3,
         create_device/4,
         create_global_network/2,
         create_global_network/3,
         create_link/3,
         create_link/4,
         create_site/3,
         create_site/4,
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
         describe_global_networks/4,
         describe_global_networks/5,
         disassociate_customer_gateway/4,
         disassociate_customer_gateway/5,
         disassociate_link/3,
         disassociate_link/4,
         get_customer_gateway_associations/5,
         get_customer_gateway_associations/6,
         get_devices/6,
         get_devices/7,
         get_link_associations/6,
         get_link_associations/7,
         get_links/8,
         get_links/9,
         get_sites/5,
         get_sites/6,
         get_transit_gateway_registrations/5,
         get_transit_gateway_registrations/6,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_transit_gateway/3,
         register_transit_gateway/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_device/4,
         update_device/5,
         update_global_network/3,
         update_global_network/4,
         update_link/4,
         update_link/5,
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
%% filter by `transit-gateway-id`.
%%
%% You cannot associate a customer gateway with more than one device and
%% link.
associate_customer_gateway(Client, GlobalNetworkId, Input) ->
    associate_customer_gateway(Client, GlobalNetworkId, Input, []).
associate_customer_gateway(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a link to a device.
%%
%% A device can be associated to multiple links and a link can be associated
%% to multiple devices. The device and link must be in the same global
%% network and the same site.
associate_link(Client, GlobalNetworkId, Input) ->
    associate_link(Client, GlobalNetworkId, Input, []).
associate_link(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new device in a global network.
%%
%% If you specify both a site ID and a location, the location of the site is
%% used for visualization in the Network Manager console.
create_device(Client, GlobalNetworkId, Input) ->
    create_device(Client, GlobalNetworkId, Input, []).
create_device(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new, empty global network.
create_global_network(Client, Input) ->
    create_global_network(Client, Input, []).
create_global_network(Client, Input0, Options) ->
    Method = post,
    Path = ["/global-networks"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new link for a specified site.
create_link(Client, GlobalNetworkId, Input) ->
    create_link(Client, GlobalNetworkId, Input, []).
create_link(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new site in a global network.
create_site(Client, GlobalNetworkId, Input) ->
    create_site(Client, GlobalNetworkId, Input, []).
create_site(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing device.
%%
%% You must first disassociate the device from any links and customer
%% gateways.
delete_device(Client, DeviceId, GlobalNetworkId, Input) ->
    delete_device(Client, DeviceId, GlobalNetworkId, Input, []).
delete_device(Client, DeviceId, GlobalNetworkId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing global network.
%%
%% You must first delete all global network objects (devices, links, and
%% sites) and deregister all transit gateways.
delete_global_network(Client, GlobalNetworkId, Input) ->
    delete_global_network(Client, GlobalNetworkId, Input, []).
delete_global_network(Client, GlobalNetworkId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing link.
%%
%% You must first disassociate the link from any devices and customer
%% gateways.
delete_link(Client, GlobalNetworkId, LinkId, Input) ->
    delete_link(Client, GlobalNetworkId, LinkId, Input, []).
delete_link(Client, GlobalNetworkId, LinkId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing site.
%%
%% The site cannot be associated with any device or link.
delete_site(Client, GlobalNetworkId, SiteId, Input) ->
    delete_site(Client, GlobalNetworkId, SiteId, Input, []).
delete_site(Client, GlobalNetworkId, SiteId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a transit gateway from your global network.
%%
%% This action does not delete your transit gateway, or modify any of its
%% attachments. This action removes any customer gateway associations.
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input) ->
    deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input, []).
deregister_transit_gateway(Client, GlobalNetworkId, TransitGatewayArn, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations/", aws_util:encode_uri(TransitGatewayArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more global networks.
%%
%% By default, all global networks are described. To describe the objects in
%% your global network, you must use the appropriate `Get*` action. For
%% example, to list the transit gateways in your global network, use
%% `GetTransitGatewayRegistrations`.
describe_global_networks(Client, GlobalNetworkIds, MaxResults, NextToken)
  when is_map(Client) ->
    describe_global_networks(Client, GlobalNetworkIds, MaxResults, NextToken, []).
describe_global_networks(Client, GlobalNetworkIds, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"globalNetworkIds">>, GlobalNetworkIds},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a customer gateway from a device and a link.
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input) ->
    disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input, []).
disassociate_customer_gateway(Client, CustomerGatewayArn, GlobalNetworkId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations/", aws_util:encode_uri(CustomerGatewayArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an existing device from a link.
%%
%% You must first disassociate any customer gateways that are associated with
%% the link.
disassociate_link(Client, GlobalNetworkId, Input) ->
    disassociate_link(Client, GlobalNetworkId, Input, []).
disassociate_link(Client, GlobalNetworkId, Input0, Options) ->
    Method = delete,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"deviceId">>, <<"DeviceId">>},
                     {<<"linkId">>, <<"LinkId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the association information for customer gateways that are
%% associated with devices and links in your global network.
get_customer_gateway_associations(Client, GlobalNetworkId, CustomerGatewayArns, MaxResults, NextToken)
  when is_map(Client) ->
    get_customer_gateway_associations(Client, GlobalNetworkId, CustomerGatewayArns, MaxResults, NextToken, []).
get_customer_gateway_associations(Client, GlobalNetworkId, CustomerGatewayArns, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/customer-gateway-associations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"customerGatewayArns">>, CustomerGatewayArns},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your devices in a global
%% network.
get_devices(Client, GlobalNetworkId, DeviceIds, MaxResults, NextToken, SiteId)
  when is_map(Client) ->
    get_devices(Client, GlobalNetworkId, DeviceIds, MaxResults, NextToken, SiteId, []).
get_devices(Client, GlobalNetworkId, DeviceIds, MaxResults, NextToken, SiteId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"deviceIds">>, DeviceIds},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"siteId">>, SiteId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the link associations for a device or a link.
%%
%% Either the device ID or the link ID must be specified.
get_link_associations(Client, GlobalNetworkId, DeviceId, LinkId, MaxResults, NextToken)
  when is_map(Client) ->
    get_link_associations(Client, GlobalNetworkId, DeviceId, LinkId, MaxResults, NextToken, []).
get_link_associations(Client, GlobalNetworkId, DeviceId, LinkId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/link-associations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"deviceId">>, DeviceId},
        {<<"linkId">>, LinkId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more links in a specified global
%% network.
%%
%% If you specify the site ID, you cannot specify the type or provider in the
%% same request. You can specify the type and provider in the same request.
get_links(Client, GlobalNetworkId, LinkIds, MaxResults, NextToken, Provider, SiteId, Type)
  when is_map(Client) ->
    get_links(Client, GlobalNetworkId, LinkIds, MaxResults, NextToken, Provider, SiteId, Type, []).
get_links(Client, GlobalNetworkId, LinkIds, MaxResults, NextToken, Provider, SiteId, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"linkIds">>, LinkIds},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"provider">>, Provider},
        {<<"siteId">>, SiteId},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more of your sites in a global network.
get_sites(Client, GlobalNetworkId, MaxResults, NextToken, SiteIds)
  when is_map(Client) ->
    get_sites(Client, GlobalNetworkId, MaxResults, NextToken, SiteIds, []).
get_sites(Client, GlobalNetworkId, MaxResults, NextToken, SiteIds, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"siteIds">>, SiteIds}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the transit gateway registrations in a
%% specified global network.
get_transit_gateway_registrations(Client, GlobalNetworkId, MaxResults, NextToken, TransitGatewayArns)
  when is_map(Client) ->
    get_transit_gateway_registrations(Client, GlobalNetworkId, MaxResults, NextToken, TransitGatewayArns, []).
get_transit_gateway_registrations(Client, GlobalNetworkId, MaxResults, NextToken, TransitGatewayArns, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"transitGatewayArns">>, TransitGatewayArns}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers a transit gateway in your global network.
%%
%% The transit gateway can be in any AWS Region, but it must be owned by the
%% same AWS account that owns the global network. You cannot register a
%% transit gateway in more than one global network.
register_transit_gateway(Client, GlobalNetworkId, Input) ->
    register_transit_gateway(Client, GlobalNetworkId, Input, []).
register_transit_gateway(Client, GlobalNetworkId, Input0, Options) ->
    Method = post,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/transit-gateway-registrations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Tags a specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details for an existing device.
%%
%% To remove information for any of the parameters, specify an empty string.
update_device(Client, DeviceId, GlobalNetworkId, Input) ->
    update_device(Client, DeviceId, GlobalNetworkId, Input, []).
update_device(Client, DeviceId, GlobalNetworkId, Input0, Options) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing global network.
%%
%% To remove information for any of the parameters, specify an empty string.
update_global_network(Client, GlobalNetworkId, Input) ->
    update_global_network(Client, GlobalNetworkId, Input, []).
update_global_network(Client, GlobalNetworkId, Input0, Options) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the details for an existing link.
%%
%% To remove information for any of the parameters, specify an empty string.
update_link(Client, GlobalNetworkId, LinkId, Input) ->
    update_link(Client, GlobalNetworkId, LinkId, Input, []).
update_link(Client, GlobalNetworkId, LinkId, Input0, Options) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/links/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the information for an existing site.
%%
%% To remove information for any of the parameters, specify an empty string.
update_site(Client, GlobalNetworkId, SiteId, Input) ->
    update_site(Client, GlobalNetworkId, SiteId, Input, []).
update_site(Client, GlobalNetworkId, SiteId, Input0, Options) ->
    Method = patch,
    Path = ["/global-networks/", aws_util:encode_uri(GlobalNetworkId), "/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"networkmanager">>},
    Host = build_host(<<"networkmanager">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
