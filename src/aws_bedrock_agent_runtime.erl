%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains APIs related to model invocation and querying of knowledge
%% bases.
-module(aws_bedrock_agent_runtime).

-export([delete_agent_memory/4,
         delete_agent_memory/5,
         generate_query/2,
         generate_query/3,
         get_agent_memory/5,
         get_agent_memory/7,
         get_agent_memory/8,
         invoke_agent/5,
         invoke_agent/6,
         invoke_flow/4,
         invoke_flow/5,
         invoke_inline_agent/3,
         invoke_inline_agent/4,
         optimize_prompt/2,
         optimize_prompt/3,
         rerank/2,
         rerank/3,
         retrieve/3,
         retrieve/4,
         retrieve_and_generate/2,
         retrieve_and_generate/3,
         retrieve_and_generate_stream/2,
         retrieve_and_generate_stream/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% function_invocation_input() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"actionInvocationType">> => list(any()),
%%   <<"agentId">> => [string()],
%%   <<"collaboratorName">> => string(),
%%   <<"function">> => [string()],
%%   <<"parameters">> => list(function_parameter()())
%% }
-type function_invocation_input() :: #{binary() => any()}.


%% Example:
%% file_part() :: #{
%%   <<"files">> => list(output_file()())
%% }
-type file_part() :: #{binary() => any()}.


%% Example:
%% knowledge_base_configuration() :: #{
%%   <<"knowledgeBaseId">> => string(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% rationale() :: #{
%%   <<"text">> => string(),
%%   <<"traceId">> => string()
%% }
-type rationale() :: #{binary() => any()}.


%% Example:
%% return_control_results() :: #{
%%   <<"invocationId">> => [string()],
%%   <<"returnControlInvocationResults">> => list(list()())
%% }
-type return_control_results() :: #{binary() => any()}.


%% Example:
%% api_request_body() :: #{
%%   <<"content">> => map()
%% }
-type api_request_body() :: #{binary() => any()}.


%% Example:
%% metadata_attribute_schema() :: #{
%%   <<"description">> => [string()],
%%   <<"key">> => [string()],
%%   <<"type">> => list(any())
%% }
-type metadata_attribute_schema() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_input_payload() :: #{
%%   <<"returnControlResults">> => return_control_results(),
%%   <<"text">> => string(),
%%   <<"type">> => list(any())
%% }
-type agent_collaborator_input_payload() :: #{binary() => any()}.


%% Example:
%% guardrail_content_policy_assessment() :: #{
%%   <<"filters">> => list(guardrail_content_filter()())
%% }
-type guardrail_content_policy_assessment() :: #{binary() => any()}.


%% Example:
%% streaming_configurations() :: #{
%%   <<"applyGuardrailInterval">> => [integer()],
%%   <<"streamFinalResponse">> => [boolean()]
%% }
-type streaming_configurations() :: #{binary() => any()}.


%% Example:
%% optimize_prompt_response() :: #{
%%   <<"optimizedPrompt">> => list()
%% }
-type optimize_prompt_response() :: #{binary() => any()}.


%% Example:
%% text_inference_config() :: #{
%%   <<"maxTokens">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topP">> => float()
%% }
-type text_inference_config() :: #{binary() => any()}.


%% Example:
%% code_interpreter_invocation_output() :: #{
%%   <<"executionError">> => [string()],
%%   <<"executionOutput">> => [string()],
%%   <<"executionTimeout">> => [boolean()],
%%   <<"files">> => list([string()]())
%% }
-type code_interpreter_invocation_output() :: #{binary() => any()}.


%% Example:
%% model_not_ready_exception() :: #{
%%   <<"message">> => string()
%% }
-type model_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% external_source() :: #{
%%   <<"byteContent">> => byte_content_doc(),
%%   <<"s3Location">> => s3_object_doc(),
%%   <<"sourceType">> => list(any())
%% }
-type external_source() :: #{binary() => any()}.


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
%% bad_gateway_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% inline_bedrock_model_configurations() :: #{
%%   <<"performanceConfig">> => performance_configuration()
%% }
-type inline_bedrock_model_configurations() :: #{binary() => any()}.


%% Example:
%% inline_session_state() :: #{
%%   <<"files">> => list(input_file()()),
%%   <<"invocationId">> => [string()],
%%   <<"promptSessionAttributes">> => map(),
%%   <<"returnControlInvocationResults">> => list(list()()),
%%   <<"sessionAttributes">> => map()
%% }
-type inline_session_state() :: #{binary() => any()}.


%% Example:
%% input_file() :: #{
%%   <<"name">> => [string()],
%%   <<"source">> => file_source(),
%%   <<"useCase">> => list(any())
%% }
-type input_file() :: #{binary() => any()}.


%% Example:
%% s3_object_doc() :: #{
%%   <<"uri">> => string()
%% }
-type s3_object_doc() :: #{binary() => any()}.


%% Example:
%% function_parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type function_parameter() :: #{binary() => any()}.


%% Example:
%% prompt_override_configuration() :: #{
%%   <<"overrideLambda">> => string(),
%%   <<"promptConfigurations">> => list(prompt_configuration()())
%% }
-type prompt_override_configuration() :: #{binary() => any()}.


%% Example:
%% optimized_prompt_event() :: #{
%%   <<"optimizedPrompt">> => list()
%% }
-type optimized_prompt_event() :: #{binary() => any()}.


%% Example:
%% dependency_failed_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type dependency_failed_exception() :: #{binary() => any()}.


%% Example:
%% citation() :: #{
%%   <<"generatedResponsePart">> => generated_response_part(),
%%   <<"retrievedReferences">> => list(retrieved_reference()())
%% }
-type citation() :: #{binary() => any()}.


%% Example:
%% inline_agent_file_part() :: #{
%%   <<"files">> => list(output_file()())
%% }
-type inline_agent_file_part() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_response() :: #{
%%   <<"citations">> => list(citation()()),
%%   <<"guardrailAction">> => list(any()),
%%   <<"output">> => retrieve_and_generate_output(),
%%   <<"sessionId">> => string()
%% }
-type retrieve_and_generate_response() :: #{binary() => any()}.

%% Example:
%% delete_agent_memory_response() :: #{}
-type delete_agent_memory_response() :: #{}.


%% Example:
%% rerank_text_document() :: #{
%%   <<"text">> => [string()]
%% }
-type rerank_text_document() :: #{binary() => any()}.


%% Example:
%% metadata() :: #{
%%   <<"usage">> => usage()
%% }
-type metadata() :: #{binary() => any()}.


