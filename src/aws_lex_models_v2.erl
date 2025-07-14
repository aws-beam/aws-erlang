%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_lex_models_v2).

-export([batch_create_custom_vocabulary_item/5,
         batch_create_custom_vocabulary_item/6,
         batch_delete_custom_vocabulary_item/5,
         batch_delete_custom_vocabulary_item/6,
         batch_update_custom_vocabulary_item/5,
         batch_update_custom_vocabulary_item/6,
         build_bot_locale/5,
         build_bot_locale/6,
         create_bot/2,
         create_bot/3,
         create_bot_alias/3,
         create_bot_alias/4,
         create_bot_locale/4,
         create_bot_locale/5,
         create_bot_replica/3,
         create_bot_replica/4,
         create_bot_version/3,
         create_bot_version/4,
         create_export/2,
         create_export/3,
         create_intent/5,
         create_intent/6,
         create_resource_policy/3,
         create_resource_policy/4,
         create_resource_policy_statement/3,
         create_resource_policy_statement/4,
         create_slot/6,
         create_slot/7,
         create_slot_type/5,
         create_slot_type/6,
         create_test_set_discrepancy_report/3,
         create_test_set_discrepancy_report/4,
         create_upload_url/2,
         create_upload_url/3,
         delete_bot/3,
         delete_bot/4,
         delete_bot_alias/4,
         delete_bot_alias/5,
         delete_bot_locale/5,
         delete_bot_locale/6,
         delete_bot_replica/4,
         delete_bot_replica/5,
         delete_bot_version/4,
         delete_bot_version/5,
         delete_custom_vocabulary/5,
         delete_custom_vocabulary/6,
         delete_export/3,
         delete_export/4,
         delete_import/3,
         delete_import/4,
         delete_intent/6,
         delete_intent/7,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_resource_policy_statement/4,
         delete_resource_policy_statement/5,
         delete_slot/7,
         delete_slot/8,
         delete_slot_type/6,
         delete_slot_type/7,
         delete_test_set/3,
         delete_test_set/4,
         delete_utterances/3,
         delete_utterances/4,
         describe_bot/2,
         describe_bot/4,
         describe_bot/5,
         describe_bot_alias/3,
         describe_bot_alias/5,
         describe_bot_alias/6,
         describe_bot_locale/4,
         describe_bot_locale/6,
         describe_bot_locale/7,
         describe_bot_recommendation/5,
         describe_bot_recommendation/7,
         describe_bot_recommendation/8,
         describe_bot_replica/3,
         describe_bot_replica/5,
         describe_bot_replica/6,
         describe_bot_resource_generation/5,
         describe_bot_resource_generation/7,
         describe_bot_resource_generation/8,
         describe_bot_version/3,
         describe_bot_version/5,
         describe_bot_version/6,
         describe_custom_vocabulary_metadata/4,
         describe_custom_vocabulary_metadata/6,
         describe_custom_vocabulary_metadata/7,
         describe_export/2,
         describe_export/4,
         describe_export/5,
         describe_import/2,
         describe_import/4,
         describe_import/5,
         describe_intent/5,
         describe_intent/7,
         describe_intent/8,
         describe_resource_policy/2,
         describe_resource_policy/4,
         describe_resource_policy/5,
         describe_slot/6,
         describe_slot/8,
         describe_slot/9,
         describe_slot_type/5,
         describe_slot_type/7,
         describe_slot_type/8,
         describe_test_execution/2,
         describe_test_execution/4,
         describe_test_execution/5,
         describe_test_set/2,
         describe_test_set/4,
         describe_test_set/5,
         describe_test_set_discrepancy_report/2,
         describe_test_set_discrepancy_report/4,
         describe_test_set_discrepancy_report/5,
         describe_test_set_generation/2,
         describe_test_set_generation/4,
         describe_test_set_generation/5,
         generate_bot_element/5,
         generate_bot_element/6,
         get_test_execution_artifacts_url/2,
         get_test_execution_artifacts_url/4,
         get_test_execution_artifacts_url/5,
         list_aggregated_utterances/3,
         list_aggregated_utterances/4,
         list_bot_alias_replicas/4,
         list_bot_alias_replicas/5,
         list_bot_aliases/3,
         list_bot_aliases/4,
         list_bot_locales/4,
         list_bot_locales/5,
         list_bot_recommendations/5,
         list_bot_recommendations/6,
         list_bot_replicas/3,
         list_bot_replicas/4,
         list_bot_resource_generations/5,
         list_bot_resource_generations/6,
         list_bot_version_replicas/4,
         list_bot_version_replicas/5,
         list_bot_versions/3,
         list_bot_versions/4,
         list_bots/2,
         list_bots/3,
         list_built_in_intents/3,
         list_built_in_intents/4,
         list_built_in_slot_types/3,
         list_built_in_slot_types/4,
         list_custom_vocabulary_items/5,
         list_custom_vocabulary_items/6,
         list_exports/2,
         list_exports/3,
         list_imports/2,
         list_imports/3,
         list_intent_metrics/3,
         list_intent_metrics/4,
         list_intent_paths/3,
         list_intent_paths/4,
         list_intent_stage_metrics/3,
         list_intent_stage_metrics/4,
         list_intents/5,
         list_intents/6,
         list_recommended_intents/6,
         list_recommended_intents/7,
         list_session_analytics_data/3,
         list_session_analytics_data/4,
         list_session_metrics/3,
         list_session_metrics/4,
         list_slot_types/5,
         list_slot_types/6,
         list_slots/6,
         list_slots/7,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_test_execution_result_items/3,
         list_test_execution_result_items/4,
         list_test_executions/2,
         list_test_executions/3,
         list_test_set_records/3,
         list_test_set_records/4,
         list_test_sets/2,
         list_test_sets/3,
         list_utterance_analytics_data/3,
         list_utterance_analytics_data/4,
         list_utterance_metrics/3,
         list_utterance_metrics/4,
         search_associated_transcripts/6,
         search_associated_transcripts/7,
         start_bot_recommendation/5,
         start_bot_recommendation/6,
         start_bot_resource_generation/5,
         start_bot_resource_generation/6,
         start_import/2,
         start_import/3,
         start_test_execution/3,
         start_test_execution/4,
         start_test_set_generation/2,
         start_test_set_generation/3,
         stop_bot_recommendation/6,
         stop_bot_recommendation/7,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_bot/3,
         update_bot/4,
         update_bot_alias/4,
         update_bot_alias/5,
         update_bot_locale/5,
         update_bot_locale/6,
         update_bot_recommendation/6,
         update_bot_recommendation/7,
         update_export/3,
         update_export/4,
         update_intent/6,
         update_intent/7,
         update_resource_policy/3,
         update_resource_policy/4,
         update_slot/7,
         update_slot/8,
         update_slot_type/6,
         update_slot_type/7,
         update_test_set/3,
         update_test_set/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_custom_vocabulary_metadata_request() :: #{}
-type describe_custom_vocabulary_metadata_request() :: #{}.


%% Example:
%% s3_bucket_transcript_source() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"pathFormat">> => path_format(),
%%   <<"s3BucketName">> => string(),
%%   <<"transcriptFilter">> => transcript_filter(),
%%   <<"transcriptFormat">> => list(any())
%% }
-type s3_bucket_transcript_source() :: #{binary() => any()}.


%% Example:
%% import_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type import_sort_by() :: #{binary() => any()}.


%% Example:
%% built_in_intent_summary() :: #{
%%   <<"description">> => string(),
%%   <<"intentSignature">> => string()
%% }
-type built_in_intent_summary() :: #{binary() => any()}.


%% Example:
%% fulfillment_updates_specification() :: #{
%%   <<"active">> => boolean(),
%%   <<"startResponse">> => fulfillment_start_response_specification(),
%%   <<"timeoutInSeconds">> => integer(),
%%   <<"updateResponse">> => fulfillment_update_response_specification()
%% }
-type fulfillment_updates_specification() :: #{binary() => any()}.


%% Example:
%% analytics_intent_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any()),
%%   <<"statistic">> => list(any())
%% }
-type analytics_intent_metric() :: #{binary() => any()}.


%% Example:
%% grammar_slot_type_setting() :: #{
%%   <<"source">> => grammar_slot_type_source()
%% }
-type grammar_slot_type_setting() :: #{binary() => any()}.


%% Example:
%% bot_recommendation_results() :: #{
%%   <<"associatedTranscriptsUrl">> => string(),
%%   <<"botLocaleExportUrl">> => string(),
%%   <<"statistics">> => bot_recommendation_result_statistics()
%% }
-type bot_recommendation_results() :: #{binary() => any()}.

%% Example:
%% delete_test_set_request() :: #{}
-type delete_test_set_request() :: #{}.


%% Example:
%% bot_locale_import_specification() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type bot_locale_import_specification() :: #{binary() => any()}.


%% Example:
%% bedrock_guardrail_configuration() :: #{
%%   <<"identifier">> => string(),
%%   <<"version">> => string()
%% }
-type bedrock_guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% test_execution_target() :: #{
%%   <<"botAliasTarget">> => bot_alias_test_execution_target()
%% }
-type test_execution_target() :: #{binary() => any()}.


%% Example:
%% list_bot_locales_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleSummaries">> => list(bot_locale_summary()),
%%   <<"botVersion">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_locales_response() :: #{binary() => any()}.

%% Example:
%% describe_bot_resource_generation_request() :: #{}
-type describe_bot_resource_generation_request() :: #{}.


%% Example:
%% date_range_filter() :: #{
%%   <<"endDateTime">> => non_neg_integer(),
%%   <<"startDateTime">> => non_neg_integer()
%% }
-type date_range_filter() :: #{binary() => any()}.


%% Example:
%% start_test_set_generation_request() :: #{
%%   <<"description">> => string(),
%%   <<"generationDataSource">> := test_set_generation_data_source(),
%%   <<"roleArn">> := string(),
%%   <<"storageLocation">> := test_set_storage_location(),
%%   <<"testSetName">> := string(),
%%   <<"testSetTags">> => map()
%% }
-type start_test_set_generation_request() :: #{binary() => any()}.


%% Example:
%% update_slot_type_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"compositeSlotTypeSetting">> => composite_slot_type_setting(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalSourceSetting">> => external_source_setting(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"slotTypeName">> => string(),
%%   <<"slotTypeValues">> => list(slot_type_value()),
%%   <<"valueSelectionSetting">> => slot_value_selection_setting()
%% }
-type update_slot_type_response() :: #{binary() => any()}.


%% Example:
%% start_test_set_generation_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"generationDataSource">> => test_set_generation_data_source(),
%%   <<"roleArn">> => string(),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetGenerationId">> => string(),
%%   <<"testSetGenerationStatus">> => list(any()),
%%   <<"testSetName">> => string(),
%%   <<"testSetTags">> => map()
%% }
-type start_test_set_generation_response() :: #{binary() => any()}.


%% Example:
%% list_test_execution_result_items_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testExecutionResults">> => test_execution_result_items()
%% }
-type list_test_execution_result_items_response() :: #{binary() => any()}.


%% Example:
%% default_conditional_branch() :: #{
%%   <<"nextStep">> => dialog_state(),
%%   <<"response">> => response_specification()
%% }
-type default_conditional_branch() :: #{binary() => any()}.


%% Example:
%% intent_level_slot_resolution_test_result_item() :: #{
%%   <<"intentName">> => string(),
%%   <<"multiTurnConversation">> => boolean(),
%%   <<"slotResolutionResults">> => list(slot_resolution_test_result_item())
%% }
-type intent_level_slot_resolution_test_result_item() :: #{binary() => any()}.


%% Example:
%% bot_locale_history_event() :: #{
%%   <<"event">> => string(),
%%   <<"eventDate">> => non_neg_integer()
%% }
-type bot_locale_history_event() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_result() :: #{
%%   <<"attributeResults">> => list(analytics_utterance_attribute_result()),
%%   <<"binKeys">> => list(analytics_bin_key()),
%%   <<"groupByKeys">> => list(analytics_utterance_group_by_key()),
%%   <<"metricsResults">> => list(analytics_utterance_metric_result())
%% }
-type analytics_utterance_result() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% associated_transcript() :: #{
%%   <<"transcript">> => string()
%% }
-type associated_transcript() :: #{binary() => any()}.


%% Example:
%% conversation_level_test_results_filter_by() :: #{
%%   <<"endToEndResult">> => list(any())
%% }
-type conversation_level_test_results_filter_by() :: #{binary() => any()}.


%% Example:
%% list_bot_version_replicas_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersionReplicaSummaries">> => list(bot_version_replica_summary()),
%%   <<"nextToken">> => string(),
%%   <<"replicaRegion">> => string(),
%%   <<"sourceRegion">> => string()
%% }
-type list_bot_version_replicas_response() :: #{binary() => any()}.


%% Example:
%% conversation_level_test_result_item() :: #{
%%   <<"conversationId">> => string(),
%%   <<"endToEndResult">> => list(any()),
%%   <<"intentClassificationResults">> => list(conversation_level_intent_classification_result_item()),
%%   <<"slotResolutionResults">> => list(conversation_level_slot_resolution_result_item()),
%%   <<"speechTranscriptionResult">> => list(any())
%% }
-type conversation_level_test_result_item() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_response() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_export_request() :: #{}
-type describe_export_request() :: #{}.


%% Example:
%% conversation_logs_data_source_filter_by() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"inputMode">> => list(any()),
%%   <<"startTime">> => non_neg_integer()
%% }
-type conversation_logs_data_source_filter_by() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_statement_response() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type delete_resource_policy_statement_response() :: #{binary() => any()}.


%% Example:
%% built_in_slot_type_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type built_in_slot_type_sort_by() :: #{binary() => any()}.


%% Example:
%% test_set_intent_discrepancy_item() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"intentName">> => string()
%% }
-type test_set_intent_discrepancy_item() :: #{binary() => any()}.


%% Example:
%% slot_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type slot_sort_by() :: #{binary() => any()}.


%% Example:
%% update_intent_request() :: #{
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => dialog_code_hook_settings(),
%%   <<"fulfillmentCodeHook">> => fulfillment_code_hook_settings(),
%%   <<"initialResponseSetting">> => initial_response_setting(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentClosingSetting">> => intent_closing_setting(),
%%   <<"intentConfirmationSetting">> => intent_confirmation_setting(),
%%   <<"intentName">> := string(),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"qInConnectIntentConfiguration">> => q_in_connect_intent_configuration(),
%%   <<"qnAIntentConfiguration">> => qn_a_intent_configuration(),
%%   <<"sampleUtterances">> => list(sample_utterance()),
%%   <<"slotPriorities">> => list(slot_priority())
%% }
-type update_intent_request() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_group_by_specification() :: #{
%%   <<"name">> => list(any())
%% }
-type analytics_utterance_group_by_specification() :: #{binary() => any()}.


%% Example:
%% slot_value_regex_filter() :: #{
%%   <<"pattern">> => string()
%% }
-type slot_value_regex_filter() :: #{binary() => any()}.


%% Example:
%% obfuscation_setting() :: #{
%%   <<"obfuscationSettingType">> => list(any())
%% }
-type obfuscation_setting() :: #{binary() => any()}.


%% Example:
%% start_test_execution_request() :: #{
%%   <<"apiMode">> := list(any()),
%%   <<"target">> := test_execution_target(),
%%   <<"testExecutionModality">> => list(any())
%% }
-type start_test_execution_request() :: #{binary() => any()}.


%% Example:
%% specifications() :: #{
%%   <<"slotTypeId">> => string(),
%%   <<"valueElicitationSetting">> => sub_slot_value_elicitation_setting()
%% }
-type specifications() :: #{binary() => any()}.


%% Example:
%% bot_alias_history_event() :: #{
%%   <<"botVersion">> => string(),
%%   <<"endDate">> => non_neg_integer(),
%%   <<"startDate">> => non_neg_integer()
%% }
-type bot_alias_history_event() :: #{binary() => any()}.


%% Example:
%% fulfillment_update_response_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"frequencyInSeconds">> => integer(),
%%   <<"messageGroups">> => list(message_group())
%% }
-type fulfillment_update_response_specification() :: #{binary() => any()}.

%% Example:
%% list_bot_replicas_request() :: #{}
-type list_bot_replicas_request() :: #{}.

%% Example:
%% describe_bot_alias_request() :: #{}
-type describe_bot_alias_request() :: #{}.


%% Example:
%% agent_turn_result() :: #{
%%   <<"actualAgentPrompt">> => string(),
%%   <<"actualElicitedSlot">> => string(),
%%   <<"actualIntent">> => string(),
%%   <<"errorDetails">> => execution_error_details(),
%%   <<"expectedAgentPrompt">> => string()
%% }
-type agent_turn_result() :: #{binary() => any()}.


%% Example:
%% error_log_settings() :: #{
%%   <<"enabled">> => boolean()
%% }
-type error_log_settings() :: #{binary() => any()}.


%% Example:
%% describe_bot_version_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botType">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataPrivacy">> => data_privacy(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"parentBotNetworks">> => list(parent_bot_network()),
%%   <<"roleArn">> => string()
%% }
-type describe_bot_version_response() :: #{binary() => any()}.

%% Example:
%% describe_test_set_request() :: #{}
-type describe_test_set_request() :: #{}.


%% Example:
%% utterance_data_sort_by() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type utterance_data_sort_by() :: #{binary() => any()}.


%% Example:
%% describe_test_execution_response() :: #{
%%   <<"apiMode">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"target">> => test_execution_target(),
%%   <<"testExecutionId">> => string(),
%%   <<"testExecutionModality">> => list(any()),
%%   <<"testExecutionStatus">> => list(any()),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type describe_test_execution_response() :: #{binary() => any()}.


%% Example:
%% list_intents_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"intentSummaries">> => list(intent_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_intents_response() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type analytics_utterance_filter() :: #{binary() => any()}.


%% Example:
%% generative_a_i_settings() :: #{
%%   <<"buildtimeSettings">> => buildtime_settings(),
%%   <<"runtimeSettings">> => runtime_settings()
%% }
-type generative_a_i_settings() :: #{binary() => any()}.


%% Example:
%% data_source_configuration() :: #{
%%   <<"bedrockKnowledgeStoreConfiguration">> => bedrock_knowledge_store_configuration(),
%%   <<"kendraConfiguration">> => qn_a_kendra_configuration(),
%%   <<"opensearchConfiguration">> => opensearch_configuration()
%% }
-type data_source_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% analytics_session_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any()),
%%   <<"statistic">> => list(any())
%% }
-type analytics_session_metric() :: #{binary() => any()}.


%% Example:
%% list_intent_stage_metrics_request() :: #{
%%   <<"binBy">> => list(analytics_bin_by_specification()),
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_intent_stage_filter()),
%%   <<"groupBy">> => list(analytics_intent_stage_group_by_specification()),
%%   <<"maxResults">> => integer(),
%%   <<"metrics">> := list(analytics_intent_stage_metric()),
%%   <<"nextToken">> => string(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_intent_stage_metrics_request() :: #{binary() => any()}.


%% Example:
%% message_group() :: #{
%%   <<"message">> => message(),
%%   <<"variations">> => list(message())
%% }
-type message_group() :: #{binary() => any()}.


%% Example:
%% describe_bot_replica_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botReplicaStatus">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"replicaRegion">> => string(),
%%   <<"sourceRegion">> => string()
%% }
-type describe_bot_replica_response() :: #{binary() => any()}.


%% Example:
%% list_recommended_intents_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"summaryList">> => list(recommended_intent_summary())
%% }
-type list_recommended_intents_response() :: #{binary() => any()}.


%% Example:
%% update_bot_alias_response() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botAliasLocaleSettings">> => map(),
%%   <<"botAliasName">> => string(),
%%   <<"botAliasStatus">> => list(any()),
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"conversationLogSettings">> => conversation_log_settings(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"sentimentAnalysisSettings">> => sentiment_analysis_settings()
%% }
-type update_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% elicitation_code_hook_invocation_setting() :: #{
%%   <<"enableCodeHookInvocation">> => boolean(),
%%   <<"invocationLabel">> => string()
%% }
-type elicitation_code_hook_invocation_setting() :: #{binary() => any()}.


%% Example:
%% intent_classification_test_result_item_counts() :: #{
%%   <<"intentMatchResultCounts">> => map(),
%%   <<"speechTranscriptionResultCounts">> => map(),
%%   <<"totalResultCount">> => integer()
%% }
-type intent_classification_test_result_item_counts() :: #{binary() => any()}.


%% Example:
%% lex_transcript_filter() :: #{
%%   <<"dateRangeFilter">> => date_range_filter()
%% }
-type lex_transcript_filter() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_attribute() :: #{
%%   <<"name">> => list(any())
%% }
-type analytics_utterance_attribute() :: #{binary() => any()}.


%% Example:
%% intent_classification_test_result_item() :: #{
%%   <<"intentName">> => string(),
%%   <<"multiTurnConversation">> => boolean(),
%%   <<"resultCounts">> => intent_classification_test_result_item_counts()
%% }
-type intent_classification_test_result_item() :: #{binary() => any()}.


%% Example:
%% generate_bot_element_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"intentId">> => string(),
%%   <<"localeId">> => string(),
%%   <<"sampleUtterances">> => list(sample_utterance())
%% }
-type generate_bot_element_response() :: #{binary() => any()}.


%% Example:
%% create_export_request() :: #{
%%   <<"fileFormat">> := list(any()),
%%   <<"filePassword">> => string(),
%%   <<"resourceSpecification">> := export_resource_specification()
%% }
-type create_export_request() :: #{binary() => any()}.


%% Example:
%% path_format() :: #{
%%   <<"objectPrefixes">> => list(string())
%% }
-type path_format() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_statement_request() :: #{
%%   <<"expectedRevisionId">> => string()
%% }
-type delete_resource_policy_statement_request() :: #{binary() => any()}.


%% Example:
%% runtime_settings() :: #{
%%   <<"nluImprovement">> => nlu_improvement_specification(),
%%   <<"slotResolutionImprovement">> => slot_resolution_improvement_specification()
%% }
-type runtime_settings() :: #{binary() => any()}.


