%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc is in preview release and is subject to change.
%%
%% Welcome to the Amazon Bedrock AgentCore Control plane API reference.
%% Control plane actions configure, create, modify, and monitor Amazon Web
%% Services resources.
-module(aws_bedrock_agentcore_control).

-export([create_agent_runtime/2,
         create_agent_runtime/3,
         create_agent_runtime_endpoint/3,
         create_agent_runtime_endpoint/4,
         create_api_key_credential_provider/2,
         create_api_key_credential_provider/3,
         create_browser/2,
         create_browser/3,
         create_code_interpreter/2,
         create_code_interpreter/3,
         create_gateway/2,
         create_gateway/3,
         create_gateway_target/3,
         create_gateway_target/4,
         create_memory/2,
         create_memory/3,
         create_oauth2_credential_provider/2,
         create_oauth2_credential_provider/3,
         create_workload_identity/2,
         create_workload_identity/3,
         delete_agent_runtime/3,
         delete_agent_runtime/4,
         delete_agent_runtime_endpoint/4,
         delete_agent_runtime_endpoint/5,
         delete_api_key_credential_provider/2,
         delete_api_key_credential_provider/3,
         delete_browser/3,
         delete_browser/4,
         delete_code_interpreter/3,
         delete_code_interpreter/4,
         delete_gateway/3,
         delete_gateway/4,
         delete_gateway_target/4,
         delete_gateway_target/5,
         delete_memory/3,
         delete_memory/4,
         delete_oauth2_credential_provider/2,
         delete_oauth2_credential_provider/3,
         delete_workload_identity/2,
         delete_workload_identity/3,
         get_agent_runtime/2,
         get_agent_runtime/4,
         get_agent_runtime/5,
         get_agent_runtime_endpoint/3,
         get_agent_runtime_endpoint/5,
         get_agent_runtime_endpoint/6,
         get_api_key_credential_provider/2,
         get_api_key_credential_provider/3,
         get_browser/2,
         get_browser/4,
         get_browser/5,
         get_code_interpreter/2,
         get_code_interpreter/4,
         get_code_interpreter/5,
         get_gateway/2,
         get_gateway/4,
         get_gateway/5,
         get_gateway_target/3,
         get_gateway_target/5,
         get_gateway_target/6,
         get_memory/2,
         get_memory/4,
         get_memory/5,
         get_oauth2_credential_provider/2,
         get_oauth2_credential_provider/3,
         get_token_vault/2,
         get_token_vault/3,
         get_workload_identity/2,
         get_workload_identity/3,
         list_agent_runtime_endpoints/3,
         list_agent_runtime_endpoints/4,
         list_agent_runtime_versions/3,
         list_agent_runtime_versions/4,
         list_agent_runtimes/2,
         list_agent_runtimes/3,
         list_api_key_credential_providers/2,
         list_api_key_credential_providers/3,
         list_browsers/2,
         list_browsers/3,
         list_code_interpreters/2,
         list_code_interpreters/3,
         list_gateway_targets/2,
         list_gateway_targets/4,
         list_gateway_targets/5,
         list_gateways/1,
         list_gateways/3,
         list_gateways/4,
         list_memories/2,
         list_memories/3,
         list_oauth2_credential_providers/2,
         list_oauth2_credential_providers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workload_identities/2,
         list_workload_identities/3,
         set_token_vault_cm_k/2,
         set_token_vault_cm_k/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent_runtime/3,
         update_agent_runtime/4,
         update_agent_runtime_endpoint/4,
         update_agent_runtime_endpoint/5,
         update_api_key_credential_provider/2,
         update_api_key_credential_provider/3,
         update_gateway/3,
         update_gateway/4,
         update_gateway_target/4,
         update_gateway_target/5,
         update_memory/3,
         update_memory/4,
         update_oauth2_credential_provider/2,
         update_oauth2_credential_provider/3,
         update_workload_identity/2,
         update_workload_identity/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_gateway_request() :: #{
%%   <<"authorizerConfiguration">> := list(),
%%   <<"authorizerType">> := list(any()),
%%   <<"description">> => string(),
%%   <<"exceptionLevel">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"protocolConfiguration">> => list(),
%%   <<"protocolType">> := list(any()),
%%   <<"roleArn">> := string()
%% }
-type update_gateway_request() :: #{binary() => any()}.


%% Example:
%% modify_strategy_configuration() :: #{
%%   <<"consolidation">> => list(),
%%   <<"extraction">> => list()
%% }
-type modify_strategy_configuration() :: #{binary() => any()}.


%% Example:
%% list_gateway_targets_response() :: #{
%%   <<"items">> => list(target_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_gateway_targets_response() :: #{binary() => any()}.


%% Example:
%% create_agent_runtime_endpoint_request() :: #{
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_agent_runtime_endpoint_request() :: #{binary() => any()}.

%% Example:
%% delete_gateway_target_request() :: #{}
-type delete_gateway_target_request() :: #{}.


%% Example:
%% create_oauth2_credential_provider_response() :: #{
%%   <<"clientSecretArn">> => secret(),
%%   <<"credentialProviderArn">> => string(),
%%   <<"name">> => string()
%% }
-type create_oauth2_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% memory_strategy() :: #{
%%   <<"configuration">> => strategy_configuration(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaces">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"strategyId">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type memory_strategy() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_api_key_credential_provider_response() :: #{
%%   <<"apiKeySecretArn">> => secret(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type get_api_key_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% browser_summary() :: #{
%%   <<"browserArn">> => string(),
%%   <<"browserId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type browser_summary() :: #{binary() => any()}.


%% Example:
%% summary_override_consolidation_configuration_input() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type summary_override_consolidation_configuration_input() :: #{binary() => any()}.


%% Example:
%% memory_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type memory_summary() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% list_code_interpreters_response() :: #{
%%   <<"codeInterpreterSummaries">> => list(code_interpreter_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_code_interpreters_response() :: #{binary() => any()}.


%% Example:
%% create_memory_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"eventExpiryDuration">> := [integer()],
%%   <<"memoryExecutionRoleArn">> => string(),
%%   <<"memoryStrategies">> => list(list()),
%%   <<"name">> := string()
%% }
-type create_memory_input() :: #{binary() => any()}.


%% Example:
%% summary_memory_strategy_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type summary_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% kms_configuration() :: #{
%%   <<"keyType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type kms_configuration() :: #{binary() => any()}.


%% Example:
%% schema_definition() :: #{
%%   <<"description">> => [string()],
%%   <<"items">> => schema_definition(),
%%   <<"properties">> => map(),
%%   <<"required">> => list([string()]()),
%%   <<"type">> => list(any())
%% }
-type schema_definition() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_agent_runtime_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_runtime_versions_request() :: #{binary() => any()}.


%% Example:
%% create_gateway_response() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"authorizerType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"exceptionLevel">> => list(any()),
%%   <<"gatewayArn">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"gatewayUrl">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"protocolConfiguration">> => list(),
%%   <<"protocolType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type create_gateway_response() :: #{binary() => any()}.


%% Example:
%% salesforce_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type salesforce_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% list_gateways_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_gateways_request() :: #{binary() => any()}.


%% Example:
%% get_oauth2_credential_provider_request() :: #{
%%   <<"name">> := string()
%% }
-type get_oauth2_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% get_workload_identity_request() :: #{
%%   <<"name">> := string()
%% }
-type get_workload_identity_request() :: #{binary() => any()}.


%% Example:
%% delete_gateway_target_response() :: #{
%%   <<"gatewayArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"targetId">> => string()
%% }
-type delete_gateway_target_response() :: #{binary() => any()}.


%% Example:
%% tool_definition() :: #{
%%   <<"description">> => [string()],
%%   <<"inputSchema">> => schema_definition(),
%%   <<"name">> => [string()],
%%   <<"outputSchema">> => schema_definition()
%% }
-type tool_definition() :: #{binary() => any()}.


%% Example:
%% decryption_failure() :: #{
%%   <<"message">> => [string()]
%% }
-type decryption_failure() :: #{binary() => any()}.


%% Example:
%% code_interpreter_summary() :: #{
%%   <<"codeInterpreterArn">> => string(),
%%   <<"codeInterpreterId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type code_interpreter_summary() :: #{binary() => any()}.


%% Example:
%% create_browser_response() :: #{
%%   <<"browserArn">> => string(),
%%   <<"browserId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type create_browser_response() :: #{binary() => any()}.


