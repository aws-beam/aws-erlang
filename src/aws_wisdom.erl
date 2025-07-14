%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect Wisdom delivers agents the information they need to
%% solve customer issues as they're
%% actively speaking with customers.
%%
%% Agents can search across connected repositories from within
%% their agent desktop to find answers quickly. Use Amazon Connect Wisdom to
%% create an assistant and a
%% knowledge base, for example, or manage content by uploading custom files.
-module(aws_wisdom).

-export([create_assistant/2,
         create_assistant/3,
         create_assistant_association/3,
         create_assistant_association/4,
         create_content/3,
         create_content/4,
         create_knowledge_base/2,
         create_knowledge_base/3,
         create_quick_response/3,
         create_quick_response/4,
         create_session/3,
         create_session/4,
         delete_assistant/3,
         delete_assistant/4,
         delete_assistant_association/4,
         delete_assistant_association/5,
         delete_content/4,
         delete_content/5,
         delete_import_job/4,
         delete_import_job/5,
         delete_knowledge_base/3,
         delete_knowledge_base/4,
         delete_quick_response/4,
         delete_quick_response/5,
         get_assistant/2,
         get_assistant/4,
         get_assistant/5,
         get_assistant_association/3,
         get_assistant_association/5,
         get_assistant_association/6,
         get_content/3,
         get_content/5,
         get_content/6,
         get_content_summary/3,
         get_content_summary/5,
         get_content_summary/6,
         get_import_job/3,
         get_import_job/5,
         get_import_job/6,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         get_quick_response/3,
         get_quick_response/5,
         get_quick_response/6,
         get_recommendations/3,
         get_recommendations/5,
         get_recommendations/6,
         get_session/3,
         get_session/5,
         get_session/6,
         list_assistant_associations/2,
         list_assistant_associations/4,
         list_assistant_associations/5,
         list_assistants/1,
         list_assistants/3,
         list_assistants/4,
         list_contents/2,
         list_contents/4,
         list_contents/5,
         list_import_jobs/2,
         list_import_jobs/4,
         list_import_jobs/5,
         list_knowledge_bases/1,
         list_knowledge_bases/3,
         list_knowledge_bases/4,
         list_quick_responses/2,
         list_quick_responses/4,
         list_quick_responses/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         notify_recommendations_received/4,
         notify_recommendations_received/5,
         query_assistant/3,
         query_assistant/4,
         remove_knowledge_base_template_uri/3,
         remove_knowledge_base_template_uri/4,
         search_content/3,
         search_content/4,
         search_quick_responses/3,
         search_quick_responses/4,
         search_sessions/3,
         search_sessions/4,
         start_content_upload/3,
         start_content_upload/4,
         start_import_job/3,
         start_import_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_content/4,
         update_content/5,
         update_knowledge_base_template_uri/3,
         update_knowledge_base_template_uri/4,
         update_quick_response/4,
         update_quick_response/5]).

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
%% update_knowledge_base_template_uri_request() :: #{
%%   <<"templateUri">> := string()
%% }
-type update_knowledge_base_template_uri_request() :: #{binary() => any()}.


%% Example:
%% query_assistant_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> := list(result_data())
%% }
-type query_assistant_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


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
%% get_session_response() :: #{
%%   <<"session">> => session_data()
%% }
-type get_session_response() :: #{binary() => any()}.


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
%%   <<"filters">> => list(quick_response_filter_field()),
%%   <<"orderOnField">> => quick_response_order_field(),
%%   <<"queries">> => list(quick_response_query_field())
%% }
-type quick_response_search_expression() :: #{binary() => any()}.


%% Example:
%% highlight() :: #{
%%   <<"beginOffsetInclusive">> => integer(),
%%   <<"endOffsetExclusive">> => integer()
%% }
-type highlight() :: #{binary() => any()}.


%% Example:
%% app_integrations_configuration() :: #{
%%   <<"appIntegrationArn">> => string(),
%%   <<"objectFields">> => list(string())
%% }
-type app_integrations_configuration() :: #{binary() => any()}.


