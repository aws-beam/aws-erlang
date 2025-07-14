%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Migration Hub Refactor Spaces
%%
%% This API reference provides descriptions, syntax, and other details about
%% each of the
%% actions and data types for Amazon Web Services Migration Hub Refactor
%% Spaces (Refactor Spaces).
%%
%% The topic for each action shows the API
%% request parameters and the response. Alternatively, you can use one of the
%% Amazon Web Services SDKs to
%% access an API that is tailored to the programming language or platform
%% that you're using. For
%% more information, see Amazon Web Services SDKs:
%% https://aws.amazon.com/tools/#SDKs.
%%
%% To share Refactor Spaces environments with other Amazon Web Services
%% accounts or with Organizations
%% and their OUs, use Resource Access Manager's `CreateResourceShare'
%% API. See CreateResourceShare:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
%% in the Amazon Web Services RAM API Reference.
-module(aws_migration_hub_refactor_spaces).

-export([create_application/3,
         create_application/4,
         create_environment/2,
         create_environment/3,
         create_route/4,
         create_route/5,
         create_service/4,
         create_service/5,
         delete_application/4,
         delete_application/5,
         delete_environment/3,
         delete_environment/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_route/5,
         delete_route/6,
         delete_service/5,
         delete_service/6,
         get_application/3,
         get_application/5,
         get_application/6,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_route/4,
         get_route/6,
         get_route/7,
         get_service/4,
         get_service/6,
         get_service/7,
         list_applications/2,
         list_applications/4,
         list_applications/5,
         list_environment_vpcs/2,
         list_environment_vpcs/4,
         list_environment_vpcs/5,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_routes/3,
         list_routes/5,
         list_routes/6,
         list_services/3,
         list_services/5,
         list_services/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_resource_policy/2,
         put_resource_policy/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_route/5,
         update_route/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% lambda_endpoint_summary() :: #{
%%   <<"Arn">> => string()
%% }
-type lambda_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% environment_vpc() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CidrBlocks">> => list(string()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"VpcId">> => string(),
%%   <<"VpcName">> => string()
%% }
-type environment_vpc() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{}
-type delete_resource_policy_response() :: #{}.


%% Example:
%% default_route_input() :: #{
%%   <<"ActivationState">> => string()
%% }
-type default_route_input() :: #{binary() => any()}.


%% Example:
%% api_gateway_proxy_input() :: #{
%%   <<"EndpointType">> => string(),
%%   <<"StageName">> => string()
%% }
-type api_gateway_proxy_input() :: #{binary() => any()}.


%% Example:
%% update_route_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RouteId">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string()
%% }
-type update_route_response() :: #{binary() => any()}.


%% Example:
%% get_service_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LambdaEndpoint">> => lambda_endpoint_config(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UrlEndpoint">> => url_endpoint_config(),
%%   <<"VpcId">> => string()
%% }
-type get_service_response() :: #{binary() => any()}.


%% Example:
%% lambda_endpoint_config() :: #{
%%   <<"Arn">> => string()
%% }
-type lambda_endpoint_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% route_summary() :: #{
%%   <<"AppendSourcePath">> => boolean(),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"IncludeChildPaths">> => boolean(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Methods">> => list(string()),
%%   <<"OwnerAccountId">> => string(),
%%   <<"PathResourceToId">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteType">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"SourcePath">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map()
%% }
-type route_summary() :: #{binary() => any()}.


%% Example:
%% environment_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkFabricType">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TransitGatewayId">> => string()
%% }
-type environment_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{}
-type get_environment_request() :: #{}.


%% Example:
%% lambda_endpoint_input() :: #{
%%   <<"Arn">> => string()
%% }
-type lambda_endpoint_input() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% get_environment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkFabricType">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TransitGatewayId">> => string()
%% }
-type get_environment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_service_request() :: #{}
-type get_service_request() :: #{}.


%% Example:
%% list_services_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_services_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceSummaryList">> => list(service_summary())
%% }
-type list_services_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LambdaEndpoint">> => lambda_endpoint_summary(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UrlEndpoint">> => url_endpoint_summary(),
%%   <<"VpcId">> => string()
%% }
-type service_summary() :: #{binary() => any()}.