%% Example:
%% knowledge_base_query() :: #{
%%   <<"text">> => [string()]
%% }
-type knowledge_base_query() :: #{binary() => any()}.


%% Example:
%% conversation_history() :: #{
%%   <<"messages">> => list(message()())
%% }
-type conversation_history() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"attribution">> => attribution(),
%%   <<"bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% parameter_detail() :: #{
%%   <<"description">> => string(),
%%   <<"required">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type parameter_detail() :: #{binary() => any()}.


%% Example:
%% failure_trace() :: #{
%%   <<"failureReason">> => string(),
%%   <<"traceId">> => string()
%% }
-type failure_trace() :: #{binary() => any()}.


%% Example:
%% inline_agent_return_control_payload() :: #{
%%   <<"invocationId">> => [string()],
%%   <<"invocationInputs">> => list(list()())
%% }
-type inline_agent_return_control_payload() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_managed_word() :: #{binary() => any()}.


%% Example:
%% action_group_invocation_input() :: #{
%%   <<"actionGroupName">> => string(),
%%   <<"apiPath">> => string(),
%%   <<"executionType">> => list(any()),
%%   <<"function">> => string(),
%%   <<"invocationId">> => [string()],
%%   <<"parameters">> => list(parameter()()),
%%   <<"requestBody">> => request_body(),
%%   <<"verb">> => string()
%% }
-type action_group_invocation_input() :: #{binary() => any()}.


%% Example:
%% retrieved_reference() :: #{
%%   <<"content">> => retrieval_result_content(),
%%   <<"location">> => retrieval_result_location(),
%%   <<"metadata">> => map()
%% }
-type retrieved_reference() :: #{binary() => any()}.


%% Example:
%% retrieval_result_location() :: #{
%%   <<"confluenceLocation">> => retrieval_result_confluence_location(),
%%   <<"customDocumentLocation">> => retrieval_result_custom_document_location(),
%%   <<"kendraDocumentLocation">> => retrieval_result_kendra_document_location(),
%%   <<"s3Location">> => retrieval_result_s3_location(),
%%   <<"salesforceLocation">> => retrieval_result_salesforce_location(),
%%   <<"sharePointLocation">> => retrieval_result_share_point_location(),
%%   <<"sqlLocation">> => retrieval_result_sql_location(),
%%   <<"type">> => list(any()),
%%   <<"webLocation">> => retrieval_result_web_location()
%% }
-type retrieval_result_location() :: #{binary() => any()}.


%% Example:
%% api_parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type api_parameter() :: #{binary() => any()}.


%% Example:
%% retrieval_result_sql_location() :: #{
%%   <<"query">> => [string()]
%% }
-type retrieval_result_sql_location() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_session_configuration() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type retrieve_and_generate_session_configuration() :: #{binary() => any()}.


%% Example:
%% bedrock_reranking_configuration() :: #{
%%   <<"modelConfiguration">> => bedrock_reranking_model_configuration(),
%%   <<"numberOfResults">> => [integer()]
%% }
-type bedrock_reranking_configuration() :: #{binary() => any()}.


%% Example:
%% generate_query_response() :: #{
%%   <<"queries">> => list(generated_query()())
%% }
-type generate_query_response() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_request() :: #{
%%   <<"input">> := retrieve_and_generate_input(),
%%   <<"retrieveAndGenerateConfiguration">> => retrieve_and_generate_configuration(),
%%   <<"sessionConfiguration">> => retrieve_and_generate_session_configuration(),
%%   <<"sessionId">> => string()
%% }
-type retrieve_and_generate_request() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_configuration() :: #{
%%   <<"externalSourcesConfiguration">> => external_sources_retrieve_and_generate_configuration(),
%%   <<"knowledgeBaseConfiguration">> => knowledge_base_retrieve_and_generate_configuration(),
%%   <<"type">> => list(any())
%% }
-type retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% retrieval_result_s3_location() :: #{
%%   <<"uri">> => [string()]
%% }
-type retrieval_result_s3_location() :: #{binary() => any()}.


%% Example:
%% bedrock_reranking_model_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"modelArn">> => string()
%% }
-type bedrock_reranking_model_configuration() :: #{binary() => any()}.


%% Example:
%% invoke_flow_response() :: #{
%%   <<"responseStream">> => list()
%% }
-type invoke_flow_response() :: #{binary() => any()}.


%% Example:
%% usage() :: #{
%%   <<"inputTokens">> => [integer()],
%%   <<"outputTokens">> => [integer()]
%% }
-type usage() :: #{binary() => any()}.


%% Example:
%% rerank_query() :: #{
%%   <<"textQuery">> => rerank_text_document(),
%%   <<"type">> => list(any())
%% }
-type rerank_query() :: #{binary() => any()}.


%% Example:
%% retrieval_result_content() :: #{
%%   <<"byteContent">> => [string()],
%%   <<"row">> => list(retrieval_result_content_column()()),
%%   <<"text">> => [string()],
%%   <<"type">> => list(any())
%% }
-type retrieval_result_content() :: #{binary() => any()}.


%% Example:
%% guardrail_configuration_with_arn() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string()
%% }
-type guardrail_configuration_with_arn() :: #{binary() => any()}.


%% Example:
%% flow_trace_node_input_field() :: #{
%%   <<"content">> => list(),
%%   <<"nodeInputName">> => string()
%% }
-type flow_trace_node_input_field() :: #{binary() => any()}.


%% Example:
%% guardrail_custom_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()]
%% }
-type guardrail_custom_word() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_output_payload() :: #{
%%   <<"returnControlPayload">> => return_control_payload(),
%%   <<"text">> => string(),
%%   <<"type">> => list(any())
%% }
-type agent_collaborator_output_payload() :: #{binary() => any()}.


%% Example:
%% retrieval_result_content_column() :: #{
%%   <<"columnName">> => [string()],
%%   <<"columnValue">> => [string()],
%%   <<"type">> => list(any())
%% }
-type retrieval_result_content_column() :: #{binary() => any()}.


%% Example:
%% content_body() :: #{
%%   <<"body">> => [string()]
%% }
-type content_body() :: #{binary() => any()}.