%% Example:
%% encryption_failure() :: #{
%%   <<"message">> => [string()]
%% }
-type encryption_failure() :: #{binary() => any()}.


%% Example:
%% delete_browser_response() :: #{
%%   <<"browserId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type delete_browser_response() :: #{binary() => any()}.


%% Example:
%% get_agent_runtime_request() :: #{
%%   <<"agentRuntimeVersion">> => string()
%% }
-type get_agent_runtime_request() :: #{binary() => any()}.

%% Example:
%% get_memory_input() :: #{}
-type get_memory_input() :: #{}.


%% Example:
%% semantic_memory_strategy_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type semantic_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% delete_memory_input() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_memory_input() :: #{binary() => any()}.


%% Example:
%% delete_gateway_response() :: #{
%%   <<"gatewayId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string())
%% }
-type delete_gateway_response() :: #{binary() => any()}.


%% Example:
%% summary_consolidation_override() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type summary_consolidation_override() :: #{binary() => any()}.


%% Example:
%% create_api_key_credential_provider_response() :: #{
%%   <<"apiKeySecretArn">> => secret(),
%%   <<"credentialProviderArn">> => string(),
%%   <<"name">> => string()
%% }
-type create_api_key_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% custom_memory_strategy_input() :: #{
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type custom_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% user_preference_override_configuration_input() :: #{
%%   <<"consolidation">> => user_preference_override_consolidation_configuration_input(),
%%   <<"extraction">> => user_preference_override_extraction_configuration_input()
%% }
-type user_preference_override_configuration_input() :: #{binary() => any()}.


%% Example:
%% get_gateway_target_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialProviderConfigurations">> => list(credential_provider_configuration()),
%%   <<"description">> => string(),
%%   <<"gatewayArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"targetConfiguration">> => list(),
%%   <<"targetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_gateway_target_response() :: #{binary() => any()}.

%% Example:
%% delete_workload_identity_response() :: #{}
-type delete_workload_identity_response() :: #{}.


%% Example:
%% semantic_extraction_override() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type semantic_extraction_override() :: #{binary() => any()}.


%% Example:
%% semantic_override_consolidation_configuration_input() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type semantic_override_consolidation_configuration_input() :: #{binary() => any()}.


%% Example:
%% create_agent_runtime_endpoint_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeEndpointArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"targetVersion">> => string()
%% }
-type create_agent_runtime_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_api_key_credential_provider_request() :: #{
%%   <<"apiKey">> := string(),
%%   <<"name">> := string()
%% }
-type create_api_key_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% get_browser_response() :: #{
%%   <<"browserArn">> => string(),
%%   <<"browserId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"failureReason">> => [string()],
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"networkConfiguration">> => browser_network_configuration(),
%%   <<"recording">> => recording_config(),
%%   <<"status">> => list(any())
%% }
-type get_browser_response() :: #{binary() => any()}.


%% Example:
%% workload_identity_details() :: #{
%%   <<"workloadIdentityArn">> => string()
%% }
-type workload_identity_details() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_gateway_target_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"credentialProviderConfigurations">> := list(credential_provider_configuration()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"targetConfiguration">> := list()
%% }
-type create_gateway_target_request() :: #{binary() => any()}.


%% Example:
%% semantic_consolidation_override() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type semantic_consolidation_override() :: #{binary() => any()}.


%% Example:
%% update_memory_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"eventExpiryDuration">> => [integer()],
%%   <<"memoryExecutionRoleArn">> => string(),
%%   <<"memoryStrategies">> => modify_memory_strategies()
%% }
-type update_memory_input() :: #{binary() => any()}.


%% Example:
%% delete_oauth2_credential_provider_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_oauth2_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% create_gateway_target_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialProviderConfigurations">> => list(credential_provider_configuration()),
%%   <<"description">> => string(),
%%   <<"gatewayArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"targetConfiguration">> => list(),
%%   <<"targetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_gateway_target_response() :: #{binary() => any()}.


%% Example:
%% github_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type github_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% oauth2_authorization_server_metadata() :: #{
%%   <<"authorizationEndpoint">> => string(),
%%   <<"issuer">> => string(),
%%   <<"responseTypes">> => list(string()),
%%   <<"tokenEndpoint">> => string()
%% }
-type oauth2_authorization_server_metadata() :: #{binary() => any()}.

%% Example:
%% get_gateway_target_request() :: #{}
-type get_gateway_target_request() :: #{}.


%% Example:
%% github_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type github_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% get_api_key_credential_provider_request() :: #{
%%   <<"name">> := string()
%% }
-type get_api_key_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% create_agent_runtime_request() :: #{
%%   <<"agentRuntimeArtifact">> := list(),
%%   <<"agentRuntimeName">> := string(),
%%   <<"authorizerConfiguration">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentVariables">> => map(),
%%   <<"networkConfiguration">> := network_configuration(),
%%   <<"protocolConfiguration">> => protocol_configuration(),
%%   <<"requestHeaderConfiguration">> => list(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_agent_runtime_request() :: #{binary() => any()}.


%% Example:
%% gateway_summary() :: #{
%%   <<"authorizerType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"name">> => string(),
%%   <<"protocolType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type gateway_summary() :: #{binary() => any()}.


%% Example:
%% delete_agent_runtime_endpoint_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_agent_runtime_endpoint_request() :: #{binary() => any()}.


%% Example:
%% get_agent_runtime_endpoint_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeEndpointArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReason">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"liveVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetVersion">> => string()
%% }
-type get_agent_runtime_endpoint_response() :: #{binary() => any()}.


%% Example:
%% update_agent_runtime_request() :: #{
%%   <<"agentRuntimeArtifact">> := list(),
%%   <<"authorizerConfiguration">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentVariables">> => map(),
%%   <<"networkConfiguration">> := network_configuration(),
%%   <<"protocolConfiguration">> => protocol_configuration(),
%%   <<"requestHeaderConfiguration">> => list(),
%%   <<"roleArn">> := string()
%% }
-type update_agent_runtime_request() :: #{binary() => any()}.


%% Example:
%% update_agent_runtime_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeId">> => string(),
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type update_agent_runtime_response() :: #{binary() => any()}.


%% Example:
%% delete_api_key_credential_provider_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_api_key_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% throttled_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttled_exception() :: #{binary() => any()}.


%% Example:
%% create_browser_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"name">> := string(),
%%   <<"networkConfiguration">> := browser_network_configuration(),
%%   <<"recording">> => recording_config(),
%%   <<"tags">> => map()
%% }
-type create_browser_request() :: #{binary() => any()}.


%% Example:
%% update_workload_identity_request() :: #{
%%   <<"allowedResourceOauth2ReturnUrls">> => list(string()),
%%   <<"name">> := string()
%% }
-type update_workload_identity_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_target_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialProviderConfigurations">> => list(credential_provider_configuration()),
%%   <<"description">> => string(),
%%   <<"gatewayArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"targetConfiguration">> => list(),
%%   <<"targetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_gateway_target_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_workload_identity_request() :: #{
%%   <<"allowedResourceOauth2ReturnUrls">> => list(string()),
%%   <<"name">> := string()
%% }
-type create_workload_identity_request() :: #{binary() => any()}.


%% Example:
%% get_gateway_response() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"authorizerType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"exceptionLevel">> => list(any()),
%%   <<"gatewayArn">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"gatewayUrl">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"protocolConfiguration">> => list(),
%%   <<"protocolType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type get_gateway_response() :: #{binary() => any()}.


%% Example:
%% create_memory_output() :: #{
%%   <<"memory">> => memory()
%% }
-type create_memory_output() :: #{binary() => any()}.


%% Example:
%% delete_code_interpreter_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_code_interpreter_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% target_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type target_summary() :: #{binary() => any()}.


%% Example:
%% set_token_vault_cm_k_response() :: #{
%%   <<"kmsConfiguration">> => kms_configuration(),
%%   <<"lastModifiedDate">> => [non_neg_integer()],
%%   <<"tokenVaultId">> => string()
%% }
-type set_token_vault_cm_k_response() :: #{binary() => any()}.


%% Example:
%% oauth2_credential_provider_item() :: #{
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"credentialProviderVendor">> => list(any()),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type oauth2_credential_provider_item() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% workload_identity_type() :: #{
%%   <<"name">> => string(),
%%   <<"workloadIdentityArn">> => string()
%% }
-type workload_identity_type() :: #{binary() => any()}.


