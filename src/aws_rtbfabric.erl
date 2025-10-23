%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services RTB Fabric provides secure, low-latency
%% infrastructure for connecting real-time bidding (RTB) applications.
%%
%% Rather than hosting applications directly, RTB Fabric acts as the
%% connecting fabric that enables your applications to communicate
%% efficiently over private networks instead of the public internet. You
%% maintain complete control over your applications, data, and bidding
%% decisions, while RTB Fabric provides the underlying infrastructure for
%% secure, reliable connectivity.
%%
%% You can use these APIs to complete RTB Fabric tasks, such as setting up
%% audit log ingestions or viewing user access. For more information about
%% RTB Fabric, including the required permissions to use the service, see the
%% Amazon Web Services RTB Fabric User Guide:
%% https://docs.aws.amazon.com/rtb-fabric/latest/userguide/.
-module(aws_rtbfabric).

-export([accept_link/4,
         accept_link/5,
         create_inbound_external_link/3,
         create_inbound_external_link/4,
         create_link/3,
         create_link/4,
         create_outbound_external_link/3,
         create_outbound_external_link/4,
         create_requester_gateway/2,
         create_requester_gateway/3,
         create_responder_gateway/2,
         create_responder_gateway/3,
         delete_inbound_external_link/4,
         delete_inbound_external_link/5,
         delete_link/4,
         delete_link/5,
         delete_outbound_external_link/4,
         delete_outbound_external_link/5,
         delete_requester_gateway/3,
         delete_requester_gateway/4,
         delete_responder_gateway/3,
         delete_responder_gateway/4,
         get_inbound_external_link/3,
         get_inbound_external_link/5,
         get_inbound_external_link/6,
         get_link/3,
         get_link/5,
         get_link/6,
         get_outbound_external_link/3,
         get_outbound_external_link/5,
         get_outbound_external_link/6,
         get_requester_gateway/2,
         get_requester_gateway/4,
         get_requester_gateway/5,
         get_responder_gateway/2,
         get_responder_gateway/4,
         get_responder_gateway/5,
         list_links/2,
         list_links/4,
         list_links/5,
         list_requester_gateways/1,
         list_requester_gateways/3,
         list_requester_gateways/4,
         list_responder_gateways/1,
         list_responder_gateways/3,
         list_responder_gateways/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reject_link/4,
         reject_link/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_link/4,
         update_link/5,
         update_link_module_flow/4,
         update_link_module_flow/5,
         update_requester_gateway/3,
         update_requester_gateway/4,
         update_responder_gateway/3,
         update_responder_gateway/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% trust_store_configuration() :: #{
%%   <<"certificateAuthorityCertificates">> => list(string())
%% }
-type trust_store_configuration() :: #{binary() => any()}.


%% Example:
%% link_application_log_configuration() :: #{
%%   <<"sampling">> => link_application_log_sampling()
%% }
-type link_application_log_configuration() :: #{binary() => any()}.


%% Example:
%% update_link_module_flow_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"modules">> := list(module_configuration())
%% }
-type update_link_module_flow_request() :: #{binary() => any()}.


%% Example:
%% delete_link_response() :: #{
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_link_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_requester_gateway_request() :: #{}
-type get_requester_gateway_request() :: #{}.


%% Example:
%% create_inbound_external_link_request() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"clientToken">> := [string()],
%%   <<"tags">> => map()
%% }
-type create_inbound_external_link_request() :: #{binary() => any()}.


%% Example:
%% header_tag_action() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type header_tag_action() :: #{binary() => any()}.


%% Example:
%% module_configuration() :: #{
%%   <<"dependsOn">> => list(string()),
%%   <<"moduleParameters">> => list(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type module_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% filter_criterion() :: #{
%%   <<"path">> => [string()],
%%   <<"values">> => list([string()]())
%% }
-type filter_criterion() :: #{binary() => any()}.

%% Example:
%% delete_requester_gateway_request() :: #{}
-type delete_requester_gateway_request() :: #{}.


%% Example:
%% create_requester_gateway_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"description">> => [string()],
%%   <<"securityGroupIds">> := list(string()),
%%   <<"subnetIds">> := list(string()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> := string()
%% }
-type create_requester_gateway_request() :: #{binary() => any()}.


