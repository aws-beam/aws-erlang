%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon API Gateway V2
-module(aws_apigatewayv2).

-export([create_api/2,
         create_api/3,
         create_api_mapping/3,
         create_api_mapping/4,
         create_authorizer/3,
         create_authorizer/4,
         create_deployment/3,
         create_deployment/4,
         create_domain_name/2,
         create_domain_name/3,
         create_integration/3,
         create_integration/4,
         create_integration_response/4,
         create_integration_response/5,
         create_model/3,
         create_model/4,
         create_route/3,
         create_route/4,
         create_route_response/4,
         create_route_response/5,
         create_routing_rule/3,
         create_routing_rule/4,
         create_stage/3,
         create_stage/4,
         create_vpc_link/2,
         create_vpc_link/3,
         delete_access_log_settings/4,
         delete_access_log_settings/5,
         delete_api/3,
         delete_api/4,
         delete_api_mapping/4,
         delete_api_mapping/5,
         delete_authorizer/4,
         delete_authorizer/5,
         delete_cors_configuration/3,
         delete_cors_configuration/4,
         delete_deployment/4,
         delete_deployment/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_integration/4,
         delete_integration/5,
         delete_integration_response/5,
         delete_integration_response/6,
         delete_model/4,
         delete_model/5,
         delete_route/4,
         delete_route/5,
         delete_route_request_parameter/5,
         delete_route_request_parameter/6,
         delete_route_response/5,
         delete_route_response/6,
         delete_route_settings/5,
         delete_route_settings/6,
         delete_routing_rule/4,
         delete_routing_rule/5,
         delete_stage/4,
         delete_stage/5,
         delete_vpc_link/3,
         delete_vpc_link/4,
         export_api/4,
         export_api/6,
         export_api/7,
         get_api/2,
         get_api/4,
         get_api/5,
         get_api_mapping/3,
         get_api_mapping/5,
         get_api_mapping/6,
         get_api_mappings/2,
         get_api_mappings/4,
         get_api_mappings/5,
         get_apis/1,
         get_apis/3,
         get_apis/4,
         get_authorizer/3,
         get_authorizer/5,
         get_authorizer/6,
         get_authorizers/2,
         get_authorizers/4,
         get_authorizers/5,
         get_deployment/3,
         get_deployment/5,
         get_deployment/6,
         get_deployments/2,
         get_deployments/4,
         get_deployments/5,
         get_domain_name/2,
         get_domain_name/4,
         get_domain_name/5,
         get_domain_names/1,
         get_domain_names/3,
         get_domain_names/4,
         get_integration/3,
         get_integration/5,
         get_integration/6,
         get_integration_response/4,
         get_integration_response/6,
         get_integration_response/7,
         get_integration_responses/3,
         get_integration_responses/5,
         get_integration_responses/6,
         get_integrations/2,
         get_integrations/4,
         get_integrations/5,
         get_model/3,
         get_model/5,
         get_model/6,
         get_model_template/3,
         get_model_template/5,
         get_model_template/6,
         get_models/2,
         get_models/4,
         get_models/5,
         get_route/3,
         get_route/5,
         get_route/6,
         get_route_response/4,
         get_route_response/6,
         get_route_response/7,
         get_route_responses/3,
         get_route_responses/5,
         get_route_responses/6,
         get_routes/2,
         get_routes/4,
         get_routes/5,
         get_routing_rule/3,
         get_routing_rule/5,
         get_routing_rule/6,
         get_stage/3,
         get_stage/5,
         get_stage/6,
         get_stages/2,
         get_stages/4,
         get_stages/5,
         get_tags/2,
         get_tags/4,
         get_tags/5,
         get_vpc_link/2,
         get_vpc_link/4,
         get_vpc_link/5,
         get_vpc_links/1,
         get_vpc_links/3,
         get_vpc_links/4,
         import_api/2,
         import_api/3,
         list_routing_rules/2,
         list_routing_rules/4,
         list_routing_rules/5,
         put_routing_rule/4,
         put_routing_rule/5,
         reimport_api/3,
         reimport_api/4,
         reset_authorizers_cache/4,
         reset_authorizers_cache/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_api/3,
         update_api/4,
         update_api_mapping/4,
         update_api_mapping/5,
         update_authorizer/4,
         update_authorizer/5,
         update_deployment/4,
         update_deployment/5,
         update_domain_name/3,
         update_domain_name/4,
         update_integration/4,
         update_integration/5,
         update_integration_response/5,
         update_integration_response/6,
         update_model/4,
         update_model/5,
         update_route/4,
         update_route/5,
         update_route_response/5,
         update_route_response/6,
         update_stage/4,
         update_stage/5,
         update_vpc_link/3,
         update_vpc_link/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_stage_request() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageVariables">> => map()
%% }
-type update_stage_request() :: #{binary() => any()}.


%% Example:
%% update_integration_response_response() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseId">> => string(),
%%   <<"IntegrationResponseKey">> => string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type update_integration_response_response() :: #{binary() => any()}.


%% Example:
%% get_stages_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_stages_request() :: #{binary() => any()}.


%% Example:
%% create_integration_response_response() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseId">> => string(),
%%   <<"IntegrationResponseKey">> => string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type create_integration_response_response() :: #{binary() => any()}.


%% Example:
%% export_api_request() :: #{
%%   <<"ExportVersion">> => string(),
%%   <<"IncludeExtensions">> => boolean(),
%%   <<"OutputType">> := string(),
%%   <<"StageName">> => string()
%% }
-type export_api_request() :: #{binary() => any()}.


%% Example:
%% stage() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastDeploymentStatusMessage">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageName">> => string(),
%%   <<"StageVariables">> => map(),
%%   <<"Tags">> => map()
%% }
-type stage() :: #{binary() => any()}.


%% Example:
%% get_deployments_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_deployments_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% tls_config_input() :: #{
%%   <<"ServerNameToVerify">> => string()
%% }
-type tls_config_input() :: #{binary() => any()}.


%% Example:
%% delete_routing_rule_request() :: #{
%%   <<"DomainNameId">> => string()
%% }
-type delete_routing_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_vpc_link_response() :: #{}
-type delete_vpc_link_response() :: #{}.


%% Example:
%% authorizer() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerId">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> => list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> => list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> => string()
%% }
-type authorizer() :: #{binary() => any()}.


%% Example:
%% get_authorizer_response() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerId">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> => list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> => list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> => string()
%% }
-type get_authorizer_response() :: #{binary() => any()}.


%% Example:
%% create_stage_response() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastDeploymentStatusMessage">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageName">> => string(),
%%   <<"StageVariables">> => map(),
%%   <<"Tags">> => map()
%% }
-type create_stage_response() :: #{binary() => any()}.


%% Example:
%% get_vpc_links_response() :: #{
%%   <<"Items">> => list(vpc_link()()),
%%   <<"NextToken">> => string()
%% }
-type get_vpc_links_response() :: #{binary() => any()}.


%% Example:
%% routing_rule_action() :: #{
%%   <<"InvokeApi">> => routing_rule_action_invoke_api()
%% }
-type routing_rule_action() :: #{binary() => any()}.

%% Example:
%% get_tags_request() :: #{}
-type get_tags_request() :: #{}.


%% Example:
%% get_stage_response() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastDeploymentStatusMessage">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageName">> => string(),
%%   <<"StageVariables">> => map(),
%%   <<"Tags">> => map()
%% }
-type get_stage_response() :: #{binary() => any()}.


%% Example:
%% parameter_constraints() :: #{
%%   <<"Required">> => boolean()
%% }
-type parameter_constraints() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"AutoDeployed">> => boolean(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentStatus">> => list(any()),
%%   <<"DeploymentStatusMessage">> => string(),
%%   <<"Description">> => string()
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% delete_api_mapping_request() :: #{}
-type delete_api_mapping_request() :: #{}.


%% Example:
%% integration() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationId">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationResponseSelectionExpression">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config()
%% }
-type integration() :: #{binary() => any()}.


%% Example:
%% update_api_mapping_request() :: #{
%%   <<"ApiId">> := string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> => string()
%% }
-type update_api_mapping_request() :: #{binary() => any()}.


%% Example:
%% get_integration_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationId">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationResponseSelectionExpression">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config()
%% }
-type get_integration_result() :: #{binary() => any()}.


%% Example:
%% get_authorizers_response() :: #{
%%   <<"Items">> => list(authorizer()()),
%%   <<"NextToken">> => string()
%% }
-type get_authorizers_response() :: #{binary() => any()}.

%% Example:
%% delete_integration_response_request() :: #{}
-type delete_integration_response_request() :: #{}.


%% Example:
%% route_settings() :: #{
%%   <<"DataTraceEnabled">> => boolean(),
%%   <<"DetailedMetricsEnabled">> => boolean(),
%%   <<"LoggingLevel">> => list(any()),
%%   <<"ThrottlingBurstLimit">> => integer(),
%%   <<"ThrottlingRateLimit">> => float()
%% }
-type route_settings() :: #{binary() => any()}.