%% Example:
%% update_slot_request() :: #{
%%   <<"description">> => string(),
%%   <<"multipleValuesSetting">> => multiple_values_setting(),
%%   <<"obfuscationSetting">> => obfuscation_setting(),
%%   <<"slotName">> := string(),
%%   <<"slotTypeId">> => string(),
%%   <<"subSlotSetting">> => sub_slot_setting(),
%%   <<"valueElicitationSetting">> := slot_value_elicitation_setting()
%% }
-type update_slot_request() :: #{binary() => any()}.


%% Example:
%% opensearch_configuration() :: #{
%%   <<"domainEndpoint">> => string(),
%%   <<"exactResponse">> => boolean(),
%%   <<"exactResponseFields">> => exact_response_fields(),
%%   <<"includeFields">> => list(string()),
%%   <<"indexName">> => string()
%% }
-type opensearch_configuration() :: #{binary() => any()}.


%% Example:
%% delete_bot_request() :: #{
%%   <<"skipResourceInUseCheck">> => boolean()
%% }
-type delete_bot_request() :: #{binary() => any()}.


%% Example:
%% update_slot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"intentId">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"multipleValuesSetting">> => multiple_values_setting(),
%%   <<"obfuscationSetting">> => obfuscation_setting(),
%%   <<"slotId">> => string(),
%%   <<"slotName">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"subSlotSetting">> => sub_slot_setting(),
%%   <<"valueElicitationSetting">> => slot_value_elicitation_setting()
%% }
-type update_slot_response() :: #{binary() => any()}.


%% Example:
%% bot_member() :: #{
%%   <<"botMemberAliasId">> => string(),
%%   <<"botMemberAliasName">> => string(),
%%   <<"botMemberId">> => string(),
%%   <<"botMemberName">> => string(),
%%   <<"botMemberVersion">> => string()
%% }
-type bot_member() :: #{binary() => any()}.


%% Example:
%% intent_statistics() :: #{
%%   <<"discoveredIntentCount">> => integer()
%% }
-type intent_statistics() :: #{binary() => any()}.


%% Example:
%% start_bot_recommendation_request() :: #{
%%   <<"encryptionSetting">> => encryption_setting(),
%%   <<"transcriptSourceSetting">> := transcript_source_setting()
%% }
-type start_bot_recommendation_request() :: #{binary() => any()}.


%% Example:
%% output_context() :: #{
%%   <<"name">> => string(),
%%   <<"timeToLiveInSeconds">> => integer(),
%%   <<"turnsToLive">> => integer()
%% }
-type output_context() :: #{binary() => any()}.


%% Example:
%% bot_alias_test_execution_target() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botId">> => string(),
%%   <<"localeId">> => string()
%% }
-type bot_alias_test_execution_target() :: #{binary() => any()}.


%% Example:
%% slot_priority() :: #{
%%   <<"priority">> => integer(),
%%   <<"slotId">> => string()
%% }
-type slot_priority() :: #{binary() => any()}.


%% Example:
%% create_resource_policy_response() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type create_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% initial_response_setting() :: #{
%%   <<"codeHook">> => dialog_code_hook_invocation_setting(),
%%   <<"conditional">> => conditional_specification(),
%%   <<"initialResponse">> => response_specification(),
%%   <<"nextStep">> => dialog_state()
%% }
-type initial_response_setting() :: #{binary() => any()}.


%% Example:
%% text_input_specification() :: #{
%%   <<"startTimeoutMs">> => integer()
%% }
-type text_input_specification() :: #{binary() => any()}.


%% Example:
%% bot_import_specification() :: #{
%%   <<"botName">> => string(),
%%   <<"botTags">> => map(),
%%   <<"dataPrivacy">> => data_privacy(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"testBotAliasTags">> => map()
%% }
-type bot_import_specification() :: #{binary() => any()}.


%% Example:
%% create_bot_version_request() :: #{
%%   <<"botVersionLocaleSpecification">> := map(),
%%   <<"description">> => string()
%% }
-type create_bot_version_request() :: #{binary() => any()}.


%% Example:
%% update_bot_recommendation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botRecommendationStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"encryptionSetting">> => encryption_setting(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"transcriptSourceSetting">> => transcript_source_setting()
%% }
-type update_bot_recommendation_response() :: #{binary() => any()}.


%% Example:
%% analytics_path_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type analytics_path_filter() :: #{binary() => any()}.


%% Example:
%% test_set_discrepancy_errors() :: #{
%%   <<"intentDiscrepancies">> => list(test_set_intent_discrepancy_item()),
%%   <<"slotDiscrepancies">> => list(test_set_slot_discrepancy_item())
%% }
-type test_set_discrepancy_errors() :: #{binary() => any()}.


%% Example:
%% update_test_set_request() :: #{
%%   <<"description">> => string(),
%%   <<"testSetName">> := string()
%% }
-type update_test_set_request() :: #{binary() => any()}.


%% Example:
%% export_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type export_filter() :: #{binary() => any()}.


%% Example:
%% dialog_code_hook_settings() :: #{
%%   <<"enabled">> => boolean()
%% }
-type dialog_code_hook_settings() :: #{binary() => any()}.


%% Example:
%% overall_test_results() :: #{
%%   <<"items">> => list(overall_test_result_item())
%% }
-type overall_test_results() :: #{binary() => any()}.


%% Example:
%% slot_resolution_improvement_specification() :: #{
%%   <<"bedrockModelSpecification">> => bedrock_model_specification(),
%%   <<"enabled">> => boolean()
%% }
-type slot_resolution_improvement_specification() :: #{binary() => any()}.


%% Example:
%% s_s_ml_message() :: #{
%%   <<"value">> => string()
%% }
-type s_s_ml_message() :: #{binary() => any()}.


%% Example:
%% invoked_intent_sample() :: #{
%%   <<"intentName">> => string()
%% }
-type invoked_intent_sample() :: #{binary() => any()}.


%% Example:
%% bot_locale_summary() :: #{
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"description">> => string(),
%%   <<"lastBuildSubmittedDateTime">> => non_neg_integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"localeName">> => string()
%% }
-type bot_locale_summary() :: #{binary() => any()}.


%% Example:
%% audio_specification() :: #{
%%   <<"endTimeoutMs">> => integer(),
%%   <<"maxLengthMs">> => integer()
%% }
-type audio_specification() :: #{binary() => any()}.


%% Example:
%% import_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any()),
%%   <<"importedResourceId">> => string(),
%%   <<"importedResourceName">> => string(),
%%   <<"importedResourceType">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"mergeStrategy">> => list(any())
%% }
-type import_summary() :: #{binary() => any()}.


%% Example:
%% grammar_slot_type_source() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"s3BucketName">> => string(),
%%   <<"s3ObjectKey">> => string()
%% }
-type grammar_slot_type_source() :: #{binary() => any()}.


%% Example:
%% slot_value() :: #{
%%   <<"interpretedValue">> => string()
%% }
-type slot_value() :: #{binary() => any()}.


%% Example:
%% analytics_session_group_by_key() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type analytics_session_group_by_key() :: #{binary() => any()}.


%% Example:
%% bot_locale_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type bot_locale_sort_by() :: #{binary() => any()}.


%% Example:
%% conversation_level_intent_classification_result_item() :: #{
%%   <<"intentName">> => string(),
%%   <<"matchResult">> => list(any())
%% }
-type conversation_level_intent_classification_result_item() :: #{binary() => any()}.


%% Example:
%% execution_error_details() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type execution_error_details() :: #{binary() => any()}.


%% Example:
%% prompt_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"maxRetries">> => integer(),
%%   <<"messageGroups">> => list(message_group()),
%%   <<"messageSelectionStrategy">> => list(any()),
%%   <<"promptAttemptsSpecification">> => map()
%% }
-type prompt_specification() :: #{binary() => any()}.


%% Example:
%% batch_create_custom_vocabulary_item_request() :: #{
%%   <<"customVocabularyItemList">> := list(new_custom_vocabulary_item())
%% }
-type batch_create_custom_vocabulary_item_request() :: #{binary() => any()}.


%% Example:
%% create_upload_url_response() :: #{
%%   <<"importId">> => string(),
%%   <<"uploadUrl">> => string()
%% }
-type create_upload_url_response() :: #{binary() => any()}.


%% Example:
%% fulfillment_start_response_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"delayInSeconds">> => integer(),
%%   <<"messageGroups">> => list(message_group())
%% }
-type fulfillment_start_response_specification() :: #{binary() => any()}.


%% Example:
%% voice_settings() :: #{
%%   <<"engine">> => list(any()),
%%   <<"voiceId">> => string()
%% }
-type voice_settings() :: #{binary() => any()}.

%% Example:
%% delete_export_request() :: #{}
-type delete_export_request() :: #{}.


%% Example:
%% conversation_level_result_detail() :: #{
%%   <<"endToEndResult">> => list(any()),
%%   <<"speechTranscriptionResult">> => list(any())
%% }
-type conversation_level_result_detail() :: #{binary() => any()}.


%% Example:
%% list_aggregated_utterances_request() :: #{
%%   <<"aggregationDuration">> := utterance_aggregation_duration(),
%%   <<"botAliasId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"filters">> => list(aggregated_utterances_filter()),
%%   <<"localeId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => aggregated_utterances_sort_by()
%% }
-type list_aggregated_utterances_request() :: #{binary() => any()}.


%% Example:
%% associated_transcript_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type associated_transcript_filter() :: #{binary() => any()}.


%% Example:
%% create_slot_request() :: #{
%%   <<"description">> => string(),
%%   <<"multipleValuesSetting">> => multiple_values_setting(),
%%   <<"obfuscationSetting">> => obfuscation_setting(),
%%   <<"slotName">> := string(),
%%   <<"slotTypeId">> => string(),
%%   <<"subSlotSetting">> => sub_slot_setting(),
%%   <<"valueElicitationSetting">> := slot_value_elicitation_setting()
%% }
-type create_slot_request() :: #{binary() => any()}.


%% Example:
%% search_associated_transcripts_request() :: #{
%%   <<"filters">> := list(associated_transcript_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextIndex">> => integer(),
%%   <<"searchOrder">> => list(any())
%% }
-type search_associated_transcripts_request() :: #{binary() => any()}.

%% Example:
%% describe_bot_version_request() :: #{}
-type describe_bot_version_request() :: #{}.


%% Example:
%% principal() :: #{
%%   <<"arn">> => string(),
%%   <<"service">> => string()
%% }
-type principal() :: #{binary() => any()}.


%% Example:
%% intent_summary() :: #{
%%   <<"description">> => string(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentId">> => string(),
%%   <<"intentName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string()
%% }
-type intent_summary() :: #{binary() => any()}.


%% Example:
%% sub_slot_type_composition() :: #{
%%   <<"name">> => string(),
%%   <<"slotTypeId">> => string()
%% }
-type sub_slot_type_composition() :: #{binary() => any()}.


%% Example:
%% test_set_import_input_location() :: #{
%%   <<"s3BucketName">> => string(),
%%   <<"s3Path">> => string()
%% }
-type test_set_import_input_location() :: #{binary() => any()}.


%% Example:
%% list_intents_request() :: #{
%%   <<"filters">> => list(intent_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => intent_sort_by()
%% }
-type list_intents_request() :: #{binary() => any()}.


%% Example:
%% analytics_bin_by_specification() :: #{
%%   <<"interval">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type analytics_bin_by_specification() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% slot_resolution_test_result_item() :: #{
%%   <<"resultCounts">> => slot_resolution_test_result_item_counts(),
%%   <<"slotName">> => string()
%% }
-type slot_resolution_test_result_item() :: #{binary() => any()}.


%% Example:
%% export_resource_specification() :: #{
%%   <<"botExportSpecification">> => bot_export_specification(),
%%   <<"botLocaleExportSpecification">> => bot_locale_export_specification(),
%%   <<"customVocabularyExportSpecification">> => custom_vocabulary_export_specification(),
%%   <<"testSetExportSpecification">> => test_set_export_specification()
%% }
-type export_resource_specification() :: #{binary() => any()}.


%% Example:
%% overall_test_result_item() :: #{
%%   <<"endToEndResultCounts">> => map(),
%%   <<"multiTurnConversation">> => boolean(),
%%   <<"speechTranscriptionResultCounts">> => map(),
%%   <<"totalResultCount">> => integer()
%% }
-type overall_test_result_item() :: #{binary() => any()}.


%% Example:
%% user_turn_result() :: #{
%%   <<"actualOutput">> => user_turn_output_specification(),
%%   <<"conversationLevelResult">> => conversation_level_result_detail(),
%%   <<"endToEndResult">> => list(any()),
%%   <<"errorDetails">> => execution_error_details(),
%%   <<"expectedOutput">> => user_turn_output_specification(),
%%   <<"input">> => user_turn_input_specification(),
%%   <<"intentMatchResult">> => list(any()),
%%   <<"slotMatchResult">> => list(any()),
%%   <<"speechTranscriptionResult">> => list(any())
%% }
-type user_turn_result() :: #{binary() => any()}.


%% Example:
%% bot_version_locale_details() :: #{
%%   <<"sourceBotVersion">> => string()
%% }
-type bot_version_locale_details() :: #{binary() => any()}.


%% Example:
%% create_bot_alias_response() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botAliasLocaleSettings">> => map(),
%%   <<"botAliasName">> => string(),
%%   <<"botAliasStatus">> => list(any()),
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"conversationLogSettings">> => conversation_log_settings(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"sentimentAnalysisSettings">> => sentiment_analysis_settings(),
%%   <<"tags">> => map()
%% }
-type create_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% list_bot_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => bot_version_sort_by()
%% }
-type list_bot_versions_request() :: #{binary() => any()}.


%% Example:
%% image_response_card() :: #{
%%   <<"buttons">> => list(button()),
%%   <<"imageUrl">> => string(),
%%   <<"subtitle">> => string(),
%%   <<"title">> => string()
%% }
-type image_response_card() :: #{binary() => any()}.


%% Example:
%% qn_a_intent_configuration() :: #{
%%   <<"bedrockModelConfiguration">> => bedrock_model_specification(),
%%   <<"dataSourceConfiguration">> => data_source_configuration()
%% }
-type qn_a_intent_configuration() :: #{binary() => any()}.


%% Example:
%% list_exports_request() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"filters">> => list(export_filter()),
%%   <<"localeId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => export_sort_by()
%% }
-type list_exports_request() :: #{binary() => any()}.


%% Example:
%% list_test_set_records_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testSetRecords">> => list(test_set_turn_record())
%% }
-type list_test_set_records_response() :: #{binary() => any()}.


%% Example:
%% delete_bot_alias_response() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botAliasStatus">> => list(any()),
%%   <<"botId">> => string()
%% }
-type delete_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% list_intent_paths_request() :: #{
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_path_filter()),
%%   <<"intentPath">> := string(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_intent_paths_request() :: #{binary() => any()}.


%% Example:
%% dialog_state() :: #{
%%   <<"dialogAction">> => dialog_action(),
%%   <<"intent">> => intent_override(),
%%   <<"sessionAttributes">> => map()
%% }
-type dialog_state() :: #{binary() => any()}.


%% Example:
%% transcript_filter() :: #{
%%   <<"lexTranscriptFilter">> => lex_transcript_filter()
%% }
-type transcript_filter() :: #{binary() => any()}.


%% Example:
%% list_intent_metrics_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(analytics_intent_result())
%% }
-type list_intent_metrics_response() :: #{binary() => any()}.


%% Example:
%% generation_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"generationId">> => string(),
%%   <<"generationStatus">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer()
%% }
-type generation_summary() :: #{binary() => any()}.


%% Example:
%% batch_update_custom_vocabulary_item_request() :: #{
%%   <<"customVocabularyItemList">> := list(custom_vocabulary_item())
%% }
-type batch_update_custom_vocabulary_item_request() :: #{binary() => any()}.


%% Example:
%% describe_test_set_generation_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()),
%%   <<"generationDataSource">> => test_set_generation_data_source(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetGenerationId">> => string(),
%%   <<"testSetGenerationStatus">> => list(any()),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type describe_test_set_generation_response() :: #{binary() => any()}.


%% Example:
%% create_bot_replica_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botReplicaStatus">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"replicaRegion">> => string(),
%%   <<"sourceRegion">> => string()
%% }
-type create_bot_replica_response() :: #{binary() => any()}.


%% Example:
%% bot_alias_summary() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botAliasName">> => string(),
%%   <<"botAliasStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer()
%% }
-type bot_alias_summary() :: #{binary() => any()}.


%% Example:
%% list_bot_recommendations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_recommendations_request() :: #{binary() => any()}.


%% Example:
%% search_associated_transcripts_response() :: #{
%%   <<"associatedTranscripts">> => list(associated_transcript()),
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextIndex">> => integer(),
%%   <<"totalResults">> => integer()
%% }
-type search_associated_transcripts_response() :: #{binary() => any()}.


%% Example:
%% describe_bot_resource_generation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"generatedBotLocaleUrl">> => string(),
%%   <<"generationId">> => string(),
%%   <<"generationInputPrompt">> => string(),
%%   <<"generationStatus">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"modelArn">> => string()
%% }
-type describe_bot_resource_generation_response() :: #{binary() => any()}.


%% Example:
%% update_test_set_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"modality">> => list(any()),
%%   <<"numTurns">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type update_test_set_response() :: #{binary() => any()}.


%% Example:
%% prompt_attempt_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"allowedInputTypes">> => allowed_input_types(),
%%   <<"audioAndDTMFInputSpecification">> => audio_and_d_t_m_f_input_specification(),
%%   <<"textInputSpecification">> => text_input_specification()
%% }
-type prompt_attempt_specification() :: #{binary() => any()}.


%% Example:
%% kendra_configuration() :: #{
%%   <<"kendraIndex">> => string(),
%%   <<"queryFilterString">> => string(),
%%   <<"queryFilterStringEnabled">> => boolean()
%% }
-type kendra_configuration() :: #{binary() => any()}.

%% Example:
%% describe_import_request() :: #{}
-type describe_import_request() :: #{}.


%% Example:
%% descriptive_bot_builder_specification() :: #{
%%   <<"bedrockModelSpecification">> => bedrock_model_specification(),
%%   <<"enabled">> => boolean()
%% }
-type descriptive_bot_builder_specification() :: #{binary() => any()}.


%% Example:
%% list_imports_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"importSummaries">> => list(import_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_imports_response() :: #{binary() => any()}.


%% Example:
%% advanced_recognition_setting() :: #{
%%   <<"audioRecognitionStrategy">> => list(any())
%% }
-type advanced_recognition_setting() :: #{binary() => any()}.


%% Example:
%% utterance_aggregation_duration() :: #{
%%   <<"relativeAggregationDuration">> => relative_aggregation_duration()
%% }
-type utterance_aggregation_duration() :: #{binary() => any()}.


%% Example:
%% update_intent_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => dialog_code_hook_settings(),
%%   <<"fulfillmentCodeHook">> => fulfillment_code_hook_settings(),
%%   <<"initialResponseSetting">> => initial_response_setting(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentClosingSetting">> => intent_closing_setting(),
%%   <<"intentConfirmationSetting">> => intent_confirmation_setting(),
%%   <<"intentId">> => string(),
%%   <<"intentName">> => string(),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"qInConnectIntentConfiguration">> => q_in_connect_intent_configuration(),
%%   <<"qnAIntentConfiguration">> => qn_a_intent_configuration(),
%%   <<"sampleUtterances">> => list(sample_utterance()),
%%   <<"slotPriorities">> => list(slot_priority())
%% }
-type update_intent_response() :: #{binary() => any()}.


%% Example:
%% test_set_storage_location() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"s3BucketName">> => string(),
%%   <<"s3Path">> => string()
%% }
-type test_set_storage_location() :: #{binary() => any()}.

%% Example:
%% describe_bot_locale_request() :: #{}
-type describe_bot_locale_request() :: #{}.


%% Example:
%% list_slot_types_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"slotTypeSummaries">> => list(slot_type_summary())
%% }
-type list_slot_types_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_metric_result() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type analytics_intent_stage_metric_result() :: #{binary() => any()}.


%% Example:
%% list_built_in_slot_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => built_in_slot_type_sort_by()
%% }
-type list_built_in_slot_types_request() :: #{binary() => any()}.


%% Example:
%% test_set_turn_result() :: #{
%%   <<"agent">> => agent_turn_result(),
%%   <<"user">> => user_turn_result()
%% }
-type test_set_turn_result() :: #{binary() => any()}.


%% Example:
%% intent_level_slot_resolution_test_results() :: #{
%%   <<"items">> => list(intent_level_slot_resolution_test_result_item())
%% }
-type intent_level_slot_resolution_test_results() :: #{binary() => any()}.


%% Example:
%% bot_alias_locale_settings() :: #{
%%   <<"codeHookSpecification">> => code_hook_specification(),
%%   <<"enabled">> => boolean()
%% }
-type bot_alias_locale_settings() :: #{binary() => any()}.


%% Example:
%% create_bot_alias_request() :: #{
%%   <<"botAliasLocaleSettings">> => map(),
%%   <<"botAliasName">> := string(),
%%   <<"botVersion">> => string(),
%%   <<"conversationLogSettings">> => conversation_log_settings(),
%%   <<"description">> => string(),
%%   <<"sentimentAnalysisSettings">> => sentiment_analysis_settings(),
%%   <<"tags">> => map()
%% }
-type create_bot_alias_request() :: #{binary() => any()}.


%% Example:
%% user_turn_specification() :: #{
%%   <<"expected">> => user_turn_output_specification(),
%%   <<"input">> => user_turn_input_specification()
%% }
-type user_turn_specification() :: #{binary() => any()}.


%% Example:
%% start_bot_recommendation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botRecommendationStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"encryptionSetting">> => encryption_setting(),
%%   <<"localeId">> => string(),
%%   <<"transcriptSourceSetting">> => transcript_source_setting()
%% }
-type start_bot_recommendation_response() :: #{binary() => any()}.


