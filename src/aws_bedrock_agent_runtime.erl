%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains APIs related to model invocation and querying of knowledge
%% bases.
-module(aws_bedrock_agent_runtime).

-export([create_invocation/3,
         create_invocation/4,
         create_session/2,
         create_session/3,
         delete_agent_memory/4,
         delete_agent_memory/5,
         delete_session/3,
         delete_session/4,
         end_session/3,
         end_session/4,
         generate_query/2,
         generate_query/3,
         get_agent_memory/5,
         get_agent_memory/7,
         get_agent_memory/8,
         get_invocation_step/4,
         get_invocation_step/5,
         get_session/2,
         get_session/4,
         get_session/5,
         invoke_agent/5,
         invoke_agent/6,
         invoke_flow/4,
         invoke_flow/5,
         invoke_inline_agent/3,
         invoke_inline_agent/4,
         list_invocation_steps/3,
         list_invocation_steps/4,
         list_invocations/3,
         list_invocations/4,
         list_sessions/2,
         list_sessions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         optimize_prompt/2,
         optimize_prompt/3,
         put_invocation_step/3,
         put_invocation_step/4,
         rerank/2,
         rerank/3,
         retrieve/3,
         retrieve/4,
         retrieve_and_generate/2,
         retrieve_and_generate/3,
         retrieve_and_generate_stream/2,
         retrieve_and_generate_stream/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_session/3,
         update_session/4]).

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
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% agent_collaborator_input_payload() :: #{
%%   <<"returnControlResults">> => return_control_results(),
%%   <<"text">> => string(),
%%   <<"type">> => list(any())
%% }
-type agent_collaborator_input_payload() :: #{binary() => any()}.


%% Example:
%% session_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionStatus">> => list(any())
%% }
-type session_summary() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionMetadata">> => map(),
%%   <<"sessionStatus">> => list(any())
%% }
-type get_session_response() :: #{binary() => any()}.


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
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


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
%%   <<"conversationHistory">> => conversation_history(),
%%   <<"files">> => list(input_file()()),
%%   <<"invocationId">> => [string()],
%%   <<"promptSessionAttributes">> => map(),
%%   <<"returnControlInvocationResults">> => list(list()()),
%%   <<"sessionAttributes">> => map()
%% }
-type inline_session_state() :: #{binary() => any()}.


%% Example:
%% list_invocations_response() :: #{
%%   <<"invocationSummaries">> => list(invocation_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_invocations_response() :: #{binary() => any()}.


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
%% flow_multi_turn_input_request_event() :: #{
%%   <<"content">> => list(),
%%   <<"nodeName">> => string(),
%%   <<"nodeType">> => list(any())
%% }
-type flow_multi_turn_input_request_event() :: #{binary() => any()}.


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
%% list_invocation_steps_request() :: #{
%%   <<"invocationIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_invocation_steps_request() :: #{binary() => any()}.


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
%% image_block() :: #{
%%   <<"format">> => list(any()),
%%   <<"source">> => list()
%% }
-type image_block() :: #{binary() => any()}.


%% Example:
%% generate_query_response() :: #{
%%   <<"queries">> => list(generated_query()())
%% }
-type generate_query_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


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
%% get_session_request() :: #{}
-type get_session_request() :: #{}.


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
%% image_input() :: #{
%%   <<"format">> => list(any()),
%%   <<"source">> => list()
%% }
-type image_input() :: #{binary() => any()}.


%% Example:
%% invocation_step() :: #{
%%   <<"invocationId">> => string(),
%%   <<"invocationStepId">> => string(),
%%   <<"invocationStepTime">> => non_neg_integer(),
%%   <<"payload">> => list(),
%%   <<"sessionId">> => string()
%% }
-type invocation_step() :: #{binary() => any()}.


