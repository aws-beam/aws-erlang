%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lex Build-Time Actions
%%
%% Amazon Lex is an AWS service for building conversational voice and text
%% interfaces.
%%
%% Use these actions to create, update, and delete conversational
%% bots for new and existing client applications.
-module(aws_lex_model_building).

-export([create_bot_version/3,
         create_bot_version/4,
         create_intent_version/3,
         create_intent_version/4,
         create_slot_type_version/3,
         create_slot_type_version/4,
         delete_bot/3,
         delete_bot/4,
         delete_bot_alias/4,
         delete_bot_alias/5,
         delete_bot_channel_association/5,
         delete_bot_channel_association/6,
         delete_bot_version/4,
         delete_bot_version/5,
         delete_intent/3,
         delete_intent/4,
         delete_intent_version/4,
         delete_intent_version/5,
         delete_slot_type/3,
         delete_slot_type/4,
         delete_slot_type_version/4,
         delete_slot_type_version/5,
         delete_utterances/4,
         delete_utterances/5,
         get_bot/3,
         get_bot/5,
         get_bot/6,
         get_bot_alias/3,
         get_bot_alias/5,
         get_bot_alias/6,
         get_bot_aliases/2,
         get_bot_aliases/4,
         get_bot_aliases/5,
         get_bot_channel_association/4,
         get_bot_channel_association/6,
         get_bot_channel_association/7,
         get_bot_channel_associations/3,
         get_bot_channel_associations/5,
         get_bot_channel_associations/6,
         get_bot_versions/2,
         get_bot_versions/4,
         get_bot_versions/5,
         get_bots/1,
         get_bots/3,
         get_bots/4,
         get_builtin_intent/2,
         get_builtin_intent/4,
         get_builtin_intent/5,
         get_builtin_intents/1,
         get_builtin_intents/3,
         get_builtin_intents/4,
         get_builtin_slot_types/1,
         get_builtin_slot_types/3,
         get_builtin_slot_types/4,
         get_export/5,
         get_export/7,
         get_export/8,
         get_import/2,
         get_import/4,
         get_import/5,
         get_intent/3,
         get_intent/5,
         get_intent/6,
         get_intent_versions/2,
         get_intent_versions/4,
         get_intent_versions/5,
         get_intents/1,
         get_intents/3,
         get_intents/4,
         get_migration/2,
         get_migration/4,
         get_migration/5,
         get_migrations/1,
         get_migrations/3,
         get_migrations/4,
         get_slot_type/3,
         get_slot_type/5,
         get_slot_type/6,
         get_slot_type_versions/2,
         get_slot_type_versions/4,
         get_slot_type_versions/5,
         get_slot_types/1,
         get_slot_types/3,
         get_slot_types/4,
         get_utterances_view/4,
         get_utterances_view/6,
         get_utterances_view/7,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_bot/3,
         put_bot/4,
         put_bot_alias/4,
         put_bot_alias/5,
         put_intent/3,
         put_intent/4,
         put_slot_type/3,
         put_slot_type/4,
         start_import/2,
         start_import/3,
         start_migration/2,
         start_migration/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% builtin_slot_type_metadata() :: #{
%%   <<"signature">> => string(),
%%   <<"supportedLocales">> => list(list(any())())
%% }
-type builtin_slot_type_metadata() :: #{binary() => any()}.


%% Example:
%% get_slot_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"slotTypes">> => list(slot_type_metadata())
%% }
-type get_slot_types_response() :: #{binary() => any()}.


%% Example:
%% put_bot_request() :: #{
%%   <<"abortStatement">> => statement(),
%%   <<"checksum">> => string(),
%%   <<"childDirected">> := boolean(),
%%   <<"clarificationPrompt">> => prompt(),
%%   <<"createVersion">> => boolean(),
%%   <<"description">> => string(),
%%   <<"detectSentiment">> => boolean(),
%%   <<"enableModelImprovements">> => boolean(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"intents">> => list(intent()),
%%   <<"locale">> := list(any()),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"processBehavior">> => list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"voiceId">> => string()
%% }
-type put_bot_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_bot_channel_associations_response() :: #{
%%   <<"botChannelAssociations">> => list(bot_channel_association()),
%%   <<"nextToken">> => string()
%% }
-type get_bot_channel_associations_response() :: #{binary() => any()}.


%% Example:
%% get_builtin_intents_request() :: #{
%%   <<"locale">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"signatureContains">> => string()
%% }
-type get_builtin_intents_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% fulfillment_activity() :: #{
%%   <<"codeHook">> => code_hook(),
%%   <<"type">> => list(any())
%% }
-type fulfillment_activity() :: #{binary() => any()}.


%% Example:
%% migration_summary() :: #{
%%   <<"migrationId">> => string(),
%%   <<"migrationStatus">> => list(any()),
%%   <<"migrationStrategy">> => list(any()),
%%   <<"migrationTimestamp">> => non_neg_integer(),
%%   <<"v1BotLocale">> => list(any()),
%%   <<"v1BotName">> => string(),
%%   <<"v1BotVersion">> => string(),
%%   <<"v2BotId">> => string(),
%%   <<"v2BotRole">> => string()
%% }
-type migration_summary() :: #{binary() => any()}.


%% Example:
%% get_migration_response() :: #{
%%   <<"alerts">> => list(migration_alert()),
%%   <<"migrationId">> => string(),
%%   <<"migrationStatus">> => list(any()),
%%   <<"migrationStrategy">> => list(any()),
%%   <<"migrationTimestamp">> => non_neg_integer(),
%%   <<"v1BotLocale">> => list(any()),
%%   <<"v1BotName">> => string(),
%%   <<"v1BotVersion">> => string(),
%%   <<"v2BotId">> => string(),
%%   <<"v2BotRole">> => string()
%% }
-type get_migration_response() :: #{binary() => any()}.


%% Example:
%% resource_reference() :: #{
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type resource_reference() :: #{binary() => any()}.


%% Example:
%% get_builtin_slot_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"slotTypes">> => list(builtin_slot_type_metadata())
%% }
-type get_builtin_slot_types_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% put_slot_type_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"createVersion">> => boolean(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"enumerationValues">> => list(enumeration_value()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeConfigurations">> => list(slot_type_configuration()),
%%   <<"valueSelectionStrategy">> => list(any()),
%%   <<"version">> => string()
%% }
-type put_slot_type_response() :: #{binary() => any()}.


%% Example:
%% get_import_response() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"failureReason">> => list(string()),
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any()),
%%   <<"mergeStrategy">> => list(any()),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type get_import_response() :: #{binary() => any()}.

%% Example:
%% get_bot_request() :: #{}
-type get_bot_request() :: #{}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"exampleReference">> => resource_reference(),
%%   <<"referenceType">> => list(any())
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% start_migration_request() :: #{
%%   <<"migrationStrategy">> := list(any()),
%%   <<"v1BotName">> := string(),
%%   <<"v1BotVersion">> := string(),
%%   <<"v2BotName">> := string(),
%%   <<"v2BotRole">> := string()
%% }
-type start_migration_request() :: #{binary() => any()}.


%% Example:
%% create_slot_type_version_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"enumerationValues">> => list(enumeration_value()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeConfigurations">> => list(slot_type_configuration()),
%%   <<"valueSelectionStrategy">> => list(any()),
%%   <<"version">> => string()
%% }
-type create_slot_type_version_response() :: #{binary() => any()}.


%% Example:
%% log_settings_request() :: #{
%%   <<"destination">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"logType">> => list(any()),
%%   <<"resourceArn">> => string()
%% }
-type log_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_bot_request() :: #{}
-type delete_bot_request() :: #{}.


