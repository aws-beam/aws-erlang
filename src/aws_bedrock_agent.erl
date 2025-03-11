%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating and managing Amazon Bedrock
%% agents.
-module(aws_bedrock_agent).

-export([associate_agent_collaborator/4,
         associate_agent_collaborator/5,
         associate_agent_knowledge_base/4,
         associate_agent_knowledge_base/5,
         create_agent/2,
         create_agent/3,
         create_agent_action_group/4,
         create_agent_action_group/5,
         create_agent_alias/3,
         create_agent_alias/4,
         create_data_source/3,
         create_data_source/4,
         create_flow/2,
         create_flow/3,
         create_flow_alias/3,
         create_flow_alias/4,
         create_flow_version/3,
         create_flow_version/4,
         create_knowledge_base/2,
         create_knowledge_base/3,
         create_prompt/2,
         create_prompt/3,
         create_prompt_version/3,
         create_prompt_version/4,
         delete_agent/3,
         delete_agent/4,
         delete_agent_action_group/5,
         delete_agent_action_group/6,
         delete_agent_alias/4,
         delete_agent_alias/5,
         delete_agent_version/4,
         delete_agent_version/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_flow/3,
         delete_flow/4,
         delete_flow_alias/4,
         delete_flow_alias/5,
         delete_flow_version/4,
         delete_flow_version/5,
         delete_knowledge_base/3,
         delete_knowledge_base/4,
         delete_knowledge_base_documents/4,
         delete_knowledge_base_documents/5,
         delete_prompt/3,
         delete_prompt/4,
         disassociate_agent_collaborator/5,
         disassociate_agent_collaborator/6,
         disassociate_agent_knowledge_base/5,
         disassociate_agent_knowledge_base/6,
         get_agent/2,
         get_agent/4,
         get_agent/5,
         get_agent_action_group/4,
         get_agent_action_group/6,
         get_agent_action_group/7,
         get_agent_alias/3,
         get_agent_alias/5,
         get_agent_alias/6,
         get_agent_collaborator/4,
         get_agent_collaborator/6,
         get_agent_collaborator/7,
         get_agent_knowledge_base/4,
         get_agent_knowledge_base/6,
         get_agent_knowledge_base/7,
         get_agent_version/3,
         get_agent_version/5,
         get_agent_version/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_flow/2,
         get_flow/4,
         get_flow/5,
         get_flow_alias/3,
         get_flow_alias/5,
         get_flow_alias/6,
         get_flow_version/3,
         get_flow_version/5,
         get_flow_version/6,
         get_ingestion_job/4,
         get_ingestion_job/6,
         get_ingestion_job/7,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         get_knowledge_base_documents/4,
         get_knowledge_base_documents/5,
         get_prompt/2,
         get_prompt/4,
         get_prompt/5,
         ingest_knowledge_base_documents/4,
         ingest_knowledge_base_documents/5,
         list_agent_action_groups/4,
         list_agent_action_groups/5,
         list_agent_aliases/3,
         list_agent_aliases/4,
         list_agent_collaborators/4,
         list_agent_collaborators/5,
         list_agent_knowledge_bases/4,
         list_agent_knowledge_bases/5,
         list_agent_versions/3,
         list_agent_versions/4,
         list_agents/2,
         list_agents/3,
         list_data_sources/3,
         list_data_sources/4,
         list_flow_aliases/2,
         list_flow_aliases/4,
         list_flow_aliases/5,
         list_flow_versions/2,
         list_flow_versions/4,
         list_flow_versions/5,
         list_flows/1,
         list_flows/3,
         list_flows/4,
         list_ingestion_jobs/4,
         list_ingestion_jobs/5,
         list_knowledge_base_documents/4,
         list_knowledge_base_documents/5,
         list_knowledge_bases/2,
         list_knowledge_bases/3,
         list_prompts/1,
         list_prompts/3,
         list_prompts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         prepare_agent/3,
         prepare_agent/4,
         prepare_flow/3,
         prepare_flow/4,
         start_ingestion_job/4,
         start_ingestion_job/5,
         stop_ingestion_job/5,
         stop_ingestion_job/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent/3,
         update_agent/4,
         update_agent_action_group/5,
         update_agent_action_group/6,
         update_agent_alias/4,
         update_agent_alias/5,
         update_agent_collaborator/5,
         update_agent_collaborator/6,
         update_agent_knowledge_base/5,
         update_agent_knowledge_base/6,
         update_data_source/4,
         update_data_source/5,
         update_flow/3,
         update_flow/4,
         update_flow_alias/4,
         update_flow_alias/5,
         update_knowledge_base/3,
         update_knowledge_base/4,
         update_prompt/3,
         update_prompt/4,
         validate_flow_definition/2,
         validate_flow_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% validate_flow_definition_response() :: #{
%%   <<"validations">> => list(flow_validation()())
%% }
-type validate_flow_definition_response() :: #{binary() => any()}.


%% Example:
%% custom_orchestration() :: #{
%%   <<"executor">> => list()
%% }
-type custom_orchestration() :: #{binary() => any()}.


%% Example:
%% delete_knowledge_base_documents_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"documentIdentifiers">> := list(document_identifier()())
%% }
-type delete_knowledge_base_documents_request() :: #{binary() => any()}.


%% Example:
%% knowledge_base_configuration() :: #{
%%   <<"kendraKnowledgeBaseConfiguration">> => kendra_knowledge_base_configuration(),
%%   <<"sqlKnowledgeBaseConfiguration">> => sql_knowledge_base_configuration(),
%%   <<"type">> => list(any()),
%%   <<"vectorKnowledgeBaseConfiguration">> => vector_knowledge_base_configuration()
%% }
-type knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% unknown_node_output_flow_validation_details() :: #{
%%   <<"node">> => string(),
%%   <<"output">> => string()
%% }
-type unknown_node_output_flow_validation_details() :: #{binary() => any()}.

%% Example:
%% prepare_agent_request() :: #{}
-type prepare_agent_request() :: #{}.


%% Example:
%% update_flow_request() :: #{
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> := string(),
%%   <<"name">> := string()
%% }
-type update_flow_request() :: #{binary() => any()}.


%% Example:
%% storage_flow_node_s3_configuration() :: #{
%%   <<"bucketName">> => string()
%% }
-type storage_flow_node_s3_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_agent_collaborator_response() :: #{}
-type disassociate_agent_collaborator_response() :: #{}.


%% Example:
%% ingestion_job_statistics() :: #{
%%   <<"numberOfDocumentsDeleted">> => [float()],
%%   <<"numberOfDocumentsFailed">> => [float()],
%%   <<"numberOfDocumentsScanned">> => [float()],
%%   <<"numberOfMetadataDocumentsModified">> => [float()],
%%   <<"numberOfMetadataDocumentsScanned">> => [float()],
%%   <<"numberOfModifiedDocumentsIndexed">> => [float()],
%%   <<"numberOfNewDocumentsIndexed">> => [float()]
%% }
-type ingestion_job_statistics() :: #{binary() => any()}.


%% Example:
%% update_flow_alias_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"routingConfiguration">> := list(flow_alias_routing_configuration_list_item()())
%% }
-type update_flow_alias_request() :: #{binary() => any()}.


%% Example:
%% redshift_serverless_auth_configuration() :: #{
%%   <<"type">> => list(any()),
%%   <<"usernamePasswordSecretArn">> => string()
%% }
-type redshift_serverless_auth_configuration() :: #{binary() => any()}.


%% Example:
%% update_agent_action_group_request() :: #{
%%   <<"actionGroupExecutor">> => list(),
%%   <<"actionGroupName">> := string(),
%%   <<"actionGroupState">> => list(any()),
%%   <<"apiSchema">> => list(),
%%   <<"description">> => string(),
%%   <<"functionSchema">> => list(),
%%   <<"parentActionGroupSignature">> => list(any()),
%%   <<"parentActionGroupSignatureParams">> => map()
%% }
-type update_agent_action_group_request() :: #{binary() => any()}.


%% Example:
%% missing_node_input_flow_validation_details() :: #{
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type missing_node_input_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% share_point_data_source_configuration() :: #{
%%   <<"crawlerConfiguration">> => share_point_crawler_configuration(),
%%   <<"sourceConfiguration">> => share_point_source_configuration()
%% }
-type share_point_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% text_prompt_template_configuration() :: #{
%%   <<"cachePoint">> => cache_point_block(),
%%   <<"inputVariables">> => list(prompt_input_variable()()),
%%   <<"text">> => string()
%% }
-type text_prompt_template_configuration() :: #{binary() => any()}.


%% Example:
%% missing_default_condition_flow_validation_details() :: #{
%%   <<"node">> => string()
%% }
-type missing_default_condition_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% specific_tool_choice() :: #{
%%   <<"name">> => string()
%% }
-type specific_tool_choice() :: #{binary() => any()}.


%% Example:
%% update_flow_alias_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"flowId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"routingConfiguration">> => list(flow_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_flow_alias_response() :: #{binary() => any()}.


%% Example:
%% memory_configuration() :: #{
%%   <<"enabledMemoryTypes">> => list(list(any())()),
%%   <<"sessionSummaryConfiguration">> => session_summary_configuration(),
%%   <<"storageDays">> => integer()
%% }
-type memory_configuration() :: #{binary() => any()}.


%% Example:
%% query_generation_context() :: #{
%%   <<"curatedQueries">> => list(curated_query()()),
%%   <<"tables">> => list(query_generation_table()())
%% }
-type query_generation_context() :: #{binary() => any()}.


%% Example:
%% unreachable_node_flow_validation_details() :: #{
%%   <<"node">> => string()
%% }
-type unreachable_node_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% context_enrichment_configuration() :: #{
%%   <<"bedrockFoundationModelConfiguration">> => bedrock_foundation_model_context_enrichment_configuration(),
%%   <<"type">> => list(any())
%% }
-type context_enrichment_configuration() :: #{binary() => any()}.


%% Example:
%% missing_connection_configuration_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type missing_connection_configuration_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% get_agent_alias_response() :: #{
%%   <<"agentAlias">> => agent_alias()
%% }
-type get_agent_alias_response() :: #{binary() => any()}.


%% Example:
%% create_prompt_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"variants">> => list(prompt_variant()()),
%%   <<"version">> => string()
%% }
-type create_prompt_version_response() :: #{binary() => any()}.


%% Example:
%% flow_condition() :: #{
%%   <<"expression">> => string(),
%%   <<"name">> => string()
%% }
-type flow_condition() :: #{binary() => any()}.


%% Example:
%% prompt_flow_node_inline_configuration() :: #{
%%   <<"additionalModelRequestFields">> => [any()],
%%   <<"inferenceConfiguration">> => list(),
%%   <<"modelId">> => string(),
%%   <<"templateConfiguration">> => list(),
%%   <<"templateType">> => list(any())
%% }
-type prompt_flow_node_inline_configuration() :: #{binary() => any()}.


%% Example:
%% prompt_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type prompt_summary() :: #{binary() => any()}.


%% Example:
%% list_agents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agents_request() :: #{binary() => any()}.


%% Example:
%% storage_flow_node_configuration() :: #{
%%   <<"serviceConfiguration">> => list()
%% }
-type storage_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% redshift_query_engine_storage_configuration() :: #{
%%   <<"awsDataCatalogConfiguration">> => redshift_query_engine_aws_data_catalog_storage_configuration(),
%%   <<"redshiftConfiguration">> => redshift_query_engine_redshift_storage_configuration(),
%%   <<"type">> => list(any())
%% }
-type redshift_query_engine_storage_configuration() :: #{binary() => any()}.


%% Example:
%% create_flow_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_flow_request() :: #{binary() => any()}.


%% Example:
%% list_agent_action_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_action_groups_request() :: #{binary() => any()}.


%% Example:
%% create_data_source_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dataDeletionPolicy">> => list(any()),
%%   <<"dataSourceConfiguration">> := data_source_configuration(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type create_data_source_request() :: #{binary() => any()}.


%% Example:
%% data_source_configuration() :: #{
%%   <<"confluenceConfiguration">> => confluence_data_source_configuration(),
%%   <<"s3Configuration">> => s3_data_source_configuration(),
%%   <<"salesforceConfiguration">> => salesforce_data_source_configuration(),
%%   <<"sharePointConfiguration">> => share_point_data_source_configuration(),
%%   <<"type">> => list(any()),
%%   <<"webConfiguration">> => web_data_source_configuration()
%% }
-type data_source_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% pattern_object_filter_configuration() :: #{
%%   <<"filters">> => list(pattern_object_filter()())
%% }
-type pattern_object_filter_configuration() :: #{binary() => any()}.


%% Example:
%% ingest_knowledge_base_documents_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"documents">> := list(knowledge_base_document()())
%% }
-type ingest_knowledge_base_documents_request() :: #{binary() => any()}.


%% Example:
%% web_source_configuration() :: #{
%%   <<"urlConfiguration">> => url_configuration()
%% }
-type web_source_configuration() :: #{binary() => any()}.


%% Example:
%% start_ingestion_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string()
%% }
-type start_ingestion_job_request() :: #{binary() => any()}.

%% Example:
%% any_tool_choice() :: #{}
-type any_tool_choice() :: #{}.


%% Example:
%% inference_configuration() :: #{
%%   <<"maximumLength">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topK">> => integer(),
%%   <<"topP">> => float()
%% }
-type inference_configuration() :: #{binary() => any()}.


%% Example:
%% fixed_size_chunking_configuration() :: #{
%%   <<"maxTokens">> => [integer()],
%%   <<"overlapPercentage">> => [integer()]
%% }
-type fixed_size_chunking_configuration() :: #{binary() => any()}.


%% Example:
%% list_agents_response() :: #{
%%   <<"agentSummaries">> => list(agent_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agents_response() :: #{binary() => any()}.


%% Example:
%% transformation() :: #{
%%   <<"stepToApply">> => list(any()),
%%   <<"transformationFunction">> => transformation_function()
%% }
-type transformation() :: #{binary() => any()}.