%% Example:
%% custom_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"oauthDiscovery">> => list()
%% }
-type custom_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% create_oauth2_credential_provider_request() :: #{
%%   <<"credentialProviderVendor">> := list(any()),
%%   <<"name">> := string(),
%%   <<"oauth2ProviderConfigInput">> := list()
%% }
-type create_oauth2_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% gateway_api_key_credential_provider() :: #{
%%   <<"credentialLocation">> => list(any()),
%%   <<"credentialParameterName">> => string(),
%%   <<"credentialPrefix">> => string(),
%%   <<"providerArn">> => string()
%% }
-type gateway_api_key_credential_provider() :: #{binary() => any()}.


%% Example:
%% get_workload_identity_response() :: #{
%%   <<"allowedResourceOauth2ReturnUrls">> => list(string()),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"workloadIdentityArn">> => string()
%% }
-type get_workload_identity_response() :: #{binary() => any()}.

%% Example:
%% get_agent_runtime_endpoint_request() :: #{}
-type get_agent_runtime_endpoint_request() :: #{}.


%% Example:
%% custom_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type custom_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% get_code_interpreter_response() :: #{
%%   <<"codeInterpreterArn">> => string(),
%%   <<"codeInterpreterId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"failureReason">> => [string()],
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"networkConfiguration">> => code_interpreter_network_configuration(),
%%   <<"status">> => list(any())
%% }
-type get_code_interpreter_response() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"securityGroups">> => list(string()),
%%   <<"subnets">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% modify_memory_strategies() :: #{
%%   <<"addMemoryStrategies">> => list(list()),
%%   <<"deleteMemoryStrategies">> => list(delete_memory_strategy_input()),
%%   <<"modifyMemoryStrategies">> => list(modify_memory_strategy_input())
%% }
-type modify_memory_strategies() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% secret() :: #{
%%   <<"secretArn">> => string()
%% }
-type secret() :: #{binary() => any()}.


%% Example:
%% update_oauth2_credential_provider_request() :: #{
%%   <<"credentialProviderVendor">> := list(any()),
%%   <<"name">> := string(),
%%   <<"oauth2ProviderConfigInput">> := list()
%% }
-type update_oauth2_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% list_agent_runtimes_response() :: #{
%%   <<"agentRuntimes">> => list(agent_runtime()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_runtimes_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_workload_identities_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"workloadIdentities">> => list(workload_identity_type())
%% }
-type list_workload_identities_response() :: #{binary() => any()}.

%% Example:
%% get_code_interpreter_request() :: #{}
-type get_code_interpreter_request() :: #{}.


%% Example:
%% user_preference_extraction_override() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type user_preference_extraction_override() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => [string()],
%%   <<"prefix">> => [string()]
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% container_configuration() :: #{
%%   <<"containerUri">> => string()
%% }
-type container_configuration() :: #{binary() => any()}.


%% Example:
%% delete_memory_strategy_input() :: #{
%%   <<"memoryStrategyId">> => [string()]
%% }
-type delete_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% update_gateway_response() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"authorizerType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"exceptionLevel">> => list(any()),
%%   <<"gatewayArn">> => string(),
%%   <<"gatewayId">> => string(),
%%   <<"gatewayUrl">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"protocolConfiguration">> => list(),
%%   <<"protocolType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type update_gateway_response() :: #{binary() => any()}.


%% Example:
%% delete_workload_identity_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_workload_identity_request() :: #{binary() => any()}.


%% Example:
%% salesforce_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type salesforce_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% update_oauth2_credential_provider_response() :: #{
%%   <<"clientSecretArn">> => secret(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"credentialProviderVendor">> => list(any()),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"oauth2ProviderConfigOutput">> => list()
%% }
-type update_oauth2_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% user_preference_override_extraction_configuration_input() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type user_preference_override_extraction_configuration_input() :: #{binary() => any()}.


%% Example:
%% microsoft_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type microsoft_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% o_auth_credential_provider() :: #{
%%   <<"customParameters">> => map(),
%%   <<"providerArn">> => string(),
%%   <<"scopes">> => list(string())
%% }
-type o_auth_credential_provider() :: #{binary() => any()}.


%% Example:
%% slack_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type slack_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% update_memory_output() :: #{
%%   <<"memory">> => memory()
%% }
-type update_memory_output() :: #{binary() => any()}.


%% Example:
%% create_code_interpreter_response() :: #{
%%   <<"codeInterpreterArn">> => string(),
%%   <<"codeInterpreterId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type create_code_interpreter_response() :: #{binary() => any()}.


%% Example:
%% list_agent_runtime_versions_response() :: #{
%%   <<"agentRuntimes">> => list(agent_runtime()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_runtime_versions_response() :: #{binary() => any()}.


%% Example:
%% get_memory_output() :: #{
%%   <<"memory">> => memory()
%% }
-type get_memory_output() :: #{binary() => any()}.


%% Example:
%% delete_memory_output() :: #{
%%   <<"memoryId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_memory_output() :: #{binary() => any()}.


%% Example:
%% list_api_key_credential_providers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_api_key_credential_providers_request() :: #{binary() => any()}.


%% Example:
%% user_preference_memory_strategy_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type user_preference_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% microsoft_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type microsoft_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% list_browsers_response() :: #{
%%   <<"browserSummaries">> => list(browser_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_browsers_response() :: #{binary() => any()}.


%% Example:
%% delete_browser_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_browser_request() :: #{binary() => any()}.


%% Example:
%% create_code_interpreter_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"name">> := string(),
%%   <<"networkConfiguration">> := code_interpreter_network_configuration(),
%%   <<"tags">> => map()
%% }
-type create_code_interpreter_request() :: #{binary() => any()}.


%% Example:
%% list_memories_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_memories_input() :: #{binary() => any()}.


%% Example:
%% modify_memory_strategy_input() :: #{
%%   <<"configuration">> => modify_strategy_configuration(),
%%   <<"description">> => string(),
%%   <<"memoryStrategyId">> => [string()],
%%   <<"namespaces">> => list(string())
%% }
-type modify_memory_strategy_input() :: #{binary() => any()}.


%% Example:
%% create_gateway_request() :: #{
%%   <<"authorizerConfiguration">> := list(),
%%   <<"authorizerType">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"exceptionLevel">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"protocolConfiguration">> => list(),
%%   <<"protocolType">> := list(any()),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_gateway_request() :: #{binary() => any()}.


%% Example:
%% get_agent_runtime_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeArtifact">> => list(),
%%   <<"agentRuntimeId">> => string(),
%%   <<"agentRuntimeName">> => string(),
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"authorizerConfiguration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"environmentVariables">> => map(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"protocolConfiguration">> => protocol_configuration(),
%%   <<"requestHeaderConfiguration">> => list(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type get_agent_runtime_response() :: #{binary() => any()}.


%% Example:
%% update_api_key_credential_provider_request() :: #{
%%   <<"apiKey">> := string(),
%%   <<"name">> := string()
%% }
-type update_api_key_credential_provider_request() :: #{binary() => any()}.


%% Example:
%% list_workload_identities_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_workload_identities_request() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"networkMode">> => list(any()),
%%   <<"networkModeConfig">> => vpc_config()
%% }
-type network_configuration() :: #{binary() => any()}.


%% Example:
%% slack_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type slack_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% set_token_vault_cm_k_request() :: #{
%%   <<"kmsConfiguration">> := kms_configuration(),
%%   <<"tokenVaultId">> => string()
%% }
-type set_token_vault_cm_k_request() :: #{binary() => any()}.


%% Example:
%% delete_agent_runtime_endpoint_response() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_agent_runtime_endpoint_response() :: #{binary() => any()}.


%% Example:
%% get_oauth2_credential_provider_response() :: #{
%%   <<"clientSecretArn">> => secret(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"credentialProviderVendor">> => list(any()),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"oauth2ProviderConfigOutput">> => list()
%% }
-type get_oauth2_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% get_token_vault_response() :: #{
%%   <<"kmsConfiguration">> => kms_configuration(),
%%   <<"lastModifiedDate">> => [non_neg_integer()],
%%   <<"tokenVaultId">> => string()
%% }
-type get_token_vault_response() :: #{binary() => any()}.


%% Example:
%% summary_override_configuration_input() :: #{
%%   <<"consolidation">> => summary_override_consolidation_configuration_input()
%% }
-type summary_override_configuration_input() :: #{binary() => any()}.

%% Example:
%% delete_agent_runtime_request() :: #{}
-type delete_agent_runtime_request() :: #{}.