%% Example:
%% list_routing_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoutingRules">> => list(routing_rule()())
%% }
-type list_routing_rules_response() :: #{binary() => any()}.


%% Example:
%% get_route_responses_response() :: #{
%%   <<"Items">> => list(route_response()()),
%%   <<"NextToken">> => string()
%% }
-type get_route_responses_response() :: #{binary() => any()}.


%% Example:
%% mutual_tls_authentication() :: #{
%%   <<"TruststoreUri">> => string(),
%%   <<"TruststoreVersion">> => string(),
%%   <<"TruststoreWarnings">> => list(string()())
%% }
-type mutual_tls_authentication() :: #{binary() => any()}.


%% Example:
%% create_route_response_request() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseKey">> := string()
%% }
-type create_route_response_request() :: #{binary() => any()}.


%% Example:
%% update_api_mapping_response() :: #{
%%   <<"ApiId">> => string(),
%%   <<"ApiMappingId">> => string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> => string()
%% }
-type update_api_mapping_response() :: #{binary() => any()}.


%% Example:
%% get_route_response_response() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseId">> => string(),
%%   <<"RouteResponseKey">> => string()
%% }
-type get_route_response_response() :: #{binary() => any()}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"Description">> => string(),
%%   <<"StageName">> => string()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% create_api_response() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type create_api_response() :: #{binary() => any()}.


%% Example:
%% create_model_request() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Schema">> := string()
%% }
-type create_model_request() :: #{binary() => any()}.


%% Example:
%% update_route_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type update_route_result() :: #{binary() => any()}.


%% Example:
%% put_routing_rule_response() :: #{
%%   <<"Actions">> => list(routing_rule_action()()),
%%   <<"Conditions">> => list(routing_rule_condition()()),
%%   <<"Priority">> => integer(),
%%   <<"RoutingRuleArn">> => string(),
%%   <<"RoutingRuleId">> => string()
%% }
-type put_routing_rule_response() :: #{binary() => any()}.


%% Example:
%% update_model_request() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type update_model_request() :: #{binary() => any()}.


%% Example:
%% reimport_api_request() :: #{
%%   <<"Basepath">> => string(),
%%   <<"Body">> := string(),
%%   <<"FailOnWarnings">> => boolean()
%% }
-type reimport_api_request() :: #{binary() => any()}.

%% Example:
%% get_route_response_request() :: #{}
-type get_route_response_request() :: #{}.


%% Example:
%% create_domain_name_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication_input(),
%%   <<"RoutingMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_domain_name_request() :: #{binary() => any()}.


%% Example:
%% update_stage_response() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastDeploymentStatusMessage">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageName">> => string(),
%%   <<"StageVariables">> => map(),
%%   <<"Tags">> => map()
%% }
-type update_stage_response() :: #{binary() => any()}.


%% Example:
%% vpc_link() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => map(),
%%   <<"VpcLinkId">> => string(),
%%   <<"VpcLinkStatus">> => list(any()),
%%   <<"VpcLinkStatusMessage">> => string(),
%%   <<"VpcLinkVersion">> => list(any())
%% }
-type vpc_link() :: #{binary() => any()}.


%% Example:
%% create_deployment_response() :: #{
%%   <<"AutoDeployed">> => boolean(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentStatus">> => list(any()),
%%   <<"DeploymentStatusMessage">> => string(),
%%   <<"Description">> => string()
%% }
-type create_deployment_response() :: #{binary() => any()}.


%% Example:
%% routing_rule_condition() :: #{
%%   <<"MatchBasePaths">> => routing_rule_match_base_paths(),
%%   <<"MatchHeaders">> => routing_rule_match_headers()
%% }
-type routing_rule_condition() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_model_template_request() :: #{}
-type get_model_template_request() :: #{}.

%% Example:
%% delete_authorizer_request() :: #{}
-type delete_authorizer_request() :: #{}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"LimitType">> => string(),
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% create_authorizer_request() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> := list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> := list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> := string()
%% }
-type create_authorizer_request() :: #{binary() => any()}.

%% Example:
%% get_stage_request() :: #{}
-type get_stage_request() :: #{}.

%% Example:
%% get_authorizer_request() :: #{}
-type get_authorizer_request() :: #{}.


%% Example:
%% get_integration_responses_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_integration_responses_request() :: #{binary() => any()}.


%% Example:
%% update_route_response_response() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseId">> => string(),
%%   <<"RouteResponseKey">> => string()
%% }
-type update_route_response_response() :: #{binary() => any()}.


%% Example:
%% create_api_mapping_request() :: #{
%%   <<"ApiId">> := string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> := string()
%% }
-type create_api_mapping_request() :: #{binary() => any()}.


%% Example:
%% create_authorizer_response() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerId">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> => list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> => list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> => string()
%% }
-type create_authorizer_response() :: #{binary() => any()}.

%% Example:
%% delete_route_request_parameter_request() :: #{}
-type delete_route_request_parameter_request() :: #{}.


%% Example:
%% create_integration_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationId">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationResponseSelectionExpression">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config()
%% }
-type create_integration_result() :: #{binary() => any()}.

%% Example:
%% delete_stage_request() :: #{}
-type delete_stage_request() :: #{}.


%% Example:
%% put_routing_rule_request() :: #{
%%   <<"Actions">> := list(routing_rule_action()()),
%%   <<"Conditions">> := list(routing_rule_condition()()),
%%   <<"DomainNameId">> => string(),
%%   <<"Priority">> := integer()
%% }
-type put_routing_rule_request() :: #{binary() => any()}.


%% Example:
%% get_authorizers_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_authorizers_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_integration_request() :: #{}
-type delete_integration_request() :: #{}.


%% Example:
%% get_api_response() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type get_api_response() :: #{binary() => any()}.

%% Example:
%% delete_cors_configuration_request() :: #{}
-type delete_cors_configuration_request() :: #{}.


%% Example:
%% update_api_response() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type update_api_response() :: #{binary() => any()}.

%% Example:
%% get_deployment_request() :: #{}
-type get_deployment_request() :: #{}.


%% Example:
%% j_w_t_configuration() :: #{
%%   <<"Audience">> => list(string()()),
%%   <<"Issuer">> => string()
%% }
-type j_w_t_configuration() :: #{binary() => any()}.


%% Example:
%% create_vpc_link_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => map()
%% }
-type create_vpc_link_request() :: #{binary() => any()}.


%% Example:
%% import_api_request() :: #{
%%   <<"Basepath">> => string(),
%%   <<"Body">> := string(),
%%   <<"FailOnWarnings">> => boolean()
%% }
-type import_api_request() :: #{binary() => any()}.


%% Example:
%% routing_rule_match_headers() :: #{
%%   <<"AnyOf">> => list(routing_rule_match_header_value()())
%% }
-type routing_rule_match_headers() :: #{binary() => any()}.


%% Example:
%% create_vpc_link_response() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => map(),
%%   <<"VpcLinkId">> => string(),
%%   <<"VpcLinkStatus">> => list(any()),
%%   <<"VpcLinkStatusMessage">> => string(),
%%   <<"VpcLinkVersion">> => list(any())
%% }
-type create_vpc_link_response() :: #{binary() => any()}.


%% Example:
%% get_model_template_response() :: #{
%%   <<"Value">> => string()
%% }
-type get_model_template_response() :: #{binary() => any()}.


%% Example:
%% get_integration_responses_response() :: #{
%%   <<"Items">> => list(integration_response()()),
%%   <<"NextToken">> => string()
%% }
-type get_integration_responses_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% route() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type route() :: #{binary() => any()}.


%% Example:
%% api_mapping() :: #{
%%   <<"ApiId">> => string(),
%%   <<"ApiMappingId">> => string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> => string()
%% }
-type api_mapping() :: #{binary() => any()}.


%% Example:
%% get_tags_response() :: #{
%%   <<"Tags">> => map()
%% }
-type get_tags_response() :: #{binary() => any()}.

%% Example:
%% get_api_mapping_request() :: #{}
-type get_api_mapping_request() :: #{}.

%% Example:
%% delete_route_response_request() :: #{}
-type delete_route_response_request() :: #{}.


%% Example:
%% update_domain_name_response() :: #{
%%   <<"ApiMappingSelectionExpression">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainNameArn">> => string(),
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication(),
%%   <<"RoutingMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type update_domain_name_response() :: #{binary() => any()}.


%% Example:
%% get_domain_names_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_domain_names_request() :: #{binary() => any()}.

%% Example:
%% delete_access_log_settings_request() :: #{}
-type delete_access_log_settings_request() :: #{}.


%% Example:
%% get_integrations_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_integrations_request() :: #{binary() => any()}.

%% Example:
%% get_integration_request() :: #{}
-type get_integration_request() :: #{}.


%% Example:
%% get_routes_response() :: #{
%%   <<"Items">> => list(route()()),
%%   <<"NextToken">> => string()
%% }
-type get_routes_response() :: #{binary() => any()}.