%% Example:
%% auto_tool_choice() :: #{}
-type auto_tool_choice() :: #{}.


%% Example:
%% mismatched_node_input_type_flow_validation_details() :: #{
%%   <<"expectedType">> => list(any()),
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type mismatched_node_input_type_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% custom_transformation_configuration() :: #{
%%   <<"intermediateStorage">> => intermediate_storage(),
%%   <<"transformations">> => list(transformation()())
%% }
-type custom_transformation_configuration() :: #{binary() => any()}.


%% Example:
%% create_agent_request() :: #{
%%   <<"agentCollaboration">> => list(any()),
%%   <<"agentName">> := string(),
%%   <<"agentResourceRoleArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"customOrchestration">> => custom_orchestration(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"memoryConfiguration">> => memory_configuration(),
%%   <<"orchestrationType">> => list(any()),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"tags">> => map()
%% }
-type create_agent_request() :: #{binary() => any()}.


%% Example:
%% session_summary_configuration() :: #{
%%   <<"maxRecentSessions">> => integer()
%% }
-type session_summary_configuration() :: #{binary() => any()}.


%% Example:
%% unknown_connection_source_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unknown_connection_source_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% get_flow_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"validations">> => list(flow_validation()()),
%%   <<"version">> => string()
%% }
-type get_flow_response() :: #{binary() => any()}.


%% Example:
%% flow_data_connection_configuration() :: #{
%%   <<"sourceOutput">> => string(),
%%   <<"targetInput">> => string()
%% }
-type flow_data_connection_configuration() :: #{binary() => any()}.


%% Example:
%% salesforce_data_source_configuration() :: #{
%%   <<"crawlerConfiguration">> => salesforce_crawler_configuration(),
%%   <<"sourceConfiguration">> => salesforce_source_configuration()
%% }
-type salesforce_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% list_prompts_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"promptSummaries">> => list(prompt_summary()())
%% }
-type list_prompts_response() :: #{binary() => any()}.


%% Example:
%% open_search_serverless_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"textField">> => string(),
%%   <<"vectorField">> => string()
%% }
-type open_search_serverless_field_mapping() :: #{binary() => any()}.


%% Example:
%% update_agent_alias_request() :: #{
%%   <<"agentAliasName">> := string(),
%%   <<"description">> => string(),
%%   <<"routingConfiguration">> => list(agent_alias_routing_configuration_list_item()())
%% }
-type update_agent_alias_request() :: #{binary() => any()}.


%% Example:
%% prompt_override_configuration() :: #{
%%   <<"overrideLambda">> => string(),
%%   <<"promptConfigurations">> => list(prompt_configuration()())
%% }
-type prompt_override_configuration() :: #{binary() => any()}.


%% Example:
%% mongo_db_atlas_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"textField">> => string(),
%%   <<"vectorField">> => string()
%% }
-type mongo_db_atlas_field_mapping() :: #{binary() => any()}.


%% Example:
%% update_agent_knowledge_base_response() :: #{
%%   <<"agentKnowledgeBase">> => agent_knowledge_base()
%% }
-type update_agent_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% get_knowledge_base_documents_request() :: #{
%%   <<"documentIdentifiers">> := list(document_identifier()())
%% }
-type get_knowledge_base_documents_request() :: #{binary() => any()}.


%% Example:
%% flow_node() :: #{
%%   <<"configuration">> => list(),
%%   <<"inputs">> => list(flow_node_input()()),
%%   <<"name">> => string(),
%%   <<"outputs">> => list(flow_node_output()()),
%%   <<"type">> => list(any())
%% }
-type flow_node() :: #{binary() => any()}.


%% Example:
%% query_generation_column() :: #{
%%   <<"description">> => string(),
%%   <<"inclusion">> => list(any()),
%%   <<"name">> => string()
%% }
-type query_generation_column() :: #{binary() => any()}.


%% Example:
%% list_knowledge_base_documents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_base_documents_request() :: #{binary() => any()}.


%% Example:
%% text_content_doc() :: #{
%%   <<"data">> => string()
%% }
-type text_content_doc() :: #{binary() => any()}.


%% Example:
%% metadata_attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => metadata_attribute_value()
%% }
-type metadata_attribute() :: #{binary() => any()}.


%% Example:
%% curated_query() :: #{
%%   <<"naturalLanguage">> => string(),
%%   <<"sql">> => string()
%% }
-type curated_query() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_summary() :: #{
%%   <<"agentDescriptor">> => agent_descriptor(),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"collaborationInstruction">> => string(),
%%   <<"collaboratorId">> => string(),
%%   <<"collaboratorName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"relayConversationHistory">> => list(any())
%% }
-type agent_collaborator_summary() :: #{binary() => any()}.


%% Example:
%% delete_flow_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_flow_request() :: #{binary() => any()}.

%% Example:
%% stop_ingestion_job_request() :: #{}
-type stop_ingestion_job_request() :: #{}.


%% Example:
%% update_knowledge_base_request() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseConfiguration">> := knowledge_base_configuration(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"storageConfiguration">> => storage_configuration()
%% }
-type update_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% flow_validation() :: #{
%%   <<"details">> => list(),
%%   <<"message">> => string(),
%%   <<"severity">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type flow_validation() :: #{binary() => any()}.


%% Example:
%% parameter_detail() :: #{
%%   <<"description">> => string(),
%%   <<"required">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type parameter_detail() :: #{binary() => any()}.


%% Example:
%% flow_definition() :: #{
%%   <<"connections">> => list(flow_connection()()),
%%   <<"nodes">> => list(flow_node()())
%% }
-type flow_definition() :: #{binary() => any()}.


%% Example:
%% get_flow_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type get_flow_version_response() :: #{binary() => any()}.


%% Example:
%% delete_knowledge_base_response() :: #{
%%   <<"knowledgeBaseId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% open_search_serverless_configuration() :: #{
%%   <<"collectionArn">> => string(),
%%   <<"fieldMapping">> => open_search_serverless_field_mapping(),
%%   <<"vectorIndexName">> => string()
%% }
-type open_search_serverless_configuration() :: #{binary() => any()}.


%% Example:
%% list_flow_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_flow_versions_request() :: #{binary() => any()}.


%% Example:
%% update_prompt_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"variants">> => list(prompt_variant()()),
%%   <<"version">> => string()
%% }
-type update_prompt_response() :: #{binary() => any()}.


%% Example:
%% flow_node_input() :: #{
%%   <<"expression">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type flow_node_input() :: #{binary() => any()}.


%% Example:
%% prepare_agent_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string(),
%%   <<"preparedAt">> => non_neg_integer()
%% }
-type prepare_agent_response() :: #{binary() => any()}.

%% Example:
%% iterator_flow_node_configuration() :: #{}
-type iterator_flow_node_configuration() :: #{}.


%% Example:
%% prompt_metadata_entry() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type prompt_metadata_entry() :: #{binary() => any()}.


%% Example:
%% prompt_input_variable() :: #{
%%   <<"name">> => string()
%% }
-type prompt_input_variable() :: #{binary() => any()}.


%% Example:
%% update_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type update_data_source_response() :: #{binary() => any()}.


%% Example:
%% create_flow_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_flow_response() :: #{binary() => any()}.


%% Example:
%% rds_configuration() :: #{
%%   <<"credentialsSecretArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"fieldMapping">> => rds_field_mapping(),
%%   <<"resourceArn">> => string(),
%%   <<"tableName">> => string()
%% }
-type rds_configuration() :: #{binary() => any()}.


%% Example:
%% delete_flow_response() :: #{
%%   <<"id">> => string()
%% }
-type delete_flow_response() :: #{binary() => any()}.


%% Example:
%% create_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base()
%% }
-type create_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% parsing_configuration() :: #{
%%   <<"bedrockDataAutomationConfiguration">> => bedrock_data_automation_configuration(),
%%   <<"bedrockFoundationModelConfiguration">> => bedrock_foundation_model_configuration(),
%%   <<"parsingStrategy">> => list(any())
%% }
-type parsing_configuration() :: #{binary() => any()}.


%% Example:
%% list_flow_aliases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_flow_aliases_request() :: #{binary() => any()}.

%% Example:
%% get_agent_knowledge_base_request() :: #{}
-type get_agent_knowledge_base_request() :: #{}.


%% Example:
%% agent_version_summary() :: #{
%%   <<"agentName">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_version_summary() :: #{binary() => any()}.


%% Example:
%% document_identifier() :: #{
%%   <<"custom">> => custom_document_identifier(),
%%   <<"dataSourceType">> => list(any()),
%%   <<"s3">> => s3_location()
%% }
-type document_identifier() :: #{binary() => any()}.


%% Example:
%% malformed_node_input_expression_flow_validation_details() :: #{
%%   <<"cause">> => string(),
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type malformed_node_input_expression_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% share_point_crawler_configuration() :: #{
%%   <<"filterConfiguration">> => crawl_filter_configuration()
%% }
-type share_point_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% ingest_knowledge_base_documents_response() :: #{
%%   <<"documentDetails">> => list(knowledge_base_document_detail()())
%% }
-type ingest_knowledge_base_documents_response() :: #{binary() => any()}.


%% Example:
%% action_group_summary() :: #{
%%   <<"actionGroupId">> => string(),
%%   <<"actionGroupName">> => string(),
%%   <<"actionGroupState">> => list(any()),
%%   <<"description">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type action_group_summary() :: #{binary() => any()}.


%% Example:
%% bedrock_foundation_model_context_enrichment_configuration() :: #{
%%   <<"enrichmentStrategyConfiguration">> => enrichment_strategy_configuration(),
%%   <<"modelArn">> => string()
%% }
-type bedrock_foundation_model_context_enrichment_configuration() :: #{binary() => any()}.


%% Example:
%% redshift_provisioned_auth_configuration() :: #{
%%   <<"databaseUser">> => [string()],
%%   <<"type">> => list(any()),
%%   <<"usernamePasswordSecretArn">> => string()
%% }
-type redshift_provisioned_auth_configuration() :: #{binary() => any()}.


%% Example:
%% knowledge_base_flow_node_configuration() :: #{
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"modelId">> => string()
%% }
-type knowledge_base_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% create_flow_alias_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"flowId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"routingConfiguration">> => list(flow_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_flow_alias_response() :: #{binary() => any()}.


%% Example:
%% redshift_query_engine_configuration() :: #{
%%   <<"provisionedConfiguration">> => redshift_provisioned_configuration(),
%%   <<"serverlessConfiguration">> => redshift_serverless_configuration(),
%%   <<"type">> => list(any())
%% }
-type redshift_query_engine_configuration() :: #{binary() => any()}.


%% Example:
%% delete_agent_version_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_agent_version_request() :: #{binary() => any()}.


%% Example:
%% delete_prompt_response() :: #{
%%   <<"id">> => string(),
%%   <<"version">> => string()
%% }
-type delete_prompt_response() :: #{binary() => any()}.


%% Example:
%% list_agent_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_versions_request() :: #{binary() => any()}.


%% Example:
%% salesforce_source_configuration() :: #{
%%   <<"authType">> => list(any()),
%%   <<"credentialsSecretArn">> => string(),
%%   <<"hostUrl">> => string()
%% }
-type salesforce_source_configuration() :: #{binary() => any()}.


%% Example:
%% ingestion_job() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"ingestionJobId">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"statistics">> => ingestion_job_statistics(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type ingestion_job() :: #{binary() => any()}.


%% Example:
%% update_agent_collaborator_request() :: #{
%%   <<"agentDescriptor">> := agent_descriptor(),
%%   <<"collaborationInstruction">> := string(),
%%   <<"collaboratorName">> := string(),
%%   <<"relayConversationHistory">> => list(any())
%% }
-type update_agent_collaborator_request() :: #{binary() => any()}.


%% Example:
%% delete_prompt_request() :: #{
%%   <<"promptVersion">> => string()
%% }
-type delete_prompt_request() :: #{binary() => any()}.


%% Example:
%% kendra_knowledge_base_configuration() :: #{
%%   <<"kendraIndexArn">> => string()
%% }
-type kendra_knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% hierarchical_chunking_configuration() :: #{
%%   <<"levelConfigurations">> => list(hierarchical_chunking_level_configuration()()),
%%   <<"overlapTokens">> => [integer()]
%% }
-type hierarchical_chunking_configuration() :: #{binary() => any()}.


%% Example:
%% flow_connection() :: #{
%%   <<"configuration">> => list(),
%%   <<"name">> => string(),
%%   <<"source">> => string(),
%%   <<"target">> => string(),
%%   <<"type">> => list(any())
%% }
-type flow_connection() :: #{binary() => any()}.


%% Example:
%% get_prompt_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"variants">> => list(prompt_variant()()),
%%   <<"version">> => string()
%% }
-type get_prompt_response() :: #{binary() => any()}.


%% Example:
%% get_agent_action_group_response() :: #{
%%   <<"agentActionGroup">> => agent_action_group()
%% }
-type get_agent_action_group_response() :: #{binary() => any()}.


%% Example:
%% redshift_provisioned_configuration() :: #{
%%   <<"authConfiguration">> => redshift_provisioned_auth_configuration(),
%%   <<"clusterIdentifier">> => string()
%% }
-type redshift_provisioned_configuration() :: #{binary() => any()}.


%% Example:
%% transformation_function() :: #{
%%   <<"transformationLambdaConfiguration">> => transformation_lambda_configuration()
%% }
-type transformation_function() :: #{binary() => any()}.

%% Example:
%% delete_agent_action_group_response() :: #{}
-type delete_agent_action_group_response() :: #{}.


%% Example:
%% mismatched_node_output_type_flow_validation_details() :: #{
%%   <<"expectedType">> => list(any()),
%%   <<"node">> => string(),
%%   <<"output">> => string()
%% }
-type mismatched_node_output_type_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% create_agent_action_group_response() :: #{
%%   <<"agentActionGroup">> => agent_action_group()
%% }
-type create_agent_action_group_response() :: #{binary() => any()}.


