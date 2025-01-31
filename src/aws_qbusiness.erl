%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Q Business API Reference.
%%
%% Amazon Q Business is a fully
%% managed, generative-AI powered enterprise chat assistant that you can
%% deploy within your
%% organization. Amazon Q Business enhances employee productivity by
%% supporting key tasks such
%% as question-answering, knowledge discovery, writing email messages,
%% summarizing text,
%% drafting document outlines, and brainstorming ideas. Users ask questions
%% of
%% Amazon Q Business and get answers that are presented in a conversational
%% manner. For an
%% introduction to the service, see the
%% Amazon Q Business User Guide
%% : https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html.
%%
%% For an overview of the Amazon Q Business APIs, see Overview of Amazon Q
%% Business API operations:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview.
%%
%% For information about the IAM access control permissions you need to
%% use this API, see IAM roles for Amazon Q Business:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html
%% in the
%% Amazon Q Business User Guide.
%%
%% The following resources provide additional information about using the
%% Amazon Q Business
%% API:
%%
%% Setting up for
%% Amazon Q Business:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html
%%
%% Amazon Q Business CLI Reference:
%% https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html
%%
%% Amazon Web Services General Reference:
%% https://docs.aws.amazon.com/general/latest/gr/amazonq.html
-module(aws_qbusiness).

-export([associate_permission/3,
         associate_permission/4,
         batch_delete_document/4,
         batch_delete_document/5,
         batch_put_document/4,
         batch_put_document/5,
         cancel_subscription/4,
         cancel_subscription/5,
         chat/3,
         chat/4,
         chat_sync/3,
         chat_sync/4,
         create_application/2,
         create_application/3,
         create_data_accessor/3,
         create_data_accessor/4,
         create_data_source/4,
         create_data_source/5,
         create_index/3,
         create_index/4,
         create_plugin/3,
         create_plugin/4,
         create_retriever/3,
         create_retriever/4,
         create_subscription/3,
         create_subscription/4,
         create_user/3,
         create_user/4,
         create_web_experience/3,
         create_web_experience/4,
         delete_application/3,
         delete_application/4,
         delete_chat_controls_configuration/3,
         delete_chat_controls_configuration/4,
         delete_conversation/4,
         delete_conversation/5,
         delete_data_accessor/4,
         delete_data_accessor/5,
         delete_data_source/5,
         delete_data_source/6,
         delete_group/5,
         delete_group/6,
         delete_index/4,
         delete_index/5,
         delete_plugin/4,
         delete_plugin/5,
         delete_retriever/4,
         delete_retriever/5,
         delete_user/4,
         delete_user/5,
         delete_web_experience/4,
         delete_web_experience/5,
         disassociate_permission/4,
         disassociate_permission/5,
         get_application/2,
         get_application/4,
         get_application/5,
         get_chat_controls_configuration/2,
         get_chat_controls_configuration/4,
         get_chat_controls_configuration/5,
         get_data_accessor/3,
         get_data_accessor/5,
         get_data_accessor/6,
         get_data_source/4,
         get_data_source/6,
         get_data_source/7,
         get_group/4,
         get_group/6,
         get_group/7,
         get_index/3,
         get_index/5,
         get_index/6,
         get_media/5,
         get_media/7,
         get_media/8,
         get_plugin/3,
         get_plugin/5,
         get_plugin/6,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_retriever/3,
         get_retriever/5,
         get_retriever/6,
         get_user/3,
         get_user/5,
         get_user/6,
         get_web_experience/3,
         get_web_experience/5,
         get_web_experience/6,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_attachments/2,
         list_attachments/4,
         list_attachments/5,
         list_conversations/2,
         list_conversations/4,
         list_conversations/5,
         list_data_accessors/2,
         list_data_accessors/4,
         list_data_accessors/5,
         list_data_source_sync_jobs/4,
         list_data_source_sync_jobs/6,
         list_data_source_sync_jobs/7,
         list_data_sources/3,
         list_data_sources/5,
         list_data_sources/6,
         list_documents/3,
         list_documents/5,
         list_documents/6,
         list_groups/4,
         list_groups/6,
         list_groups/7,
         list_indices/2,
         list_indices/4,
         list_indices/5,
         list_messages/3,
         list_messages/5,
         list_messages/6,
         list_plugin_actions/3,
         list_plugin_actions/5,
         list_plugin_actions/6,
         list_plugin_type_actions/2,
         list_plugin_type_actions/4,
         list_plugin_type_actions/5,
         list_plugin_type_metadata/1,
         list_plugin_type_metadata/3,
         list_plugin_type_metadata/4,
         list_plugins/2,
         list_plugins/4,
         list_plugins/5,
         list_retrievers/2,
         list_retrievers/4,
         list_retrievers/5,
         list_subscriptions/2,
         list_subscriptions/4,
         list_subscriptions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_web_experiences/2,
         list_web_experiences/4,
         list_web_experiences/5,
         put_feedback/5,
         put_feedback/6,
         put_group/4,
         put_group/5,
         search_relevant_content/3,
         search_relevant_content/4,
         start_data_source_sync_job/5,
         start_data_source_sync_job/6,
         stop_data_source_sync_job/5,
         stop_data_source_sync_job/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_chat_controls_configuration/3,
         update_chat_controls_configuration/4,
         update_data_accessor/4,
         update_data_accessor/5,
         update_data_source/5,
         update_data_source/6,
         update_index/4,
         update_index/5,
         update_plugin/4,
         update_plugin/5,
         update_retriever/4,
         update_retriever/5,
         update_subscription/4,
         update_subscription/5,
         update_user/4,
         update_user/5,
         update_web_experience/4,
         update_web_experience/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% source_attribution() :: #{
%%   <<"citationNumber">> => integer(),
%%   <<"snippet">> => string(),
%%   <<"textMessageSegments">> => list(text_segment()()),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"url">> => string()
%% }
-type source_attribution() :: #{binary() => any()}.


%% Example:
%% action_summary() :: #{
%%   <<"actionIdentifier">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"instructionExample">> => string()
%% }
-type action_summary() :: #{binary() => any()}.


%% Example:
%% applied_attachments_configuration() :: #{
%%   <<"attachmentsControlMode">> => list(any())
%% }
-type applied_attachments_configuration() :: #{binary() => any()}.


%% Example:
%% create_subscription_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"principal">> := list(),
%%   <<"type">> := list(any())
%% }
-type create_subscription_request() :: #{binary() => any()}.


%% Example:
%% put_feedback_request() :: #{
%%   <<"messageCopiedAt">> => non_neg_integer(),
%%   <<"messageUsefulness">> => message_usefulness_feedback(),
%%   <<"userId">> => string()
%% }
-type put_feedback_request() :: #{binary() => any()}.


%% Example:
%% update_data_accessor_request() :: #{
%%   <<"actionConfigurations">> := list(action_configuration()()),
%%   <<"displayName">> => string()
%% }
-type update_data_accessor_request() :: #{binary() => any()}.


%% Example:
%% media_extraction_configuration() :: #{
%%   <<"imageExtractionConfiguration">> => image_extraction_configuration()
%% }
-type media_extraction_configuration() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyId">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% media_too_large_exception() :: #{
%%   <<"message">> => string()
%% }
-type media_too_large_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_web_experience_response() :: #{
%%   <<"webExperienceArn">> => string(),
%%   <<"webExperienceId">> => string()
%% }
-type create_web_experience_response() :: #{binary() => any()}.


%% Example:
%% auth_challenge_response_event() :: #{
%%   <<"responseMap">> => map()
%% }
-type auth_challenge_response_event() :: #{binary() => any()}.


%% Example:
%% data_source_vpc_configuration() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()())
%% }
-type data_source_vpc_configuration() :: #{binary() => any()}.


%% Example:
%% list_data_accessors_response() :: #{
%%   <<"dataAccessors">> => list(data_accessor()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_accessors_response() :: #{binary() => any()}.


%% Example:
%% create_retriever_response() :: #{
%%   <<"retrieverArn">> => string(),
%%   <<"retrieverId">> => string()
%% }
-type create_retriever_response() :: #{binary() => any()}.


%% Example:
%% list_web_experiences_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_web_experiences_request() :: #{binary() => any()}.


%% Example:
%% index_capacity_configuration() :: #{
%%   <<"units">> => integer()
%% }
-type index_capacity_configuration() :: #{binary() => any()}.

%% Example:
%% delete_web_experience_request() :: #{}
-type delete_web_experience_request() :: #{}.


%% Example:
%% document_attribute() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list()
%% }
-type document_attribute() :: #{binary() => any()}.


%% Example:
%% plugin() :: #{
%%   <<"buildStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"serverUrl">> => string(),
%%   <<"state">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type plugin() :: #{binary() => any()}.


%% Example:
%% string_list_attribute_boosting_configuration() :: #{
%%   <<"boostingLevel">> => list(any())
%% }
-type string_list_attribute_boosting_configuration() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"userAliasesAdded">> => list(user_alias()()),
%%   <<"userAliasesDeleted">> => list(user_alias()()),
%%   <<"userAliasesUpdated">> => list(user_alias()())
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% create_data_source_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := any(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"documentEnrichmentConfiguration">> => document_enrichment_configuration(),
%%   <<"mediaExtractionConfiguration">> => media_extraction_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"syncSchedule">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"vpcConfiguration">> => data_source_vpc_configuration()
%% }
-type create_data_source_request() :: #{binary() => any()}.


%% Example:
%% action_review_event() :: #{
%%   <<"conversationId">> => string(),
%%   <<"payload">> => map(),
%%   <<"payloadFieldNameSeparator">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"pluginType">> => list(any()),
%%   <<"systemMessageId">> => string(),
%%   <<"userMessageId">> => string()
%% }
-type action_review_event() :: #{binary() => any()}.


%% Example:
%% get_data_accessor_response() :: #{
%%   <<"actionConfigurations">> => list(action_configuration()()),
%%   <<"applicationId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataAccessorArn">> => string(),
%%   <<"dataAccessorId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"idcApplicationArn">> => string(),
%%   <<"principal">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_data_accessor_response() :: #{binary() => any()}.


%% Example:
%% idc_auth_configuration() :: #{
%%   <<"idcApplicationArn">> => string(),
%%   <<"roleArn">> => string()
%% }
-type idc_auth_configuration() :: #{binary() => any()}.


%% Example:
%% text_output_event() :: #{
%%   <<"conversationId">> => string(),
%%   <<"systemMessage">> => string(),
%%   <<"systemMessageId">> => string(),
%%   <<"userMessageId">> => string()
%% }
-type text_output_event() :: #{binary() => any()}.


%% Example:
%% conversation_source() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"conversationId">> => string()
%% }
-type conversation_source() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% get_retriever_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"retrieverArn">> => string(),
%%   <<"retrieverId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_retriever_response() :: #{binary() => any()}.


%% Example:
%% o_auth2_client_credential_configuration() :: #{
%%   <<"authorizationUrl">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"tokenUrl">> => string()
%% }
-type o_auth2_client_credential_configuration() :: #{binary() => any()}.


%% Example:
%% customization_configuration() :: #{
%%   <<"customCSSUrl">> => string(),
%%   <<"faviconUrl">> => string(),
%%   <<"fontUrl">> => string(),
%%   <<"logoUrl">> => string()
%% }
-type customization_configuration() :: #{binary() => any()}.


%% Example:
%% member_group() :: #{
%%   <<"groupName">> => string(),
%%   <<"type">> => list(any())
%% }
-type member_group() :: #{binary() => any()}.

%% Example:
%% delete_index_request() :: #{}
-type delete_index_request() :: #{}.


%% Example:
%% plugin_configuration() :: #{
%%   <<"pluginId">> => string()
%% }
-type plugin_configuration() :: #{binary() => any()}.


%% Example:
%% content_blocker_rule() :: #{
%%   <<"systemMessageOverride">> => string()
%% }
-type content_blocker_rule() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{}
-type get_policy_request() :: #{}.