%% Example:
%% strategy_configuration() :: #{
%%   <<"consolidation">> => list(),
%%   <<"extraction">> => list(),
%%   <<"type">> => list(any())
%% }
-type strategy_configuration() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% semantic_override_extraction_configuration_input() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type semantic_override_extraction_configuration_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% custom_j_w_t_authorizer_configuration() :: #{
%%   <<"allowedAudience">> => list(string()),
%%   <<"allowedClients">> => list(string()),
%%   <<"discoveryUrl">> => string()
%% }
-type custom_j_w_t_authorizer_configuration() :: #{binary() => any()}.


%% Example:
%% browser_network_configuration() :: #{
%%   <<"networkMode">> => list(any()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type browser_network_configuration() :: #{binary() => any()}.

%% Example:
%% delete_api_key_credential_provider_response() :: #{}
-type delete_api_key_credential_provider_response() :: #{}.


%% Example:
%% list_agent_runtime_endpoints_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"runtimeEndpoints">> => list(agent_runtime_endpoint())
%% }
-type list_agent_runtime_endpoints_response() :: #{binary() => any()}.


%% Example:
%% agent_runtime_endpoint() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeEndpointArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"liveVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetVersion">> => string()
%% }
-type agent_runtime_endpoint() :: #{binary() => any()}.

%% Example:
%% delete_gateway_request() :: #{}
-type delete_gateway_request() :: #{}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% delete_code_interpreter_response() :: #{
%%   <<"codeInterpreterId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type delete_code_interpreter_response() :: #{binary() => any()}.


%% Example:
%% delete_agent_runtime_response() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_agent_runtime_response() :: #{binary() => any()}.

%% Example:
%% delete_oauth2_credential_provider_response() :: #{}
-type delete_oauth2_credential_provider_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% m_c_p_gateway_configuration() :: #{
%%   <<"instructions">> => string(),
%%   <<"searchType">> => list(any()),
%%   <<"supportedVersions">> => list(string())
%% }
-type m_c_p_gateway_configuration() :: #{binary() => any()}.


%% Example:
%% update_workload_identity_response() :: #{
%%   <<"allowedResourceOauth2ReturnUrls">> => list(string()),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"workloadIdentityArn">> => string()
%% }
-type update_workload_identity_response() :: #{binary() => any()}.


%% Example:
%% api_key_credential_provider_item() :: #{
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type api_key_credential_provider_item() :: #{binary() => any()}.


%% Example:
%% list_oauth2_credential_providers_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_oauth2_credential_providers_request() :: #{binary() => any()}.


%% Example:
%% s3_configuration() :: #{
%%   <<"bucketOwnerAccountId">> => string(),
%%   <<"uri">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.


%% Example:
%% list_code_interpreters_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_code_interpreters_request() :: #{binary() => any()}.


%% Example:
%% agent_runtime() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeId">> => string(),
%%   <<"agentRuntimeName">> => string(),
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type agent_runtime() :: #{binary() => any()}.


%% Example:
%% protocol_configuration() :: #{
%%   <<"serverProtocol">> => list(any())
%% }
-type protocol_configuration() :: #{binary() => any()}.


%% Example:
%% google_oauth2_provider_config_output() :: #{
%%   <<"oauthDiscovery">> => list()
%% }
-type google_oauth2_provider_config_output() :: #{binary() => any()}.


%% Example:
%% semantic_override_configuration_input() :: #{
%%   <<"consolidation">> => semantic_override_consolidation_configuration_input(),
%%   <<"extraction">> => semantic_override_extraction_configuration_input()
%% }
-type semantic_override_configuration_input() :: #{binary() => any()}.


%% Example:
%% user_preference_consolidation_override() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type user_preference_consolidation_override() :: #{binary() => any()}.


%% Example:
%% code_interpreter_network_configuration() :: #{
%%   <<"networkMode">> => list(any()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type code_interpreter_network_configuration() :: #{binary() => any()}.

%% Example:
%% get_browser_request() :: #{}
-type get_browser_request() :: #{}.


%% Example:
%% mcp_lambda_target_configuration() :: #{
%%   <<"lambdaArn">> => string(),
%%   <<"toolSchema">> => list()
%% }
-type mcp_lambda_target_configuration() :: #{binary() => any()}.


%% Example:
%% memory() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"eventExpiryDuration">> => [integer()],
%%   <<"failureReason">> => [string()],
%%   <<"id">> => string(),
%%   <<"memoryExecutionRoleArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"strategies">> => list(memory_strategy()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type memory() :: #{binary() => any()}.


%% Example:
%% create_agent_runtime_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeId">> => string(),
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type create_agent_runtime_response() :: #{binary() => any()}.


%% Example:
%% credential_provider_configuration() :: #{
%%   <<"credentialProvider">> => list(),
%%   <<"credentialProviderType">> => list(any())
%% }
-type credential_provider_configuration() :: #{binary() => any()}.


%% Example:
%% update_agent_runtime_endpoint_response() :: #{
%%   <<"agentRuntimeArn">> => string(),
%%   <<"agentRuntimeEndpointArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"liveVersion">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetVersion">> => string()
%% }
-type update_agent_runtime_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_agent_runtime_endpoints_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_runtime_endpoints_request() :: #{binary() => any()}.


%% Example:
%% list_agent_runtimes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_runtimes_request() :: #{binary() => any()}.


%% Example:
%% get_token_vault_request() :: #{
%%   <<"tokenVaultId">> => string()
%% }
-type get_token_vault_request() :: #{binary() => any()}.


%% Example:
%% update_agent_runtime_endpoint_request() :: #{
%%   <<"agentRuntimeVersion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string()
%% }
-type update_agent_runtime_endpoint_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_target_request() :: #{
%%   <<"credentialProviderConfigurations">> := list(credential_provider_configuration()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"targetConfiguration">> := list()
%% }
-type update_gateway_target_request() :: #{binary() => any()}.


%% Example:
%% create_workload_identity_response() :: #{
%%   <<"allowedResourceOauth2ReturnUrls">> => list(string()),
%%   <<"name">> => string(),
%%   <<"workloadIdentityArn">> => string()
%% }
-type create_workload_identity_response() :: #{binary() => any()}.


%% Example:
%% list_oauth2_credential_providers_response() :: #{
%%   <<"credentialProviders">> => list(oauth2_credential_provider_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_oauth2_credential_providers_response() :: #{binary() => any()}.


%% Example:
%% list_gateways_response() :: #{
%%   <<"items">> => list(gateway_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_gateways_response() :: #{binary() => any()}.


%% Example:
%% recording_config() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"s3Location">> => s3_location()
%% }
-type recording_config() :: #{binary() => any()}.


%% Example:
%% update_api_key_credential_provider_response() :: #{
%%   <<"apiKeySecretArn">> => secret(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"credentialProviderArn">> => string(),
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type update_api_key_credential_provider_response() :: #{binary() => any()}.


%% Example:
%% user_preference_override_consolidation_configuration_input() :: #{
%%   <<"appendToPrompt">> => string(),
%%   <<"modelId">> => [string()]
%% }
-type user_preference_override_consolidation_configuration_input() :: #{binary() => any()}.


%% Example:
%% list_api_key_credential_providers_response() :: #{
%%   <<"credentialProviders">> => list(api_key_credential_provider_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_api_key_credential_providers_response() :: #{binary() => any()}.


%% Example:
%% google_oauth2_provider_config_input() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type google_oauth2_provider_config_input() :: #{binary() => any()}.


%% Example:
%% list_gateway_targets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_gateway_targets_request() :: #{binary() => any()}.

%% Example:
%% get_gateway_request() :: #{}
-type get_gateway_request() :: #{}.


%% Example:
%% list_memories_output() :: #{
%%   <<"memories">> => list(memory_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_memories_output() :: #{binary() => any()}.


%% Example:
%% list_browsers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_browsers_request() :: #{binary() => any()}.

-type create_agent_runtime_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_agent_runtime_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_api_key_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    encryption_failure() | 
    decryption_failure() | 
    unauthorized_exception().

-type create_browser_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_code_interpreter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_gateway_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_memory_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    throttled_exception().

-type create_oauth2_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    encryption_failure() | 
    decryption_failure() | 
    unauthorized_exception().

-type create_workload_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type delete_agent_runtime_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_agent_runtime_endpoint_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_api_key_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type delete_browser_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_code_interpreter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_gateway_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_memory_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type delete_oauth2_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type delete_workload_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_agent_runtime_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_runtime_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_api_key_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    decryption_failure() | 
    unauthorized_exception().

-type get_browser_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_code_interpreter_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_gateway_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_memory_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type get_oauth2_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    decryption_failure() | 
    unauthorized_exception().

-type get_token_vault_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_workload_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_agent_runtime_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_agent_runtime_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_runtimes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_api_key_credential_providers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_browsers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_code_interpreters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_gateway_targets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_gateways_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_memories_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_oauth2_credential_providers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workload_identities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type set_token_vault_cm_k_errors() ::
    throttling_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_agent_runtime_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_agent_runtime_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_api_key_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    encryption_failure() | 
    decryption_failure() | 
    unauthorized_exception().

-type update_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_gateway_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_memory_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    throttled_exception().

-type update_oauth2_credential_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    encryption_failure() | 
    decryption_failure() | 
    unauthorized_exception().

-type update_workload_identity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Bedrock AgentCore Runtime.
-spec create_agent_runtime(aws_client:aws_client(), create_agent_runtime_request()) ->
    {ok, create_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, create_agent_runtime_errors(), tuple()}.
create_agent_runtime(Client, Input) ->
    create_agent_runtime(Client, Input, []).

-spec create_agent_runtime(aws_client:aws_client(), create_agent_runtime_request(), proplists:proplist()) ->
    {ok, create_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, create_agent_runtime_errors(), tuple()}.
create_agent_runtime(Client, Input0, Options0) ->
    Method = put,
    Path = ["/runtimes/"],
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

%% @doc Creates an AgentCore Runtime endpoint.
-spec create_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), create_agent_runtime_endpoint_request()) ->
    {ok, create_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_agent_runtime_endpoint_errors(), tuple()}.
create_agent_runtime_endpoint(Client, AgentRuntimeId, Input) ->
    create_agent_runtime_endpoint(Client, AgentRuntimeId, Input, []).

-spec create_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), create_agent_runtime_endpoint_request(), proplists:proplist()) ->
    {ok, create_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_agent_runtime_endpoint_errors(), tuple()}.
