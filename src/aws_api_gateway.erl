%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon API Gateway
%%
%% Amazon API Gateway helps developers deliver robust, secure, and scalable
%% mobile and web application back ends.
%%
%% API Gateway allows developers to securely connect mobile and web
%% applications to APIs that run on Lambda, Amazon EC2, or other publicly
%% addressable web services that are hosted outside of AWS.
-module(aws_api_gateway).

-export([create_api_key/2,
         create_api_key/3,
         create_authorizer/3,
         create_authorizer/4,
         create_base_path_mapping/3,
         create_base_path_mapping/4,
         create_deployment/3,
         create_deployment/4,
         create_documentation_part/3,
         create_documentation_part/4,
         create_documentation_version/3,
         create_documentation_version/4,
         create_domain_name/2,
         create_domain_name/3,
         create_domain_name_access_association/2,
         create_domain_name_access_association/3,
         create_model/3,
         create_model/4,
         create_request_validator/3,
         create_request_validator/4,
         create_resource/4,
         create_resource/5,
         create_rest_api/2,
         create_rest_api/3,
         create_stage/3,
         create_stage/4,
         create_usage_plan/2,
         create_usage_plan/3,
         create_usage_plan_key/3,
         create_usage_plan_key/4,
         create_vpc_link/2,
         create_vpc_link/3,
         delete_api_key/3,
         delete_api_key/4,
         delete_authorizer/4,
         delete_authorizer/5,
         delete_base_path_mapping/4,
         delete_base_path_mapping/5,
         delete_client_certificate/3,
         delete_client_certificate/4,
         delete_deployment/4,
         delete_deployment/5,
         delete_documentation_part/4,
         delete_documentation_part/5,
         delete_documentation_version/4,
         delete_documentation_version/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_domain_name_access_association/3,
         delete_domain_name_access_association/4,
         delete_gateway_response/4,
         delete_gateway_response/5,
         delete_integration/5,
         delete_integration/6,
         delete_integration_response/6,
         delete_integration_response/7,
         delete_method/5,
         delete_method/6,
         delete_method_response/6,
         delete_method_response/7,
         delete_model/4,
         delete_model/5,
         delete_request_validator/4,
         delete_request_validator/5,
         delete_resource/4,
         delete_resource/5,
         delete_rest_api/3,
         delete_rest_api/4,
         delete_stage/4,
         delete_stage/5,
         delete_usage_plan/3,
         delete_usage_plan/4,
         delete_usage_plan_key/4,
         delete_usage_plan_key/5,
         delete_vpc_link/3,
         delete_vpc_link/4,
         flush_stage_authorizers_cache/4,
         flush_stage_authorizers_cache/5,
         flush_stage_cache/4,
         flush_stage_cache/5,
         generate_client_certificate/2,
         generate_client_certificate/3,
         get_account/1,
         get_account/3,
         get_account/4,
         get_api_key/2,
         get_api_key/4,
         get_api_key/5,
         get_api_keys/1,
         get_api_keys/3,
         get_api_keys/4,
         get_authorizer/3,
         get_authorizer/5,
         get_authorizer/6,
         get_authorizers/2,
         get_authorizers/4,
         get_authorizers/5,
         get_base_path_mapping/3,
         get_base_path_mapping/5,
         get_base_path_mapping/6,
         get_base_path_mappings/2,
         get_base_path_mappings/4,
         get_base_path_mappings/5,
         get_client_certificate/2,
         get_client_certificate/4,
         get_client_certificate/5,
         get_client_certificates/1,
         get_client_certificates/3,
         get_client_certificates/4,
         get_deployment/3,
         get_deployment/5,
         get_deployment/6,
         get_deployments/2,
         get_deployments/4,
         get_deployments/5,
         get_documentation_part/3,
         get_documentation_part/5,
         get_documentation_part/6,
         get_documentation_parts/2,
         get_documentation_parts/4,
         get_documentation_parts/5,
         get_documentation_version/3,
         get_documentation_version/5,
         get_documentation_version/6,
         get_documentation_versions/2,
         get_documentation_versions/4,
         get_documentation_versions/5,
         get_domain_name/2,
         get_domain_name/4,
         get_domain_name/5,
         get_domain_name_access_associations/1,
         get_domain_name_access_associations/3,
         get_domain_name_access_associations/4,
         get_domain_names/1,
         get_domain_names/3,
         get_domain_names/4,
         get_export/4,
         get_export/6,
         get_export/7,
         get_gateway_response/3,
         get_gateway_response/5,
         get_gateway_response/6,
         get_gateway_responses/2,
         get_gateway_responses/4,
         get_gateway_responses/5,
         get_integration/4,
         get_integration/6,
         get_integration/7,
         get_integration_response/5,
         get_integration_response/7,
         get_integration_response/8,
         get_method/4,
         get_method/6,
         get_method/7,
         get_method_response/5,
         get_method_response/7,
         get_method_response/8,
         get_model/3,
         get_model/5,
         get_model/6,
         get_model_template/3,
         get_model_template/5,
         get_model_template/6,
         get_models/2,
         get_models/4,
         get_models/5,
         get_request_validator/3,
         get_request_validator/5,
         get_request_validator/6,
         get_request_validators/2,
         get_request_validators/4,
         get_request_validators/5,
         get_resource/3,
         get_resource/5,
         get_resource/6,
         get_resources/2,
         get_resources/4,
         get_resources/5,
         get_rest_api/2,
         get_rest_api/4,
         get_rest_api/5,
         get_rest_apis/1,
         get_rest_apis/3,
         get_rest_apis/4,
         get_sdk/4,
         get_sdk/6,
         get_sdk/7,
         get_sdk_type/2,
         get_sdk_type/4,
         get_sdk_type/5,
         get_sdk_types/1,
         get_sdk_types/3,
         get_sdk_types/4,
         get_stage/3,
         get_stage/5,
         get_stage/6,
         get_stages/2,
         get_stages/4,
         get_stages/5,
         get_tags/2,
         get_tags/4,
         get_tags/5,
         get_usage/4,
         get_usage/6,
         get_usage/7,
         get_usage_plan/2,
         get_usage_plan/4,
         get_usage_plan/5,
         get_usage_plan_key/3,
         get_usage_plan_key/5,
         get_usage_plan_key/6,
         get_usage_plan_keys/2,
         get_usage_plan_keys/4,
         get_usage_plan_keys/5,
         get_usage_plans/1,
         get_usage_plans/3,
         get_usage_plans/4,
         get_vpc_link/2,
         get_vpc_link/4,
         get_vpc_link/5,
         get_vpc_links/1,
         get_vpc_links/3,
         get_vpc_links/4,
         import_api_keys/2,
         import_api_keys/3,
         import_documentation_parts/3,
         import_documentation_parts/4,
         import_rest_api/2,
         import_rest_api/3,
         put_gateway_response/4,
         put_gateway_response/5,
         put_integration/5,
         put_integration/6,
         put_integration_response/6,
         put_integration_response/7,
         put_method/5,
         put_method/6,
         put_method_response/6,
         put_method_response/7,
         put_rest_api/3,
         put_rest_api/4,
         reject_domain_name_access_association/2,
         reject_domain_name_access_association/3,
         tag_resource/3,
         tag_resource/4,
         test_invoke_authorizer/4,
         test_invoke_authorizer/5,
         test_invoke_method/5,
         test_invoke_method/6,
         untag_resource/3,
         untag_resource/4,
         update_account/2,
         update_account/3,
         update_api_key/3,
         update_api_key/4,
         update_authorizer/4,
         update_authorizer/5,
         update_base_path_mapping/4,
         update_base_path_mapping/5,
         update_client_certificate/3,
         update_client_certificate/4,
         update_deployment/4,
         update_deployment/5,
         update_documentation_part/4,
         update_documentation_part/5,
         update_documentation_version/4,
         update_documentation_version/5,
         update_domain_name/3,
         update_domain_name/4,
         update_gateway_response/4,
         update_gateway_response/5,
         update_integration/5,
         update_integration/6,
         update_integration_response/6,
         update_integration_response/7,
         update_method/5,
         update_method/6,
         update_method_response/6,
         update_method_response/7,
         update_model/4,
         update_model/5,
         update_request_validator/4,
         update_request_validator/5,
         update_resource/4,
         update_resource/5,
         update_rest_api/3,
         update_rest_api/4,
         update_stage/4,
         update_stage/5,
         update_usage/4,
         update_usage/5,
         update_usage_plan/3,
         update_usage_plan/4,
         update_vpc_link/3,
         update_vpc_link/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_stage_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_stage_request() :: #{binary() => any()}.


%% Example:
%% api_key_ids() :: #{
%%   <<"ids">> => list(string()),
%%   <<"warnings">> => list(string())
%% }
-type api_key_ids() :: #{binary() => any()}.


%% Example:
%% endpoint_configuration() :: #{
%%   <<"ipAddressType">> => list(any()),
%%   <<"types">> => list(list(any())()),
%%   <<"vpcEndpointIds">> => list(string())
%% }
-type endpoint_configuration() :: #{binary() => any()}.


%% Example:
%% import_api_keys_request() :: #{
%%   <<"body">> := binary(),
%%   <<"failOnWarnings">> => boolean(),
%%   <<"format">> := list(any())
%% }
-type import_api_keys_request() :: #{binary() => any()}.


%% Example:
%% get_stages_request() :: #{
%%   <<"deploymentId">> => string()
%% }
-type get_stages_request() :: #{binary() => any()}.


%% Example:
%% get_sdk_types_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_sdk_types_request() :: #{binary() => any()}.


%% Example:
%% canary_settings() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"percentTraffic">> => float(),
%%   <<"stageVariableOverrides">> => map(),
%%   <<"useStageCache">> => boolean()
%% }
-type canary_settings() :: #{binary() => any()}.


%% Example:
%% method_setting() :: #{
%%   <<"cacheDataEncrypted">> => boolean(),
%%   <<"cacheTtlInSeconds">> => integer(),
%%   <<"cachingEnabled">> => boolean(),
%%   <<"dataTraceEnabled">> => boolean(),
%%   <<"loggingLevel">> => string(),
%%   <<"metricsEnabled">> => boolean(),
%%   <<"requireAuthorizationForCacheControl">> => boolean(),
%%   <<"throttlingBurstLimit">> => integer(),
%%   <<"throttlingRateLimit">> => float(),
%%   <<"unauthorizedCacheControlHeaderStrategy">> => list(any())
%% }
-type method_setting() :: #{binary() => any()}.


%% Example:
%% stage() :: #{
%%   <<"accessLogSettings">> => access_log_settings(),
%%   <<"cacheClusterEnabled">> => boolean(),
%%   <<"cacheClusterSize">> => list(any()),
%%   <<"cacheClusterStatus">> => list(any()),
%%   <<"canarySettings">> => canary_settings(),
%%   <<"clientCertificateId">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"description">> => string(),
%%   <<"documentationVersion">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"methodSettings">> => map(),
%%   <<"stageName">> => string(),
%%   <<"tags">> => map(),
%%   <<"tracingEnabled">> => boolean(),
%%   <<"variables">> => map(),
%%   <<"webAclArn">> => string()
%% }
-type stage() :: #{binary() => any()}.


%% Example:
%% get_deployments_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_deployments_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% authorizer() :: #{
%%   <<"authType">> => string(),
%%   <<"authorizerCredentials">> => string(),
%%   <<"authorizerResultTtlInSeconds">> => integer(),
%%   <<"authorizerUri">> => string(),
%%   <<"id">> => string(),
%%   <<"identitySource">> => string(),
%%   <<"identityValidationExpression">> => string(),
%%   <<"name">> => string(),
%%   <<"providerARNs">> => list(string()),
%%   <<"type">> => list(any())
%% }
-type authorizer() :: #{binary() => any()}.


%% Example:
%% get_usage_request() :: #{
%%   <<"endDate">> := string(),
%%   <<"keyId">> => string(),
%%   <<"limit">> => integer(),
%%   <<"position">> => string(),
%%   <<"startDate">> := string()
%% }
-type get_usage_request() :: #{binary() => any()}.


%% Example:
%% sdk_response() :: #{
%%   <<"body">> => binary(),
%%   <<"contentDisposition">> => string(),
%%   <<"contentType">> => string()
%% }
-type sdk_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% export_response() :: #{
%%   <<"body">> => binary(),
%%   <<"contentDisposition">> => string(),
%%   <<"contentType">> => string()
%% }
-type export_response() :: #{binary() => any()}.


%% Example:
%% get_tags_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_tags_request() :: #{binary() => any()}.


%% Example:
%% throttle_settings() :: #{
%%   <<"burstLimit">> => integer(),
%%   <<"rateLimit">> => float()
%% }
-type throttle_settings() :: #{binary() => any()}.

%% Example:
%% delete_resource_request() :: #{}
-type delete_resource_request() :: #{}.


%% Example:
%% update_resource_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_resource_request() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"apiSummary">> => map(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string()
%% }
-type deployment() :: #{binary() => any()}.


%% Example:
%% integration() :: #{
%%   <<"cacheKeyParameters">> => list(string()),
%%   <<"cacheNamespace">> => string(),
%%   <<"connectionId">> => string(),
%%   <<"connectionType">> => list(any()),
%%   <<"contentHandling">> => list(any()),
%%   <<"credentials">> => string(),
%%   <<"httpMethod">> => string(),
%%   <<"integrationResponses">> => map(),
%%   <<"passthroughBehavior">> => string(),
%%   <<"requestParameters">> => map(),
%%   <<"requestTemplates">> => map(),
%%   <<"timeoutInMillis">> => integer(),
%%   <<"tlsConfig">> => tls_config(),
%%   <<"type">> => list(any()),
%%   <<"uri">> => string()
%% }
-type integration() :: #{binary() => any()}.