%% Example:
%% list_plugin_type_metadata_response() :: #{
%%   <<"items">> => list(plugin_type_metadata_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_type_metadata_response() :: #{binary() => any()}.


%% Example:
%% failed_attachment_event() :: #{
%%   <<"attachment">> => attachment_output(),
%%   <<"conversationId">> => string(),
%%   <<"systemMessageId">> => string(),
%%   <<"userMessageId">> => string()
%% }
-type failed_attachment_event() :: #{binary() => any()}.


%% Example:
%% principal_user() :: #{
%%   <<"access">> => list(any()),
%%   <<"id">> => string(),
%%   <<"membershipType">> => list(any())
%% }
-type principal_user() :: #{binary() => any()}.


%% Example:
%% create_data_accessor_response() :: #{
%%   <<"dataAccessorArn">> => string(),
%%   <<"dataAccessorId">> => string(),
%%   <<"idcApplicationArn">> => string()
%% }
-type create_data_accessor_response() :: #{binary() => any()}.


%% Example:
%% delete_document() :: #{
%%   <<"documentId">> => string()
%% }
-type delete_document() :: #{binary() => any()}.


%% Example:
%% auth_challenge_request_event() :: #{
%%   <<"authorizationUrl">> => string()
%% }
-type auth_challenge_request_event() :: #{binary() => any()}.


%% Example:
%% document_attribute_target() :: #{
%%   <<"attributeValueOperator">> => list(any()),
%%   <<"key">> => string(),
%%   <<"value">> => list()
%% }
-type document_attribute_target() :: #{binary() => any()}.


%% Example:
%% list_messages_response() :: #{
%%   <<"messages">> => list(message()()),
%%   <<"nextToken">> => string()
%% }
-type list_messages_response() :: #{binary() => any()}.


%% Example:
%% data_source_sync_job_metrics() :: #{
%%   <<"documentsAdded">> => string(),
%%   <<"documentsDeleted">> => string(),
%%   <<"documentsFailed">> => string(),
%%   <<"documentsModified">> => string(),
%%   <<"documentsScanned">> => string()
%% }
-type data_source_sync_job_metrics() :: #{binary() => any()}.


%% Example:
%% create_data_accessor_request() :: #{
%%   <<"actionConfigurations">> := list(action_configuration()()),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"principal">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_data_accessor_request() :: #{binary() => any()}.


%% Example:
%% license_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type license_not_found_exception() :: #{binary() => any()}.

%% Example:
%% put_group_response() :: #{}
-type put_group_response() :: #{}.


%% Example:
%% create_plugin_response() :: #{
%%   <<"buildStatus">> => list(any()),
%%   <<"pluginArn">> => string(),
%%   <<"pluginId">> => string()
%% }
-type create_plugin_response() :: #{binary() => any()}.


%% Example:
%% get_user_response() :: #{
%%   <<"userAliases">> => list(user_alias()())
%% }
-type get_user_response() :: #{binary() => any()}.


%% Example:
%% delete_conversation_request() :: #{
%%   <<"userId">> => string()
%% }
-type delete_conversation_request() :: #{binary() => any()}.


%% Example:
%% create_retriever_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"displayName">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> := list(any())
%% }
-type create_retriever_request() :: #{binary() => any()}.

%% Example:
%% no_auth_configuration() :: #{}
-type no_auth_configuration() :: #{}.

%% Example:
%% delete_web_experience_response() :: #{}
-type delete_web_experience_response() :: #{}.


%% Example:
%% attachment() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"conversationId">> => string(),
%%   <<"copyFrom">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => error_detail(),
%%   <<"fileSize">> => integer(),
%%   <<"fileType">> => string(),
%%   <<"md5chksum">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type attachment() :: #{binary() => any()}.


%% Example:
%% list_web_experiences_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"webExperiences">> => list(web_experience()())
%% }
-type list_web_experiences_response() :: #{binary() => any()}.


%% Example:
%% list_plugin_actions_response() :: #{
%%   <<"items">> => list(action_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_actions_response() :: #{binary() => any()}.


%% Example:
%% action_review() :: #{
%%   <<"payload">> => map(),
%%   <<"payloadFieldNameSeparator">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"pluginType">> => list(any())
%% }
-type action_review() :: #{binary() => any()}.


%% Example:
%% subscription_details() :: #{
%%   <<"type">> => list(any())
%% }
-type subscription_details() :: #{binary() => any()}.

%% Example:
%% update_data_source_response() :: #{}
-type update_data_source_response() :: #{}.


%% Example:
%% topic_configuration() :: #{
%%   <<"description">> => string(),
%%   <<"exampleChatMessages">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"rules">> => list(rule()())
%% }
-type topic_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_retriever_request() :: #{
%%   <<"configuration">> => list(),
%%   <<"displayName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_retriever_request() :: #{binary() => any()}.


%% Example:
%% text_input_event() :: #{
%%   <<"userMessage">> => string()
%% }
-type text_input_event() :: #{binary() => any()}.

%% Example:
%% delete_data_accessor_request() :: #{}
-type delete_data_accessor_request() :: #{}.


%% Example:
%% user_alias() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"indexId">> => string(),
%%   <<"userId">> => string()
%% }
-type user_alias() :: #{binary() => any()}.


%% Example:
%% basic_auth_configuration() :: #{
%%   <<"roleArn">> => string(),
%%   <<"secretArn">> => string()
%% }
-type basic_auth_configuration() :: #{binary() => any()}.


%% Example:
%% document_attribute_condition() :: #{
%%   <<"key">> => string(),
%%   <<"operator">> => list(any()),
%%   <<"value">> => list()
%% }
-type document_attribute_condition() :: #{binary() => any()}.


%% Example:
%% list_indices_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_indices_request() :: #{binary() => any()}.

%% Example:
%% delete_index_response() :: #{}
-type delete_index_response() :: #{}.


%% Example:
%% list_documents_response() :: #{
%%   <<"documentDetailList">> => list(document_details()()),
%%   <<"nextToken">> => string()
%% }
-type list_documents_response() :: #{binary() => any()}.

%% Example:
%% update_data_accessor_response() :: #{}
-type update_data_accessor_response() :: #{}.


%% Example:
%% create_plugin_request() :: #{
%%   <<"authConfiguration">> := list(),
%%   <<"clientToken">> => string(),
%%   <<"customPluginConfiguration">> => custom_plugin_configuration(),
%%   <<"displayName">> := string(),
%%   <<"serverUrl">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> := list(any())
%% }
-type create_plugin_request() :: #{binary() => any()}.


%% Example:
%% metadata_event() :: #{
%%   <<"conversationId">> => string(),
%%   <<"finalTextMessage">> => string(),
%%   <<"sourceAttributions">> => list(source_attribution()()),
%%   <<"systemMessageId">> => string(),
%%   <<"userMessageId">> => string()
%% }
-type metadata_event() :: #{binary() => any()}.


%% Example:
%% image_extraction_configuration() :: #{
%%   <<"imageExtractionStatus">> => list(any())
%% }
-type image_extraction_configuration() :: #{binary() => any()}.


%% Example:
%% plugin_type_metadata_summary() :: #{
%%   <<"category">> => list(any()),
%%   <<"description">> => string(),
%%   <<"type">> => list(any())
%% }
-type plugin_type_metadata_summary() :: #{binary() => any()}.


%% Example:
%% list_plugin_type_actions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_type_actions_request() :: #{binary() => any()}.


%% Example:
%% chat_sync_output() :: #{
%%   <<"actionReview">> => action_review(),
%%   <<"authChallengeRequest">> => auth_challenge_request(),
%%   <<"conversationId">> => string(),
%%   <<"failedAttachments">> => list(attachment_output()()),
%%   <<"sourceAttributions">> => list(source_attribution()()),
%%   <<"systemMessage">> => string(),
%%   <<"systemMessageId">> => string(),
%%   <<"userMessageId">> => string()
%% }
-type chat_sync_output() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_response() :: #{
%%   <<"currentSubscription">> => subscription_details(),
%%   <<"nextSubscription">> => subscription_details(),
%%   <<"subscriptionArn">> => string()
%% }
-type cancel_subscription_response() :: #{binary() => any()}.

%% Example:
%% get_plugin_request() :: #{}
-type get_plugin_request() :: #{}.

%% Example:
%% update_chat_controls_configuration_response() :: #{}
-type update_chat_controls_configuration_response() :: #{}.


%% Example:
%% list_data_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_request() :: #{binary() => any()}.

%% Example:
%% delete_conversation_response() :: #{}
-type delete_conversation_response() :: #{}.

%% Example:
%% delete_data_source_response() :: #{}
-type delete_data_source_response() :: #{}.


%% Example:
%% index() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"indexId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type index() :: #{binary() => any()}.


%% Example:
%% document_attribute_configuration() :: #{
%%   <<"name">> => string(),
%%   <<"search">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type document_attribute_configuration() :: #{binary() => any()}.

%% Example:
%% update_web_experience_response() :: #{}
-type update_web_experience_response() :: #{}.


%% Example:
%% create_web_experience_request() :: #{
%%   <<"browserExtensionConfiguration">> => browser_extension_configuration(),
%%   <<"clientToken">> => string(),
%%   <<"customizationConfiguration">> => customization_configuration(),
%%   <<"identityProviderConfiguration">> => list(),
%%   <<"origins">> => list(string()()),
%%   <<"roleArn">> => string(),
%%   <<"samplePromptsControlMode">> => list(any()),
%%   <<"subtitle">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"title">> => string(),
%%   <<"welcomeMessage">> => string()
%% }
-type create_web_experience_request() :: #{binary() => any()}.


%% Example:
%% web_experience() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"defaultEndpoint">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"webExperienceId">> => string()
%% }
-type web_experience() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% start_data_source_sync_job_request() :: #{}
-type start_data_source_sync_job_request() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_plugin_response() :: #{}
-type update_plugin_response() :: #{}.


%% Example:
%% inline_document_enrichment_configuration() :: #{
%%   <<"condition">> => document_attribute_condition(),
%%   <<"documentContentOperator">> => list(any()),
%%   <<"target">> => document_attribute_target()
%% }
-type inline_document_enrichment_configuration() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{}
-type get_user_request() :: #{}.


%% Example:
%% start_data_source_sync_job_response() :: #{
%%   <<"executionId">> => string()
%% }
-type start_data_source_sync_job_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% get_web_experience_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"authenticationConfiguration">> => list(),
%%   <<"browserExtensionConfiguration">> => browser_extension_configuration(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customizationConfiguration">> => customization_configuration(),
%%   <<"defaultEndpoint">> => string(),
%%   <<"error">> => error_detail(),
%%   <<"identityProviderConfiguration">> => list(),
%%   <<"origins">> => list(string()()),
%%   <<"roleArn">> => string(),
%%   <<"samplePromptsControlMode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"subtitle">> => string(),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"webExperienceArn">> => string(),
%%   <<"webExperienceId">> => string(),
%%   <<"welcomeMessage">> => string()
%% }
-type get_web_experience_response() :: #{binary() => any()}.


%% Example:
%% list_retrievers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_retrievers_request() :: #{binary() => any()}.


%% Example:
%% list_retrievers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"retrievers">> => list(retriever()())
%% }
-type list_retrievers_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_document_response() :: #{
%%   <<"failedDocuments">> => list(failed_document()())
%% }
-type batch_delete_document_response() :: #{binary() => any()}.


%% Example:
%% chat_sync_input() :: #{
%%   <<"actionExecution">> => action_execution(),
%%   <<"attachments">> => list(attachment_input()()),
%%   <<"attributeFilter">> => attribute_filter(),
%%   <<"authChallengeResponse">> => auth_challenge_response(),
%%   <<"chatMode">> => list(any()),
%%   <<"chatModeConfiguration">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"conversationId">> => string(),
%%   <<"parentMessageId">> => string(),
%%   <<"userGroups">> => list(string()()),
%%   <<"userId">> => string(),
%%   <<"userMessage">> => string()
%% }
-type chat_sync_input() :: #{binary() => any()}.


%% Example:
%% applied_creator_mode_configuration() :: #{
%%   <<"creatorModeControl">> => list(any())
%% }
-type applied_creator_mode_configuration() :: #{binary() => any()}.