%% Example:
%% transformation_configuration() :: #{
%%   <<"mode">> => list(any()),
%%   <<"textToSqlConfiguration">> => text_to_sql_configuration()
%% }
-type transformation_configuration() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => generation_configuration(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"orchestrationConfiguration">> => orchestration_configuration(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type knowledge_base_retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% observation() :: #{
%%   <<"actionGroupInvocationOutput">> => action_group_invocation_output(),
%%   <<"agentCollaboratorInvocationOutput">> => agent_collaborator_invocation_output(),
%%   <<"codeInterpreterInvocationOutput">> => code_interpreter_invocation_output(),
%%   <<"finalResponse">> => final_response(),
%%   <<"knowledgeBaseLookupOutput">> => knowledge_base_lookup_output(),
%%   <<"repromptResponse">> => reprompt_response(),
%%   <<"traceId">> => string(),
%%   <<"type">> => list(any())
%% }
-type observation() :: #{binary() => any()}.


%% Example:
%% guardrail_word_policy_assessment() :: #{
%%   <<"customWords">> => list(guardrail_custom_word()()),
%%   <<"managedWordLists">> => list(guardrail_managed_word()())
%% }
-type guardrail_word_policy_assessment() :: #{binary() => any()}.


%% Example:
%% flow_trace_event() :: #{
%%   <<"trace">> => list()
%% }
-type flow_trace_event() :: #{binary() => any()}.


%% Example:
%% span() :: #{
%%   <<"end">> => [integer()],
%%   <<"start">> => [integer()]
%% }
-type span() :: #{binary() => any()}.


%% Example:
%% flow_trace_node_input_event() :: #{
%%   <<"fields">> => list(flow_trace_node_input_field()()),
%%   <<"nodeName">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type flow_trace_node_input_event() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_invocation_input() :: #{
%%   <<"agentCollaboratorAliasArn">> => string(),
%%   <<"agentCollaboratorName">> => [string()],
%%   <<"input">> => agent_collaborator_input_payload()
%% }
-type agent_collaborator_invocation_input() :: #{binary() => any()}.


%% Example:
%% knowledge_base() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type knowledge_base() :: #{binary() => any()}.


%% Example:
%% text_to_sql_configuration() :: #{
%%   <<"knowledgeBaseConfiguration">> => text_to_sql_knowledge_base_configuration(),
%%   <<"type">> => list(any())
%% }
-type text_to_sql_configuration() :: #{binary() => any()}.


%% Example:
%% pre_processing_parsed_response() :: #{
%%   <<"isValid">> => [boolean()],
%%   <<"rationale">> => string()
%% }
-type pre_processing_parsed_response() :: #{binary() => any()}.


%% Example:
%% function_result() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"agentId">> => [string()],
%%   <<"confirmationState">> => list(any()),
%%   <<"function">> => [string()],
%%   <<"responseBody">> => map(),
%%   <<"responseState">> => list(any())
%% }
-type function_result() :: #{binary() => any()}.


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
%% query_transformation_configuration() :: #{
%%   <<"type">> => list(any())
%% }
-type query_transformation_configuration() :: #{binary() => any()}.


%% Example:
%% post_processing_parsed_response() :: #{
%%   <<"text">> => string()
%% }
-type post_processing_parsed_response() :: #{binary() => any()}.


%% Example:
%% guardrail_sensitive_information_policy_assessment() :: #{
%%   <<"piiEntities">> => list(guardrail_pii_entity_filter()()),
%%   <<"regexes">> => list(guardrail_regex_filter()())
%% }
-type guardrail_sensitive_information_policy_assessment() :: #{binary() => any()}.


%% Example:
%% field_for_reranking() :: #{
%%   <<"fieldName">> => [string()]
%% }
-type field_for_reranking() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieval_configuration() :: #{
%%   <<"vectorSearchConfiguration">> => knowledge_base_vector_search_configuration()
%% }
-type knowledge_base_retrieval_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"confidence">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type guardrail_content_filter() :: #{binary() => any()}.


%% Example:
%% flow_completion_event() :: #{
%%   <<"completionReason">> => list(any())
%% }
-type flow_completion_event() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% return_control_payload() :: #{
%%   <<"invocationId">> => [string()],
%%   <<"invocationInputs">> => list(list()())
%% }
-type return_control_payload() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_invocation_output() :: #{
%%   <<"agentCollaboratorAliasArn">> => string(),
%%   <<"agentCollaboratorName">> => [string()],
%%   <<"output">> => agent_collaborator_output_payload()
%% }
-type agent_collaborator_invocation_output() :: #{binary() => any()}.


%% Example:
%% routing_classifier_model_invocation_output() :: #{
%%   <<"metadata">> => metadata(),
%%   <<"rawResponse">> => raw_response(),
%%   <<"traceId">> => string()
%% }
-type routing_classifier_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% text_response_part() :: #{
%%   <<"span">> => span(),
%%   <<"text">> => [string()]
%% }
-type text_response_part() :: #{binary() => any()}.


%% Example:
%% invoke_agent_response() :: #{
%%   <<"completion">> => list(),
%%   <<"contentType">> => string(),
%%   <<"memoryId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type invoke_agent_response() :: #{binary() => any()}.


%% Example:
%% session_state() :: #{
%%   <<"conversationHistory">> => conversation_history(),
%%   <<"files">> => list(input_file()()),
%%   <<"invocationId">> => [string()],
%%   <<"knowledgeBaseConfigurations">> => list(knowledge_base_configuration()()),
%%   <<"promptSessionAttributes">> => map(),
%%   <<"returnControlInvocationResults">> => list(list()()),
%%   <<"sessionAttributes">> => map()
%% }
-type session_state() :: #{binary() => any()}.


%% Example:
%% bedrock_model_configurations() :: #{
%%   <<"performanceConfig">> => performance_configuration()
%% }
-type bedrock_model_configurations() :: #{binary() => any()}.


%% Example:
%% invoke_inline_agent_response() :: #{
%%   <<"completion">> => list(),
%%   <<"contentType">> => string(),
%%   <<"sessionId">> => string()
%% }
-type invoke_inline_agent_response() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_output_event() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieve_and_generate_output_event() :: #{binary() => any()}.


%% Example:
%% pre_processing_model_invocation_output() :: #{
%%   <<"metadata">> => metadata(),
%%   <<"parsedResponse">> => pre_processing_parsed_response(),
%%   <<"rawResponse">> => raw_response(),
%%   <<"traceId">> => string()
%% }
-type pre_processing_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% generate_query_request() :: #{
%%   <<"queryGenerationInput">> := query_generation_input(),
%%   <<"transformationConfiguration">> := transformation_configuration()
%% }
-type generate_query_request() :: #{binary() => any()}.