%% Example:
%% list_contents_response() :: #{
%%   <<"contentSummaries">> := list(content_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_contents_response() :: #{binary() => any()}.


%% Example:
%% quick_response_filter_field() :: #{
%%   <<"includeNoExistence">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"values">> => list(string())
%% }
-type quick_response_filter_field() :: #{binary() => any()}.


%% Example:
%% external_source_configuration() :: #{
%%   <<"configuration">> => list(),
%%   <<"source">> => string()
%% }
-type external_source_configuration() :: #{binary() => any()}.


%% Example:
%% recommendation_data() :: #{
%%   <<"document">> => document(),
%%   <<"recommendationId">> => [string()],
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
%% delete_assistant_association_request() :: #{}
-type delete_assistant_association_request() :: #{}.


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
%% delete_knowledge_base_response() :: #{}
-type delete_knowledge_base_response() :: #{}.


%% Example:
%% create_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type create_content_response() :: #{binary() => any()}.


%% Example:
%% get_assistant_response() :: #{
%%   <<"assistant">> => assistant_data()
%% }
-type get_assistant_response() :: #{binary() => any()}.


%% Example:
%% get_recommendations_response() :: #{
%%   <<"recommendations">> := list(recommendation_data()),
%%   <<"triggers">> => list(recommendation_trigger())
%% }
-type get_recommendations_response() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type request_timeout_exception() :: #{binary() => any()}.


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
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_assistant_association_response() :: #{
%%   <<"assistantAssociation">> => assistant_association_data()
%% }
-type get_assistant_association_response() :: #{binary() => any()}.


%% Example:
%% create_quick_response_request() :: #{
%%   <<"channels">> => list(string()),
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
%% connect_configuration() :: #{
%%   <<"instanceId">> => string()
%% }
-type connect_configuration() :: #{binary() => any()}.


%% Example:
%% search_content_response() :: #{
%%   <<"contentSummaries">> := list(content_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_content_response() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.


%% Example:
%% list_quick_responses_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_quick_responses_request() :: #{binary() => any()}.


%% Example:
%% start_content_upload_request() :: #{
%%   <<"contentType">> := string(),
%%   <<"presignedUrlTimeToLive">> => integer()
%% }
-type start_content_upload_request() :: #{binary() => any()}.

%% Example:
%% delete_assistant_request() :: #{}
-type delete_assistant_request() :: #{}.


%% Example:
%% create_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_session_request() :: #{binary() => any()}.


%% Example:
%% update_knowledge_base_template_uri_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base_data()
%% }
-type update_knowledge_base_template_uri_response() :: #{binary() => any()}.


%% Example:
%% create_knowledge_base_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"knowledgeBaseType">> := string(),
%%   <<"name">> := string(),
%%   <<"renderingConfiguration">> => rendering_configuration(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"sourceConfiguration">> => list(),
%%   <<"tags">> => map()
%% }
-type create_knowledge_base_request() :: #{binary() => any()}.


%% Example:
%% list_import_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_import_jobs_request() :: #{binary() => any()}.


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
%%   <<"tags">> => map()
%% }
-type knowledge_base_summary() :: #{binary() => any()}.


%% Example:
%% list_quick_responses_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"quickResponseSummaries">> => list(quick_response_summary())
%% }
-type list_quick_responses_response() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_request() :: #{binary() => any()}.


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
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseType">> => string(),
%%   <<"lastContentModificationTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"renderingConfiguration">> => rendering_configuration(),
%%   <<"serverSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"sourceConfiguration">> => list(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
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
%% document_text() :: #{
%%   <<"highlights">> => list(highlight()),
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
%% quick_response_contents() :: #{
%%   <<"markdown">> => list(),
%%   <<"plainText">> => list()
%% }
-type quick_response_contents() :: #{binary() => any()}.

%% Example:
%% delete_import_job_request() :: #{}
-type delete_import_job_request() :: #{}.


%% Example:
%% assistant_data() :: #{
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
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
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_assistant_response() :: #{
%%   <<"assistant">> => assistant_data()
%% }
-type create_assistant_response() :: #{binary() => any()}.