%% Example:
%% action_execution() :: #{
%%   <<"payload">> => map(),
%%   <<"payloadFieldNameSeparator">> => string(),
%%   <<"pluginId">> => string()
%% }
-type action_execution() :: #{binary() => any()}.


%% Example:
%% member_user() :: #{
%%   <<"type">> => list(any()),
%%   <<"userId">> => string()
%% }
-type member_user() :: #{binary() => any()}.


%% Example:
%% kendra_index_configuration() :: #{
%%   <<"indexId">> => string()
%% }
-type kendra_index_configuration() :: #{binary() => any()}.

%% Example:
%% get_data_source_request() :: #{}
-type get_data_source_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% access_control() :: #{
%%   <<"memberRelation">> => list(any()),
%%   <<"principals">> => list(list()())
%% }
-type access_control() :: #{binary() => any()}.


%% Example:
%% custom_plugin_configuration() :: #{
%%   <<"apiSchema">> => list(),
%%   <<"apiSchemaType">> => list(any()),
%%   <<"description">> => string()
%% }
-type custom_plugin_configuration() :: #{binary() => any()}.


%% Example:
%% update_web_experience_request() :: #{
%%   <<"authenticationConfiguration">> => list(),
%%   <<"browserExtensionConfiguration">> => browser_extension_configuration(),
%%   <<"customizationConfiguration">> => customization_configuration(),
%%   <<"identityProviderConfiguration">> => list(),
%%   <<"origins">> => list(string()()),
%%   <<"roleArn">> => string(),
%%   <<"samplePromptsControlMode">> => list(any()),
%%   <<"subtitle">> => string(),
%%   <<"title">> => string(),
%%   <<"welcomeMessage">> => string()
%% }
-type update_web_experience_request() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"applicationId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"identityType">> => list(any()),
%%   <<"quickSightConfiguration">> => quick_sight_configuration(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type application() :: #{binary() => any()}.


%% Example:
%% number_attribute_boosting_configuration() :: #{
%%   <<"boostingLevel">> => list(any()),
%%   <<"boostingType">> => list(any())
%% }
-type number_attribute_boosting_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_permission_response() :: #{}
-type disassociate_permission_response() :: #{}.


%% Example:
%% string_attribute_boosting_configuration() :: #{
%%   <<"attributeValueBoosting">> => map(),
%%   <<"boostingLevel">> => list(any())
%% }
-type string_attribute_boosting_configuration() :: #{binary() => any()}.


%% Example:
%% list_conversations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"userId">> => string()
%% }
-type list_conversations_request() :: #{binary() => any()}.


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
%% delete_retriever_request() :: #{}
-type delete_retriever_request() :: #{}.


%% Example:
%% personalization_configuration() :: #{
%%   <<"personalizationControlMode">> => list(any())
%% }
-type personalization_configuration() :: #{binary() => any()}.


%% Example:
%% attachment_input() :: #{
%%   <<"copyFrom">> => list(),
%%   <<"data">> => binary(),
%%   <<"name">> => string()
%% }
-type attachment_input() :: #{binary() => any()}.


%% Example:
%% group_status_detail() :: #{
%%   <<"errorDetail">> => error_detail(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type group_status_detail() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% auto_subscription_configuration() :: #{
%%   <<"autoSubscribe">> => list(any()),
%%   <<"defaultSubscriptionType">> => list(any())
%% }
-type auto_subscription_configuration() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"attachmentsConfiguration">> => attachments_configuration(),
%%   <<"clientIdsForOIDC">> => list(string()()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"iamIdentityProviderArn">> => string(),
%%   <<"identityCenterInstanceArn">> => string(),
%%   <<"identityType">> => list(any()),
%%   <<"personalizationConfiguration">> => personalization_configuration(),
%%   <<"qAppsConfiguration">> => q_apps_configuration(),
%%   <<"quickSightConfiguration">> => quick_sight_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% text_segment() :: #{
%%   <<"beginOffset">> => integer(),
%%   <<"endOffset">> => integer(),
%%   <<"mediaId">> => string(),
%%   <<"mediaMimeType">> => string(),
%%   <<"snippetExcerpt">> => snippet_excerpt()
%% }
-type text_segment() :: #{binary() => any()}.


%% Example:
%% get_plugin_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"authConfiguration">> => list(),
%%   <<"buildStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customPluginConfiguration">> => custom_plugin_configuration(),
%%   <<"displayName">> => string(),
%%   <<"pluginArn">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"serverUrl">> => string(),
%%   <<"state">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_plugin_response() :: #{binary() => any()}.


%% Example:
%% hook_configuration() :: #{
%%   <<"invocationCondition">> => document_attribute_condition(),
%%   <<"lambdaArn">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"s3BucketName">> => string()
%% }
-type hook_configuration() :: #{binary() => any()}.


%% Example:
%% update_subscription_response() :: #{
%%   <<"currentSubscription">> => subscription_details(),
%%   <<"nextSubscription">> => subscription_details(),
%%   <<"subscriptionArn">> => string()
%% }
-type update_subscription_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% conversation() :: #{
%%   <<"conversationId">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"title">> => string()
%% }
-type conversation() :: #{binary() => any()}.


%% Example:
%% list_plugins_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"plugins">> => list(plugin()())
%% }
-type list_plugins_response() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationId">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% list_documents_request() :: #{
%%   <<"dataSourceIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_documents_request() :: #{binary() => any()}.


%% Example:
%% chat_output() :: #{
%%   <<"outputStream">> => list()
%% }
-type chat_output() :: #{binary() => any()}.


%% Example:
%% blocked_phrases_configuration() :: #{
%%   <<"blockedPhrases">> => list(string()()),
%%   <<"systemMessageOverride">> => string()
%% }
-type blocked_phrases_configuration() :: #{binary() => any()}.


%% Example:
%% list_indices_response() :: #{
%%   <<"indices">> => list(index()()),
%%   <<"nextToken">> => string()
%% }
-type list_indices_response() :: #{binary() => any()}.


%% Example:
%% data_source_sync_job() :: #{
%%   <<"dataSourceErrorCode">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"error">> => error_detail(),
%%   <<"executionId">> => string(),
%%   <<"metrics">> => data_source_sync_job_metrics(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type data_source_sync_job() :: #{binary() => any()}.


%% Example:
%% list_attachments_request() :: #{
%%   <<"conversationId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"userId">> => string()
%% }
-type list_attachments_request() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{}
-type delete_user_request() :: #{}.


%% Example:
%% create_subscription_response() :: #{
%%   <<"currentSubscription">> => subscription_details(),
%%   <<"nextSubscription">> => subscription_details(),
%%   <<"subscriptionArn">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type create_subscription_response() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"excludedUsersAndGroups">> => users_and_groups(),
%%   <<"includedUsersAndGroups">> => users_and_groups(),
%%   <<"ruleConfiguration">> => list(),
%%   <<"ruleType">> => list(any())
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% list_plugins_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plugins_request() :: #{binary() => any()}.

%% Example:
%% stop_data_source_sync_job_request() :: #{}
-type stop_data_source_sync_job_request() :: #{}.

%% Example:
%% get_data_accessor_request() :: #{}
-type get_data_accessor_request() :: #{}.

%% Example:
%% delete_plugin_response() :: #{}
-type delete_plugin_response() :: #{}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.


%% Example:
%% score_attributes() :: #{
%%   <<"scoreConfidence">> => list(any())
%% }
-type score_attributes() :: #{binary() => any()}.

%% Example:
%% delete_user_response() :: #{}
-type delete_user_response() :: #{}.


%% Example:
%% get_media_response() :: #{
%%   <<"mediaBytes">> => binary(),
%%   <<"mediaMimeType">> => string()
%% }
-type get_media_response() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"policy">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.


%% Example:
%% blocked_phrases_configuration_update() :: #{
%%   <<"blockedPhrasesToCreateOrUpdate">> => list(string()()),
%%   <<"blockedPhrasesToDelete">> => list(string()()),
%%   <<"systemMessageOverride">> => string()
%% }
-type blocked_phrases_configuration_update() :: #{binary() => any()}.


%% Example:
%% list_plugin_type_actions_response() :: #{
%%   <<"items">> => list(action_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_type_actions_response() :: #{binary() => any()}.


%% Example:
%% list_plugin_actions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_actions_request() :: #{binary() => any()}.


%% Example:
%% message_usefulness_feedback() :: #{
%%   <<"comment">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"submittedAt">> => non_neg_integer(),
%%   <<"usefulness">> => list(any())
%% }
-type message_usefulness_feedback() :: #{binary() => any()}.


%% Example:
%% action_execution_event() :: #{
%%   <<"payload">> => map(),
%%   <<"payloadFieldNameSeparator">> => string(),
%%   <<"pluginId">> => string()
%% }
-type action_execution_event() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"attachmentsConfiguration">> => attachments_configuration(),
%%   <<"autoSubscriptionConfiguration">> => auto_subscription_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"identityCenterInstanceArn">> => string(),
%%   <<"personalizationConfiguration">> => personalization_configuration(),
%%   <<"qAppsConfiguration">> => q_apps_configuration(),
%%   <<"roleArn">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{}
-type update_application_response() :: #{}.

%% Example:
%% delete_chat_controls_configuration_response() :: #{}
-type delete_chat_controls_configuration_response() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_permission_request() :: #{}
-type disassociate_permission_request() :: #{}.


%% Example:
%% search_relevant_content_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"relevantContent">> => list(relevant_content()())
%% }
-type search_relevant_content_response() :: #{binary() => any()}.


%% Example:
%% create_data_source_response() :: #{
%%   <<"dataSourceArn">> => string(),
%%   <<"dataSourceId">> => string()
%% }
-type create_data_source_response() :: #{binary() => any()}.


%% Example:
%% document_details() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"documentId">> => string(),
%%   <<"error">> => error_detail(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type document_details() :: #{binary() => any()}.


%% Example:
%% list_plugin_type_metadata_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plugin_type_metadata_request() :: #{binary() => any()}.

%% Example:
%% get_web_experience_request() :: #{}
-type get_web_experience_request() :: #{}.


%% Example:
%% get_application_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"attachmentsConfiguration">> => applied_attachments_configuration(),
%%   <<"autoSubscriptionConfiguration">> => auto_subscription_configuration(),
%%   <<"clientIdsForOIDC">> => list(string()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"error">> => error_detail(),
%%   <<"iamIdentityProviderArn">> => string(),
%%   <<"identityCenterApplicationArn">> => string(),
%%   <<"identityType">> => list(any()),
%%   <<"personalizationConfiguration">> => personalization_configuration(),
%%   <<"qAppsConfiguration">> => q_apps_configuration(),
%%   <<"quickSightConfiguration">> => quick_sight_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_document_request() :: #{
%%   <<"dataSourceSyncId">> => string(),
%%   <<"documents">> := list(delete_document()())
%% }
-type batch_delete_document_request() :: #{binary() => any()}.


%% Example:
%% action_execution_payload_field() :: #{
%%   <<"value">> => any()
%% }
-type action_execution_payload_field() :: #{binary() => any()}.


%% Example:
%% auth_challenge_request() :: #{
%%   <<"authorizationUrl">> => string()
%% }
-type auth_challenge_request() :: #{binary() => any()}.

%% Example:
%% delete_chat_controls_configuration_request() :: #{}
-type delete_chat_controls_configuration_request() :: #{}.


%% Example:
%% batch_put_document_response() :: #{
%%   <<"failedDocuments">> => list(failed_document()())
%% }
-type batch_put_document_response() :: #{binary() => any()}.


%% Example:
%% saml_provider_configuration() :: #{
%%   <<"authenticationUrl">> => string()
%% }
-type saml_provider_configuration() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% create_index_request() :: #{
%%   <<"capacityConfiguration">> => index_capacity_configuration(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> => list(any())
%% }
-type create_index_request() :: #{binary() => any()}.


%% Example:
%% update_plugin_request() :: #{
%%   <<"authConfiguration">> => list(),
%%   <<"customPluginConfiguration">> => custom_plugin_configuration(),
%%   <<"displayName">> => string(),
%%   <<"serverUrl">> => string(),
%%   <<"state">> => list(any())
%% }
-type update_plugin_request() :: #{binary() => any()}.