%% Example:
%% delete_client_certificate_request() :: #{}
-type delete_client_certificate_request() :: #{}.

%% Example:
%% get_usage_plan_key_request() :: #{}
-type get_usage_plan_key_request() :: #{}.

%% Example:
%% delete_documentation_part_request() :: #{}
-type delete_documentation_part_request() :: #{}.


%% Example:
%% get_documentation_parts_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"locationStatus">> => list(any()),
%%   <<"nameQuery">> => string(),
%%   <<"path">> => string(),
%%   <<"position">> => string(),
%%   <<"type">> => list(any())
%% }
-type get_documentation_parts_request() :: #{binary() => any()}.

%% Example:
%% get_method_response_request() :: #{}
-type get_method_response_request() :: #{}.


%% Example:
%% test_invoke_authorizer_request() :: #{
%%   <<"additionalContext">> => map(),
%%   <<"body">> => string(),
%%   <<"headers">> => map(),
%%   <<"multiValueHeaders">> => map(),
%%   <<"pathWithQueryString">> => string(),
%%   <<"stageVariables">> => map()
%% }
-type test_invoke_authorizer_request() :: #{binary() => any()}.


%% Example:
%% update_client_certificate_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_client_certificate_request() :: #{binary() => any()}.

%% Example:
%% delete_integration_response_request() :: #{}
-type delete_integration_response_request() :: #{}.


%% Example:
%% patch_operation() :: #{
%%   <<"from">> => string(),
%%   <<"op">> => list(any()),
%%   <<"path">> => string(),
%%   <<"value">> => string()
%% }
-type patch_operation() :: #{binary() => any()}.


%% Example:
%% mutual_tls_authentication() :: #{
%%   <<"truststoreUri">> => string(),
%%   <<"truststoreVersion">> => string(),
%%   <<"truststoreWarnings">> => list(string())
%% }
-type mutual_tls_authentication() :: #{binary() => any()}.


%% Example:
%% base_path_mapping() :: #{
%%   <<"basePath">> => string(),
%%   <<"restApiId">> => string(),
%%   <<"stage">> => string()
%% }
-type base_path_mapping() :: #{binary() => any()}.


%% Example:
%% create_documentation_version_request() :: #{
%%   <<"description">> => string(),
%%   <<"documentationVersion">> := string(),
%%   <<"stageName">> => string()
%% }
-type create_documentation_version_request() :: #{binary() => any()}.


%% Example:
%% gateway_response() :: #{
%%   <<"defaultResponse">> => boolean(),
%%   <<"responseParameters">> => map(),
%%   <<"responseTemplates">> => map(),
%%   <<"responseType">> => list(any()),
%%   <<"statusCode">> => string()
%% }
-type gateway_response() :: #{binary() => any()}.


%% Example:
%% import_rest_api_request() :: #{
%%   <<"body">> := binary(),
%%   <<"failOnWarnings">> => boolean(),
%%   <<"parameters">> => map()
%% }
-type import_rest_api_request() :: #{binary() => any()}.


%% Example:
%% documentation_versions() :: #{
%%   <<"items">> => list(documentation_version()),
%%   <<"position">> => string()
%% }
-type documentation_versions() :: #{binary() => any()}.


%% Example:
%% update_api_key_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_api_key_request() :: #{binary() => any()}.


%% Example:
%% vpc_links() :: #{
%%   <<"items">> => list(vpc_link()),
%%   <<"position">> => string()
%% }
-type vpc_links() :: #{binary() => any()}.

%% Example:
%% get_usage_plan_request() :: #{}
-type get_usage_plan_request() :: #{}.


%% Example:
%% usage_plans() :: #{
%%   <<"items">> => list(usage_plan()),
%%   <<"position">> => string()
%% }
-type usage_plans() :: #{binary() => any()}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"cacheClusterEnabled">> => boolean(),
%%   <<"cacheClusterSize">> => list(any()),
%%   <<"canarySettings">> => deployment_canary_settings(),
%%   <<"description">> => string(),
%%   <<"stageDescription">> => string(),
%%   <<"stageName">> => string(),
%%   <<"tracingEnabled">> => boolean(),
%%   <<"variables">> => map()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% get_base_path_mapping_request() :: #{
%%   <<"domainNameId">> => string()
%% }
-type get_base_path_mapping_request() :: #{binary() => any()}.


%% Example:
%% create_model_request() :: #{
%%   <<"contentType">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"schema">> => string()
%% }
-type create_model_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_name_access_association_request() :: #{}
-type delete_domain_name_access_association_request() :: #{}.


%% Example:
%% put_integration_request() :: #{
%%   <<"cacheKeyParameters">> => list(string()),
%%   <<"cacheNamespace">> => string(),
%%   <<"connectionId">> => string(),
%%   <<"connectionType">> => list(any()),
%%   <<"contentHandling">> => list(any()),
%%   <<"credentials">> => string(),
%%   <<"integrationHttpMethod">> => string(),
%%   <<"passthroughBehavior">> => string(),
%%   <<"requestParameters">> => map(),
%%   <<"requestTemplates">> => map(),
%%   <<"timeoutInMillis">> => integer(),
%%   <<"tlsConfig">> => tls_config(),
%%   <<"type">> := list(any()),
%%   <<"uri">> => string()
%% }
-type put_integration_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_response_request() :: #{}
-type get_gateway_response_request() :: #{}.


%% Example:
%% update_request_validator_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_request_validator_request() :: #{binary() => any()}.


%% Example:
%% update_model_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_model_request() :: #{binary() => any()}.


%% Example:
%% create_domain_name_request() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateBody">> => string(),
%%   <<"certificateChain">> => string(),
%%   <<"certificateName">> => string(),
%%   <<"certificatePrivateKey">> => string(),
%%   <<"domainName">> := string(),
%%   <<"endpointConfiguration">> => endpoint_configuration(),
%%   <<"mutualTlsAuthentication">> => mutual_tls_authentication_input(),
%%   <<"ownershipVerificationCertificateArn">> => string(),
%%   <<"policy">> => string(),
%%   <<"regionalCertificateArn">> => string(),
%%   <<"regionalCertificateName">> => string(),
%%   <<"routingMode">> => list(any()),
%%   <<"securityPolicy">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_domain_name_request() :: #{binary() => any()}.


%% Example:
%% update_base_path_mapping_request() :: #{
%%   <<"domainNameId">> => string(),
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_base_path_mapping_request() :: #{binary() => any()}.


%% Example:
%% usage_plan_keys() :: #{
%%   <<"items">> => list(usage_plan_key()),
%%   <<"position">> => string()
%% }
-type usage_plan_keys() :: #{binary() => any()}.


%% Example:
%% sdk_type() :: #{
%%   <<"configurationProperties">> => list(sdk_configuration_property()),
%%   <<"description">> => string(),
%%   <<"friendlyName">> => string(),
%%   <<"id">> => string()
%% }
-type sdk_type() :: #{binary() => any()}.


%% Example:
%% vpc_link() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => map(),
%%   <<"targetArns">> => list(string())
%% }
-type vpc_link() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_documentation_part_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_documentation_part_request() :: #{binary() => any()}.


%% Example:
%% domain_name_access_association() :: #{
%%   <<"accessAssociationSource">> => string(),
%%   <<"accessAssociationSourceType">> => list(any()),
%%   <<"domainNameAccessAssociationArn">> => string(),
%%   <<"domainNameArn">> => string(),
%%   <<"tags">> => map()
%% }
-type domain_name_access_association() :: #{binary() => any()}.

%% Example:
%% get_model_template_request() :: #{}
-type get_model_template_request() :: #{}.

%% Example:
%% delete_authorizer_request() :: #{}
-type delete_authorizer_request() :: #{}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% delete_request_validator_request() :: #{}
-type delete_request_validator_request() :: #{}.


%% Example:
%% create_authorizer_request() :: #{
%%   <<"authType">> => string(),
%%   <<"authorizerCredentials">> => string(),
%%   <<"authorizerResultTtlInSeconds">> => integer(),
%%   <<"authorizerUri">> => string(),
%%   <<"identitySource">> => string(),
%%   <<"identityValidationExpression">> => string(),
%%   <<"name">> := string(),
%%   <<"providerARNs">> => list(string()),
%%   <<"type">> := list(any())
%% }
-type create_authorizer_request() :: #{binary() => any()}.

%% Example:
%% get_stage_request() :: #{}
-type get_stage_request() :: #{}.

%% Example:
%% get_authorizer_request() :: #{}
-type get_authorizer_request() :: #{}.


%% Example:
%% stages() :: #{
%%   <<"item">> => list(stage())
%% }
-type stages() :: #{binary() => any()}.


%% Example:
%% get_usage_plan_keys_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nameQuery">> => string(),
%%   <<"position">> => string()
%% }
-type get_usage_plan_keys_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_response_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_gateway_response_request() :: #{binary() => any()}.


%% Example:
%% usage() :: #{
%%   <<"endDate">> => string(),
%%   <<"items">> => map(),
%%   <<"position">> => string(),
%%   <<"startDate">> => string(),
%%   <<"usagePlanId">> => string()
%% }
-type usage() :: #{binary() => any()}.


%% Example:
%% gateway_responses() :: #{
%%   <<"items">> => list(gateway_response()),
%%   <<"position">> => string()
%% }
-type gateway_responses() :: #{binary() => any()}.


%% Example:
%% stage_key() :: #{
%%   <<"restApiId">> => string(),
%%   <<"stageName">> => string()
%% }
-type stage_key() :: #{binary() => any()}.


%% Example:
%% update_method_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_method_request() :: #{binary() => any()}.


%% Example:
%% client_certificates() :: #{
%%   <<"items">> => list(client_certificate()),
%%   <<"position">> => string()
%% }
-type client_certificates() :: #{binary() => any()}.

%% Example:
%% delete_usage_plan_key_request() :: #{}
-type delete_usage_plan_key_request() :: #{}.


%% Example:
%% domain_names() :: #{
%%   <<"items">> => list(domain_name()),
%%   <<"position">> => string()
%% }
-type domain_names() :: #{binary() => any()}.


%% Example:
%% resources() :: #{
%%   <<"items">> => list(resource()),
%%   <<"position">> => string()
%% }
-type resources() :: #{binary() => any()}.

%% Example:
%% delete_stage_request() :: #{}
-type delete_stage_request() :: #{}.


%% Example:
%% get_authorizers_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_authorizers_request() :: #{binary() => any()}.

%% Example:
%% delete_rest_api_request() :: #{}
-type delete_rest_api_request() :: #{}.

%% Example:
%% delete_documentation_version_request() :: #{}
-type delete_documentation_version_request() :: #{}.


%% Example:
%% create_documentation_part_request() :: #{
%%   <<"location">> := documentation_part_location(),
%%   <<"properties">> := string()
%% }
-type create_documentation_part_request() :: #{binary() => any()}.


%% Example:
%% request_validator() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"validateRequestBody">> => boolean(),
%%   <<"validateRequestParameters">> => boolean()
%% }
-type request_validator() :: #{binary() => any()}.

%% Example:
%% get_method_request() :: #{}
-type get_method_request() :: #{}.


%% Example:
%% rest_api() :: #{
%%   <<"apiKeySource">> => list(any()),
%%   <<"binaryMediaTypes">> => list(string()),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"disableExecuteApiEndpoint">> => boolean(),
%%   <<"endpointConfiguration">> => endpoint_configuration(),
%%   <<"id">> => string(),
%%   <<"minimumCompressionSize">> => integer(),
%%   <<"name">> => string(),
%%   <<"policy">> => string(),
%%   <<"rootResourceId">> => string(),
%%   <<"tags">> => map(),
%%   <<"version">> => string(),
%%   <<"warnings">> => list(string())
%% }
-type rest_api() :: #{binary() => any()}.


%% Example:
%% get_client_certificates_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_client_certificates_request() :: #{binary() => any()}.


%% Example:
%% get_resources_request() :: #{
%%   <<"embed">> => list(string()),
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_resources_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_gateway_responses_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_gateway_responses_request() :: #{binary() => any()}.

%% Example:
%% delete_integration_request() :: #{}
-type delete_integration_request() :: #{}.


%% Example:
%% get_sdk_request() :: #{
%%   <<"parameters">> => map()
%% }
-type get_sdk_request() :: #{binary() => any()}.


%% Example:
%% import_documentation_parts_request() :: #{
%%   <<"body">> := binary(),
%%   <<"failOnWarnings">> => boolean(),
%%   <<"mode">> => list(any())
%% }
-type import_documentation_parts_request() :: #{binary() => any()}.


%% Example:
%% create_request_validator_request() :: #{
%%   <<"name">> => string(),
%%   <<"validateRequestBody">> => boolean(),
%%   <<"validateRequestParameters">> => boolean()
%% }
-type create_request_validator_request() :: #{binary() => any()}.


%% Example:
%% sdk_configuration_property() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"friendlyName">> => string(),
%%   <<"name">> => string(),
%%   <<"required">> => boolean()
%% }
-type sdk_configuration_property() :: #{binary() => any()}.


%% Example:
%% base_path_mappings() :: #{
%%   <<"items">> => list(base_path_mapping()),
%%   <<"position">> => string()
%% }
-type base_path_mappings() :: #{binary() => any()}.