%% Example:
%% text_log_destination() :: #{
%%   <<"cloudWatch">> => cloud_watch_log_group_log_destination()
%% }
-type text_log_destination() :: #{binary() => any()}.


%% Example:
%% delete_bot_version_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botVersion">> => string()
%% }
-type delete_bot_version_response() :: #{binary() => any()}.


%% Example:
%% update_bot_alias_request() :: #{
%%   <<"botAliasLocaleSettings">> => map(),
%%   <<"botAliasName">> := string(),
%%   <<"botVersion">> => string(),
%%   <<"conversationLogSettings">> => conversation_log_settings(),
%%   <<"description">> => string(),
%%   <<"sentimentAnalysisSettings">> => sentiment_analysis_settings()
%% }
-type update_bot_alias_request() :: #{binary() => any()}.

%% Example:
%% describe_bot_request() :: #{}
-type describe_bot_request() :: #{}.


%% Example:
%% conversation_logs_data_source() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botId">> => string(),
%%   <<"filter">> => conversation_logs_data_source_filter_by(),
%%   <<"localeId">> => string()
%% }
-type conversation_logs_data_source() :: #{binary() => any()}.


%% Example:
%% utterance_audio_input_specification() :: #{
%%   <<"audioFileS3Location">> => string()
%% }
-type utterance_audio_input_specification() :: #{binary() => any()}.


%% Example:
%% list_session_analytics_data_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sessions">> => list(session_specification())
%% }
-type list_session_analytics_data_response() :: #{binary() => any()}.


%% Example:
%% start_bot_resource_generation_request() :: #{
%%   <<"generationInputPrompt">> := string()
%% }
-type start_bot_resource_generation_request() :: #{binary() => any()}.


%% Example:
%% slot_resolution_test_result_item_counts() :: #{
%%   <<"slotMatchResultCounts">> => map(),
%%   <<"speechTranscriptionResultCounts">> => map(),
%%   <<"totalResultCount">> => integer()
%% }
-type slot_resolution_test_result_item_counts() :: #{binary() => any()}.


%% Example:
%% bot_summary() :: #{
%%   <<"botId">> => string(),
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botType">> => list(any()),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"latestBotVersion">> => string()
%% }
-type bot_summary() :: #{binary() => any()}.


%% Example:
%% list_bots_request() :: #{
%%   <<"filters">> => list(bot_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => bot_sort_by()
%% }
-type list_bots_request() :: #{binary() => any()}.


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
%% describe_custom_vocabulary_metadata_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"customVocabularyStatus">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string()
%% }
-type describe_custom_vocabulary_metadata_response() :: #{binary() => any()}.


%% Example:
%% create_resource_policy_statement_response() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type create_resource_policy_statement_response() :: #{binary() => any()}.

%% Example:
%% delete_slot_request() :: #{}
-type delete_slot_request() :: #{}.

%% Example:
%% delete_bot_replica_request() :: #{}
-type delete_bot_replica_request() :: #{}.


%% Example:
%% list_slots_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"intentId">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"slotSummaries">> => list(slot_summary())
%% }
-type list_slots_response() :: #{binary() => any()}.


%% Example:
%% list_intent_paths_response() :: #{
%%   <<"nodeSummaries">> => list(analytics_intent_node_summary())
%% }
-type list_intent_paths_response() :: #{binary() => any()}.


%% Example:
%% failed_custom_vocabulary_item() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"itemId">> => string()
%% }
-type failed_custom_vocabulary_item() :: #{binary() => any()}.


%% Example:
%% buildtime_settings() :: #{
%%   <<"descriptiveBotBuilder">> => descriptive_bot_builder_specification(),
%%   <<"sampleUtteranceGeneration">> => sample_utterance_generation_specification()
%% }
-type buildtime_settings() :: #{binary() => any()}.


%% Example:
%% custom_vocabulary_import_specification() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string()
%% }
-type custom_vocabulary_import_specification() :: #{binary() => any()}.


%% Example:
%% test_set_discrepancy_report_bot_alias_target() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botId">> => string(),
%%   <<"localeId">> => string()
%% }
-type test_set_discrepancy_report_bot_alias_target() :: #{binary() => any()}.


%% Example:
%% delete_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botStatus">> => list(any())
%% }
-type delete_bot_response() :: #{binary() => any()}.


%% Example:
%% list_intent_metrics_request() :: #{
%%   <<"binBy">> => list(analytics_bin_by_specification()),
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_intent_filter()),
%%   <<"groupBy">> => list(analytics_intent_group_by_specification()),
%%   <<"maxResults">> => integer(),
%%   <<"metrics">> := list(analytics_intent_metric()),
%%   <<"nextToken">> => string(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_intent_metrics_request() :: #{binary() => any()}.


%% Example:
%% create_test_set_discrepancy_report_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"target">> => test_set_discrepancy_report_resource_target(),
%%   <<"testSetDiscrepancyReportId">> => string(),
%%   <<"testSetId">> => string()
%% }
-type create_test_set_discrepancy_report_response() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_attribute_result() :: #{
%%   <<"lastUsedIntent">> => string()
%% }
-type analytics_utterance_attribute_result() :: #{binary() => any()}.


%% Example:
%% bot_export_specification() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string()
%% }
-type bot_export_specification() :: #{binary() => any()}.


%% Example:
%% describe_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botType">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataPrivacy">> => data_privacy(),
%%   <<"description">> => string(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"failureReasons">> => list(string()),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string()
%% }
-type describe_bot_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type analytics_intent_filter() :: #{binary() => any()}.

%% Example:
%% delete_import_request() :: #{}
-type delete_import_request() :: #{}.


%% Example:
%% analytics_session_metric_result() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type analytics_session_metric_result() :: #{binary() => any()}.


%% Example:
%% delete_bot_version_request() :: #{
%%   <<"skipResourceInUseCheck">> => boolean()
%% }
-type delete_bot_version_request() :: #{binary() => any()}.


%% Example:
%% analytics_intent_group_by_specification() :: #{
%%   <<"name">> => list(any())
%% }
-type analytics_intent_group_by_specification() :: #{binary() => any()}.


%% Example:
%% utterance_level_test_results() :: #{
%%   <<"items">> => list(utterance_level_test_result_item())
%% }
-type utterance_level_test_results() :: #{binary() => any()}.


%% Example:
%% session_specification() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"channel">> => string(),
%%   <<"conversationDurationSeconds">> => float(),
%%   <<"conversationEndState">> => list(any()),
%%   <<"conversationEndTime">> => non_neg_integer(),
%%   <<"conversationStartTime">> => non_neg_integer(),
%%   <<"invokedIntentSamples">> => list(invoked_intent_sample()),
%%   <<"localeId">> => string(),
%%   <<"mode">> => list(any()),
%%   <<"numberOfTurns">> => float(),
%%   <<"originatingRequestId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type session_specification() :: #{binary() => any()}.


%% Example:
%% bot_locale_export_specification() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string()
%% }
-type bot_locale_export_specification() :: #{binary() => any()}.


%% Example:
%% active_context() :: #{
%%   <<"name">> => string()
%% }
-type active_context() :: #{binary() => any()}.


%% Example:
%% describe_bot_recommendation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botRecommendationResults">> => bot_recommendation_results(),
%%   <<"botRecommendationStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"encryptionSetting">> => encryption_setting(),
%%   <<"failureReasons">> => list(string()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"transcriptSourceSetting">> => transcript_source_setting()
%% }
-type describe_bot_recommendation_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_resource_policy_request() :: #{
%%   <<"policy">> := string()
%% }
-type create_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% test_set_discrepancy_report_resource_target() :: #{
%%   <<"botAliasTarget">> => test_set_discrepancy_report_bot_alias_target()
%% }
-type test_set_discrepancy_report_resource_target() :: #{binary() => any()}.


%% Example:
%% create_bot_replica_request() :: #{
%%   <<"replicaRegion">> := string()
%% }
-type create_bot_replica_request() :: #{binary() => any()}.


%% Example:
%% session_data_sort_by() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type session_data_sort_by() :: #{binary() => any()}.


%% Example:
%% custom_vocabulary_item() :: #{
%%   <<"displayAs">> => string(),
%%   <<"itemId">> => string(),
%%   <<"phrase">> => string(),
%%   <<"weight">> => integer()
%% }
-type custom_vocabulary_item() :: #{binary() => any()}.


%% Example:
%% create_resource_policy_statement_request() :: #{
%%   <<"action">> := list(string()),
%%   <<"condition">> => map(),
%%   <<"effect">> := list(any()),
%%   <<"expectedRevisionId">> => string(),
%%   <<"principal">> := list(principal()),
%%   <<"statementId">> := string()
%% }
-type create_resource_policy_statement_request() :: #{binary() => any()}.


%% Example:
%% input_session_state_specification() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"runtimeHints">> => runtime_hints(),
%%   <<"sessionAttributes">> => map()
%% }
-type input_session_state_specification() :: #{binary() => any()}.


%% Example:
%% create_intent_request() :: #{
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => dialog_code_hook_settings(),
%%   <<"fulfillmentCodeHook">> => fulfillment_code_hook_settings(),
%%   <<"initialResponseSetting">> => initial_response_setting(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentClosingSetting">> => intent_closing_setting(),
%%   <<"intentConfirmationSetting">> => intent_confirmation_setting(),
%%   <<"intentName">> := string(),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"qInConnectIntentConfiguration">> => q_in_connect_intent_configuration(),
%%   <<"qnAIntentConfiguration">> => qn_a_intent_configuration(),
%%   <<"sampleUtterances">> => list(sample_utterance())
%% }
-type create_intent_request() :: #{binary() => any()}.


%% Example:
%% response_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"messageGroups">> => list(message_group())
%% }
-type response_specification() :: #{binary() => any()}.


%% Example:
%% aggregated_utterances_summary() :: #{
%%   <<"containsDataFromDeletedResources">> => boolean(),
%%   <<"hitCount">> => integer(),
%%   <<"missedCount">> => integer(),
%%   <<"utterance">> => string(),
%%   <<"utteranceFirstRecordedInAggregationDuration">> => non_neg_integer(),
%%   <<"utteranceLastRecordedInAggregationDuration">> => non_neg_integer()
%% }
-type aggregated_utterances_summary() :: #{binary() => any()}.


%% Example:
%% describe_import_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any()),
%%   <<"importedResourceId">> => string(),
%%   <<"importedResourceName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"mergeStrategy">> => list(any()),
%%   <<"resourceSpecification">> => import_resource_specification()
%% }
-type describe_import_response() :: #{binary() => any()}.


%% Example:
%% export_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"exportId">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"fileFormat">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"resourceSpecification">> => export_resource_specification()
%% }
-type export_summary() :: #{binary() => any()}.


%% Example:
%% bot_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type bot_filter() :: #{binary() => any()}.


%% Example:
%% intent_confirmation_setting() :: #{
%%   <<"active">> => boolean(),
%%   <<"codeHook">> => dialog_code_hook_invocation_setting(),
%%   <<"confirmationConditional">> => conditional_specification(),
%%   <<"confirmationNextStep">> => dialog_state(),
%%   <<"confirmationResponse">> => response_specification(),
%%   <<"declinationConditional">> => conditional_specification(),
%%   <<"declinationNextStep">> => dialog_state(),
%%   <<"declinationResponse">> => response_specification(),
%%   <<"elicitationCodeHook">> => elicitation_code_hook_invocation_setting(),
%%   <<"failureConditional">> => conditional_specification(),
%%   <<"failureNextStep">> => dialog_state(),
%%   <<"failureResponse">> => response_specification(),
%%   <<"promptSpecification">> => prompt_specification()
%% }
-type intent_confirmation_setting() :: #{binary() => any()}.


%% Example:
%% bot_replica_summary() :: #{
%%   <<"botReplicaStatus">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"replicaRegion">> => string()
%% }
-type bot_replica_summary() :: #{binary() => any()}.


%% Example:
%% bot_recommendation_result_statistics() :: #{
%%   <<"intents">> => intent_statistics(),
%%   <<"slotTypes">> => slot_type_statistics()
%% }
-type bot_recommendation_result_statistics() :: #{binary() => any()}.


%% Example:
%% slot_type_value() :: #{
%%   <<"sampleValue">> => sample_value(),
%%   <<"synonyms">> => list(sample_value())
%% }
-type slot_type_value() :: #{binary() => any()}.


%% Example:
%% conversation_level_test_results() :: #{
%%   <<"items">> => list(conversation_level_test_result_item())
%% }
-type conversation_level_test_results() :: #{binary() => any()}.


%% Example:
%% conversation_level_slot_resolution_result_item() :: #{
%%   <<"intentName">> => string(),
%%   <<"matchResult">> => list(any()),
%%   <<"slotName">> => string()
%% }
-type conversation_level_slot_resolution_result_item() :: #{binary() => any()}.


%% Example:
%% custom_vocabulary_export_specification() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string()
%% }
-type custom_vocabulary_export_specification() :: #{binary() => any()}.


%% Example:
%% slot_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type slot_filter() :: #{binary() => any()}.


%% Example:
%% slot_resolution_setting() :: #{
%%   <<"slotResolutionStrategy">> => list(any())
%% }
-type slot_resolution_setting() :: #{binary() => any()}.


%% Example:
%% audio_log_destination() :: #{
%%   <<"s3Bucket">> => s3_bucket_log_destination()
%% }
-type audio_log_destination() :: #{binary() => any()}.


%% Example:
%% list_intent_stage_metrics_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(analytics_intent_stage_result())
%% }
-type list_intent_stage_metrics_response() :: #{binary() => any()}.


%% Example:
%% built_in_slot_type_summary() :: #{
%%   <<"description">> => string(),
%%   <<"slotTypeSignature">> => string()
%% }
-type built_in_slot_type_summary() :: #{binary() => any()}.


%% Example:
%% slot_value_override() :: #{
%%   <<"shape">> => list(any()),
%%   <<"value">> => slot_value(),
%%   <<"values">> => list(slot_value_override())
%% }
-type slot_value_override() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type analytics_intent_stage_filter() :: #{binary() => any()}.


%% Example:
%% list_session_metrics_request() :: #{
%%   <<"binBy">> => list(analytics_bin_by_specification()),
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_session_filter()),
%%   <<"groupBy">> => list(analytics_session_group_by_specification()),
%%   <<"maxResults">> => integer(),
%%   <<"metrics">> := list(analytics_session_metric()),
%%   <<"nextToken">> => string(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_session_metrics_request() :: #{binary() => any()}.


%% Example:
%% custom_vocabulary_entry_id() :: #{
%%   <<"itemId">> => string()
%% }
-type custom_vocabulary_entry_id() :: #{binary() => any()}.


%% Example:
%% import_resource_specification() :: #{
%%   <<"botImportSpecification">> => bot_import_specification(),
%%   <<"botLocaleImportSpecification">> => bot_locale_import_specification(),
%%   <<"customVocabularyImportSpecification">> => custom_vocabulary_import_specification(),
%%   <<"testSetImportResourceSpecification">> => test_set_import_resource_specification()
%% }
-type import_resource_specification() :: #{binary() => any()}.


%% Example:
%% test_set_export_specification() :: #{
%%   <<"testSetId">> => string()
%% }
-type test_set_export_specification() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any()),
%%   <<"statistic">> => list(any())
%% }
-type analytics_intent_stage_metric() :: #{binary() => any()}.


%% Example:
%% sub_slot_value_elicitation_setting() :: #{
%%   <<"defaultValueSpecification">> => slot_default_value_specification(),
%%   <<"promptSpecification">> => prompt_specification(),
%%   <<"sampleUtterances">> => list(sample_utterance()),
%%   <<"waitAndContinueSpecification">> => wait_and_continue_specification()
%% }
-type sub_slot_value_elicitation_setting() :: #{binary() => any()}.


%% Example:
%% analytics_session_result() :: #{
%%   <<"binKeys">> => list(analytics_bin_key()),
%%   <<"groupByKeys">> => list(analytics_session_group_by_key()),
%%   <<"metricsResults">> => list(analytics_session_metric_result())
%% }
-type analytics_session_result() :: #{binary() => any()}.


%% Example:
%% utterance_bot_response() :: #{
%%   <<"content">> => string(),
%%   <<"contentType">> => list(any()),
%%   <<"imageResponseCard">> => image_response_card()
%% }
-type utterance_bot_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_result() :: #{
%%   <<"binKeys">> => list(analytics_bin_key()),
%%   <<"groupByKeys">> => list(analytics_intent_group_by_key()),
%%   <<"metricsResults">> => list(analytics_intent_metric_result())
%% }
-type analytics_intent_result() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% wait_and_continue_specification() :: #{
%%   <<"active">> => boolean(),
%%   <<"continueResponse">> => response_specification(),
%%   <<"stillWaitingResponse">> => still_waiting_response_specification(),
%%   <<"waitingResponse">> => response_specification()
%% }
-type wait_and_continue_specification() :: #{binary() => any()}.


%% Example:
%% slot_default_value_specification() :: #{
%%   <<"defaultValueList">> => list(slot_default_value())
%% }
-type slot_default_value_specification() :: #{binary() => any()}.


%% Example:
%% list_bot_version_replicas_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => bot_version_replica_sort_by()
%% }
-type list_bot_version_replicas_request() :: #{binary() => any()}.


%% Example:
%% delete_export_response() :: #{
%%   <<"exportId">> => string(),
%%   <<"exportStatus">> => list(any())
%% }
-type delete_export_response() :: #{binary() => any()}.


%% Example:
%% test_set_import_resource_specification() :: #{
%%   <<"description">> => string(),
%%   <<"importInputLocation">> => test_set_import_input_location(),
%%   <<"modality">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetName">> => string(),
%%   <<"testSetTags">> => map()
%% }
-type test_set_import_resource_specification() :: #{binary() => any()}.

%% Example:
%% create_upload_url_request() :: #{}
-type create_upload_url_request() :: #{}.


%% Example:
%% analytics_intent_group_by_key() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type analytics_intent_group_by_key() :: #{binary() => any()}.


%% Example:
%% relative_aggregation_duration() :: #{
%%   <<"timeDimension">> => list(any()),
%%   <<"timeValue">> => integer()
%% }
-type relative_aggregation_duration() :: #{binary() => any()}.


%% Example:
%% test_set_slot_discrepancy_item() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"intentName">> => string(),
%%   <<"slotName">> => string()
%% }
-type test_set_slot_discrepancy_item() :: #{binary() => any()}.


%% Example:
%% fulfillment_code_hook_settings() :: #{
%%   <<"active">> => boolean(),
%%   <<"enabled">> => boolean(),
%%   <<"fulfillmentUpdatesSpecification">> => fulfillment_updates_specification(),
%%   <<"postFulfillmentStatusSpecification">> => post_fulfillment_status_specification()
%% }
-type fulfillment_code_hook_settings() :: #{binary() => any()}.


%% Example:
%% bot_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type bot_sort_by() :: #{binary() => any()}.


%% Example:
%% intent_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type intent_filter() :: #{binary() => any()}.


%% Example:
%% slot_capture_setting() :: #{
%%   <<"captureConditional">> => conditional_specification(),
%%   <<"captureNextStep">> => dialog_state(),
%%   <<"captureResponse">> => response_specification(),
%%   <<"codeHook">> => dialog_code_hook_invocation_setting(),
%%   <<"elicitationCodeHook">> => elicitation_code_hook_invocation_setting(),
%%   <<"failureConditional">> => conditional_specification(),
%%   <<"failureNextStep">> => dialog_state(),
%%   <<"failureResponse">> => response_specification()
%% }
-type slot_capture_setting() :: #{binary() => any()}.


%% Example:
%% q_in_connect_intent_configuration() :: #{
%%   <<"qInConnectAssistantConfiguration">> => q_in_connect_assistant_configuration()
%% }
-type q_in_connect_intent_configuration() :: #{binary() => any()}.


%% Example:
%% test_set_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type test_set_sort_by() :: #{binary() => any()}.


%% Example:
%% recommended_intent_summary() :: #{
%%   <<"intentId">> => string(),
%%   <<"intentName">> => string(),
%%   <<"sampleUtterancesCount">> => integer()
%% }
-type recommended_intent_summary() :: #{binary() => any()}.

%% Example:
%% get_test_execution_artifacts_url_request() :: #{}
-type get_test_execution_artifacts_url_request() :: #{}.


%% Example:
%% sample_utterance() :: #{
%%   <<"utterance">> => string()
%% }
-type sample_utterance() :: #{binary() => any()}.


%% Example:
%% create_slot_type_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"compositeSlotTypeSetting">> => composite_slot_type_setting(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalSourceSetting">> => external_source_setting(),
%%   <<"localeId">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"slotTypeName">> => string(),
%%   <<"slotTypeValues">> => list(slot_type_value()),
%%   <<"valueSelectionSetting">> => slot_value_selection_setting()
%% }
-type create_slot_type_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_group_by_key() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type analytics_intent_stage_group_by_key() :: #{binary() => any()}.

%% Example:
%% stop_bot_recommendation_request() :: #{}
-type stop_bot_recommendation_request() :: #{}.


%% Example:
%% bot_version_replica_summary() :: #{
%%   <<"botVersion">> => string(),
%%   <<"botVersionReplicationStatus">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string())
%% }
-type bot_version_replica_summary() :: #{binary() => any()}.


%% Example:
%% bedrock_model_specification() :: #{
%%   <<"customPrompt">> => string(),
%%   <<"guardrail">> => bedrock_guardrail_configuration(),
%%   <<"modelArn">> => string(),
%%   <<"traceStatus">> => list(any())
%% }
-type bedrock_model_specification() :: #{binary() => any()}.


%% Example:
%% condition() :: #{
%%   <<"expressionString">> => string()
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% bedrock_knowledge_store_exact_response_fields() :: #{
%%   <<"answerField">> => string()
%% }
-type bedrock_knowledge_store_exact_response_fields() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_group_by_key() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type analytics_utterance_group_by_key() :: #{binary() => any()}.


%% Example:
%% list_slots_request() :: #{
%%   <<"filters">> => list(slot_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => slot_sort_by()
%% }
-type list_slots_request() :: #{binary() => any()}.


