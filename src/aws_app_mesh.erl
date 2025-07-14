%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc App Mesh is a service mesh based on the Envoy proxy that makes it
%% easy to
%% monitor and control microservices.
%%
%% App Mesh standardizes how your microservices
%% communicate, giving you end-to-end visibility and helping to ensure high
%% availability for
%% your applications.
%%
%% App Mesh gives you consistent visibility and network traffic controls for
%% every microservice in an application. You can use App Mesh with Amazon Web
%% Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on Amazon Web
%% Services, and
%% Amazon EC2.
%%
%% App Mesh supports microservice applications that use service discovery
%% naming for their components. For more information about service discovery
%% on Amazon ECS, see Service
%% Discovery:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
%% in the Amazon Elastic Container Service Developer Guide. Kubernetes
%% `kube-dns' and `coredns' are supported. For more information,
%% see DNS
%% for Services and Pods:
%% https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/
%% in the Kubernetes documentation.
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
         describe_gateway_route/4,
         describe_gateway_route/6,
         describe_gateway_route/7,
         describe_mesh/2,
         describe_mesh/4,
         describe_mesh/5,
         describe_route/4,
         describe_route/6,
         describe_route/7,
         describe_virtual_gateway/3,
         describe_virtual_gateway/5,
         describe_virtual_gateway/6,
         describe_virtual_node/3,
         describe_virtual_node/5,
         describe_virtual_node/6,
         describe_virtual_router/3,
         describe_virtual_router/5,
         describe_virtual_router/6,
         describe_virtual_service/3,
         describe_virtual_service/5,
         describe_virtual_service/6,
         list_gateway_routes/3,
         list_gateway_routes/5,
         list_gateway_routes/6,
         list_meshes/1,
         list_meshes/3,
         list_meshes/4,
         list_routes/3,
         list_routes/5,
         list_routes/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_virtual_gateways/2,
         list_virtual_gateways/4,
         list_virtual_gateways/5,
         list_virtual_nodes/2,
         list_virtual_nodes/4,
         list_virtual_nodes/5,
         list_virtual_routers/2,
         list_virtual_routers/4,
         list_virtual_routers/5,
         list_virtual_services/2,
         list_virtual_services/4,
         list_virtual_services/5,
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



%% Example:
%% create_virtual_gateway_output() :: #{
%%   <<"virtualGateway">> := virtual_gateway_data()
%% }
-type create_virtual_gateway_output() :: #{binary() => any()}.


%% Example:
%% http_timeout() :: #{
%%   <<"idle">> => duration(),
%%   <<"perRequest">> => duration()
%% }
-type http_timeout() :: #{binary() => any()}.


%% Example:
%% subject_alternative_names() :: #{
%%   <<"match">> => subject_alternative_name_matchers()
%% }
-type subject_alternative_names() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualGatewayName">> => string()
%% }
-type virtual_gateway_ref() :: #{binary() => any()}.


%% Example:
%% update_route_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => route_spec()
%% }
-type update_route_input() :: #{binary() => any()}.


%% Example:
%% describe_virtual_router_output() :: #{
%%   <<"virtualRouter">> => virtual_router_data()
%% }
-type describe_virtual_router_output() :: #{binary() => any()}.


%% Example:
%% create_virtual_service_output() :: #{
%%   <<"virtualService">> => virtual_service_data()
%% }
-type create_virtual_service_output() :: #{binary() => any()}.


%% Example:
%% delete_virtual_service_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_virtual_service_input() :: #{binary() => any()}.


%% Example:
%% tls_validation_context_sds_trust() :: #{
%%   <<"secretName">> => string()
%% }
-type tls_validation_context_sds_trust() :: #{binary() => any()}.


%% Example:
%% resource_metadata() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"uid">> => [string()],
%%   <<"version">> => [float()]
%% }
-type resource_metadata() :: #{binary() => any()}.


%% Example:
%% mesh_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()]
%% }
-type mesh_ref() :: #{binary() => any()}.


%% Example:
%% outlier_detection() :: #{
%%   <<"baseEjectionDuration">> => duration(),
%%   <<"interval">> => duration(),
%%   <<"maxEjectionPercent">> => integer(),
%%   <<"maxServerErrors">> => float()
%% }
-type outlier_detection() :: #{binary() => any()}.


%% Example:
%% grpc_gateway_route_rewrite() :: #{
%%   <<"hostname">> => gateway_route_hostname_rewrite()
%% }
-type grpc_gateway_route_rewrite() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_prefix_rewrite() :: #{
%%   <<"defaultPrefix">> => string(),
%%   <<"value">> => string()
%% }
-type http_gateway_route_prefix_rewrite() :: #{binary() => any()}.


%% Example:
%% virtual_node_grpc_connection_pool() :: #{
%%   <<"maxRequests">> => integer()
%% }
-type virtual_node_grpc_connection_pool() :: #{binary() => any()}.


%% Example:
%% update_mesh_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"spec">> => mesh_spec()
%% }
-type update_mesh_input() :: #{binary() => any()}.


%% Example:
%% list_virtual_gateways_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_virtual_gateways_input() :: #{binary() => any()}.


%% Example:
%% gateway_route_hostname_match() :: #{
%%   <<"exact">> => string(),
%%   <<"suffix">> => string()
%% }
-type gateway_route_hostname_match() :: #{binary() => any()}.


%% Example:
%% update_virtual_router_output() :: #{
%%   <<"virtualRouter">> => virtual_router_data()
%% }
-type update_virtual_router_output() :: #{binary() => any()}.


%% Example:
%% create_virtual_router_output() :: #{
%%   <<"virtualRouter">> => virtual_router_data()
%% }
-type create_virtual_router_output() :: #{binary() => any()}.


%% Example:
%% create_route_output() :: #{
%%   <<"route">> => route_data()
%% }
-type create_route_output() :: #{binary() => any()}.


%% Example:
%% delete_virtual_gateway_output() :: #{
%%   <<"virtualGateway">> := virtual_gateway_data()
%% }
-type delete_virtual_gateway_output() :: #{binary() => any()}.


%% Example:
%% create_mesh_output() :: #{
%%   <<"mesh">> => mesh_data()
%% }
-type create_mesh_output() :: #{binary() => any()}.


%% Example:
%% grpc_route_match() :: #{
%%   <<"metadata">> => list(grpc_route_metadata()),
%%   <<"methodName">> => string(),
%%   <<"port">> => integer(),
%%   <<"serviceName">> => string()
%% }
-type grpc_route_match() :: #{binary() => any()}.


%% Example:
%% describe_route_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_route_input() :: #{binary() => any()}.


%% Example:
%% listener() :: #{
%%   <<"connectionPool">> => list(),
%%   <<"healthCheck">> => health_check_policy(),
%%   <<"outlierDetection">> => outlier_detection(),
%%   <<"portMapping">> => port_mapping(),
%%   <<"timeout">> => list(),
%%   <<"tls">> => listener_tls()
%% }
-type listener() :: #{binary() => any()}.


%% Example:
%% tls_validation_context_acm_trust() :: #{
%%   <<"certificateAuthorityArns">> => list(string())
%% }
-type tls_validation_context_acm_trust() :: #{binary() => any()}.


%% Example:
%% match_range() :: #{
%%   <<"end">> => [float()],
%%   <<"start">> => [float()]
%% }
-type match_range() :: #{binary() => any()}.


%% Example:
%% create_route_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"routeName">> => string(),
%%   <<"spec">> => route_spec(),
%%   <<"tags">> => list(tag_ref())
%% }
-type create_route_input() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% update_virtual_node_output() :: #{
%%   <<"virtualNode">> => virtual_node_data()
%% }
-type update_virtual_node_output() :: #{binary() => any()}.


%% Example:
%% delete_virtual_service_output() :: #{
%%   <<"virtualService">> => virtual_service_data()
%% }
-type delete_virtual_service_output() :: #{binary() => any()}.


%% Example:
%% tcp_route_action() :: #{
%%   <<"weightedTargets">> => list(weighted_target())
%% }
-type tcp_route_action() :: #{binary() => any()}.