%% Example:
%% get_deployment_request() :: #{
%%   <<"embed">> => list(string())
%% }
-type get_deployment_request() :: #{binary() => any()}.


%% Example:
%% create_vpc_link_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"targetArns">> := list(string())
%% }
-type create_vpc_link_request() :: #{binary() => any()}.


%% Example:
%% get_request_validators_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_request_validators_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% generate_client_certificate_request() :: #{
%%   <<"description">> => string(),
%%   <<"tags">> => map()
%% }
-type generate_client_certificate_request() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"apiKeyVersion">> => string(),
%%   <<"cloudwatchRoleArn">> => string(),
%%   <<"features">> => list(string()),
%%   <<"throttleSettings">> => throttle_settings()
%% }
-type account() :: #{binary() => any()}.

%% Example:
%% flush_stage_authorizers_cache_request() :: #{}
-type flush_stage_authorizers_cache_request() :: #{}.


%% Example:
%% tags() :: #{
%%   <<"tags">> => map()
%% }
-type tags() :: #{binary() => any()}.


%% Example:
%% reject_domain_name_access_association_request() :: #{
%%   <<"domainNameAccessAssociationArn">> := string(),
%%   <<"domainNameArn">> := string()
%% }
-type reject_domain_name_access_association_request() :: #{binary() => any()}.


%% Example:
%% get_domain_names_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string(),
%%   <<"resourceOwner">> => list(any())
%% }
-type get_domain_names_request() :: #{binary() => any()}.


%% Example:
%% update_usage_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_usage_request() :: #{binary() => any()}.

%% Example:
%% get_integration_request() :: #{}
-type get_integration_request() :: #{}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% update_integration_response_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_integration_response_request() :: #{binary() => any()}.


%% Example:
%% documentation_part_location() :: #{
%%   <<"method">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => string(),
%%   <<"statusCode">> => string(),
%%   <<"type">> => list(any())
%% }
-type documentation_part_location() :: #{binary() => any()}.


%% Example:
%% update_rest_api_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_rest_api_request() :: #{binary() => any()}.


%% Example:
%% update_integration_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_integration_request() :: #{binary() => any()}.


%% Example:
%% put_method_request() :: #{
%%   <<"apiKeyRequired">> => boolean(),
%%   <<"authorizationScopes">> => list(string()),
%%   <<"authorizationType">> := string(),
%%   <<"authorizerId">> => string(),
%%   <<"operationName">> => string(),
%%   <<"requestModels">> => map(),
%%   <<"requestParameters">> => map(),
%%   <<"requestValidatorId">> => string()
%% }
-type put_method_request() :: #{binary() => any()}.


%% Example:
%% create_resource_request() :: #{
%%   <<"pathPart">> := string()
%% }
-type create_resource_request() :: #{binary() => any()}.


%% Example:
%% update_domain_name_request() :: #{
%%   <<"domainNameId">> => string(),
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_domain_name_request() :: #{binary() => any()}.


%% Example:
%% rest_apis() :: #{
%%   <<"items">> => list(rest_api()),
%%   <<"position">> => string()
%% }
-type rest_apis() :: #{binary() => any()}.


%% Example:
%% create_api_key_request() :: #{
%%   <<"customerId">> => string(),
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"generateDistinctId">> => boolean(),
%%   <<"name">> => string(),
%%   <<"stageKeys">> => list(stage_key()),
%%   <<"tags">> => map(),
%%   <<"value">> => string()
%% }
-type create_api_key_request() :: #{binary() => any()}.


%% Example:
%% update_account_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_account_request() :: #{binary() => any()}.


%% Example:
%% domain_name_access_associations() :: #{
%%   <<"items">> => list(domain_name_access_association()),
%%   <<"position">> => string()
%% }
-type domain_name_access_associations() :: #{binary() => any()}.


%% Example:
%% domain_name() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateName">> => string(),
%%   <<"certificateUploadDate">> => non_neg_integer(),
%%   <<"distributionDomainName">> => string(),
%%   <<"distributionHostedZoneId">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainNameArn">> => string(),
%%   <<"domainNameId">> => string(),
%%   <<"domainNameStatus">> => list(any()),
%%   <<"domainNameStatusMessage">> => string(),
%%   <<"endpointConfiguration">> => endpoint_configuration(),
%%   <<"managementPolicy">> => string(),
%%   <<"mutualTlsAuthentication">> => mutual_tls_authentication(),
%%   <<"ownershipVerificationCertificateArn">> => string(),
%%   <<"policy">> => string(),
%%   <<"regionalCertificateArn">> => string(),
%%   <<"regionalCertificateName">> => string(),
%%   <<"regionalDomainName">> => string(),
%%   <<"regionalHostedZoneId">> => string(),
%%   <<"routingMode">> => list(any()),
%%   <<"securityPolicy">> => list(any()),
%%   <<"tags">> => map()
%% }
-type domain_name() :: #{binary() => any()}.


%% Example:
%% create_stage_request() :: #{
%%   <<"cacheClusterEnabled">> => boolean(),
%%   <<"cacheClusterSize">> => list(any()),
%%   <<"canarySettings">> => canary_settings(),
%%   <<"deploymentId">> := string(),
%%   <<"description">> => string(),
%%   <<"documentationVersion">> => string(),
%%   <<"stageName">> := string(),
%%   <<"tags">> => map(),
%%   <<"tracingEnabled">> => boolean(),
%%   <<"variables">> => map()
%% }
-type create_stage_request() :: #{binary() => any()}.


%% Example:
%% update_method_response_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_method_response_request() :: #{binary() => any()}.

%% Example:
%% delete_deployment_request() :: #{}
-type delete_deployment_request() :: #{}.

%% Example:
%% delete_method_response_request() :: #{}
-type delete_method_response_request() :: #{}.


%% Example:
%% client_certificate() :: #{
%%   <<"clientCertificateId">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"pemEncodedCertificate">> => string(),
%%   <<"tags">> => map()
%% }
-type client_certificate() :: #{binary() => any()}.


%% Example:
%% get_api_keys_request() :: #{
%%   <<"customerId">> => string(),
%%   <<"includeValues">> => boolean(),
%%   <<"limit">> => integer(),
%%   <<"nameQuery">> => string(),
%%   <<"position">> => string()
%% }
-type get_api_keys_request() :: #{binary() => any()}.


%% Example:
%% mutual_tls_authentication_input() :: #{
%%   <<"truststoreUri">> => string(),
%%   <<"truststoreVersion">> => string()
%% }
-type mutual_tls_authentication_input() :: #{binary() => any()}.


%% Example:
%% get_resource_request() :: #{
%%   <<"embed">> => list(string())
%% }
-type get_resource_request() :: #{binary() => any()}.


%% Example:
%% deployment_canary_settings() :: #{
%%   <<"percentTraffic">> => float(),
%%   <<"stageVariableOverrides">> => map(),
%%   <<"useStageCache">> => boolean()
%% }
-type deployment_canary_settings() :: #{binary() => any()}.

%% Example:
%% delete_method_request() :: #{}
-type delete_method_request() :: #{}.


%% Example:
%% api_stage() :: #{
%%   <<"apiId">> => string(),
%%   <<"stage">> => string(),
%%   <<"throttle">> => map()
%% }
-type api_stage() :: #{binary() => any()}.


%% Example:
%% get_export_request() :: #{
%%   <<"accepts">> => string(),
%%   <<"parameters">> => map()
%% }
-type get_export_request() :: #{binary() => any()}.


%% Example:
%% get_domain_name_access_associations_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string(),
%%   <<"resourceOwner">> => list(any())
%% }
-type get_domain_name_access_associations_request() :: #{binary() => any()}.

%% Example:
%% delete_model_request() :: #{}
-type delete_model_request() :: #{}.


%% Example:
%% tls_config() :: #{
%%   <<"insecureSkipVerification">> => boolean()
%% }
-type tls_config() :: #{binary() => any()}.

%% Example:
%% get_documentation_part_request() :: #{}
-type get_documentation_part_request() :: #{}.


%% Example:
%% access_log_settings() :: #{
%%   <<"destinationArn">> => string(),
%%   <<"format">> => string()
%% }
-type access_log_settings() :: #{binary() => any()}.


%% Example:
%% documentation_version() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"version">> => string()
%% }
-type documentation_version() :: #{binary() => any()}.

%% Example:
%% get_integration_response_request() :: #{}
-type get_integration_response_request() :: #{}.

%% Example:
%% get_rest_api_request() :: #{}
-type get_rest_api_request() :: #{}.


%% Example:
%% api_keys() :: #{
%%   <<"items">> => list(api_key()),
%%   <<"position">> => string(),
%%   <<"warnings">> => list(string())
%% }
-type api_keys() :: #{binary() => any()}.


%% Example:
%% get_models_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_models_request() :: #{binary() => any()}.


%% Example:
%% create_base_path_mapping_request() :: #{
%%   <<"basePath">> => string(),
%%   <<"domainNameId">> => string(),
%%   <<"restApiId">> := string(),
%%   <<"stage">> => string()
%% }
-type create_base_path_mapping_request() :: #{binary() => any()}.


%% Example:
%% method_response() :: #{
%%   <<"responseModels">> => map(),
%%   <<"responseParameters">> => map(),
%%   <<"statusCode">> => string()
%% }
-type method_response() :: #{binary() => any()}.


%% Example:
%% update_vpc_link_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_vpc_link_request() :: #{binary() => any()}.

%% Example:
%% get_sdk_type_request() :: #{}
-type get_sdk_type_request() :: #{}.


%% Example:
%% usage_plan() :: #{
%%   <<"apiStages">> => list(api_stage()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"productCode">> => string(),
%%   <<"quota">> => quota_settings(),
%%   <<"tags">> => map(),
%%   <<"throttle">> => throttle_settings()
%% }
-type usage_plan() :: #{binary() => any()}.


%% Example:
%% get_domain_name_request() :: #{
%%   <<"domainNameId">> => string()
%% }
-type get_domain_name_request() :: #{binary() => any()}.


%% Example:
%% update_usage_plan_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_usage_plan_request() :: #{binary() => any()}.


%% Example:
%% sdk_types() :: #{
%%   <<"items">> => list(sdk_type())
%% }
-type sdk_types() :: #{binary() => any()}.


%% Example:
%% create_usage_plan_key_request() :: #{
%%   <<"keyId">> := string(),
%%   <<"keyType">> := string()
%% }
-type create_usage_plan_key_request() :: #{binary() => any()}.

%% Example:
%% delete_api_key_request() :: #{}
-type delete_api_key_request() :: #{}.


%% Example:
%% get_model_request() :: #{
%%   <<"flatten">> => boolean()
%% }
-type get_model_request() :: #{binary() => any()}.

%% Example:
%% get_documentation_version_request() :: #{}
-type get_documentation_version_request() :: #{}.


%% Example:
%% get_usage_plans_request() :: #{
%%   <<"keyId">> => string(),
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_usage_plans_request() :: #{binary() => any()}.


%% Example:
%% create_usage_plan_request() :: #{
%%   <<"apiStages">> => list(api_stage()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"quota">> => quota_settings(),
%%   <<"tags">> => map(),
%%   <<"throttle">> => throttle_settings()
%% }
-type create_usage_plan_request() :: #{binary() => any()}.


%% Example:
%% get_rest_apis_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_rest_apis_request() :: #{binary() => any()}.

%% Example:
%% get_client_certificate_request() :: #{}
-type get_client_certificate_request() :: #{}.


%% Example:
%% documentation_part() :: #{
%%   <<"id">> => string(),
%%   <<"location">> => documentation_part_location(),
%%   <<"properties">> => string()
%% }
-type documentation_part() :: #{binary() => any()}.


%% Example:
%% method_snapshot() :: #{
%%   <<"apiKeyRequired">> => boolean(),
%%   <<"authorizationType">> => string()
%% }
-type method_snapshot() :: #{binary() => any()}.


%% Example:
%% put_method_response_request() :: #{
%%   <<"responseModels">> => map(),
%%   <<"responseParameters">> => map()
%% }
-type put_method_response_request() :: #{binary() => any()}.


%% Example:
%% request_validators() :: #{
%%   <<"items">> => list(request_validator()),
%%   <<"position">> => string()
%% }
-type request_validators() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% models() :: #{
%%   <<"items">> => list(model()),
%%   <<"position">> => string()
%% }
-type models() :: #{binary() => any()}.


%% Example:
%% delete_base_path_mapping_request() :: #{
%%   <<"domainNameId">> => string()
%% }
-type delete_base_path_mapping_request() :: #{binary() => any()}.


%% Example:
%% delete_domain_name_request() :: #{
%%   <<"domainNameId">> => string()
%% }
-type delete_domain_name_request() :: #{binary() => any()}.


%% Example:
%% documentation_parts() :: #{
%%   <<"items">> => list(documentation_part()),
%%   <<"position">> => string()
%% }
-type documentation_parts() :: #{binary() => any()}.

%% Example:
%% get_vpc_link_request() :: #{}
-type get_vpc_link_request() :: #{}.


%% Example:
%% test_invoke_authorizer_response() :: #{
%%   <<"authorization">> => map(),
%%   <<"claims">> => map(),
%%   <<"clientStatus">> => integer(),
%%   <<"latency">> => float(),
%%   <<"log">> => string(),
%%   <<"policy">> => string(),
%%   <<"principalId">> => string()
%% }
-type test_invoke_authorizer_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% documentation_part_ids() :: #{
%%   <<"ids">> => list(string()),
%%   <<"warnings">> => list(string())
%% }
-type documentation_part_ids() :: #{binary() => any()}.

