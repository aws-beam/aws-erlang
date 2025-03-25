%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon Q
%% actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Q_Connect.html
%%
%% Amazon Q data
%% types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Q_Connect.html
%%
%% Powered by Amazon Bedrock: Amazon Web Services implements automated abuse
%% detection:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/abuse-detection.html.
%%
%% Because Amazon Q in Connect is built on Amazon Bedrock, users can take
%% full advantage of
%% the controls implemented in Amazon Bedrock to enforce safety, security,
%% and the responsible use of
%% artificial intelligence (AI).
%%
%% Amazon Q in Connect is a generative AI customer service assistant. It is
%% an LLM-enhanced
%% evolution of Amazon Connect Wisdom that delivers real-time recommendations
%% to help contact
%% center agents resolve customer issues quickly and accurately.
%%
%% Amazon Q in Connect automatically detects customer intent during calls and
%% chats using conversational
%% analytics and natural language understanding (NLU). It then provides
%% agents with immediate,
%% real-time generative responses and suggested actions, and links to
%% relevant documents and
%% articles. Agents can also query Amazon Q in Connect directly using natural
%% language or keywords to answer
%% customer requests.
%%
%% Use the Amazon Q in Connect APIs to create an assistant and a knowledge
%% base, for example, or
%% manage content by uploading custom files.
%%
%% For more information, see Use Amazon Q in Connect for generative AI
%% powered agent assistance in real-time:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html
%% in the Amazon Connect
%% Administrator Guide.
-module(aws_qconnect).

-export([activate_message_template/4,
         activate_message_template/5,
         create_a_i_agent/3,
         create_a_i_agent/4,
         create_a_i_agent_version/4,
         create_a_i_agent_version/5,
         create_a_i_guardrail/3,
         create_a_i_guardrail/4,
         create_a_i_guardrail_version/4,
         create_a_i_guardrail_version/5,
         create_a_iprompt/3,
         create_a_iprompt/4,
         create_a_iprompt_version/4,
         create_a_iprompt_version/5,
         create_assistant/2,
         create_assistant/3,
         create_assistant_association/3,
         create_assistant_association/4,
         create_content/3,
         create_content/4,
         create_content_association/4,
         create_content_association/5,
         create_knowledge_base/2,
         create_knowledge_base/3,
         create_message_template/3,
         create_message_template/4,
         create_message_template_attachment/4,
         create_message_template_attachment/5,
         create_message_template_version/4,
         create_message_template_version/5,
         create_quick_response/3,
         create_quick_response/4,
         create_session/3,
         create_session/4,
         deactivate_message_template/4,
         deactivate_message_template/5,
         delete_a_i_agent/4,
         delete_a_i_agent/5,
         delete_a_i_agent_version/5,
         delete_a_i_agent_version/6,
         delete_a_i_guardrail/4,
         delete_a_i_guardrail/5,
         delete_a_i_guardrail_version/5,
         delete_a_i_guardrail_version/6,
         delete_a_iprompt/4,
         delete_a_iprompt/5,
         delete_a_iprompt_version/5,
         delete_a_iprompt_version/6,
         delete_assistant/3,
         delete_assistant/4,
         delete_assistant_association/4,
         delete_assistant_association/5,
         delete_content/4,
         delete_content/5,
         delete_content_association/5,
         delete_content_association/6,
         delete_import_job/4,
         delete_import_job/5,
         delete_knowledge_base/3,
         delete_knowledge_base/4,
         delete_message_template/4,
         delete_message_template/5,
         delete_message_template_attachment/5,
         delete_message_template_attachment/6,
         delete_quick_response/4,
         delete_quick_response/5,
         get_a_i_agent/3,
         get_a_i_agent/5,
         get_a_i_agent/6,
         get_a_i_guardrail/3,
         get_a_i_guardrail/5,
         get_a_i_guardrail/6,
         get_a_iprompt/3,
         get_a_iprompt/5,
         get_a_iprompt/6,
         get_assistant/2,
         get_assistant/4,
         get_assistant/5,
         get_assistant_association/3,
         get_assistant_association/5,
         get_assistant_association/6,
         get_content/3,
         get_content/5,
         get_content/6,
         get_content_association/4,
         get_content_association/6,
         get_content_association/7,
         get_content_summary/3,
         get_content_summary/5,
         get_content_summary/6,
         get_import_job/3,
         get_import_job/5,
         get_import_job/6,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         get_message_template/3,
         get_message_template/5,
         get_message_template/6,
         get_next_message/4,
         get_next_message/6,
         get_next_message/7,
         get_quick_response/3,
         get_quick_response/5,
         get_quick_response/6,
         get_recommendations/3,
         get_recommendations/5,
         get_recommendations/6,
         get_session/3,
         get_session/5,
         get_session/6,
         list_a_i_agent_versions/3,
         list_a_i_agent_versions/5,
         list_a_i_agent_versions/6,
         list_a_i_agents/2,
         list_a_i_agents/4,
         list_a_i_agents/5,
         list_a_i_guardrail_versions/3,
         list_a_i_guardrail_versions/5,
         list_a_i_guardrail_versions/6,
         list_a_i_guardrails/2,
         list_a_i_guardrails/4,
         list_a_i_guardrails/5,
         list_a_iprompt_versions/3,
         list_a_iprompt_versions/5,
         list_a_iprompt_versions/6,
         list_a_iprompts/2,
         list_a_iprompts/4,
         list_a_iprompts/5,
         list_assistant_associations/2,
         list_assistant_associations/4,
         list_assistant_associations/5,
         list_assistants/1,
         list_assistants/3,
         list_assistants/4,
         list_content_associations/3,
         list_content_associations/5,
         list_content_associations/6,
         list_contents/2,
         list_contents/4,
         list_contents/5,
         list_import_jobs/2,
         list_import_jobs/4,
         list_import_jobs/5,
         list_knowledge_bases/1,
         list_knowledge_bases/3,
         list_knowledge_bases/4,
         list_message_template_versions/3,
         list_message_template_versions/5,
         list_message_template_versions/6,
         list_message_templates/2,
         list_message_templates/4,
         list_message_templates/5,
         list_messages/3,
         list_messages/5,
         list_messages/6,
         list_quick_responses/2,
         list_quick_responses/4,
         list_quick_responses/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         notify_recommendations_received/4,
         notify_recommendations_received/5,
         put_feedback/3,
         put_feedback/4,
         query_assistant/3,
         query_assistant/4,
         remove_assistant_a_i_agent/3,
         remove_assistant_a_i_agent/4,
         remove_knowledge_base_template_uri/3,
         remove_knowledge_base_template_uri/4,
         render_message_template/4,
         render_message_template/5,
         search_content/3,
         search_content/4,
         search_message_templates/3,
         search_message_templates/4,
         search_quick_responses/3,
         search_quick_responses/4,
         search_sessions/3,
         search_sessions/4,
         send_message/4,
         send_message/5,
         start_content_upload/3,
         start_content_upload/4,
         start_import_job/3,
         start_import_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_a_i_agent/4,
         update_a_i_agent/5,
         update_a_i_guardrail/4,
         update_a_i_guardrail/5,
         update_a_iprompt/4,
         update_a_iprompt/5,
         update_assistant_a_i_agent/3,
         update_assistant_a_i_agent/4,
         update_content/4,
         update_content/5,
         update_knowledge_base_template_uri/3,
         update_knowledge_base_template_uri/4,
         update_message_template/4,
         update_message_template/5,
         update_message_template_metadata/4,
         update_message_template_metadata/5,
         update_quick_response/4,
         update_quick_response/5,
         update_session/4,
         update_session/5,
         update_session_data/4,
         update_session_data/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% start_content_upload_response() :: #{
%%   <<"headersToInclude">> := map(),
%%   <<"uploadId">> := string(),
%%   <<"url">> := string(),
%%   <<"urlExpiry">> := [non_neg_integer()]
%% }
-type start_content_upload_response() :: #{binary() => any()}.


%% Example:
%% list_message_template_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_message_template_versions_request() :: #{binary() => any()}.

%% Example:
%% get_a_i_guardrail_request() :: #{}
-type get_a_i_guardrail_request() :: #{}.


%% Example:
%% update_knowledge_base_template_uri_request() :: #{
%%   <<"templateUri">> := string()
%% }
-type update_knowledge_base_template_uri_request() :: #{binary() => any()}.


%% Example:
%% put_feedback_request() :: #{
%%   <<"contentFeedback">> := list(),
%%   <<"targetId">> := string(),
%%   <<"targetType">> := string()
%% }
-type put_feedback_request() :: #{binary() => any()}.

%% Example:
%% delete_a_i_agent_version_response() :: #{}
-type delete_a_i_agent_version_response() :: #{}.


%% Example:
%% query_assistant_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> := list(result_data()())
%% }
-type query_assistant_response() :: #{binary() => any()}.


%% Example:
%% list_a_i_agents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"origin">> => string()
%% }
-type list_a_i_agents_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% message_template_order_field() :: #{
%%   <<"name">> => string(),
%%   <<"order">> => string()
%% }
-type message_template_order_field() :: #{binary() => any()}.

%% Example:
%% delete_message_template_attachment_response() :: #{}
-type delete_message_template_attachment_response() :: #{}.


%% Example:
%% session_summary() :: #{
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string()
%% }
-type session_summary() :: #{binary() => any()}.


%% Example:
%% create_quick_response_response() :: #{
%%   <<"quickResponse">> => quick_response_data()
%% }
-type create_quick_response_response() :: #{binary() => any()}.


%% Example:
%% a_i_agent_version_summary() :: #{
%%   <<"aiAgentSummary">> => a_i_agent_summary(),
%%   <<"versionNumber">> => float()
%% }
-type a_i_agent_version_summary() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"session">> => session_data()
%% }
-type get_session_response() :: #{binary() => any()}.


%% Example:
%% list_a_i_agent_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"origin">> => string()
%% }
-type list_a_i_agent_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_a_i_guardrail_version_response() :: #{}
-type delete_a_i_guardrail_version_response() :: #{}.


%% Example:
%% remove_assistant_a_i_agent_request() :: #{
%%   <<"aiAgentType">> := string()
%% }
-type remove_assistant_a_i_agent_request() :: #{binary() => any()}.


%% Example:
%% data_summary() :: #{
%%   <<"details">> => list(),
%%   <<"reference">> => list()
%% }
-type data_summary() :: #{binary() => any()}.


%% Example:
%% search_quick_responses_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchExpression">> := quick_response_search_expression()
%% }
-type search_quick_responses_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% quick_response_search_expression() :: #{
%%   <<"filters">> => list(quick_response_filter_field()()),
%%   <<"orderOnField">> => quick_response_order_field(),
%%   <<"queries">> => list(quick_response_query_field()())
%% }
-type quick_response_search_expression() :: #{binary() => any()}.

%% Example:
%% get_content_association_request() :: #{}
-type get_content_association_request() :: #{}.


%% Example:
%% deactivate_message_template_response() :: #{
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"versionNumber">> => float()
%% }
-type deactivate_message_template_response() :: #{binary() => any()}.


%% Example:
%% fixed_size_chunking_configuration() :: #{
%%   <<"maxTokens">> => [integer()],
%%   <<"overlapPercentage">> => [integer()]
%% }
-type fixed_size_chunking_configuration() :: #{binary() => any()}.


%% Example:
%% highlight() :: #{
%%   <<"beginOffsetInclusive">> => integer(),
%%   <<"endOffsetExclusive">> => integer()
%% }
-type highlight() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_config() :: #{
%%   <<"definition">> => string(),
%%   <<"examples">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type guardrail_topic_config() :: #{binary() => any()}.


%% Example:
%% app_integrations_configuration() :: #{
%%   <<"appIntegrationArn">> => string(),
%%   <<"objectFields">> => list(string()())
%% }
-type app_integrations_configuration() :: #{binary() => any()}.


%% Example:
%% create_a_i_agent_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> := string(),
%%   <<"visibilityStatus">> := string()
%% }
-type create_a_i_agent_request() :: #{binary() => any()}.


%% Example:
%% list_a_i_agent_versions_response() :: #{
%%   <<"aiAgentVersionSummaries">> => list(a_i_agent_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_agent_versions_response() :: #{binary() => any()}.


%% Example:
%% create_a_i_agent_response() :: #{
%%   <<"aiAgent">> => a_i_agent_data()
%% }
-type create_a_i_agent_response() :: #{binary() => any()}.


%% Example:
%% create_a_iprompt_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()]
%% }
-type create_a_iprompt_version_request() :: #{binary() => any()}.


%% Example:
%% get_a_i_agent_response() :: #{
%%   <<"aiAgent">> => a_i_agent_data(),
%%   <<"versionNumber">> => float()
%% }
-type get_a_i_agent_response() :: #{binary() => any()}.


%% Example:
%% list_contents_response() :: #{
%%   <<"contentSummaries">> := list(content_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_contents_response() :: #{binary() => any()}.


%% Example:
%% query_text_input_data() :: #{
%%   <<"text">> => string()
%% }
-type query_text_input_data() :: #{binary() => any()}.


%% Example:
%% quick_response_filter_field() :: #{
%%   <<"includeNoExistence">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"values">> => list(string()())
%% }
-type quick_response_filter_field() :: #{binary() => any()}.


%% Example:
%% list_messages_response() :: #{
%%   <<"messages">> => list(message_output()()),
%%   <<"nextToken">> => string()
%% }
-type list_messages_response() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_filter_config() :: #{
%%   <<"threshold">> => float(),
%%   <<"type">> => string()
%% }
-type guardrail_contextual_grounding_filter_config() :: #{binary() => any()}.


%% Example:
%% tag_condition() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_condition() :: #{binary() => any()}.


%% Example:
%% get_next_message_response() :: #{
%%   <<"conversationSessionData">> => list(runtime_session_data()()),
%%   <<"conversationState">> => conversation_state(),
%%   <<"nextMessageToken">> => string(),
%%   <<"requestMessageId">> => string(),
%%   <<"response">> => message_output(),
%%   <<"type">> => string()
%% }
-type get_next_message_response() :: #{binary() => any()}.


%% Example:
%% content_association_data() :: #{
%%   <<"associationData">> => list(),
%%   <<"associationType">> => string(),
%%   <<"contentArn">> => string(),
%%   <<"contentAssociationArn">> => string(),
%%   <<"contentAssociationId">> => string(),
%%   <<"contentId">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"tags">> => map()
%% }
-type content_association_data() :: #{binary() => any()}.


%% Example:
%% list_a_i_guardrail_versions_response() :: #{
%%   <<"aiGuardrailVersionSummaries">> => list(a_i_guardrail_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_guardrail_versions_response() :: #{binary() => any()}.


%% Example:
%% activate_message_template_request() :: #{
%%   <<"versionNumber">> := float()
%% }
-type activate_message_template_request() :: #{binary() => any()}.


%% Example:
%% external_source_configuration() :: #{
%%   <<"configuration">> => list(),
%%   <<"source">> => string()
%% }
-type external_source_configuration() :: #{binary() => any()}.


%% Example:
%% agent_attributes() :: #{
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string()
%% }
-type agent_attributes() :: #{binary() => any()}.


%% Example:
%% create_content_association_response() :: #{
%%   <<"contentAssociation">> => content_association_data()
%% }
-type create_content_association_response() :: #{binary() => any()}.


%% Example:
%% a_iprompt_version_summary() :: #{
%%   <<"aiPromptSummary">> => a_iprompt_summary(),
%%   <<"versionNumber">> => float()
%% }
-type a_iprompt_version_summary() :: #{binary() => any()}.


%% Example:
%% recommendation_data() :: #{
%%   <<"data">> => data_summary(),
%%   <<"document">> => document(),
%%   <<"recommendationId">> => string(),
%%   <<"relevanceLevel">> => string(),
%%   <<"relevanceScore">> => float(),
%%   <<"type">> => string()
%% }
-type recommendation_data() :: #{binary() => any()}.


%% Example:
%% list_contents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_contents_request() :: #{binary() => any()}.

%% Example:
%% remove_knowledge_base_template_uri_response() :: #{}
-type remove_knowledge_base_template_uri_response() :: #{}.

%% Example:
%% delete_a_i_agent_version_request() :: #{}
-type delete_a_i_agent_version_request() :: #{}.

%% Example:
%% delete_assistant_association_request() :: #{}
-type delete_assistant_association_request() :: #{}.