%% Example:
%% delete_agent_alias_response() :: #{
%%   <<"agentAliasId">> => string(),
%%   <<"agentAliasStatus">> => list(any()),
%%   <<"agentId">> => string()
%% }
-type delete_agent_alias_response() :: #{binary() => any()}.


%% Example:
%% list_flows_response() :: #{
%%   <<"flowSummaries">> => list(flow_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_flows_response() :: #{binary() => any()}.

%% Example:
%% get_agent_version_request() :: #{}
-type get_agent_version_request() :: #{}.


%% Example:
%% create_agent_response() :: #{
%%   <<"agent">> => agent()
%% }
-type create_agent_response() :: #{binary() => any()}.


%% Example:
%% list_data_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_request() :: #{binary() => any()}.


%% Example:
%% retrieval_flow_node_configuration() :: #{
%%   <<"serviceConfiguration">> => list()
%% }
-type retrieval_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% delete_flow_version_response() :: #{
%%   <<"id">> => string(),
%%   <<"version">> => string()
%% }
-type delete_flow_version_response() :: #{binary() => any()}.


%% Example:
%% delete_data_source_response() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_data_source_response() :: #{binary() => any()}.


%% Example:
%% list_agent_aliases_response() :: #{
%%   <<"agentAliasSummaries">> => list(agent_alias_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_aliases_response() :: #{binary() => any()}.


%% Example:
%% create_knowledge_base_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"knowledgeBaseConfiguration">> := knowledge_base_configuration(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"storageConfiguration">> => storage_configuration(),
%%   <<"tags">> => map()
%% }
-type create_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% knowledge_base() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseConfiguration">> => knowledge_base_configuration(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"storageConfiguration">> => storage_configuration(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type knowledge_base() :: #{binary() => any()}.


%% Example:
%% list_flow_versions_response() :: #{
%%   <<"flowVersionSummaries">> => list(flow_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_flow_versions_response() :: #{binary() => any()}.


%% Example:
%% create_flow_alias_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"routingConfiguration">> := list(flow_alias_routing_configuration_list_item()()),
%%   <<"tags">> => map()
%% }
-type create_flow_alias_request() :: #{binary() => any()}.

%% Example:
%% get_ingestion_job_request() :: #{}
-type get_ingestion_job_request() :: #{}.


%% Example:
%% knowledge_base_summary() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type knowledge_base_summary() :: #{binary() => any()}.


%% Example:
%% update_agent_response() :: #{
%%   <<"agent">> => agent()
%% }
-type update_agent_response() :: #{binary() => any()}.


%% Example:
%% duplicate_condition_expression_flow_validation_details() :: #{
%%   <<"expression">> => string(),
%%   <<"node">> => string()
%% }
-type duplicate_condition_expression_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_request() :: #{binary() => any()}.


%% Example:
%% create_prompt_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"variants">> => list(prompt_variant()())
%% }
-type create_prompt_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% agent_knowledge_base_summary() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseState">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_knowledge_base_summary() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% ingestion_job_summary() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"ingestionJobId">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"statistics">> => ingestion_job_statistics(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type ingestion_job_summary() :: #{binary() => any()}.


%% Example:
%% pattern_object_filter() :: #{
%%   <<"exclusionFilters">> => list(string()()),
%%   <<"inclusionFilters">> => list(string()()),
%%   <<"objectType">> => string()
%% }
-type pattern_object_filter() :: #{binary() => any()}.


%% Example:
%% knowledge_base_document() :: #{
%%   <<"content">> => document_content(),
%%   <<"metadata">> => document_metadata()
%% }
-type knowledge_base_document() :: #{binary() => any()}.


%% Example:
%% flow_node_output() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type flow_node_output() :: #{binary() => any()}.


%% Example:
%% embedding_model_configuration() :: #{
%%   <<"bedrockEmbeddingModelConfiguration">> => bedrock_embedding_model_configuration()
%% }
-type embedding_model_configuration() :: #{binary() => any()}.

%% Example:
%% get_flow_version_request() :: #{}
-type get_flow_version_request() :: #{}.


%% Example:
%% create_prompt_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"variants">> => list(prompt_variant()()),
%%   <<"version">> => string()
%% }
-type create_prompt_response() :: #{binary() => any()}.


%% Example:
%% seed_url() :: #{
%%   <<"url">> => string()
%% }
-type seed_url() :: #{binary() => any()}.


%% Example:
%% get_ingestion_job_response() :: #{
%%   <<"ingestionJob">> => ingestion_job()
%% }
-type get_ingestion_job_response() :: #{binary() => any()}.


%% Example:
%% flow_version_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type flow_version_summary() :: #{binary() => any()}.


%% Example:
%% transformation_lambda_configuration() :: #{
%%   <<"lambdaArn">> => string()
%% }
-type transformation_lambda_configuration() :: #{binary() => any()}.

%% Example:
%% get_data_source_request() :: #{}
-type get_data_source_request() :: #{}.


%% Example:
%% url_configuration() :: #{
%%   <<"seedUrls">> => list(seed_url()())
%% }
-type url_configuration() :: #{binary() => any()}.


%% Example:
%% validate_flow_definition_request() :: #{
%%   <<"definition">> := flow_definition()
%% }
-type validate_flow_definition_request() :: #{binary() => any()}.


%% Example:
%% unknown_connection_source_output_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unknown_connection_source_output_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% agent_flow_node_configuration() :: #{
%%   <<"agentAliasArn">> => string()
%% }
-type agent_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% web_crawler_limits() :: #{
%%   <<"maxPages">> => [integer()],
%%   <<"rateLimit">> => [integer()]
%% }
-type web_crawler_limits() :: #{binary() => any()}.


%% Example:
%% s3_content() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type s3_content() :: #{binary() => any()}.

%% Example:
%% input_flow_node_configuration() :: #{}
-type input_flow_node_configuration() :: #{}.


%% Example:
%% intermediate_storage() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type intermediate_storage() :: #{binary() => any()}.


%% Example:
%% list_knowledge_base_documents_response() :: #{
%%   <<"documentDetails">> => list(knowledge_base_document_detail()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_knowledge_base_documents_response() :: #{binary() => any()}.


%% Example:
%% delete_flow_alias_response() :: #{
%%   <<"flowId">> => string(),
%%   <<"id">> => string()
%% }
-type delete_flow_alias_response() :: #{binary() => any()}.


%% Example:
%% bedrock_agent_function() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => map(),
%%   <<"requireConfirmation">> => list(any())
%% }
-type bedrock_agent_function() :: #{binary() => any()}.


%% Example:
%% bedrock_foundation_model_configuration() :: #{
%%   <<"modelArn">> => string(),
%%   <<"parsingModality">> => list(any()),
%%   <<"parsingPrompt">> => parsing_prompt()
%% }
-type bedrock_foundation_model_configuration() :: #{binary() => any()}.


%% Example:
%% tool_specification() :: #{
%%   <<"description">> => string(),
%%   <<"inputSchema">> => list(),
%%   <<"name">> => string()
%% }
-type tool_specification() :: #{binary() => any()}.


%% Example:
%% update_agent_alias_response() :: #{
%%   <<"agentAlias">> => agent_alias()
%% }
-type update_agent_alias_response() :: #{binary() => any()}.


%% Example:
%% prepare_flow_response() :: #{
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type prepare_flow_response() :: #{binary() => any()}.


%% Example:
%% redis_enterprise_cloud_configuration() :: #{
%%   <<"credentialsSecretArn">> => string(),
%%   <<"endpoint">> => string(),
%%   <<"fieldMapping">> => redis_enterprise_cloud_field_mapping(),
%%   <<"vectorIndexName">> => string()
%% }
-type redis_enterprise_cloud_configuration() :: #{binary() => any()}.


%% Example:
%% storage_configuration() :: #{
%%   <<"mongoDbAtlasConfiguration">> => mongo_db_atlas_configuration(),
%%   <<"neptuneAnalyticsConfiguration">> => neptune_analytics_configuration(),
%%   <<"opensearchServerlessConfiguration">> => open_search_serverless_configuration(),
%%   <<"pineconeConfiguration">> => pinecone_configuration(),
%%   <<"rdsConfiguration">> => rds_configuration(),
%%   <<"redisEnterpriseCloudConfiguration">> => redis_enterprise_cloud_configuration(),
%%   <<"type">> => list(any())
%% }
-type storage_configuration() :: #{binary() => any()}.


%% Example:
%% list_agent_knowledge_bases_response() :: #{
%%   <<"agentKnowledgeBaseSummaries">> => list(agent_knowledge_base_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_knowledge_bases_response() :: #{binary() => any()}.


%% Example:
%% list_data_sources_response() :: #{
%%   <<"dataSourceSummaries">> => list(data_source_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_response() :: #{binary() => any()}.

%% Example:
%% delete_data_source_request() :: #{}
-type delete_data_source_request() :: #{}.


%% Example:
%% confluence_data_source_configuration() :: #{
%%   <<"crawlerConfiguration">> => confluence_crawler_configuration(),
%%   <<"sourceConfiguration">> => confluence_source_configuration()
%% }
-type confluence_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% knowledge_base_document_detail() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"identifier">> => document_identifier(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type knowledge_base_document_detail() :: #{binary() => any()}.


%% Example:
%% chunking_configuration() :: #{
%%   <<"chunkingStrategy">> => list(any()),
%%   <<"fixedSizeChunkingConfiguration">> => fixed_size_chunking_configuration(),
%%   <<"hierarchicalChunkingConfiguration">> => hierarchical_chunking_configuration(),
%%   <<"semanticChunkingConfiguration">> => semantic_chunking_configuration()
%% }
-type chunking_configuration() :: #{binary() => any()}.


%% Example:
%% agent() :: #{
%%   <<"agentArn">> => string(),
%%   <<"agentCollaboration">> => list(any()),
%%   <<"agentId">> => string(),
%%   <<"agentName">> => string(),
%%   <<"agentResourceRoleArn">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customOrchestration">> => custom_orchestration(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"memoryConfiguration">> => memory_configuration(),
%%   <<"orchestrationType">> => list(any()),
%%   <<"preparedAt">> => non_neg_integer(),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"recommendedActions">> => list(string()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent() :: #{binary() => any()}.


%% Example:
%% delete_agent_action_group_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_agent_action_group_request() :: #{binary() => any()}.


%% Example:
%% get_flow_alias_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"flowId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"routingConfiguration">> => list(flow_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_flow_alias_response() :: #{binary() => any()}.


%% Example:
%% list_ingestion_jobs_response() :: #{
%%   <<"ingestionJobSummaries">> => list(ingestion_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_ingestion_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_ingestion_jobs_request() :: #{
%%   <<"filters">> => list(ingestion_job_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => ingestion_job_sort_by()
%% }
-type list_ingestion_jobs_request() :: #{binary() => any()}.


%% Example:
%% agent_alias_summary() :: #{
%%   <<"agentAliasId">> => string(),
%%   <<"agentAliasName">> => string(),
%%   <<"agentAliasStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"routingConfiguration">> => list(agent_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_alias_summary() :: #{binary() => any()}.


%% Example:
%% parsing_prompt() :: #{
%%   <<"parsingPromptText">> => string()
%% }
-type parsing_prompt() :: #{binary() => any()}.


%% Example:
%% cache_point_block() :: #{
%%   <<"type">> => list(any())
%% }
-type cache_point_block() :: #{binary() => any()}.

%% Example:
%% delete_knowledge_base_request() :: #{}
-type delete_knowledge_base_request() :: #{}.


%% Example:
%% create_flow_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string()
%% }
-type create_flow_version_request() :: #{binary() => any()}.


%% Example:
%% byte_content_doc() :: #{
%%   <<"data">> => binary(),
%%   <<"mimeType">> => [string()]
%% }
-type byte_content_doc() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% delete_flow_alias_request() :: #{}
-type delete_flow_alias_request() :: #{}.

%% Example:
%% get_agent_action_group_request() :: #{}
-type get_agent_action_group_request() :: #{}.


%% Example:
%% associate_agent_collaborator_request() :: #{
%%   <<"agentDescriptor">> := agent_descriptor(),
%%   <<"clientToken">> => string(),
%%   <<"collaborationInstruction">> := string(),
%%   <<"collaboratorName">> := string(),
%%   <<"relayConversationHistory">> => list(any())
%% }
-type associate_agent_collaborator_request() :: #{binary() => any()}.


%% Example:
%% delete_agent_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any())
%% }
-type delete_agent_response() :: #{binary() => any()}.


%% Example:
%% salesforce_crawler_configuration() :: #{
%%   <<"filterConfiguration">> => crawl_filter_configuration()
%% }
-type salesforce_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% list_agent_aliases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_aliases_request() :: #{binary() => any()}.


%% Example:
%% update_agent_action_group_response() :: #{
%%   <<"agentActionGroup">> => agent_action_group()
%% }
-type update_agent_action_group_response() :: #{binary() => any()}.


%% Example:
%% flow_alias_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"flowId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"routingConfiguration">> => list(flow_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type flow_alias_summary() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"uri">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% list_flows_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_flows_request() :: #{binary() => any()}.


%% Example:
%% unknown_connection_target_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unknown_connection_target_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% multiple_node_input_connections_flow_validation_details() :: #{
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type multiple_node_input_connections_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% confluence_source_configuration() :: #{
%%   <<"authType">> => list(any()),
%%   <<"credentialsSecretArn">> => string(),
%%   <<"hostType">> => list(any()),
%%   <<"hostUrl">> => string()
%% }
-type confluence_source_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_agent_knowledge_base_request() :: #{}
-type disassociate_agent_knowledge_base_request() :: #{}.


%% Example:
%% get_prompt_request() :: #{
%%   <<"promptVersion">> => string()
%% }
-type get_prompt_request() :: #{binary() => any()}.


%% Example:
%% custom_document_identifier() :: #{
%%   <<"id">> => [string()]
%% }
-type custom_document_identifier() :: #{binary() => any()}.