%% Example:
%% list_built_in_slot_types_response() :: #{
%%   <<"builtInSlotTypeSummaries">> => list(built_in_slot_type_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_built_in_slot_types_response() :: #{binary() => any()}.


%% Example:
%% allowed_input_types() :: #{
%%   <<"allowAudioInput">> => boolean(),
%%   <<"allowDTMFInput">> => boolean()
%% }
-type allowed_input_types() :: #{binary() => any()}.


%% Example:
%% test_execution_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type test_execution_sort_by() :: #{binary() => any()}.


%% Example:
%% list_bot_aliases_response() :: #{
%%   <<"botAliasSummaries">> => list(bot_alias_summary()),
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_aliases_response() :: #{binary() => any()}.


%% Example:
%% bot_version_replica_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type bot_version_replica_sort_by() :: #{binary() => any()}.


%% Example:
%% list_aggregated_utterances_response() :: #{
%%   <<"aggregatedUtterancesSummaries">> => list(aggregated_utterances_summary()),
%%   <<"aggregationDuration">> => utterance_aggregation_duration(),
%%   <<"aggregationLastRefreshedDateTime">> => non_neg_integer(),
%%   <<"aggregationWindowEndTime">> => non_neg_integer(),
%%   <<"aggregationWindowStartTime">> => non_neg_integer(),
%%   <<"botAliasId">> => string(),
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_aggregated_utterances_response() :: #{binary() => any()}.


%% Example:
%% update_slot_type_request() :: #{
%%   <<"compositeSlotTypeSetting">> => composite_slot_type_setting(),
%%   <<"description">> => string(),
%%   <<"externalSourceSetting">> => external_source_setting(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeName">> := string(),
%%   <<"slotTypeValues">> => list(slot_type_value()),
%%   <<"valueSelectionSetting">> => slot_value_selection_setting()
%% }
-type update_slot_type_request() :: #{binary() => any()}.


%% Example:
%% runtime_hint_value() :: #{
%%   <<"phrase">> => string()
%% }
-type runtime_hint_value() :: #{binary() => any()}.


%% Example:
%% bedrock_knowledge_store_configuration() :: #{
%%   <<"bedrockKnowledgeBaseArn">> => string(),
%%   <<"exactResponse">> => boolean(),
%%   <<"exactResponseFields">> => bedrock_knowledge_store_exact_response_fields()
%% }
-type bedrock_knowledge_store_configuration() :: #{binary() => any()}.


%% Example:
%% new_custom_vocabulary_item() :: #{
%%   <<"displayAs">> => string(),
%%   <<"phrase">> => string(),
%%   <<"weight">> => integer()
%% }
-type new_custom_vocabulary_item() :: #{binary() => any()}.


%% Example:
%% analytics_bin_key() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => float()
%% }
-type analytics_bin_key() :: #{binary() => any()}.


%% Example:
%% update_resource_policy_response() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type update_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_metric_result() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type analytics_intent_metric_result() :: #{binary() => any()}.

%% Example:
%% delete_utterances_response() :: #{}
-type delete_utterances_response() :: #{}.


%% Example:
%% bot_version_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type bot_version_sort_by() :: #{binary() => any()}.


%% Example:
%% analytics_session_group_by_specification() :: #{
%%   <<"name">> => list(any())
%% }
-type analytics_session_group_by_specification() :: #{binary() => any()}.


%% Example:
%% delete_bot_replica_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botReplicaStatus">> => list(any()),
%%   <<"replicaRegion">> => string()
%% }
-type delete_bot_replica_response() :: #{binary() => any()}.


%% Example:
%% slot_type_statistics() :: #{
%%   <<"discoveredSlotTypeCount">> => integer()
%% }
-type slot_type_statistics() :: #{binary() => any()}.


%% Example:
%% slot_value_elicitation_setting() :: #{
%%   <<"defaultValueSpecification">> => slot_default_value_specification(),
%%   <<"promptSpecification">> => prompt_specification(),
%%   <<"sampleUtterances">> => list(sample_utterance()),
%%   <<"slotCaptureSetting">> => slot_capture_setting(),
%%   <<"slotConstraint">> => list(any()),
%%   <<"slotResolutionSetting">> => slot_resolution_setting(),
%%   <<"waitAndContinueSpecification">> => wait_and_continue_specification()
%% }
-type slot_value_elicitation_setting() :: #{binary() => any()}.


%% Example:
%% conditional_branch() :: #{
%%   <<"condition">> => condition(),
%%   <<"name">> => string(),
%%   <<"nextStep">> => dialog_state(),
%%   <<"response">> => response_specification()
%% }
-type conditional_branch() :: #{binary() => any()}.


%% Example:
%% slot_type_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type slot_type_sort_by() :: #{binary() => any()}.


%% Example:
%% create_test_set_discrepancy_report_request() :: #{
%%   <<"target">> := test_set_discrepancy_report_resource_target()
%% }
-type create_test_set_discrepancy_report_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_log_group_log_destination() :: #{
%%   <<"cloudWatchLogGroupArn">> => string(),
%%   <<"logPrefix">> => string()
%% }
-type cloud_watch_log_group_log_destination() :: #{binary() => any()}.


%% Example:
%% list_bot_alias_replicas_response() :: #{
%%   <<"botAliasReplicaSummaries">> => list(bot_alias_replica_summary()),
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"replicaRegion">> => string(),
%%   <<"sourceRegion">> => string()
%% }
-type list_bot_alias_replicas_response() :: #{binary() => any()}.


%% Example:
%% test_execution_result_items() :: #{
%%   <<"conversationLevelTestResults">> => conversation_level_test_results(),
%%   <<"intentClassificationTestResults">> => intent_classification_test_results(),
%%   <<"intentLevelSlotResolutionTestResults">> => intent_level_slot_resolution_test_results(),
%%   <<"overallTestResults">> => overall_test_results(),
%%   <<"utteranceLevelTestResults">> => utterance_level_test_results()
%% }
-type test_execution_result_items() :: #{binary() => any()}.


%% Example:
%% test_set_turn_record() :: #{
%%   <<"conversationId">> => string(),
%%   <<"recordNumber">> => float(),
%%   <<"turnNumber">> => integer(),
%%   <<"turnSpecification">> => turn_specification()
%% }
-type test_set_turn_record() :: #{binary() => any()}.


%% Example:
%% analytics_session_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type analytics_session_filter() :: #{binary() => any()}.


%% Example:
%% lambda_code_hook() :: #{
%%   <<"codeHookInterfaceVersion">> => string(),
%%   <<"lambdaARN">> => string()
%% }
-type lambda_code_hook() :: #{binary() => any()}.


%% Example:
%% batch_delete_custom_vocabulary_item_request() :: #{
%%   <<"customVocabularyItemList">> := list(custom_vocabulary_entry_id())
%% }
-type batch_delete_custom_vocabulary_item_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_import_response() :: #{
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any())
%% }
-type delete_import_response() :: #{binary() => any()}.


%% Example:
%% bot_version_summary() :: #{
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string()
%% }
-type bot_version_summary() :: #{binary() => any()}.


%% Example:
%% intent_classification_test_results() :: #{
%%   <<"items">> => list(intent_classification_test_result_item())
%% }
-type intent_classification_test_results() :: #{binary() => any()}.


%% Example:
%% delete_bot_alias_request() :: #{
%%   <<"skipResourceInUseCheck">> => boolean()
%% }
-type delete_bot_alias_request() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_group_by_specification() :: #{
%%   <<"name">> => list(any())
%% }
-type analytics_intent_stage_group_by_specification() :: #{binary() => any()}.


%% Example:
%% slot_summary() :: #{
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"slotConstraint">> => list(any()),
%%   <<"slotId">> => string(),
%%   <<"slotName">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"valueElicitationPromptSpecification">> => prompt_specification()
%% }
-type slot_summary() :: #{binary() => any()}.


%% Example:
%% list_bots_response() :: #{
%%   <<"botSummaries">> => list(bot_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_bots_response() :: #{binary() => any()}.


%% Example:
%% list_bot_versions_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersionSummaries">> => list(bot_version_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_bot_versions_response() :: #{binary() => any()}.


%% Example:
%% composite_slot_type_setting() :: #{
%%   <<"subSlots">> => list(sub_slot_type_composition())
%% }
-type composite_slot_type_setting() :: #{binary() => any()}.


%% Example:
%% sub_slot_setting() :: #{
%%   <<"expression">> => string(),
%%   <<"slotSpecifications">> => map()
%% }
-type sub_slot_setting() :: #{binary() => any()}.


%% Example:
%% export_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type export_sort_by() :: #{binary() => any()}.


%% Example:
%% user_turn_input_specification() :: #{
%%   <<"requestAttributes">> => map(),
%%   <<"sessionState">> => input_session_state_specification(),
%%   <<"utteranceInput">> => utterance_input_specification()
%% }
-type user_turn_input_specification() :: #{binary() => any()}.


%% Example:
%% utterance_input_specification() :: #{
%%   <<"audioInput">> => utterance_audio_input_specification(),
%%   <<"textInput">> => string()
%% }
-type utterance_input_specification() :: #{binary() => any()}.


%% Example:
%% list_bot_aliases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_aliases_request() :: #{binary() => any()}.


%% Example:
%% list_bot_alias_replicas_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_alias_replicas_request() :: #{binary() => any()}.

%% Example:
%% describe_slot_request() :: #{}
-type describe_slot_request() :: #{}.


%% Example:
%% describe_slot_type_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"compositeSlotTypeSetting">> => composite_slot_type_setting(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalSourceSetting">> => external_source_setting(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"slotTypeName">> => string(),
%%   <<"slotTypeValues">> => list(slot_type_value()),
%%   <<"valueSelectionSetting">> => slot_value_selection_setting()
%% }
-type describe_slot_type_response() :: #{binary() => any()}.


%% Example:
%% list_bot_locales_request() :: #{
%%   <<"filters">> => list(bot_locale_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => bot_locale_sort_by()
%% }
-type list_bot_locales_request() :: #{binary() => any()}.


%% Example:
%% slot_type_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type slot_type_filter() :: #{binary() => any()}.


%% Example:
%% list_test_set_records_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_test_set_records_request() :: #{binary() => any()}.


%% Example:
%% delete_custom_vocabulary_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"customVocabularyStatus">> => list(any()),
%%   <<"localeId">> => string()
%% }
-type delete_custom_vocabulary_response() :: #{binary() => any()}.


%% Example:
%% create_slot_type_request() :: #{
%%   <<"compositeSlotTypeSetting">> => composite_slot_type_setting(),
%%   <<"description">> => string(),
%%   <<"externalSourceSetting">> => external_source_setting(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeName">> := string(),
%%   <<"slotTypeValues">> => list(slot_type_value()),
%%   <<"valueSelectionSetting">> => slot_value_selection_setting()
%% }
-type create_slot_type_request() :: #{binary() => any()}.


%% Example:
%% test_set_generation_data_source() :: #{
%%   <<"conversationLogsDataSource">> => conversation_logs_data_source()
%% }
-type test_set_generation_data_source() :: #{binary() => any()}.

%% Example:
%% describe_test_set_discrepancy_report_request() :: #{}
-type describe_test_set_discrepancy_report_request() :: #{}.


%% Example:
%% conversation_log_settings() :: #{
%%   <<"audioLogSettings">> => list(audio_log_setting()),
%%   <<"textLogSettings">> => list(text_log_setting())
%% }
-type conversation_log_settings() :: #{binary() => any()}.

%% Example:
%% describe_slot_type_request() :: #{}
-type describe_slot_type_request() :: #{}.


%% Example:
%% user_turn_intent_output() :: #{
%%   <<"name">> => string(),
%%   <<"slots">> => map()
%% }
-type user_turn_intent_output() :: #{binary() => any()}.


%% Example:
%% batch_update_custom_vocabulary_item_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"errors">> => list(failed_custom_vocabulary_item()),
%%   <<"localeId">> => string(),
%%   <<"resources">> => list(custom_vocabulary_item())
%% }
-type batch_update_custom_vocabulary_item_response() :: #{binary() => any()}.


%% Example:
%% test_execution_result_filter_by() :: #{
%%   <<"conversationLevelTestResultsFilterBy">> => conversation_level_test_results_filter_by(),
%%   <<"resultTypeFilter">> => list(any())
%% }
-type test_execution_result_filter_by() :: #{binary() => any()}.


%% Example:
%% describe_test_set_discrepancy_report_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"lastUpdatedDataTime">> => non_neg_integer(),
%%   <<"target">> => test_set_discrepancy_report_resource_target(),
%%   <<"testSetDiscrepancyRawOutputUrl">> => string(),
%%   <<"testSetDiscrepancyReportId">> => string(),
%%   <<"testSetDiscrepancyReportStatus">> => list(any()),
%%   <<"testSetDiscrepancyTopErrors">> => test_set_discrepancy_errors(),
%%   <<"testSetId">> => string()
%% }
-type describe_test_set_discrepancy_report_response() :: #{binary() => any()}.


%% Example:
%% batch_create_custom_vocabulary_item_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"errors">> => list(failed_custom_vocabulary_item()),
%%   <<"localeId">> => string(),
%%   <<"resources">> => list(custom_vocabulary_item())
%% }
-type batch_create_custom_vocabulary_item_response() :: #{binary() => any()}.


%% Example:
%% create_export_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"exportId">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"fileFormat">> => list(any()),
%%   <<"resourceSpecification">> => export_resource_specification()
%% }
-type create_export_response() :: #{binary() => any()}.


%% Example:
%% agent_turn_specification() :: #{
%%   <<"agentPrompt">> => string()
%% }
-type agent_turn_specification() :: #{binary() => any()}.


%% Example:
%% intent_override() :: #{
%%   <<"name">> => string(),
%%   <<"slots">> => map()
%% }
-type intent_override() :: #{binary() => any()}.


%% Example:
%% import_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type import_filter() :: #{binary() => any()}.


%% Example:
%% post_fulfillment_status_specification() :: #{
%%   <<"failureConditional">> => conditional_specification(),
%%   <<"failureNextStep">> => dialog_state(),
%%   <<"failureResponse">> => response_specification(),
%%   <<"successConditional">> => conditional_specification(),
%%   <<"successNextStep">> => dialog_state(),
%%   <<"successResponse">> => response_specification(),
%%   <<"timeoutConditional">> => conditional_specification(),
%%   <<"timeoutNextStep">> => dialog_state(),
%%   <<"timeoutResponse">> => response_specification()
%% }
-type post_fulfillment_status_specification() :: #{binary() => any()}.


%% Example:
%% list_bot_resource_generations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => generation_sort_by()
%% }
-type list_bot_resource_generations_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_slot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"intentId">> => string(),
%%   <<"localeId">> => string(),
%%   <<"multipleValuesSetting">> => multiple_values_setting(),
%%   <<"obfuscationSetting">> => obfuscation_setting(),
%%   <<"slotId">> => string(),
%%   <<"slotName">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"subSlotSetting">> => sub_slot_setting(),
%%   <<"valueElicitationSetting">> => slot_value_elicitation_setting()
%% }
-type create_slot_response() :: #{binary() => any()}.


%% Example:
%% intent_closing_setting() :: #{
%%   <<"active">> => boolean(),
%%   <<"closingResponse">> => response_specification(),
%%   <<"conditional">> => conditional_specification(),
%%   <<"nextStep">> => dialog_state()
%% }
-type intent_closing_setting() :: #{binary() => any()}.


%% Example:
%% start_bot_resource_generation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"generationId">> => string(),
%%   <<"generationInputPrompt">> => string(),
%%   <<"generationStatus">> => list(any()),
%%   <<"localeId">> => string()
%% }
-type start_bot_resource_generation_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_stage_result() :: #{
%%   <<"binKeys">> => list(analytics_bin_key()),
%%   <<"groupByKeys">> => list(analytics_intent_stage_group_by_key()),
%%   <<"metricsResults">> => list(analytics_intent_stage_metric_result())
%% }
-type analytics_intent_stage_result() :: #{binary() => any()}.


%% Example:
%% list_test_executions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => test_execution_sort_by()
%% }
-type list_test_executions_request() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"order">> => list(any()),
%%   <<"statistic">> => list(any())
%% }
-type analytics_utterance_metric() :: #{binary() => any()}.


%% Example:
%% list_utterance_analytics_data_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"utterances">> => list(utterance_specification())
%% }
-type list_utterance_analytics_data_response() :: #{binary() => any()}.

%% Example:
%% build_bot_locale_request() :: #{}
-type build_bot_locale_request() :: #{}.


%% Example:
%% start_test_execution_response() :: #{
%%   <<"apiMode">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"target">> => test_execution_target(),
%%   <<"testExecutionId">> => string(),
%%   <<"testExecutionModality">> => list(any()),
%%   <<"testSetId">> => string()
%% }
-type start_test_execution_response() :: #{binary() => any()}.


%% Example:
%% input_context() :: #{
%%   <<"name">> => string()
%% }
-type input_context() :: #{binary() => any()}.


%% Example:
%% plain_text_message() :: #{
%%   <<"value">> => string()
%% }
-type plain_text_message() :: #{binary() => any()}.


%% Example:
%% update_bot_request() :: #{
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> := string(),
%%   <<"botType">> => list(any()),
%%   <<"dataPrivacy">> := data_privacy(),
%%   <<"description">> => string(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"idleSessionTTLInSeconds">> := integer(),
%%   <<"roleArn">> := string()
%% }
-type update_bot_request() :: #{binary() => any()}.


%% Example:
%% describe_test_set_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"modality">> => list(any()),
%%   <<"numTurns">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type describe_test_set_response() :: #{binary() => any()}.


%% Example:
%% conditional_specification() :: #{
%%   <<"active">> => boolean(),
%%   <<"conditionalBranches">> => list(conditional_branch()),
%%   <<"defaultBranch">> => default_conditional_branch()
%% }
-type conditional_specification() :: #{binary() => any()}.


%% Example:
%% delete_slot_type_request() :: #{
%%   <<"skipResourceInUseCheck">> => boolean()
%% }
-type delete_slot_type_request() :: #{binary() => any()}.


%% Example:
%% list_bot_resource_generations_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"generationSummaries">> => list(generation_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_resource_generations_response() :: #{binary() => any()}.


%% Example:
%% runtime_hints() :: #{
%%   <<"slotHints">> => map()
%% }
-type runtime_hints() :: #{binary() => any()}.


%% Example:
%% audio_log_setting() :: #{
%%   <<"destination">> => audio_log_destination(),
%%   <<"enabled">> => boolean(),
%%   <<"selectiveLoggingEnabled">> => boolean()
%% }
-type audio_log_setting() :: #{binary() => any()}.


%% Example:
%% post_dialog_code_hook_invocation_specification() :: #{
%%   <<"failureConditional">> => conditional_specification(),
%%   <<"failureNextStep">> => dialog_state(),
%%   <<"failureResponse">> => response_specification(),
%%   <<"successConditional">> => conditional_specification(),
%%   <<"successNextStep">> => dialog_state(),
%%   <<"successResponse">> => response_specification(),
%%   <<"timeoutConditional">> => conditional_specification(),
%%   <<"timeoutNextStep">> => dialog_state(),
%%   <<"timeoutResponse">> => response_specification()
%% }
-type post_dialog_code_hook_invocation_specification() :: #{binary() => any()}.


%% Example:
%% describe_bot_alias_response() :: #{
%%   <<"botAliasHistoryEvents">> => list(bot_alias_history_event()),
%%   <<"botAliasId">> => string(),
%%   <<"botAliasLocaleSettings">> => map(),
%%   <<"botAliasName">> => string(),
%%   <<"botAliasStatus">> => list(any()),
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"conversationLogSettings">> => conversation_log_settings(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"parentBotNetworks">> => list(parent_bot_network()),
%%   <<"sentimentAnalysisSettings">> => sentiment_analysis_settings()
%% }
-type describe_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_custom_vocabulary_item_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"errors">> => list(failed_custom_vocabulary_item()),
%%   <<"localeId">> => string(),
%%   <<"resources">> => list(custom_vocabulary_item())
%% }
-type batch_delete_custom_vocabulary_item_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_bot_replicas_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botReplicaSummaries">> => list(bot_replica_summary()),
%%   <<"sourceRegion">> => string()
%% }
-type list_bot_replicas_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_resource_policy_request() :: #{
%%   <<"expectedRevisionId">> => string(),
%%   <<"policy">> := string()
%% }
-type update_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% update_bot_recommendation_request() :: #{
%%   <<"encryptionSetting">> := encryption_setting()
%% }
-type update_bot_recommendation_request() :: #{binary() => any()}.


%% Example:
%% list_built_in_intents_response() :: #{
%%   <<"builtInIntentSummaries">> => list(built_in_intent_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_built_in_intents_response() :: #{binary() => any()}.


%% Example:
%% intent_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type intent_sort_by() :: #{binary() => any()}.


%% Example:
%% describe_bot_locale_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleHistoryEvents">> => list(bot_locale_history_event()),
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()),
%%   <<"generativeAISettings">> => generative_a_i_settings(),
%%   <<"intentsCount">> => integer(),
%%   <<"lastBuildSubmittedDateTime">> => non_neg_integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"localeName">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"recommendedActions">> => list(string()),
%%   <<"slotTypesCount">> => integer(),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type describe_bot_locale_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% aggregated_utterances_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type aggregated_utterances_filter() :: #{binary() => any()}.


%% Example:
%% create_intent_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => dialog_code_hook_settings(),
%%   <<"fulfillmentCodeHook">> => fulfillment_code_hook_settings(),
%%   <<"initialResponseSetting">> => initial_response_setting(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentClosingSetting">> => intent_closing_setting(),
%%   <<"intentConfirmationSetting">> => intent_confirmation_setting(),
%%   <<"intentId">> => string(),
%%   <<"intentName">> => string(),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"localeId">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"qInConnectIntentConfiguration">> => q_in_connect_intent_configuration(),
%%   <<"qnAIntentConfiguration">> => qn_a_intent_configuration(),
%%   <<"sampleUtterances">> => list(sample_utterance())
%% }
-type create_intent_response() :: #{binary() => any()}.