%% Example:
%% get_bot_response() :: #{
%%   <<"abortStatement">> => statement(),
%%   <<"checksum">> => string(),
%%   <<"childDirected">> => boolean(),
%%   <<"clarificationPrompt">> => prompt(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"detectSentiment">> => boolean(),
%%   <<"enableModelImprovements">> => boolean(),
%%   <<"failureReason">> => string(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"intents">> => list(intent()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"locale">> => list(any()),
%%   <<"name">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string(),
%%   <<"voiceId">> => string()
%% }
-type get_bot_response() :: #{binary() => any()}.


%% Example:
%% follow_up_prompt() :: #{
%%   <<"prompt">> => prompt(),
%%   <<"rejectionStatement">> => statement()
%% }
-type follow_up_prompt() :: #{binary() => any()}.


%% Example:
%% output_context() :: #{
%%   <<"name">> => string(),
%%   <<"timeToLiveInSeconds">> => integer(),
%%   <<"turnsToLive">> => integer()
%% }
-type output_context() :: #{binary() => any()}.


%% Example:
%% slot() :: #{
%%   <<"defaultValueSpec">> => slot_default_value_spec(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"obfuscationSetting">> => list(any()),
%%   <<"priority">> => integer(),
%%   <<"responseCard">> => string(),
%%   <<"sampleUtterances">> => list(string()),
%%   <<"slotConstraint">> => list(any()),
%%   <<"slotType">> => string(),
%%   <<"slotTypeVersion">> => string(),
%%   <<"valueElicitationPrompt">> => prompt()
%% }
-type slot() :: #{binary() => any()}.


%% Example:
%% get_builtin_slot_types_request() :: #{
%%   <<"locale">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"signatureContains">> => string()
%% }
-type get_builtin_slot_types_request() :: #{binary() => any()}.


%% Example:
%% create_bot_version_request() :: #{
%%   <<"checksum">> => string()
%% }
-type create_bot_version_request() :: #{binary() => any()}.


%% Example:
%% get_bot_channel_association_response() :: #{
%%   <<"botAlias">> => string(),
%%   <<"botConfiguration">> => map(),
%%   <<"botName">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type get_bot_channel_association_response() :: #{binary() => any()}.


%% Example:
%% get_builtin_intent_response() :: #{
%%   <<"signature">> => string(),
%%   <<"slots">> => list(builtin_intent_slot()),
%%   <<"supportedLocales">> => list(list(any())())
%% }
-type get_builtin_intent_response() :: #{binary() => any()}.


%% Example:
%% create_slot_type_version_request() :: #{
%%   <<"checksum">> => string()
%% }
-type create_slot_type_version_request() :: #{binary() => any()}.


%% Example:
%% get_slot_type_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"slotTypes">> => list(slot_type_metadata())
%% }
-type get_slot_type_versions_response() :: #{binary() => any()}.

%% Example:
%% delete_slot_type_version_request() :: #{}
-type delete_slot_type_version_request() :: #{}.


%% Example:
%% statement() :: #{
%%   <<"messages">> => list(message()),
%%   <<"responseCard">> => string()
%% }
-type statement() :: #{binary() => any()}.


%% Example:
%% get_bots_response() :: #{
%%   <<"bots">> => list(bot_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_bots_response() :: #{binary() => any()}.


%% Example:
%% builtin_intent_metadata() :: #{
%%   <<"signature">> => string(),
%%   <<"supportedLocales">> => list(list(any())())
%% }
-type builtin_intent_metadata() :: #{binary() => any()}.


%% Example:
%% get_migrations_response() :: #{
%%   <<"migrationSummaries">> => list(migration_summary()),
%%   <<"nextToken">> => string()
%% }
-type get_migrations_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% bot_alias_metadata() :: #{
%%   <<"botName">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"checksum">> => string(),
%%   <<"conversationLogs">> => conversation_logs_response(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type bot_alias_metadata() :: #{binary() => any()}.


%% Example:
%% bot_channel_association() :: #{
%%   <<"botAlias">> => string(),
%%   <<"botConfiguration">> => map(),
%%   <<"botName">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type bot_channel_association() :: #{binary() => any()}.


%% Example:
%% get_migrations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"migrationStatusEquals">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"sortByAttribute">> => list(any()),
%%   <<"sortByOrder">> => list(any()),
%%   <<"v1BotNameContains">> => string()
%% }
-type get_migrations_request() :: #{binary() => any()}.


%% Example:
%% intent() :: #{
%%   <<"intentName">> => string(),
%%   <<"intentVersion">> => string()
%% }
-type intent() :: #{binary() => any()}.


%% Example:
%% get_intents_response() :: #{
%%   <<"intents">> => list(intent_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_intents_response() :: #{binary() => any()}.


%% Example:
%% get_intent_versions_response() :: #{
%%   <<"intents">> => list(intent_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_intent_versions_response() :: #{binary() => any()}.


%% Example:
%% kendra_configuration() :: #{
%%   <<"kendraIndex">> => string(),
%%   <<"queryFilterString">> => string(),
%%   <<"role">> => string()
%% }
-type kendra_configuration() :: #{binary() => any()}.

%% Example:
%% delete_intent_version_request() :: #{}
-type delete_intent_version_request() :: #{}.


%% Example:
%% slot_type_regex_configuration() :: #{
%%   <<"pattern">> => string()
%% }
-type slot_type_regex_configuration() :: #{binary() => any()}.


%% Example:
%% get_intent_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"conclusionStatement">> => statement(),
%%   <<"confirmationPrompt">> => prompt(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => code_hook(),
%%   <<"followUpPrompt">> => follow_up_prompt(),
%%   <<"fulfillmentActivity">> => fulfillment_activity(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"rejectionStatement">> => statement(),
%%   <<"sampleUtterances">> => list(string()),
%%   <<"slots">> => list(slot()),
%%   <<"version">> => string()
%% }
-type get_intent_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_bots_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_bots_request() :: #{binary() => any()}.


%% Example:
%% code_hook() :: #{
%%   <<"messageVersion">> => string(),
%%   <<"uri">> => string()
%% }
-type code_hook() :: #{binary() => any()}.


%% Example:
%% bot_metadata() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type bot_metadata() :: #{binary() => any()}.


%% Example:
%% conversation_logs_response() :: #{
%%   <<"iamRoleArn">> => string(),
%%   <<"logSettings">> => list(log_settings_response())
%% }
-type conversation_logs_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_bot_version_request() :: #{}
-type delete_bot_version_request() :: #{}.


%% Example:
%% put_bot_alias_request() :: #{
%%   <<"botVersion">> := string(),
%%   <<"checksum">> => string(),
%%   <<"conversationLogs">> => conversation_logs_request(),
%%   <<"description">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type put_bot_alias_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% slot_default_value_spec() :: #{
%%   <<"defaultValueList">> => list(slot_default_value())
%% }
-type slot_default_value_spec() :: #{binary() => any()}.

%% Example:
%% get_import_request() :: #{}
-type get_import_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_utterances_view_response() :: #{
%%   <<"botName">> => string(),
%%   <<"utterances">> => list(utterance_list())
%% }
-type get_utterances_view_response() :: #{binary() => any()}.