%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% neptune_analytics_configuration() :: #{
%%   <<"fieldMapping">> => neptune_analytics_field_mapping(),
%%   <<"graphArn">> => string()
%% }
-type neptune_analytics_configuration() :: #{binary() => any()}.

%% Example:
%% missing_ending_nodes_flow_validation_details() :: #{}
-type missing_ending_nodes_flow_validation_details() :: #{}.


%% Example:
%% agent_version() :: #{
%%   <<"agentArn">> => string(),
%%   <<"agentCollaboration">> => list(any()),
%%   <<"agentId">> => string(),
%%   <<"agentName">> => string(),
%%   <<"agentResourceRoleArn">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"memoryConfiguration">> => memory_configuration(),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"recommendedActions">> => list(string()()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type agent_version() :: #{binary() => any()}.


%% Example:
%% agent_collaborator() :: #{
%%   <<"agentDescriptor">> => agent_descriptor(),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"collaborationInstruction">> => string(),
%%   <<"collaboratorId">> => string(),
%%   <<"collaboratorName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"relayConversationHistory">> => list(any())
%% }
-type agent_collaborator() :: #{binary() => any()}.


%% Example:
%% agent_alias_routing_configuration_list_item() :: #{
%%   <<"agentVersion">> => string(),
%%   <<"provisionedThroughput">> => string()
%% }
-type agent_alias_routing_configuration_list_item() :: #{binary() => any()}.


%% Example:
%% update_agent_collaborator_response() :: #{
%%   <<"agentCollaborator">> => agent_collaborator()
%% }
-type update_agent_collaborator_response() :: #{binary() => any()}.


%% Example:
%% semantic_chunking_configuration() :: #{
%%   <<"breakpointPercentileThreshold">> => [integer()],
%%   <<"bufferSize">> => [integer()],
%%   <<"maxTokens">> => [integer()]
%% }
-type semantic_chunking_configuration() :: #{binary() => any()}.

%% Example:
%% missing_starting_nodes_flow_validation_details() :: #{}
-type missing_starting_nodes_flow_validation_details() :: #{}.


%% Example:
%% pinecone_configuration() :: #{
%%   <<"connectionString">> => string(),
%%   <<"credentialsSecretArn">> => string(),
%%   <<"fieldMapping">> => pinecone_field_mapping(),
%%   <<"namespace">> => string()
%% }
-type pinecone_configuration() :: #{binary() => any()}.


%% Example:
%% agent_alias() :: #{
%%   <<"agentAliasArn">> => string(),
%%   <<"agentAliasHistoryEvents">> => list(agent_alias_history_event()()),
%%   <<"agentAliasId">> => string(),
%%   <<"agentAliasName">> => string(),
%%   <<"agentAliasStatus">> => list(any()),
%%   <<"agentId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"routingConfiguration">> => list(agent_alias_routing_configuration_list_item()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_alias() :: #{binary() => any()}.


%% Example:
%% s3_identifier() :: #{
%%   <<"s3BucketName">> => string(),
%%   <<"s3ObjectKey">> => string()
%% }
-type s3_identifier() :: #{binary() => any()}.


%% Example:
%% list_prompts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"promptIdentifier">> => string()
%% }
-type list_prompts_request() :: #{binary() => any()}.

%% Example:
%% disassociate_agent_collaborator_request() :: #{}
-type disassociate_agent_collaborator_request() :: #{}.


%% Example:
%% list_agent_collaborators_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_collaborators_request() :: #{binary() => any()}.


%% Example:
%% share_point_source_configuration() :: #{
%%   <<"authType">> => list(any()),
%%   <<"credentialsSecretArn">> => string(),
%%   <<"domain">> => string(),
%%   <<"hostType">> => list(any()),
%%   <<"siteUrls">> => list(string()()),
%%   <<"tenantId">> => string()
%% }
-type share_point_source_configuration() :: #{binary() => any()}.


%% Example:
%% web_crawler_configuration() :: #{
%%   <<"crawlerLimits">> => web_crawler_limits(),
%%   <<"exclusionFilters">> => list(string()()),
%%   <<"inclusionFilters">> => list(string()()),
%%   <<"scope">> => list(any()),
%%   <<"userAgent">> => string(),
%%   <<"userAgentHeader">> => string()
%% }
-type web_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_agent_action_group_request() :: #{
%%   <<"actionGroupExecutor">> => list(),
%%   <<"actionGroupName">> := string(),
%%   <<"actionGroupState">> => list(any()),
%%   <<"apiSchema">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"functionSchema">> => list(),
%%   <<"parentActionGroupSignature">> => list(any()),
%%   <<"parentActionGroupSignatureParams">> => map()
%% }
-type create_agent_action_group_request() :: #{binary() => any()}.

%% Example:
%% get_agent_collaborator_request() :: #{}
-type get_agent_collaborator_request() :: #{}.


%% Example:
%% list_agent_action_groups_response() :: #{
%%   <<"actionGroupSummaries">> => list(action_group_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_action_groups_response() :: #{binary() => any()}.


%% Example:
%% custom_s3_location() :: #{
%%   <<"bucketOwnerAccountId">> => string(),
%%   <<"uri">> => string()
%% }
-type custom_s3_location() :: #{binary() => any()}.


%% Example:
%% crawl_filter_configuration() :: #{
%%   <<"patternObjectFilter">> => pattern_object_filter_configuration(),
%%   <<"type">> => list(any())
%% }
-type crawl_filter_configuration() :: #{binary() => any()}.


%% Example:
%% create_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type create_data_source_response() :: #{binary() => any()}.


%% Example:
%% ingestion_job_filter() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type ingestion_job_filter() :: #{binary() => any()}.


%% Example:
%% document_content() :: #{
%%   <<"custom">> => custom_content(),
%%   <<"dataSourceType">> => list(any()),
%%   <<"s3">> => s3_content()
%% }
-type document_content() :: #{binary() => any()}.


%% Example:
%% flow_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type flow_summary() :: #{binary() => any()}.


%% Example:
%% create_agent_alias_response() :: #{
%%   <<"agentAlias">> => agent_alias()
%% }
-type create_agent_alias_response() :: #{binary() => any()}.


%% Example:
%% data_source_summary() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_source_summary() :: #{binary() => any()}.


%% Example:
%% agent_descriptor() :: #{
%%   <<"aliasArn">> => string()
%% }
-type agent_descriptor() :: #{binary() => any()}.


%% Example:
%% enrichment_strategy_configuration() :: #{
%%   <<"method">> => list(any())
%% }
-type enrichment_strategy_configuration() :: #{binary() => any()}.


%% Example:
%% sql_knowledge_base_configuration() :: #{
%%   <<"redshiftConfiguration">> => redshift_configuration(),
%%   <<"type">> => list(any())
%% }
-type sql_knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% update_prompt_request() :: #{
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"defaultVariant">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"variants">> => list(prompt_variant()())
%% }
-type update_prompt_request() :: #{binary() => any()}.


%% Example:
%% unknown_node_input_flow_validation_details() :: #{
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type unknown_node_input_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% agent_action_group() :: #{
%%   <<"actionGroupExecutor">> => list(),
%%   <<"actionGroupId">> => string(),
%%   <<"actionGroupName">> => string(),
%%   <<"actionGroupState">> => list(any()),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"apiSchema">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"functionSchema">> => list(),
%%   <<"parentActionGroupSignatureParams">> => map(),
%%   <<"parentActionSignature">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_action_group() :: #{binary() => any()}.


%% Example:
%% lex_flow_node_configuration() :: #{
%%   <<"botAliasArn">> => string(),
%%   <<"localeId">> => string()
%% }
-type lex_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% tool_configuration() :: #{
%%   <<"toolChoice">> => list(),
%%   <<"tools">> => list(list()())
%% }
-type tool_configuration() :: #{binary() => any()}.


%% Example:
%% prompt_model_inference_configuration() :: #{
%%   <<"maxTokens">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topP">> => float()
%% }
-type prompt_model_inference_configuration() :: #{binary() => any()}.


%% Example:
%% create_prompt_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"tags">> => map()
%% }
-type create_prompt_version_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_agent_knowledge_base_response() :: #{
%%   <<"agentKnowledgeBase">> => agent_knowledge_base()
%% }
-type get_agent_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% create_agent_alias_request() :: #{
%%   <<"agentAliasName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"routingConfiguration">> => list(agent_alias_routing_configuration_list_item()()),
%%   <<"tags">> => map()
%% }
-type create_agent_alias_request() :: #{binary() => any()}.


%% Example:
%% metadata_attribute_value() :: #{
%%   <<"booleanValue">> => [boolean()],
%%   <<"numberValue">> => float(),
%%   <<"stringListValue">> => list(string()()),
%%   <<"stringValue">> => string(),
%%   <<"type">> => list(any())
%% }
-type metadata_attribute_value() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_flow_alias_request() :: #{}
-type get_flow_alias_request() :: #{}.


%% Example:
%% update_agent_request() :: #{
%%   <<"agentCollaboration">> => list(any()),
%%   <<"agentName">> := string(),
%%   <<"agentResourceRoleArn">> := string(),
%%   <<"customOrchestration">> => custom_orchestration(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"foundationModel">> := string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"memoryConfiguration">> => memory_configuration(),
%%   <<"orchestrationType">> => list(any()),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration()
%% }
-type update_agent_request() :: #{binary() => any()}.


%% Example:
%% cyclic_connection_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type cyclic_connection_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% delete_agent_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_agent_request() :: #{binary() => any()}.


%% Example:
%% condition_flow_node_configuration() :: #{
%%   <<"conditions">> => list(flow_condition()())
%% }
-type condition_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% chat_prompt_template_configuration() :: #{
%%   <<"inputVariables">> => list(prompt_input_variable()()),
%%   <<"messages">> => list(message()()),
%%   <<"system">> => list(list()()),
%%   <<"toolConfiguration">> => tool_configuration()
%% }
-type chat_prompt_template_configuration() :: #{binary() => any()}.


%% Example:
%% list_agent_collaborators_response() :: #{
%%   <<"agentCollaboratorSummaries">> => list(agent_collaborator_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_collaborators_response() :: #{binary() => any()}.


%% Example:
%% malformed_condition_expression_flow_validation_details() :: #{
%%   <<"cause">> => string(),
%%   <<"condition">> => string(),
%%   <<"node">> => string()
%% }
-type malformed_condition_expression_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% create_flow_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type create_flow_version_response() :: #{binary() => any()}.

%% Example:
%% delete_agent_alias_request() :: #{}
-type delete_agent_alias_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base()
%% }
-type update_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% agent_alias_history_event() :: #{
%%   <<"endDate">> => non_neg_integer(),
%%   <<"routingConfiguration">> => list(agent_alias_routing_configuration_list_item()()),
%%   <<"startDate">> => non_neg_integer()
%% }
-type agent_alias_history_event() :: #{binary() => any()}.


%% Example:
%% update_data_source_request() :: #{
%%   <<"dataDeletionPolicy">> => list(any()),
%%   <<"dataSourceConfiguration">> := data_source_configuration(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type update_data_source_request() :: #{binary() => any()}.


%% Example:
%% update_agent_knowledge_base_request() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseState">> => list(any())
%% }
-type update_agent_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% redis_enterprise_cloud_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"textField">> => string(),
%%   <<"vectorField">> => string()
%% }
-type redis_enterprise_cloud_field_mapping() :: #{binary() => any()}.


%% Example:
%% document_metadata() :: #{
%%   <<"inlineAttributes">> => list(metadata_attribute()()),
%%   <<"s3Location">> => custom_s3_location(),
%%   <<"type">> => list(any())
%% }
-type document_metadata() :: #{binary() => any()}.

%% Example:
%% output_flow_node_configuration() :: #{}
-type output_flow_node_configuration() :: #{}.


%% Example:
%% ingestion_job_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type ingestion_job_sort_by() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_flow_aliases_response() :: #{
%%   <<"flowAliasSummaries">> => list(flow_alias_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_flow_aliases_response() :: #{binary() => any()}.


%% Example:
%% duplicate_connections_flow_validation_details() :: #{
%%   <<"source">> => string(),
%%   <<"target">> => string()
%% }
-type duplicate_connections_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% stop_ingestion_job_response() :: #{
%%   <<"ingestionJob">> => ingestion_job()
%% }
-type stop_ingestion_job_response() :: #{binary() => any()}.


%% Example:
%% get_agent_response() :: #{
%%   <<"agent">> => agent()
%% }
-type get_agent_response() :: #{binary() => any()}.


%% Example:
%% hierarchical_chunking_level_configuration() :: #{
%%   <<"maxTokens">> => [integer()]
%% }
-type hierarchical_chunking_level_configuration() :: #{binary() => any()}.


%% Example:
%% unsatisfied_connection_conditions_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unsatisfied_connection_conditions_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% redshift_serverless_configuration() :: #{
%%   <<"authConfiguration">> => redshift_serverless_auth_configuration(),
%%   <<"workgroupArn">> => string()
%% }
-type redshift_serverless_configuration() :: #{binary() => any()}.


%% Example:
%% agent_knowledge_base() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseState">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_knowledge_base() :: #{binary() => any()}.


%% Example:
%% lambda_function_flow_node_configuration() :: #{
%%   <<"lambdaArn">> => string()
%% }
-type lambda_function_flow_node_configuration() :: #{binary() => any()}.

%% Example:
%% collector_flow_node_configuration() :: #{}
-type collector_flow_node_configuration() :: #{}.


%% Example:
%% agent_summary() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentName">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"description">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"latestAgentVersion">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_summary() :: #{binary() => any()}.


%% Example:
%% bedrock_data_automation_configuration() :: #{
%%   <<"parsingModality">> => list(any())
%% }
-type bedrock_data_automation_configuration() :: #{binary() => any()}.