%% Example:
%% invoke_flow_response() :: #{
%%   <<"executionId">> => string(),
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
%%   <<"body">> => [string()],
%%   <<"images">> => list(image_input()())
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
%% create_session_request() :: #{
%%   <<"encryptionKeyArn">> => string(),
%%   <<"sessionMetadata">> => map(),
%%   <<"tags">> => map()
%% }
-type create_session_request() :: #{binary() => any()}.


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
%% list_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionSummaries">> => list(session_summary()())
%% }
-type list_sessions_response() :: #{binary() => any()}.


%% Example:
%% pre_processing_parsed_response() :: #{
%%   <<"isValid">> => [boolean()],
%%   <<"rationale">> => string()
%% }
-type pre_processing_parsed_response() :: #{binary() => any()}.


%% Example:
%% reasoning_text_block() :: #{
%%   <<"signature">> => [string()],
%%   <<"text">> => [string()]
%% }
-type reasoning_text_block() :: #{binary() => any()}.


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
%% list_invocation_steps_response() :: #{
%%   <<"invocationStepSummaries">> => list(invocation_step_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_invocation_steps_response() :: #{binary() => any()}.

%% Example:
%% delete_session_response() :: #{}
-type delete_session_response() :: #{}.


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
%%   <<"reasoningContent">> => list(),
%%   <<"traceId">> => string()
%% }
-type pre_processing_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% update_session_request() :: #{
%%   <<"sessionMetadata">> => map()
%% }
-type update_session_request() :: #{binary() => any()}.


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
%% collaborator_configuration() :: #{
%%   <<"agentAliasArn">> => string(),
%%   <<"collaboratorInstruction">> => string(),
%%   <<"collaboratorName">> => string(),
%%   <<"relayConversationHistory">> => list(any())
%% }
-type collaborator_configuration() :: #{binary() => any()}.


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
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


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
%% get_invocation_step_response() :: #{
%%   <<"invocationStep">> => invocation_step()
%% }
-type get_invocation_step_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sessions_request() :: #{binary() => any()}.


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
%% s3_location() :: #{
%%   <<"uri">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


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
%% create_invocation_request() :: #{
%%   <<"description">> => string(),
%%   <<"invocationId">> => string()
%% }
-type create_invocation_request() :: #{binary() => any()}.


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
%% list_invocations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_invocations_request() :: #{binary() => any()}.


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
%% end_session_response() :: #{
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionStatus">> => list(any())
%% }
-type end_session_response() :: #{binary() => any()}.


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
%%   <<"message">> => string(),
%%   <<"reason">> => [string()]
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
%% get_invocation_step_request() :: #{
%%   <<"invocationIdentifier">> := string()
%% }
-type get_invocation_step_request() :: #{binary() => any()}.


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
%%   <<"eventTime">> => non_neg_integer(),
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
%%   <<"parentActionGroupSignature">> => list(any()),
%%   <<"parentActionGroupSignatureParams">> => map()
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
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% property_parameters() :: #{
%%   <<"properties">> => list(parameter()())
%% }
-type property_parameters() :: #{binary() => any()}.


%% Example:
%% flow_input() :: #{
%%   <<"content">> => list(),
%%   <<"nodeInputName">> => string(),
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
%% put_invocation_step_response() :: #{
%%   <<"invocationStepId">> => string()
%% }
-type put_invocation_step_response() :: #{binary() => any()}.


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
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% collaborator() :: #{
%%   <<"actionGroups">> => list(agent_action_group()()),
%%   <<"agentCollaboration">> => list(any()),
%%   <<"agentName">> => string(),
%%   <<"collaboratorConfigurations">> => list(collaborator_configuration()()),
%%   <<"customerEncryptionKeyArn">> => string(),
%%   <<"foundationModel">> => string(),
%%   <<"guardrailConfiguration">> => guardrail_configuration_with_arn(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"instruction">> => string(),
%%   <<"knowledgeBases">> => list(knowledge_base()()),
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration()
%% }
-type collaborator() :: #{binary() => any()}.


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
%% update_session_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionStatus">> => list(any())
%% }
-type update_session_response() :: #{binary() => any()}.