%% Example:
%% put_bot_response() :: #{
%%   <<"abortStatement">> => statement(),
%%   <<"checksum">> => string(),
%%   <<"childDirected">> => boolean(),
%%   <<"clarificationPrompt">> => prompt(),
%%   <<"createVersion">> => boolean(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"detectSentiment">> => boolean(),
%%   <<"enableModelImprovements">> => boolean(),
%%   <<"failureReason">> => string(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"intents">> => list(intent()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"locale">> => list(any()),
%%   <<"name">> => string(),
%%   <<"nluIntentConfidenceThreshold">> => float(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"version">> => string(),
%%   <<"voiceId">> => string()
%% }
-type put_bot_response() :: #{binary() => any()}.


%% Example:
%% get_intent_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_intent_versions_request() :: #{binary() => any()}.


%% Example:
%% get_bot_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_bot_versions_request() :: #{binary() => any()}.


%% Example:
%% get_slot_type_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_slot_type_versions_request() :: #{binary() => any()}.

%% Example:
%% get_bot_alias_request() :: #{}
-type get_bot_alias_request() :: #{}.

%% Example:
%% get_intent_request() :: #{}
-type get_intent_request() :: #{}.


%% Example:
%% get_bot_aliases_response() :: #{
%%   <<"BotAliases">> => list(bot_alias_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_bot_aliases_response() :: #{binary() => any()}.


%% Example:
%% get_slot_type_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"enumerationValues">> => list(enumeration_value()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeConfigurations">> => list(slot_type_configuration()),
%%   <<"valueSelectionStrategy">> => list(any()),
%%   <<"version">> => string()
%% }
-type get_slot_type_response() :: #{binary() => any()}.


%% Example:
%% utterance_list() :: #{
%%   <<"botVersion">> => string(),
%%   <<"utterances">> => list(utterance_data())
%% }
-type utterance_list() :: #{binary() => any()}.

%% Example:
%% get_builtin_intent_request() :: #{}
-type get_builtin_intent_request() :: #{}.

%% Example:
%% delete_bot_alias_request() :: #{}
-type delete_bot_alias_request() :: #{}.

%% Example:
%% delete_bot_channel_association_request() :: #{}
-type delete_bot_channel_association_request() :: #{}.


%% Example:
%% get_bot_versions_response() :: #{
%%   <<"bots">> => list(bot_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_bot_versions_response() :: #{binary() => any()}.


%% Example:
%% put_intent_request() :: #{
%%   <<"checksum">> => string(),
%%   <<"conclusionStatement">> => statement(),
%%   <<"confirmationPrompt">> => prompt(),
%%   <<"createVersion">> => boolean(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => code_hook(),
%%   <<"followUpPrompt">> => follow_up_prompt(),
%%   <<"fulfillmentActivity">> => fulfillment_activity(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"rejectionStatement">> => statement(),
%%   <<"sampleUtterances">> => list(string()),
%%   <<"slots">> => list(slot())
%% }
-type put_intent_request() :: #{binary() => any()}.


%% Example:
%% get_intents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_intents_request() :: #{binary() => any()}.


%% Example:
%% get_export_request() :: #{
%%   <<"exportType">> := list(any()),
%%   <<"name">> := string(),
%%   <<"resourceType">> := list(any()),
%%   <<"version">> := string()
%% }
-type get_export_request() :: #{binary() => any()}.


%% Example:
%% put_slot_type_request() :: #{
%%   <<"checksum">> => string(),
%%   <<"createVersion">> => boolean(),
%%   <<"description">> => string(),
%%   <<"enumerationValues">> => list(enumeration_value()),
%%   <<"parentSlotTypeSignature">> => string(),
%%   <<"slotTypeConfigurations">> => list(slot_type_configuration()),
%%   <<"valueSelectionStrategy">> => list(any())
%% }
-type put_slot_type_request() :: #{binary() => any()}.


%% Example:
%% start_migration_response() :: #{
%%   <<"migrationId">> => string(),
%%   <<"migrationStrategy">> => list(any()),
%%   <<"migrationTimestamp">> => non_neg_integer(),
%%   <<"v1BotLocale">> => list(any()),
%%   <<"v1BotName">> => string(),
%%   <<"v1BotVersion">> => string(),
%%   <<"v2BotId">> => string(),
%%   <<"v2BotRole">> => string()
%% }
-type start_migration_response() :: #{binary() => any()}.


%% Example:
%% conversation_logs_request() :: #{
%%   <<"iamRoleArn">> => string(),
%%   <<"logSettings">> => list(log_settings_request())
%% }
-type conversation_logs_request() :: #{binary() => any()}.


%% Example:
%% slot_type_configuration() :: #{
%%   <<"regexConfiguration">> => slot_type_regex_configuration()
%% }
-type slot_type_configuration() :: #{binary() => any()}.


%% Example:
%% get_builtin_intents_response() :: #{
%%   <<"intents">> => list(builtin_intent_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_builtin_intents_response() :: #{binary() => any()}.


%% Example:
%% put_intent_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"conclusionStatement">> => statement(),
%%   <<"confirmationPrompt">> => prompt(),
%%   <<"createVersion">> => boolean(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => code_hook(),
%%   <<"followUpPrompt">> => follow_up_prompt(),
%%   <<"fulfillmentActivity">> => fulfillment_activity(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"rejectionStatement">> => statement(),
%%   <<"sampleUtterances">> => list(string()),
%%   <<"slots">> => list(slot()),
%%   <<"version">> => string()
%% }
-type put_intent_response() :: #{binary() => any()}.


%% Example:
%% create_intent_version_request() :: #{
%%   <<"checksum">> => string()
%% }
-type create_intent_version_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_bot_channel_association_request() :: #{}
-type get_bot_channel_association_request() :: #{}.


%% Example:
%% builtin_intent_slot() :: #{
%%   <<"name">> => string()
%% }
-type builtin_intent_slot() :: #{binary() => any()}.


%% Example:
%% get_slot_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_slot_types_request() :: #{binary() => any()}.


%% Example:
%% input_context() :: #{
%%   <<"name">> => string()
%% }
-type input_context() :: #{binary() => any()}.

%% Example:
%% delete_slot_type_request() :: #{}
-type delete_slot_type_request() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% log_settings_response() :: #{
%%   <<"destination">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"logType">> => list(any()),
%%   <<"resourceArn">> => string(),
%%   <<"resourcePrefix">> => string()
%% }
-type log_settings_response() :: #{binary() => any()}.

%% Example:
%% get_migration_request() :: #{}
-type get_migration_request() :: #{}.


%% Example:
%% get_export_response() :: #{
%%   <<"exportStatus">> => list(any()),
%%   <<"exportType">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"url">> => string(),
%%   <<"version">> => string()
%% }
-type get_export_response() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% slot_default_value() :: #{
%%   <<"defaultValue">> => string()
%% }
-type slot_default_value() :: #{binary() => any()}.


%% Example:
%% create_intent_version_response() :: #{
%%   <<"checksum">> => string(),
%%   <<"conclusionStatement">> => statement(),
%%   <<"confirmationPrompt">> => prompt(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"dialogCodeHook">> => code_hook(),
%%   <<"followUpPrompt">> => follow_up_prompt(),
%%   <<"fulfillmentActivity">> => fulfillment_activity(),
%%   <<"inputContexts">> => list(input_context()),
%%   <<"kendraConfiguration">> => kendra_configuration(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputContexts">> => list(output_context()),
%%   <<"parentIntentSignature">> => string(),
%%   <<"rejectionStatement">> => statement(),
%%   <<"sampleUtterances">> => list(string()),
%%   <<"slots">> => list(slot()),
%%   <<"version">> => string()
%% }
-type create_intent_version_response() :: #{binary() => any()}.

%% Example:
%% get_slot_type_request() :: #{}
-type get_slot_type_request() :: #{}.


%% Example:
%% intent_metadata() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type intent_metadata() :: #{binary() => any()}.


%% Example:
%% utterance_data() :: #{
%%   <<"count">> => integer(),
%%   <<"distinctUsers">> => integer(),
%%   <<"firstUtteredDate">> => non_neg_integer(),
%%   <<"lastUtteredDate">> => non_neg_integer(),
%%   <<"utteranceString">> => string()
%% }
-type utterance_data() :: #{binary() => any()}.

%% Example:
%% delete_utterances_request() :: #{}
-type delete_utterances_request() :: #{}.


%% Example:
%% enumeration_value() :: #{
%%   <<"synonyms">> => list(string()),
%%   <<"value">> => string()
%% }
-type enumeration_value() :: #{binary() => any()}.


%% Example:
%% get_utterances_view_request() :: #{
%%   <<"botVersions">> := list(string()),
%%   <<"statusType">> := list(any())
%% }
-type get_utterances_view_request() :: #{binary() => any()}.


%% Example:
%% put_bot_alias_response() :: #{
%%   <<"botName">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"checksum">> => string(),
%%   <<"conversationLogs">> => conversation_logs_response(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type put_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% migration_alert() :: #{
%%   <<"details">> => list(string()),
%%   <<"message">> => string(),
%%   <<"referenceURLs">> => list(string()),
%%   <<"type">> => list(any())
%% }
-type migration_alert() :: #{binary() => any()}.