%% Example:
%% update_integration_response_request() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseKey">> => string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type update_integration_response_request() :: #{binary() => any()}.


%% Example:
%% update_route_response_request() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseKey">> => string()
%% }
-type update_route_response_request() :: #{binary() => any()}.


%% Example:
%% update_integration_request() :: #{
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config_input()
%% }
-type update_integration_request() :: #{binary() => any()}.

%% Example:
%% delete_route_settings_request() :: #{}
-type delete_route_settings_request() :: #{}.


%% Example:
%% update_model_response() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"ModelId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type update_model_response() :: #{binary() => any()}.


%% Example:
%% create_model_response() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"ModelId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type create_model_response() :: #{binary() => any()}.


%% Example:
%% reimport_api_response() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type reimport_api_response() :: #{binary() => any()}.


%% Example:
%% update_route_request() :: #{
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type update_route_request() :: #{binary() => any()}.


%% Example:
%% update_domain_name_request() :: #{
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication_input(),
%%   <<"RoutingMode">> => list(any())
%% }
-type update_domain_name_request() :: #{binary() => any()}.


%% Example:
%% get_route_responses_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_route_responses_request() :: #{binary() => any()}.


%% Example:
%% domain_name() :: #{
%%   <<"ApiMappingSelectionExpression">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainNameArn">> => string(),
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication(),
%%   <<"RoutingMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type domain_name() :: #{binary() => any()}.


%% Example:
%% create_stage_request() :: #{
%%   <<"AccessLogSettings">> => access_log_settings(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"DefaultRouteSettings">> => route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"RouteSettings">> => map(),
%%   <<"StageName">> := string(),
%%   <<"StageVariables">> => map(),
%%   <<"Tags">> => map()
%% }
-type create_stage_request() :: #{binary() => any()}.

%% Example:
%% delete_deployment_request() :: #{}
-type delete_deployment_request() :: #{}.


%% Example:
%% get_domain_names_response() :: #{
%%   <<"Items">> => list(domain_name()()),
%%   <<"NextToken">> => string()
%% }
-type get_domain_names_response() :: #{binary() => any()}.


%% Example:
%% create_integration_request() :: #{
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> := list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config_input()
%% }
-type create_integration_request() :: #{binary() => any()}.


%% Example:
%% get_api_mapping_response() :: #{
%%   <<"ApiId">> => string(),
%%   <<"ApiMappingId">> => string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> => string()
%% }
-type get_api_mapping_response() :: #{binary() => any()}.


%% Example:
%% mutual_tls_authentication_input() :: #{
%%   <<"TruststoreUri">> => string(),
%%   <<"TruststoreVersion">> => string()
%% }
-type mutual_tls_authentication_input() :: #{binary() => any()}.


%% Example:
%% domain_name_configuration() :: #{
%%   <<"ApiGatewayDomainName">> => string(),
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateName">> => string(),
%%   <<"CertificateUploadDate">> => non_neg_integer(),
%%   <<"DomainNameStatus">> => list(any()),
%%   <<"DomainNameStatusMessage">> => string(),
%%   <<"EndpointType">> => list(any()),
%%   <<"HostedZoneId">> => string(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"OwnershipVerificationCertificateArn">> => string(),
%%   <<"SecurityPolicy">> => list(any())
%% }
-type domain_name_configuration() :: #{binary() => any()}.


%% Example:
%% export_api_response() :: #{
%%   <<"body">> => binary()
%% }
-type export_api_response() :: #{binary() => any()}.


%% Example:
%% get_api_mappings_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_api_mappings_request() :: #{binary() => any()}.

%% Example:
%% delete_model_request() :: #{}
-type delete_model_request() :: #{}.


%% Example:
%% tls_config() :: #{
%%   <<"ServerNameToVerify">> => string()
%% }
-type tls_config() :: #{binary() => any()}.


%% Example:
%% get_integrations_response() :: #{
%%   <<"Items">> => list(integration()()),
%%   <<"NextToken">> => string()
%% }
-type get_integrations_response() :: #{binary() => any()}.


%% Example:
%% access_log_settings() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"Format">> => string()
%% }
-type access_log_settings() :: #{binary() => any()}.


%% Example:
%% get_models_response() :: #{
%%   <<"Items">> => list(model()()),
%%   <<"NextToken">> => string()
%% }
-type get_models_response() :: #{binary() => any()}.


%% Example:
%% get_route_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type get_route_result() :: #{binary() => any()}.

%% Example:
%% get_integration_response_request() :: #{}
-type get_integration_response_request() :: #{}.


%% Example:
%% get_stages_response() :: #{
%%   <<"Items">> => list(stage()()),
%%   <<"NextToken">> => string()
%% }
-type get_stages_response() :: #{binary() => any()}.


%% Example:
%% get_models_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_models_request() :: #{binary() => any()}.


%% Example:
%% create_route_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteId">> => string(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type create_route_result() :: #{binary() => any()}.


%% Example:
%% get_routes_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_routes_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_vpc_link_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_vpc_link_request() :: #{binary() => any()}.


%% Example:
%% create_routing_rule_response() :: #{
%%   <<"Actions">> => list(routing_rule_action()()),
%%   <<"Conditions">> => list(routing_rule_condition()()),
%%   <<"Priority">> => integer(),
%%   <<"RoutingRuleArn">> => string(),
%%   <<"RoutingRuleId">> => string()
%% }
-type create_routing_rule_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_routing_rule_request() :: #{
%%   <<"DomainNameId">> => string()
%% }
-type get_routing_rule_request() :: #{binary() => any()}.

%% Example:
%% get_domain_name_request() :: #{}
-type get_domain_name_request() :: #{}.

%% Example:
%% get_model_request() :: #{}
-type get_model_request() :: #{}.


%% Example:
%% update_api_request() :: #{
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RouteKey">> => string(),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Target">> => string(),
%%   <<"Version">> => string()
%% }
-type update_api_request() :: #{binary() => any()}.


%% Example:
%% create_integration_response_request() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseKey">> := string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type create_integration_response_request() :: #{binary() => any()}.


%% Example:
%% update_deployment_response() :: #{
%%   <<"AutoDeployed">> => boolean(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentStatus">> => list(any()),
%%   <<"DeploymentStatusMessage">> => string(),
%%   <<"Description">> => string()
%% }
-type update_deployment_response() :: #{binary() => any()}.

%% Example:
%% delete_route_request() :: #{}
-type delete_route_request() :: #{}.


%% Example:
%% get_deployment_response() :: #{
%%   <<"AutoDeployed">> => boolean(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentStatus">> => list(any()),
%%   <<"DeploymentStatusMessage">> => string(),
%%   <<"Description">> => string()
%% }
-type get_deployment_response() :: #{binary() => any()}.


%% Example:
%% update_authorizer_response() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerId">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> => list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> => list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> => string()
%% }
-type update_authorizer_response() :: #{binary() => any()}.


%% Example:
%% create_api_request() :: #{
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"ProtocolType">> := list(any()),
%%   <<"RouteKey">> => string(),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Target">> => string(),
%%   <<"Version">> => string()
%% }
-type create_api_request() :: #{binary() => any()}.


%% Example:
%% get_vpc_link_response() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => map(),
%%   <<"VpcLinkId">> => string(),
%%   <<"VpcLinkStatus">> => list(any()),
%%   <<"VpcLinkStatusMessage">> => string(),
%%   <<"VpcLinkVersion">> => list(any())
%% }
-type get_vpc_link_response() :: #{binary() => any()}.


%% Example:
%% cors() :: #{
%%   <<"AllowCredentials">> => boolean(),
%%   <<"AllowHeaders">> => list(string()()),
%%   <<"AllowMethods">> => list(string()()),
%%   <<"AllowOrigins">> => list(string()()),
%%   <<"ExposeHeaders">> => list(string()()),
%%   <<"MaxAge">> => integer()
%% }
-type cors() :: #{binary() => any()}.


%% Example:
%% api() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type api() :: #{binary() => any()}.


%% Example:
%% create_route_response_response() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseId">> => string(),
%%   <<"RouteResponseKey">> => string()
%% }
-type create_route_response_response() :: #{binary() => any()}.


%% Example:
%% routing_rule_match_header_value() :: #{
%%   <<"Header">> => string(),
%%   <<"ValueGlob">> => string()
%% }
-type routing_rule_match_header_value() :: #{binary() => any()}.


%% Example:
%% get_model_response() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"ModelId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type get_model_response() :: #{binary() => any()}.


%% Example:
%% routing_rule_action_invoke_api() :: #{
%%   <<"ApiId">> => string(),
%%   <<"Stage">> => string(),
%%   <<"StripBasePath">> => boolean()
%% }
-type routing_rule_action_invoke_api() :: #{binary() => any()}.


%% Example:
%% create_api_mapping_response() :: #{
%%   <<"ApiId">> => string(),
%%   <<"ApiMappingId">> => string(),
%%   <<"ApiMappingKey">> => string(),
%%   <<"Stage">> => string()
%% }
-type create_api_mapping_response() :: #{binary() => any()}.