create_agent_runtime_endpoint(Client, AgentRuntimeId, Input0, Options0) ->
    Method = put,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/runtime-endpoints/"],
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

%% @doc Creates a new API key credential provider.
-spec create_api_key_credential_provider(aws_client:aws_client(), create_api_key_credential_provider_request()) ->
    {ok, create_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_credential_provider_errors(), tuple()}.
create_api_key_credential_provider(Client, Input) ->
    create_api_key_credential_provider(Client, Input, []).

-spec create_api_key_credential_provider(aws_client:aws_client(), create_api_key_credential_provider_request(), proplists:proplist()) ->
    {ok, create_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_credential_provider_errors(), tuple()}.
create_api_key_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/CreateApiKeyCredentialProvider"],
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

%% @doc Creates a custom browser.
-spec create_browser(aws_client:aws_client(), create_browser_request()) ->
    {ok, create_browser_response(), tuple()} |
    {error, any()} |
    {error, create_browser_errors(), tuple()}.
create_browser(Client, Input) ->
    create_browser(Client, Input, []).

-spec create_browser(aws_client:aws_client(), create_browser_request(), proplists:proplist()) ->
    {ok, create_browser_response(), tuple()} |
    {error, any()} |
    {error, create_browser_errors(), tuple()}.
create_browser(Client, Input0, Options0) ->
    Method = put,
    Path = ["/browsers"],
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

%% @doc Creates a custom code interpreter.
-spec create_code_interpreter(aws_client:aws_client(), create_code_interpreter_request()) ->
    {ok, create_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, create_code_interpreter_errors(), tuple()}.
create_code_interpreter(Client, Input) ->
    create_code_interpreter(Client, Input, []).

-spec create_code_interpreter(aws_client:aws_client(), create_code_interpreter_request(), proplists:proplist()) ->
    {ok, create_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, create_code_interpreter_errors(), tuple()}.
create_code_interpreter(Client, Input0, Options0) ->
    Method = put,
    Path = ["/code-interpreters"],
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

%% @doc Creates a gateway for Amazon Bedrock Agent.
%%
%% A gateway serves as an integration point between your agent and external
%% services.
%%
%% To create a gateway, you must specify a name, protocol type, and IAM role.
%% The role grants the gateway permission to access Amazon Web Services
%% services and resources.
-spec create_gateway(aws_client:aws_client(), create_gateway_request()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input) ->
    create_gateway(Client, Input, []).

-spec create_gateway(aws_client:aws_client(), create_gateway_request(), proplists:proplist()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gateways/"],
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

%% @doc Creates a target for a gateway.
%%
%% A target defines an endpoint that the gateway can connect to.
-spec create_gateway_target(aws_client:aws_client(), binary() | list(), create_gateway_target_request()) ->
    {ok, create_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_target_errors(), tuple()}.
create_gateway_target(Client, GatewayIdentifier, Input) ->
    create_gateway_target(Client, GatewayIdentifier, Input, []).

-spec create_gateway_target(aws_client:aws_client(), binary() | list(), create_gateway_target_request(), proplists:proplist()) ->
    {ok, create_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_target_errors(), tuple()}.
create_gateway_target(Client, GatewayIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/targets/"],
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

%% @doc Creates a new Amazon Bedrock AgentCore Memory resource.
-spec create_memory(aws_client:aws_client(), create_memory_input()) ->
    {ok, create_memory_output(), tuple()} |
    {error, any()} |
    {error, create_memory_errors(), tuple()}.
create_memory(Client, Input) ->
    create_memory(Client, Input, []).

-spec create_memory(aws_client:aws_client(), create_memory_input(), proplists:proplist()) ->
    {ok, create_memory_output(), tuple()} |
    {error, any()} |
    {error, create_memory_errors(), tuple()}.
create_memory(Client, Input0, Options0) ->
    Method = post,
    Path = ["/memories/create"],
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

%% @doc Creates a new OAuth2 credential provider.
-spec create_oauth2_credential_provider(aws_client:aws_client(), create_oauth2_credential_provider_request()) ->
    {ok, create_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, create_oauth2_credential_provider_errors(), tuple()}.
create_oauth2_credential_provider(Client, Input) ->
    create_oauth2_credential_provider(Client, Input, []).

-spec create_oauth2_credential_provider(aws_client:aws_client(), create_oauth2_credential_provider_request(), proplists:proplist()) ->
    {ok, create_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, create_oauth2_credential_provider_errors(), tuple()}.
create_oauth2_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/CreateOauth2CredentialProvider"],
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

%% @doc Creates a new workload identity.
-spec create_workload_identity(aws_client:aws_client(), create_workload_identity_request()) ->
    {ok, create_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, create_workload_identity_errors(), tuple()}.
create_workload_identity(Client, Input) ->
    create_workload_identity(Client, Input, []).

-spec create_workload_identity(aws_client:aws_client(), create_workload_identity_request(), proplists:proplist()) ->
    {ok, create_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, create_workload_identity_errors(), tuple()}.
create_workload_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/CreateWorkloadIdentity"],
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

%% @doc Deletes an Amazon Bedrock AgentCore Runtime.
-spec delete_agent_runtime(aws_client:aws_client(), binary() | list(), delete_agent_runtime_request()) ->
    {ok, delete_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_runtime_errors(), tuple()}.
delete_agent_runtime(Client, AgentRuntimeId, Input) ->
    delete_agent_runtime(Client, AgentRuntimeId, Input, []).

-spec delete_agent_runtime(aws_client:aws_client(), binary() | list(), delete_agent_runtime_request(), proplists:proplist()) ->
    {ok, delete_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_runtime_errors(), tuple()}.
delete_agent_runtime(Client, AgentRuntimeId, Input0, Options0) ->
    Method = delete,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/"],
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

%% @doc Deletes an AAgentCore Runtime endpoint.
-spec delete_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_runtime_endpoint_request()) ->
    {ok, delete_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_runtime_endpoint_errors(), tuple()}.
delete_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input) ->
    delete_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input, []).

-spec delete_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_runtime_endpoint_request(), proplists:proplist()) ->
    {ok, delete_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_runtime_endpoint_errors(), tuple()}.
delete_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/runtime-endpoints/", aws_util:encode_uri(EndpointName), "/"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an API key credential provider.
-spec delete_api_key_credential_provider(aws_client:aws_client(), delete_api_key_credential_provider_request()) ->
    {ok, delete_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_credential_provider_errors(), tuple()}.
delete_api_key_credential_provider(Client, Input) ->
    delete_api_key_credential_provider(Client, Input, []).