%% Example:
%% vector_search_bedrock_reranking_model_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"modelArn">> => string()
%% }
-type vector_search_bedrock_reranking_model_configuration() :: #{binary() => any()}.


%% Example:
%% citation_event() :: #{
%%   <<"citation">> => citation(),
%%   <<"generatedResponsePart">> => generated_response_part(),
%%   <<"retrievedReferences">> => list(retrieved_reference()())
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
%%   <<"agentCollaboration">> => list(any()),
%%   <<"bedrockModelConfigurations">> => inline_bedrock_model_configurations(),
%%   <<"collaboratorConfigurations">> => list(collaborator_configuration()()),
%%   <<"collaborators">> => list(collaborator()()),
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
%%   <<"promptOverrideConfiguration">> => prompt_override_configuration(),
%%   <<"streamingConfigurations">> => streaming_configurations()
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
%% invocation_step_summary() :: #{
%%   <<"invocationId">> => string(),
%%   <<"invocationStepId">> => string(),
%%   <<"invocationStepTime">> => non_neg_integer(),
%%   <<"sessionId">> => string()
%% }
-type invocation_step_summary() :: #{binary() => any()}.


%% Example:
%% guardrail_regex_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"name">> => [string()],
%%   <<"regex">> => [string()]
%% }
-type guardrail_regex_filter() :: #{binary() => any()}.


%% Example:
%% put_invocation_step_request() :: #{
%%   <<"invocationIdentifier">> := string(),
%%   <<"invocationStepId">> => string(),
%%   <<"invocationStepTime">> := non_neg_integer(),
%%   <<"payload">> := list()
%% }
-type put_invocation_step_request() :: #{binary() => any()}.


%% Example:
%% retrieval_result_web_location() :: #{
%%   <<"url">> => [string()]
%% }
-type retrieval_result_web_location() :: #{binary() => any()}.

%% Example:
%% end_session_request() :: #{}
-type end_session_request() :: #{}.


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
%% invocation_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"invocationId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type invocation_summary() :: #{binary() => any()}.


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
%%   <<"reasoningContent">> => list(),
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
%% create_session_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionStatus">> => list(any())
%% }
-type create_session_response() :: #{binary() => any()}.

%% Example:
%% delete_session_request() :: #{}
-type delete_session_request() :: #{}.


%% Example:
%% orchestration_model_invocation_output() :: #{
%%   <<"metadata">> => metadata(),
%%   <<"rawResponse">> => raw_response(),
%%   <<"reasoningContent">> => list(),
%%   <<"traceId">> => string()
%% }
-type orchestration_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% invoke_flow_request() :: #{
%%   <<"enableTrace">> => [boolean()],
%%   <<"executionId">> => string(),
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
%% performance_configuration() :: #{
%%   <<"latency">> => list(any())
%% }
-type performance_configuration() :: #{binary() => any()}.


%% Example:
%% create_invocation_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"invocationId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type create_invocation_response() :: #{binary() => any()}.


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

-type create_invocation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

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

-type delete_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type end_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type get_invocation_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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

-type list_invocation_steps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_invocations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_sessions_errors() ::
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

-type optimize_prompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type put_invocation_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type update_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new invocation within a session.
%%
%% An invocation groups the related invocation steps that store the content
%% from
%% a conversation. For more information about sessions, see Store and
%% retrieve conversation history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
%%
%% Related APIs
%%
%% ListInvocations:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html
%%
%% ListSessions:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html
%%
%% GetSession:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html
-spec create_invocation(aws_client:aws_client(), binary() | list(), create_invocation_request()) ->
    {ok, create_invocation_response(), tuple()} |
    {error, any()} |
    {error, create_invocation_errors(), tuple()}.
create_invocation(Client, SessionIdentifier, Input) ->
    create_invocation(Client, SessionIdentifier, Input, []).

-spec create_invocation(aws_client:aws_client(), binary() | list(), create_invocation_request(), proplists:proplist()) ->
    {ok, create_invocation_response(), tuple()} |
    {error, any()} |
    {error, create_invocation_errors(), tuple()}.