%% Example:
%% list_custom_vocabulary_items_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_custom_vocabulary_items_request() :: #{binary() => any()}.


%% Example:
%% exact_response_fields() :: #{
%%   <<"answerField">> => string(),
%%   <<"questionField">> => string()
%% }
-type exact_response_fields() :: #{binary() => any()}.


%% Example:
%% generate_bot_element_request() :: #{
%%   <<"intentId">> := string()
%% }
-type generate_bot_element_request() :: #{binary() => any()}.


%% Example:
%% describe_resource_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"revisionId">> => string()
%% }
-type describe_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% list_test_executions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testExecutions">> => list(test_execution_summary())
%% }
-type list_test_executions_response() :: #{binary() => any()}.


%% Example:
%% create_bot_request() :: #{
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> := string(),
%%   <<"botTags">> => map(),
%%   <<"botType">> => list(any()),
%%   <<"dataPrivacy">> := data_privacy(),
%%   <<"description">> => string(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"idleSessionTTLInSeconds">> := integer(),
%%   <<"roleArn">> := string(),
%%   <<"testBotAliasTags">> => map()
%% }
-type create_bot_request() :: #{binary() => any()}.


%% Example:
%% list_imports_request() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"filters">> => list(import_filter()),
%%   <<"localeId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => import_sort_by()
%% }
-type list_imports_request() :: #{binary() => any()}.


%% Example:
%% list_recommended_intents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_recommended_intents_request() :: #{binary() => any()}.


%% Example:
%% nlu_improvement_specification() :: #{
%%   <<"enabled">> => boolean()
%% }
-type nlu_improvement_specification() :: #{binary() => any()}.


%% Example:
%% slot_value_selection_setting() :: #{
%%   <<"advancedRecognitionSetting">> => advanced_recognition_setting(),
%%   <<"regexFilter">> => slot_value_regex_filter(),
%%   <<"resolutionStrategy">> => list(any())
%% }
-type slot_value_selection_setting() :: #{binary() => any()}.

%% Example:
%% describe_intent_request() :: #{}
-type describe_intent_request() :: #{}.


%% Example:
%% list_utterance_analytics_data_request() :: #{
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_utterance_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => utterance_data_sort_by(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_utterance_analytics_data_request() :: #{binary() => any()}.


%% Example:
%% button() :: #{
%%   <<"text">> => string(),
%%   <<"value">> => string()
%% }
-type button() :: #{binary() => any()}.


%% Example:
%% audio_and_d_t_m_f_input_specification() :: #{
%%   <<"audioSpecification">> => audio_specification(),
%%   <<"dtmfSpecification">> => d_t_m_f_specification(),
%%   <<"startTimeoutMs">> => integer()
%% }
-type audio_and_d_t_m_f_input_specification() :: #{binary() => any()}.


%% Example:
%% dialog_action() :: #{
%%   <<"slotToElicit">> => string(),
%%   <<"suppressNextMessage">> => boolean(),
%%   <<"type">> => list(any())
%% }
-type dialog_action() :: #{binary() => any()}.


%% Example:
%% slot_type_summary() :: #{
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeCategory">> => list(any()),
%%   <<"slotTypeId">> => string(),
%%   <<"slotTypeName">> => string()
%% }
-type slot_type_summary() :: #{binary() => any()}.


%% Example:
%% utterance_specification() :: #{
%%   <<"associatedIntentName">> => string(),
%%   <<"associatedSlotName">> => string(),
%%   <<"audioVoiceDurationMillis">> => float(),
%%   <<"botAliasId">> => string(),
%%   <<"botResponseAudioVoiceId">> => string(),
%%   <<"botResponses">> => list(utterance_bot_response()),
%%   <<"botVersion">> => string(),
%%   <<"channel">> => string(),
%%   <<"conversationEndTime">> => non_neg_integer(),
%%   <<"conversationStartTime">> => non_neg_integer(),
%%   <<"dialogActionType">> => string(),
%%   <<"inputType">> => string(),
%%   <<"intentState">> => list(any()),
%%   <<"localeId">> => string(),
%%   <<"mode">> => list(any()),
%%   <<"outputType">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"slotsFilledInSession">> => string(),
%%   <<"utterance">> => string(),
%%   <<"utteranceRequestId">> => string(),
%%   <<"utteranceTimestamp">> => non_neg_integer(),
%%   <<"utteranceUnderstood">> => boolean()
%% }
-type utterance_specification() :: #{binary() => any()}.


%% Example:
%% data_privacy() :: #{
%%   <<"childDirected">> => boolean()
%% }
-type data_privacy() :: #{binary() => any()}.


%% Example:
%% external_source_setting() :: #{
%%   <<"grammarSlotTypeSetting">> => grammar_slot_type_setting()
%% }
-type external_source_setting() :: #{binary() => any()}.


%% Example:
%% utterance_level_test_result_item() :: #{
%%   <<"conversationId">> => string(),
%%   <<"recordNumber">> => float(),
%%   <<"turnResult">> => test_set_turn_result()
%% }
-type utterance_level_test_result_item() :: #{binary() => any()}.


%% Example:
%% create_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botTags">> => map(),
%%   <<"botType">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataPrivacy">> => data_privacy(),
%%   <<"description">> => string(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"testBotAliasTags">> => map()
%% }
-type create_bot_response() :: #{binary() => any()}.


%% Example:
%% list_built_in_intents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => built_in_intent_sort_by()
%% }
-type list_built_in_intents_request() :: #{binary() => any()}.

%% Example:
%% describe_test_execution_request() :: #{}
-type describe_test_execution_request() :: #{}.


%% Example:
%% bot_locale_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type bot_locale_filter() :: #{binary() => any()}.


%% Example:
%% runtime_hint_details() :: #{
%%   <<"runtimeHintValues">> => list(runtime_hint_value()),
%%   <<"subSlotHints">> => map()
%% }
-type runtime_hint_details() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"expectedRevisionId">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% analytics_utterance_metric_result() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type analytics_utterance_metric_result() :: #{binary() => any()}.


%% Example:
%% aggregated_utterances_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type aggregated_utterances_sort_by() :: #{binary() => any()}.


%% Example:
%% slot_default_value() :: #{
%%   <<"defaultValue">> => string()
%% }
-type slot_default_value() :: #{binary() => any()}.


%% Example:
%% describe_slot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"intentId">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"multipleValuesSetting">> => multiple_values_setting(),
%%   <<"obfuscationSetting">> => obfuscation_setting(),
%%   <<"slotId">> => string(),
%%   <<"slotName">> => string(),
%%   <<"slotTypeId">> => string(),
%%   <<"subSlotSetting">> => sub_slot_setting(),
%%   <<"valueElicitationSetting">> => slot_value_elicitation_setting()
%% }
-type describe_slot_response() :: #{binary() => any()}.


%% Example:
%% analytics_intent_node_summary() :: #{
%%   <<"intentCount">> => integer(),
%%   <<"intentLevel">> => integer(),
%%   <<"intentName">> => string(),
%%   <<"intentPath">> => string(),
%%   <<"nodeType">> => list(any())
%% }
-type analytics_intent_node_summary() :: #{binary() => any()}.


%% Example:
%% test_execution_summary() :: #{
%%   <<"apiMode">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"target">> => test_execution_target(),
%%   <<"testExecutionId">> => string(),
%%   <<"testExecutionModality">> => list(any()),
%%   <<"testExecutionStatus">> => list(any()),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type test_execution_summary() :: #{binary() => any()}.


%% Example:
%% code_hook_specification() :: #{
%%   <<"lambdaCodeHook">> => lambda_code_hook()
%% }
-type code_hook_specification() :: #{binary() => any()}.


%% Example:
%% q_in_connect_assistant_configuration() :: #{
%%   <<"assistantArn">> => string()
%% }
-type q_in_connect_assistant_configuration() :: #{binary() => any()}.


%% Example:
%% create_bot_locale_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"generativeAISettings">> => generative_a_i_settings(),
%%   <<"localeId">> => string(),
%%   <<"localeName">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type create_bot_locale_response() :: #{binary() => any()}.


%% Example:
%% list_bot_recommendations_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationSummaries">> => list(bot_recommendation_summary()),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_bot_recommendations_response() :: #{binary() => any()}.


%% Example:
%% update_bot_locale_request() :: #{
%%   <<"description">> => string(),
%%   <<"generativeAISettings">> => generative_a_i_settings(),
%%   <<"nluIntentConfidenceThreshold">> := float(),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type update_bot_locale_request() :: #{binary() => any()}.


%% Example:
%% list_test_sets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testSets">> => list(test_set_summary())
%% }
-type list_test_sets_response() :: #{binary() => any()}.


%% Example:
%% bot_recommendation_summary() :: #{
%%   <<"botRecommendationId">> => string(),
%%   <<"botRecommendationStatus">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer()
%% }
-type bot_recommendation_summary() :: #{binary() => any()}.


%% Example:
%% user_turn_output_specification() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"intent">> => user_turn_intent_output(),
%%   <<"transcript">> => string()
%% }
-type user_turn_output_specification() :: #{binary() => any()}.


%% Example:
%% build_bot_locale_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"lastBuildSubmittedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string()
%% }
-type build_bot_locale_response() :: #{binary() => any()}.


%% Example:
%% generation_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type generation_sort_by() :: #{binary() => any()}.


%% Example:
%% user_turn_slot_output() :: #{
%%   <<"subSlots">> => map(),
%%   <<"value">> => string(),
%%   <<"values">> => list(user_turn_slot_output())
%% }
-type user_turn_slot_output() :: #{binary() => any()}.


%% Example:
%% turn_specification() :: #{
%%   <<"agentTurn">> => agent_turn_specification(),
%%   <<"userTurn">> => user_turn_specification()
%% }
-type turn_specification() :: #{binary() => any()}.


%% Example:
%% encryption_setting() :: #{
%%   <<"associatedTranscriptsPassword">> => string(),
%%   <<"botLocaleExportPassword">> => string(),
%%   <<"kmsKeyArn">> => string()
%% }
-type encryption_setting() :: #{binary() => any()}.


%% Example:
%% transcript_source_setting() :: #{
%%   <<"s3BucketTranscriptSource">> => s3_bucket_transcript_source()
%% }
-type transcript_source_setting() :: #{binary() => any()}.


%% Example:
%% delete_utterances_request() :: #{
%%   <<"localeId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type delete_utterances_request() :: #{binary() => any()}.


%% Example:
%% update_export_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"exportId">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"fileFormat">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"resourceSpecification">> => export_resource_specification()
%% }
-type update_export_response() :: #{binary() => any()}.


%% Example:
%% test_set_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"modality">> => list(any()),
%%   <<"numTurns">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"storageLocation">> => test_set_storage_location(),
%%   <<"testSetId">> => string(),
%%   <<"testSetName">> => string()
%% }
-type test_set_summary() :: #{binary() => any()}.


%% Example:
%% list_test_execution_result_items_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resultFilterBy">> := test_execution_result_filter_by()
%% }
-type list_test_execution_result_items_request() :: #{binary() => any()}.


%% Example:
%% custom_payload() :: #{
%%   <<"value">> => string()
%% }
-type custom_payload() :: #{binary() => any()}.


%% Example:
%% update_export_request() :: #{
%%   <<"filePassword">> => string()
%% }
-type update_export_request() :: #{binary() => any()}.


%% Example:
%% list_utterance_metrics_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(analytics_utterance_result())
%% }
-type list_utterance_metrics_response() :: #{binary() => any()}.


%% Example:
%% stop_bot_recommendation_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botRecommendationId">> => string(),
%%   <<"botRecommendationStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string()
%% }
-type stop_bot_recommendation_response() :: #{binary() => any()}.


%% Example:
%% dialog_code_hook_invocation_setting() :: #{
%%   <<"active">> => boolean(),
%%   <<"enableCodeHookInvocation">> => boolean(),
%%   <<"invocationLabel">> => string(),
%%   <<"postCodeHookSpecification">> => post_dialog_code_hook_invocation_specification()
%% }
-type dialog_code_hook_invocation_setting() :: #{binary() => any()}.


%% Example:
%% update_bot_locale_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReasons">> => list(string()),
%%   <<"generativeAISettings">> => generative_a_i_settings(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"localeName">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"recommendedActions">> => list(string()),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type update_bot_locale_response() :: #{binary() => any()}.


%% Example:
%% list_utterance_metrics_request() :: #{
%%   <<"attributes">> => list(analytics_utterance_attribute()),
%%   <<"binBy">> => list(analytics_bin_by_specification()),
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_utterance_filter()),
%%   <<"groupBy">> => list(analytics_utterance_group_by_specification()),
%%   <<"maxResults">> => integer(),
%%   <<"metrics">> := list(analytics_utterance_metric()),
%%   <<"nextToken">> => string(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_utterance_metrics_request() :: #{binary() => any()}.


%% Example:
%% sample_utterance_generation_specification() :: #{
%%   <<"bedrockModelSpecification">> => bedrock_model_specification(),
%%   <<"enabled">> => boolean()
%% }
-type sample_utterance_generation_specification() :: #{binary() => any()}.


%% Example:
%% text_log_setting() :: #{
%%   <<"destination">> => text_log_destination(),
%%   <<"enabled">> => boolean(),
%%   <<"selectiveLoggingEnabled">> => boolean()
%% }
-type text_log_setting() :: #{binary() => any()}.


%% Example:
%% sentiment_analysis_settings() :: #{
%%   <<"detectSentiment">> => boolean()
%% }
-type sentiment_analysis_settings() :: #{binary() => any()}.


%% Example:
%% list_session_metrics_response() :: #{
%%   <<"botId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(analytics_session_result())
%% }
-type list_session_metrics_response() :: #{binary() => any()}.


%% Example:
%% still_waiting_response_specification() :: #{
%%   <<"allowInterrupt">> => boolean(),
%%   <<"frequencyInSeconds">> => integer(),
%%   <<"messageGroups">> => list(message_group()),
%%   <<"timeoutInSeconds">> => integer()
%% }
-type still_waiting_response_specification() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% bot_alias_replica_summary() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botAliasReplicationStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReasons">> => list(string()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer()
%% }
-type bot_alias_replica_summary() :: #{binary() => any()}.


%% Example:
%% list_slot_types_request() :: #{
%%   <<"filters">> => list(slot_type_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => slot_type_sort_by()
%% }
-type list_slot_types_request() :: #{binary() => any()}.


%% Example:
%% qn_a_kendra_configuration() :: #{
%%   <<"exactResponse">> => boolean(),
%%   <<"kendraIndex">> => string(),
%%   <<"queryFilterString">> => string(),
%%   <<"queryFilterStringEnabled">> => boolean()
%% }
-type qn_a_kendra_configuration() :: #{binary() => any()}.


%% Example:
%% update_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botMembers">> => list(bot_member()),
%%   <<"botName">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botType">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataPrivacy">> => data_privacy(),
%%   <<"description">> => string(),
%%   <<"errorLogSettings">> => error_log_settings(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string()
%% }
-type update_bot_response() :: #{binary() => any()}.

%% Example:
%% delete_intent_request() :: #{}
-type delete_intent_request() :: #{}.


%% Example:
%% describe_export_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"downloadUrl">> => string(),
%%   <<"exportId">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"failureReasons">> => list(string()),
%%   <<"fileFormat">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"resourceSpecification">> => export_resource_specification()
%% }
-type describe_export_response() :: #{binary() => any()}.


%% Example:
%% parent_bot_network() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string()
%% }
-type parent_bot_network() :: #{binary() => any()}.


%% Example:
%% start_import_request() :: #{
%%   <<"filePassword">> => string(),
%%   <<"importId">> := string(),
%%   <<"mergeStrategy">> := list(any()),
%%   <<"resourceSpecification">> := import_resource_specification()
%% }
-type start_import_request() :: #{binary() => any()}.


%% Example:
%% list_session_analytics_data_request() :: #{
%%   <<"endDateTime">> := non_neg_integer(),
%%   <<"filters">> => list(analytics_session_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => session_data_sort_by(),
%%   <<"startDateTime">> := non_neg_integer()
%% }
-type list_session_analytics_data_request() :: #{binary() => any()}.


%% Example:
%% list_test_sets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => test_set_sort_by()
%% }
-type list_test_sets_request() :: #{binary() => any()}.


%% Example:
%% start_import_response() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any()),
%%   <<"mergeStrategy">> => list(any()),
%%   <<"resourceSpecification">> => import_resource_specification()
%% }
-type start_import_response() :: #{binary() => any()}.


%% Example:
%% delete_bot_locale_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botLocaleStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"localeId">> => string()
%% }
-type delete_bot_locale_response() :: #{binary() => any()}.

%% Example:
%% describe_bot_replica_request() :: #{}
-type describe_bot_replica_request() :: #{}.


%% Example:
%% describe_intent_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => dialog_code_hook_settings(),
%%   <<"fulfillmentCodeHook">> => fulfillment_code_hook_settings(),
%%   <<"initialResponseSetting">> => initial_response_setting(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"intentClosingSetting">> => intent_closing_setting(),
%%   <<"intentConfirmationSetting">> => intent_confirmation_setting(),
%%   <<"intentId">> => string(),
%%   <<"intentName">> => string(),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"localeId">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"qInConnectIntentConfiguration">> => q_in_connect_intent_configuration(),
%%   <<"qnAIntentConfiguration">> => qn_a_intent_configuration(),
%%   <<"sampleUtterances">> => list(sample_utterance()),
%%   <<"slotPriorities">> => list(slot_priority())
%% }
-type describe_intent_response() :: #{binary() => any()}.


%% Example:
%% sample_value() :: #{
%%   <<"value">> => string()
%% }
-type sample_value() :: #{binary() => any()}.


%% Example:
%% built_in_intent_sort_by() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type built_in_intent_sort_by() :: #{binary() => any()}.


%% Example:
%% create_bot_locale_request() :: #{
%%   <<"description">> => string(),
%%   <<"generativeAISettings">> => generative_a_i_settings(),
%%   <<"localeId">> := string(),
%%   <<"nluIntentConfidenceThreshold">> := float(),
%%   <<"voiceSettings">> => voice_settings()
%% }
-type create_bot_locale_request() :: #{binary() => any()}.

%% Example:
%% describe_bot_recommendation_request() :: #{}
-type describe_bot_recommendation_request() :: #{}.

%% Example:
%% delete_custom_vocabulary_request() :: #{}
-type delete_custom_vocabulary_request() :: #{}.

%% Example:
%% describe_resource_policy_request() :: #{}
-type describe_resource_policy_request() :: #{}.


%% Example:
%% create_bot_version_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botStatus">> => list(any()),
%%   <<"botVersion">> => string(),
%%   <<"botVersionLocaleSpecification">> => map(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string()
%% }
-type create_bot_version_response() :: #{binary() => any()}.


%% Example:
%% list_exports_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"exportSummaries">> => list(export_summary()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_exports_response() :: #{binary() => any()}.


%% Example:
%% get_test_execution_artifacts_url_response() :: #{
%%   <<"downloadArtifactsUrl">> => string(),
%%   <<"testExecutionId">> => string()
%% }
-type get_test_execution_artifacts_url_response() :: #{binary() => any()}.


%% Example:
%% list_custom_vocabulary_items_response() :: #{
%%   <<"botId">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"customVocabularyItems">> => list(custom_vocabulary_item()),
%%   <<"localeId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_custom_vocabulary_items_response() :: #{binary() => any()}.


%% Example:
%% multiple_values_setting() :: #{
%%   <<"allowMultipleValues">> => boolean()
%% }
-type multiple_values_setting() :: #{binary() => any()}.

%% Example:
%% delete_bot_locale_request() :: #{}
-type delete_bot_locale_request() :: #{}.


%% Example:
%% d_t_m_f_specification() :: #{
%%   <<"deletionCharacter">> => string(),
%%   <<"endCharacter">> => string(),
%%   <<"endTimeoutMs">> => integer(),
%%   <<"maxLength">> => integer()
%% }
-type d_t_m_f_specification() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"customPayload">> => custom_payload(),
%%   <<"imageResponseCard">> => image_response_card(),
%%   <<"plainTextMessage">> => plain_text_message(),
%%   <<"ssmlMessage">> => s_s_ml_message()
%% }
-type message() :: #{binary() => any()}.

%% Example:
%% describe_test_set_generation_request() :: #{}
-type describe_test_set_generation_request() :: #{}.


%% Example:
%% s3_bucket_log_destination() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"logPrefix">> => string(),
%%   <<"s3BucketArn">> => string()
%% }
-type s3_bucket_log_destination() :: #{binary() => any()}.

-type batch_create_custom_vocabulary_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type batch_delete_custom_vocabulary_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type batch_update_custom_vocabulary_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type build_bot_locale_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_bot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_bot_alias_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_bot_locale_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_bot_replica_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_bot_version_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_intent_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_resource_policy_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_resource_policy_statement_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_slot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_slot_type_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_test_set_discrepancy_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_upload_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_bot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_bot_alias_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_bot_locale_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_bot_replica_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_bot_version_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_custom_vocabulary_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_export_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_import_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_intent_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_resource_policy_statement_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_slot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_slot_type_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_test_set_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_utterances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type describe_bot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_bot_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_bot_locale_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_bot_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_bot_replica_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_bot_resource_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_bot_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_custom_vocabulary_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_import_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_intent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_resource_policy_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_slot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_slot_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_test_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_test_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_test_set_discrepancy_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_test_set_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type generate_bot_element_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_test_execution_artifacts_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_aggregated_utterances_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_bot_alias_replicas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bot_aliases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bot_locales_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bot_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_bot_replicas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bot_resource_generations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_bot_version_replicas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bot_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_bots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_built_in_intents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_built_in_slot_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_custom_vocabulary_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_exports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_imports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_intent_metrics_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_intent_paths_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_intent_stage_metrics_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_intents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_recommended_intents_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_session_analytics_data_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_session_metrics_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_slot_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_slots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_execution_result_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_test_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_test_set_records_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_test_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_utterance_analytics_data_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_utterance_metrics_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type search_associated_transcripts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_bot_recommendation_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_bot_resource_generation_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_import_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_test_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_test_set_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_bot_recommendation_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_bot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_bot_alias_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_bot_locale_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_bot_recommendation_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_intent_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_resource_policy_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_slot_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_slot_type_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_test_set_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a batch of custom vocabulary items for a given bot
%% locale's
%% custom vocabulary.
-spec batch_create_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_create_custom_vocabulary_item_request()) ->
    {ok, batch_create_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_create_custom_vocabulary_item_errors(), tuple()}.
batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).

-spec batch_create_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_create_custom_vocabulary_item_request(), proplists:proplist()) ->
    {ok, batch_create_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_create_custom_vocabulary_item_errors(), tuple()}.
batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchcreate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a batch of custom vocabulary items for a given bot
%% locale's
%% custom vocabulary.
-spec batch_delete_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_delete_custom_vocabulary_item_request()) ->
    {ok, batch_delete_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_custom_vocabulary_item_errors(), tuple()}.
batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).

-spec batch_delete_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_delete_custom_vocabulary_item_request(), proplists:proplist()) ->
    {ok, batch_delete_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_custom_vocabulary_item_errors(), tuple()}.
batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchdelete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a batch of custom vocabulary items for a given bot
%% locale's custom
%% vocabulary.
-spec batch_update_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_update_custom_vocabulary_item_request()) ->
    {ok, batch_update_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_update_custom_vocabulary_item_errors(), tuple()}.
batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).

-spec batch_update_custom_vocabulary_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_update_custom_vocabulary_item_request(), proplists:proplist()) ->
    {ok, batch_update_custom_vocabulary_item_response(), tuple()} |
    {error, any()} |
    {error, batch_update_custom_vocabulary_item_errors(), tuple()}.
batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchupdate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Builds a bot, its intents, and its slot types into a specific
%% locale.
%%
%% A bot can be built into multiple locales. At runtime the locale
%% is used to choose a specific build of the bot.
-spec build_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), build_bot_locale_request()) ->
    {ok, build_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, build_bot_locale_errors(), tuple()}.
build_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    build_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).

-spec build_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), build_bot_locale_request(), proplists:proplist()) ->
    {ok, build_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, build_bot_locale_errors(), tuple()}.
build_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), ""],
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

%% @doc Creates an Amazon Lex conversational bot.
-spec create_bot(aws_client:aws_client(), create_bot_request()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, Input) ->
    create_bot(Client, Input, []).

-spec create_bot(aws_client:aws_client(), create_bot_request(), proplists:proplist()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, Input0, Options0) ->
    Method = put,
    Path = ["/bots"],
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

%% @doc Creates an alias for the specified version of a bot.
%%
%% Use an alias to
%% enable you to change the version of a bot without updating applications
%% that use the bot.
%%
%% For example, you can create an alias called &quot;PROD&quot; that your
%% applications use to call the Amazon Lex bot.
-spec create_bot_alias(aws_client:aws_client(), binary() | list(), create_bot_alias_request()) ->
    {ok, create_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, create_bot_alias_errors(), tuple()}.
create_bot_alias(Client, BotId, Input) ->
    create_bot_alias(Client, BotId, Input, []).

-spec create_bot_alias(aws_client:aws_client(), binary() | list(), create_bot_alias_request(), proplists:proplist()) ->
    {ok, create_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, create_bot_alias_errors(), tuple()}.
create_bot_alias(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases"],
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

%% @doc Creates a locale in the bot.
%%
%% The locale contains the intents and
%% slot types that the bot uses in conversations with users in the
%% specified language and locale. You must add a locale to a bot before
%% you can add intents and slot types to the bot.
-spec create_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), create_bot_locale_request()) ->
    {ok, create_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, create_bot_locale_errors(), tuple()}.
create_bot_locale(Client, BotId, BotVersion, Input) ->
    create_bot_locale(Client, BotId, BotVersion, Input, []).

-spec create_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), create_bot_locale_request(), proplists:proplist()) ->
    {ok, create_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, create_bot_locale_errors(), tuple()}.
create_bot_locale(Client, BotId, BotVersion, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales"],
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

%% @doc Action to create a replication of the source bot in the secondary
%% region.
-spec create_bot_replica(aws_client:aws_client(), binary() | list(), create_bot_replica_request()) ->
    {ok, create_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, create_bot_replica_errors(), tuple()}.
create_bot_replica(Client, BotId, Input) ->
    create_bot_replica(Client, BotId, Input, []).

-spec create_bot_replica(aws_client:aws_client(), binary() | list(), create_bot_replica_request(), proplists:proplist()) ->
    {ok, create_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, create_bot_replica_errors(), tuple()}.
create_bot_replica(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas"],
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

%% @doc Creates an immutable version of the bot.
%%
%% When you create the first
%% version of a bot, Amazon Lex sets the version number to 1. Subsequent bot
%% versions increase
%% in an increment of 1. The version number will always represent the total
%% number
%% of versions created of the bot, not the current number of versions. If a
%% bot version
%% is deleted, that bot version number will not be reused.
-spec create_bot_version(aws_client:aws_client(), binary() | list(), create_bot_version_request()) ->
    {ok, create_bot_version_response(), tuple()} |
    {error, any()} |
    {error, create_bot_version_errors(), tuple()}.
create_bot_version(Client, BotId, Input) ->
    create_bot_version(Client, BotId, Input, []).

-spec create_bot_version(aws_client:aws_client(), binary() | list(), create_bot_version_request(), proplists:proplist()) ->
    {ok, create_bot_version_response(), tuple()} |
    {error, any()} |
    {error, create_bot_version_errors(), tuple()}.
create_bot_version(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions"],
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

%% @doc Creates a zip archive containing the contents of a bot or a bot
%% locale.
%%
%% The archive contains a directory structure that contains JSON
%% files that define the bot.
%%
%% You can create an archive that contains the complete definition of a
%% bot, or you can specify that the archive contain only the definition of
%% a single bot locale.
%%
%% For more information about exporting bots, and about the structure
%% of the export archive, see Importing and
%% exporting bots :
%% https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html
-spec create_export(aws_client:aws_client(), create_export_request()) ->
    {ok, create_export_response(), tuple()} |
    {error, any()} |
    {error, create_export_errors(), tuple()}.
create_export(Client, Input) ->
    create_export(Client, Input, []).

-spec create_export(aws_client:aws_client(), create_export_request(), proplists:proplist()) ->
    {ok, create_export_response(), tuple()} |
    {error, any()} |
    {error, create_export_errors(), tuple()}.
create_export(Client, Input0, Options0) ->
    Method = put,
    Path = ["/exports"],
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

%% @doc Creates an intent.
%%
%% To define the interaction between the user and your bot, you define
%% one or more intents. For example, for a pizza ordering bot you would
%% create an `OrderPizza' intent.
%%
%% When you create an intent, you must provide a name. You can
%% optionally provide the following:
%%
%% Sample utterances. For example, &quot;I want to order a pizza&quot; and
%% &quot;Can I order a pizza.&quot; You can't provide utterances for
%% built-in
%% intents.
%%
%% Information to be gathered. You specify slots for the
%% information that you bot requests from the user. You can specify
%% standard slot types, such as date and time, or custom slot types
%% for your application.
%%
%% How the intent is fulfilled. You can provide a Lambda function
%% or configure the intent to return the intent information to your
%% client application. If you use a Lambda function, Amazon Lex invokes
%% the function when all of the intent information is
%% available.
%%
%% A confirmation prompt to send to the user to confirm an
%% intent. For example, &quot;Shall I order your pizza?&quot;
%%
%% A conclusion statement to send to the user after the intent is
%% fulfilled. For example, &quot;I ordered your pizza.&quot;
%%
%% A follow-up prompt that asks the user for additional activity.
%% For example, &quot;Do you want a drink with your pizza?&quot;
-spec create_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_intent_request()) ->
    {ok, create_intent_response(), tuple()} |
    {error, any()} |
    {error, create_intent_errors(), tuple()}.
create_intent(Client, BotId, BotVersion, LocaleId, Input) ->
    create_intent(Client, BotId, BotVersion, LocaleId, Input, []).

-spec create_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_intent_request(), proplists:proplist()) ->
    {ok, create_intent_response(), tuple()} |
    {error, any()} |
    {error, create_intent_errors(), tuple()}.
create_intent(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new resource policy with the specified policy
%% statements.
-spec create_resource_policy(aws_client:aws_client(), binary() | list(), create_resource_policy_request()) ->
    {ok, create_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, create_resource_policy_errors(), tuple()}.
create_resource_policy(Client, ResourceArn, Input) ->
    create_resource_policy(Client, ResourceArn, Input, []).

-spec create_resource_policy(aws_client:aws_client(), binary() | list(), create_resource_policy_request(), proplists:proplist()) ->
    {ok, create_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, create_resource_policy_errors(), tuple()}.
create_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new resource policy statement to a bot or bot alias.
%%
%% If a
%% resource policy exists, the statement is added to the current resource
%% policy. If a policy doesn't exist, a new policy is created.
%%
%% You can't create a resource policy statement that allows
%% cross-account access.
%%
%% You need to add the `CreateResourcePolicy' or
%% `UpdateResourcePolicy'
%% action to the bot role in order to call the API.
-spec create_resource_policy_statement(aws_client:aws_client(), binary() | list(), create_resource_policy_statement_request()) ->
    {ok, create_resource_policy_statement_response(), tuple()} |
    {error, any()} |
    {error, create_resource_policy_statement_errors(), tuple()}.
create_resource_policy_statement(Client, ResourceArn, Input) ->
    create_resource_policy_statement(Client, ResourceArn, Input, []).

-spec create_resource_policy_statement(aws_client:aws_client(), binary() | list(), create_resource_policy_statement_request(), proplists:proplist()) ->
    {ok, create_resource_policy_statement_response(), tuple()} |
    {error, any()} |
    {error, create_resource_policy_statement_errors(), tuple()}.
create_resource_policy_statement(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/statements"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
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
                     {<<"expectedRevisionId">>, <<"expectedRevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a slot in an intent.
%%
%% A slot is a variable needed to fulfill
%% an intent. For example, an `OrderPizza' intent might need
%% slots for size, crust, and number of pizzas. For each slot, you define
%% one or more utterances that Amazon Lex uses to elicit a response from the
%% user.
-spec create_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_slot_request()) ->
    {ok, create_slot_response(), tuple()} |
    {error, any()} |
    {error, create_slot_errors(), tuple()}.
create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).

-spec create_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_slot_request(), proplists:proplist()) ->
    {ok, create_slot_response(), tuple()} |
    {error, any()} |
    {error, create_slot_errors(), tuple()}.
create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom slot type
%%
%% To create a custom slot type, specify a name for the slot type and
%% a set of enumeration values, the values that a slot of this type can
%% assume.
-spec create_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_slot_type_request()) ->
    {ok, create_slot_type_response(), tuple()} |
    {error, any()} |
    {error, create_slot_type_errors(), tuple()}.
create_slot_type(Client, BotId, BotVersion, LocaleId, Input) ->
    create_slot_type(Client, BotId, BotVersion, LocaleId, Input, []).

-spec create_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_slot_type_request(), proplists:proplist()) ->
    {ok, create_slot_type_response(), tuple()} |
    {error, any()} |
    {error, create_slot_type_errors(), tuple()}.
create_slot_type(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a report that describes the differences between the bot and
%% the test set.
-spec create_test_set_discrepancy_report(aws_client:aws_client(), binary() | list(), create_test_set_discrepancy_report_request()) ->
    {ok, create_test_set_discrepancy_report_response(), tuple()} |
    {error, any()} |
    {error, create_test_set_discrepancy_report_errors(), tuple()}.
create_test_set_discrepancy_report(Client, TestSetId, Input) ->
    create_test_set_discrepancy_report(Client, TestSetId, Input, []).

-spec create_test_set_discrepancy_report(aws_client:aws_client(), binary() | list(), create_test_set_discrepancy_report_request(), proplists:proplist()) ->
    {ok, create_test_set_discrepancy_report_response(), tuple()} |
    {error, any()} |
    {error, create_test_set_discrepancy_report_errors(), tuple()}.
create_test_set_discrepancy_report(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/testsetdiscrepancy"],
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

%% @doc Gets a pre-signed S3 write URL that you use to upload the zip
%% archive when importing a bot or a bot locale.
-spec create_upload_url(aws_client:aws_client(), create_upload_url_request()) ->
    {ok, create_upload_url_response(), tuple()} |
    {error, any()} |
    {error, create_upload_url_errors(), tuple()}.
create_upload_url(Client, Input) ->
    create_upload_url(Client, Input, []).

-spec create_upload_url(aws_client:aws_client(), create_upload_url_request(), proplists:proplist()) ->
    {ok, create_upload_url_response(), tuple()} |
    {error, any()} |
    {error, create_upload_url_errors(), tuple()}.
create_upload_url(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createuploadurl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of a bot, including the `Draft'
%% version.
%%
%% To delete a specific version, use the
%% `DeleteBotVersion' operation.
%%
%% When you delete a bot, all of the resources contained in the bot are
%% also deleted. Deleting a bot removes all locales, intents, slot, and
%% slot types defined for the bot.
%%
%% If a bot has an alias, the `DeleteBot' operation returns
%% a `ResourceInUseException' exception. If you want to delete
%% the bot and the alias, set the `skipResourceInUseCheck'
%% parameter to `true'.
-spec delete_bot(aws_client:aws_client(), binary() | list(), delete_bot_request()) ->
    {ok, delete_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, BotId, Input) ->
    delete_bot(Client, BotId, Input, []).

-spec delete_bot(aws_client:aws_client(), binary() | list(), delete_bot_request(), proplists:proplist()) ->
    {ok, delete_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Deletes the specified bot alias.
-spec delete_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_alias_request()) ->
    {ok, delete_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_alias_errors(), tuple()}.
delete_bot_alias(Client, BotAliasId, BotId, Input) ->
    delete_bot_alias(Client, BotAliasId, BotId, Input, []).

-spec delete_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_alias_request(), proplists:proplist()) ->
    {ok, delete_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_alias_errors(), tuple()}.
delete_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), ""],
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

%% @doc Removes a locale from a bot.
%%
%% When you delete a locale, all intents, slots, and slot types defined
%% for the locale are also deleted.
-spec delete_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_bot_locale_request()) ->
    {ok, delete_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_locale_errors(), tuple()}.
delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).

-spec delete_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_bot_locale_request(), proplists:proplist()) ->
    {ok, delete_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_locale_errors(), tuple()}.
delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), ""],
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

%% @doc The action to delete the replicated bot in the secondary region.
-spec delete_bot_replica(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_replica_request()) ->
    {ok, delete_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_replica_errors(), tuple()}.
delete_bot_replica(Client, BotId, ReplicaRegion, Input) ->
    delete_bot_replica(Client, BotId, ReplicaRegion, Input, []).

-spec delete_bot_replica(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_replica_request(), proplists:proplist()) ->
    {ok, delete_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_replica_errors(), tuple()}.
delete_bot_replica(Client, BotId, ReplicaRegion, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas/", aws_util:encode_uri(ReplicaRegion), ""],
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

%% @doc Deletes a specific version of a bot.
%%
%% To delete all versions of a bot,
%% use the DeleteBot:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DeleteBot.html
%% operation.
-spec delete_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_version_request()) ->
    {ok, delete_bot_version_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_version_errors(), tuple()}.
delete_bot_version(Client, BotId, BotVersion, Input) ->
    delete_bot_version(Client, BotId, BotVersion, Input, []).

-spec delete_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_version_request(), proplists:proplist()) ->
    {ok, delete_bot_version_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_version_errors(), tuple()}.
delete_bot_version(Client, BotId, BotVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), ""],
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

%% @doc Removes a custom vocabulary from the specified locale
%% in the specified bot.
-spec delete_custom_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_custom_vocabulary_request()) ->
    {ok, delete_custom_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_vocabulary_errors(), tuple()}.
delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input) ->
    delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input, []).

-spec delete_custom_vocabulary(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_custom_vocabulary_request(), proplists:proplist()) ->
    {ok, delete_custom_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_vocabulary_errors(), tuple()}.
delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary"],
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

%% @doc Removes a previous export and the associated files stored in an S3
%% bucket.
-spec delete_export(aws_client:aws_client(), binary() | list(), delete_export_request()) ->
    {ok, delete_export_response(), tuple()} |
    {error, any()} |
    {error, delete_export_errors(), tuple()}.
delete_export(Client, ExportId, Input) ->
    delete_export(Client, ExportId, Input, []).

-spec delete_export(aws_client:aws_client(), binary() | list(), delete_export_request(), proplists:proplist()) ->
    {ok, delete_export_response(), tuple()} |
    {error, any()} |
    {error, delete_export_errors(), tuple()}.
delete_export(Client, ExportId, Input0, Options0) ->
    Method = delete,
    Path = ["/exports/", aws_util:encode_uri(ExportId), ""],
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

%% @doc Removes a previous import and the associated file stored in an S3
%% bucket.
-spec delete_import(aws_client:aws_client(), binary() | list(), delete_import_request()) ->
    {ok, delete_import_response(), tuple()} |
    {error, any()} |
    {error, delete_import_errors(), tuple()}.
delete_import(Client, ImportId, Input) ->
    delete_import(Client, ImportId, Input, []).

-spec delete_import(aws_client:aws_client(), binary() | list(), delete_import_request(), proplists:proplist()) ->
    {ok, delete_import_response(), tuple()} |
    {error, any()} |
    {error, delete_import_errors(), tuple()}.
delete_import(Client, ImportId, Input0, Options0) ->
    Method = delete,
    Path = ["/imports/", aws_util:encode_uri(ImportId), ""],
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

%% @doc Removes the specified intent.
%%
%% Deleting an intent also deletes the slots associated with the
%% intent.
-spec delete_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_intent_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_errors(), tuple()}.
delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).

-spec delete_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_intent_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_errors(), tuple()}.
delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), ""],
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

%% @doc Removes an existing policy from a bot or bot alias.
%%
%% If the resource
%% doesn't have a policy attached, Amazon Lex returns an exception.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"expectedRevisionId">>, <<"expectedRevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a policy statement from a resource policy.
%%
%% If you delete the
%% last statement from a policy, the policy is deleted. If you specify a
%% statement ID that doesn't exist in the policy, or if the bot or bot
%% alias doesn't have a policy attached, Amazon Lex returns an
%% exception.
%%
%% You need to add the `DeleteResourcePolicy' or
%% `UpdateResourcePolicy'
%% action to the bot role in order to call the API.
-spec delete_resource_policy_statement(aws_client:aws_client(), binary() | list(), binary() | list(), delete_resource_policy_statement_request()) ->
    {ok, delete_resource_policy_statement_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_statement_errors(), tuple()}.
delete_resource_policy_statement(Client, ResourceArn, StatementId, Input) ->
    delete_resource_policy_statement(Client, ResourceArn, StatementId, Input, []).

-spec delete_resource_policy_statement(aws_client:aws_client(), binary() | list(), binary() | list(), delete_resource_policy_statement_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_statement_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_statement_errors(), tuple()}.
delete_resource_policy_statement(Client, ResourceArn, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/statements/", aws_util:encode_uri(StatementId), ""],
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
                     {<<"expectedRevisionId">>, <<"expectedRevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified slot from an intent.
-spec delete_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_slot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_errors(), tuple()}.
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).

-spec delete_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_slot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_errors(), tuple()}.
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), ""],
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

%% @doc Deletes a slot type from a bot locale.
%%
%% If a slot is using the slot type, Amazon Lex throws a
%% `ResourceInUseException' exception. To avoid the
%% exception, set the `skipResourceInUseCheck' parameter to
%% `true'.
-spec delete_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_slot_type_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_errors(), tuple()}.
delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input) ->
    delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input, []).

-spec delete_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_slot_type_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_errors(), tuple()}.
delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), ""],
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

%% @doc The action to delete the selected test set.
-spec delete_test_set(aws_client:aws_client(), binary() | list(), delete_test_set_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_test_set_errors(), tuple()}.
delete_test_set(Client, TestSetId, Input) ->
    delete_test_set(Client, TestSetId, Input, []).

-spec delete_test_set(aws_client:aws_client(), binary() | list(), delete_test_set_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_test_set_errors(), tuple()}.
delete_test_set(Client, TestSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
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

%% @doc Deletes stored utterances.
%%
%% Amazon Lex stores the utterances that users send to your bot. Utterances
%% are stored for 15 days for use with the ListAggregatedUtterances:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html
%% operation, and
%% then stored indefinitely for use in improving the ability of your bot
%% to respond to user input..
%%
%% Use the `DeleteUtterances' operation to manually delete
%% utterances for a specific session. When you use the
%% `DeleteUtterances' operation, utterances stored for
%% improving your bot's ability to respond to user input are deleted
%% immediately. Utterances stored for use with the
%% `ListAggregatedUtterances' operation are deleted after 15
%% days.
-spec delete_utterances(aws_client:aws_client(), binary() | list(), delete_utterances_request()) ->
    {ok, delete_utterances_response(), tuple()} |
    {error, any()} |
    {error, delete_utterances_errors(), tuple()}.
delete_utterances(Client, BotId, Input) ->
    delete_utterances(Client, BotId, Input, []).

-spec delete_utterances(aws_client:aws_client(), binary() | list(), delete_utterances_request(), proplists:proplist()) ->
    {ok, delete_utterances_response(), tuple()} |
    {error, any()} |
    {error, delete_utterances_errors(), tuple()}.
