%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS App Mesh is a service mesh based on the Envoy proxy that makes it
%% easy to monitor and
%%
%% control microservices. App Mesh standardizes how your microservices
%% communicate, giving you
%%
%% end-to-end visibility and helping to ensure high availability for your
%% applications.
%%
%% App Mesh gives you consistent visibility and network traffic controls for
%% every
%%
%% microservice in an application. You can use App Mesh with AWS Fargate,
%% Amazon ECS, Amazon EKS,
%%
%% Kubernetes on AWS, and Amazon EC2.
%%
%% <note>
%%
%% App Mesh supports microservice applications that use service discovery
%% naming for their
%%
%% components. For more information about service discovery on Amazon ECS,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
%% Discovery</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>. Kubernetes
%%
%% <code>kube-dns</code> and <code>coredns</code> are supported. For more
%% information,
%%
%% see <a
%% href="https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/">DNS
%%
%% for Services and Pods</a> in the Kubernetes documentation.
%%
%% </note>
-module(aws_app_mesh).

-export([create_gateway_route/4,
         create_gateway_route/5,
         create_mesh/2,
         create_mesh/3,
         create_route/4,
         create_route/5,
         create_virtual_gateway/3,
         create_virtual_gateway/4,
         create_virtual_node/3,
         create_virtual_node/4,
         create_virtual_router/3,
         create_virtual_router/4,
         create_virtual_service/3,
         create_virtual_service/4,
         delete_gateway_route/5,
         delete_gateway_route/6,
         delete_mesh/3,
         delete_mesh/4,
         delete_route/5,
         delete_route/6,
         delete_virtual_gateway/4,
         delete_virtual_gateway/5,
         delete_virtual_node/4,
         delete_virtual_node/5,
         delete_virtual_router/4,
         delete_virtual_router/5,
         delete_virtual_service/4,
         delete_virtual_service/5,
         describe_gateway_route/5,
         describe_gateway_route/6,
         describe_mesh/3,
         describe_mesh/4,
         describe_route/5,
         describe_route/6,
         describe_virtual_gateway/4,
         describe_virtual_gateway/5,
         describe_virtual_node/4,
         describe_virtual_node/5,
         describe_virtual_router/4,
         describe_virtual_router/5,
         describe_virtual_service/4,
         describe_virtual_service/5,
         list_gateway_routes/6,
         list_gateway_routes/7,
         list_meshes/3,
         list_meshes/4,
         list_routes/6,
         list_routes/7,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_virtual_gateways/5,
         list_virtual_gateways/6,
         list_virtual_nodes/5,
         list_virtual_nodes/6,
         list_virtual_routers/5,
         list_virtual_routers/6,
         list_virtual_services/5,
         list_virtual_services/6,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_gateway_route/5,
         update_gateway_route/6,
         update_mesh/3,
         update_mesh/4,
         update_route/5,
         update_route/6,
         update_virtual_gateway/4,
         update_virtual_gateway/5,
         update_virtual_node/4,
         update_virtual_node/5,
         update_virtual_router/4,
         update_virtual_router/5,
         update_virtual_service/4,
         update_virtual_service/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a gateway route.
%%
%% A gateway route is attached to a virtual gateway and routes traffic to an
%% existing
%%
%% virtual service. If a route matches a request, it can distribute traffic
%% to a target virtual service.
%%
%% For more information about gateway routes, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html">Gateway
%% routes</a>.
create_gateway_route(Client, MeshName, VirtualGatewayName, Input) ->
    create_gateway_route(Client, MeshName, VirtualGatewayName, Input, []).
create_gateway_route(Client, MeshName, VirtualGatewayName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateway/", http_uri:encode(VirtualGatewayName), "/gatewayRoutes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a service mesh.
%%
%% A service mesh is a logical boundary for network traffic between services
%% that are
%%
%% represented by resources within the mesh. After you create your service
%% mesh, you can
%%
%% create virtual services, virtual nodes, virtual routers, and routes to
%% distribute traffic
%%
%% between the applications in your mesh.
%%
%% For more information about service meshes, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html">Service
%% meshes</a>.
create_mesh(Client, Input) ->
    create_mesh(Client, Input, []).
create_mesh(Client, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a route that is associated with a virtual router.
%%
%% You can route several different protocols and define a retry policy for a
%% route.
%%
%% Traffic can be routed to one or more virtual nodes.
%%
%% For more information about routes, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html">Routes</a>.
create_route(Client, MeshName, VirtualRouterName, Input) ->
    create_route(Client, MeshName, VirtualRouterName, Input, []).
create_route(Client, MeshName, VirtualRouterName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouter/", http_uri:encode(VirtualRouterName), "/routes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual gateway.
%%
%% A virtual gateway allows resources outside your mesh to communicate to
%% resources that
%%
%% are inside your mesh. The virtual gateway represents an Envoy proxy
%% running in an Amazon ECS
%%
%% task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a
%% virtual node, which
%%
%% represents an Envoy running with an application, a virtual gateway
%% represents Envoy deployed by itself.
%%
%% For more information about virtual gateways, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html">Virtual
%% gateways</a>.
create_virtual_gateway(Client, MeshName, Input) ->
    create_virtual_gateway(Client, MeshName, Input, []).
create_virtual_gateway(Client, MeshName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateways"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual node within a service mesh.
%%
%% A virtual node acts as a logical pointer to a particular task group, such
%% as an Amazon ECS
%%
%% service or a Kubernetes deployment. When you create a virtual node, you
%% can specify the
%%
%% service discovery information for your task group, and whether the proxy
%% running in a task
%%
%% group will communicate with other proxies using Transport Layer Security
%% (TLS).
%%
%% You define a <code>listener</code> for any inbound traffic that your
%% virtual node
%%
%% expects. Any virtual service that your virtual node expects to communicate
%% to is specified
%%
%% as a <code>backend</code>.
%%
%% The response metadata for your new virtual node contains the
%% <code>arn</code> that is
%%
%% associated with the virtual node. Set this value (either the full ARN or
%% the truncated
%%
%% resource name: for example,
%% <code>mesh/default/virtualNode/simpleapp</code>) as the
%%
%% <code>APPMESH_VIRTUAL_NODE_NAME</code> environment variable for your task
%% group's Envoy
%%
%% proxy container in your task definition or pod spec. This is then mapped
%% to the
%%
%% <code>node.id</code> and <code>node.cluster</code> Envoy parameters.
%%
%% <note>
%%
%% If you require your Envoy stats or tracing to use a different name, you
%% can override
%%
%% the <code>node.cluster</code> value that is set by
%%
%% <code>APPMESH_VIRTUAL_NODE_NAME</code> with the
%%
%% <code>APPMESH_VIRTUAL_NODE_CLUSTER</code> environment variable.
%%
%% </note>
%%
%% For more information about virtual nodes, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html">Virtual
%% nodes</a>.
create_virtual_node(Client, MeshName, Input) ->
    create_virtual_node(Client, MeshName, Input, []).
create_virtual_node(Client, MeshName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualNodes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual router within a service mesh.
%%
%% Specify a <code>listener</code> for any inbound traffic that your virtual
%% router
%%
%% receives. Create a virtual router for each protocol and port that you need
%% to route.
%%
%% Virtual routers handle traffic for one or more virtual services within
%% your mesh. After you
%%
%% create your virtual router, create and associate routes for your virtual
%% router that direct
%%
%% incoming requests to different virtual nodes.
%%
%% For more information about virtual routers, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html">Virtual
%% routers</a>.
create_virtual_router(Client, MeshName, Input) ->
    create_virtual_router(Client, MeshName, Input, []).
create_virtual_router(Client, MeshName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouters"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual service within a service mesh.
%%
%% A virtual service is an abstraction of a real service that is provided by
%% a virtual node
%%
%% directly or indirectly by means of a virtual router. Dependent services
%% call your virtual
%%
%% service by its <code>virtualServiceName</code>, and those requests are
%% routed to the
%%
%% virtual node or virtual router that is specified as the provider for the
%% virtual
%%
%% service.
%%
%% For more information about virtual services, see <a
%% href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html">Virtual
%% services</a>.
create_virtual_service(Client, MeshName, Input) ->
    create_virtual_service(Client, MeshName, Input, []).
create_virtual_service(Client, MeshName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualServices"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing gateway route.
delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input) ->
    delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input, []).
delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateway/", http_uri:encode(VirtualGatewayName), "/gatewayRoutes/", http_uri:encode(GatewayRouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing service mesh.
%%
%% You must delete all resources (virtual services, routes, virtual routers,
%% and virtual
%%
%% nodes) in the service mesh before you can delete the mesh itself.
delete_mesh(Client, MeshName, Input) ->
    delete_mesh(Client, MeshName, Input, []).
delete_mesh(Client, MeshName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing route.
delete_route(Client, MeshName, RouteName, VirtualRouterName, Input) ->
    delete_route(Client, MeshName, RouteName, VirtualRouterName, Input, []).
delete_route(Client, MeshName, RouteName, VirtualRouterName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouter/", http_uri:encode(VirtualRouterName), "/routes/", http_uri:encode(RouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual gateway. You cannot delete a virtual
%% gateway if any gateway
%%
%% routes are associated to it.
delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input) ->
    delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input, []).
delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateways/", http_uri:encode(VirtualGatewayName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual node.
%%
%% You must delete any virtual services that list a virtual node as a service
%% provider
%%
%% before you can delete the virtual node itself.
delete_virtual_node(Client, MeshName, VirtualNodeName, Input) ->
    delete_virtual_node(Client, MeshName, VirtualNodeName, Input, []).
delete_virtual_node(Client, MeshName, VirtualNodeName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualNodes/", http_uri:encode(VirtualNodeName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual router.
%%
%% You must delete any routes associated with the virtual router before you
%% can delete the
%%
%% router itself.
delete_virtual_router(Client, MeshName, VirtualRouterName, Input) ->
    delete_virtual_router(Client, MeshName, VirtualRouterName, Input, []).
delete_virtual_router(Client, MeshName, VirtualRouterName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouters/", http_uri:encode(VirtualRouterName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual service.
delete_virtual_service(Client, MeshName, VirtualServiceName, Input) ->
    delete_virtual_service(Client, MeshName, VirtualServiceName, Input, []).
delete_virtual_service(Client, MeshName, VirtualServiceName, Input0, Options) ->
    Method = delete,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualServices/", http_uri:encode(VirtualServiceName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an existing gateway route.
describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, MeshOwner)
  when is_map(Client) ->
    describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, MeshOwner, []).
describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateway/", http_uri:encode(VirtualGatewayName), "/gatewayRoutes/", http_uri:encode(GatewayRouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing service mesh.
describe_mesh(Client, MeshName, MeshOwner)
  when is_map(Client) ->
    describe_mesh(Client, MeshName, MeshOwner, []).
describe_mesh(Client, MeshName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing route.
describe_route(Client, MeshName, RouteName, VirtualRouterName, MeshOwner)
  when is_map(Client) ->
    describe_route(Client, MeshName, RouteName, VirtualRouterName, MeshOwner, []).
describe_route(Client, MeshName, RouteName, VirtualRouterName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouter/", http_uri:encode(VirtualRouterName), "/routes/", http_uri:encode(RouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual gateway.
describe_virtual_gateway(Client, MeshName, VirtualGatewayName, MeshOwner)
  when is_map(Client) ->
    describe_virtual_gateway(Client, MeshName, VirtualGatewayName, MeshOwner, []).
describe_virtual_gateway(Client, MeshName, VirtualGatewayName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateways/", http_uri:encode(VirtualGatewayName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual node.
describe_virtual_node(Client, MeshName, VirtualNodeName, MeshOwner)
  when is_map(Client) ->
    describe_virtual_node(Client, MeshName, VirtualNodeName, MeshOwner, []).
describe_virtual_node(Client, MeshName, VirtualNodeName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualNodes/", http_uri:encode(VirtualNodeName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual router.
describe_virtual_router(Client, MeshName, VirtualRouterName, MeshOwner)
  when is_map(Client) ->
    describe_virtual_router(Client, MeshName, VirtualRouterName, MeshOwner, []).
describe_virtual_router(Client, MeshName, VirtualRouterName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouters/", http_uri:encode(VirtualRouterName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual service.
describe_virtual_service(Client, MeshName, VirtualServiceName, MeshOwner)
  when is_map(Client) ->
    describe_virtual_service(Client, MeshName, VirtualServiceName, MeshOwner, []).
describe_virtual_service(Client, MeshName, VirtualServiceName, MeshOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualServices/", http_uri:encode(VirtualServiceName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, MeshOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing gateway routes that are associated to a
%% virtual
%%
%% gateway.
list_gateway_routes(Client, MeshName, VirtualGatewayName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_gateway_routes(Client, MeshName, VirtualGatewayName, Limit, MeshOwner, NextToken, []).
list_gateway_routes(Client, MeshName, VirtualGatewayName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateway/", http_uri:encode(VirtualGatewayName), "/gatewayRoutes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing service meshes.
list_meshes(Client, Limit, NextToken)
  when is_map(Client) ->
    list_meshes(Client, Limit, NextToken, []).
list_meshes(Client, Limit, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing routes in a service mesh.
list_routes(Client, MeshName, VirtualRouterName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_routes(Client, MeshName, VirtualRouterName, Limit, MeshOwner, NextToken, []).
list_routes(Client, MeshName, VirtualRouterName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouter/", http_uri:encode(VirtualRouterName), "/routes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for an App Mesh resource.
list_tags_for_resource(Client, Limit, NextToken, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Limit, NextToken, ResourceArn, []).
list_tags_for_resource(Client, Limit, NextToken, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/tags"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual gateways in a service mesh.
list_virtual_gateways(Client, MeshName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_virtual_gateways(Client, MeshName, Limit, MeshOwner, NextToken, []).
list_virtual_gateways(Client, MeshName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateways"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual nodes.
list_virtual_nodes(Client, MeshName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_virtual_nodes(Client, MeshName, Limit, MeshOwner, NextToken, []).
list_virtual_nodes(Client, MeshName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualNodes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual routers in a service mesh.
list_virtual_routers(Client, MeshName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_virtual_routers(Client, MeshName, Limit, MeshOwner, NextToken, []).
list_virtual_routers(Client, MeshName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouters"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual services in a service mesh.
list_virtual_services(Client, MeshName, Limit, MeshOwner, NextToken)
  when is_map(Client) ->
    list_virtual_services(Client, MeshName, Limit, MeshOwner, NextToken, []).
list_virtual_services(Client, MeshName, Limit, MeshOwner, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualServices"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"meshOwner">>, MeshOwner},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% <code>resourceArn</code>.
%%
%% If existing tags on a resource aren't specified in the request parameters,
%% they aren't
%%
%% changed. When a resource is deleted, the tags associated with that
%% resource are also
%%
%% deleted.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/tag"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/untag"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing gateway route that is associated to a specified
%% virtual gateway in a
%%
%% service mesh.
update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input) ->
    update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input, []).
update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateway/", http_uri:encode(VirtualGatewayName), "/gatewayRoutes/", http_uri:encode(GatewayRouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing service mesh.
update_mesh(Client, MeshName, Input) ->
    update_mesh(Client, MeshName, Input, []).
update_mesh(Client, MeshName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing route for a specified service mesh and virtual
%% router.
update_route(Client, MeshName, RouteName, VirtualRouterName, Input) ->
    update_route(Client, MeshName, RouteName, VirtualRouterName, Input, []).
update_route(Client, MeshName, RouteName, VirtualRouterName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouter/", http_uri:encode(VirtualRouterName), "/routes/", http_uri:encode(RouteName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual gateway in a specified service mesh.
update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input) ->
    update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input, []).
update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualGateways/", http_uri:encode(VirtualGatewayName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual node in a specified service mesh.
update_virtual_node(Client, MeshName, VirtualNodeName, Input) ->
    update_virtual_node(Client, MeshName, VirtualNodeName, Input, []).
update_virtual_node(Client, MeshName, VirtualNodeName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualNodes/", http_uri:encode(VirtualNodeName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual router in a specified service mesh.
update_virtual_router(Client, MeshName, VirtualRouterName, Input) ->
    update_virtual_router(Client, MeshName, VirtualRouterName, Input, []).
update_virtual_router(Client, MeshName, VirtualRouterName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualRouters/", http_uri:encode(VirtualRouterName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual service in a specified service mesh.
update_virtual_service(Client, MeshName, VirtualServiceName, Input) ->
    update_virtual_service(Client, MeshName, VirtualServiceName, Input, []).
update_virtual_service(Client, MeshName, VirtualServiceName, Input0, Options) ->
    Method = put,
    Path = ["/v20190125/meshes/", http_uri:encode(MeshName), "/virtualServices/", http_uri:encode(VirtualServiceName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"appmesh">>},
    Host = build_host(<<"appmesh">>, Client1),
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