%% Example:
%% quick_response_summary() :: #{
%%   <<"channels">> => list(string()),
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
%% search_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionSummaries">> := list(session_summary())
%% }
-type search_sessions_response() :: #{binary() => any()}.


%% Example:
%% notify_recommendations_received_response() :: #{
%%   <<"errors">> => list(notify_recommendations_received_error()),
%%   <<"recommendationIds">> => list([string()]())
%% }
-type notify_recommendations_received_response() :: #{binary() => any()}.


%% Example:
%% update_quick_response_request() :: #{
%%   <<"channels">> => list(string()),
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
%%   <<"channels">> => list(string()),
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
%% list_assistant_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assistant_associations_request() :: #{binary() => any()}.

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
%%   <<"assistantArn">> => string(),
%%   <<"assistantId">> => string(),
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
%% search_expression() :: #{
%%   <<"filters">> => list(filter())
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
%% server_side_encryption_configuration() :: #{
%%   <<"kmsKeyId">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% session_data() :: #{
%%   <<"description">> => string(),
%%   <<"integrationConfiguration">> => session_integration_configuration(),
%%   <<"name">> => string(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string(),
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
%% list_import_jobs_response() :: #{
%%   <<"importJobSummaries">> => list(import_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% remove_knowledge_base_template_uri_request() :: #{}
-type remove_knowledge_base_template_uri_request() :: #{}.


%% Example:
%% search_quick_responses_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(quick_response_search_result_data())
%% }
-type search_quick_responses_response() :: #{binary() => any()}.


%% Example:
%% notify_recommendations_received_error() :: #{
%%   <<"message">> => string(),
%%   <<"recommendationId">> => [string()]
%% }
-type notify_recommendations_received_error() :: #{binary() => any()}.


%% Example:
%% get_import_job_response() :: #{
%%   <<"importJob">> => import_job_data()
%% }
-type get_import_job_response() :: #{binary() => any()}.


%% Example:
%% update_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type update_content_response() :: #{binary() => any()}.

%% Example:
%% get_quick_response_request() :: #{}
-type get_quick_response_request() :: #{}.


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
%%   <<"queryText">> := string()
%% }
-type query_assistant_request() :: #{binary() => any()}.


%% Example:
%% quick_response_search_result_data() :: #{
%%   <<"attributesInterpolated">> => list(string()),
%%   <<"attributesNotInterpolated">> => list(string()),
%%   <<"channels">> => list(string()),
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
%% delete_content_request() :: #{}
-type delete_content_request() :: #{}.

%% Example:
%% get_content_request() :: #{}
-type get_content_request() :: #{}.

%% Example:
%% delete_quick_response_request() :: #{}
-type delete_quick_response_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% content_reference() :: #{
%%   <<"contentArn">> => string(),
%%   <<"contentId">> => string(),
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"knowledgeBaseId">> => string()
%% }
-type content_reference() :: #{binary() => any()}.


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
%% get_content_response() :: #{
%%   <<"content">> => content_data()
%% }
-type get_content_response() :: #{binary() => any()}.


%% Example:
%% recommendation_trigger() :: #{
%%   <<"data">> => list(),
%%   <<"id">> => string(),
%%   <<"recommendationIds">> => list([string()]()),
%%   <<"source">> => string(),
%%   <<"type">> => string()
%% }
-type recommendation_trigger() :: #{binary() => any()}.


%% Example:
%% notify_recommendations_received_request() :: #{
%%   <<"recommendationIds">> := list([string()]())
%% }
-type notify_recommendations_received_request() :: #{binary() => any()}.


%% Example:
%% list_knowledge_bases_response() :: #{
%%   <<"knowledgeBaseSummaries">> := list(knowledge_base_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_knowledge_bases_response() :: #{binary() => any()}.


%% Example:
%% get_knowledge_base_response() :: #{
%%   <<"knowledgeBase">> => knowledge_base_data()
%% }
-type get_knowledge_base_response() :: #{binary() => any()}.