delete_utterances(Client, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/utterances"],
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
                     {<<"localeId">>, <<"localeId">>},
                     {<<"sessionId">>, <<"sessionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides metadata information about a bot.
-spec describe_bot(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_errors(), tuple()}.
describe_bot(Client, BotId)
  when is_map(Client) ->
    describe_bot(Client, BotId, #{}, #{}).

-spec describe_bot(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_errors(), tuple()}.
describe_bot(Client, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot(Client, BotId, QueryMap, HeadersMap, []).

-spec describe_bot(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_errors(), tuple()}.
describe_bot(Client, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a specific bot alias.
-spec describe_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_alias_errors(), tuple()}.
describe_bot_alias(Client, BotAliasId, BotId)
  when is_map(Client) ->
    describe_bot_alias(Client, BotAliasId, BotId, #{}, #{}).

-spec describe_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_alias_errors(), tuple()}.
describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap, []).

-spec describe_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_alias_errors(), tuple()}.
describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the settings that a bot has for a specific locale.
-spec describe_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_locale_errors(), tuple()}.
describe_bot_locale(Client, BotId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_bot_locale(Client, BotId, BotVersion, LocaleId, #{}, #{}).

-spec describe_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_locale_errors(), tuple()}.
describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

-spec describe_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_locale_errors(), tuple()}.
describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata information about a bot recommendation.
%%
%% This
%% information will enable you to get a description on the request inputs,
%% to download associated transcripts after processing is complete, and to
%% download intents and slot-types generated by the bot
%% recommendation.
-spec describe_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_recommendation_errors(), tuple()}.
describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, #{}, #{}).

-spec describe_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_recommendation_errors(), tuple()}.
describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

-spec describe_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_recommendation_errors(), tuple()}.
describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Monitors the bot replication status through the UI console.
-spec describe_bot_replica(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_replica_errors(), tuple()}.
describe_bot_replica(Client, BotId, ReplicaRegion)
  when is_map(Client) ->
    describe_bot_replica(Client, BotId, ReplicaRegion, #{}, #{}).

-spec describe_bot_replica(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_replica_errors(), tuple()}.
describe_bot_replica(Client, BotId, ReplicaRegion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_replica(Client, BotId, ReplicaRegion, QueryMap, HeadersMap, []).

-spec describe_bot_replica(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_replica_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_replica_errors(), tuple()}.
describe_bot_replica(Client, BotId, ReplicaRegion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas/", aws_util:encode_uri(ReplicaRegion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a request to generate a bot through natural
%% language description, made through
%% the `StartBotResource' API.
%%
%% Use the `generatedBotLocaleUrl'
%% to retrieve the Amazon S3 object containing the bot locale configuration.
%% You can
%% then modify and import this configuration.
-spec describe_bot_resource_generation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_resource_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_resource_generation_errors(), tuple()}.
describe_bot_resource_generation(Client, BotId, BotVersion, GenerationId, LocaleId)
  when is_map(Client) ->
    describe_bot_resource_generation(Client, BotId, BotVersion, GenerationId, LocaleId, #{}, #{}).

-spec describe_bot_resource_generation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_resource_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_resource_generation_errors(), tuple()}.
describe_bot_resource_generation(Client, BotId, BotVersion, GenerationId, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_resource_generation(Client, BotId, BotVersion, GenerationId, LocaleId, QueryMap, HeadersMap, []).

-spec describe_bot_resource_generation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_resource_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_resource_generation_errors(), tuple()}.
describe_bot_resource_generation(Client, BotId, BotVersion, GenerationId, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/generations/", aws_util:encode_uri(GenerationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata about a version of a bot.
-spec describe_bot_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_bot_version_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_version_errors(), tuple()}.
describe_bot_version(Client, BotId, BotVersion)
  when is_map(Client) ->
    describe_bot_version(Client, BotId, BotVersion, #{}, #{}).

-spec describe_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_bot_version_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_version_errors(), tuple()}.
describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap, []).

-spec describe_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bot_version_response(), tuple()} |
    {error, any()} |
    {error, describe_bot_version_errors(), tuple()}.
describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata information about a custom vocabulary.
-spec describe_custom_vocabulary_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_custom_vocabulary_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_vocabulary_metadata_errors(), tuple()}.
describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, #{}, #{}).

-spec describe_custom_vocabulary_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_custom_vocabulary_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_vocabulary_metadata_errors(), tuple()}.
describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

-spec describe_custom_vocabulary_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_custom_vocabulary_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_vocabulary_metadata_errors(), tuple()}.
describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific export.
-spec describe_export(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_export_response(), tuple()} |
    {error, any()} |
    {error, describe_export_errors(), tuple()}.
describe_export(Client, ExportId)
  when is_map(Client) ->
    describe_export(Client, ExportId, #{}, #{}).

-spec describe_export(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_export_response(), tuple()} |
    {error, any()} |
    {error, describe_export_errors(), tuple()}.
describe_export(Client, ExportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_export(Client, ExportId, QueryMap, HeadersMap, []).

-spec describe_export(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_export_response(), tuple()} |
    {error, any()} |
    {error, describe_export_errors(), tuple()}.
describe_export(Client, ExportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exports/", aws_util:encode_uri(ExportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific import.
-spec describe_import(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_import_response(), tuple()} |
    {error, any()} |
    {error, describe_import_errors(), tuple()}.
describe_import(Client, ImportId)
  when is_map(Client) ->
    describe_import(Client, ImportId, #{}, #{}).

-spec describe_import(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_import_response(), tuple()} |
    {error, any()} |
    {error, describe_import_errors(), tuple()}.
describe_import(Client, ImportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_import(Client, ImportId, QueryMap, HeadersMap, []).

-spec describe_import(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_import_response(), tuple()} |
    {error, any()} |
    {error, describe_import_errors(), tuple()}.
describe_import(Client, ImportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/imports/", aws_util:encode_uri(ImportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about an intent.
-spec describe_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_intent_response(), tuple()} |
    {error, any()} |
    {error, describe_intent_errors(), tuple()}.
describe_intent(Client, BotId, BotVersion, IntentId, LocaleId)
  when is_map(Client) ->
    describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, #{}, #{}).

-spec describe_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_intent_response(), tuple()} |
    {error, any()} |
    {error, describe_intent_errors(), tuple()}.
describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap, []).

-spec describe_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_intent_response(), tuple()} |
    {error, any()} |
    {error, describe_intent_errors(), tuple()}.
describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource policy and policy revision for a bot or bot
%% alias.
-spec describe_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    describe_resource_policy(Client, ResourceArn, #{}, #{}).

-spec describe_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec describe_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about a slot.
-spec describe_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_slot_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_errors(), tuple()}.
describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId)
  when is_map(Client) ->
    describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, #{}, #{}).

-spec describe_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_slot_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_errors(), tuple()}.
describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap, []).

-spec describe_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_slot_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_errors(), tuple()}.
describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about a slot type.
-spec describe_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_slot_type_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_type_errors(), tuple()}.
describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId)
  when is_map(Client) ->
    describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, #{}, #{}).

-spec describe_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_slot_type_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_type_errors(), tuple()}.
describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap, []).

-spec describe_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_slot_type_response(), tuple()} |
    {error, any()} |
    {error, describe_slot_type_errors(), tuple()}.
describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test execution.
-spec describe_test_execution(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_test_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_test_execution_errors(), tuple()}.
describe_test_execution(Client, TestExecutionId)
  when is_map(Client) ->
    describe_test_execution(Client, TestExecutionId, #{}, #{}).

-spec describe_test_execution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_test_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_test_execution_errors(), tuple()}.
describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap, []).

-spec describe_test_execution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_test_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_test_execution_errors(), tuple()}.
describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set.
-spec describe_test_set(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_test_set_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_errors(), tuple()}.
describe_test_set(Client, TestSetId)
  when is_map(Client) ->
    describe_test_set(Client, TestSetId, #{}, #{}).

-spec describe_test_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_test_set_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_errors(), tuple()}.
describe_test_set(Client, TestSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set(Client, TestSetId, QueryMap, HeadersMap, []).

-spec describe_test_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_test_set_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_errors(), tuple()}.
describe_test_set(Client, TestSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set discrepancy report.
-spec describe_test_set_discrepancy_report(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_test_set_discrepancy_report_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_discrepancy_report_errors(), tuple()}.
describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId)
  when is_map(Client) ->
    describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, #{}, #{}).

-spec describe_test_set_discrepancy_report(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_test_set_discrepancy_report_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_discrepancy_report_errors(), tuple()}.
describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap, []).

-spec describe_test_set_discrepancy_report(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_test_set_discrepancy_report_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_discrepancy_report_errors(), tuple()}.
describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsetdiscrepancy/", aws_util:encode_uri(TestSetDiscrepancyReportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set generation.
-spec describe_test_set_generation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_test_set_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_generation_errors(), tuple()}.
describe_test_set_generation(Client, TestSetGenerationId)
  when is_map(Client) ->
    describe_test_set_generation(Client, TestSetGenerationId, #{}, #{}).

-spec describe_test_set_generation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_test_set_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_generation_errors(), tuple()}.
describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap, []).

-spec describe_test_set_generation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_test_set_generation_response(), tuple()} |
    {error, any()} |
    {error, describe_test_set_generation_errors(), tuple()}.
describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsetgenerations/", aws_util:encode_uri(TestSetGenerationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates sample utterances for an intent.
-spec generate_bot_element(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), generate_bot_element_request()) ->
    {ok, generate_bot_element_response(), tuple()} |
    {error, any()} |
    {error, generate_bot_element_errors(), tuple()}.
generate_bot_element(Client, BotId, BotVersion, LocaleId, Input) ->
    generate_bot_element(Client, BotId, BotVersion, LocaleId, Input, []).

-spec generate_bot_element(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), generate_bot_element_request(), proplists:proplist()) ->
    {ok, generate_bot_element_response(), tuple()} |
    {error, any()} |
    {error, generate_bot_element_errors(), tuple()}.
generate_bot_element(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/generate"],
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

%% @doc The pre-signed Amazon S3 URL to download the test execution result
%% artifacts.
-spec get_test_execution_artifacts_url(aws_client:aws_client(), binary() | list()) ->
    {ok, get_test_execution_artifacts_url_response(), tuple()} |
    {error, any()} |
    {error, get_test_execution_artifacts_url_errors(), tuple()}.
get_test_execution_artifacts_url(Client, TestExecutionId)
  when is_map(Client) ->
    get_test_execution_artifacts_url(Client, TestExecutionId, #{}, #{}).

-spec get_test_execution_artifacts_url(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_test_execution_artifacts_url_response(), tuple()} |
    {error, any()} |
    {error, get_test_execution_artifacts_url_errors(), tuple()}.
get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap, []).

-spec get_test_execution_artifacts_url(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_execution_artifacts_url_response(), tuple()} |
    {error, any()} |
    {error, get_test_execution_artifacts_url_errors(), tuple()}.
get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), "/artifacturl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of utterances that users have sent to the
%% bot.
%%
%% Utterances are aggregated by the text of the utterance. For example,
%% all instances where customers used the phrase &quot;I want to order
%% pizza&quot;
%% are aggregated into the same line in the response.
%%
%% You can see both detected utterances and missed utterances. A
%% detected utterance is where the bot properly recognized the utterance
%% and activated the associated intent. A missed utterance was not
%% recognized by the bot and didn't activate an intent.
%%
%% Utterances can be aggregated for a bot alias or for a bot version,
%% but not both at the same time.
%%
%% Utterances statistics are not generated under the following
%% conditions:
%%
%% The `childDirected' field was set to true when the
%% bot was created.
%%
%% You are using slot obfuscation with one or more slots.
%%
%% You opted out of participating in improving Amazon Lex.
-spec list_aggregated_utterances(aws_client:aws_client(), binary() | list(), list_aggregated_utterances_request()) ->
    {ok, list_aggregated_utterances_response(), tuple()} |
    {error, any()} |
    {error, list_aggregated_utterances_errors(), tuple()}.
list_aggregated_utterances(Client, BotId, Input) ->
    list_aggregated_utterances(Client, BotId, Input, []).

-spec list_aggregated_utterances(aws_client:aws_client(), binary() | list(), list_aggregated_utterances_request(), proplists:proplist()) ->
    {ok, list_aggregated_utterances_response(), tuple()} |
    {error, any()} |
    {error, list_aggregated_utterances_errors(), tuple()}.
list_aggregated_utterances(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/aggregatedutterances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The action to list the replicated bots created from the source bot
%% alias.
-spec list_bot_alias_replicas(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_alias_replicas_request()) ->
    {ok, list_bot_alias_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_alias_replicas_errors(), tuple()}.
list_bot_alias_replicas(Client, BotId, ReplicaRegion, Input) ->
    list_bot_alias_replicas(Client, BotId, ReplicaRegion, Input, []).

-spec list_bot_alias_replicas(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_alias_replicas_request(), proplists:proplist()) ->
    {ok, list_bot_alias_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_alias_replicas_errors(), tuple()}.
list_bot_alias_replicas(Client, BotId, ReplicaRegion, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas/", aws_util:encode_uri(ReplicaRegion), "/botaliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of aliases for the specified bot.
-spec list_bot_aliases(aws_client:aws_client(), binary() | list(), list_bot_aliases_request()) ->
    {ok, list_bot_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_bot_aliases_errors(), tuple()}.
list_bot_aliases(Client, BotId, Input) ->
    list_bot_aliases(Client, BotId, Input, []).

-spec list_bot_aliases(aws_client:aws_client(), binary() | list(), list_bot_aliases_request(), proplists:proplist()) ->
    {ok, list_bot_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_bot_aliases_errors(), tuple()}.
list_bot_aliases(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of locales for the specified bot.
-spec list_bot_locales(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_locales_request()) ->
    {ok, list_bot_locales_response(), tuple()} |
    {error, any()} |
    {error, list_bot_locales_errors(), tuple()}.
list_bot_locales(Client, BotId, BotVersion, Input) ->
    list_bot_locales(Client, BotId, BotVersion, Input, []).

-spec list_bot_locales(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_locales_request(), proplists:proplist()) ->
    {ok, list_bot_locales_response(), tuple()} |
    {error, any()} |
    {error, list_bot_locales_errors(), tuple()}.
list_bot_locales(Client, BotId, BotVersion, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a list of bot recommendations that meet the specified
%% criteria.
-spec list_bot_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_bot_recommendations_request()) ->
    {ok, list_bot_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_bot_recommendations_errors(), tuple()}.
list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input) ->
    list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input, []).

-spec list_bot_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_bot_recommendations_request(), proplists:proplist()) ->
    {ok, list_bot_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_bot_recommendations_errors(), tuple()}.
list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The action to list the replicated bots.
-spec list_bot_replicas(aws_client:aws_client(), binary() | list(), list_bot_replicas_request()) ->
    {ok, list_bot_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_replicas_errors(), tuple()}.
list_bot_replicas(Client, BotId, Input) ->
    list_bot_replicas(Client, BotId, Input, []).

-spec list_bot_replicas(aws_client:aws_client(), binary() | list(), list_bot_replicas_request(), proplists:proplist()) ->
    {ok, list_bot_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_replicas_errors(), tuple()}.
list_bot_replicas(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the generation requests made for a bot locale.
-spec list_bot_resource_generations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_bot_resource_generations_request()) ->
    {ok, list_bot_resource_generations_response(), tuple()} |
    {error, any()} |
    {error, list_bot_resource_generations_errors(), tuple()}.
list_bot_resource_generations(Client, BotId, BotVersion, LocaleId, Input) ->
    list_bot_resource_generations(Client, BotId, BotVersion, LocaleId, Input, []).

-spec list_bot_resource_generations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_bot_resource_generations_request(), proplists:proplist()) ->
    {ok, list_bot_resource_generations_response(), tuple()} |
    {error, any()} |
    {error, list_bot_resource_generations_errors(), tuple()}.
list_bot_resource_generations(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/generations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Contains information about all the versions replication statuses
%% applicable for Global Resiliency.
-spec list_bot_version_replicas(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_version_replicas_request()) ->
    {ok, list_bot_version_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_version_replicas_errors(), tuple()}.
list_bot_version_replicas(Client, BotId, ReplicaRegion, Input) ->
    list_bot_version_replicas(Client, BotId, ReplicaRegion, Input, []).

-spec list_bot_version_replicas(aws_client:aws_client(), binary() | list(), binary() | list(), list_bot_version_replicas_request(), proplists:proplist()) ->
    {ok, list_bot_version_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_bot_version_replicas_errors(), tuple()}.
list_bot_version_replicas(Client, BotId, ReplicaRegion, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/replicas/", aws_util:encode_uri(ReplicaRegion), "/botversions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of a bot.
%%
%% The `ListBotVersions' operation returns a summary of each
%% version of a bot. For example, if a bot has three numbered versions,
%% the `ListBotVersions' operation returns for summaries, one
%% for each numbered version and one for the `DRAFT'
%% version.
%%
%% The `ListBotVersions' operation always returns at least
%% one version, the `DRAFT' version.
-spec list_bot_versions(aws_client:aws_client(), binary() | list(), list_bot_versions_request()) ->
    {ok, list_bot_versions_response(), tuple()} |
    {error, any()} |
    {error, list_bot_versions_errors(), tuple()}.
list_bot_versions(Client, BotId, Input) ->
    list_bot_versions(Client, BotId, Input, []).

-spec list_bot_versions(aws_client:aws_client(), binary() | list(), list_bot_versions_request(), proplists:proplist()) ->
    {ok, list_bot_versions_response(), tuple()} |
    {error, any()} |
    {error, list_bot_versions_errors(), tuple()}.