%% Example:
%% weighted_target() :: #{
%%   <<"port">> => integer(),
%%   <<"virtualNode">> => string(),
%%   <<"weight">> => integer()
%% }
-type weighted_target() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% tag_ref() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_ref() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_client_policy() :: #{
%%   <<"tls">> => virtual_gateway_client_policy_tls()
%% }
-type virtual_gateway_client_policy() :: #{binary() => any()}.


%% Example:
%% virtual_service_status() :: #{
%%   <<"status">> => string()
%% }
-type virtual_service_status() :: #{binary() => any()}.


%% Example:
%% update_virtual_gateway_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> := virtual_gateway_spec()
%% }
-type update_virtual_gateway_input() :: #{binary() => any()}.


%% Example:
%% describe_gateway_route_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_gateway_route_input() :: #{binary() => any()}.


%% Example:
%% list_routes_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"routes">> => list(route_ref())
%% }
-type list_routes_output() :: #{binary() => any()}.


%% Example:
%% mesh_spec() :: #{
%%   <<"egressFilter">> => egress_filter(),
%%   <<"serviceDiscovery">> => mesh_service_discovery()
%% }
-type mesh_spec() :: #{binary() => any()}.


%% Example:
%% virtual_node_http2_connection_pool() :: #{
%%   <<"maxRequests">> => integer()
%% }
-type virtual_node_http2_connection_pool() :: #{binary() => any()}.


%% Example:
%% http_retry_policy() :: #{
%%   <<"httpRetryEvents">> => list(string()),
%%   <<"maxRetries">> => float(),
%%   <<"perRetryTimeout">> => duration(),
%%   <<"tcpRetryEvents">> => list(string())
%% }
-type http_retry_policy() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_spec() :: #{
%%   <<"backendDefaults">> => virtual_gateway_backend_defaults(),
%%   <<"listeners">> => list(virtual_gateway_listener()),
%%   <<"logging">> => virtual_gateway_logging()
%% }
-type virtual_gateway_spec() :: #{binary() => any()}.


%% Example:
%% describe_virtual_gateway_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_virtual_gateway_input() :: #{binary() => any()}.


%% Example:
%% listener_tls_validation_context() :: #{
%%   <<"subjectAlternativeNames">> => subject_alternative_names(),
%%   <<"trust">> => list()
%% }
-type listener_tls_validation_context() :: #{binary() => any()}.


%% Example:
%% virtual_router_listener() :: #{
%%   <<"portMapping">> => port_mapping()
%% }
-type virtual_router_listener() :: #{binary() => any()}.


%% Example:
%% mesh_status() :: #{
%%   <<"status">> => string()
%% }
-type mesh_status() :: #{binary() => any()}.


%% Example:
%% aws_cloud_map_service_discovery() :: #{
%%   <<"attributes">> => list(aws_cloud_map_instance_attribute()),
%%   <<"ipPreference">> => string(),
%%   <<"namespaceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type aws_cloud_map_service_discovery() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% update_virtual_router_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_router_spec()
%% }
-type update_virtual_router_input() :: #{binary() => any()}.


%% Example:
%% mesh_service_discovery() :: #{
%%   <<"ipPreference">> => string()
%% }
-type mesh_service_discovery() :: #{binary() => any()}.


%% Example:
%% list_meshes_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_meshes_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"tags">> => list(tag_ref())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% virtual_service_spec() :: #{
%%   <<"provider">> => list()
%% }
-type virtual_service_spec() :: #{binary() => any()}.


%% Example:
%% mesh_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => mesh_spec(),
%%   <<"status">> => mesh_status()
%% }
-type mesh_data() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_grpc_connection_pool() :: #{
%%   <<"maxRequests">> => integer()
%% }
-type virtual_gateway_grpc_connection_pool() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_rewrite() :: #{
%%   <<"hostname">> => gateway_route_hostname_rewrite(),
%%   <<"path">> => http_gateway_route_path_rewrite(),
%%   <<"prefix">> => http_gateway_route_prefix_rewrite()
%% }
-type http_gateway_route_rewrite() :: #{binary() => any()}.


%% Example:
%% delete_route_output() :: #{
%%   <<"route">> => route_data()
%% }
-type delete_route_output() :: #{binary() => any()}.


%% Example:
%% list_virtual_nodes_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"virtualNodes">> => list(virtual_node_ref())
%% }
-type list_virtual_nodes_output() :: #{binary() => any()}.


%% Example:
%% route_status() :: #{
%%   <<"status">> => string()
%% }
-type route_status() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener_tls_validation_context() :: #{
%%   <<"subjectAlternativeNames">> => subject_alternative_names(),
%%   <<"trust">> => list()
%% }
-type virtual_gateway_listener_tls_validation_context() :: #{binary() => any()}.


%% Example:
%% describe_virtual_router_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_virtual_router_input() :: #{binary() => any()}.


%% Example:
%% list_meshes_output() :: #{
%%   <<"meshes">> => list(mesh_ref()),
%%   <<"nextToken">> => [string()]
%% }
-type list_meshes_output() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener_tls_sds_certificate() :: #{
%%   <<"secretName">> => string()
%% }
-type virtual_gateway_listener_tls_sds_certificate() :: #{binary() => any()}.


%% Example:
%% list_virtual_routers_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_virtual_routers_input() :: #{binary() => any()}.


%% Example:
%% gateway_route_target() :: #{
%%   <<"port">> => integer(),
%%   <<"virtualService">> => gateway_route_virtual_service()
%% }
-type gateway_route_target() :: #{binary() => any()}.


%% Example:
%% virtual_node_tcp_connection_pool() :: #{
%%   <<"maxConnections">> => integer()
%% }
-type virtual_node_tcp_connection_pool() :: #{binary() => any()}.


%% Example:
%% gateway_route_spec() :: #{
%%   <<"grpcRoute">> => grpc_gateway_route(),
%%   <<"http2Route">> => http_gateway_route(),
%%   <<"httpRoute">> => http_gateway_route(),
%%   <<"priority">> => integer()
%% }
-type gateway_route_spec() :: #{binary() => any()}.


%% Example:
%% list_virtual_nodes_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_virtual_nodes_input() :: #{binary() => any()}.


%% Example:
%% virtual_router_service_provider() :: #{
%%   <<"virtualRouterName">> => string()
%% }
-type virtual_router_service_provider() :: #{binary() => any()}.


%% Example:
%% grpc_route_metadata() :: #{
%%   <<"invert">> => [boolean()],
%%   <<"match">> => list(),
%%   <<"name">> => string()
%% }
-type grpc_route_metadata() :: #{binary() => any()}.


%% Example:
%% virtual_node_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualNodeName">> => string()
%% }
-type virtual_node_ref() :: #{binary() => any()}.


%% Example:
%% update_gateway_route_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> := gateway_route_spec()
%% }
-type update_gateway_route_input() :: #{binary() => any()}.


%% Example:
%% delete_gateway_route_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_gateway_route_input() :: #{binary() => any()}.


%% Example:
%% route_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"routeName">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualRouterName">> => string()
%% }
-type route_ref() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% tls_validation_context() :: #{
%%   <<"subjectAlternativeNames">> => subject_alternative_names(),
%%   <<"trust">> => list()
%% }
-type tls_validation_context() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_header() :: #{
%%   <<"invert">> => [boolean()],
%%   <<"match">> => list(),
%%   <<"name">> => string()
%% }
-type http_gateway_route_header() :: #{binary() => any()}.


%% Example:
%% describe_route_output() :: #{
%%   <<"route">> => route_data()
%% }
-type describe_route_output() :: #{binary() => any()}.


%% Example:
%% grpc_timeout() :: #{
%%   <<"idle">> => duration(),
%%   <<"perRequest">> => duration()
%% }
-type grpc_timeout() :: #{binary() => any()}.


%% Example:
%% client_policy() :: #{
%%   <<"tls">> => client_policy_tls()
%% }
-type client_policy() :: #{binary() => any()}.


%% Example:
%% create_virtual_router_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_router_spec(),
%%   <<"tags">> => list(tag_ref()),
%%   <<"virtualRouterName">> => string()
%% }
-type create_virtual_router_input() :: #{binary() => any()}.