%% Example:
%% create_service_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndpointType">> := string(),
%%   <<"LambdaEndpoint">> => lambda_endpoint_input(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map(),
%%   <<"UrlEndpoint">> => url_endpoint_input(),
%%   <<"VpcId">> => string()
%% }
-type create_service_request() :: #{binary() => any()}.


%% Example:
%% error_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AdditionalDetails">> => map(),
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type error_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"ApiGatewayProxy">> => api_gateway_proxy_input(),
%%   <<"ClientToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"ProxyType">> := string(),
%%   <<"Tags">> => map(),
%%   <<"VpcId">> := string()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% list_environments_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"ApiGatewayProxy">> => api_gateway_proxy_input(),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProxyType">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VpcId">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.


%% Example:
%% update_route_request() :: #{
%%   <<"ActivationState">> := string()
%% }
-type update_route_request() :: #{binary() => any()}.


%% Example:
%% delete_application_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type delete_application_response() :: #{binary() => any()}.


%% Example:
%% url_endpoint_config() :: #{
%%   <<"HealthUrl">> => string(),
%%   <<"Url">> => string()
%% }
-type url_endpoint_config() :: #{binary() => any()}.


%% Example:
%% create_environment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkFabricType">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_environment_response() :: #{binary() => any()}.


%% Example:
%% uri_path_route_input() :: #{
%%   <<"ActivationState">> => string(),
%%   <<"AppendSourcePath">> => boolean(),
%%   <<"IncludeChildPaths">> => boolean(),
%%   <<"Methods">> => list(string()),
%%   <<"SourcePath">> => string()
%% }
-type uri_path_route_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_environment_request() :: #{}
-type delete_environment_request() :: #{}.


%% Example:
%% list_routes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routes_request() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"ApiGatewayProxy">> => api_gateway_proxy_config(),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProxyType">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VpcId">> => string()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% get_route_response() :: #{
%%   <<"AppendSourcePath">> => boolean(),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"IncludeChildPaths">> => boolean(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Methods">> => list(string()),
%%   <<"OwnerAccountId">> => string(),
%%   <<"PathResourceToId">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteType">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"SourcePath">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_route_response() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% api_gateway_proxy_config() :: #{
%%   <<"ApiGatewayId">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"NlbArn">> => string(),
%%   <<"NlbName">> => string(),
%%   <<"ProxyUrl">> => string(),
%%   <<"StageName">> => string(),
%%   <<"VpcLinkId">> => string()
%% }
-type api_gateway_proxy_config() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_routes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RouteSummaryList">> => list(route_summary())
%% }
-type list_routes_response() :: #{binary() => any()}.


%% Example:
%% list_environment_vpcs_response() :: #{
%%   <<"EnvironmentVpcList">> => list(environment_vpc()),
%%   <<"NextToken">> => string()
%% }
-type list_environment_vpcs_response() :: #{binary() => any()}.


%% Example:
%% url_endpoint_input() :: #{
%%   <<"HealthUrl">> => string(),
%%   <<"Url">> => string()
%% }
-type url_endpoint_input() :: #{binary() => any()}.


%% Example:
%% delete_route_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RouteId">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string()
%% }
-type delete_route_response() :: #{binary() => any()}.


%% Example:
%% invalid_resource_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_resource_policy_exception() :: #{binary() => any()}.


%% Example:
%% create_route_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"RouteId">> => string(),
%%   <<"RouteType">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UriPathRoute">> => uri_path_route_input()
%% }
-type create_route_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% delete_service_request() :: #{}
-type delete_service_request() :: #{}.

