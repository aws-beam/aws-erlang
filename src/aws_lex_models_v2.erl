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
         get_test_execution_artifacts_url/2,
         get_test_execution_artifacts_url/4,
         get_test_execution_artifacts_url/5,
         list_aggregated_utterances/3,
         list_aggregated_utterances/4,
         list_bot_aliases/3,
         list_bot_aliases/4,
         list_bot_locales/4,
         list_bot_locales/5,
         list_bot_recommendations/5,
         list_bot_recommendations/6,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Create a batch of custom vocabulary items for a given bot
%% locale's custom vocabulary.
batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).
batch_create_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchcreate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a batch of custom vocabulary items for a given bot
%% locale's custom vocabulary.
batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).
batch_delete_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchdelete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a batch of custom vocabulary items for a given bot
%% locale's custom vocabulary.
batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input) ->
    batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input, []).
batch_update_custom_vocabulary_item(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/batchupdate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Builds a bot, its intents, and its slot types into a specific locale.
%%
%% A bot can be built into multiple locales. At runtime the locale is used to
%% choose a specific build of the bot.
build_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    build_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).
build_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Lex conversational bot.
create_bot(Client, Input) ->
    create_bot(Client, Input, []).
create_bot(Client, Input0, Options0) ->
    Method = put,
    Path = ["/bots/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias for the specified version of a bot.
%%
%% Use an alias to enable you to change the version of a bot without updating
%% applications that use the bot.
%%
%% For example, you can create an alias called &quot;PROD&quot; that your
%% applications use to call the Amazon Lex bot.
create_bot_alias(Client, BotId, Input) ->
    create_bot_alias(Client, BotId, Input, []).
create_bot_alias(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a locale in the bot.
%%
%% The locale contains the intents and slot types that the bot uses in
%% conversations with users in the specified language and locale. You must
%% add a locale to a bot before you can add intents and slot types to the
%% bot.
create_bot_locale(Client, BotId, BotVersion, Input) ->
    create_bot_locale(Client, BotId, BotVersion, Input, []).
create_bot_locale(Client, BotId, BotVersion, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the bot based on the `DRAFT' version.
%%
%% If the `DRAFT' version of this resource hasn't changed since you
%% created the last version, Amazon Lex doesn't create a new version, it
%% returns the last created version.
%%
%% When you create the first version of a bot, Amazon Lex sets the version to
%% 1. Subsequent versions increment by 1.
create_bot_version(Client, BotId, Input) ->
    create_bot_version(Client, BotId, Input, []).
create_bot_version(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% The archive contains a directory structure that contains JSON files that
%% define the bot.
%%
%% You can create an archive that contains the complete definition of a bot,
%% or you can specify that the archive contain only the definition of a
%% single bot locale.
%%
%% For more information about exporting bots, and about the structure of the
%% export archive, see Importing and exporting bots
create_export(Client, Input) ->
    create_export(Client, Input, []).
create_export(Client, Input0, Options0) ->
    Method = put,
    Path = ["/exports/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an intent.
%%
%% To define the interaction between the user and your bot, you define one or
%% more intents. For example, for a pizza ordering bot you would create an
%% `OrderPizza' intent.
%%
%% When you create an intent, you must provide a name. You can optionally
%% provide the following:
%%
%% <ul> <li> Sample utterances. For example, &quot;I want to order a
%% pizza&quot; and &quot;Can I order a pizza.&quot; You can't provide
%% utterances for built-in intents.
%%
%% </li> <li> Information to be gathered. You specify slots for the
%% information that you bot requests from the user. You can specify standard
%% slot types, such as date and time, or custom slot types for your
%% application.
%%
%% </li> <li> How the intent is fulfilled. You can provide a Lambda function
%% or configure the intent to return the intent information to your client
%% application. If you use a Lambda function, Amazon Lex invokes the function
%% when all of the intent information is available.
%%
%% </li> <li> A confirmation prompt to send to the user to confirm an intent.
%% For example, &quot;Shall I order your pizza?&quot;
%%
%% </li> <li> A conclusion statement to send to the user after the intent is
%% fulfilled. For example, &quot;I ordered your pizza.&quot;
%%
%% </li> <li> A follow-up prompt that asks the user for additional activity.
%% For example, &quot;Do you want a drink with your pizza?&quot;
%%
%% </li> </ul>
create_intent(Client, BotId, BotVersion, LocaleId, Input) ->
    create_intent(Client, BotId, BotVersion, LocaleId, Input, []).
create_intent(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new resource policy with the specified policy statements.
create_resource_policy(Client, ResourceArn, Input) ->
    create_resource_policy(Client, ResourceArn, Input, []).
create_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new resource policy statement to a bot or bot alias.
%%
%% If a resource policy exists, the statement is added to the current
%% resource policy. If a policy doesn't exist, a new policy is created.
%%
%% You can't create a resource policy statement that allows cross-account
%% access.
create_resource_policy_statement(Client, ResourceArn, Input) ->
    create_resource_policy_statement(Client, ResourceArn, Input, []).
create_resource_policy_statement(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/statements/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% A slot is a variable needed to fulfill an intent. For example, an
%% `OrderPizza' intent might need slots for size, crust, and number of
%% pizzas. For each slot, you define one or more utterances that Amazon Lex
%% uses to elicit a response from the user.
create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
create_slot(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom slot type
%%
%% To create a custom slot type, specify a name for the slot type and a set
%% of enumeration values, the values that a slot of this type can assume.
create_slot_type(Client, BotId, BotVersion, LocaleId, Input) ->
    create_slot_type(Client, BotId, BotVersion, LocaleId, Input, []).
create_slot_type(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a report that describes the differences between the bot and
%% the test set.
create_test_set_discrepancy_report(Client, TestSetId, Input) ->
    create_test_set_discrepancy_report(Client, TestSetId, Input, []).
create_test_set_discrepancy_report(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/testsetdiscrepancy"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a pre-signed S3 write URL that you use to upload the zip archive
%% when importing a bot or a bot locale.
create_upload_url(Client, Input) ->
    create_upload_url(Client, Input, []).
create_upload_url(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createuploadurl/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of a bot, including the `Draft' version.
%%
%% To delete a specific version, use the `DeleteBotVersion' operation.
%%
%% When you delete a bot, all of the resources contained in the bot are also
%% deleted. Deleting a bot removes all locales, intents, slot, and slot types
%% defined for the bot.
%%
%% If a bot has an alias, the `DeleteBot' operation returns a
%% `ResourceInUseException' exception. If you want to delete the bot and
%% the alias, set the `skipResourceInUseCheck' parameter to `true'.
delete_bot(Client, BotId, Input) ->
    delete_bot(Client, BotId, Input, []).
delete_bot(Client, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_bot_alias(Client, BotAliasId, BotId, Input) ->
    delete_bot_alias(Client, BotAliasId, BotId, Input, []).
delete_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% When you delete a locale, all intents, slots, and slot types defined for
%% the locale are also deleted.
delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).
delete_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version of a bot.
%%
%% To delete all versions of a bot, use the DeleteBot operation.
delete_bot_version(Client, BotId, BotVersion, Input) ->
    delete_bot_version(Client, BotId, BotVersion, Input, []).
delete_bot_version(Client, BotId, BotVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a custom vocabulary from the specified locale in the
%% specified bot.
delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input) ->
    delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input, []).
delete_custom_vocabulary(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a previous export and the associated files stored in an S3
%% bucket.
delete_export(Client, ExportId, Input) ->
    delete_export(Client, ExportId, Input, []).
delete_export(Client, ExportId, Input0, Options0) ->
    Method = delete,
    Path = ["/exports/", aws_util:encode_uri(ExportId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a previous import and the associated file stored in an S3
%% bucket.
delete_import(Client, ImportId, Input) ->
    delete_import(Client, ImportId, Input, []).
delete_import(Client, ImportId, Input0, Options0) ->
    Method = delete,
    Path = ["/imports/", aws_util:encode_uri(ImportId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified intent.
%%
%% Deleting an intent also deletes the slots associated with the intent.
delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
delete_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an existing policy from a bot or bot alias.
%%
%% If the resource doesn't have a policy attached, Amazon Lex returns an
%% exception.
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If you delete the last statement from a policy, the policy is deleted. If
%% you specify a statement ID that doesn't exist in the policy, or if the
%% bot or bot alias doesn't have a policy attached, Amazon Lex returns an
%% exception.
delete_resource_policy_statement(Client, ResourceArn, StatementId, Input) ->
    delete_resource_policy_statement(Client, ResourceArn, StatementId, Input, []).
delete_resource_policy_statement(Client, ResourceArn, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/statements/", aws_util:encode_uri(StatementId), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% `ResourceInUseException' exception. To avoid the exception, set the
%% `skipResourceInUseCheck' parameter to `true'.
delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input) ->
    delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input, []).
delete_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_test_set(Client, TestSetId, Input) ->
    delete_test_set(Client, TestSetId, Input, []).
delete_test_set(Client, TestSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% are stored for 15 days for use with the ListAggregatedUtterances
%% operation, and then stored indefinitely for use in improving the ability
%% of your bot to respond to user input..
%%
%% Use the `DeleteUtterances' operation to manually delete utterances for
%% a specific session. When you use the `DeleteUtterances' operation,
%% utterances stored for improving your bot's ability to respond to user
%% input are deleted immediately. Utterances stored for use with the
%% `ListAggregatedUtterances' operation are deleted after 15 days.
delete_utterances(Client, BotId, Input) ->
    delete_utterances(Client, BotId, Input, []).
delete_utterances(Client, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/utterances/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
describe_bot(Client, BotId)
  when is_map(Client) ->
    describe_bot(Client, BotId, #{}, #{}).

describe_bot(Client, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot(Client, BotId, QueryMap, HeadersMap, []).

describe_bot(Client, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a specific bot alias.
describe_bot_alias(Client, BotAliasId, BotId)
  when is_map(Client) ->
    describe_bot_alias(Client, BotAliasId, BotId, #{}, #{}).

describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap, []).

describe_bot_alias(Client, BotAliasId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the settings that a bot has for a specific locale.
describe_bot_locale(Client, BotId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_bot_locale(Client, BotId, BotVersion, LocaleId, #{}, #{}).

describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

describe_bot_locale(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata information about a bot recommendation.
%%
%% This information will enable you to get a description on the request
%% inputs, to download associated transcripts after processing is complete,
%% and to download intents and slot-types generated by the bot
%% recommendation.
describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, #{}, #{}).

describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

describe_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata about a version of a bot.
describe_bot_version(Client, BotId, BotVersion)
  when is_map(Client) ->
    describe_bot_version(Client, BotId, BotVersion, #{}, #{}).

describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap, []).

describe_bot_version(Client, BotId, BotVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides metadata information about a custom vocabulary.
describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId)
  when is_map(Client) ->
    describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, #{}, #{}).

describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, []).

describe_custom_vocabulary_metadata(Client, BotId, BotVersion, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/metadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific export.
describe_export(Client, ExportId)
  when is_map(Client) ->
    describe_export(Client, ExportId, #{}, #{}).

describe_export(Client, ExportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_export(Client, ExportId, QueryMap, HeadersMap, []).

describe_export(Client, ExportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exports/", aws_util:encode_uri(ExportId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific import.
describe_import(Client, ImportId)
  when is_map(Client) ->
    describe_import(Client, ImportId, #{}, #{}).

describe_import(Client, ImportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_import(Client, ImportId, QueryMap, HeadersMap, []).

describe_import(Client, ImportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/imports/", aws_util:encode_uri(ImportId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about an intent.
describe_intent(Client, BotId, BotVersion, IntentId, LocaleId)
  when is_map(Client) ->
    describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, #{}, #{}).

describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap, []).

describe_intent(Client, BotId, BotVersion, IntentId, LocaleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource policy and policy revision for a bot or bot alias.
describe_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    describe_resource_policy(Client, ResourceArn, #{}, #{}).

describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

describe_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about a slot.
describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId)
  when is_map(Client) ->
    describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, #{}, #{}).

describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap, []).

describe_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about a slot type.
describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId)
  when is_map(Client) ->
    describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, #{}, #{}).

describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap, []).

describe_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test execution.
describe_test_execution(Client, TestExecutionId)
  when is_map(Client) ->
    describe_test_execution(Client, TestExecutionId, #{}, #{}).

describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap, []).

describe_test_execution(Client, TestExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set.
describe_test_set(Client, TestSetId)
  when is_map(Client) ->
    describe_test_set(Client, TestSetId, #{}, #{}).

describe_test_set(Client, TestSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set(Client, TestSetId, QueryMap, HeadersMap, []).

describe_test_set(Client, TestSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set discrepancy report.
describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId)
  when is_map(Client) ->
    describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, #{}, #{}).

describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap, []).

describe_test_set_discrepancy_report(Client, TestSetDiscrepancyReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsetdiscrepancy/", aws_util:encode_uri(TestSetDiscrepancyReportId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets metadata information about the test set generation.
describe_test_set_generation(Client, TestSetGenerationId)
  when is_map(Client) ->
    describe_test_set_generation(Client, TestSetGenerationId, #{}, #{}).

describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap, []).

describe_test_set_generation(Client, TestSetGenerationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsetgenerations/", aws_util:encode_uri(TestSetGenerationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The pre-signed Amazon S3 URL to download the test execution result
%% artifacts.
get_test_execution_artifacts_url(Client, TestExecutionId)
  when is_map(Client) ->
    get_test_execution_artifacts_url(Client, TestExecutionId, #{}, #{}).

get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap, []).

get_test_execution_artifacts_url(Client, TestExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), "/artifacturl"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of utterances that users have sent to the bot.
%%
%% Utterances are aggregated by the text of the utterance. For example, all
%% instances where customers used the phrase &quot;I want to order
%% pizza&quot; are aggregated into the same line in the response.
%%
%% You can see both detected utterances and missed utterances. A detected
%% utterance is where the bot properly recognized the utterance and activated
%% the associated intent. A missed utterance was not recognized by the bot
%% and didn't activate an intent.
%%
%% Utterances can be aggregated for a bot alias or for a bot version, but not
%% both at the same time.
%%
%% Utterances statistics are not generated under the following conditions:
%%
%% <ul> <li> The `childDirected' field was set to true when the bot was
%% created.
%%
%% </li> <li> You are using slot obfuscation with one or more slots.
%%
%% </li> <li> You opted out of participating in improving Amazon Lex.
%%
%% </li> </ul>
list_aggregated_utterances(Client, BotId, Input) ->
    list_aggregated_utterances(Client, BotId, Input, []).
list_aggregated_utterances(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/aggregatedutterances/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of aliases for the specified bot.
list_bot_aliases(Client, BotId, Input) ->
    list_bot_aliases(Client, BotId, Input, []).
list_bot_aliases(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of locales for the specified bot.
list_bot_locales(Client, BotId, BotVersion, Input) ->
    list_bot_locales(Client, BotId, BotVersion, Input, []).
list_bot_locales(Client, BotId, BotVersion, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a list of bot recommendations that meet the specified criteria.
list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input) ->
    list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input, []).
list_bot_recommendations(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of a bot.
%%
%% The `ListBotVersions' operation returns a summary of each version of a
%% bot. For example, if a bot has three numbered versions, the
%% `ListBotVersions' operation returns for summaries, one for each
%% numbered version and one for the `DRAFT' version.
%%
%% The `ListBotVersions' operation always returns at least one version,
%% the `DRAFT' version.
list_bot_versions(Client, BotId, Input) ->
    list_bot_versions(Client, BotId, Input, []).
list_bot_versions(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of available bots.
list_bots(Client, Input) ->
    list_bots(Client, Input, []).
list_bots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/bots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in intents provided by Amazon Lex that you can
%% use in your bot.
%%
%% To use a built-in intent as a the base for your own intent, include the
%% built-in intent signature in the `parentIntentSignature' parameter
%% when you call the `CreateIntent' operation. For more information, see
%% CreateIntent.
list_built_in_intents(Client, LocaleId, Input) ->
    list_built_in_intents(Client, LocaleId, Input, []).
list_built_in_intents(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in slot types that meet the specified criteria.
list_built_in_slot_types(Client, LocaleId, Input) ->
    list_built_in_slot_types(Client, LocaleId, Input, []).
list_built_in_slot_types(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Paginated list of custom vocabulary items for a given bot
%% locale's custom vocabulary.
list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input) ->
    list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input, []).
list_custom_vocabulary_items(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/customvocabulary/DEFAULT/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
list_exports(Client, Input) ->
    list_exports(Client, Input, []).
list_exports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/exports/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
list_imports(Client, Input) ->
    list_imports(Client, Input, []).
list_imports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/imports/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% <ul> <li> `metrics' – A list of AnalyticsIntentMetric objects. In each
%% object, use the `name' field to specify the metric to calculate, the
%% `statistic' field to specify whether to calculate the `Sum',
%% `Average', or `Max' number, and the `order' field to specify
%% whether to sort the results in `Ascending' or `Descending' order.
%%
%% </li> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> </ul> Of the optional fields, you can organize the results in the
%% following ways:
%%
%% <ul> <li> Use the `filters' field to filter the results, the
%% `groupBy' field to specify categories by which to group the results,
%% and the `binBy' field to specify time intervals by which to group the
%% results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul> Note that an `order' field exists in both `binBy' and
%% `metrics'. You can specify only one `order' in a given request.
list_intent_metrics(Client, BotId, Input) ->
    list_intent_metrics(Client, BotId, Input, []).
list_intent_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentmetrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% <ul> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> <li> `intentPath' – Define an order of intents for which you
%% want to retrieve metrics. Separate intents in the path with a forward
%% slash. For example, populate the `intentPath' field with
%% `/BookCar/BookHotel' to see details about how many times users invoked
%% the `BookCar' and `BookHotel' intents in that order.
%%
%% </li> </ul> Use the optional `filters' field to filter the results.
list_intent_paths(Client, BotId, Input) ->
    list_intent_paths(Client, BotId, Input, []).
list_intent_paths(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentpaths"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% <ul> <li> `metrics' – A list of AnalyticsIntentStageMetric objects. In
%% each object, use the `name' field to specify the metric to calculate,
%% the `statistic' field to specify whether to calculate the `Sum',
%% `Average', or `Max' number, and the `order' field to specify
%% whether to sort the results in `Ascending' or `Descending' order.
%%
%% </li> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> </ul> Of the optional fields, you can organize the results in the
%% following ways:
%%
%% <ul> <li> Use the `filters' field to filter the results, the
%% `groupBy' field to specify categories by which to group the results,
%% and the `binBy' field to specify time intervals by which to group the
%% results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul> Note that an `order' field exists in both `binBy' and
%% `metrics'. You can only specify one `order' in a given request.
list_intent_stage_metrics(Client, BotId, Input) ->
    list_intent_stage_metrics(Client, BotId, Input, []).
list_intent_stage_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/intentstagemetrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a list of intents that meet the specified criteria.
list_intents(Client, BotId, BotVersion, LocaleId, Input) ->
    list_intents(Client, BotId, BotVersion, LocaleId, Input, []).
list_intents(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of recommended intents provided by the bot recommendation
%% that you can use in your bot.
%%
%% Intents in the response are ordered by relevance.
list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).
list_recommended_intents(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/intents"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% <ul> <li> Use the `filters' field to filter the results and the
%% `sortBy' field to specify the values by which to sort the results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul>
list_session_analytics_data(Client, BotId, Input) ->
    list_session_analytics_data(Client, BotId, Input, []).
list_session_analytics_data(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/sessions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% <ul> <li> `metrics' – A list of AnalyticsSessionMetric objects. In
%% each object, use the `name' field to specify the metric to calculate,
%% the `statistic' field to specify whether to calculate the `Sum',
%% `Average', or `Max' number, and the `order' field to specify
%% whether to sort the results in `Ascending' or `Descending' order.
%%
%% </li> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> </ul> Of the optional fields, you can organize the results in the
%% following ways:
%%
%% <ul> <li> Use the `filters' field to filter the results, the
%% `groupBy' field to specify categories by which to group the results,
%% and the `binBy' field to specify time intervals by which to group the
%% results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul> Note that an `order' field exists in both `binBy' and
%% `metrics'. Currently, you can specify it in either field, but not in
%% both.
list_session_metrics(Client, BotId, Input) ->
    list_session_metrics(Client, BotId, Input, []).
list_session_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/sessionmetrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slot types that match the specified criteria.
list_slot_types(Client, BotId, BotVersion, LocaleId, Input) ->
    list_slot_types(Client, BotId, BotVersion, LocaleId, Input, []).
list_slot_types(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slots that match the specified criteria.
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of tags associated with a resource.
%%
%% Only bots, bot aliases, and bot channels can have tags associated with
%% them.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of test execution result items.
list_test_execution_result_items(Client, TestExecutionId, Input) ->
    list_test_execution_result_items(Client, TestExecutionId, Input, []).
list_test_execution_result_items(Client, TestExecutionId, Input0, Options0) ->
    Method = post,
    Path = ["/testexecutions/", aws_util:encode_uri(TestExecutionId), "/results"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of test set executions.
list_test_executions(Client, Input) ->
    list_test_executions(Client, Input, []).
list_test_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testexecutions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of test set records.
list_test_set_records(Client, TestSetId, Input) ->
    list_test_set_records(Client, TestSetId, Input, []).
list_test_set_records(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/records"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The list of the test sets
list_test_sets(Client, Input) ->
    list_test_sets(Client, Input, []).
list_test_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testsets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc To use this API operation, your IAM role must have permissions to
%% perform the ListAggregatedUtterances operation, which provides access to
%% utterance-related analytics.
%%
%% See Viewing utterance statistics for the IAM policy to apply to the IAM
%% role.
%%
%% Retrieves a list of metadata for individual user utterances to your bot.
%% The following fields are required:
%%
%% <ul> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> </ul> Of the optional fields, you can organize the results in the
%% following ways:
%%
%% <ul> <li> Use the `filters' field to filter the results and the
%% `sortBy' field to specify the values by which to sort the results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul>
list_utterance_analytics_data(Client, BotId, Input) ->
    list_utterance_analytics_data(Client, BotId, Input, []).
list_utterance_analytics_data(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/utterances"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc To use this API operation, your IAM role must have permissions to
%% perform the ListAggregatedUtterances operation, which provides access to
%% utterance-related analytics.
%%
%% See Viewing utterance statistics for the IAM policy to apply to the IAM
%% role.
%%
%% Retrieves summary metrics for the utterances in your bot. The following
%% fields are required:
%%
%% <ul> <li> `metrics' – A list of AnalyticsUtteranceMetric objects. In
%% each object, use the `name' field to specify the metric to calculate,
%% the `statistic' field to specify whether to calculate the `Sum',
%% `Average', or `Max' number, and the `order' field to specify
%% whether to sort the results in `Ascending' or `Descending' order.
%%
%% </li> <li> `startDateTime' and `endDateTime' – Define a time range
%% for which you want to retrieve results.
%%
%% </li> </ul> Of the optional fields, you can organize the results in the
%% following ways:
%%
%% <ul> <li> Use the `filters' field to filter the results, the
%% `groupBy' field to specify categories by which to group the results,
%% and the `binBy' field to specify time intervals by which to group the
%% results.
%%
%% </li> <li> Use the `maxResults' field to limit the number of results
%% to return in a single response and the `nextToken' field to return the
%% next batch of results if the response does not return the full set of
%% results.
%%
%% </li> </ul> Note that an `order' field exists in both `binBy' and
%% `metrics'. Currently, you can specify it in either field, but not in
%% both.
list_utterance_metrics(Client, BotId, Input) ->
    list_utterance_metrics(Client, BotId, Input, []).
list_utterance_metrics(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/analytics/utterancemetrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Search for associated transcripts that meet the specified criteria.
search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).
search_associated_transcripts(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/associatedtranscripts"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this to provide your transcript data, and to start the bot
%% recommendation process.
start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input) ->
    start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input, []).
start_bot_recommendation(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts importing a bot, bot locale, or custom vocabulary from a zip
%% archive that you uploaded to an S3 bucket.
start_import(Client, Input) ->
    start_import(Client, Input, []).
start_import(Client, Input0, Options0) ->
    Method = put,
    Path = ["/imports/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The action to start test set execution.
start_test_execution(Client, TestSetId, Input) ->
    start_test_execution(Client, TestSetId, Input, []).
start_test_execution(Client, TestSetId, Input0, Options0) ->
    Method = post,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), "/testexecutions"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The action to start the generation of test set.
start_test_set_generation(Client, Input) ->
    start_test_set_generation(Client, Input, []).
start_test_set_generation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/testsetgenerations"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stop an already running Bot Recommendation request.
stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).
stop_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/stopbotrecommendation"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
%%
%% If a tag key already exists, the existing value is replaced with the new
%% value.
tag_resource(Client, ResourceARN, Input) ->
    tag_resource(Client, ResourceARN, Input, []).
tag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a bot, bot alias, or bot channel.
untag_resource(Client, ResourceARN, Input) ->
    untag_resource(Client, ResourceARN, Input, []).
untag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
update_bot(Client, BotId, Input) ->
    update_bot(Client, BotId, Input, []).
update_bot(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing bot alias.
update_bot_alias(Client, BotAliasId, BotId, Input) ->
    update_bot_alias(Client, BotAliasId, BotId, Input, []).
update_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings that a bot has for a specific locale.
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    update_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing bot recommendation request.
update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input) ->
    update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input, []).
update_bot_recommendation(Client, BotId, BotRecommendationId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/botrecommendations/", aws_util:encode_uri(BotRecommendationId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Lex generates a zip file that is not protected by a password. This is the
%% archive that is available at the pre-signed S3 URL provided by the
%% DescribeExport operation.
update_export(Client, ExportId, Input) ->
    update_export(Client, ExportId, Input, []).
update_export(Client, ExportId, Input0, Options0) ->
    Method = put,
    Path = ["/exports/", aws_util:encode_uri(ExportId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for an intent.
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If the policy doesn't exist, Amazon Lex returns an exception.
update_resource_policy(Client, ResourceArn, Input) ->
    update_resource_policy(Client, ResourceArn, Input, []).
update_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/policy/", aws_util:encode_uri(ResourceArn), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing slot type.
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input) ->
    update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input, []).
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The action to update the test set.
update_test_set(Client, TestSetId, Input) ->
    update_test_set(Client, TestSetId, Input, []).
update_test_set(Client, TestSetId, Input0, Options0) ->
    Method = put,
    Path = ["/testsets/", aws_util:encode_uri(TestSetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