%% Example:
%% tcp_route_match() :: #{
%%   <<"port">> => integer()
%% }
-type tcp_route_match() :: #{binary() => any()}.


%% Example:
%% update_virtual_service_output() :: #{
%%   <<"virtualService">> => virtual_service_data()
%% }
-type update_virtual_service_output() :: #{binary() => any()}.


%% Example:
%% subject_alternative_name_matchers() :: #{
%%   <<"exact">> => list(string())
%% }
-type subject_alternative_name_matchers() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_backend_defaults() :: #{
%%   <<"clientPolicy">> => virtual_gateway_client_policy()
%% }
-type virtual_gateway_backend_defaults() :: #{binary() => any()}.


%% Example:
%% list_virtual_gateways_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"virtualGateways">> := list(virtual_gateway_ref())
%% }
-type list_virtual_gateways_output() :: #{binary() => any()}.


%% Example:
%% describe_virtual_node_output() :: #{
%%   <<"virtualNode">> => virtual_node_data()
%% }
-type describe_virtual_node_output() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_file_access_log() :: #{
%%   <<"format">> => list(),
%%   <<"path">> => string()
%% }
-type virtual_gateway_file_access_log() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_logging() :: #{
%%   <<"accessLog">> => list()
%% }
-type virtual_gateway_logging() :: #{binary() => any()}.


%% Example:
%% list_gateway_routes_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_gateway_routes_input() :: #{binary() => any()}.


%% Example:
%% virtual_node_status() :: #{
%%   <<"status">> => string()
%% }
-type virtual_node_status() :: #{binary() => any()}.


%% Example:
%% gateway_route_virtual_service() :: #{
%%   <<"virtualServiceName">> => string()
%% }
-type gateway_route_virtual_service() :: #{binary() => any()}.


%% Example:
%% describe_virtual_gateway_output() :: #{
%%   <<"virtualGateway">> := virtual_gateway_data()
%% }
-type describe_virtual_gateway_output() :: #{binary() => any()}.


%% Example:
%% delete_route_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_route_input() :: #{binary() => any()}.


%% Example:
%% virtual_node_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => virtual_node_spec(),
%%   <<"status">> => virtual_node_status(),
%%   <<"virtualNodeName">> => string()
%% }
-type virtual_node_data() :: #{binary() => any()}.


%% Example:
%% virtual_service_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualServiceName">> => string()
%% }
-type virtual_service_ref() :: #{binary() => any()}.


%% Example:
%% listener_tls_file_certificate() :: #{
%%   <<"certificateChain">> => string(),
%%   <<"privateKey">> => string()
%% }
-type listener_tls_file_certificate() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_status() :: #{
%%   <<"status">> => string()
%% }
-type virtual_gateway_status() :: #{binary() => any()}.

%% Example:
%% delete_mesh_input() :: #{}
-type delete_mesh_input() :: #{}.


%% Example:
%% virtual_node_service_provider() :: #{
%%   <<"virtualNodeName">> => string()
%% }
-type virtual_node_service_provider() :: #{binary() => any()}.


%% Example:
%% delete_virtual_router_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_virtual_router_input() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener_tls_acm_certificate() :: #{
%%   <<"certificateArn">> => string()
%% }
-type virtual_gateway_listener_tls_acm_certificate() :: #{binary() => any()}.


%% Example:
%% describe_gateway_route_output() :: #{
%%   <<"gatewayRoute">> := gateway_route_data()
%% }
-type describe_gateway_route_output() :: #{binary() => any()}.


%% Example:
%% create_virtual_node_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_node_spec(),
%%   <<"tags">> => list(tag_ref()),
%%   <<"virtualNodeName">> => string()
%% }
-type create_virtual_node_input() :: #{binary() => any()}.


%% Example:
%% virtual_router_spec() :: #{
%%   <<"listeners">> => list(virtual_router_listener())
%% }
-type virtual_router_spec() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener() :: #{
%%   <<"connectionPool">> => list(),
%%   <<"healthCheck">> => virtual_gateway_health_check_policy(),
%%   <<"portMapping">> => virtual_gateway_port_mapping(),
%%   <<"tls">> => virtual_gateway_listener_tls()
%% }
-type virtual_gateway_listener() :: #{binary() => any()}.


%% Example:
%% json_format_ref() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type json_format_ref() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"tags">> => list(tag_ref())
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_tls_validation_context_sds_trust() :: #{
%%   <<"secretName">> => string()
%% }
-type virtual_gateway_tls_validation_context_sds_trust() :: #{binary() => any()}.


%% Example:
%% listener_tls_acm_certificate() :: #{
%%   <<"certificateArn">> => string()
%% }
-type listener_tls_acm_certificate() :: #{binary() => any()}.


%% Example:
%% create_virtual_service_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_service_spec(),
%%   <<"tags">> => list(tag_ref()),
%%   <<"virtualServiceName">> => string()
%% }
-type create_virtual_service_input() :: #{binary() => any()}.


%% Example:
%% list_virtual_routers_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"virtualRouters">> => list(virtual_router_ref())
%% }
-type list_virtual_routers_output() :: #{binary() => any()}.


%% Example:
%% grpc_route_action() :: #{
%%   <<"weightedTargets">> => list(weighted_target())
%% }
-type grpc_route_action() :: #{binary() => any()}.


%% Example:
%% delete_virtual_router_output() :: #{
%%   <<"virtualRouter">> => virtual_router_data()
%% }
-type delete_virtual_router_output() :: #{binary() => any()}.


%% Example:
%% list_virtual_services_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"virtualServices">> => list(virtual_service_ref())
%% }
-type list_virtual_services_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% virtual_gateway_health_check_policy() :: #{
%%   <<"healthyThreshold">> => integer(),
%%   <<"intervalMillis">> => float(),
%%   <<"path">> => [string()],
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"timeoutMillis">> => float(),
%%   <<"unhealthyThreshold">> => integer()
%% }
-type virtual_gateway_health_check_policy() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_port_mapping() :: #{
%%   <<"port">> => integer(),
%%   <<"protocol">> => string()
%% }
-type virtual_gateway_port_mapping() :: #{binary() => any()}.


%% Example:
%% list_routes_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_routes_input() :: #{binary() => any()}.


%% Example:
%% describe_virtual_node_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_virtual_node_input() :: #{binary() => any()}.


%% Example:
%% create_gateway_route_output() :: #{
%%   <<"gatewayRoute">> := gateway_route_data()
%% }
-type create_gateway_route_output() :: #{binary() => any()}.


%% Example:
%% http_route_action() :: #{
%%   <<"weightedTargets">> => list(weighted_target())
%% }
-type http_route_action() :: #{binary() => any()}.


%% Example:
%% tcp_timeout() :: #{
%%   <<"idle">> => duration()
%% }
-type tcp_timeout() :: #{binary() => any()}.


%% Example:
%% update_gateway_route_output() :: #{
%%   <<"gatewayRoute">> := gateway_route_data()
%% }
-type update_gateway_route_output() :: #{binary() => any()}.


%% Example:
%% update_route_output() :: #{
%%   <<"route">> => route_data()
%% }
-type update_route_output() :: #{binary() => any()}.


%% Example:
%% tls_validation_context_file_trust() :: #{
%%   <<"certificateChain">> => string()
%% }
-type tls_validation_context_file_trust() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_http_connection_pool() :: #{
%%   <<"maxConnections">> => integer(),
%%   <<"maxPendingRequests">> => integer()
%% }
-type virtual_gateway_http_connection_pool() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_tls_validation_context() :: #{
%%   <<"subjectAlternativeNames">> => subject_alternative_names(),
%%   <<"trust">> => list()
%% }
-type virtual_gateway_tls_validation_context() :: #{binary() => any()}.


%% Example:
%% route_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"routeName">> => string(),
%%   <<"spec">> => route_spec(),
%%   <<"status">> => route_status(),
%%   <<"virtualRouterName">> => string()
%% }
-type route_data() :: #{binary() => any()}.


%% Example:
%% delete_gateway_route_output() :: #{
%%   <<"gatewayRoute">> := gateway_route_data()
%% }
-type delete_gateway_route_output() :: #{binary() => any()}.