%% Example:
%% delete_intent_request() :: #{}
-type delete_intent_request() :: #{}.


%% Example:
%% get_bot_aliases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_bot_aliases_request() :: #{binary() => any()}.


%% Example:
%% get_bot_alias_response() :: #{
%%   <<"botName">> => string(),
%%   <<"botVersion">> => string(),
%%   <<"checksum">> => string(),
%%   <<"conversationLogs">> => conversation_logs_response(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type get_bot_alias_response() :: #{binary() => any()}.


%% Example:
%% start_import_request() :: #{
%%   <<"mergeStrategy">> := list(any()),
%%   <<"payload">> := binary(),
%%   <<"resourceType">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type start_import_request() :: #{binary() => any()}.


%% Example:
%% slot_type_metadata() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type slot_type_metadata() :: #{binary() => any()}.


%% Example:
%% start_import_response() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"importId">> => string(),
%%   <<"importStatus">> => list(any()),
%%   <<"mergeStrategy">> => list(any()),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type start_import_response() :: #{binary() => any()}.


%% Example:
%% prompt() :: #{
%%   <<"maxAttempts">> => integer(),
%%   <<"messages">> => list(message()),
%%   <<"responseCard">> => string()
%% }
-type prompt() :: #{binary() => any()}.


%% Example:
%% create_bot_version_response() :: #{
%%   <<"abortStatement">> => statement(),
%%   <<"checksum">> => string(),
%%   <<"childDirected">> => boolean(),
%%   <<"clarificationPrompt">> => prompt(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"detectSentiment">> => boolean(),
%%   <<"enableModelImprovements">> => boolean(),
%%   <<"failureReason">> => string(),
%%   <<"idleSessionTTLInSeconds">> => integer(),
%%   <<"intents">> => list(intent()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"locale">> => list(any()),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string(),
%%   <<"voiceId">> => string()
%% }
-type create_bot_version_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"content">> => string(),
%%   <<"contentType">> => list(any()),
%%   <<"groupNumber">> => integer()
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% get_bot_channel_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_bot_channel_associations_request() :: #{binary() => any()}.

-type create_bot_version_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_intent_version_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_slot_type_version_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_bot_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_bot_alias_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_bot_channel_association_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_bot_version_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_intent_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_intent_version_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_slot_type_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_slot_type_version_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_utterances_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_bot_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_bot_alias_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_bot_aliases_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type get_bot_channel_association_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_bot_channel_associations_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type get_bot_versions_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_bots_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_builtin_intent_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_builtin_intents_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type get_builtin_slot_types_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type get_export_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_import_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_intent_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_intent_versions_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_intents_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_migration_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_migrations_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type get_slot_type_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_slot_type_versions_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_slot_types_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_utterances_view_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type put_bot_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type put_bot_alias_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type put_intent_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type put_slot_type_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_import_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type start_migration_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new version of the bot based on the `$LATEST'
%% version.
%%
%% If the `$LATEST' version of this resource hasn't
%% changed since you created the last version, Amazon Lex doesn't create
%% a new
%% version. It returns the last created version.
%%
%% You can update only the `$LATEST' version of the bot.
%% You can't update the numbered versions that you create with the
%% `CreateBotVersion' operation.
%%
%% When you create the first version of a bot, Amazon Lex sets the version
%% to 1. Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permission for the
%% `lex:CreateBotVersion' action.
-spec create_bot_version(aws_client:aws_client(), binary() | list(), create_bot_version_request()) ->
    {ok, create_bot_version_response(), tuple()} |
    {error, any()} |
    {error, create_bot_version_errors(), tuple()}.
create_bot_version(Client, Name, Input) ->
    create_bot_version(Client, Name, Input, []).

-spec create_bot_version(aws_client:aws_client(), binary() | list(), create_bot_version_request(), proplists:proplist()) ->
    {ok, create_bot_version_response(), tuple()} |
    {error, any()} |
    {error, create_bot_version_errors(), tuple()}.
create_bot_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Creates a new version of an intent based on the
%% `$LATEST' version of the intent.
%%
%% If the `$LATEST'
%% version of this intent hasn't changed since you last updated it,
%% Amazon Lex
%% doesn't create a new version. It returns the last version you
%% created.
%%
%% You can update only the `$LATEST' version of the
%% intent. You can't update the numbered versions that you create with
%% the
%% `CreateIntentVersion' operation.
%%
%% When you create a version of an intent, Amazon Lex sets the version to
%% 1. Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permissions to perform the
%% `lex:CreateIntentVersion' action.
-spec create_intent_version(aws_client:aws_client(), binary() | list(), create_intent_version_request()) ->
    {ok, create_intent_version_response(), tuple()} |
    {error, any()} |
    {error, create_intent_version_errors(), tuple()}.
create_intent_version(Client, Name, Input) ->
    create_intent_version(Client, Name, Input, []).

-spec create_intent_version(aws_client:aws_client(), binary() | list(), create_intent_version_request(), proplists:proplist()) ->
    {ok, create_intent_version_response(), tuple()} |
    {error, any()} |
    {error, create_intent_version_errors(), tuple()}.
create_intent_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Creates a new version of a slot type based on the
%% `$LATEST' version of the specified slot type.
%%
%% If the
%% `$LATEST' version of this resource has not changed since the
%% last version that you created, Amazon Lex doesn't create a new
%% version. It
%% returns the last version that you created.
%%
%% You can update only the `$LATEST' version of a slot
%% type. You can't update the numbered versions that you create with the
%% `CreateSlotTypeVersion' operation.
%%
%% When you create a version of a slot type, Amazon Lex sets the version to
%% 1. Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permissions for the
%% `lex:CreateSlotTypeVersion' action.
-spec create_slot_type_version(aws_client:aws_client(), binary() | list(), create_slot_type_version_request()) ->
    {ok, create_slot_type_version_response(), tuple()} |
    {error, any()} |
    {error, create_slot_type_version_errors(), tuple()}.
create_slot_type_version(Client, Name, Input) ->
    create_slot_type_version(Client, Name, Input, []).

-spec create_slot_type_version(aws_client:aws_client(), binary() | list(), create_slot_type_version_request(), proplists:proplist()) ->
    {ok, create_slot_type_version_response(), tuple()} |
    {error, any()} |
    {error, create_slot_type_version_errors(), tuple()}.
create_slot_type_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Deletes all versions of the bot, including the `$LATEST'
%% version.
%%
%% To delete a specific version of the bot, use the `DeleteBotVersion'
%% operation. The `DeleteBot'
%% operation doesn't immediately remove the bot schema. Instead, it is
%% marked
%% for deletion and removed later.
%%
%% Amazon Lex stores utterances indefinitely for improving the ability of
%% your bot to respond to user inputs. These utterances are not removed when
%% the bot is deleted. To remove the utterances, use the
%% `DeleteUtterances' operation.
%%
%% If a bot has an alias, you can't delete it. Instead, the
%% `DeleteBot' operation returns a
%% `ResourceInUseException' exception that includes a reference
%% to the alias that refers to the bot. To remove the reference to the bot,
%% delete the alias. If you get the same exception again, delete the
%% referring alias until the `DeleteBot' operation is
%% successful.
%%
%% This operation requires permissions for the
%% `lex:DeleteBot' action.
-spec delete_bot(aws_client:aws_client(), binary() | list(), delete_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, Name, Input) ->
    delete_bot(Client, Name, Input, []).

-spec delete_bot(aws_client:aws_client(), binary() | list(), delete_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes an alias for the specified bot.
%%
%% You can't delete an alias that is used in the association between a
%% bot and a messaging channel. If an alias is used in a channel association,
%% the `DeleteBot' operation returns a
%% `ResourceInUseException' exception that includes a reference
%% to the channel association that refers to the bot. You can remove the
%% reference to the alias by deleting the channel association. If you get the
%% same exception again, delete the referring association until the
%% `DeleteBotAlias' operation is successful.
-spec delete_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_alias_errors(), tuple()}.
delete_bot_alias(Client, BotName, Name, Input) ->
    delete_bot_alias(Client, BotName, Name, Input, []).