%% Example:
%% confluence_crawler_configuration() :: #{
%%   <<"filterConfiguration">> => crawl_filter_configuration()
%% }
-type confluence_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_response() :: #{
%%   <<"knowledgeBaseSummaries">> => list(knowledge_base_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_response() :: #{binary() => any()}.


%% Example:
%% get_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base()
%% }
-type get_knowledge_base_response() :: #{binary() => any()}.

%% Example:
%% prepare_flow_request() :: #{}
-type prepare_flow_request() :: #{}.


%% Example:
%% flow_conditional_connection_configuration() :: #{
%%   <<"condition">> => string()
%% }
-type flow_conditional_connection_configuration() :: #{binary() => any()}.


%% Example:
%% get_knowledge_base_documents_response() :: #{
%%   <<"documentDetails">> => list(knowledge_base_document_detail()())
%% }
-type get_knowledge_base_documents_response() :: #{binary() => any()}.


%% Example:
%% incompatible_connection_data_type_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type incompatible_connection_data_type_flow_validation_details() :: #{binary() => any()}.

%% Example:
%% disassociate_agent_knowledge_base_response() :: #{}
-type disassociate_agent_knowledge_base_response() :: #{}.


%% Example:
%% list_agent_versions_response() :: #{
%%   <<"agentVersionSummaries">> => list(agent_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_versions_response() :: #{binary() => any()}.


%% Example:
%% web_data_source_configuration() :: #{
%%   <<"crawlerConfiguration">> => web_crawler_configuration(),
%%   <<"sourceConfiguration">> => web_source_configuration()
%% }
-type web_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% get_agent_version_response() :: #{
%%   <<"agentVersion">> => agent_version()
%% }
-type get_agent_version_response() :: #{binary() => any()}.


%% Example:
%% supplemental_data_storage_location() :: #{
%%   <<"s3Location">> => s3_location(),
%%   <<"type">> => list(any())
%% }
-type supplemental_data_storage_location() :: #{binary() => any()}.


%% Example:
%% guardrail_configuration() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string()
%% }
-type guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% missing_node_output_flow_validation_details() :: #{
%%   <<"node">> => string(),
%%   <<"output">> => string()
%% }
-type missing_node_output_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% start_ingestion_job_response() :: #{
%%   <<"ingestionJob">> => ingestion_job()
%% }
-type start_ingestion_job_response() :: #{binary() => any()}.

%% Example:
%% get_agent_request() :: #{}
-type get_agent_request() :: #{}.


%% Example:
%% inline_content() :: #{
%%   <<"byteContent">> => byte_content_doc(),
%%   <<"textContent">> => text_content_doc(),
%%   <<"type">> => list(any())
%% }
-type inline_content() :: #{binary() => any()}.


%% Example:
%% flow_alias_routing_configuration_list_item() :: #{
%%   <<"flowVersion">> => string()
%% }
-type flow_alias_routing_configuration_list_item() :: #{binary() => any()}.

%% Example:
%% unspecified_flow_validation_details() :: #{}
-type unspecified_flow_validation_details() :: #{}.


%% Example:
%% update_flow_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"definition">> => flow_definition(),
%%   <<"description">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_flow_response() :: #{binary() => any()}.


%% Example:
%% prompt_agent_resource() :: #{
%%   <<"agentIdentifier">> => string()
%% }
-type prompt_agent_resource() :: #{binary() => any()}.


%% Example:
%% prompt_flow_node_resource_configuration() :: #{
%%   <<"promptArn">> => string()
%% }
-type prompt_flow_node_resource_configuration() :: #{binary() => any()}.


%% Example:
%% neptune_analytics_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"textField">> => string()
%% }
-type neptune_analytics_field_mapping() :: #{binary() => any()}.


%% Example:
%% redshift_query_engine_redshift_storage_configuration() :: #{
%%   <<"databaseName">> => string()
%% }
-type redshift_query_engine_redshift_storage_configuration() :: #{binary() => any()}.

%% Example:
%% get_flow_request() :: #{}
-type get_flow_request() :: #{}.


%% Example:
%% get_agent_collaborator_response() :: #{
%%   <<"agentCollaborator">> => agent_collaborator()
%% }
-type get_agent_collaborator_response() :: #{binary() => any()}.


%% Example:
%% list_agent_knowledge_bases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_knowledge_bases_request() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataDeletionPolicy">> => list(any()),
%%   <<"dataSourceConfiguration">> => data_source_configuration(),
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"name">> => string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% get_knowledge_base_request() :: #{}
-type get_knowledge_base_request() :: #{}.


%% Example:
%% unfulfilled_node_input_flow_validation_details() :: #{
%%   <<"input">> => string(),
%%   <<"node">> => string()
%% }
-type unfulfilled_node_input_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% associate_agent_knowledge_base_request() :: #{
%%   <<"description">> := string(),
%%   <<"knowledgeBaseId">> := string(),
%%   <<"knowledgeBaseState">> => list(any())
%% }
-type associate_agent_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% unknown_connection_target_input_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unknown_connection_target_input_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% redshift_configuration() :: #{
%%   <<"queryEngineConfiguration">> => redshift_query_engine_configuration(),
%%   <<"queryGenerationConfiguration">> => query_generation_configuration(),
%%   <<"storageConfigurations">> => list(redshift_query_engine_storage_configuration()())
%% }
-type redshift_configuration() :: #{binary() => any()}.


%% Example:
%% associate_agent_knowledge_base_response() :: #{
%%   <<"agentKnowledgeBase">> => agent_knowledge_base()
%% }
-type associate_agent_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% pinecone_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"textField">> => string()
%% }
-type pinecone_field_mapping() :: #{binary() => any()}.


%% Example:
%% vector_ingestion_configuration() :: #{
%%   <<"chunkingConfiguration">> => chunking_configuration(),
%%   <<"contextEnrichmentConfiguration">> => context_enrichment_configuration(),
%%   <<"customTransformationConfiguration">> => custom_transformation_configuration(),
%%   <<"parsingConfiguration">> => parsing_configuration()
%% }
-type vector_ingestion_configuration() :: #{binary() => any()}.


%% Example:
%% unknown_connection_condition_flow_validation_details() :: #{
%%   <<"connection">> => string()
%% }
-type unknown_connection_condition_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% vector_knowledge_base_configuration() :: #{
%%   <<"embeddingModelArn">> => string(),
%%   <<"embeddingModelConfiguration">> => embedding_model_configuration(),
%%   <<"supplementalDataStorageConfiguration">> => supplemental_data_storage_configuration()
%% }
-type vector_knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% get_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type get_data_source_response() :: #{binary() => any()}.


%% Example:
%% redshift_query_engine_aws_data_catalog_storage_configuration() :: #{
%%   <<"tableNames">> => list(string()())
%% }
-type redshift_query_engine_aws_data_catalog_storage_configuration() :: #{binary() => any()}.


%% Example:
%% retrieval_flow_node_s3_configuration() :: #{
%%   <<"bucketName">> => string()
%% }
-type retrieval_flow_node_s3_configuration() :: #{binary() => any()}.


%% Example:
%% delete_agent_version_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string()
%% }
-type delete_agent_version_response() :: #{binary() => any()}.


%% Example:
%% query_generation_table() :: #{
%%   <<"columns">> => list(query_generation_column()()),
%%   <<"description">> => string(),
%%   <<"inclusion">> => list(any()),
%%   <<"name">> => string()
%% }
-type query_generation_table() :: #{binary() => any()}.


%% Example:
%% mongo_db_atlas_configuration() :: #{
%%   <<"collectionName">> => string(),
%%   <<"credentialsSecretArn">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"endpoint">> => string(),
%%   <<"endpointServiceName">> => string(),
%%   <<"fieldMapping">> => mongo_db_atlas_field_mapping(),
%%   <<"vectorIndexName">> => string()
%% }
-type mongo_db_atlas_configuration() :: #{binary() => any()}.


%% Example:
%% custom_content() :: #{
%%   <<"customDocumentIdentifier">> => custom_document_identifier(),
%%   <<"inlineContent">> => inline_content(),
%%   <<"s3Location">> => custom_s3_location(),
%%   <<"sourceType">> => list(any())
%% }
-type custom_content() :: #{binary() => any()}.

%% Example:
%% get_agent_alias_request() :: #{}
-type get_agent_alias_request() :: #{}.


%% Example:
%% delete_knowledge_base_documents_response() :: #{
%%   <<"documentDetails">> => list(knowledge_base_document_detail()())
%% }
-type delete_knowledge_base_documents_response() :: #{binary() => any()}.


%% Example:
%% bedrock_embedding_model_configuration() :: #{
%%   <<"dimensions">> => integer(),
%%   <<"embeddingDataType">> => list(any())
%% }
-type bedrock_embedding_model_configuration() :: #{binary() => any()}.


%% Example:
%% missing_node_configuration_flow_validation_details() :: #{
%%   <<"node">> => string()
%% }
-type missing_node_configuration_flow_validation_details() :: #{binary() => any()}.


%% Example:
%% prompt_flow_node_configuration() :: #{
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"sourceConfiguration">> => list()
%% }
-type prompt_flow_node_configuration() :: #{binary() => any()}.


%% Example:
%% associate_agent_collaborator_response() :: #{
%%   <<"agentCollaborator">> => agent_collaborator()
%% }
-type associate_agent_collaborator_response() :: #{binary() => any()}.


%% Example:
%% s3_data_source_configuration() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"bucketOwnerAccountId">> => string(),
%%   <<"inclusionPrefixes">> => list(string()())
%% }
-type s3_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% rds_field_mapping() :: #{
%%   <<"metadataField">> => string(),
%%   <<"primaryKeyField">> => string(),
%%   <<"textField">> => string(),
%%   <<"vectorField">> => string()
%% }
-type rds_field_mapping() :: #{binary() => any()}.


%% Example:
%% delete_flow_version_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_flow_version_request() :: #{binary() => any()}.


%% Example:
%% prompt_configuration() :: #{
%%   <<"additionalModelRequestFields">> => [any()],
%%   <<"basePromptTemplate">> => string(),
%%   <<"foundationModel">> => string(),
%%   <<"inferenceConfiguration">> => inference_configuration(),
%%   <<"parserMode">> => list(any()),
%%   <<"promptCreationMode">> => list(any()),
%%   <<"promptState">> => list(any()),
%%   <<"promptType">> => list(any())
%% }
-type prompt_configuration() :: #{binary() => any()}.


%% Example:
%% supplemental_data_storage_configuration() :: #{
%%   <<"storageLocations">> => list(supplemental_data_storage_location()())
%% }
-type supplemental_data_storage_configuration() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"content">> => list(list()()),
%%   <<"role">> => list(any())
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% prompt_variant() :: #{
%%   <<"additionalModelRequestFields">> => [any()],
%%   <<"genAiResource">> => list(),
%%   <<"inferenceConfiguration">> => list(),
%%   <<"metadata">> => list(prompt_metadata_entry()()),
%%   <<"modelId">> => string(),
%%   <<"name">> => string(),
%%   <<"templateConfiguration">> => list(),
%%   <<"templateType">> => list(any())
%% }
-type prompt_variant() :: #{binary() => any()}.


%% Example:
%% query_generation_configuration() :: #{
%%   <<"executionTimeoutSeconds">> => integer(),
%%   <<"generationContext">> => query_generation_context()
%% }
-type query_generation_configuration() :: #{binary() => any()}.

-type associate_agent_collaborator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_agent_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_agent_action_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_agent_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_flow_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_flow_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_prompt_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_agent_action_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_agent_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_agent_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_flow_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_flow_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_knowledge_base_documents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_agent_collaborator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_agent_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_action_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_collaborator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_flow_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_flow_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ingestion_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_knowledge_base_documents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type ingest_knowledge_base_documents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_agent_action_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_aliases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_collaborators_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_knowledge_bases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_data_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_flow_aliases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_flow_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_flows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ingestion_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_knowledge_base_documents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_knowledge_bases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_prompts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type prepare_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type prepare_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_ingestion_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_ingestion_job_errors() ::
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
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_agent_action_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_agent_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_agent_collaborator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_agent_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_flow_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type validate_flow_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Makes an agent a collaborator for another agent.
-spec associate_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), associate_agent_collaborator_request()) ->
    {ok, associate_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, associate_agent_collaborator_errors(), tuple()}.
associate_agent_collaborator(Client, AgentId, AgentVersion, Input) ->
    associate_agent_collaborator(Client, AgentId, AgentVersion, Input, []).

-spec associate_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), associate_agent_collaborator_request(), proplists:proplist()) ->
    {ok, associate_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, associate_agent_collaborator_errors(), tuple()}.
associate_agent_collaborator(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/agentcollaborators/"],
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

%% @doc Associates a knowledge base with an agent.
%%
%% If a knowledge base is associated and its `indexState' is set to
%% `Enabled', the agent queries the knowledge base for information to
%% augment its response to the user.
-spec associate_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), associate_agent_knowledge_base_request()) ->
    {ok, associate_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, associate_agent_knowledge_base_errors(), tuple()}.
associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input) ->
    associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input, []).

-spec associate_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), associate_agent_knowledge_base_request(), proplists:proplist()) ->
    {ok, associate_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, associate_agent_knowledge_base_errors(), tuple()}.
associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/"],
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

%% @doc Creates an agent that orchestrates interactions between foundation
%% models, data sources, software applications, user conversations, and APIs
%% to carry out tasks to help customers.
%%
%% Specify the following fields for security purposes.
%%
%% `agentResourceRoleArn' – The Amazon Resource Name (ARN) of the role
%% with permissions to invoke API operations on an agent.
%%
%% (Optional) `customerEncryptionKeyArn' – The Amazon Resource Name (ARN)
%% of a KMS key to encrypt the creation of the agent.
%%
%% (Optional) `idleSessionTTLinSeconds' – Specify the number of seconds
%% for which the agent should maintain session information. After this time
%% expires, the subsequent `InvokeAgent' request begins a new session.
%%
%% To enable your agent to retain conversational context across multiple
%% sessions, include a `memoryConfiguration' object.
%% For more information, see Configure memory:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/agents-configure-memory.html.
%%
%% To override the default prompt behavior for agent orchestration and to use
%% advanced prompts, include a `promptOverrideConfiguration' object.
%% For more information, see Advanced prompts:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html.
%%
%% If your agent fails to be created, the response returns a list of
%% `failureReasons' alongside a list of `recommendedActions' for you
%% to troubleshoot.
%%
%% The agent instructions will not be honored if your agent has only one
%% knowledge base, uses default prompts, has no action group, and user input
%% is disabled.
-spec create_agent(aws_client:aws_client(), create_agent_request()) ->
    {ok, create_agent_response(), tuple()} |
    {error, any()} |
    {error, create_agent_errors(), tuple()}.