%% Example:
%% delete_domain_name_request() :: #{}
-type delete_domain_name_request() :: #{}.


%% Example:
%% update_vpc_link_response() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => map(),
%%   <<"VpcLinkId">> => string(),
%%   <<"VpcLinkStatus">> => list(any()),
%%   <<"VpcLinkStatusMessage">> => string(),
%%   <<"VpcLinkVersion">> => list(any())
%% }
-type update_vpc_link_response() :: #{binary() => any()}.


%% Example:
%% create_domain_name_response() :: #{
%%   <<"ApiMappingSelectionExpression">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainNameArn">> => string(),
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication(),
%%   <<"RoutingMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_domain_name_response() :: #{binary() => any()}.

%% Example:
%% get_vpc_link_request() :: #{}
-type get_vpc_link_request() :: #{}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_deployments_response() :: #{
%%   <<"Items">> => list(deployment()()),
%%   <<"NextToken">> => string()
%% }
-type get_deployments_response() :: #{binary() => any()}.


%% Example:
%% import_api_response() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => cors(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisableExecuteApiEndpoint">> => boolean(),
%%   <<"DisableSchemaValidation">> => boolean(),
%%   <<"ImportInfo">> => list(string()()),
%%   <<"IpAddressType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => list(any()),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => list(string()())
%% }
-type import_api_response() :: #{binary() => any()}.

%% Example:
%% reset_authorizers_cache_request() :: #{}
-type reset_authorizers_cache_request() :: #{}.


%% Example:
%% get_api_mappings_response() :: #{
%%   <<"Items">> => list(api_mapping()()),
%%   <<"NextToken">> => string()
%% }
-type get_api_mappings_response() :: #{binary() => any()}.


%% Example:
%% create_route_request() :: #{
%%   <<"ApiKeyRequired">> => boolean(),
%%   <<"AuthorizationScopes">> => list(string()()),
%%   <<"AuthorizationType">> => list(any()),
%%   <<"AuthorizerId">> => string(),
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"RequestModels">> => map(),
%%   <<"RequestParameters">> => map(),
%%   <<"RouteKey">> := string(),
%%   <<"RouteResponseSelectionExpression">> => string(),
%%   <<"Target">> => string()
%% }
-type create_route_request() :: #{binary() => any()}.


%% Example:
%% get_vpc_links_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_vpc_links_request() :: #{binary() => any()}.


%% Example:
%% create_routing_rule_request() :: #{
%%   <<"Actions">> := list(routing_rule_action()()),
%%   <<"Conditions">> := list(routing_rule_condition()()),
%%   <<"DomainNameId">> => string(),
%%   <<"Priority">> := integer()
%% }
-type create_routing_rule_request() :: #{binary() => any()}.


%% Example:
%% get_apis_response() :: #{
%%   <<"Items">> => list(api()()),
%%   <<"NextToken">> => string()
%% }
-type get_apis_response() :: #{binary() => any()}.


%% Example:
%% integration_response() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseId">> => string(),
%%   <<"IntegrationResponseKey">> => string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type integration_response() :: #{binary() => any()}.


%% Example:
%% model() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"ModelId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type model() :: #{binary() => any()}.


%% Example:
%% list_routing_rules_request() :: #{
%%   <<"DomainNameId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routing_rules_request() :: #{binary() => any()}.


%% Example:
%% routing_rule() :: #{
%%   <<"Actions">> => list(routing_rule_action()()),
%%   <<"Conditions">> => list(routing_rule_condition()()),
%%   <<"Priority">> => integer(),
%%   <<"RoutingRuleArn">> => string(),
%%   <<"RoutingRuleId">> => string()
%% }
-type routing_rule() :: #{binary() => any()}.


%% Example:
%% get_routing_rule_response() :: #{
%%   <<"Actions">> => list(routing_rule_action()()),
%%   <<"Conditions">> => list(routing_rule_condition()()),
%%   <<"Priority">> => integer(),
%%   <<"RoutingRuleArn">> => string(),
%%   <<"RoutingRuleId">> => string()
%% }
-type get_routing_rule_response() :: #{binary() => any()}.


%% Example:
%% get_apis_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_apis_request() :: #{binary() => any()}.


%% Example:
%% update_deployment_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_deployment_request() :: #{binary() => any()}.


%% Example:
%% get_integration_response_response() :: #{
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"IntegrationResponseId">> => string(),
%%   <<"IntegrationResponseKey">> => string(),
%%   <<"ResponseParameters">> => map(),
%%   <<"ResponseTemplates">> => map(),
%%   <<"TemplateSelectionExpression">> => string()
%% }
-type get_integration_response_response() :: #{binary() => any()}.

%% Example:
%% get_api_request() :: #{}
-type get_api_request() :: #{}.


%% Example:
%% get_domain_name_response() :: #{
%%   <<"ApiMappingSelectionExpression">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainNameArn">> => string(),
%%   <<"DomainNameConfigurations">> => list(domain_name_configuration()()),
%%   <<"MutualTlsAuthentication">> => mutual_tls_authentication(),
%%   <<"RoutingMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_domain_name_response() :: #{binary() => any()}.


%% Example:
%% update_integration_result() :: #{
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ContentHandlingStrategy">> => list(any()),
%%   <<"CredentialsArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationId">> => string(),
%%   <<"IntegrationMethod">> => string(),
%%   <<"IntegrationResponseSelectionExpression">> => string(),
%%   <<"IntegrationSubtype">> => string(),
%%   <<"IntegrationType">> => list(any()),
%%   <<"IntegrationUri">> => string(),
%%   <<"PassthroughBehavior">> => list(any()),
%%   <<"PayloadFormatVersion">> => string(),
%%   <<"RequestParameters">> => map(),
%%   <<"RequestTemplates">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"TemplateSelectionExpression">> => string(),
%%   <<"TimeoutInMillis">> => integer(),
%%   <<"TlsConfig">> => tls_config()
%% }
-type update_integration_result() :: #{binary() => any()}.

%% Example:
%% delete_vpc_link_request() :: #{}
-type delete_vpc_link_request() :: #{}.


%% Example:
%% update_authorizer_request() :: #{
%%   <<"AuthorizerCredentialsArn">> => string(),
%%   <<"AuthorizerPayloadFormatVersion">> => string(),
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerType">> => list(any()),
%%   <<"AuthorizerUri">> => string(),
%%   <<"EnableSimpleResponses">> => boolean(),
%%   <<"IdentitySource">> => list(string()()),
%%   <<"IdentityValidationExpression">> => string(),
%%   <<"JwtConfiguration">> => j_w_t_configuration(),
%%   <<"Name">> => string()
%% }
-type update_authorizer_request() :: #{binary() => any()}.

%% Example:
%% delete_api_request() :: #{}
-type delete_api_request() :: #{}.


%% Example:
%% routing_rule_match_base_paths() :: #{
%%   <<"AnyOf">> => list(string()())
%% }
-type routing_rule_match_base_paths() :: #{binary() => any()}.

%% Example:
%% get_route_request() :: #{}
-type get_route_request() :: #{}.


%% Example:
%% route_response() :: #{
%%   <<"ModelSelectionExpression">> => string(),
%%   <<"ResponseModels">> => map(),
%%   <<"ResponseParameters">> => map(),
%%   <<"RouteResponseId">> => string(),
%%   <<"RouteResponseKey">> => string()
%% }
-type route_response() :: #{binary() => any()}.

-type create_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_api_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_authorizer_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_deployment_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_domain_name_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_integration_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_integration_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_model_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_route_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_route_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_routing_rule_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_stage_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_vpc_link_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type delete_access_log_settings_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_api_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_api_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_authorizer_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_cors_configuration_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_deployment_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_domain_name_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_integration_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_integration_response_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_model_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_route_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_route_request_parameter_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_route_response_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_route_settings_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_routing_rule_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_stage_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type delete_vpc_link_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type export_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_api_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_api_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_api_mappings_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_apis_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_authorizer_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_authorizers_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_deployment_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_deployments_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_domain_name_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_domain_names_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_integration_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_integration_response_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_integration_responses_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_integrations_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_model_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_model_template_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_models_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_route_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_route_response_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_route_responses_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_routes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_routing_rule_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_stage_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_stages_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_tags_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type get_vpc_link_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type get_vpc_links_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type import_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type list_routing_rules_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_routing_rule_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type reimport_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type reset_authorizers_cache_errors() ::
    not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_api_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_authorizer_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_deployment_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_domain_name_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_integration_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_integration_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_model_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_route_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_route_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_stage_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type update_vpc_link_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Api resource.
-spec create_api(aws_client:aws_client(), create_api_request()) ->
    {ok, create_api_response(), tuple()} |
    {error, any()} |
    {error, create_api_errors(), tuple()}.
create_api(Client, Input) ->
    create_api(Client, Input, []).

-spec create_api(aws_client:aws_client(), create_api_request(), proplists:proplist()) ->
    {ok, create_api_response(), tuple()} |
    {error, any()} |
    {error, create_api_errors(), tuple()}.