%% Example:
%% parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type parameter() :: #{binary() => any()}.


%% Example:
%% external_sources_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => external_sources_generation_configuration(),
%%   <<"modelArn">> => string(),
%%   <<"sources">> => list(external_source()())
%% }
-type external_sources_retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% api_invocation_input() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"actionInvocationType">> => list(any()),
%%   <<"agentId">> => [string()],
%%   <<"apiPath">> => string(),
%%   <<"collaboratorName">> => string(),
%%   <<"httpMethod">> => [string()],
%%   <<"parameters">> => list(api_parameter()()),
%%   <<"requestBody">> => api_request_body()
%% }
-type api_invocation_input() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_input() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieve_and_generate_input() :: #{binary() => any()}.


%% Example:
%% retrieval_result_confluence_location() :: #{
%%   <<"url">> => [string()]
%% }
-type retrieval_result_confluence_location() :: #{binary() => any()}.


%% Example:
%% flow_trace_condition() :: #{
%%   <<"conditionName">> => [string()]
%% }
-type flow_trace_condition() :: #{binary() => any()}.


%% Example:
%% reprompt_response() :: #{
%%   <<"source">> => list(any()),
%%   <<"text">> => [string()]
%% }
-type reprompt_response() :: #{binary() => any()}.


%% Example:
%% final_response() :: #{
%%   <<"text">> => string()
%% }
-type final_response() :: #{binary() => any()}.


%% Example:
%% api_result() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"agentId">> => [string()],
%%   <<"apiPath">> => string(),
%%   <<"confirmationState">> => list(any()),
%%   <<"httpMethod">> => [string()],
%%   <<"httpStatusCode">> => [integer()],
%%   <<"responseBody">> => map(),
%%   <<"responseState">> => list(any())
%% }
-type api_result() :: #{binary() => any()}.


%% Example:
%% vector_search_reranking_configuration() :: #{
%%   <<"bedrockRerankingConfiguration">> => vector_search_bedrock_reranking_configuration(),
%%   <<"type">> => list(any())
%% }
-type vector_search_reranking_configuration() :: #{binary() => any()}.


%% Example:
%% byte_content_doc() :: #{
%%   <<"contentType">> => string(),
%%   <<"data">> => binary(),
%%   <<"identifier">> => string()
%% }
-type byte_content_doc() :: #{binary() => any()}.


%% Example:
%% external_sources_generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"inferenceConfig">> => inference_config(),
%%   <<"performanceConfig">> => performance_configuration(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type external_sources_generation_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_trace() :: #{
%%   <<"action">> => list(any()),
%%   <<"inputAssessments">> => list(guardrail_assessment()()),
%%   <<"outputAssessments">> => list(guardrail_assessment()()),
%%   <<"traceId">> => string()
%% }
-type guardrail_trace() :: #{binary() => any()}.


%% Example:
%% knowledge_base_vector_search_configuration() :: #{
%%   <<"filter">> => list(),
%%   <<"implicitFilterConfiguration">> => implicit_filter_configuration(),
%%   <<"numberOfResults">> => [integer()],
%%   <<"overrideSearchType">> => list(any()),
%%   <<"rerankingConfiguration">> => vector_search_reranking_configuration()
%% }
-type knowledge_base_vector_search_configuration() :: #{binary() => any()}.


%% Example:
%% rerank_result() :: #{
%%   <<"document">> => rerank_document(),
%%   <<"index">> => [integer()],
%%   <<"relevanceScore">> => [float()]
%% }
-type rerank_result() :: #{binary() => any()}.


%% Example:
%% filter_attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => any()
%% }
-type filter_attribute() :: #{binary() => any()}.


%% Example:
%% flow_trace_node_output_field() :: #{
%%   <<"content">> => list(),
%%   <<"nodeOutputName">> => string()
%% }
-type flow_trace_node_output_field() :: #{binary() => any()}.


%% Example:
%% function_definition() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => map(),
%%   <<"requireConfirmation">> => list(any())
%% }
-type function_definition() :: #{binary() => any()}.


%% Example:
%% flow_trace_node_output_event() :: #{
%%   <<"fields">> => list(flow_trace_node_output_field()()),
%%   <<"nodeName">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type flow_trace_node_output_event() :: #{binary() => any()}.


%% Example:
%% retrieval_result_salesforce_location() :: #{
%%   <<"url">> => [string()]
%% }
-type retrieval_result_salesforce_location() :: #{binary() => any()}.


%% Example:
%% implicit_filter_configuration() :: #{
%%   <<"metadataAttributes">> => list(metadata_attribute_schema()()),
%%   <<"modelArn">> => string()
%% }
-type implicit_filter_configuration() :: #{binary() => any()}.


%% Example:
%% vector_search_bedrock_reranking_configuration() :: #{
%%   <<"metadataConfiguration">> => metadata_configuration_for_reranking(),
%%   <<"modelConfiguration">> => vector_search_bedrock_reranking_model_configuration(),
%%   <<"numberOfRerankedResults">> => [integer()]
%% }
-type vector_search_bedrock_reranking_configuration() :: #{binary() => any()}.


%% Example:
%% s3_identifier() :: #{
%%   <<"s3BucketName">> => string(),
%%   <<"s3ObjectKey">> => string()
%% }
-type s3_identifier() :: #{binary() => any()}.


%% Example:
%% reranking_configuration() :: #{
%%   <<"bedrockRerankingConfiguration">> => bedrock_reranking_configuration(),
%%   <<"type">> => list(any())
%% }
-type reranking_configuration() :: #{binary() => any()}.


%% Example:
%% output_file() :: #{
%%   <<"bytes">> => binary(),
%%   <<"name">> => [string()],
%%   <<"type">> => string()
%% }
-type output_file() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_assessment() :: #{
%%   <<"contentPolicy">> => guardrail_content_policy_assessment(),
%%   <<"sensitiveInformationPolicy">> => guardrail_sensitive_information_policy_assessment(),
%%   <<"topicPolicy">> => guardrail_topic_policy_assessment(),
%%   <<"wordPolicy">> => guardrail_word_policy_assessment()
%% }
-type guardrail_assessment() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_stream_request() :: #{
%%   <<"input">> := retrieve_and_generate_input(),
%%   <<"retrieveAndGenerateConfiguration">> => retrieve_and_generate_configuration(),
%%   <<"sessionConfiguration">> => retrieve_and_generate_session_configuration(),
%%   <<"sessionId">> => string()
%% }
-type retrieve_and_generate_stream_request() :: #{binary() => any()}.


