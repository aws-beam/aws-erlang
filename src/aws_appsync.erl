%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AppSync provides API actions for creating and interacting with data
%% sources using GraphQL from your application.
-module(aws_appsync).

-export([associate_api/3,
         associate_api/4,
         associate_merged_graphql_api/3,
         associate_merged_graphql_api/4,
         associate_source_graphql_api/3,
         associate_source_graphql_api/4,
         create_api/2,
         create_api/3,
         create_api_cache/3,
         create_api_cache/4,
         create_api_key/3,
         create_api_key/4,
         create_channel_namespace/3,
         create_channel_namespace/4,
         create_data_source/3,
         create_data_source/4,
         create_domain_name/2,
         create_domain_name/3,
         create_function/3,
         create_function/4,
         create_graphql_api/2,
         create_graphql_api/3,
         create_resolver/4,
         create_resolver/5,
         create_type/3,
         create_type/4,
         delete_api/3,
         delete_api/4,
         delete_api_cache/3,
         delete_api_cache/4,
         delete_api_key/4,
         delete_api_key/5,
         delete_channel_namespace/4,
         delete_channel_namespace/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_function/4,
         delete_function/5,
         delete_graphql_api/3,
         delete_graphql_api/4,
         delete_resolver/5,
         delete_resolver/6,
         delete_type/4,
         delete_type/5,
         disassociate_api/3,
         disassociate_api/4,
         disassociate_merged_graphql_api/4,
         disassociate_merged_graphql_api/5,
         disassociate_source_graphql_api/4,
         disassociate_source_graphql_api/5,
         evaluate_code/2,
         evaluate_code/3,
         evaluate_mapping_template/2,
         evaluate_mapping_template/3,
         flush_api_cache/3,
         flush_api_cache/4,
         get_api/2,
         get_api/4,
         get_api/5,
         get_api_association/2,
         get_api_association/4,
         get_api_association/5,
         get_api_cache/2,
         get_api_cache/4,
         get_api_cache/5,
         get_channel_namespace/3,
         get_channel_namespace/5,
         get_channel_namespace/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_data_source_introspection/2,
         get_data_source_introspection/4,
         get_data_source_introspection/5,
         get_domain_name/2,
         get_domain_name/4,
         get_domain_name/5,
         get_function/3,
         get_function/5,
         get_function/6,
         get_graphql_api/2,
         get_graphql_api/4,
         get_graphql_api/5,
         get_graphql_api_environment_variables/2,
         get_graphql_api_environment_variables/4,
         get_graphql_api_environment_variables/5,
         get_introspection_schema/3,
         get_introspection_schema/5,
         get_introspection_schema/6,
         get_resolver/4,
         get_resolver/6,
         get_resolver/7,
         get_schema_creation_status/2,
         get_schema_creation_status/4,
         get_schema_creation_status/5,
         get_source_api_association/3,
         get_source_api_association/5,
         get_source_api_association/6,
         get_type/4,
         get_type/6,
         get_type/7,
         list_api_keys/2,
         list_api_keys/4,
         list_api_keys/5,
         list_apis/1,
         list_apis/3,
         list_apis/4,
         list_channel_namespaces/2,
         list_channel_namespaces/4,
         list_channel_namespaces/5,
         list_data_sources/2,
         list_data_sources/4,
         list_data_sources/5,
         list_domain_names/1,
         list_domain_names/3,
         list_domain_names/4,
         list_functions/2,
         list_functions/4,
         list_functions/5,
         list_graphql_apis/1,
         list_graphql_apis/3,
         list_graphql_apis/4,
         list_resolvers/3,
         list_resolvers/5,
         list_resolvers/6,
         list_resolvers_by_function/3,
         list_resolvers_by_function/5,
         list_resolvers_by_function/6,
         list_source_api_associations/2,
         list_source_api_associations/4,
         list_source_api_associations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_types/3,
         list_types/5,
         list_types/6,
         list_types_by_association/4,
         list_types_by_association/6,
         list_types_by_association/7,
         put_graphql_api_environment_variables/3,
         put_graphql_api_environment_variables/4,
         start_data_source_introspection/2,
         start_data_source_introspection/3,
         start_schema_creation/3,
         start_schema_creation/4,
         start_schema_merge/4,
         start_schema_merge/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_api/3,
         update_api/4,
         update_api_cache/3,
         update_api_cache/4,
         update_api_key/4,
         update_api_key/5,
         update_channel_namespace/4,
         update_channel_namespace/5,
         update_data_source/4,
         update_data_source/5,
         update_domain_name/3,
         update_domain_name/4,
         update_function/4,
         update_function/5,
         update_graphql_api/3,
         update_graphql_api/4,
         update_resolver/5,
         update_resolver/6,
         update_source_api_association/4,
         update_source_api_association/5,
         update_type/4,
         update_type/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% data_source_introspection_model_index() :: #{
%%   <<"fields">> => list(string()()),
%%   <<"name">> => string()
%% }
-type data_source_introspection_model_index() :: #{binary() => any()}.

%% Example:
%% get_channel_namespace_request() :: #{}
-type get_channel_namespace_request() :: #{}.


%% Example:
%% get_type_request() :: #{
%%   <<"format">> := list(any())
%% }
-type get_type_request() :: #{binary() => any()}.


%% Example:
%% associate_merged_graphql_api_response() :: #{
%%   <<"sourceApiAssociation">> => source_api_association()
%% }
-type associate_merged_graphql_api_response() :: #{binary() => any()}.


%% Example:
%% list_domain_names_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_domain_names_request() :: #{binary() => any()}.


%% Example:
%% evaluate_code_response() :: #{
%%   <<"error">> => evaluate_code_error_detail(),
%%   <<"evaluationResult">> => string(),
%%   <<"logs">> => list(string()())
%% }
-type evaluate_code_response() :: #{binary() => any()}.


%% Example:
%% code_error_location() :: #{
%%   <<"column">> => integer(),
%%   <<"line">> => integer(),
%%   <<"span">> => integer()
%% }
-type code_error_location() :: #{binary() => any()}.

%% Example:
%% delete_type_request() :: #{}
-type delete_type_request() :: #{}.


%% Example:
%% list_resolvers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_resolvers_request() :: #{binary() => any()}.

%% Example:
%% flush_api_cache_request() :: #{}
-type flush_api_cache_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_type_response() :: #{}
-type delete_type_response() :: #{}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_source_graphql_api_request() :: #{}
-type disassociate_source_graphql_api_request() :: #{}.


%% Example:
%% list_api_keys_response() :: #{
%%   <<"apiKeys">> => list(api_key()()),
%%   <<"nextToken">> => string()
%% }
-type list_api_keys_response() :: #{binary() => any()}.


%% Example:
%% lambda_conflict_handler_config() :: #{
%%   <<"lambdaConflictHandlerArn">> => string()
%% }
-type lambda_conflict_handler_config() :: #{binary() => any()}.


%% Example:
%% evaluate_code_error_detail() :: #{
%%   <<"codeErrors">> => list(code_error()()),
%%   <<"message">> => string()
%% }
-type evaluate_code_error_detail() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% list_source_api_associations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sourceApiAssociationSummaries">> => list(source_api_association_summary()())
%% }
-type list_source_api_associations_response() :: #{binary() => any()}.


%% Example:
%% list_functions_response() :: #{
%%   <<"functions">> => list(function_configuration()()),
%%   <<"nextToken">> => string()
%% }
-type list_functions_response() :: #{binary() => any()}.


%% Example:
%% list_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"types">> => list(type()())
%% }
-type list_types_response() :: #{binary() => any()}.


%% Example:
%% api_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type api_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_resolver_response() :: #{
%%   <<"resolver">> => resolver()
%% }
-type update_resolver_response() :: #{binary() => any()}.


%% Example:
%% create_data_source_request() :: #{
%%   <<"description">> => string(),
%%   <<"dynamodbConfig">> => dynamodb_data_source_config(),
%%   <<"elasticsearchConfig">> => elasticsearch_data_source_config(),
%%   <<"eventBridgeConfig">> => event_bridge_data_source_config(),
%%   <<"httpConfig">> => http_data_source_config(),
%%   <<"lambdaConfig">> => lambda_data_source_config(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"name">> := string(),
%%   <<"openSearchServiceConfig">> => open_search_service_data_source_config(),
%%   <<"relationalDatabaseConfig">> => relational_database_data_source_config(),
%%   <<"serviceRoleArn">> => string(),
%%   <<"type">> := list(any())
%% }
-type create_data_source_request() :: #{binary() => any()}.


%% Example:
%% data_source_introspection_model_field() :: #{
%%   <<"length">> => float(),
%%   <<"name">> => string(),
%%   <<"type">> => data_source_introspection_model_field_type()
%% }
-type data_source_introspection_model_field() :: #{binary() => any()}.


%% Example:
%% lambda_authorizer_config() :: #{
%%   <<"authorizerResultTtlInSeconds">> => integer(),
%%   <<"authorizerUri">> => string(),
%%   <<"identityValidationExpression">> => string()
%% }
-type lambda_authorizer_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% delete_graphql_api_response() :: #{}
-type delete_graphql_api_response() :: #{}.


%% Example:
%% list_graphql_apis_response() :: #{
%%   <<"graphqlApis">> => list(graphql_api()()),
%%   <<"nextToken">> => string()
%% }
-type list_graphql_apis_response() :: #{binary() => any()}.

%% Example:
%% get_resolver_request() :: #{}
-type get_resolver_request() :: #{}.

%% Example:
%% delete_domain_name_response() :: #{}
-type delete_domain_name_response() :: #{}.


%% Example:
%% additional_authentication_provider() :: #{
%%   <<"authenticationType">> => list(any()),
%%   <<"lambdaAuthorizerConfig">> => lambda_authorizer_config(),
%%   <<"openIDConnectConfig">> => open_id_connect_config(),
%%   <<"userPoolConfig">> => cognito_user_pool_config()
%% }
-type additional_authentication_provider() :: #{binary() => any()}.


%% Example:
%% list_source_api_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_source_api_associations_request() :: #{binary() => any()}.


%% Example:
%% get_source_api_association_response() :: #{
%%   <<"sourceApiAssociation">> => source_api_association()
%% }
-type get_source_api_association_response() :: #{binary() => any()}.


%% Example:
%% list_resolvers_by_function_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_resolvers_by_function_request() :: #{binary() => any()}.


%% Example:
%% update_api_key_request() :: #{
%%   <<"description">> => string(),
%%   <<"expires">> => float()
%% }
-type update_api_key_request() :: #{binary() => any()}.


%% Example:
%% create_api_response() :: #{
%%   <<"api">> => api()
%% }
-type create_api_response() :: #{binary() => any()}.


%% Example:
%% list_channel_namespaces_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_channel_namespaces_request() :: #{binary() => any()}.


%% Example:
%% get_schema_creation_status_response() :: #{
%%   <<"details">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_schema_creation_status_response() :: #{binary() => any()}.


%% Example:
%% cognito_user_pool_config() :: #{
%%   <<"appIdClientRegex">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"userPoolId">> => string()
%% }
-type cognito_user_pool_config() :: #{binary() => any()}.