create_agent(Client, Input) ->
    create_agent(Client, Input, []).

-spec create_agent(aws_client:aws_client(), create_agent_request(), proplists:proplist()) ->
    {ok, create_agent_response(), tuple()} |
    {error, any()} |
    {error, create_agent_errors(), tuple()}.
create_agent(Client, Input0, Options0) ->
    Method = put,
    Path = ["/agents/"],
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

%% @doc Creates an action group for an agent.
%%
%% An action group represents the actions that an agent can carry out for the
%% customer by defining the APIs that an agent can call and the logic for
%% calling them.
%%
%% To allow your agent to request the user for additional information when
%% trying to complete a task,
%% add an action group with the `parentActionGroupSignature' field set to
%% `AMAZON.UserInput'.
%%
%% To allow your agent to generate, run, and troubleshoot code when trying to
%% complete a task,
%% add an action group with the `parentActionGroupSignature' field set to
%% `AMAZON.CodeInterpreter'.
%%
%% You must leave the `description', `apiSchema', and
%% `actionGroupExecutor' fields blank for this action group. During
%% orchestration, if your agent determines that it needs to invoke an API in
%% an action group, but doesn't have enough information to complete the
%% API request, it will invoke this action group instead and return an
%% Observation:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
%% reprompting the user for more information.
-spec create_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), create_agent_action_group_request()) ->
    {ok, create_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, create_agent_action_group_errors(), tuple()}.
create_agent_action_group(Client, AgentId, AgentVersion, Input) ->
    create_agent_action_group(Client, AgentId, AgentVersion, Input, []).

-spec create_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), create_agent_action_group_request(), proplists:proplist()) ->
    {ok, create_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, create_agent_action_group_errors(), tuple()}.
create_agent_action_group(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/"],
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

%% @doc Creates an alias of an agent that can be used to deploy the agent.
-spec create_agent_alias(aws_client:aws_client(), binary() | list(), create_agent_alias_request()) ->
    {ok, create_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, create_agent_alias_errors(), tuple()}.
create_agent_alias(Client, AgentId, Input) ->
    create_agent_alias(Client, AgentId, Input, []).

-spec create_agent_alias(aws_client:aws_client(), binary() | list(), create_agent_alias_request(), proplists:proplist()) ->
    {ok, create_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, create_agent_alias_errors(), tuple()}.
create_agent_alias(Client, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/"],
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

%% @doc Connects a knowledge base to a data source.
%%
%% You specify the configuration for the specific data source service in the
%% `dataSourceConfiguration' field.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source connector.
-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, KnowledgeBaseId, Input) ->
    create_data_source(Client, KnowledgeBaseId, Input, []).

-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request(), proplists:proplist()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/"],
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

%% @doc Creates a prompt flow that you can use to send an input through
%% various steps to yield an output.
%%
%% Configure nodes, each of which corresponds to a step of the flow, and
%% create connections between the nodes to create paths to different outputs.
%% For more information, see How it works:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html
%% and Create a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html in
%% the Amazon Bedrock User Guide.
-spec create_flow(aws_client:aws_client(), create_flow_request()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input) ->
    create_flow(Client, Input, []).

-spec create_flow(aws_client:aws_client(), create_flow_request(), proplists:proplist()) ->
    {ok, create_flow_response(), tuple()} |
    {error, any()} |
    {error, create_flow_errors(), tuple()}.
create_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/flows/"],
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

%% @doc Creates an alias of a flow for deployment.
%%
%% For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec create_flow_alias(aws_client:aws_client(), binary() | list(), create_flow_alias_request()) ->
    {ok, create_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, create_flow_alias_errors(), tuple()}.
create_flow_alias(Client, FlowIdentifier, Input) ->
    create_flow_alias(Client, FlowIdentifier, Input, []).

-spec create_flow_alias(aws_client:aws_client(), binary() | list(), create_flow_alias_request(), proplists:proplist()) ->
    {ok, create_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, create_flow_alias_errors(), tuple()}.
create_flow_alias(Client, FlowIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases"],
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

%% @doc Creates a version of the flow that you can deploy.
%%
%% For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec create_flow_version(aws_client:aws_client(), binary() | list(), create_flow_version_request()) ->
    {ok, create_flow_version_response(), tuple()} |
    {error, any()} |
    {error, create_flow_version_errors(), tuple()}.
create_flow_version(Client, FlowIdentifier, Input) ->
    create_flow_version(Client, FlowIdentifier, Input, []).

-spec create_flow_version(aws_client:aws_client(), binary() | list(), create_flow_version_request(), proplists:proplist()) ->
    {ok, create_flow_version_response(), tuple()} |
    {error, any()} |
    {error, create_flow_version_errors(), tuple()}.
create_flow_version(Client, FlowIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/versions"],
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

%% @doc Creates a knowledge base.
%%
%% A knowledge base contains your data sources so that Large Language Models
%% (LLMs) can use your data. To create a knowledge base, you must first set
%% up your data sources and configure a supported vector store. For more
%% information, see Set up a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowlege-base-prereq.html.
%%
%% If you prefer to let Amazon Bedrock create and manage a vector store for
%% you in Amazon OpenSearch Service, use the console. For more information,
%% see Create a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create.
%%
%% Provide the `name' and an optional `description'.
%%
%% Provide the Amazon Resource Name (ARN) with permissions to create a
%% knowledge base in the `roleArn' field.
%%
%% Provide the embedding model to use in the `embeddingModelArn' field in
%% the `knowledgeBaseConfiguration' object.
%%
%% Provide the configuration for your vector store in the
%% `storageConfiguration' object.
%%
%% For an Amazon OpenSearch Service database, use the
%% `opensearchServerlessConfiguration' object. For more information, see
%% Create a vector store in Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html.
%%
%% For an Amazon Aurora database, use the `RdsConfiguration' object. For
%% more information, see Create a vector store in Amazon Aurora:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html.
%%
%% For a Pinecone database, use the `pineconeConfiguration' object. For
%% more information, see Create a vector store in Pinecone:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html.
%%
%% For a Redis Enterprise Cloud database, use the
%% `redisEnterpriseCloudConfiguration' object. For more information, see
%% Create a vector store in Redis Enterprise Cloud:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html.
-spec create_knowledge_base(aws_client:aws_client(), create_knowledge_base_request()) ->
    {ok, create_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, create_knowledge_base_errors(), tuple()}.
create_knowledge_base(Client, Input) ->
    create_knowledge_base(Client, Input, []).

-spec create_knowledge_base(aws_client:aws_client(), create_knowledge_base_request(), proplists:proplist()) ->
    {ok, create_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, create_knowledge_base_errors(), tuple()}.
create_knowledge_base(Client, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/"],
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

%% @doc Creates a prompt in your prompt library that you can add to a flow.
%%
%% For more information, see Prompt management in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html,
%% Create a prompt using Prompt management:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
%% and Prompt flows in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows.html in the
%% Amazon Bedrock User Guide.
-spec create_prompt(aws_client:aws_client(), create_prompt_request()) ->
    {ok, create_prompt_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_errors(), tuple()}.
create_prompt(Client, Input) ->
    create_prompt(Client, Input, []).

-spec create_prompt(aws_client:aws_client(), create_prompt_request(), proplists:proplist()) ->
    {ok, create_prompt_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_errors(), tuple()}.
create_prompt(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prompts/"],
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

%% @doc Creates a static snapshot of your prompt that can be deployed to
%% production.
%%
%% For more information, see Deploy prompts using Prompt management by
%% creating versions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html
%% in the Amazon Bedrock User Guide.
-spec create_prompt_version(aws_client:aws_client(), binary() | list(), create_prompt_version_request()) ->
    {ok, create_prompt_version_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_version_errors(), tuple()}.
create_prompt_version(Client, PromptIdentifier, Input) ->
    create_prompt_version(Client, PromptIdentifier, Input, []).

-spec create_prompt_version(aws_client:aws_client(), binary() | list(), create_prompt_version_request(), proplists:proplist()) ->
    {ok, create_prompt_version_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_version_errors(), tuple()}.
create_prompt_version(Client, PromptIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/prompts/", aws_util:encode_uri(PromptIdentifier), "/versions"],
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

%% @doc Deletes an agent.
-spec delete_agent(aws_client:aws_client(), binary() | list(), delete_agent_request()) ->
    {ok, delete_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_errors(), tuple()}.
delete_agent(Client, AgentId, Input) ->
    delete_agent(Client, AgentId, Input, []).

-spec delete_agent(aws_client:aws_client(), binary() | list(), delete_agent_request(), proplists:proplist()) ->
    {ok, delete_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_errors(), tuple()}.
delete_agent(Client, AgentId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an action group in an agent.
-spec delete_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_agent_action_group_request()) ->
    {ok, delete_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_action_group_errors(), tuple()}.
delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input) ->
    delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input, []).

-spec delete_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_agent_action_group_request(), proplists:proplist()) ->
    {ok, delete_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_action_group_errors(), tuple()}.
delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an alias of an agent.
-spec delete_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_alias_request()) ->
    {ok, delete_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_alias_errors(), tuple()}.
delete_agent_alias(Client, AgentAliasId, AgentId, Input) ->
    delete_agent_alias(Client, AgentAliasId, AgentId, Input, []).

-spec delete_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_alias_request(), proplists:proplist()) ->
    {ok, delete_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_alias_errors(), tuple()}.
delete_agent_alias(Client, AgentAliasId, AgentId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
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

%% @doc Deletes a version of an agent.
-spec delete_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_version_request()) ->
    {ok, delete_agent_version_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_version_errors(), tuple()}.
delete_agent_version(Client, AgentId, AgentVersion, Input) ->
    delete_agent_version(Client, AgentId, AgentVersion, Input, []).

-spec delete_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_version_request(), proplists:proplist()) ->
    {ok, delete_agent_version_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_version_errors(), tuple()}.
delete_agent_version(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/"],
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a data source from a knowledge base.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input) ->
    delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request(), proplists:proplist()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Deletes a flow.
-spec delete_flow(aws_client:aws_client(), binary() | list(), delete_flow_request()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, FlowIdentifier, Input) ->
    delete_flow(Client, FlowIdentifier, Input, []).

-spec delete_flow(aws_client:aws_client(), binary() | list(), delete_flow_request(), proplists:proplist()) ->
    {ok, delete_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_errors(), tuple()}.
delete_flow(Client, FlowIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/"],
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an alias of a flow.
-spec delete_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_flow_alias_request()) ->
    {ok, delete_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_alias_errors(), tuple()}.
delete_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input) ->
    delete_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input, []).

-spec delete_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_flow_alias_request(), proplists:proplist()) ->
    {ok, delete_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_alias_errors(), tuple()}.
delete_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases/", aws_util:encode_uri(AliasIdentifier), ""],
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

%% @doc Deletes a version of a flow.
-spec delete_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_flow_version_request()) ->
    {ok, delete_flow_version_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_version_errors(), tuple()}.
delete_flow_version(Client, FlowIdentifier, FlowVersion, Input) ->
    delete_flow_version(Client, FlowIdentifier, FlowVersion, Input, []).

-spec delete_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_flow_version_request(), proplists:proplist()) ->
    {ok, delete_flow_version_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_version_errors(), tuple()}.
delete_flow_version(Client, FlowIdentifier, FlowVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/versions/", aws_util:encode_uri(FlowVersion), "/"],
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a knowledge base.
%%
%% Before deleting a knowledge base, you should disassociate the knowledge
%% base from any agents that it is associated with by making a
%% DisassociateAgentKnowledgeBase:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html
%% request.
-spec delete_knowledge_base(aws_client:aws_client(), binary() | list(), delete_knowledge_base_request()) ->
    {ok, delete_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, delete_knowledge_base_errors(), tuple()}.
delete_knowledge_base(Client, KnowledgeBaseId, Input) ->
    delete_knowledge_base(Client, KnowledgeBaseId, Input, []).

-spec delete_knowledge_base(aws_client:aws_client(), binary() | list(), delete_knowledge_base_request(), proplists:proplist()) ->
    {ok, delete_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, delete_knowledge_base_errors(), tuple()}.
delete_knowledge_base(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
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

%% @doc Deletes documents from a data source and syncs the changes to the
%% knowledge base that is connected to it.
%%
%% For more information, see Ingest changes directly into a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
%% in the Amazon Bedrock User Guide.
-spec delete_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), delete_knowledge_base_documents_request()) ->
    {ok, delete_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, delete_knowledge_base_documents_errors(), tuple()}.
delete_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input) ->
    delete_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec delete_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), delete_knowledge_base_documents_request(), proplists:proplist()) ->
    {ok, delete_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, delete_knowledge_base_documents_errors(), tuple()}.
delete_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/documents/deleteDocuments"],
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