%% Example:
%% delete_usage_plan_request() :: #{}
-type delete_usage_plan_request() :: #{}.


%% Example:
%% method() :: #{
%%   <<"apiKeyRequired">> => boolean(),
%%   <<"authorizationScopes">> => list(string()),
%%   <<"authorizationType">> => string(),
%%   <<"authorizerId">> => string(),
%%   <<"httpMethod">> => string(),
%%   <<"methodIntegration">> => integration(),
%%   <<"methodResponses">> => map(),
%%   <<"operationName">> => string(),
%%   <<"requestModels">> => map(),
%%   <<"requestParameters">> => map(),
%%   <<"requestValidatorId">> => string()
%% }
-type method() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"value">> => string()
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% test_invoke_method_request() :: #{
%%   <<"body">> => string(),
%%   <<"clientCertificateId">> => string(),
%%   <<"headers">> => map(),
%%   <<"multiValueHeaders">> => map(),
%%   <<"pathWithQueryString">> => string(),
%%   <<"stageVariables">> => map()
%% }
-type test_invoke_method_request() :: #{binary() => any()}.


%% Example:
%% get_api_key_request() :: #{
%%   <<"includeValue">> => boolean()
%% }
-type get_api_key_request() :: #{binary() => any()}.


%% Example:
%% get_vpc_links_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_vpc_links_request() :: #{binary() => any()}.


%% Example:
%% authorizers() :: #{
%%   <<"items">> => list(authorizer()),
%%   <<"position">> => string()
%% }
-type authorizers() :: #{binary() => any()}.


%% Example:
%% get_base_path_mappings_request() :: #{
%%   <<"domainNameId">> => string(),
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_base_path_mappings_request() :: #{binary() => any()}.

%% Example:
%% get_request_validator_request() :: #{}
-type get_request_validator_request() :: #{}.


%% Example:
%% api_key() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"customerId">> => string(),
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"stageKeys">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"value">> => string()
%% }
-type api_key() :: #{binary() => any()}.


%% Example:
%% put_integration_response_request() :: #{
%%   <<"contentHandling">> => list(any()),
%%   <<"responseParameters">> => map(),
%%   <<"responseTemplates">> => map(),
%%   <<"selectionPattern">> => string()
%% }
-type put_integration_response_request() :: #{binary() => any()}.

%% Example:
%% get_account_request() :: #{}
-type get_account_request() :: #{}.


%% Example:
%% integration_response() :: #{
%%   <<"contentHandling">> => list(any()),
%%   <<"responseParameters">> => map(),
%%   <<"responseTemplates">> => map(),
%%   <<"selectionPattern">> => string(),
%%   <<"statusCode">> => string()
%% }
-type integration_response() :: #{binary() => any()}.


%% Example:
%% test_invoke_method_response() :: #{
%%   <<"body">> => string(),
%%   <<"headers">> => map(),
%%   <<"latency">> => float(),
%%   <<"log">> => string(),
%%   <<"multiValueHeaders">> => map(),
%%   <<"status">> => integer()
%% }
-type test_invoke_method_response() :: #{binary() => any()}.

%% Example:
%% flush_stage_cache_request() :: #{}
-type flush_stage_cache_request() :: #{}.


%% Example:
%% model() :: #{
%%   <<"contentType">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"schema">> => string()
%% }
-type model() :: #{binary() => any()}.


%% Example:
%% deployments() :: #{
%%   <<"items">> => list(deployment()),
%%   <<"position">> => string()
%% }
-type deployments() :: #{binary() => any()}.


%% Example:
%% update_documentation_version_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_documentation_version_request() :: #{binary() => any()}.


%% Example:
%% update_deployment_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_deployment_request() :: #{binary() => any()}.


%% Example:
%% put_rest_api_request() :: #{
%%   <<"body">> := binary(),
%%   <<"failOnWarnings">> => boolean(),
%%   <<"mode">> => list(any()),
%%   <<"parameters">> => map()
%% }
-type put_rest_api_request() :: #{binary() => any()}.


%% Example:
%% quota_settings() :: #{
%%   <<"limit">> => integer(),
%%   <<"offset">> => integer(),
%%   <<"period">> => list(any())
%% }
-type quota_settings() :: #{binary() => any()}.

%% Example:
%% delete_gateway_response_request() :: #{}
-type delete_gateway_response_request() :: #{}.


%% Example:
%% get_documentation_versions_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"position">> => string()
%% }
-type get_documentation_versions_request() :: #{binary() => any()}.


%% Example:
%% create_domain_name_access_association_request() :: #{
%%   <<"accessAssociationSource">> := string(),
%%   <<"accessAssociationSourceType">> := list(any()),
%%   <<"domainNameArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_domain_name_access_association_request() :: #{binary() => any()}.


%% Example:
%% usage_plan_key() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type usage_plan_key() :: #{binary() => any()}.

%% Example:
%% delete_vpc_link_request() :: #{}
-type delete_vpc_link_request() :: #{}.


%% Example:
%% update_authorizer_request() :: #{
%%   <<"patchOperations">> => list(patch_operation())
%% }
-type update_authorizer_request() :: #{binary() => any()}.


%% Example:
%% put_gateway_response_request() :: #{
%%   <<"responseParameters">> => map(),
%%   <<"responseTemplates">> => map(),
%%   <<"statusCode">> => string()
%% }
-type put_gateway_response_request() :: #{binary() => any()}.


%% Example:
%% create_rest_api_request() :: #{
%%   <<"apiKeySource">> => list(any()),
%%   <<"binaryMediaTypes">> => list(string()),
%%   <<"cloneFrom">> => string(),
%%   <<"description">> => string(),
%%   <<"disableExecuteApiEndpoint">> => boolean(),
%%   <<"endpointConfiguration">> => endpoint_configuration(),
%%   <<"minimumCompressionSize">> => integer(),
%%   <<"name">> := string(),
%%   <<"policy">> => string(),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type create_rest_api_request() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"id">> => string(),
%%   <<"parentId">> => string(),
%%   <<"path">> => string(),
%%   <<"pathPart">> => string(),
%%   <<"resourceMethods">> => map()
%% }
-type resource() :: #{binary() => any()}.

-type create_api_key_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_authorizer_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_base_path_mapping_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_deployment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_documentation_part_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_documentation_version_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_domain_name_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_domain_name_access_association_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_model_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_request_validator_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_rest_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_stage_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_usage_plan_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_usage_plan_key_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_vpc_link_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_api_key_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_authorizer_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_base_path_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_client_certificate_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_deployment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_documentation_part_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_documentation_version_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_domain_name_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_domain_name_access_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_gateway_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_integration_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_integration_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_method_errors() ::
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_method_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_model_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_request_validator_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_rest_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_stage_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_usage_plan_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_usage_plan_key_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_vpc_link_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type flush_stage_authorizers_cache_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type flush_stage_cache_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type generate_client_certificate_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_account_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_api_key_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_api_keys_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_authorizer_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_authorizers_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_base_path_mapping_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_base_path_mappings_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_client_certificate_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_client_certificates_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_deployment_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_deployments_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_documentation_part_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_documentation_parts_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_documentation_version_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_documentation_versions_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_domain_name_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_domain_name_access_associations_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_domain_names_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_export_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_gateway_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_gateway_responses_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_integration_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_integration_response_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_method_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_method_response_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_model_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_model_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_models_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_request_validator_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_request_validators_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_resource_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_resources_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_rest_api_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_rest_apis_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_sdk_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_sdk_type_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_sdk_types_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_stage_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_stages_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_tags_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_usage_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_usage_plan_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_usage_plan_key_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_usage_plan_keys_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_usage_plans_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_vpc_link_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type get_vpc_links_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type import_api_keys_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type import_documentation_parts_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type import_rest_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_gateway_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_integration_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_integration_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_method_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_method_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type put_rest_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type reject_domain_name_access_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type test_invoke_authorizer_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type test_invoke_method_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_account_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_api_key_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_authorizer_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_base_path_mapping_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_client_certificate_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_deployment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_documentation_part_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_documentation_version_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_domain_name_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_gateway_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_integration_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_integration_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_method_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_method_response_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_model_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_request_validator_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_rest_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_stage_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_usage_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_usage_plan_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_vpc_link_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create an ApiKey resource.
-spec create_api_key(aws_client:aws_client(), create_api_key_request()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, Input) ->
    create_api_key(Client, Input, []).

-spec create_api_key(aws_client:aws_client(), create_api_key_request(), proplists:proplist()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apikeys"],
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

%% @doc Adds a new Authorizer resource to an existing RestApi resource.
-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, RestApiId, Input) ->
    create_authorizer(Client, RestApiId, Input, []).

-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request(), proplists:proplist()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers"],
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

%% @doc Creates a new BasePathMapping resource.
-spec create_base_path_mapping(aws_client:aws_client(), binary() | list(), create_base_path_mapping_request()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, create_base_path_mapping_errors(), tuple()}.
create_base_path_mapping(Client, DomainName, Input) ->
    create_base_path_mapping(Client, DomainName, Input, []).

-spec create_base_path_mapping(aws_client:aws_client(), binary() | list(), create_base_path_mapping_request(), proplists:proplist()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, create_base_path_mapping_errors(), tuple()}.
create_base_path_mapping(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings"],
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
                     {<<"domainNameId">>, <<"domainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Deployment resource, which makes a specified RestApi
%% callable over the internet.
-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, RestApiId, Input) ->
    create_deployment(Client, RestApiId, Input, []).

-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments"],
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

%% @doc Creates a documentation part.
-spec create_documentation_part(aws_client:aws_client(), binary() | list(), create_documentation_part_request()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, create_documentation_part_errors(), tuple()}.
create_documentation_part(Client, RestApiId, Input) ->
    create_documentation_part(Client, RestApiId, Input, []).

-spec create_documentation_part(aws_client:aws_client(), binary() | list(), create_documentation_part_request(), proplists:proplist()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, create_documentation_part_errors(), tuple()}.
create_documentation_part(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
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

%% @doc Creates a documentation version
-spec create_documentation_version(aws_client:aws_client(), binary() | list(), create_documentation_version_request()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, create_documentation_version_errors(), tuple()}.
create_documentation_version(Client, RestApiId, Input) ->
    create_documentation_version(Client, RestApiId, Input, []).

-spec create_documentation_version(aws_client:aws_client(), binary() | list(), create_documentation_version_request(), proplists:proplist()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, create_documentation_version_errors(), tuple()}.
create_documentation_version(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions"],
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

%% @doc Creates a new domain name.
-spec create_domain_name(aws_client:aws_client(), create_domain_name_request()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, create_domain_name_errors(), tuple()}.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).

-spec create_domain_name(aws_client:aws_client(), create_domain_name_request(), proplists:proplist()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, create_domain_name_errors(), tuple()}.
create_domain_name(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domainnames"],
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

%% @doc Creates a domain name access association resource between an access
%% association source and a private custom
%% domain name.
-spec create_domain_name_access_association(aws_client:aws_client(), create_domain_name_access_association_request()) ->
    {ok, domain_name_access_association(), tuple()} |
    {error, any()} |
    {error, create_domain_name_access_association_errors(), tuple()}.
create_domain_name_access_association(Client, Input) ->
    create_domain_name_access_association(Client, Input, []).

-spec create_domain_name_access_association(aws_client:aws_client(), create_domain_name_access_association_request(), proplists:proplist()) ->
    {ok, domain_name_access_association(), tuple()} |
    {error, any()} |
    {error, create_domain_name_access_association_errors(), tuple()}.
create_domain_name_access_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domainnameaccessassociations"],
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

%% @doc Adds a new Model resource to an existing RestApi resource.
-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, RestApiId, Input) ->
    create_model(Client, RestApiId, Input, []).

-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request(), proplists:proplist()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models"],
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

%% @doc Creates a RequestValidator of a given RestApi.
-spec create_request_validator(aws_client:aws_client(), binary() | list(), create_request_validator_request()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, create_request_validator_errors(), tuple()}.
create_request_validator(Client, RestApiId, Input) ->
    create_request_validator(Client, RestApiId, Input, []).

-spec create_request_validator(aws_client:aws_client(), binary() | list(), create_request_validator_request(), proplists:proplist()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, create_request_validator_errors(), tuple()}.
create_request_validator(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators"],
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

%% @doc Creates a Resource resource.
-spec create_resource(aws_client:aws_client(), binary() | list(), binary() | list(), create_resource_request()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, ParentId, RestApiId, Input) ->
    create_resource(Client, ParentId, RestApiId, Input, []).

-spec create_resource(aws_client:aws_client(), binary() | list(), binary() | list(), create_resource_request(), proplists:proplist()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, ParentId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ParentId), ""],
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

%% @doc Creates a new RestApi resource.
-spec create_rest_api(aws_client:aws_client(), create_rest_api_request()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, create_rest_api_errors(), tuple()}.
create_rest_api(Client, Input) ->
    create_rest_api(Client, Input, []).

-spec create_rest_api(aws_client:aws_client(), create_rest_api_request(), proplists:proplist()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, create_rest_api_errors(), tuple()}.
create_rest_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restapis"],
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

%% @doc Creates a new Stage resource that references a pre-existing
%% Deployment for the API.
-spec create_stage(aws_client:aws_client(), binary() | list(), create_stage_request()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, RestApiId, Input) ->
    create_stage(Client, RestApiId, Input, []).

-spec create_stage(aws_client:aws_client(), binary() | list(), create_stage_request(), proplists:proplist()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages"],
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

%% @doc Creates a usage plan with the throttle and quota limits, as well as
%% the associated API stages, specified in the payload.
-spec create_usage_plan(aws_client:aws_client(), create_usage_plan_request()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, create_usage_plan_errors(), tuple()}.
create_usage_plan(Client, Input) ->
    create_usage_plan(Client, Input, []).

-spec create_usage_plan(aws_client:aws_client(), create_usage_plan_request(), proplists:proplist()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, create_usage_plan_errors(), tuple()}.
create_usage_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/usageplans"],
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

%% @doc Creates a usage plan key for adding an existing API key to a usage
%% plan.
-spec create_usage_plan_key(aws_client:aws_client(), binary() | list(), create_usage_plan_key_request()) ->
    {ok, usage_plan_key(), tuple()} |
    {error, any()} |
    {error, create_usage_plan_key_errors(), tuple()}.
create_usage_plan_key(Client, UsagePlanId, Input) ->
    create_usage_plan_key(Client, UsagePlanId, Input, []).

-spec create_usage_plan_key(aws_client:aws_client(), binary() | list(), create_usage_plan_key_request(), proplists:proplist()) ->
    {ok, usage_plan_key(), tuple()} |
    {error, any()} |
    {error, create_usage_plan_key_errors(), tuple()}.
create_usage_plan_key(Client, UsagePlanId, Input0, Options0) ->
    Method = post,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys"],
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

%% @doc Creates a VPC link, under the caller's account in a selected
%% region, in an asynchronous operation that typically takes 2-4 minutes to
%% complete and become operational.
%%
%% The caller must have permissions to create and update VPC Endpoint
%% services.
-spec create_vpc_link(aws_client:aws_client(), create_vpc_link_request()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, create_vpc_link_errors(), tuple()}.
create_vpc_link(Client, Input) ->
    create_vpc_link(Client, Input, []).

-spec create_vpc_link(aws_client:aws_client(), create_vpc_link_request(), proplists:proplist()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, create_vpc_link_errors(), tuple()}.
create_vpc_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vpclinks"],
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

%% @doc Deletes the ApiKey resource.
-spec delete_api_key(aws_client:aws_client(), binary() | list(), delete_api_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, ApiKey, Input) ->
    delete_api_key(Client, ApiKey, Input, []).

-spec delete_api_key(aws_client:aws_client(), binary() | list(), delete_api_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, ApiKey, Input0, Options0) ->
    Method = delete,
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
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

%% @doc Deletes an existing Authorizer resource.
-spec delete_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), delete_authorizer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    delete_authorizer(Client, AuthorizerId, RestApiId, Input, []).

-spec delete_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), delete_authorizer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
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

%% @doc Deletes the BasePathMapping resource.
-spec delete_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), delete_base_path_mapping_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_base_path_mapping_errors(), tuple()}.
delete_base_path_mapping(Client, BasePath, DomainName, Input) ->
    delete_base_path_mapping(Client, BasePath, DomainName, Input, []).