%% Example:
%% virtual_node_http_connection_pool() :: #{
%%   <<"maxConnections">> => integer(),
%%   <<"maxPendingRequests">> => integer()
%% }
-type virtual_node_http_connection_pool() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_client_policy_tls() :: #{
%%   <<"certificate">> => list(),
%%   <<"enforce">> => [boolean()],
%%   <<"ports">> => list(integer()),
%%   <<"validation">> => virtual_gateway_tls_validation_context()
%% }
-type virtual_gateway_client_policy_tls() :: #{binary() => any()}.


%% Example:
%% tcp_route() :: #{
%%   <<"action">> => tcp_route_action(),
%%   <<"match">> => tcp_route_match(),
%%   <<"timeout">> => tcp_timeout()
%% }
-type tcp_route() :: #{binary() => any()}.


%% Example:
%% grpc_gateway_route() :: #{
%%   <<"action">> => grpc_gateway_route_action(),
%%   <<"match">> => grpc_gateway_route_match()
%% }
-type grpc_gateway_route() :: #{binary() => any()}.


%% Example:
%% grpc_gateway_route_metadata() :: #{
%%   <<"invert">> => [boolean()],
%%   <<"match">> => list(),
%%   <<"name">> => string()
%% }
-type grpc_gateway_route_metadata() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"tagKeys">> => list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% describe_mesh_output() :: #{
%%   <<"mesh">> => mesh_data()
%% }
-type describe_mesh_output() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_tls_validation_context_file_trust() :: #{
%%   <<"certificateChain">> => string()
%% }
-type virtual_gateway_tls_validation_context_file_trust() :: #{binary() => any()}.


%% Example:
%% backend_defaults() :: #{
%%   <<"clientPolicy">> => client_policy()
%% }
-type backend_defaults() :: #{binary() => any()}.


%% Example:
%% port_mapping() :: #{
%%   <<"port">> => integer(),
%%   <<"protocol">> => string()
%% }
-type port_mapping() :: #{binary() => any()}.


%% Example:
%% duration() :: #{
%%   <<"unit">> => string(),
%%   <<"value">> => float()
%% }
-type duration() :: #{binary() => any()}.


%% Example:
%% gateway_route_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"gatewayRouteName">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualGatewayName">> => string()
%% }
-type gateway_route_ref() :: #{binary() => any()}.


%% Example:
%% virtual_node_spec() :: #{
%%   <<"backendDefaults">> => backend_defaults(),
%%   <<"backends">> => list(list()),
%%   <<"listeners">> => list(listener()),
%%   <<"logging">> => logging(),
%%   <<"serviceDiscovery">> => list()
%% }
-type virtual_node_spec() :: #{binary() => any()}.


%% Example:
%% gateway_route_hostname_rewrite() :: #{
%%   <<"defaultTargetHostname">> => string()
%% }
-type gateway_route_hostname_rewrite() :: #{binary() => any()}.


%% Example:
%% delete_mesh_output() :: #{
%%   <<"mesh">> => mesh_data()
%% }
-type delete_mesh_output() :: #{binary() => any()}.


%% Example:
%% route_spec() :: #{
%%   <<"grpcRoute">> => grpc_route(),
%%   <<"http2Route">> => http_route(),
%%   <<"httpRoute">> => http_route(),
%%   <<"priority">> => integer(),
%%   <<"tcpRoute">> => tcp_route()
%% }
-type route_spec() :: #{binary() => any()}.


%% Example:
%% virtual_service_backend() :: #{
%%   <<"clientPolicy">> => client_policy(),
%%   <<"virtualServiceName">> => string()
%% }
-type virtual_service_backend() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"resourceArn">> => string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.


%% Example:
%% dns_service_discovery() :: #{
%%   <<"hostname">> => string(),
%%   <<"ipPreference">> => string(),
%%   <<"responseType">> => string()
%% }
-type dns_service_discovery() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% grpc_gateway_route_action() :: #{
%%   <<"rewrite">> => grpc_gateway_route_rewrite(),
%%   <<"target">> => gateway_route_target()
%% }
-type grpc_gateway_route_action() :: #{binary() => any()}.


%% Example:
%% delete_virtual_gateway_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_virtual_gateway_input() :: #{binary() => any()}.


%% Example:
%% update_virtual_node_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_node_spec()
%% }
-type update_virtual_node_input() :: #{binary() => any()}.


%% Example:
%% grpc_gateway_route_match() :: #{
%%   <<"hostname">> => gateway_route_hostname_match(),
%%   <<"metadata">> => list(grpc_gateway_route_metadata()),
%%   <<"port">> => integer(),
%%   <<"serviceName">> => string()
%% }
-type grpc_gateway_route_match() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_path_rewrite() :: #{
%%   <<"exact">> => string()
%% }
-type http_gateway_route_path_rewrite() :: #{binary() => any()}.


%% Example:
%% client_policy_tls() :: #{
%%   <<"certificate">> => list(),
%%   <<"enforce">> => [boolean()],
%%   <<"ports">> => list(integer()),
%%   <<"validation">> => tls_validation_context()
%% }
-type client_policy_tls() :: #{binary() => any()}.


%% Example:
%% update_virtual_service_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> => virtual_service_spec()
%% }
-type update_virtual_service_input() :: #{binary() => any()}.


%% Example:
%% create_gateway_route_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"gatewayRouteName">> := string(),
%%   <<"meshOwner">> => string(),
%%   <<"spec">> := gateway_route_spec(),
%%   <<"tags">> => list(tag_ref())
%% }
-type create_gateway_route_input() :: #{binary() => any()}.


%% Example:
%% delete_virtual_node_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type delete_virtual_node_input() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% virtual_router_status() :: #{
%%   <<"status">> => string()
%% }
-type virtual_router_status() :: #{binary() => any()}.


%% Example:
%% aws_cloud_map_instance_attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type aws_cloud_map_instance_attribute() :: #{binary() => any()}.


%% Example:
%% list_gateway_routes_output() :: #{
%%   <<"gatewayRoutes">> := list(gateway_route_ref()),
%%   <<"nextToken">> => [string()]
%% }
-type list_gateway_routes_output() :: #{binary() => any()}.


%% Example:
%% health_check_policy() :: #{
%%   <<"healthyThreshold">> => integer(),
%%   <<"intervalMillis">> => float(),
%%   <<"path">> => [string()],
%%   <<"port">> => integer(),
%%   <<"protocol">> => string(),
%%   <<"timeoutMillis">> => float(),
%%   <<"unhealthyThreshold">> => integer()
%% }
-type health_check_policy() :: #{binary() => any()}.


%% Example:
%% listener_tls_sds_certificate() :: #{
%%   <<"secretName">> => string()
%% }
-type listener_tls_sds_certificate() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_action() :: #{
%%   <<"rewrite">> => http_gateway_route_rewrite(),
%%   <<"target">> => gateway_route_target()
%% }
-type http_gateway_route_action() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% http_path_match() :: #{
%%   <<"exact">> => string(),
%%   <<"regex">> => string()
%% }
-type http_path_match() :: #{binary() => any()}.


%% Example:
%% create_virtual_gateway_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshOwner">> => string(),
%%   <<"spec">> := virtual_gateway_spec(),
%%   <<"tags">> => list(tag_ref()),
%%   <<"virtualGatewayName">> := string()
%% }
-type create_virtual_gateway_input() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_http2_connection_pool() :: #{
%%   <<"maxRequests">> => integer()
%% }
-type virtual_gateway_http2_connection_pool() :: #{binary() => any()}.


%% Example:
%% http_route_header() :: #{
%%   <<"invert">> => [boolean()],
%%   <<"match">> => list(),
%%   <<"name">> => string()
%% }
-type http_route_header() :: #{binary() => any()}.


%% Example:
%% file_access_log() :: #{
%%   <<"format">> => list(),
%%   <<"path">> => string()
%% }
-type file_access_log() :: #{binary() => any()}.


%% Example:
%% describe_mesh_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_mesh_input() :: #{binary() => any()}.


