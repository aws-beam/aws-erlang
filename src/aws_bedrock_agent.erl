%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating and managing Amazon Bedrock
%% agents.
-module(aws_bedrock_agent).

-export([associate_agent_knowledge_base/4,
         associate_agent_knowledge_base/5,
         create_agent/2,
         create_agent/3,
         create_agent_action_group/4,
         create_agent_action_group/5,
         create_agent_alias/3,
         create_agent_alias/4,
         create_data_source/3,
         create_data_source/4,
         create_knowledge_base/2,
         create_knowledge_base/3,
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
         delete_knowledge_base/3,
         delete_knowledge_base/4,
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
         get_agent_knowledge_base/4,
         get_agent_knowledge_base/6,
         get_agent_knowledge_base/7,
         get_agent_version/3,
         get_agent_version/5,
         get_agent_version/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_ingestion_job/4,
         get_ingestion_job/6,
         get_ingestion_job/7,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         list_agent_action_groups/4,
         list_agent_action_groups/5,
         list_agent_aliases/3,
         list_agent_aliases/4,
         list_agent_knowledge_bases/4,
         list_agent_knowledge_bases/5,
         list_agent_versions/3,
         list_agent_versions/4,
         list_agents/2,
         list_agents/3,
         list_data_sources/3,
         list_data_sources/4,
         list_ingestion_jobs/4,
         list_ingestion_jobs/5,
         list_knowledge_bases/2,
         list_knowledge_bases/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         prepare_agent/3,
         prepare_agent/4,
         start_ingestion_job/4,
         start_ingestion_job/5,
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
         update_agent_knowledge_base/5,
         update_agent_knowledge_base/6,
         update_data_source/4,
         update_data_source/5,
         update_knowledge_base/3,
         update_knowledge_base/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% knowledge_base_configuration() :: #{
%%   <<"type">> => list(any()),
%%   <<"vectorKnowledgeBaseConfiguration">> => vector_knowledge_base_configuration()
%% }
-type knowledge_base_configuration() :: #{binary() => any()}.

%% Example:
%% prepare_agent_request() :: #{}
-type prepare_agent_request() :: #{}.


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
%% update_agent_action_group_request() :: #{
%%   <<"actionGroupExecutor">> => list(),
%%   <<"actionGroupName">> := string(),
%%   <<"actionGroupState">> => list(any()),
%%   <<"apiSchema">> => list(),
%%   <<"description">> => string(),
%%   <<"functionSchema">> => list(),
%%   <<"parentActionGroupSignature">> => list(any())
%% }
-type update_agent_action_group_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_agent_alias_response() :: #{
%%   <<"agentAlias">> => agent_alias()
%% }
-type get_agent_alias_response() :: #{binary() => any()}.


%% Example:
%% list_agents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agents_request() :: #{binary() => any()}.


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
%%   <<"s3Configuration">> => s3_data_source_configuration(),
%%   <<"type">> => list(any())
%% }
-type data_source_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% start_ingestion_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string()
%% }
-type start_ingestion_job_request() :: #{binary() => any()}.


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
%% create_agent_request() :: #{
%%   <<"agentName">> := string(),
%%   <<"agentResourceRoleArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"tags">> => map()
%% }
-type create_agent_request() :: #{binary() => any()}.


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
%% update_knowledge_base_request() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseConfiguration">> := knowledge_base_configuration(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"storageConfiguration">> := storage_configuration()
%% }
-type update_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% parameter_detail() :: #{
%%   <<"description">> => string(),
%%   <<"required">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type parameter_detail() :: #{binary() => any()}.


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
%% prepare_agent_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string(),
%%   <<"preparedAt">> => non_neg_integer()
%% }
-type prepare_agent_response() :: #{binary() => any()}.