%% Example:
%% text_to_sql_knowledge_base_configuration() :: #{
%%   <<"knowledgeBaseArn">> => string()
%% }
-type text_to_sql_knowledge_base_configuration() :: #{binary() => any()}.


%% Example:
%% model_invocation_input() :: #{
%%   <<"foundationModel">> => string(),
%%   <<"inferenceConfiguration">> => inference_configuration(),
%%   <<"overrideLambda">> => string(),
%%   <<"parserMode">> => list(any()),
%%   <<"promptCreationMode">> => list(any()),
%%   <<"text">> => string(),
%%   <<"traceId">> => string(),
%%   <<"type">> => list(any())
%% }
-type model_invocation_input() :: #{binary() => any()}.


%% Example:
%% inline_agent_payload_part() :: #{
%%   <<"attribution">> => attribution(),
%%   <<"bytes">> => binary()
%% }
-type inline_agent_payload_part() :: #{binary() => any()}.


%% Example:
%% attribution() :: #{
%%   <<"citations">> => list(citation()())
%% }
-type attribution() :: #{binary() => any()}.


%% Example:
%% trace_part() :: #{
%%   <<"agentAliasId">> => string(),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"callerChain">> => list(list()()),
%%   <<"collaboratorName">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"trace">> => list()
%% }
-type trace_part() :: #{binary() => any()}.


%% Example:
%% agent_action_group() :: #{
%%   <<"actionGroupExecutor">> => list(),
%%   <<"actionGroupName">> => string(),
%%   <<"apiSchema">> => list(),
%%   <<"description">> => string(),
%%   <<"functionSchema">> => list(),
%%   <<"parentActionGroupSignature">> => list(any())
%% }
-type agent_action_group() :: #{binary() => any()}.


%% Example:
%% retrieval_result_share_point_location() :: #{
%%   <<"url">> => [string()]
%% }
-type retrieval_result_share_point_location() :: #{binary() => any()}.


%% Example:
%% orchestration_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"inferenceConfig">> => inference_config(),
%%   <<"performanceConfig">> => performance_configuration(),
%%   <<"promptTemplate">> => prompt_template(),
%%   <<"queryTransformationConfiguration">> => query_transformation_configuration()
%% }
-type orchestration_configuration() :: #{binary() => any()}.


%% Example:
%% prompt_template() :: #{
%%   <<"textPromptTemplate">> => string()
%% }
-type prompt_template() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% inference_config() :: #{
%%   <<"textInferenceConfig">> => text_inference_config()
%% }
-type inference_config() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_policy_assessment() :: #{
%%   <<"topics">> => list(guardrail_topic()())
%% }
-type guardrail_topic_policy_assessment() :: #{binary() => any()}.


%% Example:
%% generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"inferenceConfig">> => inference_config(),
%%   <<"performanceConfig">> => performance_configuration(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type generation_configuration() :: #{binary() => any()}.


%% Example:
%% property_parameters() :: #{
%%   <<"properties">> => list(parameter()())
%% }
-type property_parameters() :: #{binary() => any()}.


%% Example:
%% flow_input() :: #{
%%   <<"content">> => list(),
%%   <<"nodeName">> => string(),
%%   <<"nodeOutputName">> => string()
%% }
-type flow_input() :: #{binary() => any()}.


%% Example:
%% flow_trace_condition_node_result_event() :: #{
%%   <<"nodeName">> => string(),
%%   <<"satisfiedConditions">> => list(flow_trace_condition()()),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type flow_trace_condition_node_result_event() :: #{binary() => any()}.


%% Example:
%% generated_response_part() :: #{
%%   <<"textResponsePart">> => text_response_part()
%% }
-type generated_response_part() :: #{binary() => any()}.


%% Example:
%% retrieval_result_custom_document_location() :: #{
%%   <<"id">> => [string()]
%% }
-type retrieval_result_custom_document_location() :: #{binary() => any()}.


%% Example:
%% memory_session_summary() :: #{
%%   <<"memoryId">> => string(),
%%   <<"sessionExpiryTime">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"sessionStartTime">> => non_neg_integer(),
%%   <<"summaryText">> => string()
%% }
-type memory_session_summary() :: #{binary() => any()}.


%% Example:
%% metadata_configuration_for_reranking() :: #{
%%   <<"selectionMode">> => list(any()),
%%   <<"selectiveModeConfiguration">> => list()
%% }
-type metadata_configuration_for_reranking() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% generated_query() :: #{
%%   <<"sql">> => [string()],
%%   <<"type">> => list(any())
%% }
-type generated_query() :: #{binary() => any()}.


%% Example:
%% query_generation_input() :: #{
%%   <<"text">> => [string()],
%%   <<"type">> => list(any())
%% }
-type query_generation_input() :: #{binary() => any()}.


%% Example:
%% get_agent_memory_response() :: #{
%%   <<"memoryContents">> => list(list()()),
%%   <<"nextToken">> => string()
%% }
-type get_agent_memory_response() :: #{binary() => any()}.


%% Example:
%% text_prompt() :: #{
%%   <<"text">> => [string()]
%% }
-type text_prompt() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% rerank_source() :: #{
%%   <<"inlineDocumentSource">> => rerank_document(),
%%   <<"type">> => list(any())
%% }
-type rerank_source() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_output() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieve_and_generate_output() :: #{binary() => any()}.


%% Example:
%% vector_search_bedrock_reranking_model_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"modelArn">> => string()
%% }
-type vector_search_bedrock_reranking_model_configuration() :: #{binary() => any()}.


%% Example:
%% citation_event() :: #{
%%   <<"citation">> => citation()
%% }
-type citation_event() :: #{binary() => any()}.


%% Example:
%% flow_output_event() :: #{
%%   <<"content">> => list(),
%%   <<"nodeName">> => string(),
%%   <<"nodeType">> => list(any())
%% }
-type flow_output_event() :: #{binary() => any()}.


%% Example:
%% invoke_inline_agent_request() :: #{
%%   <<"actionGroups">> => list(agent_action_group()()),
%%   <<"bedrockModelConfigurations">> => inline_bedrock_model_configurations(),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"enableTrace">> => [boolean()],
%%   <<"endSession">> => [boolean()],
%%   <<"foundationModel">> := string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration_with_arn(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"inlineSessionState">> => inline_session_state(),
%%   <<"inputText">> => string(),
%%   <<"instruction">> := string(),
%%   <<"knowledgeBases">> => list(knowledge_base()()),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration()
%% }
-type invoke_inline_agent_request() :: #{binary() => any()}.