%% Example:
%% gateway_route_data() :: #{
%%   <<"gatewayRouteName">> => string(),
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => gateway_route_spec(),
%%   <<"status">> => gateway_route_status(),
%%   <<"virtualGatewayName">> => string()
%% }
-type gateway_route_data() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_tls_validation_context_acm_trust() :: #{
%%   <<"certificateAuthorityArns">> => list(string())
%% }
-type virtual_gateway_tls_validation_context_acm_trust() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener_tls_file_certificate() :: #{
%%   <<"certificateChain">> => string(),
%%   <<"privateKey">> => string()
%% }
-type virtual_gateway_listener_tls_file_certificate() :: #{binary() => any()}.


%% Example:
%% describe_virtual_service_output() :: #{
%%   <<"virtualService">> => virtual_service_data()
%% }
-type describe_virtual_service_output() :: #{binary() => any()}.


%% Example:
%% grpc_retry_policy() :: #{
%%   <<"grpcRetryEvents">> => list(string()),
%%   <<"httpRetryEvents">> => list(string()),
%%   <<"maxRetries">> => float(),
%%   <<"perRetryTimeout">> => duration(),
%%   <<"tcpRetryEvents">> => list(string())
%% }
-type grpc_retry_policy() :: #{binary() => any()}.


%% Example:
%% list_virtual_services_input() :: #{
%%   <<"limit">> => integer(),
%%   <<"meshOwner">> => string(),
%%   <<"nextToken">> => [string()]
%% }
-type list_virtual_services_input() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_listener_tls() :: #{
%%   <<"certificate">> => list(),
%%   <<"mode">> => string(),
%%   <<"validation">> => virtual_gateway_listener_tls_validation_context()
%% }
-type virtual_gateway_listener_tls() :: #{binary() => any()}.


%% Example:
%% http_route_match() :: #{
%%   <<"headers">> => list(http_route_header()),
%%   <<"method">> => string(),
%%   <<"path">> => http_path_match(),
%%   <<"port">> => integer(),
%%   <<"prefix">> => [string()],
%%   <<"queryParameters">> => list(http_query_parameter()),
%%   <<"scheme">> => string()
%% }
-type http_route_match() :: #{binary() => any()}.


%% Example:
%% update_mesh_output() :: #{
%%   <<"mesh">> => mesh_data()
%% }
-type update_mesh_output() :: #{binary() => any()}.


%% Example:
%% describe_virtual_service_input() :: #{
%%   <<"meshOwner">> => string()
%% }
-type describe_virtual_service_input() :: #{binary() => any()}.


%% Example:
%% update_virtual_gateway_output() :: #{
%%   <<"virtualGateway">> := virtual_gateway_data()
%% }
-type update_virtual_gateway_output() :: #{binary() => any()}.


%% Example:
%% egress_filter() :: #{
%%   <<"type">> => string()
%% }
-type egress_filter() :: #{binary() => any()}.


%% Example:
%% query_parameter_match() :: #{
%%   <<"exact">> => [string()]
%% }
-type query_parameter_match() :: #{binary() => any()}.


%% Example:
%% create_virtual_node_output() :: #{
%%   <<"virtualNode">> => virtual_node_data()
%% }
-type create_virtual_node_output() :: #{binary() => any()}.


%% Example:
%% virtual_service_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => virtual_service_spec(),
%%   <<"status">> => virtual_service_status(),
%%   <<"virtualServiceName">> => string()
%% }
-type virtual_service_data() :: #{binary() => any()}.


%% Example:
%% http_gateway_route() :: #{
%%   <<"action">> => http_gateway_route_action(),
%%   <<"match">> => http_gateway_route_match()
%% }
-type http_gateway_route() :: #{binary() => any()}.


%% Example:
%% gateway_route_status() :: #{
%%   <<"status">> => string()
%% }
-type gateway_route_status() :: #{binary() => any()}.


%% Example:
%% http_query_parameter() :: #{
%%   <<"match">> => query_parameter_match(),
%%   <<"name">> => string()
%% }
-type http_query_parameter() :: #{binary() => any()}.


%% Example:
%% http_route() :: #{
%%   <<"action">> => http_route_action(),
%%   <<"match">> => http_route_match(),
%%   <<"retryPolicy">> => http_retry_policy(),
%%   <<"timeout">> => http_timeout()
%% }
-type http_route() :: #{binary() => any()}.


%% Example:
%% virtual_router_ref() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"meshName">> => string(),
%%   <<"meshOwner">> => string(),
%%   <<"resourceOwner">> => string(),
%%   <<"version">> => [float()],
%%   <<"virtualRouterName">> => string()
%% }
-type virtual_router_ref() :: #{binary() => any()}.


%% Example:
%% http_gateway_route_match() :: #{
%%   <<"headers">> => list(http_gateway_route_header()),
%%   <<"hostname">> => gateway_route_hostname_match(),
%%   <<"method">> => string(),
%%   <<"path">> => http_path_match(),
%%   <<"port">> => integer(),
%%   <<"prefix">> => [string()],
%%   <<"queryParameters">> => list(http_query_parameter())
%% }
-type http_gateway_route_match() :: #{binary() => any()}.


%% Example:
%% listener_tls() :: #{
%%   <<"certificate">> => list(),
%%   <<"mode">> => string(),
%%   <<"validation">> => listener_tls_validation_context()
%% }
-type listener_tls() :: #{binary() => any()}.


%% Example:
%% delete_virtual_node_output() :: #{
%%   <<"virtualNode">> => virtual_node_data()
%% }
-type delete_virtual_node_output() :: #{binary() => any()}.


%% Example:
%% logging() :: #{
%%   <<"accessLog">> => list()
%% }
-type logging() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% grpc_route() :: #{
%%   <<"action">> => grpc_route_action(),
%%   <<"match">> => grpc_route_match(),
%%   <<"retryPolicy">> => grpc_retry_policy(),
%%   <<"timeout">> => grpc_timeout()
%% }
-type grpc_route() :: #{binary() => any()}.


%% Example:
%% virtual_gateway_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => virtual_gateway_spec(),
%%   <<"status">> => virtual_gateway_status(),
%%   <<"virtualGatewayName">> => string()
%% }
-type virtual_gateway_data() :: #{binary() => any()}.


%% Example:
%% virtual_router_data() :: #{
%%   <<"meshName">> => string(),
%%   <<"metadata">> => resource_metadata(),
%%   <<"spec">> => virtual_router_spec(),
%%   <<"status">> => virtual_router_status(),
%%   <<"virtualRouterName">> => string()
%% }
-type virtual_router_data() :: #{binary() => any()}.


%% Example:
%% create_mesh_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"meshName">> => string(),
%%   <<"spec">> => mesh_spec(),
%%   <<"tags">> => list(tag_ref())
%% }
-type create_mesh_input() :: #{binary() => any()}.

-type create_gateway_route_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_mesh_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_route_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_virtual_gateway_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_virtual_node_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_virtual_router_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_virtual_service_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_gateway_route_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_mesh_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_route_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_virtual_gateway_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_virtual_node_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_virtual_router_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type delete_virtual_service_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type describe_gateway_route_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_mesh_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_route_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_virtual_gateway_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_virtual_node_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_virtual_router_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_virtual_service_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_gateway_routes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_meshes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_routes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_virtual_gateways_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_virtual_nodes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_virtual_routers_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_virtual_services_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_gateway_route_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_mesh_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_route_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_virtual_gateway_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_virtual_node_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_virtual_router_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_virtual_service_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a gateway route.
%%
%% A gateway route is attached to a virtual gateway and routes traffic to an
%% existing
%% virtual service. If a route matches a request, it can distribute traffic
%% to a target
%% virtual service.
%%
%% For more information about gateway routes, see Gateway routes:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html.
-spec create_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_gateway_route_input()) ->
    {ok, create_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, create_gateway_route_errors(), tuple()}.
create_gateway_route(Client, MeshName, VirtualGatewayName, Input) ->
    create_gateway_route(Client, MeshName, VirtualGatewayName, Input, []).

-spec create_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_gateway_route_input(), proplists:proplist()) ->
    {ok, create_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, create_gateway_route_errors(), tuple()}.