create_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis"],
    SuccessStatusCode = 201,
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

%% @doc Creates an API mapping.
-spec create_api_mapping(aws_client:aws_client(), binary() | list(), create_api_mapping_request()) ->
    {ok, create_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, create_api_mapping_errors(), tuple()}.
create_api_mapping(Client, DomainName, Input) ->
    create_api_mapping(Client, DomainName, Input, []).

-spec create_api_mapping(aws_client:aws_client(), binary() | list(), create_api_mapping_request(), proplists:proplist()) ->
    {ok, create_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, create_api_mapping_errors(), tuple()}.
create_api_mapping(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Authorizer for an API.
-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request()) ->
    {ok, create_authorizer_response(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, ApiId, Input) ->
    create_authorizer(Client, ApiId, Input, []).

-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request(), proplists:proplist()) ->
    {ok, create_authorizer_response(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers"],
    SuccessStatusCode = 201,
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

%% @doc Creates a Deployment for an API.
-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, ApiId, Input) ->
    create_deployment(Client, ApiId, Input, []).

-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments"],
    SuccessStatusCode = 201,
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

%% @doc Creates a domain name.
-spec create_domain_name(aws_client:aws_client(), create_domain_name_request()) ->
    {ok, create_domain_name_response(), tuple()} |
    {error, any()} |
    {error, create_domain_name_errors(), tuple()}.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).

-spec create_domain_name(aws_client:aws_client(), create_domain_name_request(), proplists:proplist()) ->
    {ok, create_domain_name_response(), tuple()} |
    {error, any()} |
    {error, create_domain_name_errors(), tuple()}.
create_domain_name(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domainnames"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Integration.
-spec create_integration(aws_client:aws_client(), binary() | list(), create_integration_request()) ->
    {ok, create_integration_result(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, ApiId, Input) ->
    create_integration(Client, ApiId, Input, []).

-spec create_integration(aws_client:aws_client(), binary() | list(), create_integration_request(), proplists:proplist()) ->
    {ok, create_integration_result(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations"],
    SuccessStatusCode = 201,
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

%% @doc Creates an IntegrationResponses.
-spec create_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), create_integration_response_request()) ->
    {ok, create_integration_response_response(), tuple()} |
    {error, any()} |
    {error, create_integration_response_errors(), tuple()}.
create_integration_response(Client, ApiId, IntegrationId, Input) ->
    create_integration_response(Client, ApiId, IntegrationId, Input, []).

-spec create_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), create_integration_response_request(), proplists:proplist()) ->
    {ok, create_integration_response_response(), tuple()} |
    {error, any()} |
    {error, create_integration_response_errors(), tuple()}.
create_integration_response(Client, ApiId, IntegrationId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses"],
    SuccessStatusCode = 201,
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

%% @doc Creates a Model for an API.
-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, ApiId, Input) ->
    create_model(Client, ApiId, Input, []).

-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request(), proplists:proplist()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models"],
    SuccessStatusCode = 201,
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

%% @doc Creates a Route for an API.
-spec create_route(aws_client:aws_client(), binary() | list(), create_route_request()) ->
    {ok, create_route_result(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, ApiId, Input) ->
    create_route(Client, ApiId, Input, []).

-spec create_route(aws_client:aws_client(), binary() | list(), create_route_request(), proplists:proplist()) ->
    {ok, create_route_result(), tuple()} |
    {error, any()} |
    {error, create_route_errors(), tuple()}.
create_route(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes"],
    SuccessStatusCode = 201,
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

%% @doc Creates a RouteResponse for a Route.
-spec create_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_response_request()) ->
    {ok, create_route_response_response(), tuple()} |
    {error, any()} |
    {error, create_route_response_errors(), tuple()}.
create_route_response(Client, ApiId, RouteId, Input) ->
    create_route_response(Client, ApiId, RouteId, Input, []).

-spec create_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), create_route_response_request(), proplists:proplist()) ->
    {ok, create_route_response_response(), tuple()} |
    {error, any()} |
    {error, create_route_response_errors(), tuple()}.
create_route_response(Client, ApiId, RouteId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses"],
    SuccessStatusCode = 201,
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

%% @doc Creates a RoutingRule.
-spec create_routing_rule(aws_client:aws_client(), binary() | list(), create_routing_rule_request()) ->
    {ok, create_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, create_routing_rule_errors(), tuple()}.
create_routing_rule(Client, DomainName, Input) ->
    create_routing_rule(Client, DomainName, Input, []).

-spec create_routing_rule(aws_client:aws_client(), binary() | list(), create_routing_rule_request(), proplists:proplist()) ->
    {ok, create_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, create_routing_rule_errors(), tuple()}.
create_routing_rule(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/routingrules"],
    SuccessStatusCode = 201,
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
                     {<<"domainNameId">>, <<"DomainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Stage for an API.
-spec create_stage(aws_client:aws_client(), binary() | list(), create_stage_request()) ->
    {ok, create_stage_response(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, ApiId, Input) ->
    create_stage(Client, ApiId, Input, []).

-spec create_stage(aws_client:aws_client(), binary() | list(), create_stage_request(), proplists:proplist()) ->
    {ok, create_stage_response(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages"],
    SuccessStatusCode = 201,
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

%% @doc Creates a VPC link.
-spec create_vpc_link(aws_client:aws_client(), create_vpc_link_request()) ->
    {ok, create_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_link_errors(), tuple()}.
create_vpc_link(Client, Input) ->
    create_vpc_link(Client, Input, []).

-spec create_vpc_link(aws_client:aws_client(), create_vpc_link_request(), proplists:proplist()) ->
    {ok, create_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_link_errors(), tuple()}.
create_vpc_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/vpclinks"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the AccessLogSettings for a Stage.
%%
%% To disable access logging for a Stage, delete its AccessLogSettings.
-spec delete_access_log_settings(aws_client:aws_client(), binary() | list(), binary() | list(), delete_access_log_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_log_settings_errors(), tuple()}.
delete_access_log_settings(Client, ApiId, StageName, Input) ->
    delete_access_log_settings(Client, ApiId, StageName, Input, []).

-spec delete_access_log_settings(aws_client:aws_client(), binary() | list(), binary() | list(), delete_access_log_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_log_settings_errors(), tuple()}.
delete_access_log_settings(Client, ApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/accesslogsettings"],
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

%% @doc Deletes an Api resource.
-spec delete_api(aws_client:aws_client(), binary() | list(), delete_api_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_errors(), tuple()}.
delete_api(Client, ApiId, Input) ->
    delete_api(Client, ApiId, Input, []).

-spec delete_api(aws_client:aws_client(), binary() | list(), delete_api_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_errors(), tuple()}.
delete_api(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
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

%% @doc Deletes an API mapping.
-spec delete_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), delete_api_mapping_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_mapping_errors(), tuple()}.
delete_api_mapping(Client, ApiMappingId, DomainName, Input) ->
    delete_api_mapping(Client, ApiMappingId, DomainName, Input, []).

-spec delete_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), delete_api_mapping_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_mapping_errors(), tuple()}.
delete_api_mapping(Client, ApiMappingId, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
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

%% @doc Deletes an Authorizer.
-spec delete_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), delete_authorizer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, ApiId, AuthorizerId, Input) ->
    delete_authorizer(Client, ApiId, AuthorizerId, Input, []).

-spec delete_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), delete_authorizer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, ApiId, AuthorizerId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
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

%% @doc Deletes a CORS configuration.
-spec delete_cors_configuration(aws_client:aws_client(), binary() | list(), delete_cors_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cors_configuration_errors(), tuple()}.
delete_cors_configuration(Client, ApiId, Input) ->
    delete_cors_configuration(Client, ApiId, Input, []).

-spec delete_cors_configuration(aws_client:aws_client(), binary() | list(), delete_cors_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cors_configuration_errors(), tuple()}.
delete_cors_configuration(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/cors"],
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

%% @doc Deletes a Deployment.
-spec delete_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_deployment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, ApiId, DeploymentId, Input) ->
    delete_deployment(Client, ApiId, DeploymentId, Input, []).

-spec delete_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_deployment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, ApiId, DeploymentId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
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

%% @doc Deletes a domain name.
-spec delete_domain_name(aws_client:aws_client(), binary() | list(), delete_domain_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_name_errors(), tuple()}.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).

-spec delete_domain_name(aws_client:aws_client(), binary() | list(), delete_domain_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_name_errors(), tuple()}.
delete_domain_name(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes an Integration.
-spec delete_integration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_integration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, ApiId, IntegrationId, Input) ->
    delete_integration(Client, ApiId, IntegrationId, Input, []).

-spec delete_integration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_integration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, ApiId, IntegrationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
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

%% @doc Deletes an IntegrationResponses.
-spec delete_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_integration_response_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_response_errors(), tuple()}.
delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input) ->
    delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input, []).

-spec delete_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_integration_response_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_response_errors(), tuple()}.
delete_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
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