%% Example:
%% accept_link_response() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"direction">> => list(any()),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"peerGatewayId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type accept_link_response() :: #{binary() => any()}.


%% Example:
%% list_responder_gateways_response() :: #{
%%   <<"gatewayIds">> => list(string()),
%%   <<"nextToken">> => [string()]
%% }
-type list_responder_gateways_response() :: #{binary() => any()}.


%% Example:
%% get_requester_gateway_response() :: #{
%%   <<"activeLinksCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"domainName">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"totalLinksCount">> => [integer()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"vpcId">> => string()
%% }
-type get_requester_gateway_response() :: #{binary() => any()}.


%% Example:
%% get_inbound_external_link_response() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainName">> => string(),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_inbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% create_responder_gateway_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"description">> => [string()],
%%   <<"domainName">> => string(),
%%   <<"managedEndpointConfiguration">> => list(),
%%   <<"port">> := [integer()],
%%   <<"protocol">> := list(any()),
%%   <<"securityGroupIds">> := list(string()),
%%   <<"subnetIds">> := list(string()),
%%   <<"tags">> => map(),
%%   <<"trustStoreConfiguration">> => trust_store_configuration(),
%%   <<"vpcId">> := string()
%% }
-type create_responder_gateway_request() :: #{binary() => any()}.


%% Example:
%% list_requester_gateways_response() :: #{
%%   <<"gatewayIds">> => list(string()),
%%   <<"nextToken">> => [string()]
%% }
-type list_requester_gateways_response() :: #{binary() => any()}.


%% Example:
%% update_requester_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_requester_gateway_response() :: #{binary() => any()}.

%% Example:
%% delete_link_request() :: #{}
-type delete_link_request() :: #{}.


%% Example:
%% eks_endpoints_configuration() :: #{
%%   <<"clusterApiServerCaCertificateChain">> => string(),
%%   <<"clusterApiServerEndpointUri">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"endpointsResourceName">> => string(),
%%   <<"endpointsResourceNamespace">> => string(),
%%   <<"roleArn">> => [string()]
%% }
-type eks_endpoints_configuration() :: #{binary() => any()}.


%% Example:
%% create_link_response() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"customerProvidedId">> => [string()],
%%   <<"direction">> => list(any()),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"peerGatewayId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_link_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_responder_gateway_request() :: #{}
-type delete_responder_gateway_request() :: #{}.


%% Example:
%% link_attributes() :: #{
%%   <<"customerProvidedId">> => string(),
%%   <<"responderErrorMasking">> => list(responder_error_masking_for_http_code())
%% }
-type link_attributes() :: #{binary() => any()}.


%% Example:
%% list_links_response() :: #{
%%   <<"links">> => list(list_links_response_structure()),
%%   <<"nextToken">> => [string()]
%% }
-type list_links_response() :: #{binary() => any()}.


%% Example:
%% create_requester_gateway_response() :: #{
%%   <<"domainName">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_requester_gateway_response() :: #{binary() => any()}.


%% Example:
%% create_outbound_external_link_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"publicEndpoint">> := string(),
%%   <<"tags">> => map()
%% }
-type create_outbound_external_link_request() :: #{binary() => any()}.


%% Example:
%% create_link_request() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"httpResponderAllowed">> => [boolean()],
%%   <<"logSettings">> := link_log_settings(),
%%   <<"peerGatewayId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_link_request() :: #{binary() => any()}.


%% Example:
%% delete_inbound_external_link_response() :: #{
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_inbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% reject_link_request() :: #{}
-type reject_link_request() :: #{}.


%% Example:
%% list_links_response_structure() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"direction">> => list(any()),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"peerGatewayId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type list_links_response_structure() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_outbound_external_link_request() :: #{}
-type get_outbound_external_link_request() :: #{}.


%% Example:
%% get_link_response() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"direction">> => list(any()),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"logSettings">> => link_log_settings(),
%%   <<"peerGatewayId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_link_response() :: #{binary() => any()}.


%% Example:
%% list_responder_gateways_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_responder_gateways_request() :: #{binary() => any()}.