%% Example:
%% update_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type update_data_source_response() :: #{binary() => any()}.


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
%% aws_bedrock_agent_function() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => map()
%% }
-type aws_bedrock_agent_function() :: #{binary() => any()}.


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
%% delete_agent_version_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_agent_version_request() :: #{binary() => any()}.


%% Example:
%% list_agent_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_versions_request() :: #{binary() => any()}.


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
%% get_agent_action_group_response() :: #{
%%   <<"agentActionGroup">> => agent_action_group()
%% }
-type get_agent_action_group_response() :: #{binary() => any()}.

%% Example:
%% delete_agent_action_group_response() :: #{}
-type delete_agent_action_group_response() :: #{}.


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
%%   <<"storageConfiguration">> := storage_configuration(),
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
%% list_knowledge_bases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_request() :: #{binary() => any()}.


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
%% embedding_model_configuration() :: #{
%%   <<"bedrockEmbeddingModelConfiguration">> => bedrock_embedding_model_configuration()
%% }
-type embedding_model_configuration() :: #{binary() => any()}.


%% Example:
%% get_ingestion_job_response() :: #{
%%   <<"ingestionJob">> => ingestion_job()
%% }
-type get_ingestion_job_response() :: #{binary() => any()}.

%% Example:
%% get_data_source_request() :: #{}
-type get_data_source_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_agent_alias_response() :: #{
%%   <<"agentAlias">> => agent_alias()
%% }
-type update_agent_alias_response() :: #{binary() => any()}.


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
%% chunking_configuration() :: #{
%%   <<"chunkingStrategy">> => list(any()),
%%   <<"fixedSizeChunkingConfiguration">> => fixed_size_chunking_configuration()
%% }
-type chunking_configuration() :: #{binary() => any()}.


%% Example:
%% agent() :: #{
%%   <<"agentArn">> => string(),
%%   <<"agentId">> => string(),
%%   <<"agentName">> => string(),
%%   <<"agentResourceRoleArn">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()()),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
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
%% delete_knowledge_base_request() :: #{}
-type delete_knowledge_base_request() :: #{}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% get_agent_action_group_request() :: #{}
-type get_agent_action_group_request() :: #{}.


%% Example:
%% delete_agent_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any())
%% }
-type delete_agent_response() :: #{binary() => any()}.


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
%% disassociate_agent_knowledge_base_request() :: #{}
-type disassociate_agent_knowledge_base_request() :: #{}.


%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% agent_version() :: #{
%%   <<"agentArn">> => string(),
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
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"recommendedActions">> => list(string()()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type agent_version() :: #{binary() => any()}.


%% Example:
%% agent_alias_routing_configuration_list_item() :: #{
%%   <<"agentVersion">> => string(),
%%   <<"provisionedThroughput">> => string()
%% }
-type agent_alias_routing_configuration_list_item() :: #{binary() => any()}.


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
%%   <<"parentActionGroupSignature">> => list(any())
%% }
-type create_agent_action_group_request() :: #{binary() => any()}.


%% Example:
%% list_agent_action_groups_response() :: #{
%%   <<"actionGroupSummaries">> => list(action_group_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_action_groups_response() :: #{binary() => any()}.


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
%%   <<"parentActionSignature">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agent_action_group() :: #{binary() => any()}.


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
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% update_agent_request() :: #{
%%   <<"agentName">> := string(),
%%   <<"agentResourceRoleArn">> := string(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"description">> => string(),
%%   <<"foundationModel">> := string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration()
%% }
-type update_agent_request() :: #{binary() => any()}.


%% Example:
%% delete_agent_request() :: #{
%%   <<"skipResourceInUseCheck">> => [boolean()]
%% }
-type delete_agent_request() :: #{binary() => any()}.

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
%% get_agent_response() :: #{
%%   <<"agent">> => agent()
%% }
-type get_agent_response() :: #{binary() => any()}.


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
%% disassociate_agent_knowledge_base_response() :: #{}
-type disassociate_agent_knowledge_base_response() :: #{}.