-spec delete_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_alias_errors(), tuple()}.
delete_bot_alias(Client, BotName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the association between an Amazon Lex bot and a messaging
%% platform.
%%
%% This operation requires permission for the
%% `lex:DeleteBotChannelAssociation' action.
-spec delete_bot_channel_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_bot_channel_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_channel_association_errors(), tuple()}.
delete_bot_channel_association(Client, BotAlias, BotName, Name, Input) ->
    delete_bot_channel_association(Client, BotAlias, BotName, Name, Input, []).

-spec delete_bot_channel_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_bot_channel_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_channel_association_errors(), tuple()}.
delete_bot_channel_association(Client, BotAlias, BotName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a specific version of a bot.
%%
%% To delete all versions of a
%% bot, use the `DeleteBot' operation.
%%
%% This operation requires permissions for the
%% `lex:DeleteBotVersion' action.
-spec delete_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_version_errors(), tuple()}.
delete_bot_version(Client, Name, Version, Input) ->
    delete_bot_version(Client, Name, Version, Input, []).

-spec delete_bot_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_bot_version_errors(), tuple()}.
delete_bot_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
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

%% @doc Deletes all versions of the intent, including the
%% `$LATEST' version.
%%
%% To delete a specific version of the
%% intent, use the `DeleteIntentVersion' operation.
%%
%% You can delete a version of an intent only if it is not
%% referenced. To delete an intent that is referred to in one or more bots
%% (see `how-it-works'), you must remove those references
%% first.
%%
%% If you get the `ResourceInUseException' exception, it
%% provides an example reference that shows where the intent is referenced.
%% To remove the reference to the intent, either update the bot or delete
%% it. If you get the same exception when you attempt to delete the intent
%% again, repeat until the intent has no references and the call to
%% `DeleteIntent' is successful.
%%
%% This operation requires permission for the
%% `lex:DeleteIntent' action.
-spec delete_intent(aws_client:aws_client(), binary() | list(), delete_intent_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_errors(), tuple()}.
delete_intent(Client, Name, Input) ->
    delete_intent(Client, Name, Input, []).

-spec delete_intent(aws_client:aws_client(), binary() | list(), delete_intent_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_errors(), tuple()}.
delete_intent(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/intents/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a specific version of an intent.
%%
%% To delete all versions of
%% a intent, use the `DeleteIntent' operation.
%%
%% This operation requires permissions for the
%% `lex:DeleteIntentVersion' action.
-spec delete_intent_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_intent_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_version_errors(), tuple()}.
delete_intent_version(Client, Name, Version, Input) ->
    delete_intent_version(Client, Name, Version, Input, []).

-spec delete_intent_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_intent_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_intent_version_errors(), tuple()}.
delete_intent_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
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

%% @doc Deletes all versions of the slot type, including the
%% `$LATEST' version.
%%
%% To delete a specific version of the slot
%% type, use the `DeleteSlotTypeVersion' operation.
%%
%% You can delete a version of a slot type only if it is not
%% referenced. To delete a slot type that is referred to in one or more
%% intents, you must remove those references first.
%%
%% If you get the `ResourceInUseException' exception,
%% the exception provides an example reference that shows the intent where
%% the slot type is referenced. To remove the reference to the slot type,
%% either update the intent or delete it. If you get the same exception
%% when you attempt to delete the slot type again, repeat until the slot
%% type has no references and the `DeleteSlotType' call is
%% successful.
%%
%% This operation requires permission for the
%% `lex:DeleteSlotType' action.
-spec delete_slot_type(aws_client:aws_client(), binary() | list(), delete_slot_type_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_errors(), tuple()}.
delete_slot_type(Client, Name, Input) ->
    delete_slot_type(Client, Name, Input, []).

-spec delete_slot_type(aws_client:aws_client(), binary() | list(), delete_slot_type_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_errors(), tuple()}.
delete_slot_type(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/slottypes/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a specific version of a slot type.
%%
%% To delete all versions
%% of a slot type, use the `DeleteSlotType' operation.
%%
%% This operation requires permissions for the
%% `lex:DeleteSlotTypeVersion' action.
-spec delete_slot_type_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_slot_type_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_version_errors(), tuple()}.
delete_slot_type_version(Client, Name, Version, Input) ->
    delete_slot_type_version(Client, Name, Version, Input, []).

-spec delete_slot_type_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_slot_type_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_slot_type_version_errors(), tuple()}.
delete_slot_type_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/version/", aws_util:encode_uri(Version), ""],
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
%% are stored for 15 days for use with the `GetUtterancesView' operation,
%% and then stored indefinitely for use in improving the
%% ability of your bot to respond to user input.
%%
%% Use the `DeleteUtterances' operation to manually delete
%% stored utterances for a specific user. When you use the
%% `DeleteUtterances' operation, utterances stored for improving
%% your bot's ability to respond to user input are deleted immediately.
%% Utterances stored for use with the `GetUtterancesView'
%% operation are deleted after 15 days.
%%
%% This operation requires permissions for the
%% `lex:DeleteUtterances' action.
-spec delete_utterances(aws_client:aws_client(), binary() | list(), binary() | list(), delete_utterances_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_utterances_errors(), tuple()}.
delete_utterances(Client, BotName, UserId, Input) ->
    delete_utterances(Client, BotName, UserId, Input, []).

-spec delete_utterances(aws_client:aws_client(), binary() | list(), binary() | list(), delete_utterances_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_utterances_errors(), tuple()}.
delete_utterances(Client, BotName, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/utterances/", aws_util:encode_uri(UserId), ""],
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

%% @doc Returns metadata information for a specific bot.
%%
%% You must provide
%% the bot name and the bot version or alias.
%%
%% This operation requires permissions for the
%% `lex:GetBot' action.
-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, Name, VersionOrAlias)
  when is_map(Client) ->
    get_bot(Client, Name, VersionOrAlias, #{}, #{}).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap, []).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(VersionOrAlias), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an Amazon Lex bot alias.
%%
%% For more information
%% about aliases, see `versioning-aliases'.
%%
%% This operation requires permissions for the
%% `lex:GetBotAlias' action.
-spec get_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, get_bot_alias_errors(), tuple()}.
get_bot_alias(Client, BotName, Name)
  when is_map(Client) ->
    get_bot_alias(Client, BotName, Name, #{}, #{}).

-spec get_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, get_bot_alias_errors(), tuple()}.
get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap, []).

-spec get_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, get_bot_alias_errors(), tuple()}.
get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of aliases for a specified Amazon Lex bot.
%%
%% This operation requires permissions for the
%% `lex:GetBotAliases' action.
-spec get_bot_aliases(aws_client:aws_client(), binary() | list()) ->
    {ok, get_bot_aliases_response(), tuple()} |
    {error, any()} |
    {error, get_bot_aliases_errors(), tuple()}.
get_bot_aliases(Client, BotName)
  when is_map(Client) ->
    get_bot_aliases(Client, BotName, #{}, #{}).

-spec get_bot_aliases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_bot_aliases_response(), tuple()} |
    {error, any()} |
    {error, get_bot_aliases_errors(), tuple()}.
get_bot_aliases(Client, BotName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_aliases(Client, BotName, QueryMap, HeadersMap, []).

-spec get_bot_aliases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_aliases_response(), tuple()} |
    {error, any()} |
    {error, get_bot_aliases_errors(), tuple()}.
get_bot_aliases(Client, BotName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the association between an Amazon Lex bot
%% and
%% a messaging platform.
%%
%% This operation requires permissions for the
%% `lex:GetBotChannelAssociation' action.
-spec get_bot_channel_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_bot_channel_association_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_association_errors(), tuple()}.
get_bot_channel_association(Client, BotAlias, BotName, Name)
  when is_map(Client) ->
    get_bot_channel_association(Client, BotAlias, BotName, Name, #{}, #{}).

-spec get_bot_channel_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_channel_association_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_association_errors(), tuple()}.
get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap, []).