-spec delete_api_key_credential_provider(aws_client:aws_client(), delete_api_key_credential_provider_request(), proplists:proplist()) ->
    {ok, delete_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_credential_provider_errors(), tuple()}.
delete_api_key_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/DeleteApiKeyCredentialProvider"],
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

%% @doc Deletes a custom browser.
-spec delete_browser(aws_client:aws_client(), binary() | list(), delete_browser_request()) ->
    {ok, delete_browser_response(), tuple()} |
    {error, any()} |
    {error, delete_browser_errors(), tuple()}.
delete_browser(Client, BrowserId, Input) ->
    delete_browser(Client, BrowserId, Input, []).

-spec delete_browser(aws_client:aws_client(), binary() | list(), delete_browser_request(), proplists:proplist()) ->
    {ok, delete_browser_response(), tuple()} |
    {error, any()} |
    {error, delete_browser_errors(), tuple()}.
delete_browser(Client, BrowserId, Input0, Options0) ->
    Method = delete,
    Path = ["/browsers/", aws_util:encode_uri(BrowserId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom code interpreter.
-spec delete_code_interpreter(aws_client:aws_client(), binary() | list(), delete_code_interpreter_request()) ->
    {ok, delete_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, delete_code_interpreter_errors(), tuple()}.
delete_code_interpreter(Client, CodeInterpreterId, Input) ->
    delete_code_interpreter(Client, CodeInterpreterId, Input, []).

-spec delete_code_interpreter(aws_client:aws_client(), binary() | list(), delete_code_interpreter_request(), proplists:proplist()) ->
    {ok, delete_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, delete_code_interpreter_errors(), tuple()}.
delete_code_interpreter(Client, CodeInterpreterId, Input0, Options0) ->
    Method = delete,
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a gateway.
-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request()) ->
    {ok, delete_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayIdentifier, Input) ->
    delete_gateway(Client, GatewayIdentifier, Input, []).

-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request(), proplists:proplist()) ->
    {ok, delete_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/"],
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

%% @doc Deletes a gateway target.
-spec delete_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), delete_gateway_target_request()) ->
    {ok, delete_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_target_errors(), tuple()}.
delete_gateway_target(Client, GatewayIdentifier, TargetId, Input) ->
    delete_gateway_target(Client, GatewayIdentifier, TargetId, Input, []).

-spec delete_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), delete_gateway_target_request(), proplists:proplist()) ->
    {ok, delete_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, delete_gateway_target_errors(), tuple()}.
delete_gateway_target(Client, GatewayIdentifier, TargetId, Input0, Options0) ->
    Method = delete,
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/targets/", aws_util:encode_uri(TargetId), "/"],
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

%% @doc Deletes an Amazon Bedrock AgentCore Memory resource.
-spec delete_memory(aws_client:aws_client(), binary() | list(), delete_memory_input()) ->
    {ok, delete_memory_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_errors(), tuple()}.
delete_memory(Client, MemoryId, Input) ->
    delete_memory(Client, MemoryId, Input, []).

-spec delete_memory(aws_client:aws_client(), binary() | list(), delete_memory_input(), proplists:proplist()) ->
    {ok, delete_memory_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_errors(), tuple()}.
delete_memory(Client, MemoryId, Input0, Options0) ->
    Method = delete,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/delete"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an OAuth2 credential provider.
-spec delete_oauth2_credential_provider(aws_client:aws_client(), delete_oauth2_credential_provider_request()) ->
    {ok, delete_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_oauth2_credential_provider_errors(), tuple()}.
delete_oauth2_credential_provider(Client, Input) ->
    delete_oauth2_credential_provider(Client, Input, []).

-spec delete_oauth2_credential_provider(aws_client:aws_client(), delete_oauth2_credential_provider_request(), proplists:proplist()) ->
    {ok, delete_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_oauth2_credential_provider_errors(), tuple()}.
delete_oauth2_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/DeleteOauth2CredentialProvider"],
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

%% @doc Deletes a workload identity.
-spec delete_workload_identity(aws_client:aws_client(), delete_workload_identity_request()) ->
    {ok, delete_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, delete_workload_identity_errors(), tuple()}.
delete_workload_identity(Client, Input) ->
    delete_workload_identity(Client, Input, []).

-spec delete_workload_identity(aws_client:aws_client(), delete_workload_identity_request(), proplists:proplist()) ->
    {ok, delete_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, delete_workload_identity_errors(), tuple()}.
delete_workload_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/DeleteWorkloadIdentity"],
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

%% @doc Gets an Amazon Bedrock AgentCore Runtime.
-spec get_agent_runtime(aws_client:aws_client(), binary() | list()) ->
    {ok, get_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_errors(), tuple()}.
get_agent_runtime(Client, AgentRuntimeId)
  when is_map(Client) ->
    get_agent_runtime(Client, AgentRuntimeId, #{}, #{}).

-spec get_agent_runtime(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_errors(), tuple()}.
get_agent_runtime(Client, AgentRuntimeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_runtime(Client, AgentRuntimeId, QueryMap, HeadersMap, []).

-spec get_agent_runtime(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_errors(), tuple()}.
get_agent_runtime(Client, AgentRuntimeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an Amazon Secure AgentEndpoint.
-spec get_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_endpoint_errors(), tuple()}.
get_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName)
  when is_map(Client) ->
    get_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, #{}, #{}).

-spec get_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_endpoint_errors(), tuple()}.
get_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, QueryMap, HeadersMap, []).

-spec get_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_agent_runtime_endpoint_errors(), tuple()}.
get_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/runtime-endpoints/", aws_util:encode_uri(EndpointName), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an API key credential provider.
-spec get_api_key_credential_provider(aws_client:aws_client(), get_api_key_credential_provider_request()) ->
    {ok, get_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, get_api_key_credential_provider_errors(), tuple()}.
get_api_key_credential_provider(Client, Input) ->
    get_api_key_credential_provider(Client, Input, []).

-spec get_api_key_credential_provider(aws_client:aws_client(), get_api_key_credential_provider_request(), proplists:proplist()) ->
    {ok, get_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, get_api_key_credential_provider_errors(), tuple()}.
get_api_key_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetApiKeyCredentialProvider"],
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

%% @doc Gets information about a custom browser.
-spec get_browser(aws_client:aws_client(), binary() | list()) ->
    {ok, get_browser_response(), tuple()} |
    {error, any()} |
    {error, get_browser_errors(), tuple()}.