%% Example:
%% update_index_request() :: #{
%%   <<"capacityConfiguration">> => index_capacity_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"documentAttributeConfigurations">> => list(document_attribute_configuration()())
%% }
-type update_index_request() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% relevant_content() :: #{
%%   <<"content">> => string(),
%%   <<"documentAttributes">> => list(document_attribute()()),
%%   <<"documentId">> => string(),
%%   <<"documentTitle">> => string(),
%%   <<"documentUri">> => string(),
%%   <<"scoreAttributes">> => score_attributes()
%% }
-type relevant_content() :: #{binary() => any()}.

%% Example:
%% delete_group_response() :: #{}
-type delete_group_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% configuration_event() :: #{
%%   <<"attributeFilter">> => attribute_filter(),
%%   <<"chatMode">> => list(any()),
%%   <<"chatModeConfiguration">> => list()
%% }
-type configuration_event() :: #{binary() => any()}.


%% Example:
%% auth_challenge_response() :: #{
%%   <<"responseMap">> => map()
%% }
-type auth_challenge_response() :: #{binary() => any()}.


%% Example:
%% s3() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type s3() :: #{binary() => any()}.

%% Example:
%% delete_retriever_response() :: #{}
-type delete_retriever_response() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_media_request() :: #{}
-type get_media_request() :: #{}.


%% Example:
%% search_relevant_content_request() :: #{
%%   <<"attributeFilter">> => attribute_filter(),
%%   <<"contentSource">> := list(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryText">> := string()
%% }
-type search_relevant_content_request() :: #{binary() => any()}.


%% Example:
%% list_conversations_response() :: #{
%%   <<"conversations">> => list(conversation()()),
%%   <<"nextToken">> => string()
%% }
-type list_conversations_response() :: #{binary() => any()}.

%% Example:
%% delete_data_accessor_response() :: #{}
-type delete_data_accessor_response() :: #{}.


%% Example:
%% update_user_request() :: #{
%%   <<"userAliasesToDelete">> => list(user_alias()()),
%%   <<"userAliasesToUpdate">> => list(user_alias()())
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% chat_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"conversationId">> => string(),
%%   <<"inputStream">> => list(),
%%   <<"parentMessageId">> => string(),
%%   <<"userGroups">> => list(string()()),
%%   <<"userId">> => string()
%% }
-type chat_input() :: #{binary() => any()}.


%% Example:
%% update_chat_controls_configuration_request() :: #{
%%   <<"blockedPhrasesConfigurationUpdate">> => blocked_phrases_configuration_update(),
%%   <<"clientToken">> => string(),
%%   <<"creatorModeConfiguration">> => creator_mode_configuration(),
%%   <<"responseScope">> => list(any()),
%%   <<"topicConfigurationsToCreateOrUpdate">> => list(topic_configuration()()),
%%   <<"topicConfigurationsToDelete">> => list(topic_configuration()())
%% }
-type update_chat_controls_configuration_request() :: #{binary() => any()}.

%% Example:
%% cancel_subscription_request() :: #{}
-type cancel_subscription_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_data_accessors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_accessors_request() :: #{binary() => any()}.


%% Example:
%% action_review_payload_field() :: #{
%%   <<"allowedFormat">> => string(),
%%   <<"allowedValues">> => list(action_review_payload_field_allowed_value()()),
%%   <<"arrayItemJsonSchema">> => any(),
%%   <<"displayDescription">> => string(),
%%   <<"displayName">> => string(),
%%   <<"displayOrder">> => integer(),
%%   <<"required">> => [boolean()],
%%   <<"type">> => list(any()),
%%   <<"value">> => any()
%% }
-type action_review_payload_field() :: #{binary() => any()}.


%% Example:
%% update_data_source_request() :: #{
%%   <<"configuration">> => any(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"documentEnrichmentConfiguration">> => document_enrichment_configuration(),
%%   <<"mediaExtractionConfiguration">> => media_extraction_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"syncSchedule">> => string(),
%%   <<"vpcConfiguration">> => data_source_vpc_configuration()
%% }
-type update_data_source_request() :: #{binary() => any()}.


%% Example:
%% batch_put_document_request() :: #{
%%   <<"dataSourceSyncId">> => string(),
%%   <<"documents">> := list(document()()),
%%   <<"roleArn">> => string()
%% }
-type batch_put_document_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_subscription_request() :: #{
%%   <<"type">> := list(any())
%% }
-type update_subscription_request() :: #{binary() => any()}.


%% Example:
%% action_review_payload_field_allowed_value() :: #{
%%   <<"displayValue">> => any(),
%%   <<"value">> => any()
%% }
-type action_review_payload_field_allowed_value() :: #{binary() => any()}.


%% Example:
%% get_group_response() :: #{
%%   <<"status">> => group_status_detail(),
%%   <<"statusHistory">> => list(group_status_detail()())
%% }
-type get_group_response() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"currentSubscription">> => subscription_details(),
%%   <<"nextSubscription">> => subscription_details(),
%%   <<"principal">> => list(),
%%   <<"subscriptionArn">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type subscription() :: #{binary() => any()}.


%% Example:
%% native_index_configuration() :: #{
%%   <<"boostingOverride">> => map(),
%%   <<"indexId">> => string()
%% }
-type native_index_configuration() :: #{binary() => any()}.


%% Example:
%% group_members() :: #{
%%   <<"memberGroups">> => list(member_group()()),
%%   <<"memberUsers">> => list(member_user()()),
%%   <<"s3PathForGroupMembers">> => s3()
%% }
-type group_members() :: #{binary() => any()}.


%% Example:
%% quick_sight_configuration() :: #{
%%   <<"clientNamespace">> => string()
%% }
-type quick_sight_configuration() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"subscriptions">> => list(subscription()())
%% }
-type list_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% document_enrichment_configuration() :: #{
%%   <<"inlineConfigurations">> => list(inline_document_enrichment_configuration()()),
%%   <<"postExtractionHookConfiguration">> => hook_configuration(),
%%   <<"preExtractionHookConfiguration">> => hook_configuration()
%% }
-type document_enrichment_configuration() :: #{binary() => any()}.


%% Example:
%% list_data_source_sync_jobs_response() :: #{
%%   <<"history">> => list(data_source_sync_job()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_source_sync_jobs_response() :: #{binary() => any()}.


%% Example:
%% browser_extension_configuration() :: #{
%%   <<"enabledBrowserExtensions">> => list(string()())
%% }
-type browser_extension_configuration() :: #{binary() => any()}.


%% Example:
%% delete_group_request() :: #{
%%   <<"dataSourceId">> => string()
%% }
-type delete_group_request() :: #{binary() => any()}.


%% Example:
%% associate_permission_request() :: #{
%%   <<"actions">> := list(string()()),
%%   <<"principal">> := string(),
%%   <<"statementId">> := string()
%% }
-type associate_permission_request() :: #{binary() => any()}.


%% Example:
%% content_retrieval_rule() :: #{
%%   <<"eligibleDataSources">> => list(eligible_data_source()())
%% }
-type content_retrieval_rule() :: #{binary() => any()}.


%% Example:
%% open_id_connect_provider_configuration() :: #{
%%   <<"secretsArn">> => string(),
%%   <<"secretsRole">> => string()
%% }
-type open_id_connect_provider_configuration() :: #{binary() => any()}.


%% Example:
%% get_chat_controls_configuration_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_chat_controls_configuration_request() :: #{binary() => any()}.


%% Example:
%% attribute_filter() :: #{
%%   <<"andAllFilters">> => list(attribute_filter()()),
%%   <<"containsAll">> => document_attribute(),
%%   <<"containsAny">> => document_attribute(),
%%   <<"equalsTo">> => document_attribute(),
%%   <<"greaterThan">> => document_attribute(),
%%   <<"greaterThanOrEquals">> => document_attribute(),
%%   <<"lessThan">> => document_attribute(),
%%   <<"lessThanOrEquals">> => document_attribute(),
%%   <<"notFilter">> => attribute_filter(),
%%   <<"orAllFilters">> => list(attribute_filter()())
%% }
-type attribute_filter() :: #{binary() => any()}.


%% Example:
%% list_data_source_sync_jobs_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"statusFilter">> => list(any())
%% }
-type list_data_source_sync_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applications">> => list(application()()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% principal_group() :: #{
%%   <<"access">> => list(any()),
%%   <<"membershipType">> => list(any()),
%%   <<"name">> => string()
%% }
-type principal_group() :: #{binary() => any()}.


%% Example:
%% external_resource_exception() :: #{
%%   <<"message">> => string()
%% }
-type external_resource_exception() :: #{binary() => any()}.


%% Example:
%% action_configuration() :: #{
%%   <<"action">> => string(),
%%   <<"filterConfiguration">> => action_filter_configuration()
%% }
-type action_configuration() :: #{binary() => any()}.


%% Example:
%% get_chat_controls_configuration_response() :: #{
%%   <<"blockedPhrases">> => blocked_phrases_configuration(),
%%   <<"creatorModeConfiguration">> => applied_creator_mode_configuration(),
%%   <<"nextToken">> => string(),
%%   <<"responseScope">> => list(any()),
%%   <<"topicConfigurations">> => list(topic_configuration()())
%% }
-type get_chat_controls_configuration_response() :: #{binary() => any()}.


%% Example:
%% group_summary() :: #{
%%   <<"groupName">> => string()
%% }
-type group_summary() :: #{binary() => any()}.


%% Example:
%% attachment_input_event() :: #{
%%   <<"attachment">> => attachment_input()
%% }
-type attachment_input_event() :: #{binary() => any()}.

%% Example:
%% delete_plugin_request() :: #{}
-type delete_plugin_request() :: #{}.


%% Example:
%% create_index_response() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexId">> => string()
%% }
-type create_index_response() :: #{binary() => any()}.


%% Example:
%% snippet_excerpt() :: #{
%%   <<"text">> => string()
%% }
-type snippet_excerpt() :: #{binary() => any()}.


%% Example:
%% retriever() :: #{
%%   <<"applicationId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"retrieverId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type retriever() :: #{binary() => any()}.


%% Example:
%% failed_document() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"error">> => error_detail(),
%%   <<"id">> => string()
%% }
-type failed_document() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% q_apps_configuration() :: #{
%%   <<"qAppsControlMode">> => list(any())
%% }
-type q_apps_configuration() :: #{binary() => any()}.


%% Example:
%% list_groups_response() :: #{
%%   <<"items">> => list(group_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.


%% Example:
%% get_group_request() :: #{
%%   <<"dataSourceId">> => string()
%% }
-type get_group_request() :: #{binary() => any()}.


%% Example:
%% access_configuration() :: #{
%%   <<"accessControls">> => list(access_control()()),
%%   <<"memberRelation">> => list(any())
%% }
-type access_configuration() :: #{binary() => any()}.

%% Example:
%% update_retriever_response() :: #{}
-type update_retriever_response() :: #{}.


%% Example:
%% text_document_statistics() :: #{
%%   <<"indexedTextBytes">> => float(),
%%   <<"indexedTextDocumentCount">> => integer()
%% }
-type text_document_statistics() :: #{binary() => any()}.


%% Example:
%% data_accessor() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataAccessorArn">> => string(),
%%   <<"dataAccessorId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"idcApplicationArn">> => string(),
%%   <<"principal">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_accessor() :: #{binary() => any()}.

%% Example:
%% update_index_response() :: #{}
-type update_index_response() :: #{}.


%% Example:
%% attachment_output() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"conversationId">> => string(),
%%   <<"error">> => error_detail(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type attachment_output() :: #{binary() => any()}.


%% Example:
%% users_and_groups() :: #{
%%   <<"userGroups">> => list(string()()),
%%   <<"userIds">> => list(string()())
%% }
-type users_and_groups() :: #{binary() => any()}.

%% Example:
%% get_retriever_request() :: #{}
-type get_retriever_request() :: #{}.