%% Example:
%% api_key_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type api_key_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% cognito_config() :: #{
%%   <<"appIdClientRegex">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"userPoolId">> => string()
%% }
-type cognito_config() :: #{binary() => any()}.


%% Example:
%% create_domain_name_request() :: #{
%%   <<"certificateArn">> := string(),
%%   <<"description">> => string(),
%%   <<"domainName">> := string()
%% }
-type create_domain_name_request() :: #{binary() => any()}.


%% Example:
%% list_graphql_apis_request() :: #{
%%   <<"apiType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_graphql_apis_request() :: #{binary() => any()}.


%% Example:
%% get_api_association_response() :: #{
%%   <<"apiAssociation">> => api_association()
%% }
-type get_api_association_response() :: #{binary() => any()}.


%% Example:
%% create_api_cache_response() :: #{
%%   <<"apiCache">> => api_cache()
%% }
-type create_api_cache_response() :: #{binary() => any()}.


%% Example:
%% list_types_by_association_request() :: #{
%%   <<"format">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_types_by_association_request() :: #{binary() => any()}.


%% Example:
%% get_function_response() :: #{
%%   <<"functionConfiguration">> => function_configuration()
%% }
-type get_function_response() :: #{binary() => any()}.


%% Example:
%% update_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type update_data_source_response() :: #{binary() => any()}.


%% Example:
%% put_graphql_api_environment_variables_response() :: #{
%%   <<"environmentVariables">> => map()
%% }
-type put_graphql_api_environment_variables_response() :: #{binary() => any()}.


%% Example:
%% update_channel_namespace_request() :: #{
%%   <<"codeHandlers">> => string(),
%%   <<"publishAuthModes">> => list(auth_mode()()),
%%   <<"subscribeAuthModes">> => list(auth_mode()())
%% }
-type update_channel_namespace_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_type_request() :: #{
%%   <<"definition">> := string(),
%%   <<"format">> := list(any())
%% }
-type create_type_request() :: #{binary() => any()}.


%% Example:
%% event_log_config() :: #{
%%   <<"cloudWatchLogsRoleArn">> => string(),
%%   <<"logLevel">> => list(any())
%% }
-type event_log_config() :: #{binary() => any()}.


%% Example:
%% rds_http_endpoint_config() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"awsSecretStoreArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"dbClusterIdentifier">> => string(),
%%   <<"schema">> => string()
%% }
-type rds_http_endpoint_config() :: #{binary() => any()}.


%% Example:
%% list_apis_response() :: #{
%%   <<"apis">> => list(api()()),
%%   <<"nextToken">> => string()
%% }
-type list_apis_response() :: #{binary() => any()}.


%% Example:
%% evaluate_mapping_template_request() :: #{
%%   <<"context">> := string(),
%%   <<"template">> := string()
%% }
-type evaluate_mapping_template_request() :: #{binary() => any()}.


%% Example:
%% open_id_connect_config() :: #{
%%   <<"authTTL">> => float(),
%%   <<"clientId">> => string(),
%%   <<"iatTTL">> => float(),
%%   <<"issuer">> => string()
%% }
-type open_id_connect_config() :: #{binary() => any()}.


%% Example:
%% evaluate_mapping_template_response() :: #{
%%   <<"error">> => error_detail(),
%%   <<"evaluationResult">> => string(),
%%   <<"logs">> => list(string()())
%% }
-type evaluate_mapping_template_response() :: #{binary() => any()}.


%% Example:
%% list_resolvers_by_function_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resolvers">> => list(resolver()())
%% }
-type list_resolvers_by_function_response() :: #{binary() => any()}.


%% Example:
%% update_function_response() :: #{
%%   <<"functionConfiguration">> => function_configuration()
%% }
-type update_function_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_namespace_request() :: #{}
-type delete_channel_namespace_request() :: #{}.


%% Example:
%% auth_mode() :: #{
%%   <<"authType">> => list(any())
%% }
-type auth_mode() :: #{binary() => any()}.


%% Example:
%% update_graphql_api_response() :: #{
%%   <<"graphqlApi">> => graphql_api()
%% }
-type update_graphql_api_response() :: #{binary() => any()}.


%% Example:
%% create_api_cache_request() :: #{
%%   <<"apiCachingBehavior">> := list(any()),
%%   <<"atRestEncryptionEnabled">> => boolean(),
%%   <<"healthMetricsConfig">> => list(any()),
%%   <<"transitEncryptionEnabled">> => boolean(),
%%   <<"ttl">> := float(),
%%   <<"type">> := list(any())
%% }
-type create_api_cache_request() :: #{binary() => any()}.


%% Example:
%% update_api_key_response() :: #{
%%   <<"apiKey">> => api_key()
%% }
-type update_api_key_response() :: #{binary() => any()}.


%% Example:
%% graphql_api() :: #{
%%   <<"additionalAuthenticationProviders">> => list(additional_authentication_provider()()),
%%   <<"apiId">> => string(),
%%   <<"apiType">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"authenticationType">> => list(any()),
%%   <<"dns">> => map(),
%%   <<"enhancedMetricsConfig">> => enhanced_metrics_config(),
%%   <<"introspectionConfig">> => list(any()),
%%   <<"lambdaAuthorizerConfig">> => lambda_authorizer_config(),
%%   <<"logConfig">> => log_config(),
%%   <<"mergedApiExecutionRoleArn">> => string(),
%%   <<"name">> => string(),
%%   <<"openIDConnectConfig">> => open_id_connect_config(),
%%   <<"owner">> => string(),
%%   <<"ownerContact">> => string(),
%%   <<"queryDepthLimit">> => integer(),
%%   <<"resolverCountLimit">> => integer(),
%%   <<"tags">> => map(),
%%   <<"uris">> => map(),
%%   <<"userPoolConfig">> => user_pool_config(),
%%   <<"visibility">> => list(any()),
%%   <<"wafWebAclArn">> => string(),
%%   <<"xrayEnabled">> => boolean()
%% }
-type graphql_api() :: #{binary() => any()}.

%% Example:
%% get_api_cache_request() :: #{}
-type get_api_cache_request() :: #{}.

%% Example:
%% delete_graphql_api_request() :: #{}
-type delete_graphql_api_request() :: #{}.

%% Example:
%% get_api_association_request() :: #{}
-type get_api_association_request() :: #{}.


%% Example:
%% caching_config() :: #{
%%   <<"cachingKeys">> => list(string()()),
%%   <<"ttl">> => float()
%% }
-type caching_config() :: #{binary() => any()}.


%% Example:
%% authorization_config() :: #{
%%   <<"authorizationType">> => list(any()),
%%   <<"awsIamConfig">> => aws_iam_config()
%% }
-type authorization_config() :: #{binary() => any()}.


%% Example:
%% get_type_response() :: #{
%%   <<"type">> => type()
%% }
-type get_type_response() :: #{binary() => any()}.


%% Example:
%% list_data_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_request() :: #{binary() => any()}.


%% Example:
%% get_introspection_schema_response() :: #{
%%   <<"schema">> => binary()
%% }
-type get_introspection_schema_response() :: #{binary() => any()}.


%% Example:
%% create_channel_namespace_request() :: #{
%%   <<"codeHandlers">> => string(),
%%   <<"name">> := string(),
%%   <<"publishAuthModes">> => list(auth_mode()()),
%%   <<"subscribeAuthModes">> => list(auth_mode()()),
%%   <<"tags">> => map()
%% }
-type create_channel_namespace_request() :: #{binary() => any()}.

%% Example:
%% delete_data_source_response() :: #{}
-type delete_data_source_response() :: #{}.


%% Example:
%% delta_sync_config() :: #{
%%   <<"baseTableTTL">> => float(),
%%   <<"deltaSyncTableName">> => string(),
%%   <<"deltaSyncTableTTL">> => float()
%% }
-type delta_sync_config() :: #{binary() => any()}.


%% Example:
%% app_sync_runtime() :: #{
%%   <<"name">> => list(any()),
%%   <<"runtimeVersion">> => string()
%% }
-type app_sync_runtime() :: #{binary() => any()}.


%% Example:
%% associate_api_response() :: #{
%%   <<"apiAssociation">> => api_association()
%% }
-type associate_api_response() :: #{binary() => any()}.

%% Example:
%% get_function_request() :: #{}
-type get_function_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% update_resolver_request() :: #{
%%   <<"cachingConfig">> => caching_config(),
%%   <<"code">> => string(),
%%   <<"dataSourceName">> => string(),
%%   <<"kind">> => list(any()),
%%   <<"maxBatchSize">> => integer(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"pipelineConfig">> => pipeline_config(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config()
%% }
-type update_resolver_request() :: #{binary() => any()}.


%% Example:
%% user_pool_config() :: #{
%%   <<"appIdClientRegex">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"defaultAction">> => list(any()),
%%   <<"userPoolId">> => string()
%% }
-type user_pool_config() :: #{binary() => any()}.


%% Example:
%% get_api_response() :: #{
%%   <<"api">> => api()
%% }
-type get_api_response() :: #{binary() => any()}.


%% Example:
%% get_channel_namespace_response() :: #{
%%   <<"channelNamespace">> => channel_namespace()
%% }
-type get_channel_namespace_response() :: #{binary() => any()}.


%% Example:
%% put_graphql_api_environment_variables_request() :: #{
%%   <<"environmentVariables">> := map()
%% }
-type put_graphql_api_environment_variables_request() :: #{binary() => any()}.


%% Example:
%% create_resolver_request() :: #{
%%   <<"cachingConfig">> => caching_config(),
%%   <<"code">> => string(),
%%   <<"dataSourceName">> => string(),
%%   <<"fieldName">> := string(),
%%   <<"kind">> => list(any()),
%%   <<"maxBatchSize">> => integer(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"pipelineConfig">> => pipeline_config(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config()
%% }
-type create_resolver_request() :: #{binary() => any()}.


%% Example:
%% code_error() :: #{
%%   <<"errorType">> => string(),
%%   <<"location">> => code_error_location(),
%%   <<"value">> => string()
%% }
-type code_error() :: #{binary() => any()}.

%% Example:
%% delete_function_request() :: #{}
-type delete_function_request() :: #{}.


%% Example:
%% log_config() :: #{
%%   <<"cloudWatchLogsRoleArn">> => string(),
%%   <<"excludeVerboseContent">> => boolean(),
%%   <<"fieldLogLevel">> => list(any())
%% }
-type log_config() :: #{binary() => any()}.

%% Example:
%% get_data_source_request() :: #{}
-type get_data_source_request() :: #{}.


%% Example:
%% list_resolvers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resolvers">> => list(resolver()())
%% }
-type list_resolvers_response() :: #{binary() => any()}.


%% Example:
%% update_api_response() :: #{
%%   <<"api">> => api()
%% }
-type update_api_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_api_cache_response() :: #{
%%   <<"apiCache">> => api_cache()
%% }
-type get_api_cache_response() :: #{binary() => any()}.