%% Example:
%% conversation_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => string()
%% }
-type conversation_state() :: #{binary() => any()}.


%% Example:
%% get_content_summary_response() :: #{
%%   <<"contentSummary">> => content_summary()
%% }
-type get_content_summary_response() :: #{binary() => any()}.


%% Example:
%% assistant_integration_configuration() :: #{
%%   <<"topicIntegrationArn">> => string()
%% }
-type assistant_integration_configuration() :: #{binary() => any()}.


%% Example:
%% intent_detected_data_details() :: #{
%%   <<"intent">> => string(),
%%   <<"intentId">> => string()
%% }
-type intent_detected_data_details() :: #{binary() => any()}.


%% Example:
%% text_data() :: #{
%%   <<"excerpt">> => document_text(),
%%   <<"title">> => document_text()
%% }
-type text_data() :: #{binary() => any()}.

%% Example:
%% delete_knowledge_base_response() :: #{}
-type delete_knowledge_base_response() :: #{}.


%% Example:
%% create_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type create_content_response() :: #{binary() => any()}.


%% Example:
%% list_a_iprompts_response() :: #{
%%   <<"aiPromptSummaries">> => list(a_iprompt_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_iprompts_response() :: #{binary() => any()}.


%% Example:
%% get_assistant_response() :: #{
%%   <<"assistant">> => assistant_data()
%% }
-type get_assistant_response() :: #{binary() => any()}.


%% Example:
%% get_recommendations_response() :: #{
%%   <<"recommendations">> := list(recommendation_data()()),
%%   <<"triggers">> => list(recommendation_trigger()())
%% }
-type get_recommendations_response() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% update_a_i_guardrail_request() :: #{
%%   <<"blockedInputMessaging">> := string(),
%%   <<"blockedOutputsMessaging">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"contentPolicyConfig">> => a_i_guardrail_content_policy_config(),
%%   <<"contextualGroundingPolicyConfig">> => a_i_guardrail_contextual_grounding_policy_config(),
%%   <<"description">> => string(),
%%   <<"sensitiveInformationPolicyConfig">> => a_i_guardrail_sensitive_information_policy_config(),
%%   <<"topicPolicyConfig">> => a_i_guardrail_topic_policy_config(),
%%   <<"visibilityStatus">> := string(),
%%   <<"wordPolicyConfig">> => a_i_guardrail_word_policy_config()
%% }
-type update_a_i_guardrail_request() :: #{binary() => any()}.


%% Example:
%% list_a_iprompts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"origin">> => string()
%% }
-type list_a_iprompts_request() :: #{binary() => any()}.


%% Example:
%% update_a_iprompt_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"templateConfiguration">> => list(),
%%   <<"visibilityStatus">> := string()
%% }
-type update_a_iprompt_request() :: #{binary() => any()}.


%% Example:
%% message_template_attributes() :: #{
%%   <<"agentAttributes">> => agent_attributes(),
%%   <<"customAttributes">> => map(),
%%   <<"customerProfileAttributes">> => customer_profile_attributes(),
%%   <<"systemAttributes">> => system_attributes()
%% }
-type message_template_attributes() :: #{binary() => any()}.


%% Example:
%% put_feedback_response() :: #{
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"contentFeedback">> => list(),
%%   <<"targetId">> => string(),
%%   <<"targetType">> => string()
%% }
-type put_feedback_response() :: #{binary() => any()}.


%% Example:
%% start_import_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"externalSourceConfiguration">> => external_source_configuration(),
%%   <<"importJobType">> := string(),
%%   <<"metadata">> => map(),
%%   <<"uploadId">> := string()
%% }
-type start_import_job_request() :: #{binary() => any()}.


%% Example:
%% create_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base_data()
%% }
-type create_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% parsing_configuration() :: #{
%%   <<"bedrockFoundationModelConfiguration">> => bedrock_foundation_model_configuration_for_parsing(),
%%   <<"parsingStrategy">> => string()
%% }
-type parsing_configuration() :: #{binary() => any()}.


%% Example:
%% get_assistant_association_response() :: #{
%%   <<"assistantAssociation">> => assistant_association_data()
%% }
-type get_assistant_association_response() :: #{binary() => any()}.


%% Example:
%% create_quick_response_request() :: #{
%%   <<"channels">> => list(string()()),
%%   <<"clientToken">> => string(),
%%   <<"content">> := list(),
%%   <<"contentType">> => string(),
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"language">> => string(),
%%   <<"name">> := string(),
%%   <<"shortcutKey">> => string(),
%%   <<"tags">> => map()
%% }
-type create_quick_response_request() :: #{binary() => any()}.

%% Example:
%% delete_a_i_guardrail_response() :: #{}
-type delete_a_i_guardrail_response() :: #{}.

%% Example:
%% delete_a_i_guardrail_request() :: #{}
-type delete_a_i_guardrail_request() :: #{}.


%% Example:
%% create_a_i_agent_version_response() :: #{
%%   <<"aiAgent">> => a_i_agent_data(),
%%   <<"versionNumber">> => float()
%% }
-type create_a_i_agent_version_response() :: #{binary() => any()}.


%% Example:
%% content_association_summary() :: #{
%%   <<"associationData">> => list(),
%%   <<"associationType">> => string(),
%%   <<"contentArn">> => string(),
%%   <<"contentAssociationArn">> => string(),
%%   <<"contentAssociationId">> => string(),
%%   <<"contentId">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"tags">> => map()
%% }
-type content_association_summary() :: #{binary() => any()}.


%% Example:
%% connect_configuration() :: #{
%%   <<"instanceId">> => string()
%% }
-type connect_configuration() :: #{binary() => any()}.

%% Example:
%% delete_a_iprompt_response() :: #{}
-type delete_a_iprompt_response() :: #{}.


%% Example:
%% search_content_response() :: #{
%%   <<"contentSummaries">> := list(content_summary()()),
%%   <<"nextToken">> => string()
%% }
-type search_content_response() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.

%% Example:
%% delete_a_i_agent_request() :: #{}
-type delete_a_i_agent_request() :: #{}.


%% Example:
%% message_template_filter_field() :: #{
%%   <<"includeNoExistence">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"values">> => list(string()())
%% }
-type message_template_filter_field() :: #{binary() => any()}.


%% Example:
%% create_message_template_attachment_request() :: #{
%%   <<"body">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"contentDisposition">> := string(),
%%   <<"name">> := string()
%% }
-type create_message_template_attachment_request() :: #{binary() => any()}.


%% Example:
%% assistant_capability_configuration() :: #{
%%   <<"type">> => string()
%% }
-type assistant_capability_configuration() :: #{binary() => any()}.


%% Example:
%% a_i_agent_configuration_data() :: #{
%%   <<"aiAgentId">> => string()
%% }
-type a_i_agent_configuration_data() :: #{binary() => any()}.


%% Example:
%% get_a_i_guardrail_response() :: #{
%%   <<"aiGuardrail">> => a_i_guardrail_data(),
%%   <<"versionNumber">> => float()
%% }
-type get_a_i_guardrail_response() :: #{binary() => any()}.


%% Example:
%% list_a_i_agents_response() :: #{
%%   <<"aiAgentSummaries">> => list(a_i_agent_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_agents_response() :: #{binary() => any()}.


%% Example:
%% message_template_search_expression() :: #{
%%   <<"filters">> => list(message_template_filter_field()()),
%%   <<"orderOnField">> => message_template_order_field(),
%%   <<"queries">> => list(message_template_query_field()())
%% }
-type message_template_search_expression() :: #{binary() => any()}.


%% Example:
%% list_quick_responses_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_quick_responses_request() :: #{binary() => any()}.


%% Example:
%% system_endpoint_attributes() :: #{
%%   <<"address">> => string()
%% }
-type system_endpoint_attributes() :: #{binary() => any()}.


%% Example:
%% generative_reference() :: #{
%%   <<"generationId">> => string(),
%%   <<"modelId">> => string()
%% }
-type generative_reference() :: #{binary() => any()}.


%% Example:
%% start_content_upload_request() :: #{
%%   <<"contentType">> := string(),
%%   <<"presignedUrlTimeToLive">> => integer()
%% }
-type start_content_upload_request() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_words_config() :: #{
%%   <<"type">> => string()
%% }
-type guardrail_managed_words_config() :: #{binary() => any()}.

%% Example:
%% delete_message_template_response() :: #{}
-type delete_message_template_response() :: #{}.


%% Example:
%% create_message_template_request() :: #{
%%   <<"channelSubtype">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"content">> := list(),
%%   <<"defaultAttributes">> => message_template_attributes(),
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"language">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_message_template_request() :: #{binary() => any()}.

%% Example:
%% delete_assistant_request() :: #{}
-type delete_assistant_request() :: #{}.


%% Example:
%% list_a_iprompt_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"origin">> => string()
%% }
-type list_a_iprompt_versions_request() :: #{binary() => any()}.


%% Example:
%% self_service_a_i_agent_configuration() :: #{
%%   <<"associationConfigurations">> => list(association_configuration()()),
%%   <<"selfServiceAIGuardrailId">> => string(),
%%   <<"selfServiceAnswerGenerationAIPromptId">> => string(),
%%   <<"selfServicePreProcessingAIPromptId">> => string()
%% }
-type self_service_a_i_agent_configuration() :: #{binary() => any()}.


%% Example:
%% list_content_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_content_associations_request() :: #{binary() => any()}.


%% Example:
%% association_configuration() :: #{
%%   <<"associationConfigurationData">> => list(),
%%   <<"associationId">> => string(),
%%   <<"associationType">> => string()
%% }
-type association_configuration() :: #{binary() => any()}.


%% Example:
%% hierarchical_chunking_configuration() :: #{
%%   <<"levelConfigurations">> => list(hierarchical_chunking_level_configuration()()),
%%   <<"overlapTokens">> => [integer()]
%% }
-type hierarchical_chunking_configuration() :: #{binary() => any()}.


%% Example:
%% create_session_request() :: #{
%%   <<"aiAgentConfiguration">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tagFilter">> => list(),
%%   <<"tags">> => map()
%% }
-type create_session_request() :: #{binary() => any()}.


%% Example:
%% customer_profile_attributes() :: #{
%%   <<"shippingCounty">> => string(),
%%   <<"accountNumber">> => string(),
%%   <<"shippingCity">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"additionalInformation">> => string(),
%%   <<"firstName">> => string(),
%%   <<"businessEmailAddress">> => string(),
%%   <<"billingState">> => string(),
%%   <<"birthDate">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"address3">> => string(),
%%   <<"businessPhoneNumber">> => string(),
%%   <<"mailingAddress1">> => string(),
%%   <<"mailingCountry">> => string(),
%%   <<"mailingAddress3">> => string(),
%%   <<"shippingState">> => string(),
%%   <<"billingCountry">> => string(),
%%   <<"shippingAddress2">> => string(),
%%   <<"billingPostalCode">> => string(),
%%   <<"shippingAddress3">> => string(),
%%   <<"state">> => string(),
%%   <<"country">> => string(),
%%   <<"homePhoneNumber">> => string(),
%%   <<"address1">> => string(),
%%   <<"mailingState">> => string(),
%%   <<"city">> => string(),
%%   <<"businessName">> => string(),
%%   <<"county">> => string(),
%%   <<"mailingPostalCode">> => string(),
%%   <<"billingCounty">> => string(),
%%   <<"partyType">> => string(),
%%   <<"shippingPostalCode">> => string(),
%%   <<"mailingCity">> => string(),
%%   <<"custom">> => map(),
%%   <<"shippingAddress4">> => string(),
%%   <<"lastName">> => string(),
%%   <<"gender">> => string(),
%%   <<"mailingCounty">> => string(),
%%   <<"billingProvince">> => string(),
%%   <<"mailingAddress2">> => string(),
%%   <<"shippingAddress1">> => string(),
%%   <<"mailingAddress4">> => string(),
%%   <<"mailingProvince">> => string(),
%%   <<"shippingProvince">> => string(),
%%   <<"phoneNumber">> => string(),
%%   <<"billingAddress4">> => string(),
%%   <<"mobilePhoneNumber">> => string(),
%%   <<"address4">> => string(),
%%   <<"address2">> => string(),
%%   <<"billingAddress3">> => string(),
%%   <<"profileId">> => string(),
%%   <<"profileARN">> => string(),
%%   <<"billingCity">> => string(),
%%   <<"billingAddress2">> => string(),
%%   <<"billingAddress1">> => string(),
%%   <<"shippingCountry">> => string(),
%%   <<"province">> => string(),
%%   <<"middleName">> => string()
%% }
-type customer_profile_attributes() :: #{binary() => any()}.


%% Example:
%% update_knowledge_base_template_uri_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base_data()
%% }
-type update_knowledge_base_template_uri_response() :: #{binary() => any()}.

%% Example:
%% delete_a_i_guardrail_version_request() :: #{}
-type delete_a_i_guardrail_version_request() :: #{}.


%% Example:
%% a_iprompt_data() :: #{
%%   <<"aiPromptArn">> => string(),
%%   <<"aiPromptId">> => string(),
%%   <<"apiFormat">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"description">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"origin">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"templateConfiguration">> => list(),
%%   <<"templateType">> => string(),
%%   <<"type">> => string(),
%%   <<"visibilityStatus">> => string()
%% }
-type a_iprompt_data() :: #{binary() => any()}.


%% Example:
%% update_a_i_guardrail_response() :: #{
%%   <<"aiGuardrail">> => a_i_guardrail_data()
%% }
-type update_a_i_guardrail_response() :: #{binary() => any()}.

%% Example:
%% delete_a_iprompt_version_response() :: #{}
-type delete_a_iprompt_version_response() :: #{}.

%% Example:
%% get_a_i_agent_request() :: #{}
-type get_a_i_agent_request() :: #{}.


%% Example:
%% create_message_template_attachment_response() :: #{
%%   <<"attachment">> => message_template_attachment()
%% }
-type create_message_template_attachment_response() :: #{binary() => any()}.


%% Example:
%% create_knowledge_base_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"knowledgeBaseType">> := string(),
%%   <<"name">> := string(),
%%   <<"renderingConfiguration">> => rendering_configuration(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"sourceConfiguration">> => list(),
%%   <<"tags">> => map(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type create_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% message_input() :: #{
%%   <<"value">> => list()
%% }
-type message_input() :: #{binary() => any()}.


%% Example:
%% list_import_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_message_template_versions_response() :: #{
%%   <<"messageTemplateVersionSummaries">> => list(message_template_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_message_template_versions_response() :: #{binary() => any()}.


%% Example:
%% knowledge_base_summary() :: #{
%%   <<"description">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseType">> => string(),
%%   <<"name">> => string(),
%%   <<"renderingConfiguration">> => rendering_configuration(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"sourceConfiguration">> => list(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type knowledge_base_summary() :: #{binary() => any()}.


%% Example:
%% create_a_iprompt_response() :: #{
%%   <<"aiPrompt">> => a_iprompt_data()
%% }
-type create_a_iprompt_response() :: #{binary() => any()}.


%% Example:
%% list_quick_responses_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"quickResponseSummaries">> => list(quick_response_summary()())
%% }
-type list_quick_responses_response() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_request() :: #{binary() => any()}.


%% Example:
%% create_content_association_request() :: #{
%%   <<"association">> := list(),
%%   <<"associationType">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_content_association_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% remove_assistant_a_i_agent_response() :: #{}
-type remove_assistant_a_i_agent_response() :: #{}.


%% Example:
%% import_job_data() :: #{
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"externalSourceConfiguration">> => external_source_configuration(),
%%   <<"failedRecordReport">> => string(),
%%   <<"importJobId">> => string(),
%%   <<"importJobType">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"metadata">> => map(),
%%   <<"status">> => string(),
%%   <<"uploadId">> => string(),
%%   <<"url">> => string(),
%%   <<"urlExpiry">> => [non_neg_integer()]
%% }
-type import_job_data() :: #{binary() => any()}.


%% Example:
%% knowledge_base_data() :: #{
%%   <<"description">> => string(),
%%   <<"ingestionFailureReasons">> => list(string()()),
%%   <<"ingestionStatus">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseType">> => string(),
%%   <<"lastContentModificationTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"renderingConfiguration">> => rendering_configuration(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"sourceConfiguration">> => list(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"vectorIngestionConfiguration">> => vector_ingestion_configuration()
%% }
-type knowledge_base_data() :: #{binary() => any()}.