%% Example:
%% list_agent_versions_response() :: #{
%%   <<"agentVersionSummaries">> => list(agent_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_versions_response() :: #{binary() => any()}.


%% Example:
%% get_agent_version_response() :: #{
%%   <<"agentVersion">> => agent_version()
%% }
-type get_agent_version_response() :: #{binary() => any()}.


%% Example:
%% guardrail_configuration() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string()
%% }
-type guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% start_ingestion_job_response() :: #{
%%   <<"ingestionJob">> => ingestion_job()
%% }
-type start_ingestion_job_response() :: #{binary() => any()}.

%% Example:
%% get_agent_request() :: #{}
-type get_agent_request() :: #{}.


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
%% associate_agent_knowledge_base_request() :: #{
%%   <<"description">> := string(),
%%   <<"knowledgeBaseId">> := string(),
%%   <<"knowledgeBaseState">> => list(any())
%% }
-type associate_agent_knowledge_base_request() :: #{binary() => any()}.


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
%%   <<"chunkingConfiguration">> => chunking_configuration()
%% }
-type vector_ingestion_configuration() :: #{binary() => any()}.


%% Example:
%% vector_knowledge_base_configuration() :: #{
%%   <<"embeddingModelArn">> => string(),
%%   <<"embeddingModelConfiguration">> => embedding_model_configuration()
%% }
-type vector_knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% get_data_source_response() :: #{
%%   <<"dataSource">> => data_source()
%% }
-type get_data_source_response() :: #{binary() => any()}.


%% Example:
%% delete_agent_version_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"agentStatus">> => list(any()),
%%   <<"agentVersion">> => string()
%% }
-type delete_agent_version_response() :: #{binary() => any()}.


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
%% get_agent_alias_request() :: #{}
-type get_agent_alias_request() :: #{}.


%% Example:
%% bedrock_embedding_model_configuration() :: #{
%%   <<"dimensions">> => integer()
%% }
-type bedrock_embedding_model_configuration() :: #{binary() => any()}.


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
%% prompt_configuration() :: #{
%%   <<"basePromptTemplate">> => string(),
%%   <<"inferenceConfiguration">> => inference_configuration(),
%%   <<"parserMode">> => list(any()),
%%   <<"promptCreationMode">> => list(any()),
%%   <<"promptState">> => list(any()),
%%   <<"promptType">> => list(any())
%% }
-type prompt_configuration() :: #{binary() => any()}.

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

-type create_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
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

-type delete_knowledge_base_errors() ::
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

-type list_ingestion_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_knowledge_bases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

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

-type start_ingestion_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
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

-type update_knowledge_base_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

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
%% To override the default prompt behavior for agent orchestration and to use
%% advanced prompts, include a `promptOverrideConfiguration' object. For
%% more information, see Advanced prompts:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html.
%%
%% If you agent fails to be created, the response returns a list of
%% `failureReasons' alongside a list of `recommendedActions' for you
%% to troubleshoot.
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
%% trying to complete a task, add an action group with the
%% `parentActionGroupSignature' field set to `AMAZON.UserInput'. You
%% must leave the `description', `apiSchema', and
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

%% @doc Sets up a data source to be added to a knowledge base.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source.
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

%% @doc Creates a knowledge base that contains data sources from which
%% information can be queried and used by LLMs.
%%
%% To create a knowledge base, you must first set up your data sources and
%% configure a supported vector store. For more information, see Set up your
%% data for ingestion:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html.
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

%% @doc Gets information about a ingestion job, in which a data source is
%% added to a knowledge base.
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

%% @doc Lists the ingestion jobs for a data source and information about each
%% of them.
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

%% @doc Lists the knowledge bases in an account and information about each of
%% them.
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

%% @doc Begins an ingestion job, in which a data source is added to a
%% knowledge base.
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

%% @doc Updates configurations for a data source.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source. Specify the existing `chunkingConfiguration'.
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