%% Example:
%% list_groups_request() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"updatedEarlierThan">> := non_neg_integer()
%% }
-type list_groups_request() :: #{binary() => any()}.


%% Example:
%% get_data_source_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"configuration">> => any(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceArn">> => string(),
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"documentEnrichmentConfiguration">> => document_enrichment_configuration(),
%%   <<"error">> => error_detail(),
%%   <<"indexId">> => string(),
%%   <<"mediaExtractionConfiguration">> => media_extraction_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"syncSchedule">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"vpcConfiguration">> => data_source_vpc_configuration()
%% }
-type get_data_source_response() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% date_attribute_boosting_configuration() :: #{
%%   <<"boostingDurationInSeconds">> => float(),
%%   <<"boostingLevel">> => list(any())
%% }
-type date_attribute_boosting_configuration() :: #{binary() => any()}.


%% Example:
%% action_filter_configuration() :: #{
%%   <<"documentAttributeFilter">> => attribute_filter()
%% }
-type action_filter_configuration() :: #{binary() => any()}.

%% Example:
%% get_index_request() :: #{}
-type get_index_request() :: #{}.


%% Example:
%% eligible_data_source() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"indexId">> => string()
%% }
-type eligible_data_source() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{}
-type create_user_response() :: #{}.


%% Example:
%% retriever_content_source() :: #{
%%   <<"retrieverId">> => string()
%% }
-type retriever_content_source() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_subscriptions_request() :: #{binary() => any()}.


%% Example:
%% document() :: #{
%%   <<"accessConfiguration">> => access_configuration(),
%%   <<"attributes">> => list(document_attribute()()),
%%   <<"content">> => list(),
%%   <<"contentType">> => list(any()),
%%   <<"documentEnrichmentConfiguration">> => document_enrichment_configuration(),
%%   <<"id">> => string(),
%%   <<"mediaExtractionConfiguration">> => media_extraction_configuration(),
%%   <<"title">> => string()
%% }
-type document() :: #{binary() => any()}.


%% Example:
%% list_attachments_response() :: #{
%%   <<"attachments">> => list(attachment()()),
%%   <<"nextToken">> => string()
%% }
-type list_attachments_response() :: #{binary() => any()}.

%% Example:
%% stop_data_source_sync_job_response() :: #{}
-type stop_data_source_sync_job_response() :: #{}.

%% Example:
%% end_of_input_event() :: #{}
-type end_of_input_event() :: #{}.


%% Example:
%% saml_configuration() :: #{
%%   <<"metadataXML">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"userGroupAttribute">> => string(),
%%   <<"userIdAttribute">> => string()
%% }
-type saml_configuration() :: #{binary() => any()}.


%% Example:
%% creator_mode_configuration() :: #{
%%   <<"creatorModeControl">> => list(any())
%% }
-type creator_mode_configuration() :: #{binary() => any()}.


%% Example:
%% attachments_configuration() :: #{
%%   <<"attachmentsControlMode">> => list(any())
%% }
-type attachments_configuration() :: #{binary() => any()}.


%% Example:
%% index_statistics() :: #{
%%   <<"textDocumentStatistics">> => text_document_statistics()
%% }
-type index_statistics() :: #{binary() => any()}.


%% Example:
%% associate_permission_response() :: #{
%%   <<"statement">> => string()
%% }
-type associate_permission_response() :: #{binary() => any()}.


%% Example:
%% list_messages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"userId">> => string()
%% }
-type list_messages_request() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% put_group_request() :: #{
%%   <<"dataSourceId">> => string(),
%%   <<"groupMembers">> := group_members(),
%%   <<"groupName">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"type">> := list(any())
%% }
-type put_group_request() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"userAliases">> => list(user_alias()()),
%%   <<"userId">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.