-spec delete_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), delete_base_path_mapping_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_base_path_mapping_errors(), tuple()}.
delete_base_path_mapping(Client, BasePath, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
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

    QueryMapping = [
                     {<<"domainNameId">>, <<"domainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the ClientCertificate resource.
-spec delete_client_certificate(aws_client:aws_client(), binary() | list(), delete_client_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_client_certificate_errors(), tuple()}.
delete_client_certificate(Client, ClientCertificateId, Input) ->
    delete_client_certificate(Client, ClientCertificateId, Input, []).

-spec delete_client_certificate(aws_client:aws_client(), binary() | list(), delete_client_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_client_certificate_errors(), tuple()}.
delete_client_certificate(Client, ClientCertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
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

%% @doc Deletes a Deployment resource.
%%
%% Deleting a deployment will only succeed if there are no Stage resources
%% associated with it.
-spec delete_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_deployment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentId, RestApiId, Input) ->
    delete_deployment(Client, DeploymentId, RestApiId, Input, []).

-spec delete_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_deployment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
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

%% @doc Deletes a documentation part
-spec delete_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), delete_documentation_part_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_documentation_part_errors(), tuple()}.
delete_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    delete_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).

-spec delete_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), delete_documentation_part_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_documentation_part_errors(), tuple()}.
delete_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
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

%% @doc Deletes a documentation version.
-spec delete_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_documentation_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_documentation_version_errors(), tuple()}.
delete_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    delete_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).

-spec delete_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_documentation_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_documentation_version_errors(), tuple()}.
delete_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
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

%% @doc Deletes the DomainName resource.
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
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
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

    QueryMapping = [
                     {<<"domainNameId">>, <<"domainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the DomainNameAccessAssociation resource.
%%
%% Only the AWS account that created the DomainNameAccessAssociation resource
%% can delete it. To stop an access association source in another AWS account
%% from accessing your private custom domain name, use the
%% RejectDomainNameAccessAssociation operation.
-spec delete_domain_name_access_association(aws_client:aws_client(), binary() | list(), delete_domain_name_access_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_name_access_association_errors(), tuple()}.
delete_domain_name_access_association(Client, DomainNameAccessAssociationArn, Input) ->
    delete_domain_name_access_association(Client, DomainNameAccessAssociationArn, Input, []).

-spec delete_domain_name_access_association(aws_client:aws_client(), binary() | list(), delete_domain_name_access_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_name_access_association_errors(), tuple()}.
delete_domain_name_access_association(Client, DomainNameAccessAssociationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/domainnameaccessassociations/", aws_util:encode_uri(DomainNameAccessAssociationArn), ""],
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

%% @doc Clears any customization of a GatewayResponse of a specified response
%% type on the given RestApi and resets it with the default settings.
-spec delete_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), delete_gateway_response_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_gateway_response_errors(), tuple()}.
delete_gateway_response(Client, ResponseType, RestApiId, Input) ->
    delete_gateway_response(Client, ResponseType, RestApiId, Input, []).

-spec delete_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), delete_gateway_response_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_gateway_response_errors(), tuple()}.
delete_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
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

%% @doc Represents a delete integration.
-spec delete_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_integration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec delete_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_integration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
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

%% @doc Represents a delete integration response.
-spec delete_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_integration_response_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_response_errors(), tuple()}.
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec delete_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_integration_response_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_response_errors(), tuple()}.
delete_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc Deletes an existing Method resource.
-spec delete_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_method_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_method_errors(), tuple()}.
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    delete_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec delete_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_method_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_method_errors(), tuple()}.
delete_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
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

%% @doc Deletes an existing MethodResponse resource.
-spec delete_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_method_response_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_method_response_errors(), tuple()}.
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec delete_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_method_response_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_method_response_errors(), tuple()}.
delete_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc Deletes a model.
-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ModelName, RestApiId, Input) ->
    delete_model(Client, ModelName, RestApiId, Input, []).

-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ModelName, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
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

%% @doc Deletes a RequestValidator of a given RestApi.
-spec delete_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), delete_request_validator_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_request_validator_errors(), tuple()}.
delete_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    delete_request_validator(Client, RequestValidatorId, RestApiId, Input, []).

-spec delete_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), delete_request_validator_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_request_validator_errors(), tuple()}.
delete_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
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

%% @doc Deletes a Resource resource.
-spec delete_resource(aws_client:aws_client(), binary() | list(), binary() | list(), delete_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, ResourceId, RestApiId, Input) ->
    delete_resource(Client, ResourceId, RestApiId, Input, []).

-spec delete_resource(aws_client:aws_client(), binary() | list(), binary() | list(), delete_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, ResourceId, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
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

%% @doc Deletes the specified API.
-spec delete_rest_api(aws_client:aws_client(), binary() | list(), delete_rest_api_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rest_api_errors(), tuple()}.
delete_rest_api(Client, RestApiId, Input) ->
    delete_rest_api(Client, RestApiId, Input, []).

-spec delete_rest_api(aws_client:aws_client(), binary() | list(), delete_rest_api_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rest_api_errors(), tuple()}.
delete_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
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

%% @doc Deletes a Stage resource.
-spec delete_stage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, RestApiId, StageName, Input) ->
    delete_stage(Client, RestApiId, StageName, Input, []).

-spec delete_stage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
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

%% @doc Deletes a usage plan of a given plan Id.
-spec delete_usage_plan(aws_client:aws_client(), binary() | list(), delete_usage_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_plan_errors(), tuple()}.
delete_usage_plan(Client, UsagePlanId, Input) ->
    delete_usage_plan(Client, UsagePlanId, Input, []).

-spec delete_usage_plan(aws_client:aws_client(), binary() | list(), delete_usage_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_plan_errors(), tuple()}.
delete_usage_plan(Client, UsagePlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
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

%% @doc Deletes a usage plan key and remove the underlying API key from the
%% associated usage plan.
-spec delete_usage_plan_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_usage_plan_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_plan_key_errors(), tuple()}.
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input) ->
    delete_usage_plan_key(Client, KeyId, UsagePlanId, Input, []).

-spec delete_usage_plan_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_usage_plan_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_plan_key_errors(), tuple()}.
delete_usage_plan_key(Client, KeyId, UsagePlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), ""],
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

%% @doc Deletes an existing VpcLink of a specified identifier.
-spec delete_vpc_link(aws_client:aws_client(), binary() | list(), delete_vpc_link_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vpc_link_errors(), tuple()}.
delete_vpc_link(Client, VpcLinkId, Input) ->
    delete_vpc_link(Client, VpcLinkId, Input, []).

-spec delete_vpc_link(aws_client:aws_client(), binary() | list(), delete_vpc_link_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vpc_link_errors(), tuple()}.
delete_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = delete,
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
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

%% @doc Flushes all authorizer cache entries on a stage.
-spec flush_stage_authorizers_cache(aws_client:aws_client(), binary() | list(), binary() | list(), flush_stage_authorizers_cache_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, flush_stage_authorizers_cache_errors(), tuple()}.
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_authorizers_cache(Client, RestApiId, StageName, Input, []).