%% Example:
%% assistant_association_data() :: #{
%%   <<"assistantArn">> => string(),
%%   <<"assistantAssociationArn">> => string(),
%%   <<"assistantAssociationId">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"associationData">> => list(),
%%   <<"associationType">> => string(),
%%   <<"tags">> => map()
%% }
-type assistant_association_data() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filter_config() :: #{
%%   <<"inputStrength">> => string(),
%%   <<"outputStrength">> => string(),
%%   <<"type">> => string()
%% }
-type guardrail_content_filter_config() :: #{binary() => any()}.


%% Example:
%% document_text() :: #{
%%   <<"highlights">> => list(highlight()()),
%%   <<"text">> => string()
%% }
-type document_text() :: #{binary() => any()}.

%% Example:
%% get_assistant_request() :: #{}
-type get_assistant_request() :: #{}.

%% Example:
%% delete_assistant_response() :: #{}
-type delete_assistant_response() :: #{}.


%% Example:
%% message_template_query_field() :: #{
%%   <<"allowFuzziness">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"priority">> => string(),
%%   <<"values">> => list(string()())
%% }
-type message_template_query_field() :: #{binary() => any()}.


%% Example:
%% deactivate_message_template_request() :: #{
%%   <<"versionNumber">> := float()
%% }
-type deactivate_message_template_request() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_data() :: #{
%%   <<"aiGuardrailArn">> => string(),
%%   <<"aiGuardrailId">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"blockedInputMessaging">> => string(),
%%   <<"blockedOutputsMessaging">> => string(),
%%   <<"contentPolicyConfig">> => a_i_guardrail_content_policy_config(),
%%   <<"contextualGroundingPolicyConfig">> => a_i_guardrail_contextual_grounding_policy_config(),
%%   <<"description">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"sensitiveInformationPolicyConfig">> => a_i_guardrail_sensitive_information_policy_config(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"topicPolicyConfig">> => a_i_guardrail_topic_policy_config(),
%%   <<"visibilityStatus">> => string(),
%%   <<"wordPolicyConfig">> => a_i_guardrail_word_policy_config()
%% }
-type a_i_guardrail_data() :: #{binary() => any()}.


%% Example:
%% update_message_template_request() :: #{
%%   <<"content">> => list(),
%%   <<"defaultAttributes">> => message_template_attributes(),
%%   <<"language">> => string()
%% }
-type update_message_template_request() :: #{binary() => any()}.


%% Example:
%% extended_message_template_data() :: #{
%%   <<"attachments">> => list(message_template_attachment()()),
%%   <<"attributeTypes">> => list(string()()),
%%   <<"channelSubtype">> => string(),
%%   <<"content">> => list(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"defaultAttributes">> => message_template_attributes(),
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"language">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateContentSha256">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"versionNumber">> => float()
%% }
-type extended_message_template_data() :: #{binary() => any()}.


%% Example:
%% update_message_template_metadata_request() :: #{
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"name">> => string()
%% }
-type update_message_template_metadata_request() :: #{binary() => any()}.


%% Example:
%% quick_response_contents() :: #{
%%   <<"markdown">> => list(),
%%   <<"plainText">> => list()
%% }
-type quick_response_contents() :: #{binary() => any()}.


%% Example:
%% text_message() :: #{
%%   <<"value">> => string()
%% }
-type text_message() :: #{binary() => any()}.


%% Example:
%% seed_url() :: #{
%%   <<"url">> => string()
%% }
-type seed_url() :: #{binary() => any()}.


%% Example:
%% amazon_connect_guide_association_data() :: #{
%%   <<"flowId">> => string()
%% }
-type amazon_connect_guide_association_data() :: #{binary() => any()}.


%% Example:
%% create_message_template_response() :: #{
%%   <<"messageTemplate">> => message_template_data()
%% }
-type create_message_template_response() :: #{binary() => any()}.


%% Example:
%% create_a_i_guardrail_version_response() :: #{
%%   <<"aiGuardrail">> => a_i_guardrail_data(),
%%   <<"versionNumber">> => float()
%% }
-type create_a_i_guardrail_version_response() :: #{binary() => any()}.


%% Example:
%% create_a_i_guardrail_response() :: #{
%%   <<"aiGuardrail">> => a_i_guardrail_data()
%% }
-type create_a_i_guardrail_response() :: #{binary() => any()}.

%% Example:
%% delete_import_job_request() :: #{}
-type delete_import_job_request() :: #{}.


%% Example:
%% url_configuration() :: #{
%%   <<"seedUrls">> => list(seed_url()())
%% }
-type url_configuration() :: #{binary() => any()}.


%% Example:
%% assistant_data() :: #{
%%   <<"aiAgentConfiguration">> => map(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"capabilityConfiguration">> => assistant_capability_configuration(),
%%   <<"description">> => string(),
%%   <<"integrationConfiguration">> => assistant_integration_configuration(),
%%   <<"name">> => string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type assistant_data() :: #{binary() => any()}.


%% Example:
%% conversation_context() :: #{
%%   <<"selfServiceConversationHistory">> => list(self_service_conversation_history()())
%% }
-type conversation_context() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% web_crawler_limits() :: #{
%%   <<"rateLimit">> => [integer()]
%% }
-type web_crawler_limits() :: #{binary() => any()}.


%% Example:
%% create_assistant_response() :: #{
%%   <<"assistant">> => assistant_data()
%% }
-type create_assistant_response() :: #{binary() => any()}.


%% Example:
%% quick_response_summary() :: #{
%%   <<"channels">> => list(string()()),
%%   <<"contentType">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"quickResponseArn">> => string(),
%%   <<"quickResponseId">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type quick_response_summary() :: #{binary() => any()}.


%% Example:
%% get_quick_response_response() :: #{
%%   <<"quickResponse">> => quick_response_data()
%% }
-type get_quick_response_response() :: #{binary() => any()}.

%% Example:
%% get_import_job_request() :: #{}
-type get_import_job_request() :: #{}.


%% Example:
%% create_assistant_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"tags">> => map(),
%%   <<"type">> := string()
%% }
-type create_assistant_request() :: #{binary() => any()}.


%% Example:
%% get_recommendations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"waitTimeSeconds">> => integer()
%% }
-type get_recommendations_request() :: #{binary() => any()}.


%% Example:
%% query_recommendation_trigger_data() :: #{
%%   <<"text">> => string()
%% }
-type query_recommendation_trigger_data() :: #{binary() => any()}.


%% Example:
%% sms_message_template_content_body() :: #{
%%   <<"plainText">> => list()
%% }
-type sms_message_template_content_body() :: #{binary() => any()}.


%% Example:
%% message_output() :: #{
%%   <<"messageId">> => string(),
%%   <<"participant">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"value">> => list()
%% }
-type message_output() :: #{binary() => any()}.


%% Example:
%% search_message_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchExpression">> := message_template_search_expression()
%% }
-type search_message_templates_request() :: #{binary() => any()}.


%% Example:
%% a_i_agent_summary() :: #{
%%   <<"aiAgentArn">> => string(),
%%   <<"aiAgentId">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"origin">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"visibilityStatus">> => string()
%% }
-type a_i_agent_summary() :: #{binary() => any()}.


%% Example:
%% update_session_request() :: #{
%%   <<"aiAgentConfiguration">> => map(),
%%   <<"description">> => string(),
%%   <<"tagFilter">> => list()
%% }
-type update_session_request() :: #{binary() => any()}.


%% Example:
%% search_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionSummaries">> := list(session_summary()())
%% }
-type search_sessions_response() :: #{binary() => any()}.


%% Example:
%% chunking_configuration() :: #{
%%   <<"chunkingStrategy">> => string(),
%%   <<"fixedSizeChunkingConfiguration">> => fixed_size_chunking_configuration(),
%%   <<"hierarchicalChunkingConfiguration">> => hierarchical_chunking_configuration(),
%%   <<"semanticChunkingConfiguration">> => semantic_chunking_configuration()
%% }
-type chunking_configuration() :: #{binary() => any()}.

%% Example:
%% delete_a_iprompt_version_request() :: #{}
-type delete_a_iprompt_version_request() :: #{}.


%% Example:
%% notify_recommendations_received_response() :: #{
%%   <<"errors">> => list(notify_recommendations_received_error()()),
%%   <<"recommendationIds">> => list(string()())
%% }
-type notify_recommendations_received_response() :: #{binary() => any()}.


%% Example:
%% update_quick_response_request() :: #{
%%   <<"channels">> => list(string()()),
%%   <<"content">> => list(),
%%   <<"contentType">> => string(),
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"language">> => string(),
%%   <<"name">> => string(),
%%   <<"removeDescription">> => [boolean()],
%%   <<"removeGroupingConfiguration">> => [boolean()],
%%   <<"removeShortcutKey">> => [boolean()],
%%   <<"shortcutKey">> => string()
%% }
-type update_quick_response_request() :: #{binary() => any()}.


%% Example:
%% quick_response_data() :: #{
%%   <<"channels">> => list(string()()),
%%   <<"contentType">> => string(),
%%   <<"contents">> => quick_response_contents(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"language">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"quickResponseArn">> => string(),
%%   <<"quickResponseId">> => string(),
%%   <<"shortcutKey">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type quick_response_data() :: #{binary() => any()}.


%% Example:
%% intent_input_data() :: #{
%%   <<"intentId">> => string()
%% }
-type intent_input_data() :: #{binary() => any()}.


%% Example:
%% knowledge_base_association_data() :: #{
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string()
%% }
-type knowledge_base_association_data() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% query_condition_item() :: #{
%%   <<"comparator">> => string(),
%%   <<"field">> => string(),
%%   <<"value">> => string()
%% }
-type query_condition_item() :: #{binary() => any()}.


%% Example:
%% update_a_i_agent_response() :: #{
%%   <<"aiAgent">> => a_i_agent_data()
%% }
-type update_a_i_agent_response() :: #{binary() => any()}.


%% Example:
%% parsing_prompt() :: #{
%%   <<"parsingPromptText">> => string()
%% }
-type parsing_prompt() :: #{binary() => any()}.


%% Example:
%% list_assistant_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assistant_associations_request() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_summary() :: #{
%%   <<"aiGuardrailArn">> => string(),
%%   <<"aiGuardrailId">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"description">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"visibilityStatus">> => string()
%% }
-type a_i_guardrail_summary() :: #{binary() => any()}.

%% Example:
%% delete_knowledge_base_request() :: #{}
-type delete_knowledge_base_request() :: #{}.


%% Example:
%% update_quick_response_response() :: #{
%%   <<"quickResponse">> => quick_response_data()
%% }
-type update_quick_response_response() :: #{binary() => any()}.


%% Example:
%% assistant_summary() :: #{
%%   <<"aiAgentConfiguration">> => map(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"capabilityConfiguration">> => assistant_capability_configuration(),
%%   <<"description">> => string(),
%%   <<"integrationConfiguration">> => assistant_integration_configuration(),
%%   <<"name">> => string(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type assistant_summary() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_topic_policy_config() :: #{
%%   <<"topicsConfig">> => list(guardrail_topic_config()())
%% }
-type a_i_guardrail_topic_policy_config() :: #{binary() => any()}.


%% Example:
%% generative_content_feedback_data() :: #{
%%   <<"relevance">> => string()
%% }
-type generative_content_feedback_data() :: #{binary() => any()}.


%% Example:
%% search_expression() :: #{
%%   <<"filters">> => list(filter()())
%% }
-type search_expression() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"field">> => string(),
%%   <<"operator">> => string(),
%%   <<"value">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% a_i_agent_data() :: #{
%%   <<"aiAgentArn">> => string(),
%%   <<"aiAgentId">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"origin">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"visibilityStatus">> => string()
%% }
-type a_i_agent_data() :: #{binary() => any()}.


%% Example:
%% source_content_data_details() :: #{
%%   <<"citationSpan">> => citation_span(),
%%   <<"id">> => string(),
%%   <<"rankingData">> => ranking_data(),
%%   <<"textData">> => text_data(),
%%   <<"type">> => string()
%% }
-type source_content_data_details() :: #{binary() => any()}.


%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"kmsKeyId">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_word_config() :: #{
%%   <<"text">> => string()
%% }
-type guardrail_word_config() :: #{binary() => any()}.


%% Example:
%% session_data() :: #{
%%   <<"aiAgentConfiguration">> => map(),
%%   <<"description">> => string(),
%%   <<"integrationConfiguration">> => session_integration_configuration(),
%%   <<"name">> => string(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"tagFilter">> => list(),
%%   <<"tags">> => map()
%% }
-type session_data() :: #{binary() => any()}.


%% Example:
%% search_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchExpression">> := search_expression()
%% }
-type search_sessions_request() :: #{binary() => any()}.


%% Example:
%% semantic_chunking_configuration() :: #{
%%   <<"breakpointPercentileThreshold">> => [integer()],
%%   <<"bufferSize">> => [integer()],
%%   <<"maxTokens">> => [integer()]
%% }
-type semantic_chunking_configuration() :: #{binary() => any()}.


%% Example:
%% create_message_template_version_response() :: #{
%%   <<"messageTemplate">> => extended_message_template_data()
%% }
-type create_message_template_version_response() :: #{binary() => any()}.


%% Example:
%% message_template_search_result_data() :: #{
%%   <<"channelSubtype">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"language">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"versionNumber">> => float()
%% }
-type message_template_search_result_data() :: #{binary() => any()}.


%% Example:
%% email_header() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type email_header() :: #{binary() => any()}.


%% Example:
%% web_crawler_configuration() :: #{
%%   <<"crawlerLimits">> => web_crawler_limits(),
%%   <<"exclusionFilters">> => list(string()()),
%%   <<"inclusionFilters">> => list(string()()),
%%   <<"scope">> => string(),
%%   <<"urlConfiguration">> => url_configuration()
%% }
-type web_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% list_import_jobs_response() :: #{
%%   <<"importJobSummaries">> => list(import_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_a_i_guardrail_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()]
%% }
-type create_a_i_guardrail_version_request() :: #{binary() => any()}.

%% Example:
%% delete_message_template_request() :: #{}
-type delete_message_template_request() :: #{}.


%% Example:
%% bedrock_foundation_model_configuration_for_parsing() :: #{
%%   <<"modelArn">> => string(),
%%   <<"parsingPrompt">> => parsing_prompt()
%% }
-type bedrock_foundation_model_configuration_for_parsing() :: #{binary() => any()}.

%% Example:
%% delete_content_association_response() :: #{}
-type delete_content_association_response() :: #{}.


%% Example:
%% a_iprompt_summary() :: #{
%%   <<"aiPromptArn">> => string(),
%%   <<"aiPromptId">> => string(),
%%   <<"apiFormat">> => string(),
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"description">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"origin">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"templateType">> => string(),
%%   <<"type">> => string(),
%%   <<"visibilityStatus">> => string()
%% }
-type a_iprompt_summary() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_word_policy_config() :: #{
%%   <<"managedWordListsConfig">> => list(guardrail_managed_words_config()()),
%%   <<"wordsConfig">> => list(guardrail_word_config()())
%% }
-type a_i_guardrail_word_policy_config() :: #{binary() => any()}.

%% Example:
%% remove_knowledge_base_template_uri_request() :: #{}
-type remove_knowledge_base_template_uri_request() :: #{}.


%% Example:
%% generative_data_details() :: #{
%%   <<"completion">> => string(),
%%   <<"rankingData">> => ranking_data(),
%%   <<"references">> => list(data_summary()())
%% }
-type generative_data_details() :: #{binary() => any()}.


%% Example:
%% search_quick_responses_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(quick_response_search_result_data()())
%% }
-type search_quick_responses_response() :: #{binary() => any()}.

%% Example:
%% get_a_iprompt_request() :: #{}
-type get_a_iprompt_request() :: #{}.


%% Example:
%% list_a_i_guardrail_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_guardrail_versions_request() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_version_summary() :: #{
%%   <<"aiGuardrailSummary">> => a_i_guardrail_summary(),
%%   <<"versionNumber">> => float()
%% }
-type a_i_guardrail_version_summary() :: #{binary() => any()}.


%% Example:
%% guardrail_regex_config() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"pattern">> => string()
%% }
-type guardrail_regex_config() :: #{binary() => any()}.