%% Example:
%% disassociate_merged_graphql_api_response() :: #{
%%   <<"sourceApiAssociationStatus">> => list(any())
%% }
-type disassociate_merged_graphql_api_response() :: #{binary() => any()}.

%% Example:
%% disassociate_api_request() :: #{}
-type disassociate_api_request() :: #{}.


%% Example:
%% create_type_response() :: #{
%%   <<"type">> => type()
%% }
-type create_type_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_graphql_api_environment_variables_response() :: #{
%%   <<"environmentVariables">> => map()
%% }
-type get_graphql_api_environment_variables_response() :: #{binary() => any()}.


%% Example:
%% create_function_response() :: #{
%%   <<"functionConfiguration">> => function_configuration()
%% }
-type create_function_response() :: #{binary() => any()}.


%% Example:
%% enhanced_metrics_config() :: #{
%%   <<"dataSourceLevelMetricsBehavior">> => list(any()),
%%   <<"operationLevelMetricsConfig">> => list(any()),
%%   <<"resolverLevelMetricsBehavior">> => list(any())
%% }
-type enhanced_metrics_config() :: #{binary() => any()}.

%% Example:
%% delete_api_key_response() :: #{}
-type delete_api_key_response() :: #{}.


%% Example:
%% list_data_sources_response() :: #{
%%   <<"dataSources">> => list(data_source()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_response() :: #{binary() => any()}.

%% Example:
%% delete_data_source_request() :: #{}
-type delete_data_source_request() :: #{}.

%% Example:
%% delete_function_response() :: #{}
-type delete_function_response() :: #{}.


%% Example:
%% api_cache() :: #{
%%   <<"apiCachingBehavior">> => list(any()),
%%   <<"atRestEncryptionEnabled">> => boolean(),
%%   <<"healthMetricsConfig">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"transitEncryptionEnabled">> => boolean(),
%%   <<"ttl">> => float(),
%%   <<"type">> => list(any())
%% }
-type api_cache() :: #{binary() => any()}.


%% Example:
%% update_domain_name_response() :: #{
%%   <<"domainNameConfig">> => domain_name_config()
%% }
-type update_domain_name_response() :: #{binary() => any()}.

%% Example:
%% delete_resolver_request() :: #{}
-type delete_resolver_request() :: #{}.


%% Example:
%% get_data_source_introspection_response() :: #{
%%   <<"introspectionId">> => string(),
%%   <<"introspectionResult">> => data_source_introspection_result(),
%%   <<"introspectionStatus">> => list(any()),
%%   <<"introspectionStatusDetail">> => string()
%% }
-type get_data_source_introspection_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_source_api_association_request() :: #{}
-type get_source_api_association_request() :: #{}.


%% Example:
%% start_data_source_introspection_response() :: #{
%%   <<"introspectionId">> => string(),
%%   <<"introspectionStatus">> => list(any()),
%%   <<"introspectionStatusDetail">> => string()
%% }
-type start_data_source_introspection_response() :: #{binary() => any()}.


%% Example:
%% resolver() :: #{
%%   <<"cachingConfig">> => caching_config(),
%%   <<"code">> => string(),
%%   <<"dataSourceName">> => string(),
%%   <<"fieldName">> => string(),
%%   <<"kind">> => list(any()),
%%   <<"maxBatchSize">> => integer(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"pipelineConfig">> => pipeline_config(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"resolverArn">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config(),
%%   <<"typeName">> => string()
%% }
-type resolver() :: #{binary() => any()}.


%% Example:
%% list_domain_names_response() :: #{
%%   <<"domainNameConfigs">> => list(domain_name_config()()),
%%   <<"nextToken">> => string()
%% }
-type list_domain_names_response() :: #{binary() => any()}.


%% Example:
%% create_api_key_response() :: #{
%%   <<"apiKey">> => api_key()
%% }
-type create_api_key_response() :: #{binary() => any()}.


%% Example:
%% update_type_request() :: #{
%%   <<"definition">> => string(),
%%   <<"format">> := list(any())
%% }
-type update_type_request() :: #{binary() => any()}.


%% Example:
%% pipeline_config() :: #{
%%   <<"functions">> => list(string()())
%% }
-type pipeline_config() :: #{binary() => any()}.


%% Example:
%% update_domain_name_request() :: #{
%%   <<"description">> => string()
%% }
-type update_domain_name_request() :: #{binary() => any()}.


%% Example:
%% create_api_key_request() :: #{
%%   <<"description">> => string(),
%%   <<"expires">> => float()
%% }
-type create_api_key_request() :: #{binary() => any()}.


%% Example:
%% lambda_data_source_config() :: #{
%%   <<"lambdaFunctionArn">> => string()
%% }
-type lambda_data_source_config() :: #{binary() => any()}.


%% Example:
%% update_api_cache_request() :: #{
%%   <<"apiCachingBehavior">> := list(any()),
%%   <<"healthMetricsConfig">> => list(any()),
%%   <<"ttl">> := float(),
%%   <<"type">> := list(any())
%% }
-type update_api_cache_request() :: #{binary() => any()}.


%% Example:
%% event_config() :: #{
%%   <<"authProviders">> => list(auth_provider()()),
%%   <<"connectionAuthModes">> => list(auth_mode()()),
%%   <<"defaultPublishAuthModes">> => list(auth_mode()()),
%%   <<"defaultSubscribeAuthModes">> => list(auth_mode()()),
%%   <<"logConfig">> => event_log_config()
%% }
-type event_config() :: #{binary() => any()}.


%% Example:
%% list_functions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_functions_request() :: #{binary() => any()}.


%% Example:
%% api_association() :: #{
%%   <<"apiId">> => string(),
%%   <<"associationStatus">> => list(any()),
%%   <<"deploymentDetail">> => string(),
%%   <<"domainName">> => string()
%% }
-type api_association() :: #{binary() => any()}.


%% Example:
%% http_data_source_config() :: #{
%%   <<"authorizationConfig">> => authorization_config(),
%%   <<"endpoint">> => string()
%% }
-type http_data_source_config() :: #{binary() => any()}.


%% Example:
%% create_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type create_data_source_response() :: #{binary() => any()}.


%% Example:
%% start_schema_merge_response() :: #{
%%   <<"sourceApiAssociationStatus">> => list(any())
%% }
-type start_schema_merge_response() :: #{binary() => any()}.

%% Example:
%% delete_api_cache_request() :: #{}
-type delete_api_cache_request() :: #{}.


%% Example:
%% create_channel_namespace_response() :: #{
%%   <<"channelNamespace">> => channel_namespace()
%% }
-type create_channel_namespace_response() :: #{binary() => any()}.

%% Example:
%% start_schema_merge_request() :: #{}
-type start_schema_merge_request() :: #{}.


%% Example:
%% rds_data_api_config() :: #{
%%   <<"databaseName">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"secretArn">> => string()
%% }
-type rds_data_api_config() :: #{binary() => any()}.

%% Example:
%% delete_channel_namespace_response() :: #{}
-type delete_channel_namespace_response() :: #{}.


%% Example:
%% list_apis_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_apis_request() :: #{binary() => any()}.


%% Example:
%% auth_provider() :: #{
%%   <<"authType">> => list(any()),
%%   <<"cognitoConfig">> => cognito_config(),
%%   <<"lambdaAuthorizerConfig">> => lambda_authorizer_config(),
%%   <<"openIDConnectConfig">> => open_id_connect_config()
%% }
-type auth_provider() :: #{binary() => any()}.


%% Example:
%% aws_iam_config() :: #{
%%   <<"signingRegion">> => string(),
%%   <<"signingServiceName">> => string()
%% }
-type aws_iam_config() :: #{binary() => any()}.

%% Example:
%% get_schema_creation_status_request() :: #{}
-type get_schema_creation_status_request() :: #{}.


%% Example:
%% error_detail() :: #{
%%   <<"message">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% channel_namespace() :: #{
%%   <<"apiId">> => string(),
%%   <<"channelNamespaceArn">> => string(),
%%   <<"codeHandlers">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"publishAuthModes">> => list(auth_mode()()),
%%   <<"subscribeAuthModes">> => list(auth_mode()()),
%%   <<"tags">> => map()
%% }
-type channel_namespace() :: #{binary() => any()}.


%% Example:
%% disassociate_source_graphql_api_response() :: #{
%%   <<"sourceApiAssociationStatus">> => list(any())
%% }
-type disassociate_source_graphql_api_response() :: #{binary() => any()}.


%% Example:
%% get_resolver_response() :: #{
%%   <<"resolver">> => resolver()
%% }
-type get_resolver_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% source_api_association() :: #{
%%   <<"associationArn">> => string(),
%%   <<"associationId">> => string(),
%%   <<"description">> => string(),
%%   <<"lastSuccessfulMergeDate">> => non_neg_integer(),
%%   <<"mergedApiArn">> => string(),
%%   <<"mergedApiId">> => string(),
%%   <<"sourceApiArn">> => string(),
%%   <<"sourceApiAssociationConfig">> => source_api_association_config(),
%%   <<"sourceApiAssociationStatus">> => list(any()),
%%   <<"sourceApiAssociationStatusDetail">> => string(),
%%   <<"sourceApiId">> => string()
%% }
-type source_api_association() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_domain_name_request() :: #{}
-type get_domain_name_request() :: #{}.


%% Example:
%% associate_api_request() :: #{
%%   <<"apiId">> := string()
%% }
-type associate_api_request() :: #{binary() => any()}.


%% Example:
%% get_graphql_api_response() :: #{
%%   <<"graphqlApi">> => graphql_api()
%% }
-type get_graphql_api_response() :: #{binary() => any()}.

%% Example:
%% delete_resolver_response() :: #{}
-type delete_resolver_response() :: #{}.

%% Example:
%% delete_api_key_request() :: #{}
-type delete_api_key_request() :: #{}.


%% Example:
%% source_api_association_summary() :: #{
%%   <<"associationArn">> => string(),
%%   <<"associationId">> => string(),
%%   <<"description">> => string(),
%%   <<"mergedApiArn">> => string(),
%%   <<"mergedApiId">> => string(),
%%   <<"sourceApiArn">> => string(),
%%   <<"sourceApiId">> => string()
%% }
-type source_api_association_summary() :: #{binary() => any()}.


%% Example:
%% update_api_request() :: #{
%%   <<"eventConfig">> => event_config(),
%%   <<"name">> := string(),
%%   <<"ownerContact">> => string()
%% }
-type update_api_request() :: #{binary() => any()}.


%% Example:
%% domain_name_config() :: #{
%%   <<"appsyncDomainName">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"hostedZoneId">> => string()
%% }
-type domain_name_config() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% list_types_by_association_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"types">> => list(type()())
%% }
-type list_types_by_association_response() :: #{binary() => any()}.


%% Example:
%% start_schema_creation_response() :: #{
%%   <<"status">> => list(any())
%% }
-type start_schema_creation_response() :: #{binary() => any()}.

%% Example:
%% disassociate_merged_graphql_api_request() :: #{}
-type disassociate_merged_graphql_api_request() :: #{}.


%% Example:
%% start_schema_creation_request() :: #{
%%   <<"definition">> := binary()
%% }
-type start_schema_creation_request() :: #{binary() => any()}.