%% @doc Deletes a prompt or a version of it, depending on whether you include
%% the `promptVersion' field or not.
%%
%% For more information, see Delete prompts from the Prompt management tool:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-delete.html
%% and Delete a version of a prompt from the Prompt management tool:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html
%% in the Amazon Bedrock User Guide.
-spec delete_prompt(aws_client:aws_client(), binary() | list(), delete_prompt_request()) ->
    {ok, delete_prompt_response(), tuple()} |
    {error, any()} |
    {error, delete_prompt_errors(), tuple()}.
delete_prompt(Client, PromptIdentifier, Input) ->
    delete_prompt(Client, PromptIdentifier, Input, []).

-spec delete_prompt(aws_client:aws_client(), binary() | list(), delete_prompt_request(), proplists:proplist()) ->
    {ok, delete_prompt_response(), tuple()} |
    {error, any()} |
    {error, delete_prompt_errors(), tuple()}.
delete_prompt(Client, PromptIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prompts/", aws_util:encode_uri(PromptIdentifier), "/"],
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
                     {<<"promptVersion">>, <<"promptVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an agent collaborator.
-spec disassociate_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_agent_collaborator_request()) ->
    {ok, disassociate_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, disassociate_agent_collaborator_errors(), tuple()}.
disassociate_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input) ->
    disassociate_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input, []).

-spec disassociate_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_agent_collaborator_request(), proplists:proplist()) ->
    {ok, disassociate_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, disassociate_agent_collaborator_errors(), tuple()}.
disassociate_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/agentcollaborators/", aws_util:encode_uri(CollaboratorId), "/"],
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

%% @doc Disassociates a knowledge base from an agent.
-spec disassociate_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_agent_knowledge_base_request()) ->
    {ok, disassociate_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, disassociate_agent_knowledge_base_errors(), tuple()}.
disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input) ->
    disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input, []).

-spec disassociate_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_agent_knowledge_base_request(), proplists:proplist()) ->
    {ok, disassociate_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, disassociate_agent_knowledge_base_errors(), tuple()}.
disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
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

%% @doc Gets information about an agent.
-spec get_agent(aws_client:aws_client(), binary() | list()) ->
    {ok, get_agent_response(), tuple()} |
    {error, any()} |
    {error, get_agent_errors(), tuple()}.
get_agent(Client, AgentId)
  when is_map(Client) ->
    get_agent(Client, AgentId, #{}, #{}).

-spec get_agent(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_agent_response(), tuple()} |
    {error, any()} |
    {error, get_agent_errors(), tuple()}.
get_agent(Client, AgentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent(Client, AgentId, QueryMap, HeadersMap, []).

-spec get_agent(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_response(), tuple()} |
    {error, any()} |
    {error, get_agent_errors(), tuple()}.
get_agent(Client, AgentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an action group for an agent.
-spec get_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, get_agent_action_group_errors(), tuple()}.
get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion)
  when is_map(Client) ->
    get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, #{}, #{}).

-spec get_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, get_agent_action_group_errors(), tuple()}.
get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap, []).

-spec get_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, get_agent_action_group_errors(), tuple()}.
get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an alias of an agent.
-spec get_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, get_agent_alias_errors(), tuple()}.
get_agent_alias(Client, AgentAliasId, AgentId)
  when is_map(Client) ->
    get_agent_alias(Client, AgentAliasId, AgentId, #{}, #{}).

-spec get_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, get_agent_alias_errors(), tuple()}.
get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap, []).

-spec get_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, get_agent_alias_errors(), tuple()}.
get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an agent's collaborator.
-spec get_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, get_agent_collaborator_errors(), tuple()}.
get_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId)
  when is_map(Client) ->
    get_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, #{}, #{}).

-spec get_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, get_agent_collaborator_errors(), tuple()}.
get_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, QueryMap, HeadersMap, []).

-spec get_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, get_agent_collaborator_errors(), tuple()}.
get_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/agentcollaborators/", aws_util:encode_uri(CollaboratorId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a knowledge base associated with an agent.
-spec get_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_agent_knowledge_base_errors(), tuple()}.
get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId)
  when is_map(Client) ->
    get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, #{}, #{}).

-spec get_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_agent_knowledge_base_errors(), tuple()}.
get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_agent_knowledge_base_errors(), tuple()}.
get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a version of an agent.
-spec get_agent_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_agent_version_response(), tuple()} |
    {error, any()} |
    {error, get_agent_version_errors(), tuple()}.
get_agent_version(Client, AgentId, AgentVersion)
  when is_map(Client) ->
    get_agent_version(Client, AgentId, AgentVersion, #{}, #{}).

-spec get_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_version_response(), tuple()} |
    {error, any()} |
    {error, get_agent_version_errors(), tuple()}.
get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap, []).

-spec get_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_version_response(), tuple()} |
    {error, any()} |
    {error, get_agent_version_errors(), tuple()}.
get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a data source.
-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DataSourceId, KnowledgeBaseId)
  when is_map(Client) ->
    get_data_source(Client, DataSourceId, KnowledgeBaseId, #{}, #{}).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a flow.
%%
%% For more information, see Manage a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html in
%% the Amazon Bedrock User Guide.
-spec get_flow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_flow_response(), tuple()} |
    {error, any()} |
    {error, get_flow_errors(), tuple()}.
get_flow(Client, FlowIdentifier)
  when is_map(Client) ->
    get_flow(Client, FlowIdentifier, #{}, #{}).

-spec get_flow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_flow_response(), tuple()} |
    {error, any()} |
    {error, get_flow_errors(), tuple()}.
get_flow(Client, FlowIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow(Client, FlowIdentifier, QueryMap, HeadersMap, []).

-spec get_flow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_response(), tuple()} |
    {error, any()} |
    {error, get_flow_errors(), tuple()}.
get_flow(Client, FlowIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a flow.
%%
%% For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec get_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, get_flow_alias_errors(), tuple()}.
get_flow_alias(Client, AliasIdentifier, FlowIdentifier)
  when is_map(Client) ->
    get_flow_alias(Client, AliasIdentifier, FlowIdentifier, #{}, #{}).

-spec get_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, get_flow_alias_errors(), tuple()}.
get_flow_alias(Client, AliasIdentifier, FlowIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow_alias(Client, AliasIdentifier, FlowIdentifier, QueryMap, HeadersMap, []).

-spec get_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, get_flow_alias_errors(), tuple()}.
get_flow_alias(Client, AliasIdentifier, FlowIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases/", aws_util:encode_uri(AliasIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a version of a flow.
%%
%% For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec get_flow_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_flow_version_response(), tuple()} |
    {error, any()} |
    {error, get_flow_version_errors(), tuple()}.
get_flow_version(Client, FlowIdentifier, FlowVersion)
  when is_map(Client) ->
    get_flow_version(Client, FlowIdentifier, FlowVersion, #{}, #{}).

-spec get_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_flow_version_response(), tuple()} |
    {error, any()} |
    {error, get_flow_version_errors(), tuple()}.
get_flow_version(Client, FlowIdentifier, FlowVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow_version(Client, FlowIdentifier, FlowVersion, QueryMap, HeadersMap, []).

-spec get_flow_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_version_response(), tuple()} |
    {error, any()} |
    {error, get_flow_version_errors(), tuple()}.
get_flow_version(Client, FlowIdentifier, FlowVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/versions/", aws_util:encode_uri(FlowVersion), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a data ingestion job.
%%
%% Data sources are ingested into your knowledge base so that Large Language
%% Models (LLMs) can use your data.
-spec get_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_job_errors(), tuple()}.
get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId)
  when is_map(Client) ->
    get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, #{}, #{}).

-spec get_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_job_errors(), tuple()}.
get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_job_errors(), tuple()}.
get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/", aws_util:encode_uri(IngestionJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a knoweldge base.
-spec get_knowledge_base(aws_client:aws_client(), binary() | list()) ->
    {ok, get_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_knowledge_base_errors(), tuple()}.
get_knowledge_base(Client, KnowledgeBaseId)
  when is_map(Client) ->
    get_knowledge_base(Client, KnowledgeBaseId, #{}, #{}).

-spec get_knowledge_base(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_knowledge_base_errors(), tuple()}.
get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_knowledge_base(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, get_knowledge_base_errors(), tuple()}.
get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves specific documents from a data source that is connected to
%% a knowledge base.
%%
%% For more information, see Ingest changes directly into a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
%% in the Amazon Bedrock User Guide.
-spec get_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), get_knowledge_base_documents_request()) ->
    {ok, get_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, get_knowledge_base_documents_errors(), tuple()}.
get_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input) ->
    get_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec get_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), get_knowledge_base_documents_request(), proplists:proplist()) ->
    {ok, get_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, get_knowledge_base_documents_errors(), tuple()}.
get_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/documents/getDocuments"],
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

%% @doc Retrieves information about the working draft (`DRAFT' version)
%% of a prompt or a version of it, depending on whether you include the
%% `promptVersion' field or not.
%%
%% For more information, see View information about prompts using Prompt
%% management:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html
%% and View information about a version of your prompt:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-view.html
%% in the Amazon Bedrock User Guide.
-spec get_prompt(aws_client:aws_client(), binary() | list()) ->
    {ok, get_prompt_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_errors(), tuple()}.
get_prompt(Client, PromptIdentifier)
  when is_map(Client) ->
    get_prompt(Client, PromptIdentifier, #{}, #{}).

-spec get_prompt(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_prompt_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_errors(), tuple()}.
get_prompt(Client, PromptIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prompt(Client, PromptIdentifier, QueryMap, HeadersMap, []).

-spec get_prompt(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_prompt_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_errors(), tuple()}.
get_prompt(Client, PromptIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/", aws_util:encode_uri(PromptIdentifier), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"promptVersion">>, maps:get(<<"promptVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Ingests documents directly into the knowledge base that is connected
%% to the data source.
%%
%% The `dataSourceType' specified in the content for each document must
%% match the type of the data source that you specify in the header. For more
%% information, see Ingest changes directly into a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
%% in the Amazon Bedrock User Guide.
-spec ingest_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), ingest_knowledge_base_documents_request()) ->
    {ok, ingest_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, ingest_knowledge_base_documents_errors(), tuple()}.
ingest_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input) ->
    ingest_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec ingest_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), ingest_knowledge_base_documents_request(), proplists:proplist()) ->
    {ok, ingest_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, ingest_knowledge_base_documents_errors(), tuple()}.
ingest_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/documents"],
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

%% @doc Lists the action groups for an agent and information about each one.
-spec list_agent_action_groups(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_action_groups_request()) ->
    {ok, list_agent_action_groups_response(), tuple()} |
    {error, any()} |
    {error, list_agent_action_groups_errors(), tuple()}.
list_agent_action_groups(Client, AgentId, AgentVersion, Input) ->
    list_agent_action_groups(Client, AgentId, AgentVersion, Input, []).

-spec list_agent_action_groups(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_action_groups_request(), proplists:proplist()) ->
    {ok, list_agent_action_groups_response(), tuple()} |
    {error, any()} |
    {error, list_agent_action_groups_errors(), tuple()}.
list_agent_action_groups(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/"],
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

%% @doc Lists the aliases of an agent and information about each one.
-spec list_agent_aliases(aws_client:aws_client(), binary() | list(), list_agent_aliases_request()) ->
    {ok, list_agent_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_agent_aliases_errors(), tuple()}.
list_agent_aliases(Client, AgentId, Input) ->
    list_agent_aliases(Client, AgentId, Input, []).

-spec list_agent_aliases(aws_client:aws_client(), binary() | list(), list_agent_aliases_request(), proplists:proplist()) ->
    {ok, list_agent_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_agent_aliases_errors(), tuple()}.
list_agent_aliases(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/"],
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

%% @doc Retrieve a list of an agent's collaborators.
-spec list_agent_collaborators(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_collaborators_request()) ->
    {ok, list_agent_collaborators_response(), tuple()} |
    {error, any()} |
    {error, list_agent_collaborators_errors(), tuple()}.
list_agent_collaborators(Client, AgentId, AgentVersion, Input) ->
    list_agent_collaborators(Client, AgentId, AgentVersion, Input, []).

-spec list_agent_collaborators(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_collaborators_request(), proplists:proplist()) ->
    {ok, list_agent_collaborators_response(), tuple()} |
    {error, any()} |
    {error, list_agent_collaborators_errors(), tuple()}.
list_agent_collaborators(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/agentcollaborators/"],
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

%% @doc Lists knowledge bases associated with an agent and information about
%% each one.
-spec list_agent_knowledge_bases(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_knowledge_bases_request()) ->
    {ok, list_agent_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_agent_knowledge_bases_errors(), tuple()}.
list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input) ->
    list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input, []).

-spec list_agent_knowledge_bases(aws_client:aws_client(), binary() | list(), binary() | list(), list_agent_knowledge_bases_request(), proplists:proplist()) ->
    {ok, list_agent_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_agent_knowledge_bases_errors(), tuple()}.
list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/"],
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

%% @doc Lists the versions of an agent and information about each version.
-spec list_agent_versions(aws_client:aws_client(), binary() | list(), list_agent_versions_request()) ->
    {ok, list_agent_versions_response(), tuple()} |
    {error, any()} |
    {error, list_agent_versions_errors(), tuple()}.
list_agent_versions(Client, AgentId, Input) ->
    list_agent_versions(Client, AgentId, Input, []).

-spec list_agent_versions(aws_client:aws_client(), binary() | list(), list_agent_versions_request(), proplists:proplist()) ->
    {ok, list_agent_versions_response(), tuple()} |
    {error, any()} |
    {error, list_agent_versions_errors(), tuple()}.
list_agent_versions(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/"],
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

%% @doc Lists the agents belonging to an account and information about each
%% agent.
-spec list_agents(aws_client:aws_client(), list_agents_request()) ->
    {ok, list_agents_response(), tuple()} |
    {error, any()} |
    {error, list_agents_errors(), tuple()}.
list_agents(Client, Input) ->
    list_agents(Client, Input, []).

-spec list_agents(aws_client:aws_client(), list_agents_request(), proplists:proplist()) ->
    {ok, list_agents_response(), tuple()} |
    {error, any()} |
    {error, list_agents_errors(), tuple()}.
list_agents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/agents/"],
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

%% @doc Lists the data sources in a knowledge base and information about each
%% one.
-spec list_data_sources(aws_client:aws_client(), binary() | list(), list_data_sources_request()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, KnowledgeBaseId, Input) ->
    list_data_sources(Client, KnowledgeBaseId, Input, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), list_data_sources_request(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/"],
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

%% @doc Returns a list of aliases for a flow.
-spec list_flow_aliases(aws_client:aws_client(), binary() | list()) ->
    {ok, list_flow_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_flow_aliases_errors(), tuple()}.
list_flow_aliases(Client, FlowIdentifier)
  when is_map(Client) ->
    list_flow_aliases(Client, FlowIdentifier, #{}, #{}).

-spec list_flow_aliases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_flow_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_flow_aliases_errors(), tuple()}.
list_flow_aliases(Client, FlowIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flow_aliases(Client, FlowIdentifier, QueryMap, HeadersMap, []).

-spec list_flow_aliases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_flow_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_flow_aliases_errors(), tuple()}.
list_flow_aliases(Client, FlowIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases"],
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

%% @doc Returns a list of information about each flow.
%%
%% For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec list_flow_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_flow_versions_errors(), tuple()}.
list_flow_versions(Client, FlowIdentifier)
  when is_map(Client) ->
    list_flow_versions(Client, FlowIdentifier, #{}, #{}).

-spec list_flow_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_flow_versions_errors(), tuple()}.
list_flow_versions(Client, FlowIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flow_versions(Client, FlowIdentifier, QueryMap, HeadersMap, []).

-spec list_flow_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_flow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_flow_versions_errors(), tuple()}.
list_flow_versions(Client, FlowIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/versions"],
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

%% @doc Returns a list of flows and information about each flow.
%%
%% For more information, see Manage a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html in
%% the Amazon Bedrock User Guide.
-spec list_flows(aws_client:aws_client()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client)
  when is_map(Client) ->
    list_flows(Client, #{}, #{}).

-spec list_flows(aws_client:aws_client(), map(), map()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flows(Client, QueryMap, HeadersMap, []).

-spec list_flows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_flows_response(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/flows/"],
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

%% @doc Lists the data ingestion jobs for a data source.
%%
%% The list also includes information about each job.
-spec list_ingestion_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), list_ingestion_jobs_request()) ->
    {ok, list_ingestion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_ingestion_jobs_errors(), tuple()}.
list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input) ->
    list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec list_ingestion_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), list_ingestion_jobs_request(), proplists:proplist()) ->
    {ok, list_ingestion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_ingestion_jobs_errors(), tuple()}.
list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/"],
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

%% @doc Retrieves all the documents contained in a data source that is
%% connected to a knowledge base.
%%
%% For more information, see Ingest changes directly into a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
%% in the Amazon Bedrock User Guide.
-spec list_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), list_knowledge_base_documents_request()) ->
    {ok, list_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_base_documents_errors(), tuple()}.