get_browser(Client, BrowserId)
  when is_map(Client) ->
    get_browser(Client, BrowserId, #{}, #{}).

-spec get_browser(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_browser_response(), tuple()} |
    {error, any()} |
    {error, get_browser_errors(), tuple()}.
get_browser(Client, BrowserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_browser(Client, BrowserId, QueryMap, HeadersMap, []).

-spec get_browser(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_browser_response(), tuple()} |
    {error, any()} |
    {error, get_browser_errors(), tuple()}.
get_browser(Client, BrowserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browsers/", aws_util:encode_uri(BrowserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a custom code interpreter.
-spec get_code_interpreter(aws_client:aws_client(), binary() | list()) ->
    {ok, get_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_errors(), tuple()}.
get_code_interpreter(Client, CodeInterpreterId)
  when is_map(Client) ->
    get_code_interpreter(Client, CodeInterpreterId, #{}, #{}).

-spec get_code_interpreter(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_errors(), tuple()}.
get_code_interpreter(Client, CodeInterpreterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_interpreter(Client, CodeInterpreterId, QueryMap, HeadersMap, []).

-spec get_code_interpreter(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_errors(), tuple()}.
get_code_interpreter(Client, CodeInterpreterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific Gateway.
-spec get_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, get_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, GatewayIdentifier)
  when is_map(Client) ->
    get_gateway(Client, GatewayIdentifier, #{}, #{}).

-spec get_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, GatewayIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway(Client, GatewayIdentifier, QueryMap, HeadersMap, []).

-spec get_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, GatewayIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific gateway target.
-spec get_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_target_errors(), tuple()}.
get_gateway_target(Client, GatewayIdentifier, TargetId)
  when is_map(Client) ->
    get_gateway_target(Client, GatewayIdentifier, TargetId, #{}, #{}).

-spec get_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_target_errors(), tuple()}.
get_gateway_target(Client, GatewayIdentifier, TargetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gateway_target(Client, GatewayIdentifier, TargetId, QueryMap, HeadersMap, []).

-spec get_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, get_gateway_target_errors(), tuple()}.
get_gateway_target(Client, GatewayIdentifier, TargetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/targets/", aws_util:encode_uri(TargetId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve an existing Amazon Bedrock AgentCore Memory resource.
-spec get_memory(aws_client:aws_client(), binary() | list()) ->
    {ok, get_memory_output(), tuple()} |
    {error, any()} |
    {error, get_memory_errors(), tuple()}.
get_memory(Client, MemoryId)
  when is_map(Client) ->
    get_memory(Client, MemoryId, #{}, #{}).

-spec get_memory(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_memory_output(), tuple()} |
    {error, any()} |
    {error, get_memory_errors(), tuple()}.
get_memory(Client, MemoryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_memory(Client, MemoryId, QueryMap, HeadersMap, []).

-spec get_memory(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_memory_output(), tuple()} |
    {error, any()} |
    {error, get_memory_errors(), tuple()}.
get_memory(Client, MemoryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/details"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an OAuth2 credential provider.
-spec get_oauth2_credential_provider(aws_client:aws_client(), get_oauth2_credential_provider_request()) ->
    {ok, get_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, get_oauth2_credential_provider_errors(), tuple()}.
get_oauth2_credential_provider(Client, Input) ->
    get_oauth2_credential_provider(Client, Input, []).

-spec get_oauth2_credential_provider(aws_client:aws_client(), get_oauth2_credential_provider_request(), proplists:proplist()) ->
    {ok, get_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, get_oauth2_credential_provider_errors(), tuple()}.
get_oauth2_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetOauth2CredentialProvider"],
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

%% @doc Retrieves information about a token vault.
-spec get_token_vault(aws_client:aws_client(), get_token_vault_request()) ->
    {ok, get_token_vault_response(), tuple()} |
    {error, any()} |
    {error, get_token_vault_errors(), tuple()}.
get_token_vault(Client, Input) ->
    get_token_vault(Client, Input, []).

-spec get_token_vault(aws_client:aws_client(), get_token_vault_request(), proplists:proplist()) ->
    {ok, get_token_vault_response(), tuple()} |
    {error, any()} |
    {error, get_token_vault_errors(), tuple()}.
get_token_vault(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/get-token-vault"],
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

%% @doc Retrieves information about a workload identity.
-spec get_workload_identity(aws_client:aws_client(), get_workload_identity_request()) ->
    {ok, get_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, get_workload_identity_errors(), tuple()}.
get_workload_identity(Client, Input) ->
    get_workload_identity(Client, Input, []).

-spec get_workload_identity(aws_client:aws_client(), get_workload_identity_request(), proplists:proplist()) ->
    {ok, get_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, get_workload_identity_errors(), tuple()}.
get_workload_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetWorkloadIdentity"],
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

%% @doc Lists all endpoints for a specific Amazon Secure Agent.
-spec list_agent_runtime_endpoints(aws_client:aws_client(), binary() | list(), list_agent_runtime_endpoints_request()) ->
    {ok, list_agent_runtime_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtime_endpoints_errors(), tuple()}.
list_agent_runtime_endpoints(Client, AgentRuntimeId, Input) ->
    list_agent_runtime_endpoints(Client, AgentRuntimeId, Input, []).

-spec list_agent_runtime_endpoints(aws_client:aws_client(), binary() | list(), list_agent_runtime_endpoints_request(), proplists:proplist()) ->
    {ok, list_agent_runtime_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtime_endpoints_errors(), tuple()}.
list_agent_runtime_endpoints(Client, AgentRuntimeId, Input0, Options0) ->
    Method = post,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/runtime-endpoints/"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all versions of a specific Amazon Secure Agent.
-spec list_agent_runtime_versions(aws_client:aws_client(), binary() | list(), list_agent_runtime_versions_request()) ->
    {ok, list_agent_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtime_versions_errors(), tuple()}.
list_agent_runtime_versions(Client, AgentRuntimeId, Input) ->
    list_agent_runtime_versions(Client, AgentRuntimeId, Input, []).

-spec list_agent_runtime_versions(aws_client:aws_client(), binary() | list(), list_agent_runtime_versions_request(), proplists:proplist()) ->
    {ok, list_agent_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtime_versions_errors(), tuple()}.
list_agent_runtime_versions(Client, AgentRuntimeId, Input0, Options0) ->
    Method = post,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/versions/"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Amazon Secure Agents in your account.
-spec list_agent_runtimes(aws_client:aws_client(), list_agent_runtimes_request()) ->
    {ok, list_agent_runtimes_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtimes_errors(), tuple()}.
list_agent_runtimes(Client, Input) ->
    list_agent_runtimes(Client, Input, []).

-spec list_agent_runtimes(aws_client:aws_client(), list_agent_runtimes_request(), proplists:proplist()) ->
    {ok, list_agent_runtimes_response(), tuple()} |
    {error, any()} |
    {error, list_agent_runtimes_errors(), tuple()}.
list_agent_runtimes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtimes/"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all API key credential providers in your account.
-spec list_api_key_credential_providers(aws_client:aws_client(), list_api_key_credential_providers_request()) ->
    {ok, list_api_key_credential_providers_response(), tuple()} |
    {error, any()} |
    {error, list_api_key_credential_providers_errors(), tuple()}.
list_api_key_credential_providers(Client, Input) ->
    list_api_key_credential_providers(Client, Input, []).

-spec list_api_key_credential_providers(aws_client:aws_client(), list_api_key_credential_providers_request(), proplists:proplist()) ->
    {ok, list_api_key_credential_providers_response(), tuple()} |
    {error, any()} |
    {error, list_api_key_credential_providers_errors(), tuple()}.
list_api_key_credential_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/ListApiKeyCredentialProviders"],
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

%% @doc Lists all custom browsers in your account.
-spec list_browsers(aws_client:aws_client(), list_browsers_request()) ->
    {ok, list_browsers_response(), tuple()} |
    {error, any()} |
    {error, list_browsers_errors(), tuple()}.
list_browsers(Client, Input) ->
    list_browsers(Client, Input, []).

-spec list_browsers(aws_client:aws_client(), list_browsers_request(), proplists:proplist()) ->
    {ok, list_browsers_response(), tuple()} |
    {error, any()} |
    {error, list_browsers_errors(), tuple()}.
list_browsers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/browsers"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"type">>, <<"type">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all custom code interpreters in your account.
-spec list_code_interpreters(aws_client:aws_client(), list_code_interpreters_request()) ->
    {ok, list_code_interpreters_response(), tuple()} |
    {error, any()} |
    {error, list_code_interpreters_errors(), tuple()}.
list_code_interpreters(Client, Input) ->
    list_code_interpreters(Client, Input, []).

-spec list_code_interpreters(aws_client:aws_client(), list_code_interpreters_request(), proplists:proplist()) ->
    {ok, list_code_interpreters_response(), tuple()} |
    {error, any()} |
    {error, list_code_interpreters_errors(), tuple()}.
list_code_interpreters(Client, Input0, Options0) ->
    Method = post,
    Path = ["/code-interpreters"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"type">>, <<"type">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all targets for a specific gateway.
-spec list_gateway_targets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_gateway_targets_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_targets_errors(), tuple()}.
list_gateway_targets(Client, GatewayIdentifier)
  when is_map(Client) ->
    list_gateway_targets(Client, GatewayIdentifier, #{}, #{}).

-spec list_gateway_targets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_gateway_targets_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_targets_errors(), tuple()}.
list_gateway_targets(Client, GatewayIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateway_targets(Client, GatewayIdentifier, QueryMap, HeadersMap, []).

-spec list_gateway_targets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_gateway_targets_response(), tuple()} |
    {error, any()} |
    {error, list_gateway_targets_errors(), tuple()}.
list_gateway_targets(Client, GatewayIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/targets/"],
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

%% @doc Lists all gateways in the account.
-spec list_gateways(aws_client:aws_client()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client)
  when is_map(Client) ->
    list_gateways(Client, #{}, #{}).

-spec list_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateways(Client, QueryMap, HeadersMap, []).

-spec list_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gateways/"],
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

%% @doc Lists the available Amazon Bedrock AgentCore Memory resources in the
%% current Amazon Web Services Region.
-spec list_memories(aws_client:aws_client(), list_memories_input()) ->
    {ok, list_memories_output(), tuple()} |
    {error, any()} |
    {error, list_memories_errors(), tuple()}.
list_memories(Client, Input) ->
    list_memories(Client, Input, []).

-spec list_memories(aws_client:aws_client(), list_memories_input(), proplists:proplist()) ->
    {ok, list_memories_output(), tuple()} |
    {error, any()} |
    {error, list_memories_errors(), tuple()}.
list_memories(Client, Input0, Options0) ->
    Method = post,
    Path = ["/memories/"],
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

%% @doc Lists all OAuth2 credential providers in your account.
-spec list_oauth2_credential_providers(aws_client:aws_client(), list_oauth2_credential_providers_request()) ->
    {ok, list_oauth2_credential_providers_response(), tuple()} |
    {error, any()} |
    {error, list_oauth2_credential_providers_errors(), tuple()}.
list_oauth2_credential_providers(Client, Input) ->
    list_oauth2_credential_providers(Client, Input, []).

-spec list_oauth2_credential_providers(aws_client:aws_client(), list_oauth2_credential_providers_request(), proplists:proplist()) ->
    {ok, list_oauth2_credential_providers_response(), tuple()} |
    {error, any()} |
    {error, list_oauth2_credential_providers_errors(), tuple()}.
list_oauth2_credential_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/ListOauth2CredentialProviders"],
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

%% @doc Lists the tags associated with the specified resource.
%%
%% This feature is currently available only for AgentCore Runtime, Browser,
%% Code Interpreter tool, and Gateway.
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

%% @doc Lists all workload identities in your account.
-spec list_workload_identities(aws_client:aws_client(), list_workload_identities_request()) ->
    {ok, list_workload_identities_response(), tuple()} |
    {error, any()} |
    {error, list_workload_identities_errors(), tuple()}.
list_workload_identities(Client, Input) ->
    list_workload_identities(Client, Input, []).

-spec list_workload_identities(aws_client:aws_client(), list_workload_identities_request(), proplists:proplist()) ->
    {ok, list_workload_identities_response(), tuple()} |
    {error, any()} |
    {error, list_workload_identities_errors(), tuple()}.
list_workload_identities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/ListWorkloadIdentities"],
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

%% @doc Sets the customer master key (CMK) for a token vault.
-spec set_token_vault_cm_k(aws_client:aws_client(), set_token_vault_cm_k_request()) ->
    {ok, set_token_vault_cm_k_response(), tuple()} |
    {error, any()} |
    {error, set_token_vault_cm_k_errors(), tuple()}.
set_token_vault_cm_k(Client, Input) ->
    set_token_vault_cm_k(Client, Input, []).

-spec set_token_vault_cm_k(aws_client:aws_client(), set_token_vault_cm_k_request(), proplists:proplist()) ->
    {ok, set_token_vault_cm_k_response(), tuple()} |
    {error, any()} |
    {error, set_token_vault_cm_k_errors(), tuple()}.
set_token_vault_cm_k(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/set-token-vault-cmk"],
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

%% @doc Associates the specified tags to a resource with the specified
%% resourceArn.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are also deleted.
%%
%% This feature is currently available only for AgentCore Runtime, Browser,
%% Code Interpreter tool, and Gateway.
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

%% @doc Removes the specified tags from the specified resource.
%%
%% This feature is currently available only for AgentCore Runtime, Browser,
%% Code Interpreter tool, and Gateway.
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

%% @doc Updates an existing Amazon Secure Agent.
-spec update_agent_runtime(aws_client:aws_client(), binary() | list(), update_agent_runtime_request()) ->
    {ok, update_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, update_agent_runtime_errors(), tuple()}.
update_agent_runtime(Client, AgentRuntimeId, Input) ->
    update_agent_runtime(Client, AgentRuntimeId, Input, []).

-spec update_agent_runtime(aws_client:aws_client(), binary() | list(), update_agent_runtime_request(), proplists:proplist()) ->
    {ok, update_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, update_agent_runtime_errors(), tuple()}.
update_agent_runtime(Client, AgentRuntimeId, Input0, Options0) ->
    Method = put,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/"],
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

%% @doc Updates an existing Amazon Bedrock AgentCore Runtime endpoint.
-spec update_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_runtime_endpoint_request()) ->
    {ok, update_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_agent_runtime_endpoint_errors(), tuple()}.
update_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input) ->
    update_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input, []).

-spec update_agent_runtime_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_runtime_endpoint_request(), proplists:proplist()) ->
    {ok, update_agent_runtime_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_agent_runtime_endpoint_errors(), tuple()}.
update_agent_runtime_endpoint(Client, AgentRuntimeId, EndpointName, Input0, Options0) ->
    Method = put,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeId), "/runtime-endpoints/", aws_util:encode_uri(EndpointName), "/"],
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

%% @doc Updates an existing API key credential provider.
-spec update_api_key_credential_provider(aws_client:aws_client(), update_api_key_credential_provider_request()) ->
    {ok, update_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, update_api_key_credential_provider_errors(), tuple()}.
update_api_key_credential_provider(Client, Input) ->
    update_api_key_credential_provider(Client, Input, []).

-spec update_api_key_credential_provider(aws_client:aws_client(), update_api_key_credential_provider_request(), proplists:proplist()) ->
    {ok, update_api_key_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, update_api_key_credential_provider_errors(), tuple()}.
update_api_key_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/UpdateApiKeyCredentialProvider"],
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

%% @doc Updates an existing gateway.
-spec update_gateway(aws_client:aws_client(), binary() | list(), update_gateway_request()) ->
    {ok, update_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, GatewayIdentifier, Input) ->
    update_gateway(Client, GatewayIdentifier, Input, []).

-spec update_gateway(aws_client:aws_client(), binary() | list(), update_gateway_request(), proplists:proplist()) ->
    {ok, update_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, GatewayIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/"],
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

%% @doc Updates an existing gateway target.
-spec update_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), update_gateway_target_request()) ->
    {ok, update_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_target_errors(), tuple()}.
update_gateway_target(Client, GatewayIdentifier, TargetId, Input) ->
    update_gateway_target(Client, GatewayIdentifier, TargetId, Input, []).

-spec update_gateway_target(aws_client:aws_client(), binary() | list(), binary() | list(), update_gateway_target_request(), proplists:proplist()) ->
    {ok, update_gateway_target_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_target_errors(), tuple()}.
update_gateway_target(Client, GatewayIdentifier, TargetId, Input0, Options0) ->
    Method = put,
    Path = ["/gateways/", aws_util:encode_uri(GatewayIdentifier), "/targets/", aws_util:encode_uri(TargetId), "/"],
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

%% @doc Update an Amazon Bedrock AgentCore Memory resource memory.
-spec update_memory(aws_client:aws_client(), binary() | list(), update_memory_input()) ->
    {ok, update_memory_output(), tuple()} |
    {error, any()} |
    {error, update_memory_errors(), tuple()}.
update_memory(Client, MemoryId, Input) ->
    update_memory(Client, MemoryId, Input, []).

-spec update_memory(aws_client:aws_client(), binary() | list(), update_memory_input(), proplists:proplist()) ->
    {ok, update_memory_output(), tuple()} |
    {error, any()} |
    {error, update_memory_errors(), tuple()}.
update_memory(Client, MemoryId, Input0, Options0) ->
    Method = put,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/update"],
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

%% @doc Updates an existing OAuth2 credential provider.
-spec update_oauth2_credential_provider(aws_client:aws_client(), update_oauth2_credential_provider_request()) ->
    {ok, update_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, update_oauth2_credential_provider_errors(), tuple()}.
update_oauth2_credential_provider(Client, Input) ->
    update_oauth2_credential_provider(Client, Input, []).

-spec update_oauth2_credential_provider(aws_client:aws_client(), update_oauth2_credential_provider_request(), proplists:proplist()) ->
    {ok, update_oauth2_credential_provider_response(), tuple()} |
    {error, any()} |
    {error, update_oauth2_credential_provider_errors(), tuple()}.
update_oauth2_credential_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/UpdateOauth2CredentialProvider"],
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

%% @doc Updates an existing workload identity.
-spec update_workload_identity(aws_client:aws_client(), update_workload_identity_request()) ->
    {ok, update_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, update_workload_identity_errors(), tuple()}.
update_workload_identity(Client, Input) ->
    update_workload_identity(Client, Input, []).

-spec update_workload_identity(aws_client:aws_client(), update_workload_identity_request(), proplists:proplist()) ->
    {ok, update_workload_identity_response(), tuple()} |
    {error, any()} |
    {error, update_workload_identity_errors(), tuple()}.
update_workload_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/UpdateWorkloadIdentity"],
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
    Client1 = Client#{service => <<"bedrock-agentcore">>},
    Host = build_host(<<"bedrock-agentcore-control">>, Client1),
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
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload, [{uri_encode_path, true}]),
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