%% Example:
%% list_channel_namespaces_response() :: #{
%%   <<"channelNamespaces">> => list(channel_namespace()()),
%%   <<"nextToken">> => string()
%% }
-type list_channel_namespaces_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% api_key_validity_out_of_bounds_exception() :: #{
%%   <<"message">> => string()
%% }
-type api_key_validity_out_of_bounds_exception() :: #{binary() => any()}.


%% Example:
%% function_configuration() :: #{
%%   <<"code">> => string(),
%%   <<"dataSourceName">> => string(),
%%   <<"description">> => string(),
%%   <<"functionArn">> => string(),
%%   <<"functionId">> => string(),
%%   <<"functionVersion">> => string(),
%%   <<"maxBatchSize">> => integer(),
%%   <<"name">> => string(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config()
%% }
-type function_configuration() :: #{binary() => any()}.


%% Example:
%% elasticsearch_data_source_config() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"endpoint">> => string()
%% }
-type elasticsearch_data_source_config() :: #{binary() => any()}.


%% Example:
%% list_api_keys_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_api_keys_request() :: #{binary() => any()}.


%% Example:
%% relational_database_data_source_config() :: #{
%%   <<"rdsHttpEndpointConfig">> => rds_http_endpoint_config(),
%%   <<"relationalDatabaseSourceType">> => list(any())
%% }
-type relational_database_data_source_config() :: #{binary() => any()}.


%% Example:
%% open_search_service_data_source_config() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"endpoint">> => string()
%% }
-type open_search_service_data_source_config() :: #{binary() => any()}.


%% Example:
%% update_data_source_request() :: #{
%%   <<"description">> => string(),
%%   <<"dynamodbConfig">> => dynamodb_data_source_config(),
%%   <<"elasticsearchConfig">> => elasticsearch_data_source_config(),
%%   <<"eventBridgeConfig">> => event_bridge_data_source_config(),
%%   <<"httpConfig">> => http_data_source_config(),
%%   <<"lambdaConfig">> => lambda_data_source_config(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"openSearchServiceConfig">> => open_search_service_data_source_config(),
%%   <<"relationalDatabaseConfig">> => relational_database_data_source_config(),
%%   <<"serviceRoleArn">> => string(),
%%   <<"type">> := list(any())
%% }
-type update_data_source_request() :: #{binary() => any()}.

%% Example:
%% flush_api_cache_response() :: #{}
-type flush_api_cache_response() :: #{}.


%% Example:
%% create_api_request() :: #{
%%   <<"eventConfig">> => event_config(),
%%   <<"name">> := string(),
%%   <<"ownerContact">> => string(),
%%   <<"tags">> => map()
%% }
-type create_api_request() :: #{binary() => any()}.

%% Example:
%% delete_api_cache_response() :: #{}
-type delete_api_cache_response() :: #{}.


%% Example:
%% associate_source_graphql_api_request() :: #{
%%   <<"description">> => string(),
%%   <<"sourceApiAssociationConfig">> => source_api_association_config(),
%%   <<"sourceApiIdentifier">> := string()
%% }
-type associate_source_graphql_api_request() :: #{binary() => any()}.


%% Example:
%% type() :: #{
%%   <<"arn">> => string(),
%%   <<"definition">> => string(),
%%   <<"description">> => string(),
%%   <<"format">> => list(any()),
%%   <<"name">> => string()
%% }
-type type() :: #{binary() => any()}.


%% Example:
%% data_source_introspection_model() :: #{
%%   <<"fields">> => list(data_source_introspection_model_field()()),
%%   <<"indexes">> => list(data_source_introspection_model_index()()),
%%   <<"name">> => string(),
%%   <<"primaryKey">> => data_source_introspection_model_index(),
%%   <<"sdl">> => string()
%% }
-type data_source_introspection_model() :: #{binary() => any()}.


%% Example:
%% api() :: #{
%%   <<"apiArn">> => string(),
%%   <<"apiId">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"dns">> => map(),
%%   <<"eventConfig">> => event_config(),
%%   <<"name">> => string(),
%%   <<"ownerContact">> => string(),
%%   <<"tags">> => map(),
%%   <<"wafWebAclArn">> => string(),
%%   <<"xrayEnabled">> => boolean()
%% }
-type api() :: #{binary() => any()}.


%% Example:
%% update_channel_namespace_response() :: #{
%%   <<"channelNamespace">> => channel_namespace()
%% }
-type update_channel_namespace_response() :: #{binary() => any()}.


%% Example:
%% create_graphql_api_response() :: #{
%%   <<"graphqlApi">> => graphql_api()
%% }
-type create_graphql_api_response() :: #{binary() => any()}.


%% Example:
%% data_source_introspection_result() :: #{
%%   <<"models">> => list(data_source_introspection_model()()),
%%   <<"nextToken">> => string()
%% }
-type data_source_introspection_result() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% evaluate_code_request() :: #{
%%   <<"code">> := string(),
%%   <<"context">> := string(),
%%   <<"function">> => string(),
%%   <<"runtime">> := app_sync_runtime()
%% }
-type evaluate_code_request() :: #{binary() => any()}.


%% Example:
%% associate_source_graphql_api_response() :: #{
%%   <<"sourceApiAssociation">> => source_api_association()
%% }
-type associate_source_graphql_api_response() :: #{binary() => any()}.

%% Example:
%% delete_domain_name_request() :: #{}
-type delete_domain_name_request() :: #{}.


%% Example:
%% source_api_association_config() :: #{
%%   <<"mergeType">> => list(any())
%% }
-type source_api_association_config() :: #{binary() => any()}.


%% Example:
%% event_bridge_data_source_config() :: #{
%%   <<"eventBusArn">> => string()
%% }
-type event_bridge_data_source_config() :: #{binary() => any()}.


%% Example:
%% update_type_response() :: #{
%%   <<"type">> => type()
%% }
-type update_type_response() :: #{binary() => any()}.


%% Example:
%% create_domain_name_response() :: #{
%%   <<"domainNameConfig">> => domain_name_config()
%% }
-type create_domain_name_response() :: #{binary() => any()}.


%% Example:
%% update_source_api_association_response() :: #{
%%   <<"sourceApiAssociation">> => source_api_association()
%% }
-type update_source_api_association_response() :: #{binary() => any()}.


%% Example:
%% update_function_request() :: #{
%%   <<"code">> => string(),
%%   <<"dataSourceName">> := string(),
%%   <<"description">> => string(),
%%   <<"functionVersion">> => string(),
%%   <<"maxBatchSize">> => integer(),
%%   <<"name">> := string(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config()
%% }
-type update_function_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"detail">> => bad_request_detail(),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% update_graphql_api_request() :: #{
%%   <<"additionalAuthenticationProviders">> => list(additional_authentication_provider()()),
%%   <<"authenticationType">> := list(any()),
%%   <<"enhancedMetricsConfig">> => enhanced_metrics_config(),
%%   <<"introspectionConfig">> => list(any()),
%%   <<"lambdaAuthorizerConfig">> => lambda_authorizer_config(),
%%   <<"logConfig">> => log_config(),
%%   <<"mergedApiExecutionRoleArn">> => string(),
%%   <<"name">> := string(),
%%   <<"openIDConnectConfig">> => open_id_connect_config(),
%%   <<"ownerContact">> => string(),
%%   <<"queryDepthLimit">> => integer(),
%%   <<"resolverCountLimit">> => integer(),
%%   <<"userPoolConfig">> => user_pool_config(),
%%   <<"xrayEnabled">> => boolean()
%% }
-type update_graphql_api_request() :: #{binary() => any()}.


%% Example:
%% update_api_cache_response() :: #{
%%   <<"apiCache">> => api_cache()
%% }
-type update_api_cache_response() :: #{binary() => any()}.


%% Example:
%% create_resolver_response() :: #{
%%   <<"resolver">> => resolver()
%% }
-type create_resolver_response() :: #{binary() => any()}.


%% Example:
%% get_introspection_schema_request() :: #{
%%   <<"format">> := list(any()),
%%   <<"includeDirectives">> => boolean()
%% }
-type get_introspection_schema_request() :: #{binary() => any()}.


%% Example:
%% create_function_request() :: #{
%%   <<"code">> => string(),
%%   <<"dataSourceName">> := string(),
%%   <<"description">> => string(),
%%   <<"functionVersion">> => string(),
%%   <<"maxBatchSize">> => integer(),
%%   <<"name">> := string(),
%%   <<"requestMappingTemplate">> => string(),
%%   <<"responseMappingTemplate">> => string(),
%%   <<"runtime">> => app_sync_runtime(),
%%   <<"syncConfig">> => sync_config()
%% }
-type create_function_request() :: #{binary() => any()}.


%% Example:
%% bad_request_detail() :: #{
%%   <<"codeErrors">> => list(code_error()())
%% }
-type bad_request_detail() :: #{binary() => any()}.

%% Example:
%% get_graphql_api_request() :: #{}
-type get_graphql_api_request() :: #{}.


%% Example:
%% update_source_api_association_request() :: #{
%%   <<"description">> => string(),
%%   <<"sourceApiAssociationConfig">> => source_api_association_config()
%% }
-type update_source_api_association_request() :: #{binary() => any()}.

%% Example:
%% get_graphql_api_environment_variables_request() :: #{}
-type get_graphql_api_environment_variables_request() :: #{}.

%% Example:
%% disassociate_api_response() :: #{}
-type disassociate_api_response() :: #{}.


%% Example:
%% data_source() :: #{
%%   <<"dataSourceArn">> => string(),
%%   <<"description">> => string(),
%%   <<"dynamodbConfig">> => dynamodb_data_source_config(),
%%   <<"elasticsearchConfig">> => elasticsearch_data_source_config(),
%%   <<"eventBridgeConfig">> => event_bridge_data_source_config(),
%%   <<"httpConfig">> => http_data_source_config(),
%%   <<"lambdaConfig">> => lambda_data_source_config(),
%%   <<"metricsConfig">> => list(any()),
%%   <<"name">> => string(),
%%   <<"openSearchServiceConfig">> => open_search_service_data_source_config(),
%%   <<"relationalDatabaseConfig">> => relational_database_data_source_config(),
%%   <<"serviceRoleArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% sync_config() :: #{
%%   <<"conflictDetection">> => list(any()),
%%   <<"conflictHandler">> => list(any()),
%%   <<"lambdaConflictHandlerConfig">> => lambda_conflict_handler_config()
%% }
-type sync_config() :: #{binary() => any()}.


%% Example:
%% data_source_introspection_model_field_type() :: #{
%%   <<"kind">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => data_source_introspection_model_field_type(),
%%   <<"values">> => list(string()())
%% }
-type data_source_introspection_model_field_type() :: #{binary() => any()}.