%% Example:
%% get_outbound_external_link_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"publicEndpoint">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_outbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% delete_outbound_external_link_response() :: #{
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_outbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% get_responder_gateway_response() :: #{
%%   <<"activeLinksCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"domainName">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"inboundLinksCount">> => [integer()],
%%   <<"managedEndpointConfiguration">> => list(),
%%   <<"port">> => [integer()],
%%   <<"protocol">> => list(any()),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"totalLinksCount">> => [integer()],
%%   <<"trustStoreConfiguration">> => trust_store_configuration(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"vpcId">> => string()
%% }
-type get_responder_gateway_response() :: #{binary() => any()}.

%% Example:
%% delete_inbound_external_link_request() :: #{}
-type delete_inbound_external_link_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_link_response() :: #{
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_link_response() :: #{binary() => any()}.


%% Example:
%% no_bid_action() :: #{
%%   <<"noBidReasonCode">> => [integer()]
%% }
-type no_bid_action() :: #{binary() => any()}.


%% Example:
%% update_link_module_flow_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_link_module_flow_response() :: #{binary() => any()}.


%% Example:
%% list_requester_gateways_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_requester_gateways_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"criteria">> => list(filter_criterion())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% delete_responder_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_responder_gateway_response() :: #{binary() => any()}.


%% Example:
%% list_links_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_links_request() :: #{binary() => any()}.


%% Example:
%% link_application_log_sampling() :: #{
%%   <<"errorLog">> => [float()],
%%   <<"filterLog">> => [float()]
%% }
-type link_application_log_sampling() :: #{binary() => any()}.


%% Example:
%% update_responder_gateway_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"description">> => [string()],
%%   <<"domainName">> => string(),
%%   <<"managedEndpointConfiguration">> => list(),
%%   <<"port">> := [integer()],
%%   <<"protocol">> := list(any()),
%%   <<"trustStoreConfiguration">> => trust_store_configuration()
%% }
-type update_responder_gateway_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% no_bid_module_parameters() :: #{
%%   <<"passThroughPercentage">> => [float()],
%%   <<"reason">> => [string()],
%%   <<"reasonCode">> => [integer()]
%% }
-type no_bid_module_parameters() :: #{binary() => any()}.

%% Example:
%% delete_outbound_external_link_request() :: #{}
-type delete_outbound_external_link_request() :: #{}.


%% Example:
%% responder_error_masking_for_http_code() :: #{
%%   <<"action">> => list(any()),
%%   <<"httpCode">> => [string()],
%%   <<"loggingTypes">> => list(list(any())()),
%%   <<"responseLoggingPercentage">> => [float()]
%% }
-type responder_error_masking_for_http_code() :: #{binary() => any()}.


%% Example:
%% update_requester_gateway_request() :: #{
%%   <<"clientToken">> := [string()],
%%   <<"description">> => [string()]
%% }
-type update_requester_gateway_request() :: #{binary() => any()}.


%% Example:
%% reject_link_response() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"direction">> => list(any()),
%%   <<"flowModules">> => list(module_configuration()),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"peerGatewayId">> => string(),
%%   <<"pendingFlowModules">> => list(module_configuration()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type reject_link_response() :: #{binary() => any()}.


%% Example:
%% delete_requester_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_requester_gateway_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% link_log_settings() :: #{
%%   <<"applicationLogs">> => link_application_log_configuration()
%% }
-type link_log_settings() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_outbound_external_link_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_outbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% auto_scaling_groups_configuration() :: #{
%%   <<"autoScalingGroupNames">> => list(string()),
%%   <<"roleArn">> => [string()]
%% }
-type auto_scaling_groups_configuration() :: #{binary() => any()}.


%% Example:
%% create_inbound_external_link_response() :: #{
%%   <<"domainName">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"linkId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_inbound_external_link_response() :: #{binary() => any()}.


%% Example:
%% open_rtb_attribute_module_parameters() :: #{
%%   <<"action">> => list(),
%%   <<"filterConfiguration">> => list(filter()),
%%   <<"filterType">> => list(any()),
%%   <<"holdbackPercentage">> => [float()]
%% }
-type open_rtb_attribute_module_parameters() :: #{binary() => any()}.