%% Example:
%% list_message_templates_response() :: #{
%%   <<"messageTemplateSummaries">> => list(message_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_message_templates_response() :: #{binary() => any()}.


%% Example:
%% get_a_iprompt_response() :: #{
%%   <<"aiPrompt">> => a_iprompt_data(),
%%   <<"versionNumber">> => float()
%% }
-type get_a_iprompt_response() :: #{binary() => any()}.


%% Example:
%% create_a_iprompt_request() :: #{
%%   <<"apiFormat">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"modelId">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"templateConfiguration">> := list(),
%%   <<"templateType">> := string(),
%%   <<"type">> := string(),
%%   <<"visibilityStatus">> := string()
%% }
-type create_a_iprompt_request() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_contextual_grounding_policy_config() :: #{
%%   <<"filtersConfig">> => list(guardrail_contextual_grounding_filter_config()())
%% }
-type a_i_guardrail_contextual_grounding_policy_config() :: #{binary() => any()}.


%% Example:
%% notify_recommendations_received_error() :: #{
%%   <<"message">> => string(),
%%   <<"recommendationId">> => string()
%% }
-type notify_recommendations_received_error() :: #{binary() => any()}.


%% Example:
%% get_import_job_response() :: #{
%%   <<"importJob">> => import_job_data()
%% }
-type get_import_job_response() :: #{binary() => any()}.


%% Example:
%% manual_search_a_i_agent_configuration() :: #{
%%   <<"answerGenerationAIGuardrailId">> => string(),
%%   <<"answerGenerationAIPromptId">> => string(),
%%   <<"associationConfigurations">> => list(association_configuration()()),
%%   <<"locale">> => string()
%% }
-type manual_search_a_i_agent_configuration() :: #{binary() => any()}.


%% Example:
%% update_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type update_content_response() :: #{binary() => any()}.

%% Example:
%% delete_message_template_attachment_request() :: #{}
-type delete_message_template_attachment_request() :: #{}.


%% Example:
%% get_message_template_response() :: #{
%%   <<"messageTemplate">> => extended_message_template_data()
%% }
-type get_message_template_response() :: #{binary() => any()}.

%% Example:
%% get_quick_response_request() :: #{}
-type get_quick_response_request() :: #{}.


%% Example:
%% a_i_guardrail_sensitive_information_policy_config() :: #{
%%   <<"piiEntitiesConfig">> => list(guardrail_pii_entity_config()()),
%%   <<"regexesConfig">> => list(guardrail_regex_config()())
%% }
-type a_i_guardrail_sensitive_information_policy_config() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_assistant_association_response() :: #{
%%   <<"assistantAssociation">> => assistant_association_data()
%% }
-type create_assistant_association_response() :: #{binary() => any()}.


%% Example:
%% create_content_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"metadata">> => map(),
%%   <<"name">> := string(),
%%   <<"overrideLinkOutUri">> => string(),
%%   <<"tags">> => map(),
%%   <<"title">> => string(),
%%   <<"uploadId">> := string()
%% }
-type create_content_request() :: #{binary() => any()}.


%% Example:
%% message_template_summary() :: #{
%%   <<"activeVersionNumber">> => float(),
%%   <<"channelSubtype">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type message_template_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% import_job_summary() :: #{
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"externalSourceConfiguration">> => external_source_configuration(),
%%   <<"importJobId">> => string(),
%%   <<"importJobType">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"metadata">> => map(),
%%   <<"status">> => string(),
%%   <<"uploadId">> => string()
%% }
-type import_job_summary() :: #{binary() => any()}.


%% Example:
%% query_assistant_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"overrideKnowledgeBaseSearchType">> => string(),
%%   <<"queryCondition">> => list(list()()),
%%   <<"queryInputData">> => list(),
%%   <<"queryText">> => string(),
%%   <<"sessionId">> => string()
%% }
-type query_assistant_request() :: #{binary() => any()}.

%% Example:
%% get_message_template_request() :: #{}
-type get_message_template_request() :: #{}.


%% Example:
%% quick_response_search_result_data() :: #{
%%   <<"attributesInterpolated">> => list(string()()),
%%   <<"attributesNotInterpolated">> => list(string()()),
%%   <<"channels">> => list(string()()),
%%   <<"contentType">> => string(),
%%   <<"contents">> => quick_response_contents(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"language">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"quickResponseArn">> => string(),
%%   <<"quickResponseId">> => string(),
%%   <<"shortcutKey">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type quick_response_search_result_data() :: #{binary() => any()}.


%% Example:
%% rendering_configuration() :: #{
%%   <<"templateUri">> => string()
%% }
-type rendering_configuration() :: #{binary() => any()}.


%% Example:
%% get_content_association_response() :: #{
%%   <<"contentAssociation">> => content_association_data()
%% }
-type get_content_association_response() :: #{binary() => any()}.


%% Example:
%% system_attributes() :: #{
%%   <<"customerEndpoint">> => system_endpoint_attributes(),
%%   <<"name">> => string(),
%%   <<"systemEndpoint">> => system_endpoint_attributes()
%% }
-type system_attributes() :: #{binary() => any()}.

%% Example:
%% delete_content_request() :: #{}
-type delete_content_request() :: #{}.


%% Example:
%% list_a_i_guardrails_response() :: #{
%%   <<"aiGuardrailSummaries">> => list(a_i_guardrail_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_guardrails_response() :: #{binary() => any()}.

%% Example:
%% get_content_request() :: #{}
-type get_content_request() :: #{}.

%% Example:
%% delete_quick_response_request() :: #{}
-type delete_quick_response_request() :: #{}.


%% Example:
%% create_message_template_version_request() :: #{
%%   <<"messageTemplateContentSha256">> => string()
%% }
-type create_message_template_version_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% runtime_session_data() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => list()
%% }
-type runtime_session_data() :: #{binary() => any()}.


%% Example:
%% content_reference() :: #{
%%   <<"contentArn">> => string(),
%%   <<"contentId">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"referenceType">> => string(),
%%   <<"sourceURL">> => [string()]
%% }
-type content_reference() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity_config() :: #{
%%   <<"action">> => string(),
%%   <<"type">> => string()
%% }
-type guardrail_pii_entity_config() :: #{binary() => any()}.


%% Example:
%% search_message_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(message_template_search_result_data()())
%% }
-type search_message_templates_response() :: #{binary() => any()}.


%% Example:
%% citation_span() :: #{
%%   <<"beginOffsetInclusive">> => integer(),
%%   <<"endOffsetExclusive">> => integer()
%% }
-type citation_span() :: #{binary() => any()}.


%% Example:
%% content_data() :: #{
%%   <<"contentArn">> => string(),
%%   <<"contentId">> => string(),
%%   <<"contentType">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"linkOutUri">> => string(),
%%   <<"metadata">> => map(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"title">> => string(),
%%   <<"url">> => string(),
%%   <<"urlExpiry">> => [non_neg_integer()]
%% }
-type content_data() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% content_summary() :: #{
%%   <<"contentArn">> => string(),
%%   <<"contentId">> => string(),
%%   <<"contentType">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"metadata">> => map(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"title">> => string()
%% }
-type content_summary() :: #{binary() => any()}.


%% Example:
%% update_session_data_response() :: #{
%%   <<"data">> => list(runtime_session_data()()),
%%   <<"namespace">> => string(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string()
%% }
-type update_session_data_response() :: #{binary() => any()}.


%% Example:
%% self_service_conversation_history() :: #{
%%   <<"botResponse">> => string(),
%%   <<"inputTranscript">> => string(),
%%   <<"turnNumber">> => [integer()]
%% }
-type self_service_conversation_history() :: #{binary() => any()}.


%% Example:
%% knowledge_base_association_configuration_data() :: #{
%%   <<"contentTagFilter">> => list(),
%%   <<"maxResults">> => integer(),
%%   <<"overrideKnowledgeBaseSearchType">> => string()
%% }
-type knowledge_base_association_configuration_data() :: #{binary() => any()}.


%% Example:
%% hierarchical_chunking_level_configuration() :: #{
%%   <<"maxTokens">> => [integer()]
%% }
-type hierarchical_chunking_level_configuration() :: #{binary() => any()}.


%% Example:
%% a_i_guardrail_content_policy_config() :: #{
%%   <<"filtersConfig">> => list(guardrail_content_filter_config()())
%% }
-type a_i_guardrail_content_policy_config() :: #{binary() => any()}.


%% Example:
%% get_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type get_content_response() :: #{binary() => any()}.

%% Example:
%% delete_a_iprompt_request() :: #{}
-type delete_a_iprompt_request() :: #{}.


%% Example:
%% content_data_details() :: #{
%%   <<"rankingData">> => ranking_data(),
%%   <<"textData">> => text_data()
%% }
-type content_data_details() :: #{binary() => any()}.


%% Example:
%% recommendation_trigger() :: #{
%%   <<"data">> => list(),
%%   <<"id">> => string(),
%%   <<"recommendationIds">> => list(string()()),
%%   <<"source">> => string(),
%%   <<"type">> => string()
%% }
-type recommendation_trigger() :: #{binary() => any()}.


%% Example:
%% update_session_response() :: #{
%%   <<"session">> => session_data()
%% }
-type update_session_response() :: #{binary() => any()}.


%% Example:
%% notify_recommendations_received_request() :: #{
%%   <<"recommendationIds">> := list(string()())
%% }
-type notify_recommendations_received_request() :: #{binary() => any()}.


%% Example:
%% send_message_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"conversationContext">> => conversation_context(),
%%   <<"message">> := message_input(),
%%   <<"type">> := string()
%% }
-type send_message_request() :: #{binary() => any()}.

%% Example:
%% delete_a_i_agent_response() :: #{}
-type delete_a_i_agent_response() :: #{}.


%% Example:
%% message_template_data() :: #{
%%   <<"attributeTypes">> => list(string()()),
%%   <<"channelSubtype">> => string(),
%%   <<"content">> => list(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"defaultAttributes">> => message_template_attributes(),
%%   <<"description">> => string(),
%%   <<"groupingConfiguration">> => grouping_configuration(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"language">> => string(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateContentSha256">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type message_template_data() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_response() :: #{
%%   <<"knowledgeBaseSummaries">> := list(knowledge_base_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_response() :: #{binary() => any()}.


%% Example:
%% get_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base_data()
%% }
-type get_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% sms_message_template_content() :: #{
%%   <<"body">> => sms_message_template_content_body()
%% }
-type sms_message_template_content() :: #{binary() => any()}.


%% Example:
%% list_assistant_associations_response() :: #{
%%   <<"assistantAssociationSummaries">> := list(assistant_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_assistant_associations_response() :: #{binary() => any()}.


%% Example:
%% result_data() :: #{
%%   <<"data">> => data_summary(),
%%   <<"document">> => document(),
%%   <<"relevanceScore">> => float(),
%%   <<"resultId">> => string(),
%%   <<"type">> => string()
%% }
-type result_data() :: #{binary() => any()}.


%% Example:
%% update_message_template_metadata_response() :: #{
%%   <<"messageTemplate">> => message_template_data()
%% }
-type update_message_template_metadata_response() :: #{binary() => any()}.


%% Example:
%% get_next_message_request() :: #{
%%   <<"nextMessageToken">> := string()
%% }
-type get_next_message_request() :: #{binary() => any()}.


%% Example:
%% render_message_template_response() :: #{
%%   <<"attachments">> => list(message_template_attachment()()),
%%   <<"attributesNotInterpolated">> => list(string()()),
%%   <<"content">> => list()
%% }
-type render_message_template_response() :: #{binary() => any()}.


%% Example:
%% email_message_template_content_body() :: #{
%%   <<"html">> => list(),
%%   <<"plainText">> => list()
%% }
-type email_message_template_content_body() :: #{binary() => any()}.


%% Example:
%% list_a_i_guardrails_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_a_i_guardrails_request() :: #{binary() => any()}.


%% Example:
%% message_template_version_summary() :: #{
%%   <<"channelSubtype">> => string(),
%%   <<"isActive">> => [boolean()],
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"name">> => string(),
%%   <<"versionNumber">> => float()
%% }
-type message_template_version_summary() :: #{binary() => any()}.


%% Example:
%% list_message_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_message_templates_request() :: #{binary() => any()}.


%% Example:
%% update_a_i_agent_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"visibilityStatus">> := string()
%% }
-type update_a_i_agent_request() :: #{binary() => any()}.


%% Example:
%% start_import_job_response() :: #{
%%   <<"importJob">> => import_job_data()
%% }
-type start_import_job_response() :: #{binary() => any()}.


%% Example:
%% update_content_request() :: #{
%%   <<"metadata">> => map(),
%%   <<"overrideLinkOutUri">> => string(),
%%   <<"removeOverrideLinkOutUri">> => [boolean()],
%%   <<"revisionId">> => string(),
%%   <<"title">> => string(),
%%   <<"uploadId">> => string()
%% }
-type update_content_request() :: #{binary() => any()}.


%% Example:
%% assistant_association_summary() :: #{
%%   <<"assistantArn">> => string(),
%%   <<"assistantAssociationArn">> => string(),
%%   <<"assistantAssociationId">> => string(),
%%   <<"assistantId">> => string(),
%%   <<"associationData">> => list(),
%%   <<"associationType">> => string(),
%%   <<"tags">> => map()
%% }
-type assistant_association_summary() :: #{binary() => any()}.

%% Example:
%% get_content_summary_request() :: #{}
-type get_content_summary_request() :: #{}.


%% Example:
%% quick_response_query_field() :: #{
%%   <<"allowFuzziness">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"priority">> => string(),
%%   <<"values">> => list(string()())
%% }
-type quick_response_query_field() :: #{binary() => any()}.


%% Example:
%% text_full_a_iprompt_edit_template_configuration() :: #{
%%   <<"text">> => string()
%% }
-type text_full_a_iprompt_edit_template_configuration() :: #{binary() => any()}.

%% Example:
%% get_assistant_association_request() :: #{}
-type get_assistant_association_request() :: #{}.

%% Example:
%% delete_content_response() :: #{}
-type delete_content_response() :: #{}.

%% Example:
%% get_knowledge_base_request() :: #{}
-type get_knowledge_base_request() :: #{}.


%% Example:
%% list_a_iprompt_versions_response() :: #{
%%   <<"aiPromptVersionSummaries">> => list(a_iprompt_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_a_iprompt_versions_response() :: #{binary() => any()}.


%% Example:
%% quick_response_order_field() :: #{
%%   <<"name">> => string(),
%%   <<"order">> => string()
%% }
-type quick_response_order_field() :: #{binary() => any()}.


%% Example:
%% send_message_response() :: #{
%%   <<"nextMessageToken">> => string(),
%%   <<"requestMessageId">> => string()
%% }
-type send_message_response() :: #{binary() => any()}.


%% Example:
%% list_assistants_response() :: #{
%%   <<"assistantSummaries">> := list(assistant_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_assistants_response() :: #{binary() => any()}.


%% Example:
%% update_assistant_a_i_agent_request() :: #{
%%   <<"aiAgentType">> := string(),
%%   <<"configuration">> := a_i_agent_configuration_data()
%% }
-type update_assistant_a_i_agent_request() :: #{binary() => any()}.

%% Example:
%% delete_quick_response_response() :: #{}
-type delete_quick_response_response() :: #{}.


%% Example:
%% message_template_attachment() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"contentDisposition">> => string(),
%%   <<"name">> => string(),
%%   <<"uploadedTime">> => [non_neg_integer()],
%%   <<"url">> => string(),
%%   <<"urlExpiry">> => [non_neg_integer()]
%% }
-type message_template_attachment() :: #{binary() => any()}.


%% Example:
%% search_content_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchExpression">> := search_expression()
%% }
-type search_content_request() :: #{binary() => any()}.


%% Example:
%% ranking_data() :: #{
%%   <<"relevanceLevel">> => string(),
%%   <<"relevanceScore">> => float()
%% }
-type ranking_data() :: #{binary() => any()}.


%% Example:
%% vector_ingestion_configuration() :: #{
%%   <<"chunkingConfiguration">> => chunking_configuration(),
%%   <<"parsingConfiguration">> => parsing_configuration()
%% }
-type vector_ingestion_configuration() :: #{binary() => any()}.


%% Example:
%% grouping_configuration() :: #{
%%   <<"criteria">> => string(),
%%   <<"values">> => list(string()())
%% }
-type grouping_configuration() :: #{binary() => any()}.


%% Example:
%% create_assistant_association_request() :: #{
%%   <<"association">> := list(),
%%   <<"associationType">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_assistant_association_request() :: #{binary() => any()}.