%% Example:
%% delete_route_request() :: #{}
-type delete_route_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"RetryAfterSeconds">> => integer(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_environments_response() :: #{
%%   <<"EnvironmentSummaryList">> => list(environment_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_environments_response() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"ApiGatewayProxy">> => api_gateway_proxy_summary(),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"Error">> => error_response(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProxyType">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VpcId">> => string()
%% }
-type application_summary() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{}
-type put_resource_policy_response() :: #{}.


%% Example:
%% list_applications_response() :: #{
%%   <<"ApplicationSummaryList">> => list(application_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{}
-type delete_resource_policy_request() :: #{}.


%% Example:
%% api_gateway_proxy_summary() :: #{
%%   <<"ApiGatewayId">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"NlbArn">> => string(),
%%   <<"NlbName">> => string(),
%%   <<"ProxyUrl">> => string(),
%%   <<"StageName">> => string(),
%%   <<"VpcLinkId">> => string()
%% }
-type api_gateway_proxy_summary() :: #{binary() => any()}.


%% Example:
%% delete_service_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string()
%% }
-type delete_service_response() :: #{binary() => any()}.


%% Example:
%% create_route_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DefaultRoute">> => default_route_input(),
%%   <<"RouteType">> := string(),
%%   <<"ServiceIdentifier">> := string(),
%%   <<"Tags">> => map(),
%%   <<"UriPathRoute">> => uri_path_route_input()
%% }
-type create_route_request() :: #{binary() => any()}.


%% Example:
%% create_environment_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"NetworkFabricType">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_environment_request() :: #{binary() => any()}.


%% Example:
%% list_environment_vpcs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_environment_vpcs_request() :: #{binary() => any()}.


%% Example:
%% create_service_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedByAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LambdaEndpoint">> => lambda_endpoint_input(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UrlEndpoint">> => url_endpoint_input(),
%%   <<"VpcId">> => string()
%% }
-type create_service_response() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% delete_environment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type delete_environment_response() :: #{binary() => any()}.

%% Example:
%% get_route_request() :: #{}
-type get_route_request() :: #{}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% url_endpoint_summary() :: #{
%%   <<"HealthUrl">> => string(),
%%   <<"Url">> => string()
%% }
-type url_endpoint_summary() :: #{binary() => any()}.

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_route_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_errors() ::
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
    resource_not_found_exception().