-spec flush_stage_authorizers_cache(aws_client:aws_client(), binary() | list(), binary() | list(), flush_stage_authorizers_cache_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, flush_stage_authorizers_cache_errors(), tuple()}.
flush_stage_authorizers_cache(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/authorizers"],
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

%% @doc Flushes a stage's cache.
-spec flush_stage_cache(aws_client:aws_client(), binary() | list(), binary() | list(), flush_stage_cache_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, flush_stage_cache_errors(), tuple()}.
flush_stage_cache(Client, RestApiId, StageName, Input) ->
    flush_stage_cache(Client, RestApiId, StageName, Input, []).

-spec flush_stage_cache(aws_client:aws_client(), binary() | list(), binary() | list(), flush_stage_cache_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, flush_stage_cache_errors(), tuple()}.
flush_stage_cache(Client, RestApiId, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/cache/data"],
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

%% @doc Generates a ClientCertificate resource.
-spec generate_client_certificate(aws_client:aws_client(), generate_client_certificate_request()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, generate_client_certificate_errors(), tuple()}.
generate_client_certificate(Client, Input) ->
    generate_client_certificate(Client, Input, []).

-spec generate_client_certificate(aws_client:aws_client(), generate_client_certificate_request(), proplists:proplist()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, generate_client_certificate_errors(), tuple()}.
generate_client_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/clientcertificates"],
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

%% @doc Gets information about the current Account resource.
-spec get_account(aws_client:aws_client()) ->
    {ok, account(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, #{}, #{}).

-spec get_account(aws_client:aws_client(), map(), map()) ->
    {ok, account(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, QueryMap, HeadersMap, []).

-spec get_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, account(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current ApiKey resource.
-spec get_api_key(aws_client:aws_client(), binary() | list()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, get_api_key_errors(), tuple()}.
get_api_key(Client, ApiKey)
  when is_map(Client) ->
    get_api_key(Client, ApiKey, #{}, #{}).

-spec get_api_key(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, get_api_key_errors(), tuple()}.
get_api_key(Client, ApiKey, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_key(Client, ApiKey, QueryMap, HeadersMap, []).

-spec get_api_key(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, get_api_key_errors(), tuple()}.
get_api_key(Client, ApiKey, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeValue">>, maps:get(<<"includeValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current ApiKeys resource.
-spec get_api_keys(aws_client:aws_client()) ->
    {ok, api_keys(), tuple()} |
    {error, any()} |
    {error, get_api_keys_errors(), tuple()}.
get_api_keys(Client)
  when is_map(Client) ->
    get_api_keys(Client, #{}, #{}).

-spec get_api_keys(aws_client:aws_client(), map(), map()) ->
    {ok, api_keys(), tuple()} |
    {error, any()} |
    {error, get_api_keys_errors(), tuple()}.
get_api_keys(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_keys(Client, QueryMap, HeadersMap, []).

-spec get_api_keys(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, api_keys(), tuple()} |
    {error, any()} |
    {error, get_api_keys_errors(), tuple()}.
get_api_keys(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apikeys"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"customerId">>, maps:get(<<"customerId">>, QueryMap, undefined)},
        {<<"includeValues">>, maps:get(<<"includeValues">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing Authorizer resource.
-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, AuthorizerId, RestApiId)
  when is_map(Client) ->
    get_authorizer(Client, AuthorizerId, RestApiId, #{}, #{}).

-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap, []).

-spec get_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, get_authorizer_errors(), tuple()}.
get_authorizer(Client, AuthorizerId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing Authorizers resource.
-spec get_authorizers(aws_client:aws_client(), binary() | list()) ->
    {ok, authorizers(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, RestApiId)
  when is_map(Client) ->
    get_authorizers(Client, RestApiId, #{}, #{}).

-spec get_authorizers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, authorizers(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_authorizers(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_authorizers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, authorizers(), tuple()} |
    {error, any()} |
    {error, get_authorizers_errors(), tuple()}.
get_authorizers(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a BasePathMapping resource.
-spec get_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, get_base_path_mapping_errors(), tuple()}.
get_base_path_mapping(Client, BasePath, DomainName)
  when is_map(Client) ->
    get_base_path_mapping(Client, BasePath, DomainName, #{}, #{}).

-spec get_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, get_base_path_mapping_errors(), tuple()}.
get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap, []).

-spec get_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, get_base_path_mapping_errors(), tuple()}.
get_base_path_mapping(Client, BasePath, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
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

%% @doc Represents a collection of BasePathMapping resources.
-spec get_base_path_mappings(aws_client:aws_client(), binary() | list()) ->
    {ok, base_path_mappings(), tuple()} |
    {error, any()} |
    {error, get_base_path_mappings_errors(), tuple()}.
get_base_path_mappings(Client, DomainName)
  when is_map(Client) ->
    get_base_path_mappings(Client, DomainName, #{}, #{}).

-spec get_base_path_mappings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, base_path_mappings(), tuple()} |
    {error, any()} |
    {error, get_base_path_mappings_errors(), tuple()}.
get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_base_path_mappings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, base_path_mappings(), tuple()} |
    {error, any()} |
    {error, get_base_path_mappings_errors(), tuple()}.
get_base_path_mappings(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings"],
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
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the current ClientCertificate resource.
-spec get_client_certificate(aws_client:aws_client(), binary() | list()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, get_client_certificate_errors(), tuple()}.
get_client_certificate(Client, ClientCertificateId)
  when is_map(Client) ->
    get_client_certificate(Client, ClientCertificateId, #{}, #{}).

-spec get_client_certificate(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, get_client_certificate_errors(), tuple()}.
get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap, []).

-spec get_client_certificate(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, get_client_certificate_errors(), tuple()}.
get_client_certificate(Client, ClientCertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a collection of ClientCertificate resources.
-spec get_client_certificates(aws_client:aws_client()) ->
    {ok, client_certificates(), tuple()} |
    {error, any()} |
    {error, get_client_certificates_errors(), tuple()}.
get_client_certificates(Client)
  when is_map(Client) ->
    get_client_certificates(Client, #{}, #{}).

-spec get_client_certificates(aws_client:aws_client(), map(), map()) ->
    {ok, client_certificates(), tuple()} |
    {error, any()} |
    {error, get_client_certificates_errors(), tuple()}.
get_client_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_client_certificates(Client, QueryMap, HeadersMap, []).

-spec get_client_certificates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, client_certificates(), tuple()} |
    {error, any()} |
    {error, get_client_certificates_errors(), tuple()}.
get_client_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clientcertificates"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Deployment resource.
-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId, RestApiId)
  when is_map(Client) ->
    get_deployment(Client, DeploymentId, RestApiId, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Deployments collection.
-spec get_deployments(aws_client:aws_client(), binary() | list()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, RestApiId)
  when is_map(Client) ->
    get_deployments(Client, RestApiId, #{}, #{}).

-spec get_deployments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployments(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_deployments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a documentation part.
-spec get_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, get_documentation_part_errors(), tuple()}.
get_documentation_part(Client, DocumentationPartId, RestApiId)
  when is_map(Client) ->
    get_documentation_part(Client, DocumentationPartId, RestApiId, #{}, #{}).

-spec get_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, get_documentation_part_errors(), tuple()}.
get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap, []).

-spec get_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, get_documentation_part_errors(), tuple()}.
get_documentation_part(Client, DocumentationPartId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets documentation parts.
-spec get_documentation_parts(aws_client:aws_client(), binary() | list()) ->
    {ok, documentation_parts(), tuple()} |
    {error, any()} |
    {error, get_documentation_parts_errors(), tuple()}.
get_documentation_parts(Client, RestApiId)
  when is_map(Client) ->
    get_documentation_parts(Client, RestApiId, #{}, #{}).

-spec get_documentation_parts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, documentation_parts(), tuple()} |
    {error, any()} |
    {error, get_documentation_parts_errors(), tuple()}.
get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_documentation_parts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, documentation_parts(), tuple()} |
    {error, any()} |
    {error, get_documentation_parts_errors(), tuple()}.
get_documentation_parts(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
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
        {<<"locationStatus">>, maps:get(<<"locationStatus">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"path">>, maps:get(<<"path">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a documentation version.
-spec get_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, get_documentation_version_errors(), tuple()}.
get_documentation_version(Client, DocumentationVersion, RestApiId)
  when is_map(Client) ->
    get_documentation_version(Client, DocumentationVersion, RestApiId, #{}, #{}).

-spec get_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, get_documentation_version_errors(), tuple()}.
get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap, []).

-spec get_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, get_documentation_version_errors(), tuple()}.
get_documentation_version(Client, DocumentationVersion, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets documentation versions.
-spec get_documentation_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, documentation_versions(), tuple()} |
    {error, any()} |
    {error, get_documentation_versions_errors(), tuple()}.
get_documentation_versions(Client, RestApiId)
  when is_map(Client) ->
    get_documentation_versions(Client, RestApiId, #{}, #{}).

-spec get_documentation_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, documentation_versions(), tuple()} |
    {error, any()} |
    {error, get_documentation_versions_errors(), tuple()}.
get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_documentation_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, documentation_versions(), tuple()} |
    {error, any()} |
    {error, get_documentation_versions_errors(), tuple()}.
get_documentation_versions(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a domain name that is contained in a simpler, more
%% intuitive URL that can be called.
-spec get_domain_name(aws_client:aws_client(), binary() | list()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, #{}, #{}).

-spec get_domain_name(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_name(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_domain_name(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, get_domain_name_errors(), tuple()}.
get_domain_name(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Represents a collection on DomainNameAccessAssociations resources.
-spec get_domain_name_access_associations(aws_client:aws_client()) ->
    {ok, domain_name_access_associations(), tuple()} |
    {error, any()} |
    {error, get_domain_name_access_associations_errors(), tuple()}.
get_domain_name_access_associations(Client)
  when is_map(Client) ->
    get_domain_name_access_associations(Client, #{}, #{}).

-spec get_domain_name_access_associations(aws_client:aws_client(), map(), map()) ->
    {ok, domain_name_access_associations(), tuple()} |
    {error, any()} |
    {error, get_domain_name_access_associations_errors(), tuple()}.
get_domain_name_access_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_name_access_associations(Client, QueryMap, HeadersMap, []).

-spec get_domain_name_access_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, domain_name_access_associations(), tuple()} |
    {error, any()} |
    {error, get_domain_name_access_associations_errors(), tuple()}.
get_domain_name_access_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnameaccessassociations"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"resourceOwner">>, maps:get(<<"resourceOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a collection of DomainName resources.
-spec get_domain_names(aws_client:aws_client()) ->
    {ok, domain_names(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client)
  when is_map(Client) ->
    get_domain_names(Client, #{}, #{}).

-spec get_domain_names(aws_client:aws_client(), map(), map()) ->
    {ok, domain_names(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_names(Client, QueryMap, HeadersMap, []).

-spec get_domain_names(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, domain_names(), tuple()} |
    {error, any()} |
    {error, get_domain_names_errors(), tuple()}.
get_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainnames"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"resourceOwner">>, maps:get(<<"resourceOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports a deployed version of a RestApi in a specified format.
-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, RestApiId, StageName)
  when is_map(Client) ->
    get_export(Client, ExportType, RestApiId, StageName, #{}, #{}).

-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap, []).

-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, RestApiId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/exports/", aws_util:encode_uri(ExportType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, maps:get(<<"Accept">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"parameters">>, maps:get(<<"parameters">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Disposition">>, <<"contentDisposition">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a GatewayResponse of a specified response type on the given
%% RestApi.
-spec get_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_response_errors(), tuple()}.
get_gateway_response(Client, ResponseType, RestApiId)
  when is_map(Client) ->
    get_gateway_response(Client, ResponseType, RestApiId, #{}, #{}).

-spec get_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_response_errors(), tuple()}.
get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap, []).

-spec get_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_response_errors(), tuple()}.
get_gateway_response(Client, ResponseType, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the GatewayResponses collection on the given RestApi.
%%
%% If an API developer has not added any definitions for gateway responses,
%% the result will be the API Gateway-generated default GatewayResponses
%% collection for the supported response types.
-spec get_gateway_responses(aws_client:aws_client(), binary() | list()) ->
    {ok, gateway_responses(), tuple()} |
    {error, any()} |
    {error, get_gateway_responses_errors(), tuple()}.
get_gateway_responses(Client, RestApiId)
  when is_map(Client) ->
    get_gateway_responses(Client, RestApiId, #{}, #{}).

-spec get_gateway_responses(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, gateway_responses(), tuple()} |
    {error, any()} |
    {error, get_gateway_responses_errors(), tuple()}.
get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_gateway_responses(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, gateway_responses(), tuple()} |
    {error, any()} |
    {error, get_gateway_responses_errors(), tuple()}.
get_gateway_responses(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the integration settings.
-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_integration(Client, HttpMethod, ResourceId, RestApiId, #{}, #{}).

-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, []).

-spec get_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents a get integration response.
-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, #{}, #{}).

-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, []).

-spec get_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_response_errors(), tuple()}.
get_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe an existing Method resource.
-spec get_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, get_method_errors(), tuple()}.
get_method(Client, HttpMethod, ResourceId, RestApiId)
  when is_map(Client) ->
    get_method(Client, HttpMethod, ResourceId, RestApiId, #{}, #{}).

-spec get_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, get_method_errors(), tuple()}.
get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, []).

-spec get_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, get_method_errors(), tuple()}.
get_method(Client, HttpMethod, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a MethodResponse resource.
-spec get_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, get_method_response_errors(), tuple()}.
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode)
  when is_map(Client) ->
    get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, #{}, #{}).

-spec get_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, get_method_response_errors(), tuple()}.
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, []).

-spec get_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, get_method_response_errors(), tuple()}.
get_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing model defined for a RestApi resource.
-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ModelName, RestApiId)
  when is_map(Client) ->
    get_model(Client, ModelName, RestApiId, #{}, #{}).

-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap, []).

-spec get_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, get_model_errors(), tuple()}.
get_model(Client, ModelName, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"flatten">>, maps:get(<<"flatten">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a sample mapping template that can be used to transform a
%% payload into the structure of a model.
-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, template(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ModelName, RestApiId)
  when is_map(Client) ->
    get_model_template(Client, ModelName, RestApiId, #{}, #{}).

-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, template(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap, []).

-spec get_model_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, template(), tuple()} |
    {error, any()} |
    {error, get_model_template_errors(), tuple()}.
get_model_template(Client, ModelName, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), "/default_template"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes existing Models defined for a RestApi resource.
-spec get_models(aws_client:aws_client(), binary() | list()) ->
    {ok, models(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, RestApiId)
  when is_map(Client) ->
    get_models(Client, RestApiId, #{}, #{}).

-spec get_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, models(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_models(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, models(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a RequestValidator of a given RestApi.
-spec get_request_validator(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, get_request_validator_errors(), tuple()}.
get_request_validator(Client, RequestValidatorId, RestApiId)
  when is_map(Client) ->
    get_request_validator(Client, RequestValidatorId, RestApiId, #{}, #{}).

-spec get_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, get_request_validator_errors(), tuple()}.
get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap, []).

-spec get_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, get_request_validator_errors(), tuple()}.
get_request_validator(Client, RequestValidatorId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the RequestValidators collection of a given RestApi.
-spec get_request_validators(aws_client:aws_client(), binary() | list()) ->
    {ok, request_validators(), tuple()} |
    {error, any()} |
    {error, get_request_validators_errors(), tuple()}.
get_request_validators(Client, RestApiId)
  when is_map(Client) ->
    get_request_validators(Client, RestApiId, #{}, #{}).

-spec get_request_validators(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, request_validators(), tuple()} |
    {error, any()} |
    {error, get_request_validators_errors(), tuple()}.
get_request_validators(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_request_validators(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_request_validators(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, request_validators(), tuple()} |
    {error, any()} |
    {error, get_request_validators_errors(), tuple()}.
get_request_validators(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a resource.
-spec get_resource(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, get_resource_errors(), tuple()}.
get_resource(Client, ResourceId, RestApiId)
  when is_map(Client) ->
    get_resource(Client, ResourceId, RestApiId, #{}, #{}).

-spec get_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, get_resource_errors(), tuple()}.
get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap, []).

-spec get_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, get_resource_errors(), tuple()}.
get_resource(Client, ResourceId, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a collection of Resource resources.
-spec get_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, resources(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, RestApiId)
  when is_map(Client) ->
    get_resources(Client, RestApiId, #{}, #{}).

-spec get_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, resources(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resources(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, resources(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"embed">>, maps:get(<<"embed">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the RestApi resource in the collection.
-spec get_rest_api(aws_client:aws_client(), binary() | list()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, get_rest_api_errors(), tuple()}.
get_rest_api(Client, RestApiId)
  when is_map(Client) ->
    get_rest_api(Client, RestApiId, #{}, #{}).

-spec get_rest_api(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, get_rest_api_errors(), tuple()}.
get_rest_api(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rest_api(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_rest_api(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, get_rest_api_errors(), tuple()}.
get_rest_api(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the RestApis resources for your collection.
-spec get_rest_apis(aws_client:aws_client()) ->
    {ok, rest_apis(), tuple()} |
    {error, any()} |
    {error, get_rest_apis_errors(), tuple()}.
get_rest_apis(Client)
  when is_map(Client) ->
    get_rest_apis(Client, #{}, #{}).

-spec get_rest_apis(aws_client:aws_client(), map(), map()) ->
    {ok, rest_apis(), tuple()} |
    {error, any()} |
    {error, get_rest_apis_errors(), tuple()}.
get_rest_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rest_apis(Client, QueryMap, HeadersMap, []).

-spec get_rest_apis(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, rest_apis(), tuple()} |
    {error, any()} |
    {error, get_rest_apis_errors(), tuple()}.
get_rest_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a client SDK for a RestApi and Stage.
-spec get_sdk(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, sdk_response(), tuple()} |
    {error, any()} |
    {error, get_sdk_errors(), tuple()}.
get_sdk(Client, RestApiId, SdkType, StageName)
  when is_map(Client) ->
    get_sdk(Client, RestApiId, SdkType, StageName, #{}, #{}).

-spec get_sdk(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, sdk_response(), tuple()} |
    {error, any()} |
    {error, get_sdk_errors(), tuple()}.
get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap, []).

-spec get_sdk(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, sdk_response(), tuple()} |
    {error, any()} |
    {error, get_sdk_errors(), tuple()}.
get_sdk(Client, RestApiId, SdkType, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), "/sdks/", aws_util:encode_uri(SdkType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"parameters">>, maps:get(<<"parameters">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Disposition">>, <<"contentDisposition">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets an SDK type.
-spec get_sdk_type(aws_client:aws_client(), binary() | list()) ->
    {ok, sdk_type(), tuple()} |
    {error, any()} |
    {error, get_sdk_type_errors(), tuple()}.
get_sdk_type(Client, Id)
  when is_map(Client) ->
    get_sdk_type(Client, Id, #{}, #{}).

-spec get_sdk_type(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, sdk_type(), tuple()} |
    {error, any()} |
    {error, get_sdk_type_errors(), tuple()}.
get_sdk_type(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk_type(Client, Id, QueryMap, HeadersMap, []).

-spec get_sdk_type(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, sdk_type(), tuple()} |
    {error, any()} |
    {error, get_sdk_type_errors(), tuple()}.
get_sdk_type(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdktypes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets SDK types
-spec get_sdk_types(aws_client:aws_client()) ->
    {ok, sdk_types(), tuple()} |
    {error, any()} |
    {error, get_sdk_types_errors(), tuple()}.
get_sdk_types(Client)
  when is_map(Client) ->
    get_sdk_types(Client, #{}, #{}).

-spec get_sdk_types(aws_client:aws_client(), map(), map()) ->
    {ok, sdk_types(), tuple()} |
    {error, any()} |
    {error, get_sdk_types_errors(), tuple()}.
get_sdk_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sdk_types(Client, QueryMap, HeadersMap, []).

-spec get_sdk_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, sdk_types(), tuple()} |
    {error, any()} |
    {error, get_sdk_types_errors(), tuple()}.
get_sdk_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdktypes"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Stage resource.
-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, RestApiId, StageName)
  when is_map(Client) ->
    get_stage(Client, RestApiId, StageName, #{}, #{}).

-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap, []).

-spec get_stage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, RestApiId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about one or more Stage resources.
-spec get_stages(aws_client:aws_client(), binary() | list()) ->
    {ok, stages(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, RestApiId)
  when is_map(Client) ->
    get_stages(Client, RestApiId, #{}, #{}).

-spec get_stages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, stages(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, RestApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stages(Client, RestApiId, QueryMap, HeadersMap, []).

-spec get_stages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, stages(), tuple()} |
    {error, any()} |
    {error, get_stages_errors(), tuple()}.
get_stages(Client, RestApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deploymentId">>, maps:get(<<"deploymentId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Tags collection for a given resource.
-spec get_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, tags(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn)
  when is_map(Client) ->
    get_tags(Client, ResourceArn, #{}, #{}).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, tags(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, tags(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the usage data of a usage plan in a specified time interval.
-spec get_usage(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, usage(), tuple()} |
    {error, any()} |
    {error, get_usage_errors(), tuple()}.
get_usage(Client, UsagePlanId, EndDate, StartDate)
  when is_map(Client) ->
    get_usage(Client, UsagePlanId, EndDate, StartDate, #{}, #{}).

-spec get_usage(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, usage(), tuple()} |
    {error, any()} |
    {error, get_usage_errors(), tuple()}.
get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap, []).

-spec get_usage(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, usage(), tuple()} |
    {error, any()} |
    {error, get_usage_errors(), tuple()}.
get_usage(Client, UsagePlanId, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/usage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endDate">>, EndDate},
        {<<"keyId">>, maps:get(<<"keyId">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)},
        {<<"startDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan of a given plan identifier.
-spec get_usage_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_errors(), tuple()}.
get_usage_plan(Client, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan(Client, UsagePlanId, #{}, #{}).

-spec get_usage_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_errors(), tuple()}.
get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap, []).

-spec get_usage_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_errors(), tuple()}.
get_usage_plan(Client, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a usage plan key of a given key identifier.
-spec get_usage_plan_key(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, usage_plan_key(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_key_errors(), tuple()}.
get_usage_plan_key(Client, KeyId, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan_key(Client, KeyId, UsagePlanId, #{}, #{}).

-spec get_usage_plan_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, usage_plan_key(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_key_errors(), tuple()}.
get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap, []).

-spec get_usage_plan_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, usage_plan_key(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_key_errors(), tuple()}.
get_usage_plan_key(Client, KeyId, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plan keys representing the API keys added to a
%% specified usage plan.
-spec get_usage_plan_keys(aws_client:aws_client(), binary() | list()) ->
    {ok, usage_plan_keys(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_keys_errors(), tuple()}.
get_usage_plan_keys(Client, UsagePlanId)
  when is_map(Client) ->
    get_usage_plan_keys(Client, UsagePlanId, #{}, #{}).

-spec get_usage_plan_keys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, usage_plan_keys(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_keys_errors(), tuple()}.
get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap, []).

-spec get_usage_plan_keys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, usage_plan_keys(), tuple()} |
    {error, any()} |
    {error, get_usage_plan_keys_errors(), tuple()}.
get_usage_plan_keys(Client, UsagePlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys"],
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
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all the usage plans of the caller's account.
-spec get_usage_plans(aws_client:aws_client()) ->
    {ok, usage_plans(), tuple()} |
    {error, any()} |
    {error, get_usage_plans_errors(), tuple()}.
get_usage_plans(Client)
  when is_map(Client) ->
    get_usage_plans(Client, #{}, #{}).

-spec get_usage_plans(aws_client:aws_client(), map(), map()) ->
    {ok, usage_plans(), tuple()} |
    {error, any()} |
    {error, get_usage_plans_errors(), tuple()}.
get_usage_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_plans(Client, QueryMap, HeadersMap, []).

-spec get_usage_plans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, usage_plans(), tuple()} |
    {error, any()} |
    {error, get_usage_plans_errors(), tuple()}.
get_usage_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usageplans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"keyId">>, maps:get(<<"keyId">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a specified VPC link under the caller's account in a region.
-spec get_vpc_link(aws_client:aws_client(), binary() | list()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId)
  when is_map(Client) ->
    get_vpc_link(Client, VpcLinkId, #{}, #{}).

-spec get_vpc_link(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, []).

-spec get_vpc_link(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, get_vpc_link_errors(), tuple()}.
get_vpc_link(Client, VpcLinkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the VpcLinks collection under the caller's account in a
%% selected region.
-spec get_vpc_links(aws_client:aws_client()) ->
    {ok, vpc_links(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client)
  when is_map(Client) ->
    get_vpc_links(Client, #{}, #{}).

-spec get_vpc_links(aws_client:aws_client(), map(), map()) ->
    {ok, vpc_links(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vpc_links(Client, QueryMap, HeadersMap, []).

-spec get_vpc_links(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, vpc_links(), tuple()} |
    {error, any()} |
    {error, get_vpc_links_errors(), tuple()}.
get_vpc_links(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vpclinks"],
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
        {<<"position">>, maps:get(<<"position">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Import API keys from an external source, such as a CSV-formatted
%% file.
-spec import_api_keys(aws_client:aws_client(), import_api_keys_request()) ->
    {ok, api_key_ids(), tuple()} |
    {error, any()} |
    {error, import_api_keys_errors(), tuple()}.
import_api_keys(Client, Input) ->
    import_api_keys(Client, Input, []).

-spec import_api_keys(aws_client:aws_client(), import_api_keys_request(), proplists:proplist()) ->
    {ok, api_key_ids(), tuple()} |
    {error, any()} |
    {error, import_api_keys_errors(), tuple()}.
import_api_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apikeys?mode=import"],
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
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"format">>, <<"format">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Imports documentation parts
-spec import_documentation_parts(aws_client:aws_client(), binary() | list(), import_documentation_parts_request()) ->
    {ok, documentation_part_ids(), tuple()} |
    {error, any()} |
    {error, import_documentation_parts_errors(), tuple()}.
import_documentation_parts(Client, RestApiId, Input) ->
    import_documentation_parts(Client, RestApiId, Input, []).

-spec import_documentation_parts(aws_client:aws_client(), binary() | list(), import_documentation_parts_request(), proplists:proplist()) ->
    {ok, documentation_part_ids(), tuple()} |
    {error, any()} |
    {error, import_documentation_parts_errors(), tuple()}.
import_documentation_parts(Client, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts"],
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
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A feature of the API Gateway control service for creating a new API
%% from an external API definition file.
-spec import_rest_api(aws_client:aws_client(), import_rest_api_request()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, import_rest_api_errors(), tuple()}.
import_rest_api(Client, Input) ->
    import_rest_api(Client, Input, []).

-spec import_rest_api(aws_client:aws_client(), import_rest_api_request(), proplists:proplist()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, import_rest_api_errors(), tuple()}.
import_rest_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restapis?mode=import"],
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
                     {<<"parameters">>, <<"parameters">>},
                     {<<"failonwarnings">>, <<"failOnWarnings">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customization of a GatewayResponse of a specified response
%% type and status code on the given RestApi.
-spec put_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), put_gateway_response_request()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, put_gateway_response_errors(), tuple()}.
put_gateway_response(Client, ResponseType, RestApiId, Input) ->
    put_gateway_response(Client, ResponseType, RestApiId, Input, []).

-spec put_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), put_gateway_response_request(), proplists:proplist()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, put_gateway_response_errors(), tuple()}.
put_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
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

%% @doc Sets up a method's integration.
-spec put_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_integration_request()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec put_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_integration_request(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
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

%% @doc Represents a put integration.
-spec put_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_integration_response_request()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_response_errors(), tuple()}.
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec put_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_integration_response_request(), proplists:proplist()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_response_errors(), tuple()}.
put_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc Add a method to an existing Resource resource.
-spec put_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_method_request()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, put_method_errors(), tuple()}.
put_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    put_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec put_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_method_request(), proplists:proplist()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, put_method_errors(), tuple()}.
put_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
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

%% @doc Adds a MethodResponse to an existing Method resource.
-spec put_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_method_response_request()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, put_method_response_errors(), tuple()}.
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec put_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_method_response_request(), proplists:proplist()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, put_method_response_errors(), tuple()}.
put_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc A feature of the API Gateway control service for updating an existing
%% API with an input of external API definitions.
%%
%% The update can take the form of merging the supplied definition into the
%% existing API or overwriting the existing API.
-spec put_rest_api(aws_client:aws_client(), binary() | list(), put_rest_api_request()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, put_rest_api_errors(), tuple()}.
put_rest_api(Client, RestApiId, Input) ->
    put_rest_api(Client, RestApiId, Input, []).

-spec put_rest_api(aws_client:aws_client(), binary() | list(), put_rest_api_request(), proplists:proplist()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, put_rest_api_errors(), tuple()}.
put_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = put,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
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
                     {<<"parameters">>, <<"parameters">>},
                     {<<"failonwarnings">>, <<"failOnWarnings">>},
                     {<<"mode">>, <<"mode">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects a domain name access association with a private custom domain
%% name.
%%
%% To reject a domain name access association with an access association
%% source in another AWS account, use this operation. To remove a domain name
%% access association with an access association source in your own account,
%% use the DeleteDomainNameAccessAssociation operation.
-spec reject_domain_name_access_association(aws_client:aws_client(), reject_domain_name_access_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_domain_name_access_association_errors(), tuple()}.
reject_domain_name_access_association(Client, Input) ->
    reject_domain_name_access_association(Client, Input, []).

-spec reject_domain_name_access_association(aws_client:aws_client(), reject_domain_name_access_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_domain_name_access_association_errors(), tuple()}.
reject_domain_name_access_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rejectdomainnameaccessassociations"],
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

    QueryMapping = [
                     {<<"domainNameAccessAssociationArn">>, <<"domainNameAccessAssociationArn">>},
                     {<<"domainNameArn">>, <<"domainNameArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates a tag on a given resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = put,
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

%% @doc Simulate the execution of an Authorizer in your RestApi with headers,
%% parameters, and an incoming request body.
-spec test_invoke_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), test_invoke_authorizer_request()) ->
    {ok, test_invoke_authorizer_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_authorizer_errors(), tuple()}.
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input, []).

-spec test_invoke_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), test_invoke_authorizer_request(), proplists:proplist()) ->
    {ok, test_invoke_authorizer_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_authorizer_errors(), tuple()}.
test_invoke_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
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

%% @doc Simulate the invocation of a Method in your RestApi with headers,
%% parameters, and an incoming request body.
-spec test_invoke_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), test_invoke_method_request()) ->
    {ok, test_invoke_method_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_method_errors(), tuple()}.
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec test_invoke_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), test_invoke_method_request(), proplists:proplist()) ->
    {ok, test_invoke_method_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_method_errors(), tuple()}.
test_invoke_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = post,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
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

%% @doc Removes a tag from a given resource.
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

%% @doc Changes information about the current Account resource.
-spec update_account(aws_client:aws_client(), update_account_request()) ->
    {ok, account(), tuple()} |
    {error, any()} |
    {error, update_account_errors(), tuple()}.
update_account(Client, Input) ->
    update_account(Client, Input, []).

-spec update_account(aws_client:aws_client(), update_account_request(), proplists:proplist()) ->
    {ok, account(), tuple()} |
    {error, any()} |
    {error, update_account_errors(), tuple()}.
update_account(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/account"],
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

%% @doc Changes information about an ApiKey resource.
-spec update_api_key(aws_client:aws_client(), binary() | list(), update_api_key_request()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, update_api_key_errors(), tuple()}.
update_api_key(Client, ApiKey, Input) ->
    update_api_key(Client, ApiKey, Input, []).

-spec update_api_key(aws_client:aws_client(), binary() | list(), update_api_key_request(), proplists:proplist()) ->
    {ok, api_key(), tuple()} |
    {error, any()} |
    {error, update_api_key_errors(), tuple()}.
update_api_key(Client, ApiKey, Input0, Options0) ->
    Method = patch,
    Path = ["/apikeys/", aws_util:encode_uri(ApiKey), ""],
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

%% @doc Updates an existing Authorizer resource.
-spec update_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), update_authorizer_request()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, AuthorizerId, RestApiId, Input) ->
    update_authorizer(Client, AuthorizerId, RestApiId, Input, []).

-spec update_authorizer(aws_client:aws_client(), binary() | list(), binary() | list(), update_authorizer_request(), proplists:proplist()) ->
    {ok, authorizer(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, AuthorizerId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/authorizers/", aws_util:encode_uri(AuthorizerId), ""],
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

%% @doc Changes information about the BasePathMapping resource.
-spec update_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), update_base_path_mapping_request()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, update_base_path_mapping_errors(), tuple()}.
update_base_path_mapping(Client, BasePath, DomainName, Input) ->
    update_base_path_mapping(Client, BasePath, DomainName, Input, []).

-spec update_base_path_mapping(aws_client:aws_client(), binary() | list(), binary() | list(), update_base_path_mapping_request(), proplists:proplist()) ->
    {ok, base_path_mapping(), tuple()} |
    {error, any()} |
    {error, update_base_path_mapping_errors(), tuple()}.
update_base_path_mapping(Client, BasePath, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), "/basepathmappings/", aws_util:encode_uri(BasePath), ""],
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
                     {<<"domainNameId">>, <<"domainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes information about an ClientCertificate resource.
-spec update_client_certificate(aws_client:aws_client(), binary() | list(), update_client_certificate_request()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, update_client_certificate_errors(), tuple()}.
update_client_certificate(Client, ClientCertificateId, Input) ->
    update_client_certificate(Client, ClientCertificateId, Input, []).

-spec update_client_certificate(aws_client:aws_client(), binary() | list(), update_client_certificate_request(), proplists:proplist()) ->
    {ok, client_certificate(), tuple()} |
    {error, any()} |
    {error, update_client_certificate_errors(), tuple()}.
update_client_certificate(Client, ClientCertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/clientcertificates/", aws_util:encode_uri(ClientCertificateId), ""],
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

%% @doc Changes information about a Deployment resource.
-spec update_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), update_deployment_request()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, DeploymentId, RestApiId, Input) ->
    update_deployment(Client, DeploymentId, RestApiId, Input, []).

-spec update_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), update_deployment_request(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, DeploymentId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
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

%% @doc Updates a documentation part.
-spec update_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), update_documentation_part_request()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, update_documentation_part_errors(), tuple()}.
update_documentation_part(Client, DocumentationPartId, RestApiId, Input) ->
    update_documentation_part(Client, DocumentationPartId, RestApiId, Input, []).

-spec update_documentation_part(aws_client:aws_client(), binary() | list(), binary() | list(), update_documentation_part_request(), proplists:proplist()) ->
    {ok, documentation_part(), tuple()} |
    {error, any()} |
    {error, update_documentation_part_errors(), tuple()}.
update_documentation_part(Client, DocumentationPartId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/parts/", aws_util:encode_uri(DocumentationPartId), ""],
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

%% @doc Updates a documentation version.
-spec update_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_documentation_version_request()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, update_documentation_version_errors(), tuple()}.
update_documentation_version(Client, DocumentationVersion, RestApiId, Input) ->
    update_documentation_version(Client, DocumentationVersion, RestApiId, Input, []).

-spec update_documentation_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_documentation_version_request(), proplists:proplist()) ->
    {ok, documentation_version(), tuple()} |
    {error, any()} |
    {error, update_documentation_version_errors(), tuple()}.
update_documentation_version(Client, DocumentationVersion, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/documentation/versions/", aws_util:encode_uri(DocumentationVersion), ""],
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

%% @doc Changes information about the DomainName resource.
-spec update_domain_name(aws_client:aws_client(), binary() | list(), update_domain_name_request()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, update_domain_name_errors(), tuple()}.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).

-spec update_domain_name(aws_client:aws_client(), binary() | list(), update_domain_name_request(), proplists:proplist()) ->
    {ok, domain_name(), tuple()} |
    {error, any()} |
    {error, update_domain_name_errors(), tuple()}.
update_domain_name(Client, DomainName, Input0, Options0) ->
    Method = patch,
    Path = ["/domainnames/", aws_util:encode_uri(DomainName), ""],
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
                     {<<"domainNameId">>, <<"domainNameId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a GatewayResponse of a specified response type on the given
%% RestApi.
-spec update_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), update_gateway_response_request()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_response_errors(), tuple()}.
update_gateway_response(Client, ResponseType, RestApiId, Input) ->
    update_gateway_response(Client, ResponseType, RestApiId, Input, []).

-spec update_gateway_response(aws_client:aws_client(), binary() | list(), binary() | list(), update_gateway_response_request(), proplists:proplist()) ->
    {ok, gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_response_errors(), tuple()}.
update_gateway_response(Client, ResponseType, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/gatewayresponses/", aws_util:encode_uri(ResponseType), ""],
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

%% @doc Represents an update integration.
-spec update_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_integration_request()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_integration(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec update_integration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_integration_request(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration"],
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

%% @doc Represents an update integration response.
-spec update_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_integration_response_request()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, update_integration_response_errors(), tuple()}.
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec update_integration_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_integration_response_request(), proplists:proplist()) ->
    {ok, integration_response(), tuple()} |
    {error, any()} |
    {error, update_integration_response_errors(), tuple()}.
update_integration_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/integration/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc Updates an existing Method resource.
-spec update_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_method_request()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, update_method_errors(), tuple()}.
update_method(Client, HttpMethod, ResourceId, RestApiId, Input) ->
    update_method(Client, HttpMethod, ResourceId, RestApiId, Input, []).

-spec update_method(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_method_request(), proplists:proplist()) ->
    {ok, method(), tuple()} |
    {error, any()} |
    {error, update_method_errors(), tuple()}.
update_method(Client, HttpMethod, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), ""],
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

%% @doc Updates an existing MethodResponse resource.
-spec update_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_method_response_request()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, update_method_response_errors(), tuple()}.
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input) ->
    update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input, []).

-spec update_method_response(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_method_response_request(), proplists:proplist()) ->
    {ok, method_response(), tuple()} |
    {error, any()} |
    {error, update_method_response_errors(), tuple()}.
update_method_response(Client, HttpMethod, ResourceId, RestApiId, StatusCode, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), "/methods/", aws_util:encode_uri(HttpMethod), "/responses/", aws_util:encode_uri(StatusCode), ""],
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

%% @doc Changes information about a model.
%%
%% The maximum size of the model is 400 KB.
-spec update_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_model_request()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, ModelName, RestApiId, Input) ->
    update_model(Client, ModelName, RestApiId, Input, []).

-spec update_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_model_request(), proplists:proplist()) ->
    {ok, model(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, ModelName, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/models/", aws_util:encode_uri(ModelName), ""],
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

%% @doc Updates a RequestValidator of a given RestApi.
-spec update_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), update_request_validator_request()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, update_request_validator_errors(), tuple()}.
update_request_validator(Client, RequestValidatorId, RestApiId, Input) ->
    update_request_validator(Client, RequestValidatorId, RestApiId, Input, []).

-spec update_request_validator(aws_client:aws_client(), binary() | list(), binary() | list(), update_request_validator_request(), proplists:proplist()) ->
    {ok, request_validator(), tuple()} |
    {error, any()} |
    {error, update_request_validator_errors(), tuple()}.
update_request_validator(Client, RequestValidatorId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/requestvalidators/", aws_util:encode_uri(RequestValidatorId), ""],
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

%% @doc Changes information about a Resource resource.
-spec update_resource(aws_client:aws_client(), binary() | list(), binary() | list(), update_resource_request()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, ResourceId, RestApiId, Input) ->
    update_resource(Client, ResourceId, RestApiId, Input, []).

-spec update_resource(aws_client:aws_client(), binary() | list(), binary() | list(), update_resource_request(), proplists:proplist()) ->
    {ok, resource(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, ResourceId, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/resources/", aws_util:encode_uri(ResourceId), ""],
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

%% @doc Changes information about the specified API.
-spec update_rest_api(aws_client:aws_client(), binary() | list(), update_rest_api_request()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, update_rest_api_errors(), tuple()}.
update_rest_api(Client, RestApiId, Input) ->
    update_rest_api(Client, RestApiId, Input, []).

-spec update_rest_api(aws_client:aws_client(), binary() | list(), update_rest_api_request(), proplists:proplist()) ->
    {ok, rest_api(), tuple()} |
    {error, any()} |
    {error, update_rest_api_errors(), tuple()}.
update_rest_api(Client, RestApiId, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), ""],
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

%% @doc Changes information about a Stage resource.
-spec update_stage(aws_client:aws_client(), binary() | list(), binary() | list(), update_stage_request()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, RestApiId, StageName, Input) ->
    update_stage(Client, RestApiId, StageName, Input, []).

-spec update_stage(aws_client:aws_client(), binary() | list(), binary() | list(), update_stage_request(), proplists:proplist()) ->
    {ok, stage(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, RestApiId, StageName, Input0, Options0) ->
    Method = patch,
    Path = ["/restapis/", aws_util:encode_uri(RestApiId), "/stages/", aws_util:encode_uri(StageName), ""],
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

%% @doc Grants a temporary extension to the remaining quota of a usage plan
%% associated with a specified API key.
-spec update_usage(aws_client:aws_client(), binary() | list(), binary() | list(), update_usage_request()) ->
    {ok, usage(), tuple()} |
    {error, any()} |
    {error, update_usage_errors(), tuple()}.
update_usage(Client, KeyId, UsagePlanId, Input) ->
    update_usage(Client, KeyId, UsagePlanId, Input, []).

-spec update_usage(aws_client:aws_client(), binary() | list(), binary() | list(), update_usage_request(), proplists:proplist()) ->
    {ok, usage(), tuple()} |
    {error, any()} |
    {error, update_usage_errors(), tuple()}.
update_usage(Client, KeyId, UsagePlanId, Input0, Options0) ->
    Method = patch,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), "/keys/", aws_util:encode_uri(KeyId), "/usage"],
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

%% @doc Updates a usage plan of a given plan Id.
-spec update_usage_plan(aws_client:aws_client(), binary() | list(), update_usage_plan_request()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, update_usage_plan_errors(), tuple()}.
update_usage_plan(Client, UsagePlanId, Input) ->
    update_usage_plan(Client, UsagePlanId, Input, []).

-spec update_usage_plan(aws_client:aws_client(), binary() | list(), update_usage_plan_request(), proplists:proplist()) ->
    {ok, usage_plan(), tuple()} |
    {error, any()} |
    {error, update_usage_plan_errors(), tuple()}.
update_usage_plan(Client, UsagePlanId, Input0, Options0) ->
    Method = patch,
    Path = ["/usageplans/", aws_util:encode_uri(UsagePlanId), ""],
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

%% @doc Updates an existing VpcLink of a specified identifier.
-spec update_vpc_link(aws_client:aws_client(), binary() | list(), update_vpc_link_request()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, update_vpc_link_errors(), tuple()}.
update_vpc_link(Client, VpcLinkId, Input) ->
    update_vpc_link(Client, VpcLinkId, Input, []).

-spec update_vpc_link(aws_client:aws_client(), binary() | list(), update_vpc_link_request(), proplists:proplist()) ->
    {ok, vpc_link(), tuple()} |
    {error, any()} |
    {error, update_vpc_link_errors(), tuple()}.
update_vpc_link(Client, VpcLinkId, Input0, Options0) ->
    Method = patch,
    Path = ["/vpclinks/", aws_util:encode_uri(VpcLinkId), ""],
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