%% Example:
%% get_index_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"capacityConfiguration">> => index_capacity_configuration(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"documentAttributeConfigurations">> => list(document_attribute_configuration()()),
%%   <<"error">> => error_detail(),
%%   <<"indexArn">> => string(),
%%   <<"indexId">> => string(),
%%   <<"indexStatistics">> => index_statistics(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_index_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"actionExecution">> => action_execution(),
%%   <<"actionReview">> => action_review(),
%%   <<"attachments">> => list(attachment_output()()),
%%   <<"body">> => string(),
%%   <<"messageId">> => string(),
%%   <<"sourceAttribution">> => list(source_attribution()()),
%%   <<"time">> => non_neg_integer(),
%%   <<"type">> => list(any())
%% }
-type message() :: #{binary() => any()}.

-type associate_permission_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_document_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_put_document_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type chat_errors() ::
    external_resource_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    license_not_found_exception().

-type chat_sync_errors() ::
    external_resource_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    license_not_found_exception().

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_accessor_errors() ::
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

-type create_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_plugin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_retriever_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_web_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_chat_controls_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_conversation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception().

-type delete_data_accessor_errors() ::
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

-type delete_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_plugin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_retriever_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_web_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_permission_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_chat_controls_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_accessor_errors() ::
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

-type get_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_media_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception() | 
    media_too_large_exception().

-type get_plugin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_retriever_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_web_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_attachments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception().

-type list_conversations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception().

-type list_data_accessors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_source_sync_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_documents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_indices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_messages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception().

-type list_plugin_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_plugin_type_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_plugin_type_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_plugins_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_retrievers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscriptions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_web_experiences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_relevant_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    license_not_found_exception().

-type start_data_source_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_data_source_sync_job_errors() ::
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
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_chat_controls_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_accessor_errors() ::
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

-type update_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_plugin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_retriever_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_web_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or updates a permission policy for a Amazon Q Business
%% application, allowing cross-account access for an ISV.
%%
%% This operation creates a new policy statement for the specified Amazon Q
%% Business application.
%% The policy statement defines the IAM actions that the ISV is allowed to
%% perform on the Amazon Q Business application's resources.
-spec associate_permission(aws_client:aws_client(), binary() | list(), associate_permission_request()) ->
    {ok, associate_permission_response(), tuple()} |
    {error, any()} |
    {error, associate_permission_errors(), tuple()}.
associate_permission(Client, ApplicationId, Input) ->
    associate_permission(Client, ApplicationId, Input, []).

-spec associate_permission(aws_client:aws_client(), binary() | list(), associate_permission_request(), proplists:proplist()) ->
    {ok, associate_permission_response(), tuple()} |
    {error, any()} |
    {error, associate_permission_errors(), tuple()}.
associate_permission(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/policy"],
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

%% @doc Asynchronously deletes one or more documents added using the
%% `BatchPutDocument' API from an Amazon Q Business index.
%%
%% You can see the progress of the deletion, and any error messages related
%% to the
%% process, by using CloudWatch.
-spec batch_delete_document(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_document_request()) ->
    {ok, batch_delete_document_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_document_errors(), tuple()}.
batch_delete_document(Client, ApplicationId, IndexId, Input) ->
    batch_delete_document(Client, ApplicationId, IndexId, Input, []).

-spec batch_delete_document(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_document_request(), proplists:proplist()) ->
    {ok, batch_delete_document_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_document_errors(), tuple()}.
batch_delete_document(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/documents/delete"],
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

%% @doc Adds one or more documents to an Amazon Q Business index.
%%
%% You use this API to:
%%
%% ingest your structured and unstructured documents and documents stored in
%% an
%% Amazon S3 bucket into an Amazon Q Business index.
%%
%% add custom attributes to documents in an Amazon Q Business index.
%%
%% attach an access control list to the documents added to an Amazon Q
%% Business
%% index.
%%
%% You can see the progress of the deletion, and any error messages related
%% to the
%% process, by using CloudWatch.
-spec batch_put_document(aws_client:aws_client(), binary() | list(), binary() | list(), batch_put_document_request()) ->
    {ok, batch_put_document_response(), tuple()} |
    {error, any()} |
    {error, batch_put_document_errors(), tuple()}.
batch_put_document(Client, ApplicationId, IndexId, Input) ->
    batch_put_document(Client, ApplicationId, IndexId, Input, []).

-spec batch_put_document(aws_client:aws_client(), binary() | list(), binary() | list(), batch_put_document_request(), proplists:proplist()) ->
    {ok, batch_put_document_response(), tuple()} |
    {error, any()} |
    {error, batch_put_document_errors(), tuple()}.
batch_put_document(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/documents"],
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

%% @doc Unsubscribes a user or a group from their pricing tier in an Amazon Q
%% Business
%% application.
%%
%% An unsubscribed user or group loses all Amazon Q Business feature access
%% at the
%% start of next month.
-spec cancel_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_subscription_request()) ->
    {ok, cancel_subscription_response(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, ApplicationId, SubscriptionId, Input) ->
    cancel_subscription(Client, ApplicationId, SubscriptionId, Input, []).

-spec cancel_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_subscription_request(), proplists:proplist()) ->
    {ok, cancel_subscription_response(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, ApplicationId, SubscriptionId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), ""],
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

%% @doc Starts or continues a streaming Amazon Q Business conversation.
-spec chat(aws_client:aws_client(), binary() | list(), chat_input()) ->
    {ok, chat_output(), tuple()} |
    {error, any()} |
    {error, chat_errors(), tuple()}.
chat(Client, ApplicationId, Input) ->
    chat(Client, ApplicationId, Input, []).

-spec chat(aws_client:aws_client(), binary() | list(), chat_input(), proplists:proplist()) ->
    {ok, chat_output(), tuple()} |
    {error, any()} |
    {error, chat_errors(), tuple()}.
chat(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations"],
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
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"conversationId">>, <<"conversationId">>},
                     {<<"parentMessageId">>, <<"parentMessageId">>},
                     {<<"userGroups">>, <<"userGroups">>},
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts or continues a non-streaming Amazon Q Business conversation.
-spec chat_sync(aws_client:aws_client(), binary() | list(), chat_sync_input()) ->
    {ok, chat_sync_output(), tuple()} |
    {error, any()} |
    {error, chat_sync_errors(), tuple()}.
chat_sync(Client, ApplicationId, Input) ->
    chat_sync(Client, ApplicationId, Input, []).

-spec chat_sync(aws_client:aws_client(), binary() | list(), chat_sync_input(), proplists:proplist()) ->
    {ok, chat_sync_output(), tuple()} |
    {error, any()} |
    {error, chat_sync_errors(), tuple()}.
chat_sync(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations?sync"],
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
                     {<<"userGroups">>, <<"userGroups">>},
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Q Business application.
%%
%% There are new tiers for Amazon Q Business. Not all features in Amazon Q
%% Business Pro are
%% also available in Amazon Q Business Lite. For information on what's
%% included in
%% Amazon Q Business Lite and what's included in Amazon Q Business Pro,
%% see Amazon Q Business tiers:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#user-sub-tiers.
%% You must use the Amazon Q Business console to assign
%% subscription tiers to users.
%%
%% An Amazon Q Apps service linked role will be created if it's absent in
%% the
%% Amazon Web Services account when `QAppsConfiguration' is enabled in
%% the request. For more information, see Using
%% service-linked roles for Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html.
%%
%% When you create an application, Amazon Q Business may securely transmit
%% data for
%% processing from your selected Amazon Web Services region, but within your
%% geography.
%% For more information, see Cross region
%% inference in Amazon Q Business:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Creates a new data accessor for an ISV to access data from a Amazon Q
%% Business application.
%%
%% The data accessor is an entity that represents the ISV's access to the
%% Amazon Q Business application's data.
%% It includes the IAM role ARN for the ISV, a friendly name, and a set of
%% action configurations that define the
%% specific actions the ISV is allowed to perform and any associated data
%% filters. When the data accessor is created,
%% an IAM Identity Center application is also created to manage the ISV's
%% identity and authentication for
%% accessing the Amazon Q Business application.
-spec create_data_accessor(aws_client:aws_client(), binary() | list(), create_data_accessor_request()) ->
    {ok, create_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, create_data_accessor_errors(), tuple()}.
create_data_accessor(Client, ApplicationId, Input) ->
    create_data_accessor(Client, ApplicationId, Input, []).

-spec create_data_accessor(aws_client:aws_client(), binary() | list(), create_data_accessor_request(), proplists:proplist()) ->
    {ok, create_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, create_data_accessor_errors(), tuple()}.
create_data_accessor(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataaccessors"],
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

%% @doc Creates a data source connector for an Amazon Q Business application.
%%
%% `CreateDataSource' is a synchronous operation. The operation returns
%% 200 if
%% the data source was successfully created. Otherwise, an exception is
%% raised.
-spec create_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_source_request()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, ApplicationId, IndexId, Input) ->
    create_data_source(Client, ApplicationId, IndexId, Input, []).

-spec create_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_source_request(), proplists:proplist()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources"],
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

%% @doc Creates an Amazon Q Business index.
%%
%% To determine if index creation has completed, check the `Status' field
%% returned from a call to `DescribeIndex'. The `Status' field is set
%% to `ACTIVE' when the index is ready to use.
%%
%% Once the index is active, you can index your documents using the
%% `BatchPutDocument'
%% :
%% https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html
%% API or the
%% `CreateDataSource'
%% :
%% https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html
%% API.
-spec create_index(aws_client:aws_client(), binary() | list(), create_index_request()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, ApplicationId, Input) ->
    create_index(Client, ApplicationId, Input, []).

-spec create_index(aws_client:aws_client(), binary() | list(), create_index_request(), proplists:proplist()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices"],
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

%% @doc Creates an Amazon Q Business plugin.
-spec create_plugin(aws_client:aws_client(), binary() | list(), create_plugin_request()) ->
    {ok, create_plugin_response(), tuple()} |
    {error, any()} |
    {error, create_plugin_errors(), tuple()}.
create_plugin(Client, ApplicationId, Input) ->
    create_plugin(Client, ApplicationId, Input, []).

-spec create_plugin(aws_client:aws_client(), binary() | list(), create_plugin_request(), proplists:proplist()) ->
    {ok, create_plugin_response(), tuple()} |
    {error, any()} |
    {error, create_plugin_errors(), tuple()}.
create_plugin(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins"],
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

%% @doc Adds a retriever to your Amazon Q Business application.
-spec create_retriever(aws_client:aws_client(), binary() | list(), create_retriever_request()) ->
    {ok, create_retriever_response(), tuple()} |
    {error, any()} |
    {error, create_retriever_errors(), tuple()}.
create_retriever(Client, ApplicationId, Input) ->
    create_retriever(Client, ApplicationId, Input, []).

-spec create_retriever(aws_client:aws_client(), binary() | list(), create_retriever_request(), proplists:proplist()) ->
    {ok, create_retriever_response(), tuple()} |
    {error, any()} |
    {error, create_retriever_errors(), tuple()}.
create_retriever(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers"],
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

%% @doc Subscribes an IAM Identity Center user or a group to a pricing tier
%% for an
%% Amazon Q Business application.
%%
%% Amazon Q Business offers two subscription tiers: `Q_LITE' and
%% `Q_BUSINESS'. Subscription tier determines feature access for the
%% user.
%% For more information on subscriptions and pricing tiers, see Amazon Q
%% Business
%% pricing: https://aws.amazon.com/q/business/pricing/.
-spec create_subscription(aws_client:aws_client(), binary() | list(), create_subscription_request()) ->
    {ok, create_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, ApplicationId, Input) ->
    create_subscription(Client, ApplicationId, Input, []).

-spec create_subscription(aws_client:aws_client(), binary() | list(), create_subscription_request(), proplists:proplist()) ->
    {ok, create_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/subscriptions"],
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

%% @doc Creates a universally unique identifier (UUID) mapped to a list of
%% local user ids
%% within an application.
-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, ApplicationId, Input) ->
    create_user(Client, ApplicationId, Input, []).

-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users"],
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

%% @doc Creates an Amazon Q Business web experience.
-spec create_web_experience(aws_client:aws_client(), binary() | list(), create_web_experience_request()) ->
    {ok, create_web_experience_response(), tuple()} |
    {error, any()} |
    {error, create_web_experience_errors(), tuple()}.
create_web_experience(Client, ApplicationId, Input) ->
    create_web_experience(Client, ApplicationId, Input, []).

-spec create_web_experience(aws_client:aws_client(), binary() | list(), create_web_experience_request(), proplists:proplist()) ->
    {ok, create_web_experience_response(), tuple()} |
    {error, any()} |
    {error, create_web_experience_errors(), tuple()}.
create_web_experience(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences"],
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

%% @doc Deletes an Amazon Q Business application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Deletes chat controls configured for an existing Amazon Q Business
%% application.
-spec delete_chat_controls_configuration(aws_client:aws_client(), binary() | list(), delete_chat_controls_configuration_request()) ->
    {ok, delete_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_chat_controls_configuration_errors(), tuple()}.
delete_chat_controls_configuration(Client, ApplicationId, Input) ->
    delete_chat_controls_configuration(Client, ApplicationId, Input, []).

-spec delete_chat_controls_configuration(aws_client:aws_client(), binary() | list(), delete_chat_controls_configuration_request(), proplists:proplist()) ->
    {ok, delete_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_chat_controls_configuration_errors(), tuple()}.
delete_chat_controls_configuration(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Deletes an Amazon Q Business web experience conversation.
-spec delete_conversation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_conversation_request()) ->
    {ok, delete_conversation_response(), tuple()} |
    {error, any()} |
    {error, delete_conversation_errors(), tuple()}.
delete_conversation(Client, ApplicationId, ConversationId, Input) ->
    delete_conversation(Client, ApplicationId, ConversationId, Input, []).

-spec delete_conversation(aws_client:aws_client(), binary() | list(), binary() | list(), delete_conversation_request(), proplists:proplist()) ->
    {ok, delete_conversation_response(), tuple()} |
    {error, any()} |
    {error, delete_conversation_errors(), tuple()}.
delete_conversation(Client, ApplicationId, ConversationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), ""],
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
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specified data accessor.
%%
%% This operation permanently removes the data accessor
%% and its associated IAM Identity Center application. Any access granted to
%% the ISV through this data accessor will be revoked.
-spec delete_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_accessor_request()) ->
    {ok, delete_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, delete_data_accessor_errors(), tuple()}.
delete_data_accessor(Client, ApplicationId, DataAccessorId, Input) ->
    delete_data_accessor(Client, ApplicationId, DataAccessorId, Input, []).

-spec delete_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_accessor_request(), proplists:proplist()) ->
    {ok, delete_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, delete_data_accessor_errors(), tuple()}.
delete_data_accessor(Client, ApplicationId, DataAccessorId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataaccessors/", aws_util:encode_uri(DataAccessorId), ""],
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

%% @doc Deletes an Amazon Q Business data source connector.
%%
%% While the data source is being
%% deleted, the `Status' field returned by a call to the
%% `DescribeDataSource' API is set to `DELETING'.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_data_source_request()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_data_source_request(), proplists:proplist()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Deletes a group so that all users and sub groups that belong to the
%% group can no
%% longer access documents only available to that group.
%%
%% For example, after deleting the
%% group &quot;Summer Interns&quot;, all interns who belonged to that group
%% no longer see intern-only
%% documents in their chat results.
%%
%% If you want to delete, update, or replace users or sub groups of a group,
%% you need to
%% use the `PutGroup' operation. For example, if a user in the group
%% &quot;Engineering&quot; leaves the engineering team and another user takes
%% their place, you
%% provide an updated list of users or sub groups that belong to the
%% &quot;Engineering&quot; group
%% when calling `PutGroup'.
-spec delete_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, ApplicationId, GroupName, IndexId, Input) ->
    delete_group(Client, ApplicationId, GroupName, IndexId, Input, []).

-spec delete_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, ApplicationId, GroupName, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups/", aws_util:encode_uri(GroupName), ""],
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
                     {<<"dataSourceId">>, <<"dataSourceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Q Business index.
-spec delete_index(aws_client:aws_client(), binary() | list(), binary() | list(), delete_index_request()) ->
    {ok, delete_index_response(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, ApplicationId, IndexId, Input) ->
    delete_index(Client, ApplicationId, IndexId, Input, []).

-spec delete_index(aws_client:aws_client(), binary() | list(), binary() | list(), delete_index_request(), proplists:proplist()) ->
    {ok, delete_index_response(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
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

%% @doc Deletes an Amazon Q Business plugin.
-spec delete_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_plugin_request()) ->
    {ok, delete_plugin_response(), tuple()} |
    {error, any()} |
    {error, delete_plugin_errors(), tuple()}.
delete_plugin(Client, ApplicationId, PluginId, Input) ->
    delete_plugin(Client, ApplicationId, PluginId, Input, []).

-spec delete_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_plugin_request(), proplists:proplist()) ->
    {ok, delete_plugin_response(), tuple()} |
    {error, any()} |
    {error, delete_plugin_errors(), tuple()}.
delete_plugin(Client, ApplicationId, PluginId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
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

%% @doc Deletes the retriever used by an Amazon Q Business application.
-spec delete_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), delete_retriever_request()) ->
    {ok, delete_retriever_response(), tuple()} |
    {error, any()} |
    {error, delete_retriever_errors(), tuple()}.
delete_retriever(Client, ApplicationId, RetrieverId, Input) ->
    delete_retriever(Client, ApplicationId, RetrieverId, Input, []).

-spec delete_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), delete_retriever_request(), proplists:proplist()) ->
    {ok, delete_retriever_response(), tuple()} |
    {error, any()} |
    {error, delete_retriever_errors(), tuple()}.
delete_retriever(Client, ApplicationId, RetrieverId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
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

%% @doc Deletes a user by email id.
-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, ApplicationId, UserId, Input) ->
    delete_user(Client, ApplicationId, UserId, Input, []).

-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Deletes an Amazon Q Business web experience.
-spec delete_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_experience_request()) ->
    {ok, delete_web_experience_response(), tuple()} |
    {error, any()} |
    {error, delete_web_experience_errors(), tuple()}.
delete_web_experience(Client, ApplicationId, WebExperienceId, Input) ->
    delete_web_experience(Client, ApplicationId, WebExperienceId, Input, []).

-spec delete_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_experience_request(), proplists:proplist()) ->
    {ok, delete_web_experience_response(), tuple()} |
    {error, any()} |
    {error, delete_web_experience_errors(), tuple()}.
delete_web_experience(Client, ApplicationId, WebExperienceId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
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

%% @doc Removes a permission policy from a Amazon Q Business application,
%% revoking the cross-account access that was
%% previously granted to an ISV.
%%
%% This operation deletes the specified policy statement from the
%% application's permission policy.
-spec disassociate_permission(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_permission_request()) ->
    {ok, disassociate_permission_response(), tuple()} |
    {error, any()} |
    {error, disassociate_permission_errors(), tuple()}.
disassociate_permission(Client, ApplicationId, StatementId, Input) ->
    disassociate_permission(Client, ApplicationId, StatementId, Input, []).

-spec disassociate_permission(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_permission_request(), proplists:proplist()) ->
    {ok, disassociate_permission_response(), tuple()} |
    {error, any()} |
    {error, disassociate_permission_errors(), tuple()}.
disassociate_permission(Client, ApplicationId, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/policy/", aws_util:encode_uri(StatementId), ""],
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

%% @doc Gets information about an existing Amazon Q Business application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an chat controls configured for an existing
%% Amazon Q Business
%% application.
-spec get_chat_controls_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_chat_controls_configuration_errors(), tuple()}.
get_chat_controls_configuration(Client, ApplicationId)
  when is_map(Client) ->
    get_chat_controls_configuration(Client, ApplicationId, #{}, #{}).

-spec get_chat_controls_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_chat_controls_configuration_errors(), tuple()}.
get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_chat_controls_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_chat_controls_configuration_errors(), tuple()}.
get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Retrieves information about a specified data accessor.
%%
%% This operation returns details about the
%% data accessor, including its display name, unique identifier, Amazon
%% Resource Name (ARN), the associated
%% Amazon Q Business application and IAM Identity Center application, the IAM
%% role for the ISV, the
%% action configurations, and the timestamps for when the data accessor was
%% created and last updated.
-spec get_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, get_data_accessor_errors(), tuple()}.
get_data_accessor(Client, ApplicationId, DataAccessorId)
  when is_map(Client) ->
    get_data_accessor(Client, ApplicationId, DataAccessorId, #{}, #{}).

-spec get_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, get_data_accessor_errors(), tuple()}.
get_data_accessor(Client, ApplicationId, DataAccessorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_accessor(Client, ApplicationId, DataAccessorId, QueryMap, HeadersMap, []).

-spec get_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, get_data_accessor_errors(), tuple()}.
get_data_accessor(Client, ApplicationId, DataAccessorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataaccessors/", aws_util:encode_uri(DataAccessorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q Business data source
%% connector.
-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApplicationId, DataSourceId, IndexId)
  when is_map(Client) ->
    get_data_source(Client, ApplicationId, DataSourceId, IndexId, #{}, #{}).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, []).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a group by group name.
-spec get_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, ApplicationId, GroupName, IndexId)
  when is_map(Client) ->
    get_group(Client, ApplicationId, GroupName, IndexId, #{}, #{}).

-spec get_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap, []).