%% Example:
%% action_group_invocation_output() :: #{
%%   <<"text">> => string()
%% }
-type action_group_invocation_output() :: #{binary() => any()}.


%% Example:
%% raw_response() :: #{
%%   <<"content">> => [string()]
%% }
-type raw_response() :: #{binary() => any()}.


%% Example:
%% rerank_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(rerank_result()())
%% }
-type rerank_response() :: #{binary() => any()}.


%% Example:
%% guardrail_configuration() :: #{
%%   <<"guardrailId">> => [string()],
%%   <<"guardrailVersion">> => [string()]
%% }
-type guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_regex_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"name">> => [string()],
%%   <<"regex">> => [string()]
%% }
-type guardrail_regex_filter() :: #{binary() => any()}.


%% Example:
%% retrieval_result_web_location() :: #{
%%   <<"url">> => [string()]
%% }
-type retrieval_result_web_location() :: #{binary() => any()}.


%% Example:
%% delete_agent_memory_request() :: #{
%%   <<"memoryId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type delete_agent_memory_request() :: #{binary() => any()}.


%% Example:
%% knowledge_base_lookup_output() :: #{
%%   <<"retrievedReferences">> => list(retrieved_reference()())
%% }
-type knowledge_base_lookup_output() :: #{binary() => any()}.


%% Example:
%% retrieval_result_kendra_document_location() :: #{
%%   <<"uri">> => [string()]
%% }
-type retrieval_result_kendra_document_location() :: #{binary() => any()}.


%% Example:
%% analyze_prompt_event() :: #{
%%   <<"message">> => [string()]
%% }
-type analyze_prompt_event() :: #{binary() => any()}.


%% Example:
%% byte_content_file() :: #{
%%   <<"data">> => binary(),
%%   <<"mediaType">> => string()
%% }
-type byte_content_file() :: #{binary() => any()}.


%% Example:
%% optimize_prompt_request() :: #{
%%   <<"input">> := list(),
%%   <<"targetModelId">> := [string()]
%% }
-type optimize_prompt_request() :: #{binary() => any()}.


%% Example:
%% retrieve_request() :: #{
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"nextToken">> => string(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration(),
%%   <<"retrievalQuery">> := knowledge_base_query()
%% }
-type retrieve_request() :: #{binary() => any()}.


%% Example:
%% rerank_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queries">> := list(rerank_query()()),
%%   <<"rerankingConfiguration">> := reranking_configuration(),
%%   <<"sources">> := list(rerank_source()())
%% }
-type rerank_request() :: #{binary() => any()}.


%% Example:
%% invoke_agent_request() :: #{
%%   <<"bedrockModelConfigurations">> => bedrock_model_configurations(),
%%   <<"enableTrace">> => [boolean()],
%%   <<"endSession">> => [boolean()],
%%   <<"inputText">> => string(),
%%   <<"memoryId">> => string(),
%%   <<"sessionState">> => session_state(),
%%   <<"sourceArn">> => string(),
%%   <<"streamingConfigurations">> => streaming_configurations()
%% }
-type invoke_agent_request() :: #{binary() => any()}.


%% Example:
%% model_performance_configuration() :: #{
%%   <<"performanceConfig">> => performance_configuration()
%% }
-type model_performance_configuration() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_stream_response() :: #{
%%   <<"sessionId">> => string(),
%%   <<"stream">> => list()
%% }
-type retrieve_and_generate_stream_response() :: #{binary() => any()}.


%% Example:
%% invocation_input() :: #{
%%   <<"actionGroupInvocationInput">> => action_group_invocation_input(),
%%   <<"agentCollaboratorInvocationInput">> => agent_collaborator_invocation_input(),
%%   <<"codeInterpreterInvocationInput">> => code_interpreter_invocation_input(),
%%   <<"invocationType">> => list(any()),
%%   <<"knowledgeBaseLookupInput">> => knowledge_base_lookup_input(),
%%   <<"traceId">> => string()
%% }
-type invocation_input() :: #{binary() => any()}.


%% Example:
%% request_body() :: #{
%%   <<"content">> => map()
%% }
-type request_body() :: #{binary() => any()}.


%% Example:
%% custom_orchestration_trace_event() :: #{
%%   <<"text">> => [string()]
%% }
-type custom_orchestration_trace_event() :: #{binary() => any()}.


%% Example:
%% get_agent_memory_request() :: #{
%%   <<"maxItems">> => integer(),
%%   <<"memoryId">> := string(),
%%   <<"memoryType">> := list(any()),
%%   <<"nextToken">> => string()
%% }
-type get_agent_memory_request() :: #{binary() => any()}.


%% Example:
%% s3_object_file() :: #{
%%   <<"uri">> => string()
%% }
-type s3_object_file() :: #{binary() => any()}.


%% Example:
%% post_processing_model_invocation_output() :: #{
%%   <<"metadata">> => metadata(),
%%   <<"parsedResponse">> => post_processing_parsed_response(),
%%   <<"rawResponse">> => raw_response(),
%%   <<"traceId">> => string()
%% }
-type post_processing_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_pii_entity_filter() :: #{binary() => any()}.


%% Example:
%% orchestration_model_invocation_output() :: #{
%%   <<"metadata">> => metadata(),
%%   <<"rawResponse">> => raw_response(),
%%   <<"traceId">> => string()
%% }
-type orchestration_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% invoke_flow_request() :: #{
%%   <<"enableTrace">> => [boolean()],
%%   <<"inputs">> := list(flow_input()()),
%%   <<"modelPerformanceConfiguration">> => model_performance_configuration()
%% }
-type invoke_flow_request() :: #{binary() => any()}.


%% Example:
%% file_source() :: #{
%%   <<"byteContent">> => byte_content_file(),
%%   <<"s3Location">> => s3_object_file(),
%%   <<"sourceType">> => list(any())
%% }
-type file_source() :: #{binary() => any()}.


%% Example:
%% retrieve_response() :: #{
%%   <<"guardrailAction">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"retrievalResults">> => list(knowledge_base_retrieval_result()())
%% }
-type retrieve_response() :: #{binary() => any()}.


%% Example:
%% knowledge_base_lookup_input() :: #{
%%   <<"knowledgeBaseId">> => string(),
%%   <<"text">> => string()
%% }
-type knowledge_base_lookup_input() :: #{binary() => any()}.