-spec get_bot_channel_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_channel_association_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_association_errors(), tuple()}.
get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the channels associated with the
%% specified bot.
%%
%% The `GetBotChannelAssociations' operation requires
%% permissions for the `lex:GetBotChannelAssociations'
%% action.
-spec get_bot_channel_associations(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bot_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_associations_errors(), tuple()}.
get_bot_channel_associations(Client, BotAlias, BotName)
  when is_map(Client) ->
    get_bot_channel_associations(Client, BotAlias, BotName, #{}, #{}).

-spec get_bot_channel_associations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_associations_errors(), tuple()}.
get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap, []).

-spec get_bot_channel_associations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_channel_associations_response(), tuple()} |
    {error, any()} |
    {error, get_bot_channel_associations_errors(), tuple()}.
get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of a bot.
%%
%% The `GetBotVersions' operation returns a
%% `BotMetadata' object for each version of a bot. For example,
%% if a bot has three numbered versions, the `GetBotVersions'
%% operation returns four `BotMetadata' objects in the response,
%% one for each numbered version and one for the `$LATEST'
%% version.
%%
%% The `GetBotVersions' operation always returns at least
%% one version, the `$LATEST' version.
%%
%% This operation requires permissions for the
%% `lex:GetBotVersions' action.
-spec get_bot_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, get_bot_versions_response(), tuple()} |
    {error, any()} |
    {error, get_bot_versions_errors(), tuple()}.
get_bot_versions(Client, Name)
  when is_map(Client) ->
    get_bot_versions(Client, Name, #{}, #{}).

-spec get_bot_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_bot_versions_response(), tuple()} |
    {error, any()} |
    {error, get_bot_versions_errors(), tuple()}.
get_bot_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_versions(Client, Name, QueryMap, HeadersMap, []).

-spec get_bot_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_versions_response(), tuple()} |
    {error, any()} |
    {error, get_bot_versions_errors(), tuple()}.
get_bot_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Returns bot information as follows:
%%
%% If you provide the `nameContains' field, the
%% response includes information for the `$LATEST' version of
%% all bots whose name contains the specified string.
%%
%% If you don't specify the `nameContains' field, the
%% operation returns information about the `$LATEST' version
%% of all of your bots.
%%
%% This operation requires permission for the `lex:GetBots'
%% action.
-spec get_bots(aws_client:aws_client()) ->
    {ok, get_bots_response(), tuple()} |
    {error, any()} |
    {error, get_bots_errors(), tuple()}.