-spec get_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceId">>, maps:get(<<"dataSourceId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q Business index.
-spec get_index(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_index_response(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    get_index(Client, ApplicationId, IndexId, #{}, #{}).

-spec get_index(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_index_response(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

-spec get_index(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_index_response(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the image bytes corresponding to a media object.
%%
%% If you have implemented your own application with the Chat and ChatSync
%% APIs, and
%% have enabled content extraction from visual data in Amazon Q Business, you
%% use the GetMedia API operation to download
%% the images so you can show them in your UI with responses.
%%
%% For more information, see Extracting semantic meaning from images and
%% visuals:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html.
-spec get_media(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_media_response(), tuple()} |
    {error, any()} |
    {error, get_media_errors(), tuple()}.
get_media(Client, ApplicationId, ConversationId, MediaId, MessageId)
  when is_map(Client) ->
    get_media(Client, ApplicationId, ConversationId, MediaId, MessageId, #{}, #{}).

-spec get_media(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_media_response(), tuple()} |
    {error, any()} |
    {error, get_media_errors(), tuple()}.
get_media(Client, ApplicationId, ConversationId, MediaId, MessageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media(Client, ApplicationId, ConversationId, MediaId, MessageId, QueryMap, HeadersMap, []).

-spec get_media(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_response(), tuple()} |
    {error, any()} |
    {error, get_media_errors(), tuple()}.
get_media(Client, ApplicationId, ConversationId, MediaId, MessageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), "/messages/", aws_util:encode_uri(MessageId), "/media/", aws_util:encode_uri(MediaId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q Business plugin.
-spec get_plugin(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_plugin_response(), tuple()} |
    {error, any()} |
    {error, get_plugin_errors(), tuple()}.
get_plugin(Client, ApplicationId, PluginId)
  when is_map(Client) ->
    get_plugin(Client, ApplicationId, PluginId, #{}, #{}).

-spec get_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_plugin_response(), tuple()} |
    {error, any()} |
    {error, get_plugin_errors(), tuple()}.
get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap, []).

-spec get_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_plugin_response(), tuple()} |
    {error, any()} |
    {error, get_plugin_errors(), tuple()}.
get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current permission policy for a Amazon Q Business
%% application.
%%
%% The policy is
%% returned as a JSON-formatted string and defines the IAM actions that are
%% allowed or denied for the application's resources.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ApplicationId)
  when is_map(Client) ->
    get_policy(Client, ApplicationId, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing retriever used by an Amazon Q
%% Business
%% application.
-spec get_retriever(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_retriever_response(), tuple()} |
    {error, any()} |
    {error, get_retriever_errors(), tuple()}.
get_retriever(Client, ApplicationId, RetrieverId)
  when is_map(Client) ->
    get_retriever(Client, ApplicationId, RetrieverId, #{}, #{}).

-spec get_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_retriever_response(), tuple()} |
    {error, any()} |
    {error, get_retriever_errors(), tuple()}.
get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap, []).

-spec get_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_retriever_response(), tuple()} |
    {error, any()} |
    {error, get_retriever_errors(), tuple()}.
get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the universally unique identifier (UUID) associated with a
%% local user in a
%% data source.
-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, ApplicationId, UserId)
  when is_map(Client) ->
    get_user(Client, ApplicationId, UserId, #{}, #{}).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap, []).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q Business web experience.
-spec get_web_experience(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_web_experience_response(), tuple()} |
    {error, any()} |
    {error, get_web_experience_errors(), tuple()}.
get_web_experience(Client, ApplicationId, WebExperienceId)
  when is_map(Client) ->
    get_web_experience(Client, ApplicationId, WebExperienceId, #{}, #{}).

-spec get_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_web_experience_response(), tuple()} |
    {error, any()} |
    {error, get_web_experience_errors(), tuple()}.
get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap, []).

-spec get_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_web_experience_response(), tuple()} |
    {error, any()} |
    {error, get_web_experience_errors(), tuple()}.
get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon Q Business applications.
%%
%% Amazon Q Business applications may securely transmit data for processing
%% across
%% Amazon Web Services Regions within your geography. For more information,
%% see
%% Cross region
%% inference in Amazon Q Business:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
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

%% @doc Gets a list of attachments associated with an Amazon Q Business web
%% experience or a list of attachements associated with a specific Amazon Q
%% Business conversation.
-spec list_attachments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client, ApplicationId)
  when is_map(Client) ->
    list_attachments(Client, ApplicationId, #{}, #{}).

-spec list_attachments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attachments(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_attachments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_attachments_errors(), tuple()}.
list_attachments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/attachments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"conversationId">>, maps:get(<<"conversationId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more Amazon Q Business conversations.
-spec list_conversations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_conversations_response(), tuple()} |
    {error, any()} |
    {error, list_conversations_errors(), tuple()}.
list_conversations(Client, ApplicationId)
  when is_map(Client) ->
    list_conversations(Client, ApplicationId, #{}, #{}).

-spec list_conversations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_conversations_response(), tuple()} |
    {error, any()} |
    {error, list_conversations_errors(), tuple()}.
list_conversations(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_conversations(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_conversations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_conversations_response(), tuple()} |
    {error, any()} |
    {error, list_conversations_errors(), tuple()}.
list_conversations(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations"],
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
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data accessors for a Amazon Q Business application.
%%
%% This operation returns a paginated
%% list of data accessor summaries, including the friendly name, unique
%% identifier, ARN,
%% associated IAM role, and creation/update timestamps for each data
%% accessor.
-spec list_data_accessors(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_accessors_response(), tuple()} |
    {error, any()} |
    {error, list_data_accessors_errors(), tuple()}.
list_data_accessors(Client, ApplicationId)
  when is_map(Client) ->
    list_data_accessors(Client, ApplicationId, #{}, #{}).

-spec list_data_accessors(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_accessors_response(), tuple()} |
    {error, any()} |
    {error, list_data_accessors_errors(), tuple()}.
list_data_accessors(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_accessors(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_data_accessors(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_accessors_response(), tuple()} |
    {error, any()} |
    {error, list_data_accessors_errors(), tuple()}.
list_data_accessors(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataaccessors"],
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

%% @doc Get information about an Amazon Q Business data source connector
%% synchronization.
-spec list_data_source_sync_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_data_source_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_source_sync_jobs_errors(), tuple()}.
list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId)
  when is_map(Client) ->
    list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, #{}, #{}).

-spec list_data_source_sync_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_source_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_source_sync_jobs_errors(), tuple()}.
list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, []).

-spec list_data_source_sync_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_source_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_source_sync_jobs_errors(), tuple()}.
list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/syncjobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"syncStatus">>, maps:get(<<"syncStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Q Business data source connectors that you have
%% created.
-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    list_data_sources(Client, ApplicationId, IndexId, #{}, #{}).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources"],
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

%% @doc A list of documents attached to an index.
-spec list_documents(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_documents_response(), tuple()} |
    {error, any()} |
    {error, list_documents_errors(), tuple()}.
list_documents(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    list_documents(Client, ApplicationId, IndexId, #{}, #{}).

-spec list_documents(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_documents_response(), tuple()} |
    {error, any()} |
    {error, list_documents_errors(), tuple()}.
list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

-spec list_documents(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_documents_response(), tuple()} |
    {error, any()} |
    {error, list_documents_errors(), tuple()}.
list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/index/", aws_util:encode_uri(IndexId), "/documents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceIds">>, maps:get(<<"dataSourceIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of groups that are mapped to users.
-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan)
  when is_map(Client) ->
    list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, #{}, #{}).

-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap, []).

-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceId">>, maps:get(<<"dataSourceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"updatedEarlierThan">>, UpdatedEarlierThan}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Q Business indices you have created.
-spec list_indices(aws_client:aws_client(), binary() | list()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, ApplicationId)
  when is_map(Client) ->
    list_indices(Client, ApplicationId, #{}, #{}).

-spec list_indices(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_indices(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_indices(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices"],
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

%% @doc Gets a list of messages associated with an Amazon Q Business web
%% experience.
-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, ApplicationId, ConversationId)
  when is_map(Client) ->
    list_messages(Client, ApplicationId, ConversationId, #{}, #{}).

-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, ApplicationId, ConversationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_messages(Client, ApplicationId, ConversationId, QueryMap, HeadersMap, []).

-spec list_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_messages_response(), tuple()} |
    {error, any()} |
    {error, list_messages_errors(), tuple()}.
list_messages(Client, ApplicationId, ConversationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), ""],
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
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists configured Amazon Q Business actions for a specific plugin in
%% an Amazon Q Business application.
-spec list_plugin_actions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_plugin_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_actions_errors(), tuple()}.
list_plugin_actions(Client, ApplicationId, PluginId)
  when is_map(Client) ->
    list_plugin_actions(Client, ApplicationId, PluginId, #{}, #{}).

-spec list_plugin_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_plugin_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_actions_errors(), tuple()}.
list_plugin_actions(Client, ApplicationId, PluginId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugin_actions(Client, ApplicationId, PluginId, QueryMap, HeadersMap, []).

-spec list_plugin_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_plugin_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_actions_errors(), tuple()}.
list_plugin_actions(Client, ApplicationId, PluginId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), "/actions"],
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

%% @doc Lists configured Amazon Q Business actions for any plugin type—both
%% built-in and custom.
-spec list_plugin_type_actions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_plugin_type_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_actions_errors(), tuple()}.
list_plugin_type_actions(Client, PluginType)
  when is_map(Client) ->
    list_plugin_type_actions(Client, PluginType, #{}, #{}).

-spec list_plugin_type_actions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_plugin_type_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_actions_errors(), tuple()}.
list_plugin_type_actions(Client, PluginType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugin_type_actions(Client, PluginType, QueryMap, HeadersMap, []).

-spec list_plugin_type_actions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_plugin_type_actions_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_actions_errors(), tuple()}.
list_plugin_type_actions(Client, PluginType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pluginTypes/", aws_util:encode_uri(PluginType), "/actions"],
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

%% @doc Lists metadata for all Amazon Q Business plugin types.
-spec list_plugin_type_metadata(aws_client:aws_client()) ->
    {ok, list_plugin_type_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_metadata_errors(), tuple()}.
list_plugin_type_metadata(Client)
  when is_map(Client) ->
    list_plugin_type_metadata(Client, #{}, #{}).

-spec list_plugin_type_metadata(aws_client:aws_client(), map(), map()) ->
    {ok, list_plugin_type_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_metadata_errors(), tuple()}.
list_plugin_type_metadata(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugin_type_metadata(Client, QueryMap, HeadersMap, []).

-spec list_plugin_type_metadata(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_plugin_type_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_plugin_type_metadata_errors(), tuple()}.
list_plugin_type_metadata(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pluginTypeMetadata"],
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

%% @doc Lists configured Amazon Q Business plugins.
-spec list_plugins(aws_client:aws_client(), binary() | list()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client, ApplicationId)
  when is_map(Client) ->
    list_plugins(Client, ApplicationId, #{}, #{}).

-spec list_plugins(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugins(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_plugins(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins"],
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

%% @doc Lists the retriever used by an Amazon Q Business application.
-spec list_retrievers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_retrievers_response(), tuple()} |
    {error, any()} |
    {error, list_retrievers_errors(), tuple()}.
list_retrievers(Client, ApplicationId)
  when is_map(Client) ->
    list_retrievers(Client, ApplicationId, #{}, #{}).

-spec list_retrievers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_retrievers_response(), tuple()} |
    {error, any()} |
    {error, list_retrievers_errors(), tuple()}.
list_retrievers(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_retrievers(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_retrievers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_retrievers_response(), tuple()} |
    {error, any()} |
    {error, list_retrievers_errors(), tuple()}.
list_retrievers(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers"],
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

%% @doc Lists all subscriptions created in an Amazon Q Business application.
-spec list_subscriptions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, ApplicationId)
  when is_map(Client) ->
    list_subscriptions(Client, ApplicationId, #{}, #{}).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscriptions(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/subscriptions"],
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

%% @doc Gets a list of tags associated with a specified resource.
%%
%% Amazon Q Business applications
%% and data sources can have tags associated with them.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more Amazon Q Business Web Experiences.
-spec list_web_experiences(aws_client:aws_client(), binary() | list()) ->
    {ok, list_web_experiences_response(), tuple()} |
    {error, any()} |
    {error, list_web_experiences_errors(), tuple()}.
list_web_experiences(Client, ApplicationId)
  when is_map(Client) ->
    list_web_experiences(Client, ApplicationId, #{}, #{}).

-spec list_web_experiences(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_web_experiences_response(), tuple()} |
    {error, any()} |
    {error, list_web_experiences_errors(), tuple()}.
list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_web_experiences(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_web_experiences_response(), tuple()} |
    {error, any()} |
    {error, list_web_experiences_errors(), tuple()}.
list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences"],
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

%% @doc Enables your end user to provide feedback on their Amazon Q Business
%% generated chat
%% responses.
-spec put_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_feedback_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, ApplicationId, ConversationId, MessageId, Input) ->
    put_feedback(Client, ApplicationId, ConversationId, MessageId, Input, []).

-spec put_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_feedback_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, ApplicationId, ConversationId, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), "/messages/", aws_util:encode_uri(MessageId), "/feedback"],
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
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create, or updates, a mapping of users—who have access to a
%% document—to
%% groups.
%%
%% You can also map sub groups to groups. For example, the group
%% &quot;Company Intellectual
%% Property Teams&quot; includes sub groups &quot;Research&quot; and
%% &quot;Engineering&quot;. These sub groups
%% include their own list of users or people who work in these teams. Only
%% users who work
%% in research and engineering, and therefore belong in the intellectual
%% property group,
%% can see top-secret company documents in their Amazon Q Business chat
%% results.
%%
%% There are two options for creating groups, either passing group members
%% inline or using an S3 file via the
%% S3PathForGroupMembers field. For inline groups, there is a limit of 1000
%% members per group and for provided S3 files
%% there is a limit of 100 thousand members. When creating a group using an
%% S3 file, you provide both
%% an S3 file and a `RoleArn' for Amazon Q Buisness to access the file.
-spec put_group(aws_client:aws_client(), binary() | list(), binary() | list(), put_group_request()) ->
    {ok, put_group_response(), tuple()} |
    {error, any()} |
    {error, put_group_errors(), tuple()}.
put_group(Client, ApplicationId, IndexId, Input) ->
    put_group(Client, ApplicationId, IndexId, Input, []).

-spec put_group(aws_client:aws_client(), binary() | list(), binary() | list(), put_group_request(), proplists:proplist()) ->
    {ok, put_group_response(), tuple()} |
    {error, any()} |
    {error, put_group_errors(), tuple()}.
put_group(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups"],
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

%% @doc Searches for relevant content in a Amazon Q Business application
%% based on a query.
%%
%% This operation takes a
%% search query text, the Amazon Q Business application identifier, and
%% optional filters
%% (such as content source and maximum results) as input. It returns a list
%% of
%% relevant content items, where each item includes the content text, the
%% unique document identifier,
%% the document title, the document URI, any relevant document attributes,
%% and score attributes
%% indicating the confidence level of the relevance.
-spec search_relevant_content(aws_client:aws_client(), binary() | list(), search_relevant_content_request()) ->
    {ok, search_relevant_content_response(), tuple()} |
    {error, any()} |
    {error, search_relevant_content_errors(), tuple()}.
search_relevant_content(Client, ApplicationId, Input) ->
    search_relevant_content(Client, ApplicationId, Input, []).

-spec search_relevant_content(aws_client:aws_client(), binary() | list(), search_relevant_content_request(), proplists:proplist()) ->
    {ok, search_relevant_content_response(), tuple()} |
    {error, any()} |
    {error, search_relevant_content_errors(), tuple()}.
search_relevant_content(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/relevant-content"],
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

%% @doc Starts a data source connector synchronization job.
%%
%% If a synchronization job is
%% already in progress, Amazon Q Business returns a `ConflictException'.
-spec start_data_source_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_data_source_sync_job_request()) ->
    {ok, start_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_sync_job_errors(), tuple()}.
start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input, []).

-spec start_data_source_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_data_source_sync_job_request(), proplists:proplist()) ->
    {ok, start_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_sync_job_errors(), tuple()}.
start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/startsync"],
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

%% @doc Stops an Amazon Q Business data source connector synchronization job
%% already in
%% progress.
-spec stop_data_source_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_data_source_sync_job_request()) ->
    {ok, stop_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, stop_data_source_sync_job_errors(), tuple()}.
stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input, []).

-spec stop_data_source_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_data_source_sync_job_request(), proplists:proplist()) ->
    {ok, stop_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, stop_data_source_sync_job_errors(), tuple()}.
stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/stopsync"],
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

%% @doc Adds the specified tag to the specified Amazon Q Business application
%% or data source
%% resource.
%%
%% If the tag already exists, the existing value is replaced with the new
%% value.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceARN, Input) ->
    tag_resource(Client, ResourceARN, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Removes a tag from an Amazon Q Business application or a data source.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceARN, Input) ->
    untag_resource(Client, ResourceARN, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Updates an existing Amazon Q Business application.
%%
%% Amazon Q Business applications may securely transmit data for processing
%% across
%% Amazon Web Services Regions within your geography. For more information,
%% see
%% Cross region
%% inference in Amazon Q Business:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html.
%%
%% An Amazon Q Apps service-linked role will be created if it's absent in
%% the
%% Amazon Web Services account when `QAppsConfiguration' is enabled in
%% the request. For more information, see Using
%% service-linked roles for Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Updates an set of chat controls configured for an existing Amazon Q
%% Business
%% application.
-spec update_chat_controls_configuration(aws_client:aws_client(), binary() | list(), update_chat_controls_configuration_request()) ->
    {ok, update_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_chat_controls_configuration_errors(), tuple()}.
update_chat_controls_configuration(Client, ApplicationId, Input) ->
    update_chat_controls_configuration(Client, ApplicationId, Input, []).

-spec update_chat_controls_configuration(aws_client:aws_client(), binary() | list(), update_chat_controls_configuration_request(), proplists:proplist()) ->
    {ok, update_chat_controls_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_chat_controls_configuration_errors(), tuple()}.
update_chat_controls_configuration(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Updates an existing data accessor.
%%
%% This operation allows modifying the action configurations
%% (the allowed actions and associated filters) and the display name of the
%% data accessor.
%% It does not allow changing the IAM role associated with the data accessor
%% or other core properties of the data accessor.
-spec update_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_accessor_request()) ->
    {ok, update_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, update_data_accessor_errors(), tuple()}.
update_data_accessor(Client, ApplicationId, DataAccessorId, Input) ->
    update_data_accessor(Client, ApplicationId, DataAccessorId, Input, []).

-spec update_data_accessor(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_accessor_request(), proplists:proplist()) ->
    {ok, update_data_accessor_response(), tuple()} |
    {error, any()} |
    {error, update_data_accessor_errors(), tuple()}.
update_data_accessor(Client, ApplicationId, DataAccessorId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataaccessors/", aws_util:encode_uri(DataAccessorId), ""],
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

%% @doc Updates an existing Amazon Q Business data source connector.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_data_source_request()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_data_source_request(), proplists:proplist()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Updates an Amazon Q Business index.
-spec update_index(aws_client:aws_client(), binary() | list(), binary() | list(), update_index_request()) ->
    {ok, update_index_response(), tuple()} |
    {error, any()} |
    {error, update_index_errors(), tuple()}.
update_index(Client, ApplicationId, IndexId, Input) ->
    update_index(Client, ApplicationId, IndexId, Input, []).

-spec update_index(aws_client:aws_client(), binary() | list(), binary() | list(), update_index_request(), proplists:proplist()) ->
    {ok, update_index_response(), tuple()} |
    {error, any()} |
    {error, update_index_errors(), tuple()}.
update_index(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
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

%% @doc Updates an Amazon Q Business plugin.
-spec update_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), update_plugin_request()) ->
    {ok, update_plugin_response(), tuple()} |
    {error, any()} |
    {error, update_plugin_errors(), tuple()}.
update_plugin(Client, ApplicationId, PluginId, Input) ->
    update_plugin(Client, ApplicationId, PluginId, Input, []).

-spec update_plugin(aws_client:aws_client(), binary() | list(), binary() | list(), update_plugin_request(), proplists:proplist()) ->
    {ok, update_plugin_response(), tuple()} |
    {error, any()} |
    {error, update_plugin_errors(), tuple()}.
update_plugin(Client, ApplicationId, PluginId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
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

%% @doc Updates the retriever used for your Amazon Q Business application.
-spec update_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), update_retriever_request()) ->
    {ok, update_retriever_response(), tuple()} |
    {error, any()} |
    {error, update_retriever_errors(), tuple()}.
update_retriever(Client, ApplicationId, RetrieverId, Input) ->
    update_retriever(Client, ApplicationId, RetrieverId, Input, []).

-spec update_retriever(aws_client:aws_client(), binary() | list(), binary() | list(), update_retriever_request(), proplists:proplist()) ->
    {ok, update_retriever_response(), tuple()} |
    {error, any()} |
    {error, update_retriever_errors(), tuple()}.
update_retriever(Client, ApplicationId, RetrieverId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
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

%% @doc Updates the pricing tier for an Amazon Q Business subscription.
%%
%% Upgrades are instant.
%% Downgrades apply at the start of the next month. Subscription tier
%% determines feature
%% access for the user. For more information on subscriptions and pricing
%% tiers, see Amazon Q Business
%% pricing: https://aws.amazon.com/q/business/pricing/.
-spec update_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), update_subscription_request()) ->
    {ok, update_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, ApplicationId, SubscriptionId, Input) ->
    update_subscription(Client, ApplicationId, SubscriptionId, Input, []).

-spec update_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), update_subscription_request(), proplists:proplist()) ->
    {ok, update_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, ApplicationId, SubscriptionId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), ""],
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

%% @doc Updates a information associated with a user id.
-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, ApplicationId, UserId, Input) ->
    update_user(Client, ApplicationId, UserId, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Updates an Amazon Q Business web experience.
-spec update_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), update_web_experience_request()) ->
    {ok, update_web_experience_response(), tuple()} |
    {error, any()} |
    {error, update_web_experience_errors(), tuple()}.
update_web_experience(Client, ApplicationId, WebExperienceId, Input) ->
    update_web_experience(Client, ApplicationId, WebExperienceId, Input, []).

-spec update_web_experience(aws_client:aws_client(), binary() | list(), binary() | list(), update_web_experience_request(), proplists:proplist()) ->
    {ok, update_web_experience_response(), tuple()} |
    {error, any()} |
    {error, update_web_experience_errors(), tuple()}.
update_web_experience(Client, ApplicationId, WebExperienceId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
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
    Client1 = Client#{service => <<"qbusiness">>},
    Host = build_host(<<"qbusiness">>, Client1),
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