%% Example:
%% list_assistant_associations_response() :: #{
%%   <<"assistantAssociationSummaries">> := list(assistant_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_assistant_associations_response() :: #{binary() => any()}.


%% Example:
%% result_data() :: #{
%%   <<"document">> => document(),
%%   <<"relevanceScore">> => float(),
%%   <<"resultId">> => string()
%% }
-type result_data() :: #{binary() => any()}.


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
%%   <<"values">> => list(string())
%% }
-type quick_response_query_field() :: #{binary() => any()}.

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
%% quick_response_order_field() :: #{
%%   <<"name">> => string(),
%%   <<"order">> => string()
%% }
-type quick_response_order_field() :: #{binary() => any()}.


%% Example:
%% list_assistants_response() :: #{
%%   <<"assistantSummaries">> := list(assistant_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_assistants_response() :: #{binary() => any()}.

%% Example:
%% delete_quick_response_response() :: #{}
-type delete_quick_response_response() :: #{}.


%% Example:
%% search_content_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchExpression">> := search_expression()
%% }
-type search_content_request() :: #{binary() => any()}.


%% Example:
%% grouping_configuration() :: #{
%%   <<"criteria">> => string(),
%%   <<"values">> => list(string())
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
%% list_assistants_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assistants_request() :: #{binary() => any()}.


%% Example:
%% session_integration_configuration() :: #{
%%   <<"topicIntegrationArn">> => string()
%% }
-type session_integration_configuration() :: #{binary() => any()}.

%% Example:
%% delete_import_job_response() :: #{}
-type delete_import_job_response() :: #{}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

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

-type create_knowledge_base_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_quick_response_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_session_errors() ::
    validation_exception() | 
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

-type delete_quick_response_errors() ::
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

-type list_assistant_associations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_assistants_errors() ::
    validation_exception() | 
    access_denied_exception().

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

-type query_assistant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type remove_knowledge_base_template_uri_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_content_errors() ::
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

-type update_content_errors() ::
    precondition_failed_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_knowledge_base_template_uri_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_quick_response_errors() ::
    precondition_failed_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Connect Wisdom assistant.
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

%% @doc Creates an association between an Amazon Connect Wisdom assistant and
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

%% @doc Creates Wisdom content.
%%
%% Before to calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
%% to
%% upload an asset.
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
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html.
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

%% @doc Creates a Wisdom quick response.
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
%% recommendations. Amazon Connect creates a new Wisdom session for each
%% contact on which
%% Wisdom is enabled.
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

%% @doc Retrieves recommendations for the specified session.
%%
%% To avoid retrieving the same
%% recommendations in subsequent calls, use NotifyRecommendationsReceived:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html.
%% This API supports long-polling behavior with the
%% `waitTimeSeconds' parameter. Short poll is the default behavior and
%% only returns
%% recommendations already available. To perform a manual query against an
%% assistant, use QueryAssistant:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html.
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
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html
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

%% @doc Performs a manual search against the specified assistant.
%%
%% To retrieve recommendations for
%% an assistant, use GetRecommendations:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html.
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

%% @doc Searches existing Wisdom quick responses in a Wisdom knowledge base.
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

%% @doc Get a URL to upload content to a knowledge base.
%%
%% To upload content, first make a PUT
%% request to the returned URL with your file, making sure to include the
%% required headers. Then
%% use CreateContent:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html
%% to finalize the content creation process or UpdateContent:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html
%% to modify an existing resource. You can only upload content to a
%% knowledge base of type CUSTOM.
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

%% @doc Start an asynchronous job to import Wisdom resources from an uploaded
%% source file.
%%
%% Before calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
%% to
%% upload an asset that contains the resource data.
%%
%% For importing Wisdom quick responses, you need to upload a csv file
%% including the quick responses. For information about how to format the csv
%% file for importing quick responses, see Import quick responses:
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
%% interpolated by Wisdom using ingested content. For example, if you ingest
%% a Salesforce
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

%% @doc Updates an existing Wisdom quick response.
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