%% Example:
%% get_responder_gateway_request() :: #{}
-type get_responder_gateway_request() :: #{}.

%% Example:
%% get_inbound_external_link_request() :: #{}
-type get_inbound_external_link_request() :: #{}.


%% Example:
%% create_responder_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_responder_gateway_response() :: #{binary() => any()}.

%% Example:
%% get_link_request() :: #{}
-type get_link_request() :: #{}.


%% Example:
%% accept_link_request() :: #{
%%   <<"attributes">> => link_attributes(),
%%   <<"logSettings">> := link_log_settings()
%% }
-type accept_link_request() :: #{binary() => any()}.


%% Example:
%% update_responder_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_responder_gateway_response() :: #{binary() => any()}.


%% Example:
%% update_link_request() :: #{
%%   <<"logSettings">> => link_log_settings()
%% }
-type update_link_request() :: #{binary() => any()}.

-type accept_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_inbound_external_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_outbound_external_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_requester_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_responder_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_inbound_external_link_errors() ::
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

-type delete_outbound_external_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_requester_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_responder_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_inbound_external_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_outbound_external_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_requester_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_responder_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_links_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_requester_gateways_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_responder_gateways_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reject_link_errors() ::
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
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_link_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_link_module_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_requester_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_responder_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a link request between RTB applications.
%%
%% When a requester RTB application requests to link with a responder RTB
%% application, the responder can use this operation to accept the link
%% request and establish the connection.
-spec accept_link(aws_client:aws_client(), binary() | list(), binary() | list(), accept_link_request()) ->
    {ok, accept_link_response(), tuple()} |
    {error, any()} |
    {error, accept_link_errors(), tuple()}.
accept_link(Client, GatewayId, LinkId, Input) ->
    accept_link(Client, GatewayId, LinkId, Input, []).

-spec accept_link(aws_client:aws_client(), binary() | list(), binary() | list(), accept_link_request(), proplists:proplist()) ->
    {ok, accept_link_response(), tuple()} |
    {error, any()} |
    {error, accept_link_errors(), tuple()}.
accept_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = post,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), "/accept"],
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

%% @doc Creates an inbound external link.
-spec create_inbound_external_link(aws_client:aws_client(), binary() | list(), create_inbound_external_link_request()) ->
    {ok, create_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, create_inbound_external_link_errors(), tuple()}.
create_inbound_external_link(Client, GatewayId, Input) ->
    create_inbound_external_link(Client, GatewayId, Input, []).

-spec create_inbound_external_link(aws_client:aws_client(), binary() | list(), create_inbound_external_link_request(), proplists:proplist()) ->
    {ok, create_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, create_inbound_external_link_errors(), tuple()}.
create_inbound_external_link(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), "/inbound-external-link"],
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