%% Example:
%% custom_orchestration_trace() :: #{
%%   <<"event">> => custom_orchestration_trace_event(),
%%   <<"traceId">> => string()
%% }
-type custom_orchestration_trace() :: #{binary() => any()}.


%% Example:
%% code_interpreter_invocation_input() :: #{
%%   <<"code">> => [string()],
%%   <<"files">> => list([string()]())
%% }
-type code_interpreter_invocation_input() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieval_result() :: #{
%%   <<"content">> => retrieval_result_content(),
%%   <<"location">> => retrieval_result_location(),
%%   <<"metadata">> => map(),
%%   <<"score">> => [float()]
%% }
-type knowledge_base_retrieval_result() :: #{binary() => any()}.


%% Example:
%% guardrail_topic() :: #{
%%   <<"action">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_topic() :: #{binary() => any()}.


%% Example:
%% inline_agent_trace_part() :: #{
%%   <<"sessionId">> => string(),
%%   <<"trace">> => list()
%% }
-type inline_agent_trace_part() :: #{binary() => any()}.


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


%% Example:
%% performance_configuration() :: #{
%%   <<"latency">> => list(any())
%% }
-type performance_configuration() :: #{binary() => any()}.


%% Example:
%% rerank_document() :: #{
%%   <<"jsonDocument">> => [any()],
%%   <<"textDocument">> => rerank_text_document(),
%%   <<"type">> => list(any())
%% }
-type rerank_document() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"content">> => list(list()()),
%%   <<"role">> => list(any())
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% guardrail_event() :: #{
%%   <<"action">> => list(any())
%% }
-type guardrail_event() :: #{binary() => any()}.

-type delete_agent_memory_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type generate_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type get_agent_memory_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type invoke_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception() | 
    model_not_ready_exception().

-type invoke_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type invoke_inline_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type optimize_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type rerank_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type retrieve_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type retrieve_and_generate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type retrieve_and_generate_stream_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes memory from the specified memory identifier.
-spec delete_agent_memory(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_memory_request()) ->
    {ok, delete_agent_memory_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_memory_errors(), tuple()}.
delete_agent_memory(Client, AgentAliasId, AgentId, Input) ->
    delete_agent_memory(Client, AgentAliasId, AgentId, Input, []).

-spec delete_agent_memory(aws_client:aws_client(), binary() | list(), binary() | list(), delete_agent_memory_request(), proplists:proplist()) ->
    {ok, delete_agent_memory_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_memory_errors(), tuple()}.