create_invocation(Client, SessionIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/invocations/"],
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

%% @doc Creates a session to temporarily store conversations for generative
%% AI (GenAI) applications built with open-source
%% frameworks such as LangGraph and LlamaIndex.
%%
%% Sessions enable you to save the state of
%% conversations at checkpoints, with the added security and infrastructure
%% of Amazon Web Services. For more information, see
%% Store and retrieve conversation history and context with Amazon Bedrock
%% sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
%%
%% By default, Amazon Bedrock uses Amazon Web Services-managed keys for
%% session encryption, including session metadata,
%% or you can use your own KMS key. For more information, see Amazon Bedrock
%% session encryption:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html.
%%
%% You use a session to store state and conversation history for generative
%% AI applications built with open-source frameworks.
%% For Amazon Bedrock Agents, the service automatically manages conversation
%% context and associates them with the agent-specific sessionId you specify
%% in the
%% InvokeAgent:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
%% API operation.
%%
%% Related APIs:
%%
%% ListSessions:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html
%%
%% GetSession:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html
%%
%% EndSession:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html
%%
%% DeleteSession:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_DeleteSession.html
-spec create_session(aws_client:aws_client(), create_session_request()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, Input) ->
    create_session(Client, Input, []).

-spec create_session(aws_client:aws_client(), create_session_request(), proplists:proplist()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, Input0, Options0) ->
    Method = put,
    Path = ["/sessions/"],
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

%% @doc Deletes a session that you ended.
%%
%% You can't delete a session with an `ACTIVE' status. To delete an
%% active session, you must first end it with the
%% EndSession:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html
%% API operation.
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec delete_session(aws_client:aws_client(), binary() | list(), delete_session_request()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, SessionIdentifier, Input) ->
    delete_session(Client, SessionIdentifier, Input, []).

-spec delete_session(aws_client:aws_client(), binary() | list(), delete_session_request(), proplists:proplist()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, SessionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/"],
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

%% @doc Ends the session.
%%
%% After you end a session, you can still access its content but you can’t
%% add to it. To delete the session and it's content, you use the
%% DeleteSession API operation.
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec end_session(aws_client:aws_client(), binary() | list(), end_session_request()) ->
    {ok, end_session_response(), tuple()} |
    {error, any()} |
    {error, end_session_errors(), tuple()}.
end_session(Client, SessionIdentifier, Input) ->
    end_session(Client, SessionIdentifier, Input, []).

-spec end_session(aws_client:aws_client(), binary() | list(), end_session_request(), proplists:proplist()) ->
    {ok, end_session_response(), tuple()} |
    {error, any()} |
    {error, end_session_errors(), tuple()}.
end_session(Client, SessionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), ""],
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

%% @doc Retrieves the details of a specific invocation step within an
%% invocation in a session.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec get_invocation_step(aws_client:aws_client(), binary() | list(), binary() | list(), get_invocation_step_request()) ->
    {ok, get_invocation_step_response(), tuple()} |
    {error, any()} |
    {error, get_invocation_step_errors(), tuple()}.
get_invocation_step(Client, InvocationStepId, SessionIdentifier, Input) ->
    get_invocation_step(Client, InvocationStepId, SessionIdentifier, Input, []).

-spec get_invocation_step(aws_client:aws_client(), binary() | list(), binary() | list(), get_invocation_step_request(), proplists:proplist()) ->
    {ok, get_invocation_step_response(), tuple()} |
    {error, any()} |
    {error, get_invocation_step_errors(), tuple()}.
get_invocation_step(Client, InvocationStepId, SessionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/invocationSteps/", aws_util:encode_uri(InvocationStepId), ""],
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

%% @doc Retrieves details about a specific session.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec get_session(aws_client:aws_client(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionIdentifier)
  when is_map(Client) ->
    get_session(Client, SessionIdentifier, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, SessionIdentifier, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%%
%% Sends a prompt for the agent to process and respond to.
%%
%% Note the following fields for the request:
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
%% The response contains both chunk and trace attributes.
%%
%% The final response is returned in the `bytes' field of the `chunk'
%% object. The `InvokeAgent' returns one chunk for the entire
%% interaction.
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-bedrock-flow-execution-id">>, <<"executionId">>}
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

%% @doc Lists all invocation steps associated with a session and optionally,
%% an invocation within the session.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec list_invocation_steps(aws_client:aws_client(), binary() | list(), list_invocation_steps_request()) ->
    {ok, list_invocation_steps_response(), tuple()} |
    {error, any()} |
    {error, list_invocation_steps_errors(), tuple()}.
list_invocation_steps(Client, SessionIdentifier, Input) ->
    list_invocation_steps(Client, SessionIdentifier, Input, []).

-spec list_invocation_steps(aws_client:aws_client(), binary() | list(), list_invocation_steps_request(), proplists:proplist()) ->
    {ok, list_invocation_steps_response(), tuple()} |
    {error, any()} |
    {error, list_invocation_steps_errors(), tuple()}.
list_invocation_steps(Client, SessionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/invocationSteps/"],
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

%% @doc Lists all invocations associated with a specific session.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec list_invocations(aws_client:aws_client(), binary() | list(), list_invocations_request()) ->
    {ok, list_invocations_response(), tuple()} |
    {error, any()} |
    {error, list_invocations_errors(), tuple()}.
list_invocations(Client, SessionIdentifier, Input) ->
    list_invocations(Client, SessionIdentifier, Input, []).

-spec list_invocations(aws_client:aws_client(), binary() | list(), list_invocations_request(), proplists:proplist()) ->
    {ok, list_invocations_response(), tuple()} |
    {error, any()} |
    {error, list_invocations_errors(), tuple()}.
list_invocations(Client, SessionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/invocations/"],
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

%% @doc Lists all sessions in your Amazon Web Services account.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec list_sessions(aws_client:aws_client(), list_sessions_request()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input) ->
    list_sessions(Client, Input, []).

-spec list_sessions(aws_client:aws_client(), list_sessions_request(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sessions/"],
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

%% @doc Add an invocation step to an invocation in a session.
%%
%% An invocation step stores fine-grained state checkpoints, including text
%% and images, for each interaction. For more information about sessions, see
%% Store and retrieve conversation history and context with Amazon Bedrock
%% sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
%%
%% Related APIs:
%%
%% GetInvocationStep:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html
%%
%% ListInvocationSteps:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocationSteps.html
%%
%% ListInvocations:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html
%%
%% ListSessions:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html
-spec put_invocation_step(aws_client:aws_client(), binary() | list(), put_invocation_step_request()) ->
    {ok, put_invocation_step_response(), tuple()} |
    {error, any()} |
    {error, put_invocation_step_errors(), tuple()}.
put_invocation_step(Client, SessionIdentifier, Input) ->
    put_invocation_step(Client, SessionIdentifier, Input, []).

-spec put_invocation_step(aws_client:aws_client(), binary() | list(), put_invocation_step_request(), proplists:proplist()) ->
    {ok, put_invocation_step_response(), tuple()} |
    {error, any()} |
    {error, put_invocation_step_errors(), tuple()}.
put_invocation_step(Client, SessionIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/invocationSteps/"],
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
%%
%% This operation requires permission for the `
%% bedrock:RetrieveAndGenerate' action.
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

%% @doc Updates the metadata or encryption settings of a session.
%%
%% For more information about sessions, see Store and retrieve conversation
%% history and context with Amazon Bedrock sessions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html.
-spec update_session(aws_client:aws_client(), binary() | list(), update_session_request()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, SessionIdentifier, Input) ->
    update_session(Client, SessionIdentifier, Input, []).

-spec update_session(aws_client:aws_client(), binary() | list(), update_session_request(), proplists:proplist()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, SessionIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/sessions/", aws_util:encode_uri(SessionIdentifier), "/"],
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