%% @doc Creates a new link between RTB applications.
%%
%% Establishes a connection that allows RTB applications to communicate and
%% exchange bid requests and responses.
-spec create_link(aws_client:aws_client(), binary() | list(), create_link_request()) ->
    {ok, create_link_response(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, GatewayId, Input) ->
    create_link(Client, GatewayId, Input, []).

-spec create_link(aws_client:aws_client(), binary() | list(), create_link_request(), proplists:proplist()) ->
    {ok, create_link_response(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/create-link"],
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

%% @doc Creates an outbound external link.
-spec create_outbound_external_link(aws_client:aws_client(), binary() | list(), create_outbound_external_link_request()) ->
    {ok, create_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_external_link_errors(), tuple()}.
create_outbound_external_link(Client, GatewayId, Input) ->
    create_outbound_external_link(Client, GatewayId, Input, []).

-spec create_outbound_external_link(aws_client:aws_client(), binary() | list(), create_outbound_external_link_request(), proplists:proplist()) ->
    {ok, create_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_external_link_errors(), tuple()}.
create_outbound_external_link(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), "/outbound-external-link"],
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

%% @doc Creates a requester gateway.
-spec create_requester_gateway(aws_client:aws_client(), create_requester_gateway_request()) ->
    {ok, create_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_requester_gateway_errors(), tuple()}.
create_requester_gateway(Client, Input) ->
    create_requester_gateway(Client, Input, []).

-spec create_requester_gateway(aws_client:aws_client(), create_requester_gateway_request(), proplists:proplist()) ->
    {ok, create_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_requester_gateway_errors(), tuple()}.
create_requester_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/requester-gateway"],
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

%% @doc Creates a responder gateway.
-spec create_responder_gateway(aws_client:aws_client(), create_responder_gateway_request()) ->
    {ok, create_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_responder_gateway_errors(), tuple()}.
create_responder_gateway(Client, Input) ->
    create_responder_gateway(Client, Input, []).

-spec create_responder_gateway(aws_client:aws_client(), create_responder_gateway_request(), proplists:proplist()) ->
    {ok, create_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_responder_gateway_errors(), tuple()}.
create_responder_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/responder-gateway"],
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

%% @doc Deletes an inbound external link.
-spec delete_inbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_inbound_external_link_request()) ->
    {ok, delete_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_external_link_errors(), tuple()}.
delete_inbound_external_link(Client, GatewayId, LinkId, Input) ->
    delete_inbound_external_link(Client, GatewayId, LinkId, Input, []).

-spec delete_inbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_inbound_external_link_request(), proplists:proplist()) ->
    {ok, delete_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_external_link_errors(), tuple()}.
delete_inbound_external_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), "/inbound-external-link/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Deletes a link between RTB applications.
%%
%% Permanently removes the connection between RTB applications. This action
%% cannot be undone.
-spec delete_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_link_request()) ->
    {ok, delete_link_response(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, GatewayId, LinkId, Input) ->
    delete_link(Client, GatewayId, LinkId, Input, []).

-spec delete_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_link_request(), proplists:proplist()) ->
    {ok, delete_link_response(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Deletes an outbound external link.
-spec delete_outbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_outbound_external_link_request()) ->
    {ok, delete_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_external_link_errors(), tuple()}.
delete_outbound_external_link(Client, GatewayId, LinkId, Input) ->
    delete_outbound_external_link(Client, GatewayId, LinkId, Input, []).

-spec delete_outbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), delete_outbound_external_link_request(), proplists:proplist()) ->
    {ok, delete_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_external_link_errors(), tuple()}.
delete_outbound_external_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), "/outbound-external-link/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Deletes a requester gateway.
-spec delete_requester_gateway(aws_client:aws_client(), binary() | list(), delete_requester_gateway_request()) ->
    {ok, delete_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_requester_gateway_errors(), tuple()}.
delete_requester_gateway(Client, GatewayId, Input) ->
    delete_requester_gateway(Client, GatewayId, Input, []).

-spec delete_requester_gateway(aws_client:aws_client(), binary() | list(), delete_requester_gateway_request(), proplists:proplist()) ->
    {ok, delete_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_requester_gateway_errors(), tuple()}.
delete_requester_gateway(Client, GatewayId, Input0, Options0) ->
    Method = delete,
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), ""],
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

%% @doc Deletes a responder gateway.
-spec delete_responder_gateway(aws_client:aws_client(), binary() | list(), delete_responder_gateway_request()) ->
    {ok, delete_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_responder_gateway_errors(), tuple()}.
delete_responder_gateway(Client, GatewayId, Input) ->
    delete_responder_gateway(Client, GatewayId, Input, []).

-spec delete_responder_gateway(aws_client:aws_client(), binary() | list(), delete_responder_gateway_request(), proplists:proplist()) ->
    {ok, delete_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_responder_gateway_errors(), tuple()}.
delete_responder_gateway(Client, GatewayId, Input0, Options0) ->
    Method = delete,
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), ""],
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

%% @doc Retrieves information about an inbound external link.
-spec get_inbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_inbound_external_link_errors(), tuple()}.
get_inbound_external_link(Client, GatewayId, LinkId)
  when is_map(Client) ->
    get_inbound_external_link(Client, GatewayId, LinkId, #{}, #{}).

-spec get_inbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_inbound_external_link_errors(), tuple()}.
get_inbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_inbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, []).