delete_agent_memory(Client, AgentAliasId, AgentId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentAliases/", aws_util:encode_uri(AgentAliasId), "/memories"],
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
                     {<<"memoryId">>, <<"memoryId">>},
                     {<<"sessionId">>, <<"sessionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates an SQL query from a natural language query.
%%
%% For more information, see Generate a query for structured data:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-generate-query.html
%% in the Amazon Bedrock User Guide.
-spec generate_query(aws_client:aws_client(), generate_query_request()) ->
    {ok, generate_query_response(), tuple()} |
    {error, any()} |
    {error, generate_query_errors(), tuple()}.
generate_query(Client, Input) ->
    generate_query(Client, Input, []).

-spec generate_query(aws_client:aws_client(), generate_query_request(), proplists:proplist()) ->
    {ok, generate_query_response(), tuple()} |
    {error, any()} |
    {error, generate_query_errors(), tuple()}.
generate_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/generateQuery"],
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

%% @doc Gets the sessions stored in the memory of the agent.
-spec get_agent_memory(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_agent_memory_response(), tuple()} |
    {error, any()} |
    {error, get_agent_memory_errors(), tuple()}.
get_agent_memory(Client, AgentAliasId, AgentId, MemoryId, MemoryType)
  when is_map(Client) ->
    get_agent_memory(Client, AgentAliasId, AgentId, MemoryId, MemoryType, #{}, #{}).

-spec get_agent_memory(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_agent_memory_response(), tuple()} |
    {error, any()} |
    {error, get_agent_memory_errors(), tuple()}.
get_agent_memory(Client, AgentAliasId, AgentId, MemoryId, MemoryType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_memory(Client, AgentAliasId, AgentId, MemoryId, MemoryType, QueryMap, HeadersMap, []).

-spec get_agent_memory(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_memory_response(), tuple()} |
    {error, any()} |
    {error, get_agent_memory_errors(), tuple()}.
get_agent_memory(Client, AgentAliasId, AgentId, MemoryId, MemoryType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentAliases/", aws_util:encode_uri(AgentAliasId), "/memories"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"memoryId">>, MemoryId},
        {<<"memoryType">>, MemoryType},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `InvokeAgent'.
%%
%% Sends a prompt for the agent to process and respond to. Note the following
%% fields for the request:
%%
%% To continue the same conversation with an agent, use the same
%% `sessionId' value in the request.
%%
%% To activate trace enablement, turn `enableTrace' to `true'. Trace
%% enablement helps you follow the agent's reasoning process that led it
%% to the information it processed, the actions it took, and the final result
%% it yielded. For more information, see Trace enablement:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events.
%%
%% To stream agent responses, make sure that only orchestration prompt is
%% enabled. Agent streaming is not supported for the following steps:
%%
%% `Pre-processing'
%%
%% `Post-processing'
%%
%% Agent with 1 Knowledge base and `User Input' not enabled
%%
%% End a conversation by setting `endSession' to `true'.
%%
%% In the `sessionState' object, you can include attributes for the
%% session or prompt or, if you configured an action group to return control,
%% results from invocation of the action group.
%%
%% The response is returned in the `bytes' field of the `chunk'
%% object.
%%
%% The `attribution' object contains citations for parts of the response.
%%
%% If you set `enableTrace' to `true' in the request, you can trace
%% the agent's steps and reasoning process that led it to the response.
%%
%% If the action predicted was configured to return control, the response
%% returns parameters for the action, elicited from the user, in the
%% `returnControl' field.
%%
%% Errors are also surfaced in the response.
-spec invoke_agent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), invoke_agent_request()) ->
    {ok, invoke_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_errors(), tuple()}.
invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input) ->
    invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input, []).

-spec invoke_agent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), invoke_agent_request(), proplists:proplist()) ->
    {ok, invoke_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_errors(), tuple()}.
invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentAliases/", aws_util:encode_uri(AgentAliasId), "/sessions/", aws_util:encode_uri(SessionId), "/text"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-source-arn">>, <<"sourceArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-bedrock-agent-content-type">>, <<"contentType">>},
            {<<"x-amz-bedrock-agent-memory-id">>, <<"memoryId">>},
            {<<"x-amz-bedrock-agent-session-id">>, <<"sessionId">>}
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

%% @doc Invokes an alias of a flow to run the inputs that you specify and
%% return the output of each node as a stream.
%%
%% If there's an error, the error is returned. For more information, see
%% Test a flow in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
%%
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `InvokeFlow'.
-spec invoke_flow(aws_client:aws_client(), binary() | list(), binary() | list(), invoke_flow_request()) ->
    {ok, invoke_flow_response(), tuple()} |
    {error, any()} |
    {error, invoke_flow_errors(), tuple()}.
invoke_flow(Client, FlowAliasIdentifier, FlowIdentifier, Input) ->
    invoke_flow(Client, FlowAliasIdentifier, FlowIdentifier, Input, []).

-spec invoke_flow(aws_client:aws_client(), binary() | list(), binary() | list(), invoke_flow_request(), proplists:proplist()) ->
    {ok, invoke_flow_response(), tuple()} |
    {error, any()} |
    {error, invoke_flow_errors(), tuple()}.
invoke_flow(Client, FlowAliasIdentifier, FlowIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/flows/", aws_util:encode_uri(FlowIdentifier), "/aliases/", aws_util:encode_uri(FlowAliasIdentifier), ""],
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

%% @doc
%% Invokes an inline Amazon Bedrock agent using the configurations you
%% provide with the request.
%%
%% Specify the following fields for security purposes.
%%
%% (Optional) `customerEncryptionKeyArn' – The Amazon Resource Name (ARN)
%% of a KMS key to encrypt the creation of the agent.
%%
%% (Optional) `idleSessionTTLinSeconds' – Specify the number of seconds
%% for which the agent should maintain session information. After this time
%% expires, the subsequent `InvokeInlineAgent' request begins a new
%% session.
%%
%% To override the default prompt behavior for agent orchestration and to use
%% advanced prompts, include a `promptOverrideConfiguration' object.
%% For more information, see Advanced prompts:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html.
%%
%% The agent instructions will not be honored if your agent has only one
%% knowledge base, uses default prompts, has no action group, and user input
%% is disabled.
%%
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `InvokeInlineAgent'.
-spec invoke_inline_agent(aws_client:aws_client(), binary() | list(), invoke_inline_agent_request()) ->
    {ok, invoke_inline_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_inline_agent_errors(), tuple()}.
invoke_inline_agent(Client, SessionId, Input) ->
    invoke_inline_agent(Client, SessionId, Input, []).

-spec invoke_inline_agent(aws_client:aws_client(), binary() | list(), invoke_inline_agent_request(), proplists:proplist()) ->
    {ok, invoke_inline_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_inline_agent_errors(), tuple()}.
invoke_inline_agent(Client, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(SessionId), ""],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-bedrock-agent-content-type">>, <<"contentType">>},
            {<<"x-amz-bedrock-agent-session-id">>, <<"sessionId">>}
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

%% @doc Optimizes a prompt for the task that you specify.
%%
%% For more information, see Optimize a prompt:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-optimize.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec optimize_prompt(aws_client:aws_client(), optimize_prompt_request()) ->
    {ok, optimize_prompt_response(), tuple()} |
    {error, any()} |
    {error, optimize_prompt_errors(), tuple()}.
optimize_prompt(Client, Input) ->
    optimize_prompt(Client, Input, []).

-spec optimize_prompt(aws_client:aws_client(), optimize_prompt_request(), proplists:proplist()) ->
    {ok, optimize_prompt_response(), tuple()} |
    {error, any()} |
    {error, optimize_prompt_errors(), tuple()}.
optimize_prompt(Client, Input0, Options0) ->
    Method = post,
    Path = ["/optimize-prompt"],
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

%% @doc Reranks the relevance of sources based on queries.
%%
%% For more information, see Improve the relevance of query responses with a
%% reranker model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html.
-spec rerank(aws_client:aws_client(), rerank_request()) ->
    {ok, rerank_response(), tuple()} |
    {error, any()} |
    {error, rerank_errors(), tuple()}.
rerank(Client, Input) ->
    rerank(Client, Input, []).

-spec rerank(aws_client:aws_client(), rerank_request(), proplists:proplist()) ->
    {ok, rerank_response(), tuple()} |
    {error, any()} |
    {error, rerank_errors(), tuple()}.
rerank(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rerank"],
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

%% @doc Queries a knowledge base and retrieves information from it.
-spec retrieve(aws_client:aws_client(), binary() | list(), retrieve_request()) ->
    {ok, retrieve_response(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, KnowledgeBaseId, Input) ->
    retrieve(Client, KnowledgeBaseId, Input, []).

-spec retrieve(aws_client:aws_client(), binary() | list(), retrieve_request(), proplists:proplist()) ->
    {ok, retrieve_response(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/retrieve"],
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

%% @doc Queries a knowledge base and generates responses based on the
%% retrieved results and using the specified foundation model or inference
%% profile:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html.
%%
%% The response only cites sources that are relevant to the query.
-spec retrieve_and_generate(aws_client:aws_client(), retrieve_and_generate_request()) ->
    {ok, retrieve_and_generate_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_errors(), tuple()}.
retrieve_and_generate(Client, Input) ->
    retrieve_and_generate(Client, Input, []).

-spec retrieve_and_generate(aws_client:aws_client(), retrieve_and_generate_request(), proplists:proplist()) ->
    {ok, retrieve_and_generate_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_errors(), tuple()}.
retrieve_and_generate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/retrieveAndGenerate"],
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

%% @doc Queries a knowledge base and generates responses based on the
%% retrieved results, with output in streaming format.
%%
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `InvokeModelWithResponseStream'.
-spec retrieve_and_generate_stream(aws_client:aws_client(), retrieve_and_generate_stream_request()) ->
    {ok, retrieve_and_generate_stream_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_stream_errors(), tuple()}.
retrieve_and_generate_stream(Client, Input) ->
    retrieve_and_generate_stream(Client, Input, []).

-spec retrieve_and_generate_stream(aws_client:aws_client(), retrieve_and_generate_stream_request(), proplists:proplist()) ->
    {ok, retrieve_and_generate_stream_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_stream_errors(), tuple()}.
retrieve_and_generate_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/retrieveAndGenerateStream"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-bedrock-knowledge-base-session-id">>, <<"sessionId">>}
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
    Host = build_host(<<"bedrock-agent-runtime">>, Client1),
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