%% Example:
%% create_a_i_guardrail_request() :: #{
%%   <<"blockedInputMessaging">> := string(),
%%   <<"blockedOutputsMessaging">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"contentPolicyConfig">> => a_i_guardrail_content_policy_config(),
%%   <<"contextualGroundingPolicyConfig">> => a_i_guardrail_contextual_grounding_policy_config(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"sensitiveInformationPolicyConfig">> => a_i_guardrail_sensitive_information_policy_config(),
%%   <<"tags">> => map(),
%%   <<"topicPolicyConfig">> => a_i_guardrail_topic_policy_config(),
%%   <<"visibilityStatus">> := string(),
%%   <<"wordPolicyConfig">> => a_i_guardrail_word_policy_config()
%% }
-type create_a_i_guardrail_request() :: #{binary() => any()}.


%% Example:
%% answer_recommendation_a_i_agent_configuration() :: #{
%%   <<"answerGenerationAIGuardrailId">> => string(),
%%   <<"answerGenerationAIPromptId">> => string(),
%%   <<"associationConfigurations">> => list(association_configuration()()),
%%   <<"intentLabelingGenerationAIPromptId">> => string(),
%%   <<"locale">> => string(),
%%   <<"queryReformulationAIPromptId">> => string()
%% }
-type answer_recommendation_a_i_agent_configuration() :: #{binary() => any()}.


%% Example:
%% email_message_template_content() :: #{
%%   <<"body">> => email_message_template_content_body(),
%%   <<"headers">> => list(email_header()()),
%%   <<"subject">> => string()
%% }
-type email_message_template_content() :: #{binary() => any()}.


%% Example:
%% create_session_response() :: #{
%%   <<"session">> => session_data()
%% }
-type create_session_response() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% update_a_iprompt_response() :: #{
%%   <<"aiPrompt">> => a_iprompt_data()
%% }
-type update_a_iprompt_response() :: #{binary() => any()}.


%% Example:
%% list_content_associations_response() :: #{
%%   <<"contentAssociationSummaries">> => list(content_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_content_associations_response() :: #{binary() => any()}.


%% Example:
%% create_a_i_agent_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"modifiedTime">> => [non_neg_integer()]
%% }
-type create_a_i_agent_version_request() :: #{binary() => any()}.

%% Example:
%% delete_assistant_association_response() :: #{}
-type delete_assistant_association_response() :: #{}.


%% Example:
%% document() :: #{
%%   <<"contentReference">> => content_reference(),
%%   <<"excerpt">> => document_text(),
%%   <<"title">> => document_text()
%% }
-type document() :: #{binary() => any()}.


%% Example:
%% render_message_template_request() :: #{
%%   <<"attributes">> := message_template_attributes()
%% }
-type render_message_template_request() :: #{binary() => any()}.


%% Example:
%% list_assistants_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assistants_request() :: #{binary() => any()}.


%% Example:
%% update_session_data_request() :: #{
%%   <<"data">> := list(runtime_session_data()()),
%%   <<"namespace">> => string()
%% }
-type update_session_data_request() :: #{binary() => any()}.

%% Example:
%% delete_content_association_request() :: #{}
-type delete_content_association_request() :: #{}.


%% Example:
%% update_message_template_response() :: #{
%%   <<"messageTemplate">> => message_template_data()
%% }
-type update_message_template_response() :: #{binary() => any()}.


%% Example:
%% session_integration_configuration() :: #{
%%   <<"topicIntegrationArn">> => string()
%% }
-type session_integration_configuration() :: #{binary() => any()}.


%% Example:
%% update_assistant_a_i_agent_response() :: #{
%%   <<"assistant">> => assistant_data()
%% }
-type update_assistant_a_i_agent_response() :: #{binary() => any()}.

%% Example:
%% delete_import_job_response() :: #{}
-type delete_import_job_response() :: #{}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% list_messages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_messages_request() :: #{binary() => any()}.


%% Example:
%% create_a_iprompt_version_response() :: #{
%%   <<"aiPrompt">> => a_iprompt_data(),
%%   <<"versionNumber">> => float()
%% }
-type create_a_iprompt_version_response() :: #{binary() => any()}.


%% Example:
%% activate_message_template_response() :: #{
%%   <<"messageTemplateArn">> => string(),
%%   <<"messageTemplateId">> => string(),
%%   <<"versionNumber">> => float()
%% }
-type activate_message_template_response() :: #{binary() => any()}.

-type activate_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_i_agent_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_i_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_i_guardrail_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_iprompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_a_iprompt_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_assistant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_assistant_association_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_content_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_content_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_knowledge_base_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_message_template_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_message_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_quick_response_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deactivate_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_a_i_agent_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_a_i_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_a_i_guardrail_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_a_iprompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_a_iprompt_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_assistant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_assistant_association_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_content_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_content_association_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_import_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_knowledge_base_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_message_template_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_quick_response_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_a_i_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_a_iprompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_assistant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_assistant_association_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_content_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_content_association_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_content_summary_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_import_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_knowledge_base_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_next_message_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_quick_response_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_recommendations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_i_agent_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_i_agents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_i_guardrail_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_i_guardrails_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_iprompt_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_a_iprompts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_assistant_associations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_assistants_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_content_associations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_contents_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_import_jobs_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_knowledge_bases_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_message_template_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_message_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_messages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_quick_responses_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type notify_recommendations_received_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type put_feedback_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type query_assistant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type remove_assistant_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type remove_knowledge_base_template_uri_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type render_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_content_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_message_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_quick_responses_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type search_sessions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type send_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type start_content_upload_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type start_import_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_a_i_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_a_iprompt_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_assistant_a_i_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_content_errors() ::
    precondition_failed_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_knowledge_base_template_uri_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_message_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_message_template_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_quick_response_errors() ::
    precondition_failed_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_session_data_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a specific version of the Amazon Q in Connect message
%% template.
%%
%% After the
%% version is activated, the previous active version will be deactivated
%% automatically. You can
%% use the `$ACTIVE_VERSION' qualifier later to reference the version
%% that is in
%% active status.
-spec activate_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), activate_message_template_request()) ->
    {ok, activate_message_template_response(), tuple()} |
    {error, any()} |
    {error, activate_message_template_errors(), tuple()}.
activate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    activate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec activate_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), activate_message_template_request(), proplists:proplist()) ->
    {ok, activate_message_template_response(), tuple()} |
    {error, any()} |
    {error, activate_message_template_errors(), tuple()}.
activate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/activate"],
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

%% @doc Creates an Amazon Q in Connect AI Agent.
-spec create_a_i_agent(aws_client:aws_client(), binary() | list(), create_a_i_agent_request()) ->
    {ok, create_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_agent_errors(), tuple()}.
create_a_i_agent(Client, AssistantId, Input) ->
    create_a_i_agent(Client, AssistantId, Input, []).

-spec create_a_i_agent(aws_client:aws_client(), binary() | list(), create_a_i_agent_request(), proplists:proplist()) ->
    {ok, create_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_agent_errors(), tuple()}.
create_a_i_agent(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents"],
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

%% @doc Creates and Amazon Q in Connect AI Agent version.
-spec create_a_i_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_i_agent_version_request()) ->
    {ok, create_a_i_agent_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_agent_version_errors(), tuple()}.
create_a_i_agent_version(Client, AiAgentId, AssistantId, Input) ->
    create_a_i_agent_version(Client, AiAgentId, AssistantId, Input, []).

-spec create_a_i_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_i_agent_version_request(), proplists:proplist()) ->
    {ok, create_a_i_agent_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_agent_version_errors(), tuple()}.
create_a_i_agent_version(Client, AiAgentId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), "/versions"],
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

%% @doc Creates an Amazon Q in Connect AI Guardrail.
-spec create_a_i_guardrail(aws_client:aws_client(), binary() | list(), create_a_i_guardrail_request()) ->
    {ok, create_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_guardrail_errors(), tuple()}.
create_a_i_guardrail(Client, AssistantId, Input) ->
    create_a_i_guardrail(Client, AssistantId, Input, []).

-spec create_a_i_guardrail(aws_client:aws_client(), binary() | list(), create_a_i_guardrail_request(), proplists:proplist()) ->
    {ok, create_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_guardrail_errors(), tuple()}.
create_a_i_guardrail(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails"],
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

%% @doc Creates an Amazon Q in Connect AI Guardrail version.
-spec create_a_i_guardrail_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_i_guardrail_version_request()) ->
    {ok, create_a_i_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_guardrail_version_errors(), tuple()}.
create_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, Input) ->
    create_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, Input, []).

-spec create_a_i_guardrail_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_i_guardrail_version_request(), proplists:proplist()) ->
    {ok, create_a_i_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_i_guardrail_version_errors(), tuple()}.
create_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), "/versions"],
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

%% @doc Creates an Amazon Q in Connect AI Prompt.
-spec create_a_iprompt(aws_client:aws_client(), binary() | list(), create_a_iprompt_request()) ->
    {ok, create_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, create_a_iprompt_errors(), tuple()}.
create_a_iprompt(Client, AssistantId, Input) ->
    create_a_iprompt(Client, AssistantId, Input, []).

-spec create_a_iprompt(aws_client:aws_client(), binary() | list(), create_a_iprompt_request(), proplists:proplist()) ->
    {ok, create_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, create_a_iprompt_errors(), tuple()}.
create_a_iprompt(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts"],
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

%% @doc Creates an Amazon Q in Connect AI Prompt version.
-spec create_a_iprompt_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_iprompt_version_request()) ->
    {ok, create_a_iprompt_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_iprompt_version_errors(), tuple()}.
create_a_iprompt_version(Client, AiPromptId, AssistantId, Input) ->
    create_a_iprompt_version(Client, AiPromptId, AssistantId, Input, []).

-spec create_a_iprompt_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_a_iprompt_version_request(), proplists:proplist()) ->
    {ok, create_a_iprompt_version_response(), tuple()} |
    {error, any()} |
    {error, create_a_iprompt_version_errors(), tuple()}.
create_a_iprompt_version(Client, AiPromptId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), "/versions"],
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

%% @doc Creates an Amazon Q in Connect assistant.
-spec create_assistant(aws_client:aws_client(), create_assistant_request()) ->
    {ok, create_assistant_response(), tuple()} |
    {error, any()} |
    {error, create_assistant_errors(), tuple()}.
create_assistant(Client, Input) ->
    create_assistant(Client, Input, []).

-spec create_assistant(aws_client:aws_client(), create_assistant_request(), proplists:proplist()) ->
    {ok, create_assistant_response(), tuple()} |
    {error, any()} |
    {error, create_assistant_errors(), tuple()}.
create_assistant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assistants"],
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

%% @doc Creates an association between an Amazon Q in Connect assistant and
%% another resource.
%%
%% Currently, the
%% only supported association is with a knowledge base. An assistant can have
%% only a single
%% association.
-spec create_assistant_association(aws_client:aws_client(), binary() | list(), create_assistant_association_request()) ->
    {ok, create_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, create_assistant_association_errors(), tuple()}.
create_assistant_association(Client, AssistantId, Input) ->
    create_assistant_association(Client, AssistantId, Input, []).

-spec create_assistant_association(aws_client:aws_client(), binary() | list(), create_assistant_association_request(), proplists:proplist()) ->
    {ok, create_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, create_assistant_association_errors(), tuple()}.
create_assistant_association(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations"],
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

%% @doc Creates Amazon Q in Connect content.
%%
%% Before to calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
%% to upload an asset.
-spec create_content(aws_client:aws_client(), binary() | list(), create_content_request()) ->
    {ok, create_content_response(), tuple()} |
    {error, any()} |
    {error, create_content_errors(), tuple()}.
create_content(Client, KnowledgeBaseId, Input) ->
    create_content(Client, KnowledgeBaseId, Input, []).

-spec create_content(aws_client:aws_client(), binary() | list(), create_content_request(), proplists:proplist()) ->
    {ok, create_content_response(), tuple()} |
    {error, any()} |
    {error, create_content_errors(), tuple()}.
create_content(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents"],
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

%% @doc Creates an association between a content resource in a knowledge base
%% and step-by-step guides:
%% https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html.
%%
%% Step-by-step guides offer instructions to agents for resolving
%% common customer issues. You create a content association to integrate
%% Amazon Q in Connect and
%% step-by-step guides.
%%
%% After you integrate Amazon Q and step-by-step guides, when Amazon Q
%% provides a
%% recommendation to an agent based on the intent that it's detected, it
%% also provides them with
%% the option to start the step-by-step guide that you have associated with
%% the content.
%%
%% Note the following limitations:
%%
%% You can create only one content association for each content resource in a
%% knowledge
%% base.
%%
%% You can associate a step-by-step guide with multiple content resources.
%%
%% For more information, see Integrate Amazon Q in Connect with
%% step-by-step guides:
%% https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
%% in the Amazon Connect Administrator
%% Guide.
-spec create_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), create_content_association_request()) ->
    {ok, create_content_association_response(), tuple()} |
    {error, any()} |
    {error, create_content_association_errors(), tuple()}.
create_content_association(Client, ContentId, KnowledgeBaseId, Input) ->
    create_content_association(Client, ContentId, KnowledgeBaseId, Input, []).

-spec create_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), create_content_association_request(), proplists:proplist()) ->
    {ok, create_content_association_response(), tuple()} |
    {error, any()} |
    {error, create_content_association_errors(), tuple()}.
create_content_association(Client, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/associations"],
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

%% @doc Creates a knowledge base.
%%
%% When using this API, you cannot reuse Amazon AppIntegrations:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
%% DataIntegrations with external knowledge bases such as Salesforce and
%% ServiceNow. If you do,
%% you'll get an `InvalidRequestException' error.
%%
%% For example, you're programmatically managing your external knowledge
%% base, and you want
%% to add or remove one of the fields that is being ingested from Salesforce.
%% Do the
%% following:
%%
%% Call DeleteKnowledgeBase:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_DeleteKnowledgeBase.html.
%%
%% Call DeleteDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html.
%%
%% Call CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% to recreate the DataIntegration or a create different
%% one.
%%
%% Call CreateKnowledgeBase.
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
    Method = post,
    Path = ["/knowledgeBases"],
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

%% @doc Creates an Amazon Q in Connect message template.
%%
%% The name of the message template has to
%% be unique for each knowledge base. The channel subtype of the message
%% template is immutable
%% and cannot be modified after creation. After the message template is
%% created, you can use the
%% `$LATEST' qualifier to reference the created message template.
-spec create_message_template(aws_client:aws_client(), binary() | list(), create_message_template_request()) ->
    {ok, create_message_template_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_errors(), tuple()}.
create_message_template(Client, KnowledgeBaseId, Input) ->
    create_message_template(Client, KnowledgeBaseId, Input, []).

-spec create_message_template(aws_client:aws_client(), binary() | list(), create_message_template_request(), proplists:proplist()) ->
    {ok, create_message_template_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_errors(), tuple()}.
create_message_template(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates"],
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

%% @doc Uploads an attachment file to the specified Amazon Q in Connect
%% message template.
%%
%% The name
%% of the message template attachment has to be unique for each message
%% template referenced by
%% the `$LATEST' qualifier. The body of the attachment file should be
%% encoded using
%% base64 encoding. After the file is uploaded, you can use the pre-signed
%% Amazon S3 URL returned
%% in response to download the uploaded file.
-spec create_message_template_attachment(aws_client:aws_client(), binary() | list(), binary() | list(), create_message_template_attachment_request()) ->
    {ok, create_message_template_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_attachment_errors(), tuple()}.