-spec get_inbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_inbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_inbound_external_link_errors(), tuple()}.
get_inbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), "/inbound-external-link/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a link between RTB applications.
%%
%% Returns detailed information about the link configuration, status, and
%% associated RTB applications.
-spec get_link(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_link_response(), tuple()} |
    {error, any()} |
    {error, get_link_errors(), tuple()}.
get_link(Client, GatewayId, LinkId)
  when is_map(Client) ->
    get_link(Client, GatewayId, LinkId, #{}, #{}).

-spec get_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_link_response(), tuple()} |
    {error, any()} |
    {error, get_link_errors(), tuple()}.
get_link(Client, GatewayId, LinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, []).

-spec get_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_link_response(), tuple()} |
    {error, any()} |
    {error, get_link_errors(), tuple()}.
get_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an outbound external link.
-spec get_outbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_outbound_external_link_errors(), tuple()}.
get_outbound_external_link(Client, GatewayId, LinkId)
  when is_map(Client) ->
    get_outbound_external_link(Client, GatewayId, LinkId, #{}, #{}).

-spec get_outbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_outbound_external_link_errors(), tuple()}.
get_outbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, []).

-spec get_outbound_external_link(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_outbound_external_link_response(), tuple()} |
    {error, any()} |
    {error, get_outbound_external_link_errors(), tuple()}.