%% Example:
%% create_graphql_api_request() :: #{
%%   <<"additionalAuthenticationProviders">> => list(additional_authentication_provider()()),
%%   <<"apiType">> => list(any()),
%%   <<"authenticationType">> := list(any()),
%%   <<"enhancedMetricsConfig">> => enhanced_metrics_config(),
%%   <<"introspectionConfig">> => list(any()),
%%   <<"lambdaAuthorizerConfig">> => lambda_authorizer_config(),
%%   <<"logConfig">> => log_config(),
%%   <<"mergedApiExecutionRoleArn">> => string(),
%%   <<"name">> := string(),
%%   <<"openIDConnectConfig">> => open_id_connect_config(),
%%   <<"ownerContact">> => string(),
%%   <<"queryDepthLimit">> => integer(),
%%   <<"resolverCountLimit">> => integer(),
%%   <<"tags">> => map(),
%%   <<"userPoolConfig">> => user_pool_config(),
%%   <<"visibility">> => list(any()),
%%   <<"xrayEnabled">> => boolean()
%% }
-type create_graphql_api_request() :: #{binary() => any()}.


%% Example:
%% api_key() :: #{
%%   <<"deletes">> => float(),
%%   <<"description">> => string(),
%%   <<"expires">> => float(),
%%   <<"id">> => string()
%% }
-type api_key() :: #{binary() => any()}.


%% Example:
%% start_data_source_introspection_request() :: #{
%%   <<"rdsDataApiConfig">> => rds_data_api_config()
%% }
-type start_data_source_introspection_request() :: #{binary() => any()}.


%% Example:
%% get_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type get_data_source_response() :: #{binary() => any()}.


%% Example:
%% dynamodb_data_source_config() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"deltaSyncConfig">> => delta_sync_config(),
%%   <<"tableName">> => string(),
%%   <<"useCallerCredentials">> => boolean(),
%%   <<"versioned">> => boolean()
%% }
-type dynamodb_data_source_config() :: #{binary() => any()}.


%% Example:
%% list_types_request() :: #{
%%   <<"format">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_types_request() :: #{binary() => any()}.

%% Example:
%% get_api_request() :: #{}
-type get_api_request() :: #{}.


%% Example:
%% graph_q_l_schema_exception() :: #{
%%   <<"message">> => string()
%% }
-type graph_q_l_schema_exception() :: #{binary() => any()}.


%% Example:
%% get_domain_name_response() :: #{
%%   <<"domainNameConfig">> => domain_name_config()
%% }
-type get_domain_name_response() :: #{binary() => any()}.


%% Example:
%% get_data_source_introspection_request() :: #{
%%   <<"includeModelsSDL">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_data_source_introspection_request() :: #{binary() => any()}.


%% Example:
%% associate_merged_graphql_api_request() :: #{
%%   <<"description">> => string(),
%%   <<"mergedApiIdentifier">> := string(),
%%   <<"sourceApiAssociationConfig">> => source_api_association_config()
%% }
-type associate_merged_graphql_api_request() :: #{binary() => any()}.

%% Example:
%% delete_api_request() :: #{}
-type delete_api_request() :: #{}.

%% Example:
%% delete_api_response() :: #{}
-type delete_api_response() :: #{}.

-type associate_api_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type associate_merged_graphql_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type associate_source_graphql_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    service_quota_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_api_cache_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_api_key_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    api_key_validity_out_of_bounds_exception() | 
    not_found_exception() | 
    api_key_limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_channel_namespace_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_data_source_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_domain_name_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    internal_failure_exception().

-type create_function_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_graphql_api_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    api_limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_resolver_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_type_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_api_cache_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_api_key_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_channel_namespace_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_data_source_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_domain_name_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type delete_function_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_graphql_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_resolver_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_type_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type disassociate_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type disassociate_merged_graphql_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type disassociate_source_graphql_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type evaluate_code_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    internal_failure_exception().

-type evaluate_mapping_template_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    internal_failure_exception().

-type flush_api_cache_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_api_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_api_association_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_api_cache_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_channel_namespace_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_data_source_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_data_source_introspection_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_domain_name_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_function_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception().

-type get_graphql_api_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_graphql_api_environment_variables_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_introspection_schema_errors() ::
    graph_q_l_schema_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_resolver_errors() ::
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception().

-type get_schema_creation_status_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_source_api_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_type_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_api_keys_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_apis_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_channel_namespaces_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_data_sources_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_domain_names_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    internal_failure_exception().

-type list_functions_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_graphql_apis_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_resolvers_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_resolvers_by_function_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_source_api_associations_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_types_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_types_by_association_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type put_graphql_api_environment_variables_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type start_data_source_introspection_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type start_schema_creation_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type start_schema_merge_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_api_cache_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_api_key_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    api_key_validity_out_of_bounds_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_channel_namespace_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_data_source_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_domain_name_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type update_function_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_graphql_api_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_resolver_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_source_api_association_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_type_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Maps an endpoint to your custom domain.
-spec associate_api(aws_client:aws_client(), binary() | list(), associate_api_request()) ->
    {ok, associate_api_response(), tuple()} |
    {error, any()} |
    {error, associate_api_errors(), tuple()}.
associate_api(Client, DomainName, Input) ->
    associate_api(Client, DomainName, Input, []).

-spec associate_api(aws_client:aws_client(), binary() | list(), associate_api_request(), proplists:proplist()) ->
    {ok, associate_api_response(), tuple()} |
    {error, any()} |
    {error, associate_api_errors(), tuple()}.