%% @doc Deletes a Model.
-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ApiId, ModelId, Input) ->
    delete_model(Client, ApiId, ModelId, Input, []).

-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ApiId, ModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
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

%% @doc Deletes a Route.
-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), delete_route_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, ApiId, RouteId, Input) ->
    delete_route(Client, ApiId, RouteId, Input, []).

-spec delete_route(aws_client:aws_client(), binary() | list(), binary() | list(), delete_route_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_errors(), tuple()}.
delete_route(Client, ApiId, RouteId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
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

%% @doc Deletes a route request parameter.
%%
%% Supported only for WebSocket APIs.
-spec delete_route_request_parameter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_request_parameter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_request_parameter_errors(), tuple()}.
delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input) ->
    delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input, []).

-spec delete_route_request_parameter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_request_parameter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_request_parameter_errors(), tuple()}.
delete_route_request_parameter(Client, ApiId, RequestParameterKey, RouteId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/requestparameters/", aws_util:encode_uri(RequestParameterKey), ""],
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

%% @doc Deletes a RouteResponse.
-spec delete_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_response_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_response_errors(), tuple()}.
delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input) ->
    delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input, []).

-spec delete_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_response_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_response_errors(), tuple()}.
delete_route_response(Client, ApiId, RouteId, RouteResponseId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
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

%% @doc Deletes the RouteSettings for a stage.
-spec delete_route_settings(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_settings_errors(), tuple()}.
delete_route_settings(Client, ApiId, RouteKey, StageName, Input) ->
    delete_route_settings(Client, ApiId, RouteKey, StageName, Input, []).

-spec delete_route_settings(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_route_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_route_settings_errors(), tuple()}.
delete_route_settings(Client, ApiId, RouteKey, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/routesettings/", aws_util:encode_uri(RouteKey), ""],
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

%% @doc Deletes a routing rule.
-spec delete_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_routing_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_routing_rule_errors(), tuple()}.
delete_routing_rule(Client, DomainName, RoutingRuleId, Input) ->
    delete_routing_rule(Client, DomainName, RoutingRuleId, Input, []).

-spec delete_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_routing_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_routing_rule_errors(), tuple()}.
delete_routing_rule(Client, DomainName, RoutingRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/routingrules/", aws_util:encode_uri(RoutingRuleId), ""],
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
                     {<<"domainNameId">>, <<"DomainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Stage.
-spec delete_stage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, ApiId, StageName, Input) ->
    delete_stage(Client, ApiId, StageName, Input, []).

-spec delete_stage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, ApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
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

%% @doc Deletes a VPC link.
-spec delete_vpc_link(aws_client:aws_client(), binary() | list(), delete_vpc_link_request()) ->
    {ok, delete_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_link_errors(), tuple()}.
delete_vpc_link(Client, VpcLinkId, Input) ->
    delete_vpc_link(Client, VpcLinkId, Input, []).

-spec delete_vpc_link(aws_client:aws_client(), binary() | list(), delete_vpc_link_request(), proplists:proplist()) ->
    {ok, delete_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_link_errors(), tuple()}.
delete_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 202,
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


-spec export_api(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, export_api_response(), tuple()} |
    {error, any()} |
    {error, export_api_errors(), tuple()}.
export_api(Client, ApiId, Specification, OutputType)
  when is_map(Client) ->
    export_api(Client, ApiId, Specification, OutputType, #{}, #{}).

-spec export_api(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_api_response(), tuple()} |
    {error, any()} |
    {error, export_api_errors(), tuple()}.
export_api(Client, ApiId, Specification, OutputType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_api(Client, ApiId, Specification, OutputType, QueryMap, HeadersMap, []).

-spec export_api(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_api_response(), tuple()} |
    {error, any()} |
    {error, export_api_errors(), tuple()}.
export_api(Client, ApiId, Specification, OutputType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/exports/", aws_util:encode_uri(Specification), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"exportVersion">>, maps:get(<<"exportVersion">>, QueryMap, undefined)},
        {<<"includeExtensions">>, maps:get(<<"includeExtensions">>, QueryMap, undefined)},
        {<<"outputType">>, OutputType},
        {<<"stageName">>, maps:get(<<"stageName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Api resource.
-spec get_api(aws_client:aws_client(), binary() | list()) ->
    {ok, get_api_response(), tuple()} |
    {error, any()} |
    {error, get_api_errors(), tuple()}.
get_api(Client, ApiId)
  when is_map(Client) ->
    get_api(Client, ApiId, #{}, #{}).

-spec get_api(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_api_response(), tuple()} |
    {error, any()} |
    {error, get_api_errors(), tuple()}.
get_api(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_api(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_response(), tuple()} |
    {error, any()} |
    {error, get_api_errors(), tuple()}.
get_api(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an API mapping.
-spec get_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, get_api_mapping_errors(), tuple()}.
get_api_mapping(Client, ApiMappingId, DomainName)
  when is_map(Client) ->
    get_api_mapping(Client, ApiMappingId, DomainName, #{}, #{}).

-spec get_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, get_api_mapping_errors(), tuple()}.
get_api_mapping(Client, ApiMappingId, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_mapping(Client, ApiMappingId, DomainName, QueryMap, HeadersMap, []).

-spec get_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, get_api_mapping_errors(), tuple()}.
get_api_mapping(Client, ApiMappingId, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets API mappings.
-spec get_api_mappings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_api_mappings_response(), tuple()} |
    {error, any()} |
    {error, get_api_mappings_errors(), tuple()}.
get_api_mappings(Client, DomainName)
  when is_map(Client) ->
    get_api_mappings(Client, DomainName, #{}, #{}).

-spec get_api_mappings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_api_mappings_response(), tuple()} |
    {error, any()} |
    {error, get_api_mappings_errors(), tuple()}.
get_api_mappings(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_mappings(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_api_mappings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_mappings_response(), tuple()} |
    {error, any()} |
    {error, get_api_mappings_errors(), tuple()}.
get_api_mappings(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings"],
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

%% @doc Gets a collection of Api resources.
-spec get_apis(aws_client:aws_client()) ->
    {ok, get_apis_response(), tuple()} |
    {error, any()} |
    {error, get_apis_errors(), tuple()}.
get_apis(Client)
  when is_map(Client) ->
    get_apis(Client, #{}, #{}).

-spec get_apis(aws_client:aws_client(), map(), map()) ->
    {ok, get_apis_response(), tuple()} |
    {error, any()} |
    {error, get_apis_errors(), tuple()}.
get_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apis(Client, QueryMap, HeadersMap, []).

-spec get_apis(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_apis_response(), tuple()} |
    {error, any()} |
    {error, get_apis_errors(), tuple()}.
get_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis"],
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

%% @doc Gets an Authorizer.
-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_authorizer_response(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, ApiId, AuthorizerId)
  when is_map(Client) ->
    get_authorizer(Client, ApiId, AuthorizerId, #{}, #{}).

-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_authorizer_response(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, ApiId, AuthorizerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizer(Client, ApiId, AuthorizerId, QueryMap, HeadersMap, []).

-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_authorizer_response(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, ApiId, AuthorizerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Authorizers for an API.
-spec get_authorizers(aws_client:aws_client(), binary() | list()) ->
    {ok, get_authorizers_response(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, ApiId)
  when is_map(Client) ->
    get_authorizers(Client, ApiId, #{}, #{}).

-spec get_authorizers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_authorizers_response(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizers(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_authorizers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_authorizers_response(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers"],
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

%% @doc Gets a Deployment.
-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApiId, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, ApiId, DeploymentId, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApiId, DeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApiId, DeploymentId, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApiId, DeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Deployments for an API.
-spec get_deployments(aws_client:aws_client(), binary() | list()) ->
    {ok, get_deployments_response(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, ApiId)
  when is_map(Client) ->
    get_deployments(Client, ApiId, #{}, #{}).

-spec get_deployments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_deployments_response(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployments(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_deployments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployments_response(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments"],
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

%% @doc Gets a domain name.
-spec get_domain_name(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_name_response(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, #{}, #{}).

-spec get_domain_name(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_name_response(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_name(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_domain_name(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_name_response(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the domain names for an AWS account.
-spec get_domain_names(aws_client:aws_client()) ->
    {ok, get_domain_names_response(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client)
  when is_map(Client) ->
    get_domain_names(Client, #{}, #{}).

-spec get_domain_names(aws_client:aws_client(), map(), map()) ->
    {ok, get_domain_names_response(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_names(Client, QueryMap, HeadersMap, []).

-spec get_domain_names(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_names_response(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames"],
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

%% @doc Gets an Integration.
-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_integration_result(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, ApiId, IntegrationId)
  when is_map(Client) ->
    get_integration(Client, ApiId, IntegrationId, #{}, #{}).

-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_integration_result(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, ApiId, IntegrationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration(Client, ApiId, IntegrationId, QueryMap, HeadersMap, []).

-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_integration_result(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, ApiId, IntegrationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an IntegrationResponses.
-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_integration_response_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId)
  when is_map(Client) ->
    get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, #{}, #{}).

-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_integration_response_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, QueryMap, HeadersMap, []).

-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_integration_response_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the IntegrationResponses for an Integration.
-spec get_integration_responses(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_integration_responses_response(), tuple()} |
    {error, any()} |
    {error, get_integration_responses_errors(), tuple()}.
get_integration_responses(Client, ApiId, IntegrationId)
  when is_map(Client) ->
    get_integration_responses(Client, ApiId, IntegrationId, #{}, #{}).

-spec get_integration_responses(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_integration_responses_response(), tuple()} |
    {error, any()} |
    {error, get_integration_responses_errors(), tuple()}.
get_integration_responses(Client, ApiId, IntegrationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration_responses(Client, ApiId, IntegrationId, QueryMap, HeadersMap, []).

-spec get_integration_responses(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_integration_responses_response(), tuple()} |
    {error, any()} |
    {error, get_integration_responses_errors(), tuple()}.
get_integration_responses(Client, ApiId, IntegrationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses"],
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

%% @doc Gets the Integrations for an API.
-spec get_integrations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_integrations_response(), tuple()} |
    {error, any()} |
    {error, get_integrations_errors(), tuple()}.
get_integrations(Client, ApiId)
  when is_map(Client) ->
    get_integrations(Client, ApiId, #{}, #{}).

-spec get_integrations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_integrations_response(), tuple()} |
    {error, any()} |
    {error, get_integrations_errors(), tuple()}.
get_integrations(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integrations(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_integrations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_integrations_response(), tuple()} |
    {error, any()} |
    {error, get_integrations_errors(), tuple()}.
get_integrations(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations"],
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

%% @doc Gets a Model.
-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_model_response(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ApiId, ModelId)
  when is_map(Client) ->
    get_model(Client, ApiId, ModelId, #{}, #{}).

-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_model_response(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ApiId, ModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model(Client, ApiId, ModelId, QueryMap, HeadersMap, []).

-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_response(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ApiId, ModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a model template.
-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_model_template_response(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ApiId, ModelId)
  when is_map(Client) ->
    get_model_template(Client, ApiId, ModelId, #{}, #{}).

-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_model_template_response(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ApiId, ModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_template(Client, ApiId, ModelId, QueryMap, HeadersMap, []).

-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_template_response(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ApiId, ModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), "/template"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Models for an API.
-spec get_models(aws_client:aws_client(), binary() | list()) ->
    {ok, get_models_response(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, ApiId)
  when is_map(Client) ->
    get_models(Client, ApiId, #{}, #{}).

-spec get_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_models_response(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_models(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_models_response(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models"],
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

%% @doc Gets a Route.
-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_route_result(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApiId, RouteId)
  when is_map(Client) ->
    get_route(Client, ApiId, RouteId, #{}, #{}).

-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_route_result(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApiId, RouteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route(Client, ApiId, RouteId, QueryMap, HeadersMap, []).

-spec get_route(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_route_result(), tuple()} |
    {error, any()} |
    {error, get_route_errors(), tuple()}.
get_route(Client, ApiId, RouteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a RouteResponse.
-spec get_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_route_response_response(), tuple()} |
    {error, any()} |
    {error, get_route_response_errors(), tuple()}.
get_route_response(Client, ApiId, RouteId, RouteResponseId)
  when is_map(Client) ->
    get_route_response(Client, ApiId, RouteId, RouteResponseId, #{}, #{}).

-spec get_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_route_response_response(), tuple()} |
    {error, any()} |
    {error, get_route_response_errors(), tuple()}.
get_route_response(Client, ApiId, RouteId, RouteResponseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route_response(Client, ApiId, RouteId, RouteResponseId, QueryMap, HeadersMap, []).

-spec get_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_route_response_response(), tuple()} |
    {error, any()} |
    {error, get_route_response_errors(), tuple()}.
get_route_response(Client, ApiId, RouteId, RouteResponseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the RouteResponses for a Route.
-spec get_route_responses(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_route_responses_response(), tuple()} |
    {error, any()} |
    {error, get_route_responses_errors(), tuple()}.
get_route_responses(Client, ApiId, RouteId)
  when is_map(Client) ->
    get_route_responses(Client, ApiId, RouteId, #{}, #{}).

-spec get_route_responses(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_route_responses_response(), tuple()} |
    {error, any()} |
    {error, get_route_responses_errors(), tuple()}.
get_route_responses(Client, ApiId, RouteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route_responses(Client, ApiId, RouteId, QueryMap, HeadersMap, []).

-spec get_route_responses(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_route_responses_response(), tuple()} |
    {error, any()} |
    {error, get_route_responses_errors(), tuple()}.
get_route_responses(Client, ApiId, RouteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses"],
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

%% @doc Gets the Routes for an API.
-spec get_routes(aws_client:aws_client(), binary() | list()) ->
    {ok, get_routes_response(), tuple()} |
    {error, any()} |
    {error, get_routes_errors(), tuple()}.
get_routes(Client, ApiId)
  when is_map(Client) ->
    get_routes(Client, ApiId, #{}, #{}).

-spec get_routes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_routes_response(), tuple()} |
    {error, any()} |
    {error, get_routes_errors(), tuple()}.
get_routes(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_routes(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_routes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_routes_response(), tuple()} |
    {error, any()} |
    {error, get_routes_errors(), tuple()}.
get_routes(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes"],
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

%% @doc Gets a routing rule.
-spec get_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, get_routing_rule_errors(), tuple()}.
get_routing_rule(Client, DomainName, RoutingRuleId)
  when is_map(Client) ->
    get_routing_rule(Client, DomainName, RoutingRuleId, #{}, #{}).

-spec get_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, get_routing_rule_errors(), tuple()}.
get_routing_rule(Client, DomainName, RoutingRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_routing_rule(Client, DomainName, RoutingRuleId, QueryMap, HeadersMap, []).

-spec get_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, get_routing_rule_errors(), tuple()}.
get_routing_rule(Client, DomainName, RoutingRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/routingrules/", aws_util:encode_uri(RoutingRuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainNameId">>, maps:get(<<"domainNameId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Stage.
-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_stage_response(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, ApiId, StageName)
  when is_map(Client) ->
    get_stage(Client, ApiId, StageName, #{}, #{}).

-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_stage_response(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, ApiId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stage(Client, ApiId, StageName, QueryMap, HeadersMap, []).

-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_stage_response(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, ApiId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Stages for an API.
-spec get_stages(aws_client:aws_client(), binary() | list()) ->
    {ok, get_stages_response(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, ApiId)
  when is_map(Client) ->
    get_stages(Client, ApiId, #{}, #{}).

-spec get_stages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_stages_response(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stages(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_stages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_stages_response(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages"],
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

%% @doc Gets a collection of Tag resources.
-spec get_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn)
  when is_map(Client) ->
    get_tags(Client, ResourceArn, #{}, #{}).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a VPC link.
-spec get_vpc_link(aws_client:aws_client(), binary() | list()) ->
    {ok, get_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId)
  when is_map(Client) ->
    get_vpc_link(Client, VpcLinkId, #{}, #{}).

-spec get_vpc_link(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, []).

-spec get_vpc_link(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of VPC links.
-spec get_vpc_links(aws_client:aws_client()) ->
    {ok, get_vpc_links_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client)
  when is_map(Client) ->
    get_vpc_links(Client, #{}, #{}).

-spec get_vpc_links(aws_client:aws_client(), map(), map()) ->
    {ok, get_vpc_links_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_links(Client, QueryMap, HeadersMap, []).

-spec get_vpc_links(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_vpc_links_response(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/vpclinks"],
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

%% @doc Imports an API.
-spec import_api(aws_client:aws_client(), import_api_request()) ->
    {ok, import_api_response(), tuple()} |
    {error, any()} |
    {error, import_api_errors(), tuple()}.
import_api(Client, Input) ->
    import_api(Client, Input, []).

-spec import_api(aws_client:aws_client(), import_api_request(), proplists:proplist()) ->
    {ok, import_api_response(), tuple()} |
    {error, any()} |
    {error, import_api_errors(), tuple()}.
import_api(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/apis"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
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
                     {<<"basepath">>, <<"Basepath">>},
                     {<<"failOnWarnings">>, <<"FailOnWarnings">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists routing rules.
-spec list_routing_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_routing_rules_response(), tuple()} |
    {error, any()} |
    {error, list_routing_rules_errors(), tuple()}.
list_routing_rules(Client, DomainName)
  when is_map(Client) ->
    list_routing_rules(Client, DomainName, #{}, #{}).

-spec list_routing_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_routing_rules_response(), tuple()} |
    {error, any()} |
    {error, list_routing_rules_errors(), tuple()}.
list_routing_rules(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_rules(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_routing_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routing_rules_response(), tuple()} |
    {error, any()} |
    {error, list_routing_rules_errors(), tuple()}.
list_routing_rules(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/routingrules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainNameId">>, maps:get(<<"domainNameId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates a routing rule.
-spec put_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), put_routing_rule_request()) ->
    {ok, put_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, put_routing_rule_errors(), tuple()}.
put_routing_rule(Client, DomainName, RoutingRuleId, Input) ->
    put_routing_rule(Client, DomainName, RoutingRuleId, Input, []).

-spec put_routing_rule(aws_client:aws_client(), binary() | list(), binary() | list(), put_routing_rule_request(), proplists:proplist()) ->
    {ok, put_routing_rule_response(), tuple()} |
    {error, any()} |
    {error, put_routing_rule_errors(), tuple()}.
put_routing_rule(Client, DomainName, RoutingRuleId, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/routingrules/", aws_util:encode_uri(RoutingRuleId), ""],
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
                     {<<"domainNameId">>, <<"DomainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Puts an Api resource.
-spec reimport_api(aws_client:aws_client(), binary() | list(), reimport_api_request()) ->
    {ok, reimport_api_response(), tuple()} |
    {error, any()} |
    {error, reimport_api_errors(), tuple()}.
reimport_api(Client, ApiId, Input) ->
    reimport_api(Client, ApiId, Input, []).

-spec reimport_api(aws_client:aws_client(), binary() | list(), reimport_api_request(), proplists:proplist()) ->
    {ok, reimport_api_response(), tuple()} |
    {error, any()} |
    {error, reimport_api_errors(), tuple()}.
reimport_api(Client, ApiId, Input0, Options0) ->
    Method = put,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
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
                     {<<"basepath">>, <<"Basepath">>},
                     {<<"failOnWarnings">>, <<"FailOnWarnings">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Resets all authorizer cache entries on a stage.
%%
%% Supported only for HTTP APIs.
-spec reset_authorizers_cache(aws_client:aws_client(), binary() | list(), binary() | list(), reset_authorizers_cache_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reset_authorizers_cache_errors(), tuple()}.
reset_authorizers_cache(Client, ApiId, StageName, Input) ->
    reset_authorizers_cache(Client, ApiId, StageName, Input, []).

-spec reset_authorizers_cache(aws_client:aws_client(), binary() | list(), binary() | list(), reset_authorizers_cache_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reset_authorizers_cache_errors(), tuple()}.
reset_authorizers_cache(Client, ApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/authorizers"],
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

%% @doc Creates a new Tag resource to represent a tag.
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
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 201,
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

%% @doc Deletes a Tag.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Api resource.
-spec update_api(aws_client:aws_client(), binary() | list(), update_api_request()) ->
    {ok, update_api_response(), tuple()} |
    {error, any()} |
    {error, update_api_errors(), tuple()}.
update_api(Client, ApiId, Input) ->
    update_api(Client, ApiId, Input, []).

-spec update_api(aws_client:aws_client(), binary() | list(), update_api_request(), proplists:proplist()) ->
    {ok, update_api_response(), tuple()} |
    {error, any()} |
    {error, update_api_errors(), tuple()}.
update_api(Client, ApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), ""],
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

%% @doc The API mapping.
-spec update_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), update_api_mapping_request()) ->
    {ok, update_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, update_api_mapping_errors(), tuple()}.
update_api_mapping(Client, ApiMappingId, DomainName, Input) ->
    update_api_mapping(Client, ApiMappingId, DomainName, Input, []).

-spec update_api_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), update_api_mapping_request(), proplists:proplist()) ->
    {ok, update_api_mapping_response(), tuple()} |
    {error, any()} |
    {error, update_api_mapping_errors(), tuple()}.
update_api_mapping(Client, ApiMappingId, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), "/apimappings/", aws_util:encode_uri(ApiMappingId), ""],
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

%% @doc Updates an Authorizer.
-spec update_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), update_authorizer_request()) ->
    {ok, update_authorizer_response(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, ApiId, AuthorizerId, Input) ->
    update_authorizer(Client, ApiId, AuthorizerId, Input, []).

-spec update_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), update_authorizer_request(), proplists:proplist()) ->
    {ok, update_authorizer_response(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, ApiId, AuthorizerId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
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

%% @doc Updates a Deployment.
-spec update_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), update_deployment_request()) ->
    {ok, update_deployment_response(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, ApiId, DeploymentId, Input) ->
    update_deployment(Client, ApiId, DeploymentId, Input, []).

-spec update_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), update_deployment_request(), proplists:proplist()) ->
    {ok, update_deployment_response(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, ApiId, DeploymentId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
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

%% @doc Updates a domain name.
-spec update_domain_name(aws_client:aws_client(), binary() | list(), update_domain_name_request()) ->
    {ok, update_domain_name_response(), tuple()} |
    {error, any()} |
    {error, update_domain_name_errors(), tuple()}.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).

-spec update_domain_name(aws_client:aws_client(), binary() | list(), update_domain_name_request(), proplists:proplist()) ->
    {ok, update_domain_name_response(), tuple()} |
    {error, any()} |
    {error, update_domain_name_errors(), tuple()}.
update_domain_name(Client, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domainnames/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Updates an Integration.
-spec update_integration(aws_client:aws_client(), binary() | list(), binary() | list(), update_integration_request()) ->
    {ok, update_integration_result(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, ApiId, IntegrationId, Input) ->
    update_integration(Client, ApiId, IntegrationId, Input, []).

-spec update_integration(aws_client:aws_client(), binary() | list(), binary() | list(), update_integration_request(), proplists:proplist()) ->
    {ok, update_integration_result(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, ApiId, IntegrationId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), ""],
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

%% @doc Updates an IntegrationResponses.
-spec update_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_integration_response_request()) ->
    {ok, update_integration_response_response(), tuple()} |
    {error, any()} |
    {error, update_integration_response_errors(), tuple()}.
update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input) ->
    update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input, []).

-spec update_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_integration_response_request(), proplists:proplist()) ->
    {ok, update_integration_response_response(), tuple()} |
    {error, any()} |
    {error, update_integration_response_errors(), tuple()}.
update_integration_response(Client, ApiId, IntegrationId, IntegrationResponseId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/integrations/", aws_util:encode_uri(IntegrationId), "/integrationresponses/", aws_util:encode_uri(IntegrationResponseId), ""],
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

%% @doc Updates a Model.
-spec update_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_model_request()) ->
    {ok, update_model_response(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, ApiId, ModelId, Input) ->
    update_model(Client, ApiId, ModelId, Input, []).

-spec update_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_model_request(), proplists:proplist()) ->
    {ok, update_model_response(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, ApiId, ModelId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/models/", aws_util:encode_uri(ModelId), ""],
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

%% @doc Updates a Route.
-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), update_route_request()) ->
    {ok, update_route_result(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, ApiId, RouteId, Input) ->
    update_route(Client, ApiId, RouteId, Input, []).

-spec update_route(aws_client:aws_client(), binary() | list(), binary() | list(), update_route_request(), proplists:proplist()) ->
    {ok, update_route_result(), tuple()} |
    {error, any()} |
    {error, update_route_errors(), tuple()}.
update_route(Client, ApiId, RouteId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), ""],
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

%% @doc Updates a RouteResponse.
-spec update_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_response_request()) ->
    {ok, update_route_response_response(), tuple()} |
    {error, any()} |
    {error, update_route_response_errors(), tuple()}.
update_route_response(Client, ApiId, RouteId, RouteResponseId, Input) ->
    update_route_response(Client, ApiId, RouteId, RouteResponseId, Input, []).

-spec update_route_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_route_response_request(), proplists:proplist()) ->
    {ok, update_route_response_response(), tuple()} |
    {error, any()} |
    {error, update_route_response_errors(), tuple()}.
update_route_response(Client, ApiId, RouteId, RouteResponseId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/routes/", aws_util:encode_uri(RouteId), "/routeresponses/", aws_util:encode_uri(RouteResponseId), ""],
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

%% @doc Updates a Stage.
-spec update_stage(aws_client:aws_client(), binary() | list(), binary() | list(), update_stage_request()) ->
    {ok, update_stage_response(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, ApiId, StageName, Input) ->
    update_stage(Client, ApiId, StageName, Input, []).

-spec update_stage(aws_client:aws_client(), binary() | list(), binary() | list(), update_stage_request(), proplists:proplist()) ->
    {ok, update_stage_response(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, ApiId, StageName, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/stages/", aws_util:encode_uri(StageName), ""],
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

%% @doc Updates a VPC link.
-spec update_vpc_link(aws_client:aws_client(), binary() | list(), update_vpc_link_request()) ->
    {ok, update_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_link_errors(), tuple()}.
update_vpc_link(Client, VpcLinkId, Input) ->
    update_vpc_link(Client, VpcLinkId, Input, []).

-spec update_vpc_link(aws_client:aws_client(), binary() | list(), update_vpc_link_request(), proplists:proplist()) ->
    {ok, update_vpc_link_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_link_errors(), tuple()}.
update_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
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
    Client1 = Client#{service => <<"apigateway">>},
    Host = build_host(<<"apigateway">>, Client1),
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