get_outbound_external_link(Client, GatewayId, LinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), "/outbound-external-link/", aws_util:encode_uri(LinkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a requester gateway.
-spec get_requester_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, get_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_requester_gateway_errors(), tuple()}.
get_requester_gateway(Client, GatewayId)
  when is_map(Client) ->
    get_requester_gateway(Client, GatewayId, #{}, #{}).

-spec get_requester_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_requester_gateway_errors(), tuple()}.
get_requester_gateway(Client, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_requester_gateway(Client, GatewayId, QueryMap, HeadersMap, []).

-spec get_requester_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_requester_gateway_errors(), tuple()}.
get_requester_gateway(Client, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a responder gateway.
-spec get_responder_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, get_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_responder_gateway_errors(), tuple()}.
get_responder_gateway(Client, GatewayId)
  when is_map(Client) ->
    get_responder_gateway(Client, GatewayId, #{}, #{}).

-spec get_responder_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_responder_gateway_errors(), tuple()}.
get_responder_gateway(Client, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_responder_gateway(Client, GatewayId, QueryMap, HeadersMap, []).

-spec get_responder_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_responder_gateway_errors(), tuple()}.
get_responder_gateway(Client, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists links associated with an RTB application.
%%
%% Returns a list of all links for the specified RTB application, including
%% their status and configuration details.
-spec list_links(aws_client:aws_client(), binary() | list()) ->
    {ok, list_links_response(), tuple()} |
    {error, any()} |
    {error, list_links_errors(), tuple()}.
list_links(Client, GatewayId)
  when is_map(Client) ->
    list_links(Client, GatewayId, #{}, #{}).

-spec list_links(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_links_response(), tuple()} |
    {error, any()} |
    {error, list_links_errors(), tuple()}.
list_links(Client, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_links(Client, GatewayId, QueryMap, HeadersMap, []).

-spec list_links(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_links_response(), tuple()} |
    {error, any()} |
    {error, list_links_errors(), tuple()}.
list_links(Client, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/links/"],
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

%% @doc Lists requester gateways.
-spec list_requester_gateways(aws_client:aws_client()) ->
    {ok, list_requester_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_requester_gateways_errors(), tuple()}.
list_requester_gateways(Client)
  when is_map(Client) ->
    list_requester_gateways(Client, #{}, #{}).

-spec list_requester_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_requester_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_requester_gateways_errors(), tuple()}.
list_requester_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_requester_gateways(Client, QueryMap, HeadersMap, []).

-spec list_requester_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_requester_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_requester_gateways_errors(), tuple()}.
list_requester_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/requester-gateways"],
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

%% @doc Lists reponder gateways.
-spec list_responder_gateways(aws_client:aws_client()) ->
    {ok, list_responder_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_responder_gateways_errors(), tuple()}.
list_responder_gateways(Client)
  when is_map(Client) ->
    list_responder_gateways(Client, #{}, #{}).

-spec list_responder_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_responder_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_responder_gateways_errors(), tuple()}.
list_responder_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_responder_gateways(Client, QueryMap, HeadersMap, []).

-spec list_responder_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_responder_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_responder_gateways_errors(), tuple()}.
list_responder_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/responder-gateways"],
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

%% @doc Lists tags for a resource.
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

%% @doc Rejects a link request between RTB applications.
%%
%% When a requester RTB application requests to link with a responder RTB
%% application, the responder can use this operation to decline the link
%% request.
-spec reject_link(aws_client:aws_client(), binary() | list(), binary() | list(), reject_link_request()) ->
    {ok, reject_link_response(), tuple()} |
    {error, any()} |
    {error, reject_link_errors(), tuple()}.
reject_link(Client, GatewayId, LinkId, Input) ->
    reject_link(Client, GatewayId, LinkId, Input, []).

-spec reject_link(aws_client:aws_client(), binary() | list(), binary() | list(), reject_link_request(), proplists:proplist()) ->
    {ok, reject_link_response(), tuple()} |
    {error, any()} |
    {error, reject_link_errors(), tuple()}.
reject_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = post,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), "/reject"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
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
    SuccessStatusCode = 204,
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

%% @doc Removes a tag or tags from a resource.
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
    SuccessStatusCode = 204,
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a link between RTB applications.
%%
%% Allows you to modify settings and parameters for an existing link.
-spec update_link(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_request()) ->
    {ok, update_link_response(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, GatewayId, LinkId, Input) ->
    update_link(Client, GatewayId, LinkId, Input, []).

-spec update_link(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_request(), proplists:proplist()) ->
    {ok, update_link_response(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), ""],
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

%% @doc Updates a link module flow.
-spec update_link_module_flow(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_module_flow_request()) ->
    {ok, update_link_module_flow_response(), tuple()} |
    {error, any()} |
    {error, update_link_module_flow_errors(), tuple()}.
update_link_module_flow(Client, GatewayId, LinkId, Input) ->
    update_link_module_flow(Client, GatewayId, LinkId, Input, []).

-spec update_link_module_flow(aws_client:aws_client(), binary() | list(), binary() | list(), update_link_module_flow_request(), proplists:proplist()) ->
    {ok, update_link_module_flow_response(), tuple()} |
    {error, any()} |
    {error, update_link_module_flow_errors(), tuple()}.
update_link_module_flow(Client, GatewayId, LinkId, Input0, Options0) ->
    Method = post,
    Path = ["/gateway/", aws_util:encode_uri(GatewayId), "/link/", aws_util:encode_uri(LinkId), "/module-flow"],
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

%% @doc Updates a requester gateway.
-spec update_requester_gateway(aws_client:aws_client(), binary() | list(), update_requester_gateway_request()) ->
    {ok, update_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_requester_gateway_errors(), tuple()}.
update_requester_gateway(Client, GatewayId, Input) ->
    update_requester_gateway(Client, GatewayId, Input, []).

-spec update_requester_gateway(aws_client:aws_client(), binary() | list(), update_requester_gateway_request(), proplists:proplist()) ->
    {ok, update_requester_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_requester_gateway_errors(), tuple()}.
update_requester_gateway(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/requester-gateway/", aws_util:encode_uri(GatewayId), "/update"],
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

%% @doc Updates a responder gateway.
-spec update_responder_gateway(aws_client:aws_client(), binary() | list(), update_responder_gateway_request()) ->
    {ok, update_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_responder_gateway_errors(), tuple()}.
update_responder_gateway(Client, GatewayId, Input) ->
    update_responder_gateway(Client, GatewayId, Input, []).

-spec update_responder_gateway(aws_client:aws_client(), binary() | list(), update_responder_gateway_request(), proplists:proplist()) ->
    {ok, update_responder_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_responder_gateway_errors(), tuple()}.
update_responder_gateway(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/responder-gateway/", aws_util:encode_uri(GatewayId), "/update"],
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
    Client1 = Client#{service => <<"rtbfabric">>},
    Host = build_host(<<"rtbfabric">>, Client1),
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