get_bots(Client)
  when is_map(Client) ->
    get_bots(Client, #{}, #{}).

-spec get_bots(aws_client:aws_client(), map(), map()) ->
    {ok, get_bots_response(), tuple()} |
    {error, any()} |
    {error, get_bots_errors(), tuple()}.
get_bots(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bots(Client, QueryMap, HeadersMap, []).

-spec get_bots(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_bots_response(), tuple()} |
    {error, any()} |
    {error, get_bots_errors(), tuple()}.
get_bots(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a built-in intent.
%%
%% This operation requires permission for the
%% `lex:GetBuiltinIntent' action.
-spec get_builtin_intent(aws_client:aws_client(), binary() | list()) ->
    {ok, get_builtin_intent_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intent_errors(), tuple()}.
get_builtin_intent(Client, Signature)
  when is_map(Client) ->
    get_builtin_intent(Client, Signature, #{}, #{}).

-spec get_builtin_intent(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_builtin_intent_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intent_errors(), tuple()}.
get_builtin_intent(Client, Signature, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_intent(Client, Signature, QueryMap, HeadersMap, []).

-spec get_builtin_intent(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_builtin_intent_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intent_errors(), tuple()}.
get_builtin_intent(Client, Signature, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/intents/", aws_util:encode_uri(Signature), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of built-in intents that meet the specified
%% criteria.
%%
%% This operation requires permission for the
%% `lex:GetBuiltinIntents' action.
-spec get_builtin_intents(aws_client:aws_client()) ->
    {ok, get_builtin_intents_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intents_errors(), tuple()}.
get_builtin_intents(Client)
  when is_map(Client) ->
    get_builtin_intents(Client, #{}, #{}).

-spec get_builtin_intents(aws_client:aws_client(), map(), map()) ->
    {ok, get_builtin_intents_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intents_errors(), tuple()}.
get_builtin_intents(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_intents(Client, QueryMap, HeadersMap, []).

-spec get_builtin_intents(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_builtin_intents_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_intents_errors(), tuple()}.
get_builtin_intents(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/intents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"signatureContains">>, maps:get(<<"signatureContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of built-in slot types that meet the specified
%% criteria.
%%
%% For a list of built-in slot types, see Slot Type Reference:
%% https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference
%% in the Alexa Skills
%% Kit.
%%
%% This operation requires permission for the
%% `lex:GetBuiltInSlotTypes' action.
-spec get_builtin_slot_types(aws_client:aws_client()) ->
    {ok, get_builtin_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_slot_types_errors(), tuple()}.
get_builtin_slot_types(Client)
  when is_map(Client) ->
    get_builtin_slot_types(Client, #{}, #{}).

-spec get_builtin_slot_types(aws_client:aws_client(), map(), map()) ->
    {ok, get_builtin_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_slot_types_errors(), tuple()}.
get_builtin_slot_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_slot_types(Client, QueryMap, HeadersMap, []).

-spec get_builtin_slot_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_builtin_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_builtin_slot_types_errors(), tuple()}.
get_builtin_slot_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/slottypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"signatureContains">>, maps:get(<<"signatureContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports the contents of a Amazon Lex resource in a specified format.
-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, Name, ResourceType, Version)
  when is_map(Client) ->
    get_export(Client, ExportType, Name, ResourceType, Version, #{}, #{}).

-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap, []).

-spec get_export(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"exportType">>, ExportType},
        {<<"name">>, Name},
        {<<"resourceType">>, ResourceType},
        {<<"version">>, Version}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an import job started with the
%% `StartImport' operation.
-spec get_import(aws_client:aws_client(), binary() | list()) ->
    {ok, get_import_response(), tuple()} |
    {error, any()} |
    {error, get_import_errors(), tuple()}.
get_import(Client, ImportId)
  when is_map(Client) ->
    get_import(Client, ImportId, #{}, #{}).

-spec get_import(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_import_response(), tuple()} |
    {error, any()} |
    {error, get_import_errors(), tuple()}.
get_import(Client, ImportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import(Client, ImportId, QueryMap, HeadersMap, []).

-spec get_import(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_response(), tuple()} |
    {error, any()} |
    {error, get_import_errors(), tuple()}.
get_import(Client, ImportId, QueryMap, HeadersMap, Options0)
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

%% @doc Returns information about an intent.
%%
%% In addition to the intent
%% name, you must specify the intent version.
%%
%% This operation requires permissions to perform the
%% `lex:GetIntent' action.
-spec get_intent(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_intent_response(), tuple()} |
    {error, any()} |
    {error, get_intent_errors(), tuple()}.
get_intent(Client, Name, Version)
  when is_map(Client) ->
    get_intent(Client, Name, Version, #{}, #{}).

-spec get_intent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_intent_response(), tuple()} |
    {error, any()} |
    {error, get_intent_errors(), tuple()}.
get_intent(Client, Name, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intent(Client, Name, Version, QueryMap, HeadersMap, []).

-spec get_intent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_intent_response(), tuple()} |
    {error, any()} |
    {error, get_intent_errors(), tuple()}.
get_intent(Client, Name, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of an intent.
%%
%% The `GetIntentVersions' operation returns an
%% `IntentMetadata' object for each version of an intent. For
%% example, if an intent has three numbered versions, the
%% `GetIntentVersions' operation returns four
%% `IntentMetadata' objects in the response, one for each
%% numbered version and one for the `$LATEST' version.
%%
%% The `GetIntentVersions' operation always returns at
%% least one version, the `$LATEST' version.
%%
%% This operation requires permissions for the
%% `lex:GetIntentVersions' action.
-spec get_intent_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, get_intent_versions_response(), tuple()} |
    {error, any()} |
    {error, get_intent_versions_errors(), tuple()}.
get_intent_versions(Client, Name)
  when is_map(Client) ->
    get_intent_versions(Client, Name, #{}, #{}).

-spec get_intent_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_intent_versions_response(), tuple()} |
    {error, any()} |
    {error, get_intent_versions_errors(), tuple()}.
get_intent_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intent_versions(Client, Name, QueryMap, HeadersMap, []).

-spec get_intent_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_intent_versions_response(), tuple()} |
    {error, any()} |
    {error, get_intent_versions_errors(), tuple()}.
get_intent_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Returns intent information as follows:
%%
%% If you specify the `nameContains' field, returns the
%% `$LATEST' version of all intents that contain the
%% specified string.
%%
%% If you don't specify the `nameContains' field,
%% returns information about the `$LATEST' version of all
%% intents.
%%
%% The operation requires permission for the
%% `lex:GetIntents' action.
-spec get_intents(aws_client:aws_client()) ->
    {ok, get_intents_response(), tuple()} |
    {error, any()} |
    {error, get_intents_errors(), tuple()}.
get_intents(Client)
  when is_map(Client) ->
    get_intents(Client, #{}, #{}).

-spec get_intents(aws_client:aws_client(), map(), map()) ->
    {ok, get_intents_response(), tuple()} |
    {error, any()} |
    {error, get_intents_errors(), tuple()}.
get_intents(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intents(Client, QueryMap, HeadersMap, []).

-spec get_intents(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_intents_response(), tuple()} |
    {error, any()} |
    {error, get_intents_errors(), tuple()}.
get_intents(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about an ongoing or complete migration from an
%% Amazon Lex V1 bot to an Amazon Lex V2 bot.
%%
%% Use this operation to view the migration
%% alerts and warnings related to the migration.
-spec get_migration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_migration_response(), tuple()} |
    {error, any()} |
    {error, get_migration_errors(), tuple()}.
get_migration(Client, MigrationId)
  when is_map(Client) ->
    get_migration(Client, MigrationId, #{}, #{}).

-spec get_migration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_migration_response(), tuple()} |
    {error, any()} |
    {error, get_migration_errors(), tuple()}.
get_migration(Client, MigrationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_migration(Client, MigrationId, QueryMap, HeadersMap, []).

-spec get_migration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_migration_response(), tuple()} |
    {error, any()} |
    {error, get_migration_errors(), tuple()}.
get_migration(Client, MigrationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrations/", aws_util:encode_uri(MigrationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.
-spec get_migrations(aws_client:aws_client()) ->
    {ok, get_migrations_response(), tuple()} |
    {error, any()} |
    {error, get_migrations_errors(), tuple()}.
get_migrations(Client)
  when is_map(Client) ->
    get_migrations(Client, #{}, #{}).

-spec get_migrations(aws_client:aws_client(), map(), map()) ->
    {ok, get_migrations_response(), tuple()} |
    {error, any()} |
    {error, get_migrations_errors(), tuple()}.
get_migrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_migrations(Client, QueryMap, HeadersMap, []).

-spec get_migrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_migrations_response(), tuple()} |
    {error, any()} |
    {error, get_migrations_errors(), tuple()}.
get_migrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrations"],
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
        {<<"migrationStatusEquals">>, maps:get(<<"migrationStatusEquals">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortByAttribute">>, maps:get(<<"sortByAttribute">>, QueryMap, undefined)},
        {<<"sortByOrder">>, maps:get(<<"sortByOrder">>, QueryMap, undefined)},
        {<<"v1BotNameContains">>, maps:get(<<"v1BotNameContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific version of a slot type.
%%
%% In
%% addition to specifying the slot type name, you must specify the slot type
%% version.
%%
%% This operation requires permissions for the
%% `lex:GetSlotType' action.
-spec get_slot_type(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_slot_type_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_errors(), tuple()}.
get_slot_type(Client, Name, Version)
  when is_map(Client) ->
    get_slot_type(Client, Name, Version, #{}, #{}).

-spec get_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_slot_type_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_errors(), tuple()}.
get_slot_type(Client, Name, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_type(Client, Name, Version, QueryMap, HeadersMap, []).

-spec get_slot_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_slot_type_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_errors(), tuple()}.
get_slot_type(Client, Name, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all versions of a slot type.
%%
%% The `GetSlotTypeVersions' operation returns a
%% `SlotTypeMetadata' object for each version of a slot type.
%% For example, if a slot type has three numbered versions, the
%% `GetSlotTypeVersions' operation returns four
%% `SlotTypeMetadata' objects in the response, one for each
%% numbered version and one for the `$LATEST' version.
%%
%% The `GetSlotTypeVersions' operation always returns at
%% least one version, the `$LATEST' version.
%%
%% This operation requires permissions for the
%% `lex:GetSlotTypeVersions' action.
-spec get_slot_type_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, get_slot_type_versions_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_versions_errors(), tuple()}.
get_slot_type_versions(Client, Name)
  when is_map(Client) ->
    get_slot_type_versions(Client, Name, #{}, #{}).

-spec get_slot_type_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_slot_type_versions_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_versions_errors(), tuple()}.
get_slot_type_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_type_versions(Client, Name, QueryMap, HeadersMap, []).

-spec get_slot_type_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_slot_type_versions_response(), tuple()} |
    {error, any()} |
    {error, get_slot_type_versions_errors(), tuple()}.
get_slot_type_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions"],
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

%% @doc Returns slot type information as follows:
%%
%% If you specify the `nameContains' field, returns the
%% `$LATEST' version of all slot types that contain the
%% specified string.
%%
%% If you don't specify the `nameContains' field,
%% returns information about the `$LATEST' version of all slot
%% types.
%%
%% The operation requires permission for the
%% `lex:GetSlotTypes' action.
-spec get_slot_types(aws_client:aws_client()) ->
    {ok, get_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_slot_types_errors(), tuple()}.
get_slot_types(Client)
  when is_map(Client) ->
    get_slot_types(Client, #{}, #{}).

-spec get_slot_types(aws_client:aws_client(), map(), map()) ->
    {ok, get_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_slot_types_errors(), tuple()}.
get_slot_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_types(Client, QueryMap, HeadersMap, []).

-spec get_slot_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_slot_types_response(), tuple()} |
    {error, any()} |
    {error, get_slot_types_errors(), tuple()}.
get_slot_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the `GetUtterancesView' operation to get information
%% about the utterances that your users have made to your bot.
%%
%% You can use
%% this list to tune the utterances that your bot responds to.
%%
%% For example, say that you have created a bot to order flowers.
%% After your users have used your bot for a while, use the
%% `GetUtterancesView' operation to see the requests that they
%% have made and whether they have been successful. You might find that the
%% utterance &quot;I want flowers&quot; is not being recognized. You could
%% add this
%% utterance to the `OrderFlowers' intent so that your bot
%% recognizes that utterance.
%%
%% After you publish a new version of a bot, you can get information
%% about the old version and the new so that you can compare the performance
%% across the two versions.
%%
%% Utterance statistics are generated once a day. Data is available
%% for the last 15 days. You can request information for up to 5 versions of
%% your bot in each request. Amazon Lex returns the most frequent utterances
%% received by the bot in the last 15 days. The response contains information
%% about a maximum of 100 utterances for each version.
%%
%% If you set `childDirected' field to true when you
%% created your bot, if you are using slot obfuscation with one or more
%% slots, or if you opted out of participating in improving Amazon Lex,
%% utterances
%% are not available.
%%
%% This operation requires permissions for the
%% `lex:GetUtterancesView' action.
-spec get_utterances_view(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_utterances_view_response(), tuple()} |
    {error, any()} |
    {error, get_utterances_view_errors(), tuple()}.
get_utterances_view(Client, BotName, BotVersions, StatusType)
  when is_map(Client) ->
    get_utterances_view(Client, BotName, BotVersions, StatusType, #{}, #{}).

-spec get_utterances_view(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_utterances_view_response(), tuple()} |
    {error, any()} |
    {error, get_utterances_view_errors(), tuple()}.
get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap, []).

-spec get_utterances_view(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_utterances_view_response(), tuple()} |
    {error, any()} |
    {error, get_utterances_view_errors(), tuple()}.
get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/utterances?view=aggregation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"bot_versions">>, BotVersions},
        {<<"status_type">>, StatusType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of tags associated with the specified resource.
%%
%% Only bots,
%% bot aliases, and bot channels can have tags associated with them.
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

%% @doc Creates an Amazon Lex conversational bot or replaces an existing bot.
%%
%% When you create or update a bot you are only required to specify a name, a
%% locale, and whether the bot is directed toward children under age 13. You
%% can use this to add intents later, or to remove intents from an existing
%% bot. When you create a bot with the minimum information, the bot is
%% created or updated but Amazon Lex returns the `' response
%% `FAILED'. You can build the bot after you add one or more
%% intents. For more information about Amazon Lex bots, see
%% `how-it-works'.
%%
%% If you specify the name of an existing bot, the fields in the
%% request replace the existing values in the `$LATEST' version of
%% the bot. Amazon Lex removes any fields that you don't provide values
%% for in the
%% request, except for the `idleTTLInSeconds' and
%% `privacySettings' fields, which are set to their default
%% values. If you don't specify values for required fields, Amazon Lex
%% throws an
%% exception.
%%
%% This operation requires permissions for the `lex:PutBot'
%% action. For more information, see `security-iam'.
-spec put_bot(aws_client:aws_client(), binary() | list(), put_bot_request()) ->
    {ok, put_bot_response(), tuple()} |
    {error, any()} |
    {error, put_bot_errors(), tuple()}.
put_bot(Client, Name, Input) ->
    put_bot(Client, Name, Input, []).

-spec put_bot(aws_client:aws_client(), binary() | list(), put_bot_request(), proplists:proplist()) ->
    {ok, put_bot_response(), tuple()} |
    {error, any()} |
    {error, put_bot_errors(), tuple()}.
put_bot(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias for the specified version of the bot or replaces
%% an alias for the specified bot.
%%
%% To change the version of the bot that the
%% alias points to, replace the alias. For more information about aliases,
%% see `versioning-aliases'.
%%
%% This operation requires permissions for the
%% `lex:PutBotAlias' action.
-spec put_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), put_bot_alias_request()) ->
    {ok, put_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, put_bot_alias_errors(), tuple()}.
put_bot_alias(Client, BotName, Name, Input) ->
    put_bot_alias(Client, BotName, Name, Input, []).

-spec put_bot_alias(aws_client:aws_client(), binary() | list(), binary() | list(), put_bot_alias_request(), proplists:proplist()) ->
    {ok, put_bot_alias_response(), tuple()} |
    {error, any()} |
    {error, put_bot_alias_errors(), tuple()}.
put_bot_alias(Client, BotName, Name, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an intent or replaces an existing intent.
%%
%% To define the interaction between the user and your bot, you use
%% one or more intents. For a pizza ordering bot, for example, you would
%% create an `OrderPizza' intent.
%%
%% To create an intent or replace an existing intent, you must provide
%% the following:
%%
%% Intent name. For example, `OrderPizza'.
%%
%% Sample utterances. For example, &quot;Can I order a pizza, please.&quot;
%% and &quot;I want to order a pizza.&quot;
%%
%% Information to be gathered. You specify slot types for the
%% information that your bot will request from the user. You can specify
%% standard slot types, such as a date or a time, or custom slot types
%% such as the size and crust of a pizza.
%%
%% How the intent will be fulfilled. You can provide a Lambda
%% function or configure the intent to return the intent information to
%% the client application. If you use a Lambda function, when all of the
%% intent information is available, Amazon Lex invokes your Lambda function.
%% If you configure your intent to return the intent information to the
%% client application.
%%
%% You can specify other optional information in the request, such
%% as:
%%
%% A confirmation prompt to ask the user to confirm an intent. For
%% example, &quot;Shall I order your pizza?&quot;
%%
%% A conclusion statement to send to the user after the intent has
%% been fulfilled. For example, &quot;I placed your pizza order.&quot;
%%
%% A follow-up prompt that asks the user for additional activity.
%% For example, asking &quot;Do you want to order a drink with your
%% pizza?&quot;
%%
%% If you specify an existing intent name to update the intent, Amazon Lex
%% replaces the values in the `$LATEST' version of the intent with
%% the values in the request. Amazon Lex removes fields that you don't
%% provide in
%% the request. If you don't specify the required fields, Amazon Lex
%% throws an
%% exception. When you update the `$LATEST' version of an intent,
%% the `status' field of any bot that uses the
%% `$LATEST' version of the intent is set to
%% `NOT_BUILT'.
%%
%% For more information, see `how-it-works'.
%%
%% This operation requires permissions for the
%% `lex:PutIntent' action.
-spec put_intent(aws_client:aws_client(), binary() | list(), put_intent_request()) ->
    {ok, put_intent_response(), tuple()} |
    {error, any()} |
    {error, put_intent_errors(), tuple()}.
put_intent(Client, Name, Input) ->
    put_intent(Client, Name, Input, []).

-spec put_intent(aws_client:aws_client(), binary() | list(), put_intent_request(), proplists:proplist()) ->
    {ok, put_intent_response(), tuple()} |
    {error, any()} |
    {error, put_intent_errors(), tuple()}.
put_intent(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom slot type or replaces an existing custom slot
%% type.
%%
%% To create a custom slot type, specify a name for the slot type and
%% a set of enumeration values, which are the values that a slot of this type
%% can assume. For more information, see `how-it-works'.
%%
%% If you specify the name of an existing slot type, the fields in the
%% request replace the existing values in the `$LATEST' version of
%% the slot type. Amazon Lex removes the fields that you don't provide in
%% the
%% request. If you don't specify required fields, Amazon Lex throws an
%% exception.
%% When you update the `$LATEST' version of a slot type, if a bot
%% uses the `$LATEST' version of an intent that contains the slot
%% type, the bot's `status' field is set to
%% `NOT_BUILT'.
%%
%% This operation requires permissions for the
%% `lex:PutSlotType' action.
-spec put_slot_type(aws_client:aws_client(), binary() | list(), put_slot_type_request()) ->
    {ok, put_slot_type_response(), tuple()} |
    {error, any()} |
    {error, put_slot_type_errors(), tuple()}.
put_slot_type(Client, Name, Input) ->
    put_slot_type(Client, Name, Input, []).

-spec put_slot_type(aws_client:aws_client(), binary() | list(), put_slot_type_request(), proplists:proplist()) ->
    {ok, put_slot_type_response(), tuple()} |
    {error, any()} |
    {error, put_slot_type_errors(), tuple()}.
put_slot_type(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a job to import a resource to Amazon Lex.
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
    Method = post,
    Path = ["/imports"],
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

%% @doc Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2.
%%
%% Migrate your bot when
%% you want to take advantage of the new features of Amazon Lex V2.
%%
%% For more information, see Migrating a bot:
%% https://docs.aws.amazon.com/lex/latest/dg/migrate.html in the Amazon Lex
%% developer guide.
-spec start_migration(aws_client:aws_client(), start_migration_request()) ->
    {ok, start_migration_response(), tuple()} |
    {error, any()} |
    {error, start_migration_errors(), tuple()}.
start_migration(Client, Input) ->
    start_migration(Client, Input, []).

-spec start_migration(aws_client:aws_client(), start_migration_request(), proplists:proplist()) ->
    {ok, start_migration_response(), tuple()} |
    {error, any()} |
    {error, start_migration_errors(), tuple()}.
start_migration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/migrations"],
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
%% already exists, the existing value is replaced with the new value.
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

%% @doc Removes tags from a bot, bot alias or bot channel.
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
    Host = build_host(<<"models.lex">>, Client1),
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