associate_api(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
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

%% @doc Creates an association between a Merged API and source API using the
%% source API's
%% identifier.
-spec associate_merged_graphql_api(aws_client:aws_client(), binary() | list(), associate_merged_graphql_api_request()) ->
    {ok, associate_merged_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, associate_merged_graphql_api_errors(), tuple()}.
associate_merged_graphql_api(Client, SourceApiIdentifier, Input) ->
    associate_merged_graphql_api(Client, SourceApiIdentifier, Input, []).

-spec associate_merged_graphql_api(aws_client:aws_client(), binary() | list(), associate_merged_graphql_api_request(), proplists:proplist()) ->
    {ok, associate_merged_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, associate_merged_graphql_api_errors(), tuple()}.
associate_merged_graphql_api(Client, SourceApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sourceApis/", aws_util:encode_uri(SourceApiIdentifier), "/mergedApiAssociations"],
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

%% @doc Creates an association between a Merged API and source API using the
%% Merged API's
%% identifier.
-spec associate_source_graphql_api(aws_client:aws_client(), binary() | list(), associate_source_graphql_api_request()) ->
    {ok, associate_source_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, associate_source_graphql_api_errors(), tuple()}.
associate_source_graphql_api(Client, MergedApiIdentifier, Input) ->
    associate_source_graphql_api(Client, MergedApiIdentifier, Input, []).

-spec associate_source_graphql_api(aws_client:aws_client(), binary() | list(), associate_source_graphql_api_request(), proplists:proplist()) ->
    {ok, associate_source_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, associate_source_graphql_api_errors(), tuple()}.
associate_source_graphql_api(Client, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations"],
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

%% @doc Creates an `Api' object.
%%
%% Use this operation to create an AppSync
%% API with your preferred configuration, such as an Event API that provides
%% real-time message
%% publishing and message subscriptions over WebSockets.
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

%% @doc Creates a cache for the GraphQL API.
-spec create_api_cache(aws_client:aws_client(), binary() | list(), create_api_cache_request()) ->
    {ok, create_api_cache_response(), tuple()} |
    {error, any()} |
    {error, create_api_cache_errors(), tuple()}.
create_api_cache(Client, ApiId, Input) ->
    create_api_cache(Client, ApiId, Input, []).

-spec create_api_cache(aws_client:aws_client(), binary() | list(), create_api_cache_request(), proplists:proplist()) ->
    {ok, create_api_cache_response(), tuple()} |
    {error, any()} |
    {error, create_api_cache_errors(), tuple()}.
create_api_cache(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
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

%% @doc Creates a unique key that you can distribute to clients who invoke
%% your API.
-spec create_api_key(aws_client:aws_client(), binary() | list(), create_api_key_request()) ->
    {ok, create_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, ApiId, Input) ->
    create_api_key(Client, ApiId, Input, []).

-spec create_api_key(aws_client:aws_client(), binary() | list(), create_api_key_request(), proplists:proplist()) ->
    {ok, create_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys"],
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

%% @doc Creates a `ChannelNamespace' for an `Api'.
-spec create_channel_namespace(aws_client:aws_client(), binary() | list(), create_channel_namespace_request()) ->
    {ok, create_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_channel_namespace_errors(), tuple()}.
create_channel_namespace(Client, ApiId, Input) ->
    create_channel_namespace(Client, ApiId, Input, []).

-spec create_channel_namespace(aws_client:aws_client(), binary() | list(), create_channel_namespace_request(), proplists:proplist()) ->
    {ok, create_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_channel_namespace_errors(), tuple()}.
create_channel_namespace(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/channelNamespaces"],
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

%% @doc Creates a `DataSource' object.
-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, ApiId, Input) ->
    create_data_source(Client, ApiId, Input, []).

-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request(), proplists:proplist()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources"],
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

%% @doc Creates a custom `DomainName' object.
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
    Path = ["/v1/domainnames"],
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

%% @doc Creates a `Function' object.
%%
%% A function is a reusable entity. You can use multiple functions to compose
%% the resolver
%% logic.
-spec create_function(aws_client:aws_client(), binary() | list(), create_function_request()) ->
    {ok, create_function_response(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, ApiId, Input) ->
    create_function(Client, ApiId, Input, []).

-spec create_function(aws_client:aws_client(), binary() | list(), create_function_request(), proplists:proplist()) ->
    {ok, create_function_response(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions"],
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

%% @doc Creates a `GraphqlApi' object.
-spec create_graphql_api(aws_client:aws_client(), create_graphql_api_request()) ->
    {ok, create_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, create_graphql_api_errors(), tuple()}.
create_graphql_api(Client, Input) ->
    create_graphql_api(Client, Input, []).

-spec create_graphql_api(aws_client:aws_client(), create_graphql_api_request(), proplists:proplist()) ->
    {ok, create_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, create_graphql_api_errors(), tuple()}.
create_graphql_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis"],
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

%% @doc Creates a `Resolver' object.
%%
%% A resolver converts incoming requests into a format that a data source can
%% understand,
%% and converts the data source's responses into GraphQL.
-spec create_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), create_resolver_request()) ->
    {ok, create_resolver_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_errors(), tuple()}.
create_resolver(Client, ApiId, TypeName, Input) ->
    create_resolver(Client, ApiId, TypeName, Input, []).

-spec create_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), create_resolver_request(), proplists:proplist()) ->
    {ok, create_resolver_response(), tuple()} |
    {error, any()} |
    {error, create_resolver_errors(), tuple()}.
create_resolver(Client, ApiId, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers"],
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

%% @doc Creates a `Type' object.
-spec create_type(aws_client:aws_client(), binary() | list(), create_type_request()) ->
    {ok, create_type_response(), tuple()} |
    {error, any()} |
    {error, create_type_errors(), tuple()}.
create_type(Client, ApiId, Input) ->
    create_type(Client, ApiId, Input, []).

-spec create_type(aws_client:aws_client(), binary() | list(), create_type_request(), proplists:proplist()) ->
    {ok, create_type_response(), tuple()} |
    {error, any()} |
    {error, create_type_errors(), tuple()}.
create_type(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types"],
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

%% @doc Deletes an `Api' object
-spec delete_api(aws_client:aws_client(), binary() | list(), delete_api_request()) ->
    {ok, delete_api_response(), tuple()} |
    {error, any()} |
    {error, delete_api_errors(), tuple()}.
delete_api(Client, ApiId, Input) ->
    delete_api(Client, ApiId, Input, []).

-spec delete_api(aws_client:aws_client(), binary() | list(), delete_api_request(), proplists:proplist()) ->
    {ok, delete_api_response(), tuple()} |
    {error, any()} |
    {error, delete_api_errors(), tuple()}.
delete_api(Client, ApiId, Input0, Options0) ->
    Method = delete,
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

%% @doc Deletes an `ApiCache' object.
-spec delete_api_cache(aws_client:aws_client(), binary() | list(), delete_api_cache_request()) ->
    {ok, delete_api_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_api_cache_errors(), tuple()}.
delete_api_cache(Client, ApiId, Input) ->
    delete_api_cache(Client, ApiId, Input, []).

-spec delete_api_cache(aws_client:aws_client(), binary() | list(), delete_api_cache_request(), proplists:proplist()) ->
    {ok, delete_api_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_api_cache_errors(), tuple()}.
delete_api_cache(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
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

%% @doc Deletes an API key.
-spec delete_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_api_key_request()) ->
    {ok, delete_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, ApiId, Id, Input) ->
    delete_api_key(Client, ApiId, Id, Input, []).

-spec delete_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_api_key_request(), proplists:proplist()) ->
    {ok, delete_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, ApiId, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a `ChannelNamespace'.
-spec delete_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_namespace_request()) ->
    {ok, delete_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_namespace_errors(), tuple()}.
delete_channel_namespace(Client, ApiId, Name, Input) ->
    delete_channel_namespace(Client, ApiId, Name, Input, []).

-spec delete_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_namespace_request(), proplists:proplist()) ->
    {ok, delete_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_namespace_errors(), tuple()}.
delete_channel_namespace(Client, ApiId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/channelNamespaces/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a `DataSource' object.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, ApiId, Name, Input) ->
    delete_data_source(Client, ApiId, Name, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request(), proplists:proplist()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, ApiId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a custom `DomainName' object.
-spec delete_domain_name(aws_client:aws_client(), binary() | list(), delete_domain_name_request()) ->
    {ok, delete_domain_name_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_name_errors(), tuple()}.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).

-spec delete_domain_name(aws_client:aws_client(), binary() | list(), delete_domain_name_request(), proplists:proplist()) ->
    {ok, delete_domain_name_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_name_errors(), tuple()}.
delete_domain_name(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes a `Function'.
-spec delete_function(aws_client:aws_client(), binary() | list(), binary() | list(), delete_function_request()) ->
    {ok, delete_function_response(), tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, ApiId, FunctionId, Input) ->
    delete_function(Client, ApiId, FunctionId, Input, []).

-spec delete_function(aws_client:aws_client(), binary() | list(), binary() | list(), delete_function_request(), proplists:proplist()) ->
    {ok, delete_function_response(), tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, ApiId, FunctionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
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

%% @doc Deletes a `GraphqlApi' object.
-spec delete_graphql_api(aws_client:aws_client(), binary() | list(), delete_graphql_api_request()) ->
    {ok, delete_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, delete_graphql_api_errors(), tuple()}.
delete_graphql_api(Client, ApiId, Input) ->
    delete_graphql_api(Client, ApiId, Input, []).

-spec delete_graphql_api(aws_client:aws_client(), binary() | list(), delete_graphql_api_request(), proplists:proplist()) ->
    {ok, delete_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, delete_graphql_api_errors(), tuple()}.
delete_graphql_api(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
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

%% @doc Deletes a `Resolver' object.
-spec delete_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_resolver_request()) ->
    {ok, delete_resolver_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_errors(), tuple()}.
delete_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    delete_resolver(Client, ApiId, FieldName, TypeName, Input, []).

-spec delete_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_resolver_request(), proplists:proplist()) ->
    {ok, delete_resolver_response(), tuple()} |
    {error, any()} |
    {error, delete_resolver_errors(), tuple()}.
delete_resolver(Client, ApiId, FieldName, TypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
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

%% @doc Deletes a `Type' object.
-spec delete_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_type_request()) ->
    {ok, delete_type_response(), tuple()} |
    {error, any()} |
    {error, delete_type_errors(), tuple()}.
delete_type(Client, ApiId, TypeName, Input) ->
    delete_type(Client, ApiId, TypeName, Input, []).

-spec delete_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_type_request(), proplists:proplist()) ->
    {ok, delete_type_response(), tuple()} |
    {error, any()} |
    {error, delete_type_errors(), tuple()}.
delete_type(Client, ApiId, TypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
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

%% @doc Removes an `ApiAssociation' object from a custom domain.
-spec disassociate_api(aws_client:aws_client(), binary() | list(), disassociate_api_request()) ->
    {ok, disassociate_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_api_errors(), tuple()}.
disassociate_api(Client, DomainName, Input) ->
    disassociate_api(Client, DomainName, Input, []).

-spec disassociate_api(aws_client:aws_client(), binary() | list(), disassociate_api_request(), proplists:proplist()) ->
    {ok, disassociate_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_api_errors(), tuple()}.
disassociate_api(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
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

%% @doc Deletes an association between a Merged API and source API using the
%% source API's
%% identifier and the association ID.
-spec disassociate_merged_graphql_api(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_merged_graphql_api_request()) ->
    {ok, disassociate_merged_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_merged_graphql_api_errors(), tuple()}.
disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input) ->
    disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input, []).

-spec disassociate_merged_graphql_api(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_merged_graphql_api_request(), proplists:proplist()) ->
    {ok, disassociate_merged_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_merged_graphql_api_errors(), tuple()}.
disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sourceApis/", aws_util:encode_uri(SourceApiIdentifier), "/mergedApiAssociations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Deletes an association between a Merged API and source API using the
%% Merged API's
%% identifier and the association ID.
-spec disassociate_source_graphql_api(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_source_graphql_api_request()) ->
    {ok, disassociate_source_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_graphql_api_errors(), tuple()}.
disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input) ->
    disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input, []).

-spec disassociate_source_graphql_api(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_source_graphql_api_request(), proplists:proplist()) ->
    {ok, disassociate_source_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_graphql_api_errors(), tuple()}.
disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Evaluates the given code and returns the response.
%%
%% The code definition requirements
%% depend on the specified runtime. For `APPSYNC_JS' runtimes, the code
%% defines the
%% request and response functions. The request function takes the incoming
%% request after a
%% GraphQL operation is parsed and converts it into a request configuration
%% for the selected
%% data source operation. The response function interprets responses from the
%% data source and
%% maps it to the shape of the GraphQL field output type.
-spec evaluate_code(aws_client:aws_client(), evaluate_code_request()) ->
    {ok, evaluate_code_response(), tuple()} |
    {error, any()} |
    {error, evaluate_code_errors(), tuple()}.
evaluate_code(Client, Input) ->
    evaluate_code(Client, Input, []).

-spec evaluate_code(aws_client:aws_client(), evaluate_code_request(), proplists:proplist()) ->
    {ok, evaluate_code_response(), tuple()} |
    {error, any()} |
    {error, evaluate_code_errors(), tuple()}.
evaluate_code(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/dataplane-evaluatecode"],
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

%% @doc Evaluates a given template and returns the response.
%%
%% The mapping template can be a
%% request or response template.
%%
%% Request templates take the incoming request after a GraphQL operation is
%% parsed and
%% convert it into a request configuration for the selected data source
%% operation. Response
%% templates interpret responses from the data source and map it to the shape
%% of the GraphQL
%% field output type.
%%
%% Mapping templates are written in the Apache Velocity Template Language
%% (VTL).
-spec evaluate_mapping_template(aws_client:aws_client(), evaluate_mapping_template_request()) ->
    {ok, evaluate_mapping_template_response(), tuple()} |
    {error, any()} |
    {error, evaluate_mapping_template_errors(), tuple()}.
evaluate_mapping_template(Client, Input) ->
    evaluate_mapping_template(Client, Input, []).

-spec evaluate_mapping_template(aws_client:aws_client(), evaluate_mapping_template_request(), proplists:proplist()) ->
    {ok, evaluate_mapping_template_response(), tuple()} |
    {error, any()} |
    {error, evaluate_mapping_template_errors(), tuple()}.
evaluate_mapping_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/dataplane-evaluatetemplate"],
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

%% @doc Flushes an `ApiCache' object.
-spec flush_api_cache(aws_client:aws_client(), binary() | list(), flush_api_cache_request()) ->
    {ok, flush_api_cache_response(), tuple()} |
    {error, any()} |
    {error, flush_api_cache_errors(), tuple()}.
flush_api_cache(Client, ApiId, Input) ->
    flush_api_cache(Client, ApiId, Input, []).

-spec flush_api_cache(aws_client:aws_client(), binary() | list(), flush_api_cache_request(), proplists:proplist()) ->
    {ok, flush_api_cache_response(), tuple()} |
    {error, any()} |
    {error, flush_api_cache_errors(), tuple()}.
flush_api_cache(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/FlushCache"],
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

%% @doc Retrieves an `Api' object.
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

%% @doc Retrieves an `ApiAssociation' object.
-spec get_api_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_api_association_errors(), tuple()}.
get_api_association(Client, DomainName)
  when is_map(Client) ->
    get_api_association(Client, DomainName, #{}, #{}).

-spec get_api_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_api_association_errors(), tuple()}.
get_api_association(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_association(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_api_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_api_association_errors(), tuple()}.
get_api_association(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an `ApiCache' object.
-spec get_api_cache(aws_client:aws_client(), binary() | list()) ->
    {ok, get_api_cache_response(), tuple()} |
    {error, any()} |
    {error, get_api_cache_errors(), tuple()}.
get_api_cache(Client, ApiId)
  when is_map(Client) ->
    get_api_cache(Client, ApiId, #{}, #{}).

-spec get_api_cache(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_api_cache_response(), tuple()} |
    {error, any()} |
    {error, get_api_cache_errors(), tuple()}.
get_api_cache(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_cache(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_api_cache(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_cache_response(), tuple()} |
    {error, any()} |
    {error, get_api_cache_errors(), tuple()}.
get_api_cache(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the channel namespace for a specified `Api'.
-spec get_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_channel_namespace_errors(), tuple()}.
get_channel_namespace(Client, ApiId, Name)
  when is_map(Client) ->
    get_channel_namespace(Client, ApiId, Name, #{}, #{}).

-spec get_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_channel_namespace_errors(), tuple()}.
get_channel_namespace(Client, ApiId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_namespace(Client, ApiId, Name, QueryMap, HeadersMap, []).

-spec get_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_channel_namespace_errors(), tuple()}.
get_channel_namespace(Client, ApiId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/channelNamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `DataSource' object.
-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApiId, Name)
  when is_map(Client) ->
    get_data_source(Client, ApiId, Name, #{}, #{}).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApiId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, ApiId, Name, QueryMap, HeadersMap, []).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApiId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the record of an existing introspection.
%%
%% If the retrieval is successful, the
%% result of the instrospection will also be returned. If the retrieval fails
%% the operation,
%% an error message will be returned instead.
-spec get_data_source_introspection(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_source_introspection_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_introspection_errors(), tuple()}.
get_data_source_introspection(Client, IntrospectionId)
  when is_map(Client) ->
    get_data_source_introspection(Client, IntrospectionId, #{}, #{}).

-spec get_data_source_introspection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_source_introspection_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_introspection_errors(), tuple()}.
get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap, []).

-spec get_data_source_introspection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_introspection_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_introspection_errors(), tuple()}.
get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datasources/introspections/", aws_util:encode_uri(IntrospectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeModelsSDL">>, maps:get(<<"includeModelsSDL">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a custom `DomainName' object.
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
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a `Function'.
-spec get_function(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, ApiId, FunctionId)
  when is_map(Client) ->
    get_function(Client, ApiId, FunctionId, #{}, #{}).

-spec get_function(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, []).

-spec get_function(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `GraphqlApi' object.
-spec get_graphql_api(aws_client:aws_client(), binary() | list()) ->
    {ok, get_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_errors(), tuple()}.
get_graphql_api(Client, ApiId)
  when is_map(Client) ->
    get_graphql_api(Client, ApiId, #{}, #{}).

-spec get_graphql_api(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_errors(), tuple()}.
get_graphql_api(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graphql_api(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_graphql_api(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_errors(), tuple()}.
get_graphql_api(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of environmental variable key-value pairs
%% associated with an API by
%% its ID value.
-spec get_graphql_api_environment_variables(aws_client:aws_client(), binary() | list()) ->
    {ok, get_graphql_api_environment_variables_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_environment_variables_errors(), tuple()}.
get_graphql_api_environment_variables(Client, ApiId)
  when is_map(Client) ->
    get_graphql_api_environment_variables(Client, ApiId, #{}, #{}).

-spec get_graphql_api_environment_variables(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_graphql_api_environment_variables_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_environment_variables_errors(), tuple()}.
get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_graphql_api_environment_variables(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_graphql_api_environment_variables_response(), tuple()} |
    {error, any()} |
    {error, get_graphql_api_environment_variables_errors(), tuple()}.
get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/environmentVariables"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the introspection schema for a GraphQL API.
-spec get_introspection_schema(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_introspection_schema_response(), tuple()} |
    {error, any()} |
    {error, get_introspection_schema_errors(), tuple()}.
get_introspection_schema(Client, ApiId, Format)
  when is_map(Client) ->
    get_introspection_schema(Client, ApiId, Format, #{}, #{}).

-spec get_introspection_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_introspection_schema_response(), tuple()} |
    {error, any()} |
    {error, get_introspection_schema_errors(), tuple()}.
get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap, []).

-spec get_introspection_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_introspection_schema_response(), tuple()} |
    {error, any()} |
    {error, get_introspection_schema_errors(), tuple()}.
get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schema"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"includeDirectives">>, maps:get(<<"includeDirectives">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Resolver' object.
-spec get_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_resolver_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_errors(), tuple()}.
get_resolver(Client, ApiId, FieldName, TypeName)
  when is_map(Client) ->
    get_resolver(Client, ApiId, FieldName, TypeName, #{}, #{}).

-spec get_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_resolver_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_errors(), tuple()}.
get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap, []).

-spec get_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resolver_response(), tuple()} |
    {error, any()} |
    {error, get_resolver_errors(), tuple()}.
get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current status of a schema creation operation.
-spec get_schema_creation_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_schema_creation_status_response(), tuple()} |
    {error, any()} |
    {error, get_schema_creation_status_errors(), tuple()}.
get_schema_creation_status(Client, ApiId)
  when is_map(Client) ->
    get_schema_creation_status(Client, ApiId, #{}, #{}).

-spec get_schema_creation_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_schema_creation_status_response(), tuple()} |
    {error, any()} |
    {error, get_schema_creation_status_errors(), tuple()}.
get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap, []).

-spec get_schema_creation_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schema_creation_status_response(), tuple()} |
    {error, any()} |
    {error, get_schema_creation_status_errors(), tuple()}.
get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schemacreation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `SourceApiAssociation' object.
-spec get_source_api_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_source_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_source_api_association_errors(), tuple()}.
get_source_api_association(Client, AssociationId, MergedApiIdentifier)
  when is_map(Client) ->
    get_source_api_association(Client, AssociationId, MergedApiIdentifier, #{}, #{}).

-spec get_source_api_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_source_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_source_api_association_errors(), tuple()}.
get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap, []).

-spec get_source_api_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_source_api_association_response(), tuple()} |
    {error, any()} |
    {error, get_source_api_association_errors(), tuple()}.
get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Type' object.
-spec get_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_type_response(), tuple()} |
    {error, any()} |
    {error, get_type_errors(), tuple()}.
get_type(Client, ApiId, TypeName, Format)
  when is_map(Client) ->
    get_type(Client, ApiId, TypeName, Format, #{}, #{}).

-spec get_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_type_response(), tuple()} |
    {error, any()} |
    {error, get_type_errors(), tuple()}.
get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap, []).

-spec get_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_type_response(), tuple()} |
    {error, any()} |
    {error, get_type_errors(), tuple()}.
get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the API keys for a given API.
%%
%% API keys are deleted automatically 60 days after they expire. However,
%% they may still
%% be included in the response until they have actually been deleted. You can
%% safely call
%% `DeleteApiKey' to manually delete a key before it's automatically
%% deleted.
-spec list_api_keys(aws_client:aws_client(), binary() | list()) ->
    {ok, list_api_keys_response(), tuple()} |
    {error, any()} |
    {error, list_api_keys_errors(), tuple()}.
list_api_keys(Client, ApiId)
  when is_map(Client) ->
    list_api_keys(Client, ApiId, #{}, #{}).

-spec list_api_keys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_api_keys_response(), tuple()} |
    {error, any()} |
    {error, list_api_keys_errors(), tuple()}.
list_api_keys(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_api_keys(Client, ApiId, QueryMap, HeadersMap, []).

-spec list_api_keys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_api_keys_response(), tuple()} |
    {error, any()} |
    {error, list_api_keys_errors(), tuple()}.
list_api_keys(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys"],
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

%% @doc Lists the APIs in your AppSync account.
%%
%% `ListApis' returns only the high level API details. For more detailed
%% information about an API, use `GetApi'.
-spec list_apis(aws_client:aws_client()) ->
    {ok, list_apis_response(), tuple()} |
    {error, any()} |
    {error, list_apis_errors(), tuple()}.
list_apis(Client)
  when is_map(Client) ->
    list_apis(Client, #{}, #{}).

-spec list_apis(aws_client:aws_client(), map(), map()) ->
    {ok, list_apis_response(), tuple()} |
    {error, any()} |
    {error, list_apis_errors(), tuple()}.
list_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apis(Client, QueryMap, HeadersMap, []).

-spec list_apis(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_apis_response(), tuple()} |
    {error, any()} |
    {error, list_apis_errors(), tuple()}.
list_apis(Client, QueryMap, HeadersMap, Options0)
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

%% @doc Lists the channel namespaces for a specified `Api'.
%%
%% `ListChannelNamespaces' returns only high level details for the
%% channel
%% namespace. To retrieve code handlers, use
%% `GetChannelNamespace'.
-spec list_channel_namespaces(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_channel_namespaces_errors(), tuple()}.
list_channel_namespaces(Client, ApiId)
  when is_map(Client) ->
    list_channel_namespaces(Client, ApiId, #{}, #{}).

-spec list_channel_namespaces(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_channel_namespaces_errors(), tuple()}.
list_channel_namespaces(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_namespaces(Client, ApiId, QueryMap, HeadersMap, []).

-spec list_channel_namespaces(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_channel_namespaces_errors(), tuple()}.
list_channel_namespaces(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/channelNamespaces"],
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

%% @doc Lists the data sources for a given API.
-spec list_data_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApiId)
  when is_map(Client) ->
    list_data_sources(Client, ApiId, #{}, #{}).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, ApiId, QueryMap, HeadersMap, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources"],
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

%% @doc Lists multiple custom domain names.
-spec list_domain_names(aws_client:aws_client()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client)
  when is_map(Client) ->
    list_domain_names(Client, #{}, #{}).

-spec list_domain_names(aws_client:aws_client(), map(), map()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_names(Client, QueryMap, HeadersMap, []).

-spec list_domain_names(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domainnames"],
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

%% @doc List multiple functions.
-spec list_functions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, ApiId)
  when is_map(Client) ->
    list_functions(Client, ApiId, #{}, #{}).

-spec list_functions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, ApiId, QueryMap, HeadersMap, []).

-spec list_functions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions"],
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

%% @doc Lists your GraphQL APIs.
-spec list_graphql_apis(aws_client:aws_client()) ->
    {ok, list_graphql_apis_response(), tuple()} |
    {error, any()} |
    {error, list_graphql_apis_errors(), tuple()}.
list_graphql_apis(Client)
  when is_map(Client) ->
    list_graphql_apis(Client, #{}, #{}).

-spec list_graphql_apis(aws_client:aws_client(), map(), map()) ->
    {ok, list_graphql_apis_response(), tuple()} |
    {error, any()} |
    {error, list_graphql_apis_errors(), tuple()}.
list_graphql_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_graphql_apis(Client, QueryMap, HeadersMap, []).

-spec list_graphql_apis(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_graphql_apis_response(), tuple()} |
    {error, any()} |
    {error, list_graphql_apis_errors(), tuple()}.
list_graphql_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"apiType">>, maps:get(<<"apiType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owner">>, maps:get(<<"owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resolvers for a given API and type.
-spec list_resolvers(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_resolvers_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_errors(), tuple()}.
list_resolvers(Client, ApiId, TypeName)
  when is_map(Client) ->
    list_resolvers(Client, ApiId, TypeName, #{}, #{}).

-spec list_resolvers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_resolvers_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_errors(), tuple()}.
list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap, []).

-spec list_resolvers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resolvers_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_errors(), tuple()}.
list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers"],
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

%% @doc List the resolvers that are associated with a specific function.
-spec list_resolvers_by_function(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_resolvers_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_by_function_errors(), tuple()}.
list_resolvers_by_function(Client, ApiId, FunctionId)
  when is_map(Client) ->
    list_resolvers_by_function(Client, ApiId, FunctionId, #{}, #{}).

-spec list_resolvers_by_function(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_resolvers_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_by_function_errors(), tuple()}.
list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, []).

-spec list_resolvers_by_function(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resolvers_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_resolvers_by_function_errors(), tuple()}.
list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), "/resolvers"],
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

%% @doc Lists the `SourceApiAssociationSummary' data.
-spec list_source_api_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_source_api_associations_response(), tuple()} |
    {error, any()} |
    {error, list_source_api_associations_errors(), tuple()}.
list_source_api_associations(Client, ApiId)
  when is_map(Client) ->
    list_source_api_associations(Client, ApiId, #{}, #{}).

-spec list_source_api_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_source_api_associations_response(), tuple()} |
    {error, any()} |
    {error, list_source_api_associations_errors(), tuple()}.
list_source_api_associations(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_source_api_associations(Client, ApiId, QueryMap, HeadersMap, []).

-spec list_source_api_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_source_api_associations_response(), tuple()} |
    {error, any()} |
    {error, list_source_api_associations_errors(), tuple()}.
list_source_api_associations(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/sourceApiAssociations"],
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

%% @doc Lists the tags for a resource.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the types for a given API.
-spec list_types(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_types_response(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, ApiId, Format)
  when is_map(Client) ->
    list_types(Client, ApiId, Format, #{}, #{}).

-spec list_types(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_types_response(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, ApiId, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_types(Client, ApiId, Format, QueryMap, HeadersMap, []).

-spec list_types(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_types_response(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, ApiId, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists `Type' objects by the source API association ID.
-spec list_types_by_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_types_by_association_response(), tuple()} |
    {error, any()} |
    {error, list_types_by_association_errors(), tuple()}.
list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format)
  when is_map(Client) ->
    list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, #{}, #{}).

-spec list_types_by_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_types_by_association_response(), tuple()} |
    {error, any()} |
    {error, list_types_by_association_errors(), tuple()}.
list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap, []).

-spec list_types_by_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_types_by_association_response(), tuple()} |
    {error, any()} |
    {error, list_types_by_association_errors(), tuple()}.
list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), "/types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a list of environmental variables in an API by its ID value.
%%
%% When creating an environmental variable, it must follow the constraints
%% below:
%%
%% Both JavaScript and VTL templates support environmental variables.
%%
%% Environmental variables are not evaluated before function invocation.
%%
%% Environmental variables only support string values.
%%
%% Any defined value in an environmental variable is considered a string
%% literal
%% and not expanded.
%%
%% Variable evaluations should ideally be performed in the function
%% code.
%%
%% When creating an environmental variable key-value pair, it must follow the
%% additional
%% constraints below:
%%
%% Keys must begin with a letter.
%%
%% Keys must be at least two characters long.
%%
%% Keys can only contain letters, numbers, and the underscore character
%% (_).
%%
%% Values can be up to 512 characters long.
%%
%% You can configure up to 50 key-value pairs in a GraphQL API.
%%
%% You can create a list of environmental variables by adding it to the
%% `environmentVariables' payload as a list in the format
%% `{&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;,
%% …}'. Note that each call of the
%% `PutGraphqlApiEnvironmentVariables' action will result in the
%% overwriting of
%% the existing environmental variable list of that API. This means the
%% existing environmental
%% variables will be lost. To avoid this, you must include all existing and
%% new environmental
%% variables in the list each time you call this action.
-spec put_graphql_api_environment_variables(aws_client:aws_client(), binary() | list(), put_graphql_api_environment_variables_request()) ->
    {ok, put_graphql_api_environment_variables_response(), tuple()} |
    {error, any()} |
    {error, put_graphql_api_environment_variables_errors(), tuple()}.
put_graphql_api_environment_variables(Client, ApiId, Input) ->
    put_graphql_api_environment_variables(Client, ApiId, Input, []).

-spec put_graphql_api_environment_variables(aws_client:aws_client(), binary() | list(), put_graphql_api_environment_variables_request(), proplists:proplist()) ->
    {ok, put_graphql_api_environment_variables_response(), tuple()} |
    {error, any()} |
    {error, put_graphql_api_environment_variables_errors(), tuple()}.
put_graphql_api_environment_variables(Client, ApiId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/environmentVariables"],
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

%% @doc Creates a new introspection.
%%
%% Returns the `introspectionId' of the new
%% introspection after its creation.
-spec start_data_source_introspection(aws_client:aws_client(), start_data_source_introspection_request()) ->
    {ok, start_data_source_introspection_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_introspection_errors(), tuple()}.
start_data_source_introspection(Client, Input) ->
    start_data_source_introspection(Client, Input, []).

-spec start_data_source_introspection(aws_client:aws_client(), start_data_source_introspection_request(), proplists:proplist()) ->
    {ok, start_data_source_introspection_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_introspection_errors(), tuple()}.
start_data_source_introspection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datasources/introspections"],
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

%% @doc Adds a new schema to your GraphQL API.
%%
%% This operation is asynchronous. Use to
%% determine when it has completed.
-spec start_schema_creation(aws_client:aws_client(), binary() | list(), start_schema_creation_request()) ->
    {ok, start_schema_creation_response(), tuple()} |
    {error, any()} |
    {error, start_schema_creation_errors(), tuple()}.
start_schema_creation(Client, ApiId, Input) ->
    start_schema_creation(Client, ApiId, Input, []).

-spec start_schema_creation(aws_client:aws_client(), binary() | list(), start_schema_creation_request(), proplists:proplist()) ->
    {ok, start_schema_creation_response(), tuple()} |
    {error, any()} |
    {error, start_schema_creation_errors(), tuple()}.
start_schema_creation(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schemacreation"],
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

%% @doc Initiates a merge operation.
%%
%% Returns a status that shows the result of the merge
%% operation.
-spec start_schema_merge(aws_client:aws_client(), binary() | list(), binary() | list(), start_schema_merge_request()) ->
    {ok, start_schema_merge_response(), tuple()} |
    {error, any()} |
    {error, start_schema_merge_errors(), tuple()}.
start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input) ->
    start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input, []).

-spec start_schema_merge(aws_client:aws_client(), binary() | list(), binary() | list(), start_schema_merge_request(), proplists:proplist()) ->
    {ok, start_schema_merge_response(), tuple()} |
    {error, any()} |
    {error, start_schema_merge_errors(), tuple()}.
start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), "/merge"],
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

%% @doc Tags a resource with user-supplied tags.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Untags a resource.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an `Api'.
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
    Method = post,
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

%% @doc Updates the cache for the GraphQL API.
-spec update_api_cache(aws_client:aws_client(), binary() | list(), update_api_cache_request()) ->
    {ok, update_api_cache_response(), tuple()} |
    {error, any()} |
    {error, update_api_cache_errors(), tuple()}.
update_api_cache(Client, ApiId, Input) ->
    update_api_cache(Client, ApiId, Input, []).

-spec update_api_cache(aws_client:aws_client(), binary() | list(), update_api_cache_request(), proplists:proplist()) ->
    {ok, update_api_cache_response(), tuple()} |
    {error, any()} |
    {error, update_api_cache_errors(), tuple()}.
update_api_cache(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches/update"],
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

%% @doc Updates an API key.
%%
%% You can update the key as long as it's not deleted.
-spec update_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), update_api_key_request()) ->
    {ok, update_api_key_response(), tuple()} |
    {error, any()} |
    {error, update_api_key_errors(), tuple()}.
update_api_key(Client, ApiId, Id, Input) ->
    update_api_key(Client, ApiId, Id, Input, []).

-spec update_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), update_api_key_request(), proplists:proplist()) ->
    {ok, update_api_key_response(), tuple()} |
    {error, any()} |
    {error, update_api_key_errors(), tuple()}.
update_api_key(Client, ApiId, Id, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates a `ChannelNamespace' associated with an `Api'.
-spec update_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_namespace_request()) ->
    {ok, update_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_channel_namespace_errors(), tuple()}.
update_channel_namespace(Client, ApiId, Name, Input) ->
    update_channel_namespace(Client, ApiId, Name, Input, []).

-spec update_channel_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_namespace_request(), proplists:proplist()) ->
    {ok, update_channel_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_channel_namespace_errors(), tuple()}.
update_channel_namespace(Client, ApiId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v2/apis/", aws_util:encode_uri(ApiId), "/channelNamespaces/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a `DataSource' object.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, ApiId, Name, Input) ->
    update_data_source(Client, ApiId, Name, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request(), proplists:proplist()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, ApiId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a custom `DomainName' object.
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
    Method = post,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Updates a `Function' object.
-spec update_function(aws_client:aws_client(), binary() | list(), binary() | list(), update_function_request()) ->
    {ok, update_function_response(), tuple()} |
    {error, any()} |
    {error, update_function_errors(), tuple()}.
update_function(Client, ApiId, FunctionId, Input) ->
    update_function(Client, ApiId, FunctionId, Input, []).

-spec update_function(aws_client:aws_client(), binary() | list(), binary() | list(), update_function_request(), proplists:proplist()) ->
    {ok, update_function_response(), tuple()} |
    {error, any()} |
    {error, update_function_errors(), tuple()}.
update_function(Client, ApiId, FunctionId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
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

%% @doc Updates a `GraphqlApi' object.
-spec update_graphql_api(aws_client:aws_client(), binary() | list(), update_graphql_api_request()) ->
    {ok, update_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, update_graphql_api_errors(), tuple()}.
update_graphql_api(Client, ApiId, Input) ->
    update_graphql_api(Client, ApiId, Input, []).

-spec update_graphql_api(aws_client:aws_client(), binary() | list(), update_graphql_api_request(), proplists:proplist()) ->
    {ok, update_graphql_api_response(), tuple()} |
    {error, any()} |
    {error, update_graphql_api_errors(), tuple()}.
update_graphql_api(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
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

%% @doc Updates a `Resolver' object.
-spec update_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_resolver_request()) ->
    {ok, update_resolver_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_errors(), tuple()}.
update_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    update_resolver(Client, ApiId, FieldName, TypeName, Input, []).

-spec update_resolver(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_resolver_request(), proplists:proplist()) ->
    {ok, update_resolver_response(), tuple()} |
    {error, any()} |
    {error, update_resolver_errors(), tuple()}.
update_resolver(Client, ApiId, FieldName, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
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

%% @doc Updates some of the configuration choices of a particular source API
%% association.
-spec update_source_api_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_source_api_association_request()) ->
    {ok, update_source_api_association_response(), tuple()} |
    {error, any()} |
    {error, update_source_api_association_errors(), tuple()}.
update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input) ->
    update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input, []).

-spec update_source_api_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_source_api_association_request(), proplists:proplist()) ->
    {ok, update_source_api_association_response(), tuple()} |
    {error, any()} |
    {error, update_source_api_association_errors(), tuple()}.
update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Updates a `Type' object.
-spec update_type(aws_client:aws_client(), binary() | list(), binary() | list(), update_type_request()) ->
    {ok, update_type_response(), tuple()} |
    {error, any()} |
    {error, update_type_errors(), tuple()}.
update_type(Client, ApiId, TypeName, Input) ->
    update_type(Client, ApiId, TypeName, Input, []).

-spec update_type(aws_client:aws_client(), binary() | list(), binary() | list(), update_type_request(), proplists:proplist()) ->
    {ok, update_type_response(), tuple()} |
    {error, any()} |
    {error, update_type_errors(), tuple()}.
update_type(Client, ApiId, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
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
    Client1 = Client#{service => <<"appsync">>},
    Host = build_host(<<"appsync">>, Client1),
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