create_message_template_attachment(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    create_message_template_attachment(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec create_message_template_attachment(aws_client:aws_client(), binary() | list(), binary() | list(), create_message_template_attachment_request(), proplists:proplist()) ->
    {ok, create_message_template_attachment_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_attachment_errors(), tuple()}.
create_message_template_attachment(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/attachments"],
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

%% @doc Creates a new Amazon Q in Connect message template version from the
%% current content and
%% configuration of a message template.
%%
%% Versions are immutable and monotonically increasing. Once
%% a version is created, you can reference a specific version of the message
%% template by passing
%% in `&lt;message-template-id&gt;:&lt;versionNumber&gt;' as the message
%% template
%% identifier. An error is displayed if the supplied
%% `messageTemplateContentSha256' is
%% different from the `messageTemplateContentSha256' of the message
%% template with
%% `$LATEST' qualifier. If multiple `CreateMessageTemplateVersion'
%% requests are made while the message template remains the same, only the
%% first invocation
%% creates a new version and the succeeding requests will return the same
%% response as the first
%% invocation.
-spec create_message_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_message_template_version_request()) ->
    {ok, create_message_template_version_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_version_errors(), tuple()}.
create_message_template_version(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    create_message_template_version(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec create_message_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_message_template_version_request(), proplists:proplist()) ->
    {ok, create_message_template_version_response(), tuple()} |
    {error, any()} |
    {error, create_message_template_version_errors(), tuple()}.
create_message_template_version(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/versions"],
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

%% @doc Creates an Amazon Q in Connect quick response.
-spec create_quick_response(aws_client:aws_client(), binary() | list(), create_quick_response_request()) ->
    {ok, create_quick_response_response(), tuple()} |
    {error, any()} |
    {error, create_quick_response_errors(), tuple()}.
create_quick_response(Client, KnowledgeBaseId, Input) ->
    create_quick_response(Client, KnowledgeBaseId, Input, []).

-spec create_quick_response(aws_client:aws_client(), binary() | list(), create_quick_response_request(), proplists:proplist()) ->
    {ok, create_quick_response_response(), tuple()} |
    {error, any()} |
    {error, create_quick_response_errors(), tuple()}.
create_quick_response(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses"],
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

%% @doc Creates a session.
%%
%% A session is a contextual container used for generating
%% recommendations. Amazon Connect creates a new Amazon Q in Connect session
%% for each contact on which
%% Amazon Q in Connect is enabled.
-spec create_session(aws_client:aws_client(), binary() | list(), create_session_request()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, AssistantId, Input) ->
    create_session(Client, AssistantId, Input, []).

-spec create_session(aws_client:aws_client(), binary() | list(), create_session_request(), proplists:proplist()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions"],
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

%% @doc Deactivates a specific version of the Amazon Q in Connect message
%% template .
%%
%% After the
%% version is deactivated, you can no longer use the `$ACTIVE_VERSION'
%% qualifier to
%% reference the version in active status.
-spec deactivate_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_message_template_request()) ->
    {ok, deactivate_message_template_response(), tuple()} |
    {error, any()} |
    {error, deactivate_message_template_errors(), tuple()}.
deactivate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    deactivate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec deactivate_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_message_template_request(), proplists:proplist()) ->
    {ok, deactivate_message_template_response(), tuple()} |
    {error, any()} |
    {error, deactivate_message_template_errors(), tuple()}.
deactivate_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/deactivate"],
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

%% @doc Deletes an Amazon Q in Connect AI Agent.
-spec delete_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_i_agent_request()) ->
    {ok, delete_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_agent_errors(), tuple()}.
delete_a_i_agent(Client, AiAgentId, AssistantId, Input) ->
    delete_a_i_agent(Client, AiAgentId, AssistantId, Input, []).

-spec delete_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_i_agent_request(), proplists:proplist()) ->
    {ok, delete_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_agent_errors(), tuple()}.
delete_a_i_agent(Client, AiAgentId, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), ""],
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

%% @doc Deletes an Amazon Q in Connect AI Agent Version.
-spec delete_a_i_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_i_agent_version_request()) ->
    {ok, delete_a_i_agent_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_agent_version_errors(), tuple()}.
delete_a_i_agent_version(Client, AiAgentId, AssistantId, VersionNumber, Input) ->
    delete_a_i_agent_version(Client, AiAgentId, AssistantId, VersionNumber, Input, []).

-spec delete_a_i_agent_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_i_agent_version_request(), proplists:proplist()) ->
    {ok, delete_a_i_agent_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_agent_version_errors(), tuple()}.
delete_a_i_agent_version(Client, AiAgentId, AssistantId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Deletes an Amazon Q in Connect AI Guardrail.
-spec delete_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_i_guardrail_request()) ->
    {ok, delete_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_guardrail_errors(), tuple()}.
delete_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input) ->
    delete_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input, []).

-spec delete_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_i_guardrail_request(), proplists:proplist()) ->
    {ok, delete_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_guardrail_errors(), tuple()}.
delete_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), ""],
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

%% @doc Delete and Amazon Q in Connect AI Guardrail version.
-spec delete_a_i_guardrail_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_i_guardrail_version_request()) ->
    {ok, delete_a_i_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_guardrail_version_errors(), tuple()}.
delete_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, VersionNumber, Input) ->
    delete_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, VersionNumber, Input, []).

-spec delete_a_i_guardrail_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_i_guardrail_version_request(), proplists:proplist()) ->
    {ok, delete_a_i_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_i_guardrail_version_errors(), tuple()}.
delete_a_i_guardrail_version(Client, AiGuardrailId, AssistantId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Deletes an Amazon Q in Connect AI Prompt.
-spec delete_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_iprompt_request()) ->
    {ok, delete_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, delete_a_iprompt_errors(), tuple()}.
delete_a_iprompt(Client, AiPromptId, AssistantId, Input) ->
    delete_a_iprompt(Client, AiPromptId, AssistantId, Input, []).

-spec delete_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), delete_a_iprompt_request(), proplists:proplist()) ->
    {ok, delete_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, delete_a_iprompt_errors(), tuple()}.
delete_a_iprompt(Client, AiPromptId, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), ""],
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

%% @doc Delete and Amazon Q in Connect AI Prompt version.
-spec delete_a_iprompt_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_iprompt_version_request()) ->
    {ok, delete_a_iprompt_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_iprompt_version_errors(), tuple()}.
delete_a_iprompt_version(Client, AiPromptId, AssistantId, VersionNumber, Input) ->
    delete_a_iprompt_version(Client, AiPromptId, AssistantId, VersionNumber, Input, []).

-spec delete_a_iprompt_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_a_iprompt_version_request(), proplists:proplist()) ->
    {ok, delete_a_iprompt_version_response(), tuple()} |
    {error, any()} |
    {error, delete_a_iprompt_version_errors(), tuple()}.
delete_a_iprompt_version(Client, AiPromptId, AssistantId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Deletes an assistant.
-spec delete_assistant(aws_client:aws_client(), binary() | list(), delete_assistant_request()) ->
    {ok, delete_assistant_response(), tuple()} |
    {error, any()} |
    {error, delete_assistant_errors(), tuple()}.
delete_assistant(Client, AssistantId, Input) ->
    delete_assistant(Client, AssistantId, Input, []).

-spec delete_assistant(aws_client:aws_client(), binary() | list(), delete_assistant_request(), proplists:proplist()) ->
    {ok, delete_assistant_response(), tuple()} |
    {error, any()} |
    {error, delete_assistant_errors(), tuple()}.
delete_assistant(Client, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), ""],
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

%% @doc Deletes an assistant association.
-spec delete_assistant_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_assistant_association_request()) ->
    {ok, delete_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, delete_assistant_association_errors(), tuple()}.
delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input) ->
    delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input, []).

-spec delete_assistant_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_assistant_association_request(), proplists:proplist()) ->
    {ok, delete_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, delete_assistant_association_errors(), tuple()}.
delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations/", aws_util:encode_uri(AssistantAssociationId), ""],
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

%% @doc Deletes the content.
-spec delete_content(aws_client:aws_client(), binary() | list(), binary() | list(), delete_content_request()) ->
    {ok, delete_content_response(), tuple()} |
    {error, any()} |
    {error, delete_content_errors(), tuple()}.
delete_content(Client, ContentId, KnowledgeBaseId, Input) ->
    delete_content(Client, ContentId, KnowledgeBaseId, Input, []).

-spec delete_content(aws_client:aws_client(), binary() | list(), binary() | list(), delete_content_request(), proplists:proplist()) ->
    {ok, delete_content_response(), tuple()} |
    {error, any()} |
    {error, delete_content_errors(), tuple()}.
delete_content(Client, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
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

%% @doc Deletes the content association.
%%
%% For more information about content associations--what they are and when
%% they are used--see
%% Integrate Amazon Q in Connect with step-by-step guides:
%% https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
%% in the Amazon Connect
%% Administrator Guide.
-spec delete_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_content_association_request()) ->
    {ok, delete_content_association_response(), tuple()} |
    {error, any()} |
    {error, delete_content_association_errors(), tuple()}.
delete_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, Input) ->
    delete_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, Input, []).

-spec delete_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_content_association_request(), proplists:proplist()) ->
    {ok, delete_content_association_response(), tuple()} |
    {error, any()} |
    {error, delete_content_association_errors(), tuple()}.
delete_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/associations/", aws_util:encode_uri(ContentAssociationId), ""],
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

%% @doc Deletes the quick response import job.
-spec delete_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), delete_import_job_request()) ->
    {ok, delete_import_job_response(), tuple()} |
    {error, any()} |
    {error, delete_import_job_errors(), tuple()}.
delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input) ->
    delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input, []).

-spec delete_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), delete_import_job_request(), proplists:proplist()) ->
    {ok, delete_import_job_response(), tuple()} |
    {error, any()} |
    {error, delete_import_job_errors(), tuple()}.
delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs/", aws_util:encode_uri(ImportJobId), ""],
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

%% @doc Deletes the knowledge base.
%%
%% When you use this API to delete an external knowledge base such as
%% Salesforce or
%% ServiceNow, you must also delete the Amazon AppIntegrations:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
%% DataIntegration. This is because you can't reuse the DataIntegration
%% after it's been
%% associated with an external knowledge base. However, you can delete and
%% recreate it. See
%% DeleteDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
%% and CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% in the Amazon AppIntegrations API
%% Reference.
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
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), ""],
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

%% @doc Deletes an Amazon Q in Connect message template entirely or a
%% specific version of the
%% message template if version is supplied in the request.
%%
%% You can provide the message template
%% identifier as `&lt;message-template-id&gt;:&lt;versionNumber&gt;' to
%% delete a
%% specific version of the message template. If it is not supplied, the
%% message template and all
%% available versions will be deleted.
-spec delete_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_message_template_request()) ->
    {ok, delete_message_template_response(), tuple()} |
    {error, any()} |
    {error, delete_message_template_errors(), tuple()}.
delete_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    delete_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec delete_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_message_template_request(), proplists:proplist()) ->
    {ok, delete_message_template_response(), tuple()} |
    {error, any()} |
    {error, delete_message_template_errors(), tuple()}.
delete_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), ""],
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

%% @doc Deletes the attachment file from the Amazon Q in Connect message
%% template that is
%% referenced by `$LATEST' qualifier.
%%
%% Attachments on available message template
%% versions will remain unchanged.
-spec delete_message_template_attachment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_message_template_attachment_request()) ->
    {ok, delete_message_template_attachment_response(), tuple()} |
    {error, any()} |
    {error, delete_message_template_attachment_errors(), tuple()}.
delete_message_template_attachment(Client, AttachmentId, KnowledgeBaseId, MessageTemplateId, Input) ->
    delete_message_template_attachment(Client, AttachmentId, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec delete_message_template_attachment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_message_template_attachment_request(), proplists:proplist()) ->
    {ok, delete_message_template_attachment_response(), tuple()} |
    {error, any()} |
    {error, delete_message_template_attachment_errors(), tuple()}.
delete_message_template_attachment(Client, AttachmentId, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/attachments/", aws_util:encode_uri(AttachmentId), ""],
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

%% @doc Deletes a quick response.
-spec delete_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), delete_quick_response_request()) ->
    {ok, delete_quick_response_response(), tuple()} |
    {error, any()} |
    {error, delete_quick_response_errors(), tuple()}.
delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input) ->
    delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input, []).

-spec delete_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), delete_quick_response_request(), proplists:proplist()) ->
    {ok, delete_quick_response_response(), tuple()} |
    {error, any()} |
    {error, delete_quick_response_errors(), tuple()}.
delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
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

%% @doc Gets an Amazon Q in Connect AI Agent.
-spec get_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_agent_errors(), tuple()}.
get_a_i_agent(Client, AiAgentId, AssistantId)
  when is_map(Client) ->
    get_a_i_agent(Client, AiAgentId, AssistantId, #{}, #{}).

-spec get_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_agent_errors(), tuple()}.
get_a_i_agent(Client, AiAgentId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_a_i_agent(Client, AiAgentId, AssistantId, QueryMap, HeadersMap, []).

-spec get_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_agent_errors(), tuple()}.
get_a_i_agent(Client, AiAgentId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Q in Connect AI Guardrail.
-spec get_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_guardrail_errors(), tuple()}.
get_a_i_guardrail(Client, AiGuardrailId, AssistantId)
  when is_map(Client) ->
    get_a_i_guardrail(Client, AiGuardrailId, AssistantId, #{}, #{}).

-spec get_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_guardrail_errors(), tuple()}.
get_a_i_guardrail(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_a_i_guardrail(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap, []).

-spec get_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_a_i_guardrail_errors(), tuple()}.
get_a_i_guardrail(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets and Amazon Q in Connect AI Prompt.
-spec get_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, get_a_iprompt_errors(), tuple()}.
get_a_iprompt(Client, AiPromptId, AssistantId)
  when is_map(Client) ->
    get_a_iprompt(Client, AiPromptId, AssistantId, #{}, #{}).

-spec get_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, get_a_iprompt_errors(), tuple()}.
get_a_iprompt(Client, AiPromptId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_a_iprompt(Client, AiPromptId, AssistantId, QueryMap, HeadersMap, []).

-spec get_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, get_a_iprompt_errors(), tuple()}.
get_a_iprompt(Client, AiPromptId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an assistant.
-spec get_assistant(aws_client:aws_client(), binary() | list()) ->
    {ok, get_assistant_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_errors(), tuple()}.
get_assistant(Client, AssistantId)
  when is_map(Client) ->
    get_assistant(Client, AssistantId, #{}, #{}).

-spec get_assistant(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_assistant_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_errors(), tuple()}.
get_assistant(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assistant(Client, AssistantId, QueryMap, HeadersMap, []).

-spec get_assistant(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assistant_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_errors(), tuple()}.
get_assistant(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an assistant association.
-spec get_assistant_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_association_errors(), tuple()}.
get_assistant_association(Client, AssistantAssociationId, AssistantId)
  when is_map(Client) ->
    get_assistant_association(Client, AssistantAssociationId, AssistantId, #{}, #{}).

-spec get_assistant_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_association_errors(), tuple()}.
get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap, []).

-spec get_assistant_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assistant_association_response(), tuple()} |
    {error, any()} |
    {error, get_assistant_association_errors(), tuple()}.
get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations/", aws_util:encode_uri(AssistantAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves content, including a pre-signed URL to download the
%% content.
-spec get_content(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_content_response(), tuple()} |
    {error, any()} |
    {error, get_content_errors(), tuple()}.
get_content(Client, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    get_content(Client, ContentId, KnowledgeBaseId, #{}, #{}).

-spec get_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_content_response(), tuple()} |
    {error, any()} |
    {error, get_content_errors(), tuple()}.
get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_content_response(), tuple()} |
    {error, any()} |
    {error, get_content_errors(), tuple()}.
get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the content association.
%%
%% For more information about content associations--what they are and when
%% they are used--see
%% Integrate Amazon Q in Connect with step-by-step guides:
%% https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
%% in the Amazon Connect
%% Administrator Guide.
-spec get_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_content_association_response(), tuple()} |
    {error, any()} |
    {error, get_content_association_errors(), tuple()}.
get_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    get_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, #{}, #{}).

-spec get_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_content_association_response(), tuple()} |
    {error, any()} |
    {error, get_content_association_errors(), tuple()}.
get_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_content_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_content_association_response(), tuple()} |
    {error, any()} |
    {error, get_content_association_errors(), tuple()}.
get_content_association(Client, ContentAssociationId, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/associations/", aws_util:encode_uri(ContentAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves summary information about the content.
-spec get_content_summary(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_content_summary_response(), tuple()} |
    {error, any()} |
    {error, get_content_summary_errors(), tuple()}.
get_content_summary(Client, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    get_content_summary(Client, ContentId, KnowledgeBaseId, #{}, #{}).

-spec get_content_summary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_content_summary_response(), tuple()} |
    {error, any()} |
    {error, get_content_summary_errors(), tuple()}.
get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_content_summary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_content_summary_response(), tuple()} |
    {error, any()} |
    {error, get_content_summary_errors(), tuple()}.
get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the started import job.
-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ImportJobId, KnowledgeBaseId)
  when is_map(Client) ->
    get_import_job(Client, ImportJobId, KnowledgeBaseId, #{}, #{}).

-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs/", aws_util:encode_uri(ImportJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the knowledge base.
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
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the Amazon Q in Connect message template.
%%
%% The message template identifier can
%% contain an optional qualifier, for example,
%% `&lt;message-template-id&gt;:&lt;qualifier&gt;', which is either an
%% actual
%% version number or an Amazon Q Connect managed qualifier
%% `$ACTIVE_VERSION' |
%% `$LATEST'. If it is not supplied, then `$LATEST' is assumed
%% implicitly.
-spec get_message_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_message_template_response(), tuple()} |
    {error, any()} |
    {error, get_message_template_errors(), tuple()}.
get_message_template(Client, KnowledgeBaseId, MessageTemplateId)
  when is_map(Client) ->
    get_message_template(Client, KnowledgeBaseId, MessageTemplateId, #{}, #{}).

-spec get_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_message_template_response(), tuple()} |
    {error, any()} |
    {error, get_message_template_errors(), tuple()}.
get_message_template(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_message_template(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap, []).

-spec get_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_message_template_response(), tuple()} |
    {error, any()} |
    {error, get_message_template_errors(), tuple()}.
get_message_template(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves next message on an Amazon Q in Connect session.
-spec get_next_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_next_message_response(), tuple()} |
    {error, any()} |
    {error, get_next_message_errors(), tuple()}.
get_next_message(Client, AssistantId, SessionId, NextMessageToken)
  when is_map(Client) ->
    get_next_message(Client, AssistantId, SessionId, NextMessageToken, #{}, #{}).

-spec get_next_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_next_message_response(), tuple()} |
    {error, any()} |
    {error, get_next_message_errors(), tuple()}.
get_next_message(Client, AssistantId, SessionId, NextMessageToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_next_message(Client, AssistantId, SessionId, NextMessageToken, QueryMap, HeadersMap, []).

-spec get_next_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_next_message_response(), tuple()} |
    {error, any()} |
    {error, get_next_message_errors(), tuple()}.
get_next_message(Client, AssistantId, SessionId, NextMessageToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/messages/next"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextMessageToken">>, NextMessageToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the quick response.
-spec get_quick_response(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_quick_response_response(), tuple()} |
    {error, any()} |
    {error, get_quick_response_errors(), tuple()}.
get_quick_response(Client, KnowledgeBaseId, QuickResponseId)
  when is_map(Client) ->
    get_quick_response(Client, KnowledgeBaseId, QuickResponseId, #{}, #{}).

-spec get_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_quick_response_response(), tuple()} |
    {error, any()} |
    {error, get_quick_response_errors(), tuple()}.
get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap, []).

-spec get_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_quick_response_response(), tuple()} |
    {error, any()} |
    {error, get_quick_response_errors(), tuple()}.
