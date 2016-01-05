%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc AWS Direct Connect makes it easy to establish a dedicated network
%% connection from your premises to Amazon Web Services (AWS). Using AWS
%% Direct Connect, you can establish private connectivity between AWS and
%% your data center, office, or colocation environment, which in many cases
%% can reduce your network costs, increase bandwidth throughput, and provide
%% a more consistent network experience than Internet-based connections.
%%
%% The AWS Direct Connect API Reference provides descriptions, syntax, and
%% usage examples for each of the actions and data types for AWS Direct
%% Connect. Use the following links to get started using the <i>AWS Direct
%% Connect API Reference</i>:
%%
%% <ul> <li><a
%% href="http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Operations.html">Actions</a>:
%% An alphabetical list of all AWS Direct Connect actions.</li> <li><a
%% href="http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Types.html">Data
%% Types</a>: An alphabetical list of all AWS Direct Connect data types.</li>
%% <li><a
%% href="http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonParameters.html">Common
%% Query Parameters</a>: Parameters that all Query actions can use.</li>
%% <li><a
%% href="http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonErrors.html">Common
%% Errors</a>: Client and server errors that all actions can return.</li>
%% </ul>
-module(aws_direct_connect).

-export([allocate_connection_on_interconnect/2,
         allocate_connection_on_interconnect/3,
         allocate_private_virtual_interface/2,
         allocate_private_virtual_interface/3,
         allocate_public_virtual_interface/2,
         allocate_public_virtual_interface/3,
         confirm_connection/2,
         confirm_connection/3,
         confirm_private_virtual_interface/2,
         confirm_private_virtual_interface/3,
         confirm_public_virtual_interface/2,
         confirm_public_virtual_interface/3,
         create_connection/2,
         create_connection/3,
         create_interconnect/2,
         create_interconnect/3,
         create_private_virtual_interface/2,
         create_private_virtual_interface/3,
         create_public_virtual_interface/2,
         create_public_virtual_interface/3,
         delete_connection/2,
         delete_connection/3,
         delete_interconnect/2,
         delete_interconnect/3,
         delete_virtual_interface/2,
         delete_virtual_interface/3,
         describe_connections/2,
         describe_connections/3,
         describe_connections_on_interconnect/2,
         describe_connections_on_interconnect/3,
         describe_interconnects/2,
         describe_interconnects/3,
         describe_locations/2,
         describe_locations/3,
         describe_virtual_gateways/2,
         describe_virtual_gateways/3,
         describe_virtual_interfaces/2,
         describe_virtual_interfaces/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a hosted connection on an interconnect.
%%
%% Allocates a VLAN number and a specified amount of bandwidth for use by a
%% hosted connection on the given interconnect.
allocate_connection_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_connection_on_interconnect(Client, Input, []).
allocate_connection_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateConnectionOnInterconnect">>, Input, Options).

%% @doc Provisions a private virtual interface to be owned by a different
%% customer.
%%
%% The owner of a connection calls this function to provision a private
%% virtual interface which will be owned by another AWS customer.
%%
%% Virtual interfaces created using this function must be confirmed by the
%% virtual interface owner by calling ConfirmPrivateVirtualInterface. Until
%% this step has been completed, the virtual interface will be in
%% 'Confirming' state, and will not be available for handling traffic.
allocate_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_private_virtual_interface(Client, Input, []).
allocate_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePrivateVirtualInterface">>, Input, Options).

%% @doc Provisions a public virtual interface to be owned by a different
%% customer.
%%
%% The owner of a connection calls this function to provision a public
%% virtual interface which will be owned by another AWS customer.
%%
%% Virtual interfaces created using this function must be confirmed by the
%% virtual interface owner by calling ConfirmPublicVirtualInterface. Until
%% this step has been completed, the virtual interface will be in
%% 'Confirming' state, and will not be available for handling traffic.
allocate_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_public_virtual_interface(Client, Input, []).
allocate_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePublicVirtualInterface">>, Input, Options).

%% @doc Confirm the creation of a hosted connection on an interconnect.
%%
%% Upon creation, the hosted connection is initially in the 'Ordering' state,
%% and will remain in this state until the owner calls ConfirmConnection to
%% confirm creation of the hosted connection.
confirm_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_connection(Client, Input, []).
confirm_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmConnection">>, Input, Options).

%% @doc Accept ownership of a private virtual interface created by another
%% customer.
%%
%% After the virtual interface owner calls this function, the virtual
%% interface will be created and attached to the given virtual private
%% gateway, and will be available for handling traffic.
confirm_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_private_virtual_interface(Client, Input, []).
confirm_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPrivateVirtualInterface">>, Input, Options).

%% @doc Accept ownership of a public virtual interface created by another
%% customer.
%%
%% After the virtual interface owner calls this function, the specified
%% virtual interface will be created and made available for handling traffic.
confirm_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_public_virtual_interface(Client, Input, []).
confirm_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPublicVirtualInterface">>, Input, Options).

%% @doc Creates a new connection between the customer network and a specific
%% AWS Direct Connect location.
%%
%% A connection links your internal network to an AWS Direct Connect location
%% over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One
%% end of the cable is connected to your router, the other to an AWS Direct
%% Connect router. An AWS Direct Connect location provides access to Amazon
%% Web Services in the region it is associated with. You can establish
%% connections with AWS Direct Connect locations in multiple regions, but a
%% connection in one region does not provide connectivity to other regions.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a new interconnect between a AWS Direct Connect partner's
%% network and a specific AWS Direct Connect location.
%%
%% An interconnect is a connection which is capable of hosting other
%% connections. The AWS Direct Connect partner can use an interconnect to
%% provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do
%% not have their own connections. Like a standard connection, an
%% interconnect links the AWS Direct Connect partner's network to an AWS
%% Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet
%% fiber-optic cable. One end is connected to the partner's router, the other
%% to an AWS Direct Connect router.
%%
%% For each end customer, the AWS Direct Connect partner provisions a
%% connection on their interconnect by calling
%% AllocateConnectionOnInterconnect. The end customer can then connect to AWS
%% resources by creating a virtual interface on their connection, using the
%% VLAN assigned to them by the AWS Direct Connect partner.
create_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_interconnect(Client, Input, []).
create_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInterconnect">>, Input, Options).

%% @doc Creates a new private virtual interface. A virtual interface is the
%% VLAN that transports AWS Direct Connect traffic. A private virtual
%% interface supports sending traffic to a single virtual private cloud
%% (VPC).
create_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_virtual_interface(Client, Input, []).
create_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateVirtualInterface">>, Input, Options).

%% @doc Creates a new public virtual interface. A virtual interface is the
%% VLAN that transports AWS Direct Connect traffic. A public virtual
%% interface supports sending traffic to public services of AWS such as
%% Amazon Simple Storage Service (Amazon S3).
create_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_virtual_interface(Client, Input, []).
create_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicVirtualInterface">>, Input, Options).

%% @doc Deletes the connection.
%%
%% Deleting a connection only stops the AWS Direct Connect port hour and data
%% transfer charges. You need to cancel separately with the providers any
%% services or charges for cross-connects or network circuits that connect
%% you to the AWS Direct Connect location.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified interconnect.
delete_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_interconnect(Client, Input, []).
delete_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInterconnect">>, Input, Options).

%% @doc Deletes a virtual interface.
delete_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_interface(Client, Input, []).
delete_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualInterface">>, Input, Options).

%% @doc Displays all connections in this region.
%%
%% If a connection ID is provided, the call returns only that particular
%% connection.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Return a list of connections that have been provisioned on the given
%% interconnect.
describe_connections_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections_on_interconnect(Client, Input, []).
describe_connections_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionsOnInterconnect">>, Input, Options).

%% @doc Returns a list of interconnects owned by the AWS account.
%%
%% If an interconnect ID is provided, it will only return this particular
%% interconnect.
describe_interconnects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnects(Client, Input, []).
describe_interconnects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnects">>, Input, Options).

%% @doc Returns the list of AWS Direct Connect locations in the current AWS
%% region. These are the locations that may be selected when calling
%% CreateConnection or CreateInterconnect.
describe_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_locations(Client, Input, []).
describe_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocations">>, Input, Options).

%% @doc Returns a list of virtual private gateways owned by the AWS account.
%%
%% You can create one or more AWS Direct Connect private virtual interfaces
%% linking to a virtual private gateway. A virtual private gateway can be
%% managed via Amazon Virtual Private Cloud (VPC) console or the <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2
%% CreateVpnGateway</a> action.
describe_virtual_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_gateways(Client, Input, []).
describe_virtual_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualGateways">>, Input, Options).

%% @doc Displays all virtual interfaces for an AWS account. Virtual
%% interfaces deleted fewer than 15 minutes before DescribeVirtualInterfaces
%% is called are also returned. If a connection ID is included then only
%% virtual interfaces associated with this connection will be returned. If a
%% virtual interface ID is included then only a single virtual interface will
%% be returned.
%%
%% A virtual interface (VLAN) transmits the traffic between the AWS Direct
%% Connect location and the customer.
%%
%% If a connection ID is provided, only virtual interfaces provisioned on the
%% specified connection will be returned. If a virtual interface ID is
%% provided, only this particular virtual interface will be returned.
describe_virtual_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_interfaces(Client, Input, []).
describe_virtual_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualInterfaces">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"directconnect">>},
    Host = aws_util:binary_join([<<"directconnect.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"OvertureService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