create_gateway_route(Client, MeshName, VirtualGatewayName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateway/", aws_util:encode_uri(VirtualGatewayName), "/gatewayRoutes"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a service mesh.
%%
%% A service mesh is a logical boundary for network traffic between services
%% that are
%% represented by resources within the mesh. After you create your service
%% mesh, you can
%% create virtual services, virtual nodes, virtual routers, and routes to
%% distribute traffic
%% between the applications in your mesh.
%%
%% For more information about service meshes, see Service meshes:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html.
-spec create_mesh(aws_client:aws_client(), create_mesh_input()) ->
    {ok, create_mesh_output(), tuple()} |
    {error, any()} |
    {error, create_mesh_errors(), tuple()}.
create_mesh(Client, Input) ->
    create_mesh(Client, Input, []).

-spec create_mesh(aws_client:aws_client(), create_mesh_input(), proplists:proplist()) ->
    {ok, create_mesh_output(), tuple()} |
    {error, any()} |
    {error, create_mesh_errors(), tuple()}.
create_mesh(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes"],
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

%% @doc Creates a route that is associated with a virtual router.
%%
%% You can route several different protocols and define a retry policy for a
%% route.
%% Traffic can be routed to one or more virtual nodes.
%%
%% For more information about routes, see Routes:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html.
-spec create_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_input()) ->
    {ok, create_route_output(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, MeshName, VirtualRouterName, Input) ->
    create_route(Client, MeshName, VirtualRouterName, Input, []).

-spec create_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_input(), proplists:proplist()) ->
    {ok, create_route_output(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, MeshName, VirtualRouterName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouter/", aws_util:encode_uri(VirtualRouterName), "/routes"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual gateway.
%%
%% A virtual gateway allows resources outside your mesh to communicate to
%% resources that
%% are inside your mesh. The virtual gateway represents an Envoy proxy
%% running in an Amazon ECS task, in a Kubernetes service, or on an Amazon
%% EC2 instance. Unlike a
%% virtual node, which represents an Envoy running with an application, a
%% virtual gateway
%% represents Envoy deployed by itself.
%%
%% For more information about virtual gateways, see Virtual gateways:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html.
-spec create_virtual_gateway(aws_client:aws_client(), binary() | list(), create_virtual_gateway_input()) ->
    {ok, create_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_gateway_errors(), tuple()}.
create_virtual_gateway(Client, MeshName, Input) ->
    create_virtual_gateway(Client, MeshName, Input, []).

-spec create_virtual_gateway(aws_client:aws_client(), binary() | list(), create_virtual_gateway_input(), proplists:proplist()) ->
    {ok, create_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_gateway_errors(), tuple()}.
create_virtual_gateway(Client, MeshName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateways"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual node within a service mesh.
%%
%% A virtual node acts as a logical pointer to a particular task group, such
%% as an Amazon ECS service or a Kubernetes deployment. When you create a
%% virtual node, you can
%% specify the service discovery information for your task group, and whether
%% the proxy
%% running in a task group will communicate with other proxies using
%% Transport Layer Security
%% (TLS).
%%
%% You define a `listener' for any inbound traffic that your virtual node
%% expects. Any virtual service that your virtual node expects to communicate
%% to is specified
%% as a `backend'.
%%
%% The response metadata for your new virtual node contains the `arn'
%% that is
%% associated with the virtual node. Set this value to the full ARN; for
%% example,
%% `arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp')
%%
%% as the `APPMESH_RESOURCE_ARN' environment variable for your task
%% group's Envoy
%% proxy container in your task definition or pod spec. This is then mapped
%% to the
%% `node.id' and `node.cluster' Envoy parameters.
%%
%% By default, App Mesh uses the name of the resource you specified in
%% `APPMESH_RESOURCE_ARN' when Envoy is referring to itself in metrics
%% and
%% traces. You can override this behavior by setting the
%% `APPMESH_RESOURCE_CLUSTER' environment variable with your own name.
%%
%% For more information about virtual nodes, see Virtual nodes:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html.
%% You must be using `1.15.0' or later of the Envoy image when
%% setting these variables. For more information aboutApp Mesh Envoy
%% variables, see
%% Envoy
%% image: https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html in
%% the App Mesh User Guide.
-spec create_virtual_node(aws_client:aws_client(), binary() | list(), create_virtual_node_input()) ->
    {ok, create_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_node_errors(), tuple()}.
create_virtual_node(Client, MeshName, Input) ->
    create_virtual_node(Client, MeshName, Input, []).

-spec create_virtual_node(aws_client:aws_client(), binary() | list(), create_virtual_node_input(), proplists:proplist()) ->
    {ok, create_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_node_errors(), tuple()}.
create_virtual_node(Client, MeshName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualNodes"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual router within a service mesh.
%%
%% Specify a `listener' for any inbound traffic that your virtual router
%% receives. Create a virtual router for each protocol and port that you need
%% to route.
%% Virtual routers handle traffic for one or more virtual services within
%% your mesh. After you
%% create your virtual router, create and associate routes for your virtual
%% router that direct
%% incoming requests to different virtual nodes.
%%
%% For more information about virtual routers, see Virtual routers:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html.
-spec create_virtual_router(aws_client:aws_client(), binary() | list(), create_virtual_router_input()) ->
    {ok, create_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_router_errors(), tuple()}.
create_virtual_router(Client, MeshName, Input) ->
    create_virtual_router(Client, MeshName, Input, []).

-spec create_virtual_router(aws_client:aws_client(), binary() | list(), create_virtual_router_input(), proplists:proplist()) ->
    {ok, create_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_router_errors(), tuple()}.
create_virtual_router(Client, MeshName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouters"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a virtual service within a service mesh.
%%
%% A virtual service is an abstraction of a real service that is provided by
%% a virtual node
%% directly or indirectly by means of a virtual router. Dependent services
%% call your virtual
%% service by its `virtualServiceName', and those requests are routed to
%% the
%% virtual node or virtual router that is specified as the provider for the
%% virtual
%% service.
%%
%% For more information about virtual services, see Virtual services:
%% https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html.
-spec create_virtual_service(aws_client:aws_client(), binary() | list(), create_virtual_service_input()) ->
    {ok, create_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_service_errors(), tuple()}.
create_virtual_service(Client, MeshName, Input) ->
    create_virtual_service(Client, MeshName, Input, []).

-spec create_virtual_service(aws_client:aws_client(), binary() | list(), create_virtual_service_input(), proplists:proplist()) ->
    {ok, create_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, create_virtual_service_errors(), tuple()}.
create_virtual_service(Client, MeshName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualServices"],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing gateway route.
-spec delete_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_gateway_route_input()) ->
    {ok, delete_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, delete_gateway_route_errors(), tuple()}.
delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input) ->
    delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input, []).

-spec delete_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_gateway_route_input(), proplists:proplist()) ->
    {ok, delete_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, delete_gateway_route_errors(), tuple()}.
delete_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateway/", aws_util:encode_uri(VirtualGatewayName), "/gatewayRoutes/", aws_util:encode_uri(GatewayRouteName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing service mesh.
%%
%% You must delete all resources (virtual services, routes, virtual routers,
%% and virtual
%% nodes) in the service mesh before you can delete the mesh itself.
-spec delete_mesh(aws_client:aws_client(), binary() | list(), delete_mesh_input()) ->
    {ok, delete_mesh_output(), tuple()} |
    {error, any()} |
    {error, delete_mesh_errors(), tuple()}.
delete_mesh(Client, MeshName, Input) ->
    delete_mesh(Client, MeshName, Input, []).

-spec delete_mesh(aws_client:aws_client(), binary() | list(), delete_mesh_input(), proplists:proplist()) ->
    {ok, delete_mesh_output(), tuple()} |
    {error, any()} |
    {error, delete_mesh_errors(), tuple()}.
delete_mesh(Client, MeshName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), ""],
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

%% @doc Deletes an existing route.
-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_input()) ->
    {ok, delete_route_output(), tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, MeshName, RouteName, VirtualRouterName, Input) ->
    delete_route(Client, MeshName, RouteName, VirtualRouterName, Input, []).

-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_input(), proplists:proplist()) ->
    {ok, delete_route_output(), tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, MeshName, RouteName, VirtualRouterName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouter/", aws_util:encode_uri(VirtualRouterName), "/routes/", aws_util:encode_uri(RouteName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual gateway.
%%
%% You cannot delete a virtual gateway if any gateway
%% routes are associated to it.
-spec delete_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_gateway_input()) ->
    {ok, delete_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_gateway_errors(), tuple()}.
delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input) ->
    delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input, []).

-spec delete_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_gateway_input(), proplists:proplist()) ->
    {ok, delete_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_gateway_errors(), tuple()}.
delete_virtual_gateway(Client, MeshName, VirtualGatewayName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateways/", aws_util:encode_uri(VirtualGatewayName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual node.
%%
%% You must delete any virtual services that list a virtual node as a service
%% provider
%% before you can delete the virtual node itself.
-spec delete_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_node_input()) ->
    {ok, delete_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_node_errors(), tuple()}.
delete_virtual_node(Client, MeshName, VirtualNodeName, Input) ->
    delete_virtual_node(Client, MeshName, VirtualNodeName, Input, []).

-spec delete_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_node_input(), proplists:proplist()) ->
    {ok, delete_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_node_errors(), tuple()}.
delete_virtual_node(Client, MeshName, VirtualNodeName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualNodes/", aws_util:encode_uri(VirtualNodeName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual router.
%%
%% You must delete any routes associated with the virtual router before you
%% can delete the
%% router itself.
-spec delete_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_router_input()) ->
    {ok, delete_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_router_errors(), tuple()}.
delete_virtual_router(Client, MeshName, VirtualRouterName, Input) ->
    delete_virtual_router(Client, MeshName, VirtualRouterName, Input, []).

-spec delete_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_router_input(), proplists:proplist()) ->
    {ok, delete_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_router_errors(), tuple()}.
delete_virtual_router(Client, MeshName, VirtualRouterName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouters/", aws_util:encode_uri(VirtualRouterName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing virtual service.
-spec delete_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_service_input()) ->
    {ok, delete_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_service_errors(), tuple()}.
delete_virtual_service(Client, MeshName, VirtualServiceName, Input) ->
    delete_virtual_service(Client, MeshName, VirtualServiceName, Input, []).

-spec delete_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), delete_virtual_service_input(), proplists:proplist()) ->
    {ok, delete_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, delete_virtual_service_errors(), tuple()}.
delete_virtual_service(Client, MeshName, VirtualServiceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualServices/", aws_util:encode_uri(VirtualServiceName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an existing gateway route.
-spec describe_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, describe_gateway_route_errors(), tuple()}.
describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName)
  when is_map(Client) ->
    describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, #{}, #{}).

-spec describe_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, describe_gateway_route_errors(), tuple()}.
describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, QueryMap, HeadersMap, []).

-spec describe_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, describe_gateway_route_errors(), tuple()}.
describe_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateway/", aws_util:encode_uri(VirtualGatewayName), "/gatewayRoutes/", aws_util:encode_uri(GatewayRouteName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing service mesh.
-spec describe_mesh(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_mesh_output(), tuple()} |
    {error, any()} |
    {error, describe_mesh_errors(), tuple()}.
describe_mesh(Client, MeshName)
  when is_map(Client) ->
    describe_mesh(Client, MeshName, #{}, #{}).

-spec describe_mesh(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_mesh_output(), tuple()} |
    {error, any()} |
    {error, describe_mesh_errors(), tuple()}.
describe_mesh(Client, MeshName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_mesh(Client, MeshName, QueryMap, HeadersMap, []).

-spec describe_mesh(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_mesh_output(), tuple()} |
    {error, any()} |
    {error, describe_mesh_errors(), tuple()}.
describe_mesh(Client, MeshName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing route.
-spec describe_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_route_output(), tuple()} |
    {error, any()} |
    {error, describe_route_errors(), tuple()}.
describe_route(Client, MeshName, RouteName, VirtualRouterName)
  when is_map(Client) ->
    describe_route(Client, MeshName, RouteName, VirtualRouterName, #{}, #{}).

-spec describe_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_route_output(), tuple()} |
    {error, any()} |
    {error, describe_route_errors(), tuple()}.
describe_route(Client, MeshName, RouteName, VirtualRouterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_route(Client, MeshName, RouteName, VirtualRouterName, QueryMap, HeadersMap, []).

-spec describe_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_route_output(), tuple()} |
    {error, any()} |
    {error, describe_route_errors(), tuple()}.
describe_route(Client, MeshName, RouteName, VirtualRouterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouter/", aws_util:encode_uri(VirtualRouterName), "/routes/", aws_util:encode_uri(RouteName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual gateway.
-spec describe_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_gateway_errors(), tuple()}.
describe_virtual_gateway(Client, MeshName, VirtualGatewayName)
  when is_map(Client) ->
    describe_virtual_gateway(Client, MeshName, VirtualGatewayName, #{}, #{}).

-spec describe_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_gateway_errors(), tuple()}.
describe_virtual_gateway(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_gateway(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap, []).

-spec describe_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_gateway_errors(), tuple()}.
describe_virtual_gateway(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateways/", aws_util:encode_uri(VirtualGatewayName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual node.
-spec describe_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_node_errors(), tuple()}.
describe_virtual_node(Client, MeshName, VirtualNodeName)
  when is_map(Client) ->
    describe_virtual_node(Client, MeshName, VirtualNodeName, #{}, #{}).

-spec describe_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_node_errors(), tuple()}.
describe_virtual_node(Client, MeshName, VirtualNodeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_node(Client, MeshName, VirtualNodeName, QueryMap, HeadersMap, []).

-spec describe_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_node_errors(), tuple()}.
describe_virtual_node(Client, MeshName, VirtualNodeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualNodes/", aws_util:encode_uri(VirtualNodeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual router.
-spec describe_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_router_errors(), tuple()}.
describe_virtual_router(Client, MeshName, VirtualRouterName)
  when is_map(Client) ->
    describe_virtual_router(Client, MeshName, VirtualRouterName, #{}, #{}).

-spec describe_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_router_errors(), tuple()}.
describe_virtual_router(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_router(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap, []).

-spec describe_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_router_errors(), tuple()}.
describe_virtual_router(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouters/", aws_util:encode_uri(VirtualRouterName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing virtual service.
-spec describe_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_service_errors(), tuple()}.
describe_virtual_service(Client, MeshName, VirtualServiceName)
  when is_map(Client) ->
    describe_virtual_service(Client, MeshName, VirtualServiceName, #{}, #{}).

-spec describe_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_service_errors(), tuple()}.
describe_virtual_service(Client, MeshName, VirtualServiceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_service(Client, MeshName, VirtualServiceName, QueryMap, HeadersMap, []).

-spec describe_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, describe_virtual_service_errors(), tuple()}.
describe_virtual_service(Client, MeshName, VirtualServiceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualServices/", aws_util:encode_uri(VirtualServiceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing gateway routes that are associated to a
%% virtual
%% gateway.
-spec list_gateway_routes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_gateway_routes_output(), tuple()} |
    {error, any()} |
    {error, list_gateway_routes_errors(), tuple()}.
list_gateway_routes(Client, MeshName, VirtualGatewayName)
  when is_map(Client) ->
    list_gateway_routes(Client, MeshName, VirtualGatewayName, #{}, #{}).

-spec list_gateway_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_gateway_routes_output(), tuple()} |
    {error, any()} |
    {error, list_gateway_routes_errors(), tuple()}.
list_gateway_routes(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateway_routes(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap, []).

-spec list_gateway_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_gateway_routes_output(), tuple()} |
    {error, any()} |
    {error, list_gateway_routes_errors(), tuple()}.
list_gateway_routes(Client, MeshName, VirtualGatewayName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateway/", aws_util:encode_uri(VirtualGatewayName), "/gatewayRoutes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing service meshes.
-spec list_meshes(aws_client:aws_client()) ->
    {ok, list_meshes_output(), tuple()} |
    {error, any()} |
    {error, list_meshes_errors(), tuple()}.
list_meshes(Client)
  when is_map(Client) ->
    list_meshes(Client, #{}, #{}).

-spec list_meshes(aws_client:aws_client(), map(), map()) ->
    {ok, list_meshes_output(), tuple()} |
    {error, any()} |
    {error, list_meshes_errors(), tuple()}.
list_meshes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_meshes(Client, QueryMap, HeadersMap, []).

-spec list_meshes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_meshes_output(), tuple()} |
    {error, any()} |
    {error, list_meshes_errors(), tuple()}.
list_meshes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing routes in a service mesh.
-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_routes_output(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, MeshName, VirtualRouterName)
  when is_map(Client) ->
    list_routes(Client, MeshName, VirtualRouterName, #{}, #{}).

-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_routes_output(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routes(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap, []).

-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routes_output(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, MeshName, VirtualRouterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouter/", aws_util:encode_uri(VirtualRouterName), "/routes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for an App Mesh resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual gateways in a service mesh.
-spec list_virtual_gateways(aws_client:aws_client(), binary() | list()) ->
    {ok, list_virtual_gateways_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_gateways_errors(), tuple()}.
list_virtual_gateways(Client, MeshName)
  when is_map(Client) ->
    list_virtual_gateways(Client, MeshName, #{}, #{}).

-spec list_virtual_gateways(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_virtual_gateways_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_gateways_errors(), tuple()}.
list_virtual_gateways(Client, MeshName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_gateways(Client, MeshName, QueryMap, HeadersMap, []).

-spec list_virtual_gateways(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_virtual_gateways_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_gateways_errors(), tuple()}.
list_virtual_gateways(Client, MeshName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateways"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual nodes.
-spec list_virtual_nodes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_virtual_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_nodes_errors(), tuple()}.
list_virtual_nodes(Client, MeshName)
  when is_map(Client) ->
    list_virtual_nodes(Client, MeshName, #{}, #{}).

-spec list_virtual_nodes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_virtual_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_nodes_errors(), tuple()}.
list_virtual_nodes(Client, MeshName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_nodes(Client, MeshName, QueryMap, HeadersMap, []).

-spec list_virtual_nodes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_virtual_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_nodes_errors(), tuple()}.
list_virtual_nodes(Client, MeshName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualNodes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual routers in a service mesh.
-spec list_virtual_routers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_virtual_routers_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_routers_errors(), tuple()}.
list_virtual_routers(Client, MeshName)
  when is_map(Client) ->
    list_virtual_routers(Client, MeshName, #{}, #{}).

-spec list_virtual_routers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_virtual_routers_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_routers_errors(), tuple()}.
list_virtual_routers(Client, MeshName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_routers(Client, MeshName, QueryMap, HeadersMap, []).

-spec list_virtual_routers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_virtual_routers_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_routers_errors(), tuple()}.
list_virtual_routers(Client, MeshName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing virtual services in a service mesh.
-spec list_virtual_services(aws_client:aws_client(), binary() | list()) ->
    {ok, list_virtual_services_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_services_errors(), tuple()}.
list_virtual_services(Client, MeshName)
  when is_map(Client) ->
    list_virtual_services(Client, MeshName, #{}, #{}).

-spec list_virtual_services(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_virtual_services_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_services_errors(), tuple()}.
list_virtual_services(Client, MeshName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_services(Client, MeshName, QueryMap, HeadersMap, []).

-spec list_virtual_services(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_virtual_services_output(), tuple()} |
    {error, any()} |
    {error, list_virtual_services_errors(), tuple()}.
list_virtual_services(Client, MeshName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualServices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"meshOwner">>, maps:get(<<"meshOwner">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource aren't specified in the request
%% parameters, they aren't
%% changed. When a resource is deleted, the tags associated with that
%% resource are also
%% deleted.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/tag"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/untag"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing gateway route that is associated to a specified
%% virtual gateway in a
%% service mesh.
-spec update_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_gateway_route_input()) ->
    {ok, update_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_route_errors(), tuple()}.
update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input) ->
    update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input, []).

-spec update_gateway_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_gateway_route_input(), proplists:proplist()) ->
    {ok, update_gateway_route_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_route_errors(), tuple()}.
update_gateway_route(Client, GatewayRouteName, MeshName, VirtualGatewayName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateway/", aws_util:encode_uri(VirtualGatewayName), "/gatewayRoutes/", aws_util:encode_uri(GatewayRouteName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing service mesh.
-spec update_mesh(aws_client:aws_client(), binary() | list(), update_mesh_input()) ->
    {ok, update_mesh_output(), tuple()} |
    {error, any()} |
    {error, update_mesh_errors(), tuple()}.
update_mesh(Client, MeshName, Input) ->
    update_mesh(Client, MeshName, Input, []).

-spec update_mesh(aws_client:aws_client(), binary() | list(), update_mesh_input(), proplists:proplist()) ->
    {ok, update_mesh_output(), tuple()} |
    {error, any()} |
    {error, update_mesh_errors(), tuple()}.
update_mesh(Client, MeshName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), ""],
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

%% @doc Updates an existing route for a specified service mesh and virtual
%% router.
-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_input()) ->
    {ok, update_route_output(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, MeshName, RouteName, VirtualRouterName, Input) ->
    update_route(Client, MeshName, RouteName, VirtualRouterName, Input, []).

-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_input(), proplists:proplist()) ->
    {ok, update_route_output(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, MeshName, RouteName, VirtualRouterName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouter/", aws_util:encode_uri(VirtualRouterName), "/routes/", aws_util:encode_uri(RouteName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual gateway in a specified service mesh.
-spec update_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_gateway_input()) ->
    {ok, update_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_gateway_errors(), tuple()}.
update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input) ->
    update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input, []).

-spec update_virtual_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_gateway_input(), proplists:proplist()) ->
    {ok, update_virtual_gateway_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_gateway_errors(), tuple()}.
update_virtual_gateway(Client, MeshName, VirtualGatewayName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualGateways/", aws_util:encode_uri(VirtualGatewayName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual node in a specified service mesh.
-spec update_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_node_input()) ->
    {ok, update_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_node_errors(), tuple()}.
update_virtual_node(Client, MeshName, VirtualNodeName, Input) ->
    update_virtual_node(Client, MeshName, VirtualNodeName, Input, []).

-spec update_virtual_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_node_input(), proplists:proplist()) ->
    {ok, update_virtual_node_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_node_errors(), tuple()}.
update_virtual_node(Client, MeshName, VirtualNodeName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualNodes/", aws_util:encode_uri(VirtualNodeName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual router in a specified service mesh.
-spec update_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_router_input()) ->
    {ok, update_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_router_errors(), tuple()}.
update_virtual_router(Client, MeshName, VirtualRouterName, Input) ->
    update_virtual_router(Client, MeshName, VirtualRouterName, Input, []).

-spec update_virtual_router(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_router_input(), proplists:proplist()) ->
    {ok, update_virtual_router_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_router_errors(), tuple()}.
update_virtual_router(Client, MeshName, VirtualRouterName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualRouters/", aws_util:encode_uri(VirtualRouterName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing virtual service in a specified service mesh.
-spec update_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_service_input()) ->
    {ok, update_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_service_errors(), tuple()}.
update_virtual_service(Client, MeshName, VirtualServiceName, Input) ->
    update_virtual_service(Client, MeshName, VirtualServiceName, Input, []).

-spec update_virtual_service(aws_client:aws_client(), binary() | list(), binary() | list(), update_virtual_service_input(), proplists:proplist()) ->
    {ok, update_virtual_service_output(), tuple()} |
    {error, any()} |
    {error, update_virtual_service_errors(), tuple()}.
update_virtual_service(Client, MeshName, VirtualServiceName, Input0, Options0) ->
    Method = put,
    Path = ["/v20190125/meshes/", aws_util:encode_uri(MeshName), "/virtualServices/", aws_util:encode_uri(VirtualServiceName), ""],
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
                     {<<"meshOwner">>, <<"meshOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"appmesh">>},
    Host = build_host(<<"appmesh">>, Client1),
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
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