get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
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
%% This API will be discontinued starting June 1, 2024.
%%
%% To receive generative responses
%% after March 1, 2024, you will need to create a new Assistant in the Amazon
%% Connect
%% console and integrate the Amazon Q in Connect JavaScript library
%% (amazon-q-connectjs) into
%% your applications.
%%
%% Retrieves recommendations for the specified session. To avoid retrieving
%% the same
%% recommendations in subsequent calls, use NotifyRecommendationsReceived:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_NotifyRecommendationsReceived.html.
%% This API supports long-polling behavior with the
%% `waitTimeSeconds' parameter. Short poll is the default behavior and
%% only returns
%% recommendations already available. To perform a manual query against an
%% assistant, use QueryAssistant:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_QueryAssistant.html.
-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, AssistantId, SessionId)
  when is_map(Client) ->
    get_recommendations(Client, AssistantId, SessionId, #{}, #{}).

-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap, []).

-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/recommendations"],
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
        {<<"waitTimeSeconds">>, maps:get(<<"waitTimeSeconds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information for a specified session.
-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, AssistantId, SessionId)
  when is_map(Client) ->
    get_session(Client, AssistantId, SessionId, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List AI Agent versions.
-spec list_a_i_agent_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_a_i_agent_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agent_versions_errors(), tuple()}.
list_a_i_agent_versions(Client, AiAgentId, AssistantId)
  when is_map(Client) ->
    list_a_i_agent_versions(Client, AiAgentId, AssistantId, #{}, #{}).

-spec list_a_i_agent_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_a_i_agent_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agent_versions_errors(), tuple()}.
list_a_i_agent_versions(Client, AiAgentId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_i_agent_versions(Client, AiAgentId, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_i_agent_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_i_agent_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agent_versions_errors(), tuple()}.
list_a_i_agent_versions(Client, AiAgentId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), "/versions"],
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
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists AI Agents.
-spec list_a_i_agents(aws_client:aws_client(), binary() | list()) ->
    {ok, list_a_i_agents_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agents_errors(), tuple()}.
list_a_i_agents(Client, AssistantId)
  when is_map(Client) ->
    list_a_i_agents(Client, AssistantId, #{}, #{}).

-spec list_a_i_agents(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_a_i_agents_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agents_errors(), tuple()}.
list_a_i_agents(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_i_agents(Client, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_i_agents(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_i_agents_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_agents_errors(), tuple()}.
list_a_i_agents(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents"],
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
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists AI Guardrail versions.
-spec list_a_i_guardrail_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_a_i_guardrail_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrail_versions_errors(), tuple()}.
list_a_i_guardrail_versions(Client, AiGuardrailId, AssistantId)
  when is_map(Client) ->
    list_a_i_guardrail_versions(Client, AiGuardrailId, AssistantId, #{}, #{}).

-spec list_a_i_guardrail_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_a_i_guardrail_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrail_versions_errors(), tuple()}.
list_a_i_guardrail_versions(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_i_guardrail_versions(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_i_guardrail_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_i_guardrail_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrail_versions_errors(), tuple()}.
list_a_i_guardrail_versions(Client, AiGuardrailId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), "/versions"],
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

%% @doc Lists the AI Guardrails available on the Amazon Q in Connect
%% assistant.
-spec list_a_i_guardrails(aws_client:aws_client(), binary() | list()) ->
    {ok, list_a_i_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrails_errors(), tuple()}.
list_a_i_guardrails(Client, AssistantId)
  when is_map(Client) ->
    list_a_i_guardrails(Client, AssistantId, #{}, #{}).

-spec list_a_i_guardrails(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_a_i_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrails_errors(), tuple()}.
list_a_i_guardrails(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_i_guardrails(Client, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_i_guardrails(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_i_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_a_i_guardrails_errors(), tuple()}.
list_a_i_guardrails(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails"],
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

%% @doc Lists AI Prompt versions.
-spec list_a_iprompt_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_a_iprompt_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompt_versions_errors(), tuple()}.
list_a_iprompt_versions(Client, AiPromptId, AssistantId)
  when is_map(Client) ->
    list_a_iprompt_versions(Client, AiPromptId, AssistantId, #{}, #{}).

-spec list_a_iprompt_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_a_iprompt_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompt_versions_errors(), tuple()}.
list_a_iprompt_versions(Client, AiPromptId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_iprompt_versions(Client, AiPromptId, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_iprompt_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_iprompt_versions_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompt_versions_errors(), tuple()}.
list_a_iprompt_versions(Client, AiPromptId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), "/versions"],
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
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AI Prompts available on the Amazon Q in Connect assistant.
-spec list_a_iprompts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_a_iprompts_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompts_errors(), tuple()}.
list_a_iprompts(Client, AssistantId)
  when is_map(Client) ->
    list_a_iprompts(Client, AssistantId, #{}, #{}).

-spec list_a_iprompts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_a_iprompts_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompts_errors(), tuple()}.
list_a_iprompts(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_a_iprompts(Client, AssistantId, QueryMap, HeadersMap, []).

-spec list_a_iprompts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_a_iprompts_response(), tuple()} |
    {error, any()} |
    {error, list_a_iprompts_errors(), tuple()}.
list_a_iprompts(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts"],
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
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about assistant associations.
-spec list_assistant_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_assistant_associations_response(), tuple()} |
    {error, any()} |
    {error, list_assistant_associations_errors(), tuple()}.
list_assistant_associations(Client, AssistantId)
  when is_map(Client) ->
    list_assistant_associations(Client, AssistantId, #{}, #{}).

-spec list_assistant_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_assistant_associations_response(), tuple()} |
    {error, any()} |
    {error, list_assistant_associations_errors(), tuple()}.
list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap, []).

-spec list_assistant_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assistant_associations_response(), tuple()} |
    {error, any()} |
    {error, list_assistant_associations_errors(), tuple()}.
list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations"],
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

%% @doc Lists information about assistants.
-spec list_assistants(aws_client:aws_client()) ->
    {ok, list_assistants_response(), tuple()} |
    {error, any()} |
    {error, list_assistants_errors(), tuple()}.
list_assistants(Client)
  when is_map(Client) ->
    list_assistants(Client, #{}, #{}).

-spec list_assistants(aws_client:aws_client(), map(), map()) ->
    {ok, list_assistants_response(), tuple()} |
    {error, any()} |
    {error, list_assistants_errors(), tuple()}.
list_assistants(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assistants(Client, QueryMap, HeadersMap, []).

-spec list_assistants(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_assistants_response(), tuple()} |
    {error, any()} |
    {error, list_assistants_errors(), tuple()}.
list_assistants(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants"],
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

%% @doc Lists the content associations.
%%
%% For more information about content associations--what they are and when
%% they are used--see
%% Integrate Amazon Q in Connect with step-by-step guides:
%% https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
%% in the Amazon Connect
%% Administrator Guide.
-spec list_content_associations(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_content_associations_response(), tuple()} |
    {error, any()} |
    {error, list_content_associations_errors(), tuple()}.
list_content_associations(Client, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    list_content_associations(Client, ContentId, KnowledgeBaseId, #{}, #{}).

-spec list_content_associations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_content_associations_response(), tuple()} |
    {error, any()} |
    {error, list_content_associations_errors(), tuple()}.
list_content_associations(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_content_associations(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec list_content_associations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_content_associations_response(), tuple()} |
    {error, any()} |
    {error, list_content_associations_errors(), tuple()}.
list_content_associations(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/associations"],
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

%% @doc Lists the content.
-spec list_contents(aws_client:aws_client(), binary() | list()) ->
    {ok, list_contents_response(), tuple()} |
    {error, any()} |
    {error, list_contents_errors(), tuple()}.
list_contents(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_contents(Client, KnowledgeBaseId, #{}, #{}).

-spec list_contents(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_contents_response(), tuple()} |
    {error, any()} |
    {error, list_contents_errors(), tuple()}.
list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec list_contents(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_contents_response(), tuple()} |
    {error, any()} |
    {error, list_contents_errors(), tuple()}.
list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents"],
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

%% @doc Lists information about import jobs.
-spec list_import_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_import_jobs_errors(), tuple()}.
list_import_jobs(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_import_jobs(Client, KnowledgeBaseId, #{}, #{}).

-spec list_import_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_import_jobs_errors(), tuple()}.
list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec list_import_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_import_jobs_errors(), tuple()}.
list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs"],
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

%% @doc Lists the knowledge bases.
-spec list_knowledge_bases(aws_client:aws_client()) ->
    {ok, list_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_bases_errors(), tuple()}.
list_knowledge_bases(Client)
  when is_map(Client) ->
    list_knowledge_bases(Client, #{}, #{}).

-spec list_knowledge_bases(aws_client:aws_client(), map(), map()) ->
    {ok, list_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_bases_errors(), tuple()}.
list_knowledge_bases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_knowledge_bases(Client, QueryMap, HeadersMap, []).

-spec list_knowledge_bases(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_knowledge_bases_response(), tuple()} |
    {error, any()} |
    {error, list_knowledge_bases_errors(), tuple()}.
list_knowledge_bases(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases"],
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

%% @doc Lists all the available versions for the specified Amazon Q in
%% Connect message
%% template.
-spec list_message_template_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_message_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_message_template_versions_errors(), tuple()}.
list_message_template_versions(Client, KnowledgeBaseId, MessageTemplateId)
  when is_map(Client) ->
    list_message_template_versions(Client, KnowledgeBaseId, MessageTemplateId, #{}, #{}).

-spec list_message_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_message_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_message_template_versions_errors(), tuple()}.
list_message_template_versions(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_message_template_versions(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap, []).

-spec list_message_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_message_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_message_template_versions_errors(), tuple()}.
list_message_template_versions(Client, KnowledgeBaseId, MessageTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/versions"],
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

%% @doc Lists all the available Amazon Q in Connect message templates for the
%% specified knowledge
%% base.
-spec list_message_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_message_templates_response(), tuple()} |
    {error, any()} |
    {error, list_message_templates_errors(), tuple()}.
list_message_templates(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_message_templates(Client, KnowledgeBaseId, #{}, #{}).

-spec list_message_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_message_templates_response(), tuple()} |
    {error, any()} |
    {error, list_message_templates_errors(), tuple()}.
list_message_templates(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_message_templates(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec list_message_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_message_templates_response(), tuple()} |
    {error, any()} |
    {error, list_message_templates_errors(), tuple()}.
list_message_templates(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates"],
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

%% @doc Lists messages on an Amazon Q in Connect session.
-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, AssistantId, SessionId)
  when is_map(Client) ->
    list_messages(Client, AssistantId, SessionId, #{}, #{}).

-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, AssistantId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_messages(Client, AssistantId, SessionId, QueryMap, HeadersMap, []).

-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, AssistantId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/messages"],
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

%% @doc Lists information about quick response.
-spec list_quick_responses(aws_client:aws_client(), binary() | list()) ->
    {ok, list_quick_responses_response(), tuple()} |
    {error, any()} |
    {error, list_quick_responses_errors(), tuple()}.
list_quick_responses(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_quick_responses(Client, KnowledgeBaseId, #{}, #{}).

-spec list_quick_responses(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_quick_responses_response(), tuple()} |
    {error, any()} |
    {error, list_quick_responses_errors(), tuple()}.
list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

-spec list_quick_responses(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_quick_responses_response(), tuple()} |
    {error, any()} |
    {error, list_quick_responses_errors(), tuple()}.
list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses"],
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

%% @doc Lists the tags for the specified resource.
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

%% @doc Removes the specified recommendations from the specified
%% assistant's queue of newly
%% available recommendations.
%%
%% You can use this API in conjunction with GetRecommendations:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html
%% and a `waitTimeSeconds' input for long-polling
%% behavior and avoiding duplicate recommendations.
-spec notify_recommendations_received(aws_client:aws_client(), binary() | list(), binary() | list(), notify_recommendations_received_request()) ->
    {ok, notify_recommendations_received_response(), tuple()} |
    {error, any()} |
    {error, notify_recommendations_received_errors(), tuple()}.
notify_recommendations_received(Client, AssistantId, SessionId, Input) ->
    notify_recommendations_received(Client, AssistantId, SessionId, Input, []).

-spec notify_recommendations_received(aws_client:aws_client(), binary() | list(), binary() | list(), notify_recommendations_received_request(), proplists:proplist()) ->
    {ok, notify_recommendations_received_response(), tuple()} |
    {error, any()} |
    {error, notify_recommendations_received_errors(), tuple()}.
