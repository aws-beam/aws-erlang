%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Route 53 Application Recovery Controller API
%% Reference Guide for Recovery Control Data Plane .
%%
%% Recovery control in Route 53 Application Recovery Controller includes
%% extremely reliable routing controls that enable you to recover
%% applications by rerouting traffic, for example, across Availability Zones
%% or AWS Regions. Routing controls are simple on/off switches hosted on a
%% cluster. A cluster is a set of five redundant regional endpoints against
%% which you can execute API calls to update or get the state of routing
%% controls. You use routing controls to failover traffic to recover your
%% application across Availability Zones or Regions.
%%
%% This API guide includes information about how to get and update routing
%% control states in Route 53 Application Recovery Controller.
%%
%% For more information about Route 53 Application Recovery Controller, see
%% the following:
%%
%% <ul> <li> You can create clusters, routing controls, and control panels by
%% using the control plane API for Recovery Control. For more information,
%% see Amazon Route 53 Application Recovery Controller Recovery Control API
%% Reference.
%%
%% </li> <li> Route 53 Application Recovery Controller also provides
%% continuous readiness checks to ensure that your applications are scaled to
%% handle failover traffic. For more information about the related API
%% actions, see Amazon Route 53 Application Recovery Controller Recovery
%% Readiness API Reference.
%%
%% </li> <li> For more information about creating resilient applications and
%% preparing for recovery readiness with Route 53 Application Recovery
%% Controller, see the Amazon Route 53 Application Recovery Controller
%% Developer Guide.
%%
%% </li> </ul>
-module(aws_route53_recovery_cluster).

-export([get_routing_control_state/2,
         get_routing_control_state/3,
         update_routing_control_state/2,
         update_routing_control_state/3,
         update_routing_control_states/2,
         update_routing_control_states/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Get the state for a routing control.
%%
%% A routing control is a simple on/off switch that you can use to route
%% traffic to cells. When the state is On, traffic flows to a cell. When it's
%% off, traffic does not flow.
%%
%% Before you can create a routing control, you first must create a cluster
%% to host the control. For more information, see CreateCluster. Access one
%% of the endpoints for the cluster to get or update the routing control
%% state to redirect traffic.
%%
%% For more information about working with routing controls, see Routing
%% control in the Route 53 Application Recovery Controller Developer Guide.
get_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_routing_control_state(Client, Input, []).
get_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoutingControlState">>, Input, Options).

%% @doc Set the state of the routing control to reroute traffic.
%%
%% You can set the value to be On or Off. When the state is On, traffic flows
%% to a cell. When it's off, traffic does not flow.
%%
%% For more information about working with routing controls, see Routing
%% control in the Route 53 Application Recovery Controller Developer Guide.
update_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_state(Client, Input, []).
update_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlState">>, Input, Options).

%% @doc Set multiple routing control states.
%%
%% You can set the value for each state to be On or Off. When the state is
%% On, traffic flows to a cell. When it's off, traffic does not flow.
%%
%% For more information about working with routing controls, see Routing
%% control in the Route 53 Application Recovery Controller Developer Guide.
update_routing_control_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_states(Client, Input, []).
update_routing_control_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlStates">>, Input, Options).

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
    Client1 = Client#{service => <<"route53-recovery-cluster">>},
    Host = build_host(<<"route53-recovery-cluster">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ToggleCustomerAPI.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