list_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input) ->
    list_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec list_knowledge_base_documents(aws_client:aws_client(), binary() | list(), binary() | list(), list_knowledge_base_documents_request(), proplists:proplist()) ->
    {ok, list_knowledge_base_documents_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_base_documents_errors(), tuple()}.
list_knowledge_base_documents(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/documents"],
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

%% @doc Lists the knowledge bases in an account.
%%
%% The list also includesinformation about each knowledge base.
-spec list_knowledge_bases(aws_client:aws_client(), list_knowledge_bases_request()) ->
    {ok, list_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_bases_errors(), tuple()}.
list_knowledge_bases(Client, Input) ->
    list_knowledge_bases(Client, Input, []).

-spec list_knowledge_bases(aws_client:aws_client(), list_knowledge_bases_request(), proplists:proplist()) ->
    {ok, list_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_bases_errors(), tuple()}.
list_knowledge_bases(Client, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/"],
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

%% @doc Returns either information about the working draft (`DRAFT'
%% version) of each prompt in an account, or information about of all
%% versions of a prompt, depending on whether you include the
%% `promptIdentifier' field or not.
%%
%% For more information, see View information about prompts using Prompt
%% management:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html
%% in the Amazon Bedrock User Guide.
-spec list_prompts(aws_client:aws_client()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client)
  when is_map(Client) ->
    list_prompts(Client, #{}, #{}).

-spec list_prompts(aws_client:aws_client(), map(), map()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_prompts(Client, QueryMap, HeadersMap, []).

-spec list_prompts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_prompts_response(), tuple()} |
    {error, any()} |
    {error, list_prompts_errors(), tuple()}.
list_prompts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompts/"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"promptIdentifier">>, maps:get(<<"promptIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the tags for the resource you specify.
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

%% @doc Creates a `DRAFT' version of the agent that can be used for
%% internal testing.
-spec prepare_agent(aws_client:aws_client(), binary() | list(), prepare_agent_request()) ->
    {ok, prepare_agent_response(), tuple()} |
    {error, any()} |
    {error, prepare_agent_errors(), tuple()}.
prepare_agent(Client, AgentId, Input) ->
    prepare_agent(Client, AgentId, Input, []).

-spec prepare_agent(aws_client:aws_client(), binary() | list(), prepare_agent_request(), proplists:proplist()) ->
    {ok, prepare_agent_response(), tuple()} |
    {error, any()} |
    {error, prepare_agent_errors(), tuple()}.
prepare_agent(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
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

%% @doc Prepares the `DRAFT' version of a flow so that it can be invoked.
%%
%% For more information, see Test a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html in
%% the Amazon Bedrock User Guide.
-spec prepare_flow(aws_client:aws_client(), binary() | list(), prepare_flow_request()) ->
    {ok, prepare_flow_response(), tuple()} |
    {error, any()} |
    {error, prepare_flow_errors(), tuple()}.
prepare_flow(Client, FlowIdentifier, Input) ->
    prepare_flow(Client, FlowIdentifier, Input, []).

-spec prepare_flow(aws_client:aws_client(), binary() | list(), prepare_flow_request(), proplists:proplist()) ->
    {ok, prepare_flow_response(), tuple()} |
    {error, any()} |
    {error, prepare_flow_errors(), tuple()}.
prepare_flow(Client, FlowIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/"],
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

%% @doc Begins a data ingestion job.
%%
%% Data sources are ingested into your knowledge base so that Large Language
%% Models (LLMs) can use your data.
-spec start_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_ingestion_job_request()) ->
    {ok, start_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, start_ingestion_job_errors(), tuple()}.
start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input) ->
    start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec start_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_ingestion_job_request(), proplists:proplist()) ->
    {ok, start_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, start_ingestion_job_errors(), tuple()}.
start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/"],
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

%% @doc Stops a currently running data ingestion job.
%%
%% You can send a `StartIngestionJob' request again to ingest the rest of
%% your data when you are ready.
-spec stop_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_ingestion_job_request()) ->
    {ok, stop_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, stop_ingestion_job_errors(), tuple()}.
stop_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, Input) ->
    stop_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, Input, []).

-spec stop_ingestion_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_ingestion_job_request(), proplists:proplist()) ->
    {ok, stop_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, stop_ingestion_job_errors(), tuple()}.
stop_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/", aws_util:encode_uri(IngestionJobId), "/stop"],
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

%% @doc Associate tags with a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Amazon Bedrock User Guide.
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

%% @doc Remove tags from a resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an agent.
-spec update_agent(aws_client:aws_client(), binary() | list(), update_agent_request()) ->
    {ok, update_agent_response(), tuple()} |
    {error, any()} |
    {error, update_agent_errors(), tuple()}.
update_agent(Client, AgentId, Input) ->
    update_agent(Client, AgentId, Input, []).

-spec update_agent(aws_client:aws_client(), binary() | list(), update_agent_request(), proplists:proplist()) ->
    {ok, update_agent_response(), tuple()} |
    {error, any()} |
    {error, update_agent_errors(), tuple()}.
update_agent(Client, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
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

%% @doc Updates the configuration for an action group for an agent.
-spec update_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_action_group_request()) ->
    {ok, update_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, update_agent_action_group_errors(), tuple()}.
update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input) ->
    update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input, []).

-spec update_agent_action_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_action_group_request(), proplists:proplist()) ->
    {ok, update_agent_action_group_response(), tuple()} |
    {error, any()} |
    {error, update_agent_action_group_errors(), tuple()}.
update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
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

%% @doc Updates configurations for an alias of an agent.
-spec update_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_alias_request()) ->
    {ok, update_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, update_agent_alias_errors(), tuple()}.
update_agent_alias(Client, AgentAliasId, AgentId, Input) ->
    update_agent_alias(Client, AgentAliasId, AgentId, Input, []).

-spec update_agent_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_agent_alias_request(), proplists:proplist()) ->
    {ok, update_agent_alias_response(), tuple()} |
    {error, any()} |
    {error, update_agent_alias_errors(), tuple()}.
update_agent_alias(Client, AgentAliasId, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
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

%% @doc Updates an agent's collaborator.
-spec update_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_collaborator_request()) ->
    {ok, update_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, update_agent_collaborator_errors(), tuple()}.
update_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input) ->
    update_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input, []).

-spec update_agent_collaborator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_collaborator_request(), proplists:proplist()) ->
    {ok, update_agent_collaborator_response(), tuple()} |
    {error, any()} |
    {error, update_agent_collaborator_errors(), tuple()}.
update_agent_collaborator(Client, AgentId, AgentVersion, CollaboratorId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/agentcollaborators/", aws_util:encode_uri(CollaboratorId), "/"],
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

%% @doc Updates the configuration for a knowledge base that has been
%% associated with an agent.
-spec update_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_knowledge_base_request()) ->
    {ok, update_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, update_agent_knowledge_base_errors(), tuple()}.
update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input) ->
    update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input, []).

-spec update_agent_knowledge_base(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_agent_knowledge_base_request(), proplists:proplist()) ->
    {ok, update_agent_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, update_agent_knowledge_base_errors(), tuple()}.
update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
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

%% @doc Updates the configurations for a data source connector.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source connector. Specify the existing `chunkingConfiguration'.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DataSourceId, KnowledgeBaseId, Input) ->
    update_data_source(Client, DataSourceId, KnowledgeBaseId, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request(), proplists:proplist()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Modifies a flow.
%%
%% Include both fields that you want to keep and fields that you want to
%% change. For more information, see How it works:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html
%% and Create a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html in
%% the Amazon Bedrock User Guide.
-spec update_flow(aws_client:aws_client(), binary() | list(), update_flow_request()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, FlowIdentifier, Input) ->
    update_flow(Client, FlowIdentifier, Input, []).

-spec update_flow(aws_client:aws_client(), binary() | list(), update_flow_request(), proplists:proplist()) ->
    {ok, update_flow_response(), tuple()} |
    {error, any()} |
    {error, update_flow_errors(), tuple()}.
update_flow(Client, FlowIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/"],
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

%% @doc Modifies the alias of a flow.
%%
%% Include both fields that you want to keep and ones that you want to
%% change. For more information, see Deploy a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html in
%% the Amazon Bedrock User Guide.
-spec update_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_alias_request()) ->
    {ok, update_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, update_flow_alias_errors(), tuple()}.
update_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input) ->
    update_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input, []).

-spec update_flow_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_alias_request(), proplists:proplist()) ->
    {ok, update_flow_alias_response(), tuple()} |
    {error, any()} |
    {error, update_flow_alias_errors(), tuple()}.
update_flow_alias(Client, AliasIdentifier, FlowIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases/", aws_util:encode_uri(AliasIdentifier), ""],
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

%% @doc Updates the configuration of a knowledge base with the fields that
%% you specify.
%%
%% Because all fields will be overwritten, you must include the same values
%% for fields that you want to keep the same.
%%
%% You can change the following fields:
%%
%% `name'
%%
%% `description'
%%
%% `roleArn'
%%
%% You can't change the `knowledgeBaseConfiguration' or
%% `storageConfiguration' fields, so you must specify the same
%% configurations as when you created the knowledge base. You can send a
%% GetKnowledgeBase:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html
%% request and copy the same configurations.
-spec update_knowledge_base(aws_client:aws_client(), binary() | list(), update_knowledge_base_request()) ->
    {ok, update_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, update_knowledge_base_errors(), tuple()}.
update_knowledge_base(Client, KnowledgeBaseId, Input) ->
    update_knowledge_base(Client, KnowledgeBaseId, Input, []).

-spec update_knowledge_base(aws_client:aws_client(), binary() | list(), update_knowledge_base_request(), proplists:proplist()) ->
    {ok, update_knowledge_base_response(), tuple()} |
    {error, any()} |
    {error, update_knowledge_base_errors(), tuple()}.
update_knowledge_base(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
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

%% @doc Modifies a prompt in your prompt library.
%%
%% Include both fields that you want to keep and fields that you want to
%% replace. For more information, see Prompt management in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
%% and Edit prompts in your prompt library:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-edit
%% in the Amazon Bedrock User Guide.
-spec update_prompt(aws_client:aws_client(), binary() | list(), update_prompt_request()) ->
    {ok, update_prompt_response(), tuple()} |
    {error, any()} |
    {error, update_prompt_errors(), tuple()}.
update_prompt(Client, PromptIdentifier, Input) ->
    update_prompt(Client, PromptIdentifier, Input, []).

-spec update_prompt(aws_client:aws_client(), binary() | list(), update_prompt_request(), proplists:proplist()) ->
    {ok, update_prompt_response(), tuple()} |
    {error, any()} |
    {error, update_prompt_errors(), tuple()}.
update_prompt(Client, PromptIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/prompts/", aws_util:encode_uri(PromptIdentifier), "/"],
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

%% @doc Validates the definition of a flow.
-spec validate_flow_definition(aws_client:aws_client(), validate_flow_definition_request()) ->
    {ok, validate_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, validate_flow_definition_errors(), tuple()}.
validate_flow_definition(Client, Input) ->
    validate_flow_definition(Client, Input, []).

-spec validate_flow_definition(aws_client:aws_client(), validate_flow_definition_request(), proplists:proplist()) ->
    {ok, validate_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, validate_flow_definition_errors(), tuple()}.
validate_flow_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/flows/validate-definition"],
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-agent">>, Client1),
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