-type delete_route_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_route_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_environment_vpcs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_routes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_services_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_resource_policy_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_route_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces
%% application.
%%
%% The account that owns the environment also owns the
%% applications created inside the environment, regardless of the account
%% that creates the
%% application. Refactor Spaces provisions an Amazon API Gateway, API Gateway
%% VPC link, and
%% Network Load Balancer for the application proxy inside your account.
%%
%% In environments created with a CreateEnvironment:NetworkFabricType:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
%% of `NONE' you need to configure
%% VPC to VPC connectivity:
%% https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html
%% between your service VPC and the application proxy VPC to
%% route traffic through the application proxy to a service with a private
%% URL endpoint. For more
%% information, see
%% Create an application:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html
%% in the Refactor Spaces User Guide.
-spec create_application(aws_client:aws_client(), binary() | list(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, EnvironmentIdentifier, Input) ->
    create_application(Client, EnvironmentIdentifier, Input, []).

-spec create_application(aws_client:aws_client(), binary() | list(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications"],
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
%%
%% The caller owns the environment resource, and all
%% Refactor Spaces applications, services, and routes created within the
%% environment. They are referred
%% to as the environment owner. The environment owner has cross-account
%% visibility and control of Refactor Spaces resources that are added to the
%% environment by other
%% accounts that the environment is shared with.
%%
%% When creating an environment with a CreateEnvironment:NetworkFabricType:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
%% of `TRANSIT_GATEWAY', Refactor Spaces
%% provisions a transit gateway to enable services in VPCs to communicate
%% directly across
%% accounts. If CreateEnvironment:NetworkFabricType:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
%% is `NONE', Refactor Spaces does not create
%% a transit gateway and you must use your network infrastructure to route
%% traffic to services
%% with private URL endpoints.
-spec create_environment(aws_client:aws_client(), create_environment_request()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_request(), proplists:proplist()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces route.
%%
%% The account owner of the service resource is always the
%% environment owner, regardless of which account creates the route. Routes
%% target a service in
%% the application. If an application does not have any routes, then the
%% first route must be
%% created as a `DEFAULT'
%% `RouteType'.
%%
%% When created, the default route defaults to an active state so state is
%% not a required
%% input. However, like all other state values the state of the default route
%% can be updated
%% after creation, but only when all other routes are also inactive.
%% Conversely, no route can be
%% active without the default route also being active.
%%
%% When you create a route, Refactor Spaces configures the Amazon API Gateway
%% to send traffic
%% to the target service as follows:
%%
%% URL Endpoints
%%
%% If the service has a URL endpoint, and the endpoint resolves to a private
%% IP address,
%% Refactor Spaces routes traffic using the API Gateway VPC link. If a
%% service endpoint
%% resolves to a public IP address, Refactor Spaces routes traffic over the
%% public internet.
%% Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs,
%% publicly-signed
%% certificates are supported. Private Certificate Authorities (CAs) are
%% permitted only if
%% the CA's domain is also publicly resolvable.
%%
%% Refactor Spaces automatically resolves the public Domain Name System (DNS)
%% names that are
%% set in `CreateService:UrlEndpoint 'when you create a service. The DNS
%% names
%% resolve when the DNS time-to-live (TTL) expires, or every 60 seconds for
%% TTLs less than 60
%% seconds. This periodic DNS resolution ensures that the route configuration
%% remains
%% up-to-date.
%%
%% One-time health check
%%
%% A one-time health check is performed on the service when either the route
%% is updated
%% from inactive to active, or when it is created with an active state. If
%% the health check
%% fails, the route transitions the route state to `FAILED', an error
%% code of
%% `SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE' is provided, and no traffic is
%% sent
%% to the service.
%%
%% For private URLs, a target group is created on the Network Load Balancer
%% and the load
%% balancer target group runs default target health checks. By default, the
%% health check is
%% run against the service endpoint URL. Optionally, the health check can be
%% performed
%% against a different protocol, port, and/or path using the
%% CreateService:UrlEndpoint:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint
%% parameter. All other health check settings for the
%% load balancer use the default values described in the Health
%% checks for your target groups:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html
%% in the Elastic Load Balancing
%% guide. The health check is considered successful if at least one target
%% within the target group transitions to a healthy state.
%%
%% Lambda function endpoints
%%
%% If the service has an Lambda function endpoint, then Refactor Spaces
%% configures the Lambda function's resource policy to allow the
%% application's
%% API Gateway to invoke the function.
%%
%% The Lambda function state is checked. If the function is not active, the
%% function configuration is updated so that Lambda resources are
%% provisioned. If
%% the Lambda state is `Failed', then the route creation fails. For
%% more information, see the GetFunctionConfiguration's State response
%% parameter:
%% https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State
%% in the Lambda Developer Guide.
%%
%% A check is performed to determine that a Lambda function with the
%% specified ARN
%% exists. If it does not exist, the health check fails. For public URLs, a
%% connection is
%% opened to the public endpoint. If the URL is not reachable, the health
%% check fails.
%%
%% Environments without a network bridge
%%
%% When you create environments without a network bridge
%% (CreateEnvironment:NetworkFabricType:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
%% is `NONE)' and you use your own
%% networking infrastructure, you need to configure VPC to VPC connectivity:
%% https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html
%% between your network and the application proxy VPC. Route
%% creation from the application proxy to service endpoints will fail if your
%% network is not
%% configured to connect to the application proxy VPC. For more information,
%% see Create
%% a route:
%% https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html
%% in the Refactor Spaces User Guide.
-spec create_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_request()) ->
    {ok, create_route_response(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).

-spec create_route(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_request(), proplists:proplist()) ->
    {ok, create_route_response(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes"],
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces service.
%%
%% The account owner of the service is always the
%% environment owner, regardless of which account in the environment creates
%% the service.
%% Services have either a URL endpoint in a virtual private cloud (VPC), or a
%% Lambda
%% function endpoint.
%%
%% If an Amazon Web Services resource is launched in a service VPC, and you
%% want it to be
%% accessible to all of an environment’s services with VPCs and routes, apply
%% the
%% `RefactorSpacesSecurityGroup' to the resource. Alternatively, to add
%% more
%% cross-account constraints, apply your own security group.
-spec create_service(aws_client:aws_client(), binary() | list(), binary() | list(), create_service_request()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).

-spec create_service(aws_client:aws_client(), binary() | list(), binary() | list(), create_service_request(), proplists:proplist()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services"],
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces
%% application.
%%
%% Before you can delete an application, you must first
%% delete any services or routes within the application.
-spec delete_application(aws_client:aws_client(), binary() | list(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), ""],
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
%%
%% Before you can delete an environment, you must first
%% delete any applications and services within the environment.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentIdentifier, Input) ->
    delete_environment(Client, EnvironmentIdentifier, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), ""],
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

%% @doc Deletes the resource policy set for the environment.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Identifier, Input) ->
    delete_resource_policy(Client, Identifier, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcepolicy/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_request()) ->
    {ok, delete_route_response(), tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input) ->
    delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input, []).

-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_request(), proplists:proplist()) ->
    {ok, delete_route_response(), tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes/", aws_util:encode_uri(RouteIdentifier), ""],
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
-spec delete_service(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_service_request()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input) ->
    delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input, []).

-spec delete_service(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_service_request(), proplists:proplist()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services/", aws_util:encode_uri(ServiceIdentifier), ""],
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

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces
%% application.
-spec get_application(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    get_environment(Client, EnvironmentIdentifier, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource-based permission policy that is set for the given
%% environment.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Identifier)
  when is_map(Client) ->
    get_resource_policy(Client, Identifier, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcepolicy/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces route.
-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_route_response(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier)
  when is_map(Client) ->
    get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, #{}, #{}).

-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_route_response(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap, []).

-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_route_response(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes/", aws_util:encode_uri(RouteIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces service.
-spec get_service(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, #{}, #{}).

-spec get_service(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

-spec get_service(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services/", aws_util:encode_uri(ServiceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% applications within an environment.
-spec list_applications(aws_client:aws_client(), binary() | list()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    list_applications(Client, EnvironmentIdentifier, #{}, #{}).

-spec list_applications(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications"],
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

%% @doc Lists all Amazon Web Services Migration Hub Refactor Spaces service
%% virtual private clouds (VPCs) that are part of the
%% environment.
-spec list_environment_vpcs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_environment_vpcs_response(), tuple()} |
    {error, any()} |
    {error, list_environment_vpcs_errors(), tuple()}.
list_environment_vpcs(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    list_environment_vpcs(Client, EnvironmentIdentifier, #{}, #{}).

-spec list_environment_vpcs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_environment_vpcs_response(), tuple()} |
    {error, any()} |
    {error, list_environment_vpcs_errors(), tuple()}.
list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_environment_vpcs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environment_vpcs_response(), tuple()} |
    {error, any()} |
    {error, list_environment_vpcs_errors(), tuple()}.
list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/vpcs"],
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

%% @doc Lists Amazon Web Services Migration Hub Refactor Spaces environments
%% owned by a caller account or shared with the caller
%% account.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
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

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% routes within an application.
-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_routes_response(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_routes_response(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routes_response(), tuple()} |
    {error, any()} |
    {error, list_routes_errors(), tuple()}.
list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes"],
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

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% services within an application.
-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services"],
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

%% @doc Lists the tags of a resource.
%%
%% The caller account must be the same as the resource’s
%% `OwnerAccountId'. Listing tags in other accounts is not supported.
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

%% @doc Attaches a resource-based permission policy to the Amazon Web
%% Services Migration Hub Refactor Spaces environment.
%%
%% The policy
%% must contain the same actions and condition statements as the
%% `arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment'
%%
%% permission in Resource Access Manager. The policy must not contain new
%% lines or blank lines.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/resourcepolicy"],
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

%% @doc Removes the tags of a given resource.
%%
%% Tags are metadata which can be used to manage a
%% resource. To tag a resource, the caller account must be the same as the
%% resource’s
%% `OwnerAccountId'. Tagging resources in other accounts is not
%% supported.
%%
%% Amazon Web Services Migration Hub Refactor Spaces does not propagate tags
%% to orchestrated resources, such as an
%% environment’s transit gateway.
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

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be used to
%% manage a resource. To untag a resource, the caller account must be the
%% same as the resource’s
%% `OwnerAccountId'. Untagging resources across accounts is not
%% supported.
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

%% @doc Updates an Amazon Web Services Migration Hub Refactor Spaces route.
-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_request()) ->
    {ok, update_route_response(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input) ->
    update_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input, []).

-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_request(), proplists:proplist()) ->
    {ok, update_route_response(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes/", aws_util:encode_uri(RouteIdentifier), ""],
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
    Client1 = Client#{service => <<"refactor-spaces">>},
    Host = build_host(<<"refactor-spaces">>, Client1),
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