notify_recommendations_received(Client, AssistantId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/recommendations/notify"],
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

%% @doc Provides feedback against the specified assistant for the specified
%% target.
%%
%% This API only
%% supports generative targets.
-spec put_feedback(aws_client:aws_client(), binary() | list(), put_feedback_request()) ->
    {ok, put_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, AssistantId, Input) ->
    put_feedback(Client, AssistantId, Input, []).

-spec put_feedback(aws_client:aws_client(), binary() | list(), put_feedback_request(), proplists:proplist()) ->
    {ok, put_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, AssistantId, Input0, Options0) ->
    Method = put,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/feedback"],
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
%% This API will be discontinued starting June 1, 2024.
%%
%% To receive generative responses
%% after March 1, 2024, you will need to create a new Assistant in the Amazon
%% Connect
%% console and integrate the Amazon Q in Connect JavaScript library
%% (amazon-q-connectjs) into
%% your applications.
%%
%% Performs a manual search against the specified assistant. To retrieve
%% recommendations for
%% an assistant, use GetRecommendations:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html.
-spec query_assistant(aws_client:aws_client(), binary() | list(), query_assistant_request()) ->
    {ok, query_assistant_response(), tuple()} |
    {error, any()} |
    {error, query_assistant_errors(), tuple()}.
query_assistant(Client, AssistantId, Input) ->
    query_assistant(Client, AssistantId, Input, []).

-spec query_assistant(aws_client:aws_client(), binary() | list(), query_assistant_request(), proplists:proplist()) ->
    {ok, query_assistant_response(), tuple()} |
    {error, any()} |
    {error, query_assistant_errors(), tuple()}.
query_assistant(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/query"],
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

%% @doc Removes the AI Agent that is set for use by default on an Amazon Q in
%% Connect
%% Assistant.
-spec remove_assistant_a_i_agent(aws_client:aws_client(), binary() | list(), remove_assistant_a_i_agent_request()) ->
    {ok, remove_assistant_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, remove_assistant_a_i_agent_errors(), tuple()}.
remove_assistant_a_i_agent(Client, AssistantId, Input) ->
    remove_assistant_a_i_agent(Client, AssistantId, Input, []).

-spec remove_assistant_a_i_agent(aws_client:aws_client(), binary() | list(), remove_assistant_a_i_agent_request(), proplists:proplist()) ->
    {ok, remove_assistant_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, remove_assistant_a_i_agent_errors(), tuple()}.
remove_assistant_a_i_agent(Client, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagentConfiguration"],
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
                     {<<"aiAgentType">>, <<"aiAgentType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a URI template from a knowledge base.
-spec remove_knowledge_base_template_uri(aws_client:aws_client(), binary() | list(), remove_knowledge_base_template_uri_request()) ->
    {ok, remove_knowledge_base_template_uri_response(), tuple()} |
    {error, any()} |
    {error, remove_knowledge_base_template_uri_errors(), tuple()}.
remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input) ->
    remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input, []).

-spec remove_knowledge_base_template_uri(aws_client:aws_client(), binary() | list(), remove_knowledge_base_template_uri_request(), proplists:proplist()) ->
    {ok, remove_knowledge_base_template_uri_response(), tuple()} |
    {error, any()} |
    {error, remove_knowledge_base_template_uri_errors(), tuple()}.
remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/templateUri"],
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

%% @doc Renders the Amazon Q in Connect message template based on the
%% attribute values provided
%% and generates the message content.
%%
%% For any variable present in the message template, if the
%% attribute value is neither provided in the attribute request parameter nor
%% the default
%% attribute of the message template, the rendered message content will keep
%% the variable
%% placeholder as it is and return the attribute keys that are missing.
-spec render_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), render_message_template_request()) ->
    {ok, render_message_template_response(), tuple()} |
    {error, any()} |
    {error, render_message_template_errors(), tuple()}.
render_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    render_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec render_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), render_message_template_request(), proplists:proplist()) ->
    {ok, render_message_template_response(), tuple()} |
    {error, any()} |
    {error, render_message_template_errors(), tuple()}.
render_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/render"],
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

%% @doc Searches for content in a specified knowledge base.
%%
%% Can be used to get a specific content
%% resource by its name.
-spec search_content(aws_client:aws_client(), binary() | list(), search_content_request()) ->
    {ok, search_content_response(), tuple()} |
    {error, any()} |
    {error, search_content_errors(), tuple()}.
search_content(Client, KnowledgeBaseId, Input) ->
    search_content(Client, KnowledgeBaseId, Input, []).

-spec search_content(aws_client:aws_client(), binary() | list(), search_content_request(), proplists:proplist()) ->
    {ok, search_content_response(), tuple()} |
    {error, any()} |
    {error, search_content_errors(), tuple()}.
search_content(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/search"],
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

%% @doc Searches for Amazon Q in Connect message templates in the specified
%% knowledge base.
-spec search_message_templates(aws_client:aws_client(), binary() | list(), search_message_templates_request()) ->
    {ok, search_message_templates_response(), tuple()} |
    {error, any()} |
    {error, search_message_templates_errors(), tuple()}.
search_message_templates(Client, KnowledgeBaseId, Input) ->
    search_message_templates(Client, KnowledgeBaseId, Input, []).

-spec search_message_templates(aws_client:aws_client(), binary() | list(), search_message_templates_request(), proplists:proplist()) ->
    {ok, search_message_templates_response(), tuple()} |
    {error, any()} |
    {error, search_message_templates_errors(), tuple()}.
search_message_templates(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/search/messageTemplates"],
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

%% @doc Searches existing Amazon Q in Connect quick responses in an Amazon Q
%% in Connect knowledge base.
-spec search_quick_responses(aws_client:aws_client(), binary() | list(), search_quick_responses_request()) ->
    {ok, search_quick_responses_response(), tuple()} |
    {error, any()} |
    {error, search_quick_responses_errors(), tuple()}.
search_quick_responses(Client, KnowledgeBaseId, Input) ->
    search_quick_responses(Client, KnowledgeBaseId, Input, []).

-spec search_quick_responses(aws_client:aws_client(), binary() | list(), search_quick_responses_request(), proplists:proplist()) ->
    {ok, search_quick_responses_response(), tuple()} |
    {error, any()} |
    {error, search_quick_responses_errors(), tuple()}.
search_quick_responses(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/search/quickResponses"],
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

%% @doc Searches for sessions.
-spec search_sessions(aws_client:aws_client(), binary() | list(), search_sessions_request()) ->
    {ok, search_sessions_response(), tuple()} |
    {error, any()} |
    {error, search_sessions_errors(), tuple()}.
search_sessions(Client, AssistantId, Input) ->
    search_sessions(Client, AssistantId, Input, []).

-spec search_sessions(aws_client:aws_client(), binary() | list(), search_sessions_request(), proplists:proplist()) ->
    {ok, search_sessions_response(), tuple()} |
    {error, any()} |
    {error, search_sessions_errors(), tuple()}.
search_sessions(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/searchSessions"],
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

%% @doc Submits a message to the Amazon Q in Connect session.
-spec send_message(aws_client:aws_client(), binary() | list(), binary() | list(), send_message_request()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, AssistantId, SessionId, Input) ->
    send_message(Client, AssistantId, SessionId, Input, []).

-spec send_message(aws_client:aws_client(), binary() | list(), binary() | list(), send_message_request(), proplists:proplist()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, AssistantId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/message"],
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

%% @doc Get a URL to upload content to a knowledge base.
%%
%% To upload content, first make a PUT
%% request to the returned URL with your file, making sure to include the
%% required headers. Then
%% use CreateContent:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_CreateContent.html
%% to
%% finalize the content creation process or UpdateContent:
%% https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_UpdateContent.html
%% to
%% modify an existing resource. You can only upload content to a knowledge
%% base of type
%% CUSTOM.
-spec start_content_upload(aws_client:aws_client(), binary() | list(), start_content_upload_request()) ->
    {ok, start_content_upload_response(), tuple()} |
    {error, any()} |
    {error, start_content_upload_errors(), tuple()}.
start_content_upload(Client, KnowledgeBaseId, Input) ->
    start_content_upload(Client, KnowledgeBaseId, Input, []).

-spec start_content_upload(aws_client:aws_client(), binary() | list(), start_content_upload_request(), proplists:proplist()) ->
    {ok, start_content_upload_response(), tuple()} |
    {error, any()} |
    {error, start_content_upload_errors(), tuple()}.
start_content_upload(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/upload"],
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

%% @doc Start an asynchronous job to import Amazon Q in Connect resources
%% from an uploaded source file.
%%
%% Before calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
%% to
%% upload an asset that contains the resource data.
%%
%% For importing Amazon Q in Connect quick responses, you need to upload a
%% csv file including the
%% quick responses. For information about how to format the csv file for
%% importing quick
%% responses, see Import quick responses:
%% https://docs.aws.amazon.com/console/connect/quick-responses/add-data.
-spec start_import_job(aws_client:aws_client(), binary() | list(), start_import_job_request()) ->
    {ok, start_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_import_job_errors(), tuple()}.
start_import_job(Client, KnowledgeBaseId, Input) ->
    start_import_job(Client, KnowledgeBaseId, Input, []).

-spec start_import_job(aws_client:aws_client(), binary() | list(), start_import_job_request(), proplists:proplist()) ->
    {ok, start_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_import_job_errors(), tuple()}.
start_import_job(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs"],
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

%% @doc Adds the specified tags to the specified resource.
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Updates an AI Agent.
-spec update_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_i_agent_request()) ->
    {ok, update_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, update_a_i_agent_errors(), tuple()}.
update_a_i_agent(Client, AiAgentId, AssistantId, Input) ->
    update_a_i_agent(Client, AiAgentId, AssistantId, Input, []).

-spec update_a_i_agent(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_i_agent_request(), proplists:proplist()) ->
    {ok, update_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, update_a_i_agent_errors(), tuple()}.
update_a_i_agent(Client, AiAgentId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagents/", aws_util:encode_uri(AiAgentId), ""],
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

%% @doc Updates an AI Guardrail.
-spec update_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_i_guardrail_request()) ->
    {ok, update_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, update_a_i_guardrail_errors(), tuple()}.
update_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input) ->
    update_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input, []).

-spec update_a_i_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_i_guardrail_request(), proplists:proplist()) ->
    {ok, update_a_i_guardrail_response(), tuple()} |
    {error, any()} |
    {error, update_a_i_guardrail_errors(), tuple()}.
update_a_i_guardrail(Client, AiGuardrailId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiguardrails/", aws_util:encode_uri(AiGuardrailId), ""],
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

%% @doc Updates an AI Prompt.
-spec update_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_iprompt_request()) ->
    {ok, update_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, update_a_iprompt_errors(), tuple()}.
update_a_iprompt(Client, AiPromptId, AssistantId, Input) ->
    update_a_iprompt(Client, AiPromptId, AssistantId, Input, []).

-spec update_a_iprompt(aws_client:aws_client(), binary() | list(), binary() | list(), update_a_iprompt_request(), proplists:proplist()) ->
    {ok, update_a_iprompt_response(), tuple()} |
    {error, any()} |
    {error, update_a_iprompt_errors(), tuple()}.
update_a_iprompt(Client, AiPromptId, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiprompts/", aws_util:encode_uri(AiPromptId), ""],
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

%% @doc Updates the AI Agent that is set for use by default on an Amazon Q in
%% Connect
%% Assistant.
-spec update_assistant_a_i_agent(aws_client:aws_client(), binary() | list(), update_assistant_a_i_agent_request()) ->
    {ok, update_assistant_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, update_assistant_a_i_agent_errors(), tuple()}.
update_assistant_a_i_agent(Client, AssistantId, Input) ->
    update_assistant_a_i_agent(Client, AssistantId, Input, []).

-spec update_assistant_a_i_agent(aws_client:aws_client(), binary() | list(), update_assistant_a_i_agent_request(), proplists:proplist()) ->
    {ok, update_assistant_a_i_agent_response(), tuple()} |
    {error, any()} |
    {error, update_assistant_a_i_agent_errors(), tuple()}.
update_assistant_a_i_agent(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/aiagentConfiguration"],
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

%% @doc Updates information about the content.
-spec update_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_content_request()) ->
    {ok, update_content_response(), tuple()} |
    {error, any()} |
    {error, update_content_errors(), tuple()}.
update_content(Client, ContentId, KnowledgeBaseId, Input) ->
    update_content(Client, ContentId, KnowledgeBaseId, Input, []).

-spec update_content(aws_client:aws_client(), binary() | list(), binary() | list(), update_content_request(), proplists:proplist()) ->
    {ok, update_content_response(), tuple()} |
    {error, any()} |
    {error, update_content_errors(), tuple()}.
update_content(Client, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
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

%% @doc Updates the template URI of a knowledge base.
%%
%% This is only supported for knowledge bases
%% of type EXTERNAL. Include a single variable in `${variable}' format;
%% this
%% interpolated by Amazon Q in Connect using ingested content. For example,
%% if you ingest a Salesforce
%% article, it has an `Id' value, and you can set the template URI to
%% `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view'.
-spec update_knowledge_base_template_uri(aws_client:aws_client(), binary() | list(), update_knowledge_base_template_uri_request()) ->
    {ok, update_knowledge_base_template_uri_response(), tuple()} |
    {error, any()} |
    {error, update_knowledge_base_template_uri_errors(), tuple()}.
update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input) ->
    update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input, []).

-spec update_knowledge_base_template_uri(aws_client:aws_client(), binary() | list(), update_knowledge_base_template_uri_request(), proplists:proplist()) ->
    {ok, update_knowledge_base_template_uri_response(), tuple()} |
    {error, any()} |
    {error, update_knowledge_base_template_uri_errors(), tuple()}.
update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/templateUri"],
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

%% @doc Updates the Amazon Q in Connect message template.
%%
%% Partial update is supported. If any
%% field is not supplied, it will remain unchanged for the message template
%% that is referenced by
%% the `$LATEST' qualifier. Any modification will only apply to the
%% message template
%% that is referenced by the `$LATEST' qualifier. The fields for all
%% available
%% versions will remain unchanged.
-spec update_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_message_template_request()) ->
    {ok, update_message_template_response(), tuple()} |
    {error, any()} |
    {error, update_message_template_errors(), tuple()}.
update_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    update_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec update_message_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_message_template_request(), proplists:proplist()) ->
    {ok, update_message_template_response(), tuple()} |
    {error, any()} |
    {error, update_message_template_errors(), tuple()}.
update_message_template(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), ""],
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

%% @doc Updates the Amazon Q in Connect message template metadata.
%%
%% Note that any modification to
%% the message template’s name, description and grouping configuration will
%% applied to the
%% message template pointed by the `$LATEST' qualifier and all available
%% versions.
%% Partial update is supported. If any field is not supplied, it will remain
%% unchanged for the
%% message template.
-spec update_message_template_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_message_template_metadata_request()) ->
    {ok, update_message_template_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_message_template_metadata_errors(), tuple()}.
update_message_template_metadata(Client, KnowledgeBaseId, MessageTemplateId, Input) ->
    update_message_template_metadata(Client, KnowledgeBaseId, MessageTemplateId, Input, []).

-spec update_message_template_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_message_template_metadata_request(), proplists:proplist()) ->
    {ok, update_message_template_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_message_template_metadata_errors(), tuple()}.
update_message_template_metadata(Client, KnowledgeBaseId, MessageTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/messageTemplates/", aws_util:encode_uri(MessageTemplateId), "/metadata"],
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

%% @doc Updates an existing Amazon Q in Connect quick response.
-spec update_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_response_request()) ->
    {ok, update_quick_response_response(), tuple()} |
    {error, any()} |
    {error, update_quick_response_errors(), tuple()}.
update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input) ->
    update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input, []).

-spec update_quick_response(aws_client:aws_client(), binary() | list(), binary() | list(), update_quick_response_request(), proplists:proplist()) ->
    {ok, update_quick_response_response(), tuple()} |
    {error, any()} |
    {error, update_quick_response_errors(), tuple()}.
update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
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

%% @doc Updates a session.
%%
%% A session is a contextual container used for generating
%% recommendations. Amazon Connect updates the existing Amazon Q in Connect
%% session for each contact on
%% which Amazon Q in Connect is enabled.
-spec update_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_session_request()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, AssistantId, SessionId, Input) ->
    update_session(Client, AssistantId, SessionId, Input, []).

-spec update_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_session_request(), proplists:proplist()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, AssistantId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), ""],
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

%% @doc Updates the data stored on an Amazon Q in Connect Session.
-spec update_session_data(aws_client:aws_client(), binary() | list(), binary() | list(), update_session_data_request()) ->
    {ok, update_session_data_response(), tuple()} |
    {error, any()} |
    {error, update_session_data_errors(), tuple()}.
update_session_data(Client, AssistantId, SessionId, Input) ->
    update_session_data(Client, AssistantId, SessionId, Input, []).

-spec update_session_data(aws_client:aws_client(), binary() | list(), binary() | list(), update_session_data_request(), proplists:proplist()) ->
    {ok, update_session_data_response(), tuple()} |
    {error, any()} |
    {error, update_session_data_errors(), tuple()}.
update_session_data(Client, AssistantId, SessionId, Input0, Options0) ->
    Method = patch,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/data"],
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
    Client1 = Client#{service => <<"wisdom">>},
    Host = build_host(<<"wisdom">>, Client1),
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