list_bot_versions(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of available bots.
-spec list_bots(aws_client:aws_client(), list_bots_request()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, Input) ->
    list_bots(Client, Input, []).

-spec list_bots(aws_client:aws_client(), list_bots_request(), proplists:proplist()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in intents provided by Amazon Lex that you can
%% use
%% in your bot.
%%
%% To use a built-in intent as a the base for your own intent, include
%% the built-in intent signature in the `parentIntentSignature'
%% parameter when you call the `CreateIntent' operation. For
%% more information, see CreateIntent:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateIntent.html.
-spec list_built_in_intents(aws_client:aws_client(), binary() | list(), list_built_in_intents_request()) ->
    {ok, list_built_in_intents_response(), tuple()} |
    {error, any()} |
    {error, list_built_in_intents_errors(), tuple()}.
list_built_in_intents(Client, LocaleId, Input) ->
    list_built_in_intents(Client, LocaleId, Input, []).

-spec list_built_in_intents(aws_client:aws_client(), binary() | list(), list_built_in_intents_request(), proplists:proplist()) ->
    {ok, list_built_in_intents_response(), tuple()} |
    {error, any()} |
    {error, list_built_in_intents_errors(), tuple()}.
list_built_in_intents(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/intents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in slot types that meet the specified
%% criteria.
-spec list_built_in_slot_types(aws_client:aws_client(), binary() | list(), list_built_in_slot_types_request()) ->
    {ok, list_built_in_slot_types_response(), tuple()} |
    {error, any()} |
    {error, list_built_in_slot_types_errors(), tuple()}.
list_built_in_slot_types(Client, LocaleId, Input) ->
    list_built_in_slot_types(Client, LocaleId, Input, []).

-spec list_built_in_slot_types(aws_client:aws_client(), binary() | list(), list_built_in_slot_types_request(), proplists:proplist()) ->
    {ok, list_built_in_slot_types_response(), tuple()} |
    {error, any()} |
    {error, list_built_in_slot_types_errors(), tuple()}.
list_built_in_slot_types(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/slottypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Paginated list of custom vocabulary items for a given bot
%% locale's
%% custom vocabulary.
-spec list_custom_vocabulary_items(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_custom_vocabulary_items_request()) ->
    {ok, list_custom_vocabulary_items_response(), tuple()} |
    {error, any()} |
    {error, list_custom_vocabulary_items_errors(), tuple()}.
list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input) ->
    list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input, []).

-spec list_custom_vocabulary_items(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_custom_vocabulary_items_request(), proplists:proplist()) ->
    {ok, list_custom_vocabulary_items_response(), tuple()} |
    {error, any()} |
    {error, list_custom_vocabulary_items_errors(), tuple()}.
list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the exports for a bot, bot locale, or custom vocabulary.
%%
%% Exports are kept in the list for 7 days.
-spec list_exports(aws_client:aws_client(), list_exports_request()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_request(), proplists:proplist()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/exports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the imports for a bot, bot locale, or custom vocabulary.
%%
%% Imports are kept in the list for 7 days.
-spec list_imports(aws_client:aws_client(), list_imports_request()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input) ->
    list_imports(Client, Input, []).

-spec list_imports(aws_client:aws_client(), list_imports_request(), proplists:proplist()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/imports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves summary metrics for the intents in your bot.
%%
%% The following fields are required:
%%
%% `metrics' – A list of AnalyticsIntentMetric:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentMetric.html
%% objects. In each object, use the `name' field to specify the metric to
%% calculate, the `statistic' field to specify whether to calculate the
%% `Sum', `Average', or `Max' number, and the `order' field
%% to specify whether to sort the results in `Ascending' or
%% `Descending' order.
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% Of the optional fields, you can organize the results in the following
%% ways:
%%
%% Use the `filters' field to filter the results, the `groupBy' field
%% to specify categories by which to group the results, and the `binBy'
%% field to specify time intervals by which to group the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
%%
%% Note that an `order' field exists in both `binBy' and
%% `metrics'. You can specify only one `order' in a given request.
-spec list_intent_metrics(aws_client:aws_client(), binary() | list(), list_intent_metrics_request()) ->
    {ok, list_intent_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_intent_metrics_errors(), tuple()}.
list_intent_metrics(Client, BotId, Input) ->
    list_intent_metrics(Client, BotId, Input, []).

-spec list_intent_metrics(aws_client:aws_client(), binary() | list(), list_intent_metrics_request(), proplists:proplist()) ->
    {ok, list_intent_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_intent_metrics_errors(), tuple()}.
list_intent_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentmetrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves summary statistics for a path of intents that users take
%% over sessions with your bot.
%%
%% The following fields are required:
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% `intentPath' – Define an order of intents for which you want to
%% retrieve metrics. Separate intents in the path with a forward slash. For
%% example, populate the `intentPath' field with `/BookCar/BookHotel'
%% to see details about how many times users invoked the `BookCar' and
%% `BookHotel' intents in that order.
%%
%% Use the optional `filters' field to filter the results.
-spec list_intent_paths(aws_client:aws_client(), binary() | list(), list_intent_paths_request()) ->
    {ok, list_intent_paths_response(), tuple()} |
    {error, any()} |
    {error, list_intent_paths_errors(), tuple()}.
list_intent_paths(Client, BotId, Input) ->
    list_intent_paths(Client, BotId, Input, []).

-spec list_intent_paths(aws_client:aws_client(), binary() | list(), list_intent_paths_request(), proplists:proplist()) ->
    {ok, list_intent_paths_response(), tuple()} |
    {error, any()} |
    {error, list_intent_paths_errors(), tuple()}.
list_intent_paths(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentpaths"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves summary metrics for the stages within intents in your bot.
%%
%% The following fields are required:
%%
%% `metrics' – A list of AnalyticsIntentStageMetric:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentStageMetric.html
%% objects. In each object, use the `name' field to specify the metric to
%% calculate, the `statistic' field to specify whether to calculate the
%% `Sum', `Average', or `Max' number, and the `order' field
%% to specify whether to sort the results in `Ascending' or
%% `Descending' order.
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% Of the optional fields, you can organize the results in the following
%% ways:
%%
%% Use the `filters' field to filter the results, the `groupBy' field
%% to specify categories by which to group the results, and the `binBy'
%% field to specify time intervals by which to group the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
%%
%% Note that an `order' field exists in both `binBy' and
%% `metrics'. You can only specify one `order' in a given request.
-spec list_intent_stage_metrics(aws_client:aws_client(), binary() | list(), list_intent_stage_metrics_request()) ->
    {ok, list_intent_stage_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_intent_stage_metrics_errors(), tuple()}.
list_intent_stage_metrics(Client, BotId, Input) ->
    list_intent_stage_metrics(Client, BotId, Input, []).

-spec list_intent_stage_metrics(aws_client:aws_client(), binary() | list(), list_intent_stage_metrics_request(), proplists:proplist()) ->
    {ok, list_intent_stage_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_intent_stage_metrics_errors(), tuple()}.
list_intent_stage_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentstagemetrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a list of intents that meet the specified criteria.
-spec list_intents(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_intents_request()) ->
    {ok, list_intents_response(), tuple()} |
    {error, any()} |
    {error, list_intents_errors(), tuple()}.
list_intents(Client, BotId, BotVersion, LocaleId, Input) ->
    list_intents(Client, BotId, BotVersion, LocaleId, Input, []).

-spec list_intents(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_intents_request(), proplists:proplist()) ->
    {ok, list_intents_response(), tuple()} |
    {error, any()} |
    {error, list_intents_errors(), tuple()}.
list_intents(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of recommended intents provided by the bot
%% recommendation that you can use in your bot.
%%
%% Intents in the
%% response are ordered by relevance.
-spec list_recommended_intents(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), list_recommended_intents_request()) ->
    {ok, list_recommended_intents_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_intents_errors(), tuple()}.
list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).

-spec list_recommended_intents(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), list_recommended_intents_request(), proplists:proplist()) ->
    {ok, list_recommended_intents_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_intents_errors(), tuple()}.
list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/intents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of metadata for individual user sessions with your
%% bot.
%%
%% The `startDateTime' and `endDateTime' fields are required. These
%% fields define a time range for which you want to retrieve results. Of the
%% optional fields, you can organize the results in the following ways:
%%
%% Use the `filters' field to filter the results and the `sortBy'
%% field to specify the values by which to sort the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
-spec list_session_analytics_data(aws_client:aws_client(), binary() | list(), list_session_analytics_data_request()) ->
    {ok, list_session_analytics_data_response(), tuple()} |
    {error, any()} |
    {error, list_session_analytics_data_errors(), tuple()}.
list_session_analytics_data(Client, BotId, Input) ->
    list_session_analytics_data(Client, BotId, Input, []).

-spec list_session_analytics_data(aws_client:aws_client(), binary() | list(), list_session_analytics_data_request(), proplists:proplist()) ->
    {ok, list_session_analytics_data_response(), tuple()} |
    {error, any()} |
    {error, list_session_analytics_data_errors(), tuple()}.
list_session_analytics_data(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/sessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves summary metrics for the user sessions with your bot.
%%
%% The following fields are required:
%%
%% `metrics' – A list of AnalyticsSessionMetric:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsSessionMetric.html
%% objects. In each object, use the `name' field to specify the metric to
%% calculate, the `statistic' field to specify whether to calculate the
%% `Sum', `Average', or `Max' number, and the `order' field
%% to specify whether to sort the results in `Ascending' or
%% `Descending' order.
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% Of the optional fields, you can organize the results in the following
%% ways:
%%
%% Use the `filters' field to filter the results, the `groupBy' field
%% to specify categories by which to group the results, and the `binBy'
%% field to specify time intervals by which to group the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
%%
%% Note that an `order' field exists in both `binBy' and
%% `metrics'. Currently, you can specify it in either field, but not in
%% both.
-spec list_session_metrics(aws_client:aws_client(), binary() | list(), list_session_metrics_request()) ->
    {ok, list_session_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_session_metrics_errors(), tuple()}.
list_session_metrics(Client, BotId, Input) ->
    list_session_metrics(Client, BotId, Input, []).

-spec list_session_metrics(aws_client:aws_client(), binary() | list(), list_session_metrics_request(), proplists:proplist()) ->
    {ok, list_session_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_session_metrics_errors(), tuple()}.
list_session_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/sessionmetrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slot types that match the specified criteria.
-spec list_slot_types(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_slot_types_request()) ->
    {ok, list_slot_types_response(), tuple()} |
    {error, any()} |
    {error, list_slot_types_errors(), tuple()}.
list_slot_types(Client, BotId, BotVersion, LocaleId, Input) ->
    list_slot_types(Client, BotId, BotVersion, LocaleId, Input, []).

-spec list_slot_types(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_slot_types_request(), proplists:proplist()) ->
    {ok, list_slot_types_response(), tuple()} |
    {error, any()} |
    {error, list_slot_types_errors(), tuple()}.
list_slot_types(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slots that match the specified criteria.
-spec list_slots(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), list_slots_request()) ->
    {ok, list_slots_response(), tuple()} |
    {error, any()} |
    {error, list_slots_errors(), tuple()}.
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).

-spec list_slots(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), list_slots_request(), proplists:proplist()) ->
    {ok, list_slots_response(), tuple()} |
    {error, any()} |
    {error, list_slots_errors(), tuple()}.
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of tags associated with a resource.
%%
%% Only bots, bot
%% aliases, and bot channels can have tags associated with them.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of test execution result items.
-spec list_test_execution_result_items(aws_client:aws_client(), binary() | list(), list_test_execution_result_items_request()) ->
    {ok, list_test_execution_result_items_response(), tuple()} |
    {error, any()} |
    {error, list_test_execution_result_items_errors(), tuple()}.
list_test_execution_result_items(Client, TestExecutionId, Input) ->
    list_test_execution_result_items(Client, TestExecutionId, Input, []).

-spec list_test_execution_result_items(aws_client:aws_client(), binary() | list(), list_test_execution_result_items_request(), proplists:proplist()) ->
    {ok, list_test_execution_result_items_response(), tuple()} |
    {error, any()} |
    {error, list_test_execution_result_items_errors(), tuple()}.
list_test_execution_result_items(Client, TestExecutionId, Input0, Options0) ->
    Method = post,
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), "/results"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of test set executions.
-spec list_test_executions(aws_client:aws_client(), list_test_executions_request()) ->
    {ok, list_test_executions_response(), tuple()} |
    {error, any()} |
    {error, list_test_executions_errors(), tuple()}.
list_test_executions(Client, Input) ->
    list_test_executions(Client, Input, []).

-spec list_test_executions(aws_client:aws_client(), list_test_executions_request(), proplists:proplist()) ->
    {ok, list_test_executions_response(), tuple()} |
    {error, any()} |
    {error, list_test_executions_errors(), tuple()}.
list_test_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testexecutions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of test set records.
-spec list_test_set_records(aws_client:aws_client(), binary() | list(), list_test_set_records_request()) ->
    {ok, list_test_set_records_response(), tuple()} |
    {error, any()} |
    {error, list_test_set_records_errors(), tuple()}.
list_test_set_records(Client, TestSetId, Input) ->
    list_test_set_records(Client, TestSetId, Input, []).

-spec list_test_set_records(aws_client:aws_client(), binary() | list(), list_test_set_records_request(), proplists:proplist()) ->
    {ok, list_test_set_records_response(), tuple()} |
    {error, any()} |
    {error, list_test_set_records_errors(), tuple()}.
list_test_set_records(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/records"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of the test sets
-spec list_test_sets(aws_client:aws_client(), list_test_sets_request()) ->
    {ok, list_test_sets_response(), tuple()} |
    {error, any()} |
    {error, list_test_sets_errors(), tuple()}.
list_test_sets(Client, Input) ->
    list_test_sets(Client, Input, []).

-spec list_test_sets(aws_client:aws_client(), list_test_sets_request(), proplists:proplist()) ->
    {ok, list_test_sets_response(), tuple()} |
    {error, any()} |
    {error, list_test_sets_errors(), tuple()}.
list_test_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testsets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
%% To use this API operation, your IAM role must have permissions to
%% perform the ListAggregatedUtterances:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html
%% operation, which provides access to
%% utterance-related analytics.
%%
%% See Viewing utterance
%% statistics:
%% https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html for
%% the IAM policy to apply to the IAM role.
%%
%% Retrieves a list of metadata for individual user utterances to your bot.
%% The following fields are required:
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% Of the optional fields, you can organize the results in the following
%% ways:
%%
%% Use the `filters' field to filter the results and the `sortBy'
%% field to specify the values by which to sort the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
-spec list_utterance_analytics_data(aws_client:aws_client(), binary() | list(), list_utterance_analytics_data_request()) ->
    {ok, list_utterance_analytics_data_response(), tuple()} |
    {error, any()} |
    {error, list_utterance_analytics_data_errors(), tuple()}.
list_utterance_analytics_data(Client, BotId, Input) ->
    list_utterance_analytics_data(Client, BotId, Input, []).

-spec list_utterance_analytics_data(aws_client:aws_client(), binary() | list(), list_utterance_analytics_data_request(), proplists:proplist()) ->
    {ok, list_utterance_analytics_data_response(), tuple()} |
    {error, any()} |
    {error, list_utterance_analytics_data_errors(), tuple()}.
list_utterance_analytics_data(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/utterances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
%% To use this API operation, your IAM role must have permissions to
%% perform the ListAggregatedUtterances:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html
%% operation, which provides access to
%% utterance-related analytics.
%%
%% See Viewing utterance
%% statistics:
%% https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html for
%% the IAM policy to apply to the IAM role.
%%
%% Retrieves summary metrics for the utterances in your bot. The following
%% fields are required:
%%
%% `metrics' – A list of AnalyticsUtteranceMetric:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsUtteranceMetric.html
%% objects. In each object, use the `name' field to specify the metric to
%% calculate, the `statistic' field to specify whether to calculate the
%% `Sum', `Average', or `Max' number, and the `order' field
%% to specify whether to sort the results in `Ascending' or
%% `Descending' order.
%%
%% `startDateTime' and `endDateTime' – Define a time range for which
%% you want to retrieve results.
%%
%% Of the optional fields, you can organize the results in the following
%% ways:
%%
%% Use the `filters' field to filter the results, the `groupBy' field
%% to specify categories by which to group the results, and the `binBy'
%% field to specify time intervals by which to group the results.
%%
%% Use the `maxResults' field to limit the number of results to return in
%% a single response and the `nextToken' field to return the next batch
%% of results if the response does not return the full set of results.
%%
%% Note that an `order' field exists in both `binBy' and
%% `metrics'. Currently, you can specify it in either field, but not in
%% both.
-spec list_utterance_metrics(aws_client:aws_client(), binary() | list(), list_utterance_metrics_request()) ->
    {ok, list_utterance_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_utterance_metrics_errors(), tuple()}.
list_utterance_metrics(Client, BotId, Input) ->
    list_utterance_metrics(Client, BotId, Input, []).

-spec list_utterance_metrics(aws_client:aws_client(), binary() | list(), list_utterance_metrics_request(), proplists:proplist()) ->
    {ok, list_utterance_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_utterance_metrics_errors(), tuple()}.
list_utterance_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/utterancemetrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Search for associated transcripts that meet the specified
%% criteria.
-spec search_associated_transcripts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), search_associated_transcripts_request()) ->
    {ok, search_associated_transcripts_response(), tuple()} |
    {error, any()} |
    {error, search_associated_transcripts_errors(), tuple()}.
search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).

-spec search_associated_transcripts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), search_associated_transcripts_request(), proplists:proplist()) ->
    {ok, search_associated_transcripts_response(), tuple()} |
    {error, any()} |
    {error, search_associated_transcripts_errors(), tuple()}.
search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/associatedtranscripts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this to provide your transcript data, and to start the bot
%% recommendation process.
-spec start_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_bot_recommendation_request()) ->
    {ok, start_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, start_bot_recommendation_errors(), tuple()}.
start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input) ->
    start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input, []).

-spec start_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_bot_recommendation_request(), proplists:proplist()) ->
    {ok, start_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, start_bot_recommendation_errors(), tuple()}.
start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations"],
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

%% @doc Starts a request for the descriptive bot builder to generate a bot
%% locale configuration
%% based on the prompt you provide it.
%%
%% After you make this call, use the `DescribeBotResourceGeneration'
%% operation to check on the status of the generation and for the
%% `generatedBotLocaleUrl' when the
%% generation is complete. Use that value to retrieve the Amazon S3 object
%% containing the bot locale configuration. You can
%% then modify and import this configuration.
-spec start_bot_resource_generation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_bot_resource_generation_request()) ->
    {ok, start_bot_resource_generation_response(), tuple()} |
    {error, any()} |
    {error, start_bot_resource_generation_errors(), tuple()}.
start_bot_resource_generation(Client, BotId, BotVersion, LocaleId, Input) ->
    start_bot_resource_generation(Client, BotId, BotVersion, LocaleId, Input, []).

-spec start_bot_resource_generation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_bot_resource_generation_request(), proplists:proplist()) ->
    {ok, start_bot_resource_generation_response(), tuple()} |
    {error, any()} |
    {error, start_bot_resource_generation_errors(), tuple()}.
start_bot_resource_generation(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/startgeneration"],
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

%% @doc Starts importing a bot, bot locale, or custom vocabulary from a zip
%% archive that you uploaded to an S3 bucket.
-spec start_import(aws_client:aws_client(), start_import_request()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input) ->
    start_import(Client, Input, []).

-spec start_import(aws_client:aws_client(), start_import_request(), proplists:proplist()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input0, Options0) ->
    Method = put,
    Path = ["/imports"],
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

%% @doc The action to start test set execution.
-spec start_test_execution(aws_client:aws_client(), binary() | list(), start_test_execution_request()) ->
    {ok, start_test_execution_response(), tuple()} |
    {error, any()} |
    {error, start_test_execution_errors(), tuple()}.
start_test_execution(Client, TestSetId, Input) ->
    start_test_execution(Client, TestSetId, Input, []).

-spec start_test_execution(aws_client:aws_client(), binary() | list(), start_test_execution_request(), proplists:proplist()) ->
    {ok, start_test_execution_response(), tuple()} |
    {error, any()} |
    {error, start_test_execution_errors(), tuple()}.
start_test_execution(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/testexecutions"],
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

%% @doc The action to start the generation of test set.
-spec start_test_set_generation(aws_client:aws_client(), start_test_set_generation_request()) ->
    {ok, start_test_set_generation_response(), tuple()} |
    {error, any()} |
    {error, start_test_set_generation_errors(), tuple()}.
start_test_set_generation(Client, Input) ->
    start_test_set_generation(Client, Input, []).

-spec start_test_set_generation(aws_client:aws_client(), start_test_set_generation_request(), proplists:proplist()) ->
    {ok, start_test_set_generation_response(), tuple()} |
    {error, any()} |
    {error, start_test_set_generation_errors(), tuple()}.
start_test_set_generation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/testsetgenerations"],
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

%% @doc Stop an already running Bot Recommendation request.
-spec stop_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), stop_bot_recommendation_request()) ->
    {ok, stop_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, stop_bot_recommendation_errors(), tuple()}.
stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).

-spec stop_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), stop_bot_recommendation_request(), proplists:proplist()) ->
    {ok, stop_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, stop_bot_recommendation_errors(), tuple()}.
stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/stopbotrecommendation"],
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

%% @doc Adds the specified tags to the specified resource.
%%
%% If a tag key
%% already exists, the existing value is replaced with the new
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
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a bot, bot alias, or bot channel.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
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

%% @doc Updates the configuration of an existing bot.
-spec update_bot(aws_client:aws_client(), binary() | list(), update_bot_request()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, BotId, Input) ->
    update_bot(Client, BotId, Input, []).

-spec update_bot(aws_client:aws_client(), binary() | list(), update_bot_request(), proplists:proplist()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Updates the configuration of an existing bot alias.
-spec update_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_alias_request()) ->
    {ok, update_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, update_bot_alias_errors(), tuple()}.
update_bot_alias(Client, BotAliasId, BotId, Input) ->
    update_bot_alias(Client, BotAliasId, BotId, Input, []).

-spec update_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_alias_request(), proplists:proplist()) ->
    {ok, update_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, update_bot_alias_errors(), tuple()}.
update_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), ""],
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

%% @doc Updates the settings that a bot has for a specific locale.
-spec update_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_bot_locale_request()) ->
    {ok, update_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, update_bot_locale_errors(), tuple()}.
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    update_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).

-spec update_bot_locale(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_bot_locale_request(), proplists:proplist()) ->
    {ok, update_bot_locale_response(), tuple()} |
    {error, any()} |
    {error, update_bot_locale_errors(), tuple()}.
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), ""],
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

%% @doc Updates an existing bot recommendation request.
-spec update_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_bot_recommendation_request()) ->
    {ok, update_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, update_bot_recommendation_errors(), tuple()}.
update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).

-spec update_bot_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_bot_recommendation_request(), proplists:proplist()) ->
    {ok, update_bot_recommendation_response(), tuple()} |
    {error, any()} |
    {error, update_bot_recommendation_errors(), tuple()}.
update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), ""],
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

%% @doc Updates the password used to protect an export zip archive.
%%
%% The password is not required. If you don't supply a password, Amazon
%% Lex
%% generates a zip file that is not protected by a password. This is the
%% archive that is available at the pre-signed S3 URL provided by the
%% DescribeExport:
%% https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html
%% operation.
-spec update_export(aws_client:aws_client(), binary() | list(), update_export_request()) ->
    {ok, update_export_response(), tuple()} |
    {error, any()} |
    {error, update_export_errors(), tuple()}.
update_export(Client, ExportId, Input) ->
    update_export(Client, ExportId, Input, []).

-spec update_export(aws_client:aws_client(), binary() | list(), update_export_request(), proplists:proplist()) ->
    {ok, update_export_response(), tuple()} |
    {error, any()} |
    {error, update_export_errors(), tuple()}.
update_export(Client, ExportId, Input0, Options0) ->
    Method = put,
    Path = ["/exports/", aws_util:encode_uri(ExportId), ""],
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

%% @doc Updates the settings for an intent.
-spec update_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_intent_request()) ->
    {ok, update_intent_response(), tuple()} |
    {error, any()} |
    {error, update_intent_errors(), tuple()}.
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).

-spec update_intent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_intent_request(), proplists:proplist()) ->
    {ok, update_intent_response(), tuple()} |
    {error, any()} |
    {error, update_intent_errors(), tuple()}.
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Replaces the existing resource policy for a bot or bot alias with a
%% new one.
%%
%% If the policy doesn't exist, Amazon Lex returns an
%% exception.
-spec update_resource_policy(aws_client:aws_client(), binary() | list(), update_resource_policy_request()) ->
    {ok, update_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, update_resource_policy_errors(), tuple()}.
update_resource_policy(Client, ResourceArn, Input) ->
    update_resource_policy(Client, ResourceArn, Input, []).

-spec update_resource_policy(aws_client:aws_client(), binary() | list(), update_resource_policy_request(), proplists:proplist()) ->
    {ok, update_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, update_resource_policy_errors(), tuple()}.
update_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
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
                     {<<"expectedRevisionId">>, <<"expectedRevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for a slot.
-spec update_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_slot_request()) ->
    {ok, update_slot_response(), tuple()} |
    {error, any()} |
    {error, update_slot_errors(), tuple()}.
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).

-spec update_slot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_slot_request(), proplists:proplist()) ->
    {ok, update_slot_response(), tuple()} |
    {error, any()} |
    {error, update_slot_errors(), tuple()}.
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing slot type.
-spec update_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_slot_type_request()) ->
    {ok, update_slot_type_response(), tuple()} |
    {error, any()} |
    {error, update_slot_type_errors(), tuple()}.
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input) ->
    update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input, []).

-spec update_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_slot_type_request(), proplists:proplist()) ->
    {ok, update_slot_type_response(), tuple()} |
    {error, any()} |
    {error, update_slot_type_errors(), tuple()}.
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), ""],
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

%% @doc The action to update the test set.
-spec update_test_set(aws_client:aws_client(), binary() | list(), update_test_set_request()) ->
    {ok, update_test_set_response(), tuple()} |
    {error, any()} |
    {error, update_test_set_errors(), tuple()}.
update_test_set(Client, TestSetId, Input) ->
    update_test_set(Client, TestSetId, Input, []).

-spec update_test_set(aws_client:aws_client(), binary() | list(), update_test_set_request(), proplists:proplist()) ->
    {ok, update_test_set_response(), tuple()} |
    {error, any()} |
    {error, update_test_set_errors(), tuple()}.
update_test_set(Client, TestSetId, Input0, Options0) ->
    Method = put,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
    Client1 = Client#{service => <<"lex">>},
    Host = build_host(<<"models-v2-lex">>, Client1),
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
