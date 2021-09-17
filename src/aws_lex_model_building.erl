%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lex Build-Time Actions
%%
%% Amazon Lex is an AWS service for building conversational voice and text
%% interfaces.
%%
%% Use these actions to create, update, and delete conversational bots for
%% new and existing client applications.
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
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new version of the bot based on the `$LATEST' version.
%%
%% If the `$LATEST' version of this resource hasn't changed since you created
%% the last version, Amazon Lex doesn't create a new version. It returns the
%% last created version.
%%
%% You can update only the `$LATEST' version of the bot. You can't update the
%% numbered versions that you create with the `CreateBotVersion' operation.
%%
%% When you create the first version of a bot, Amazon Lex sets the version to
%% 1. Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permission for the `lex:CreateBotVersion' action.
create_bot_version(Client, Name, Input) ->
    create_bot_version(Client, Name, Input, []).
create_bot_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of an intent based on the `$LATEST' version of
%% the intent.
%%
%% If the `$LATEST' version of this intent hasn't changed since you last
%% updated it, Amazon Lex doesn't create a new version. It returns the last
%% version you created.
%%
%% You can update only the `$LATEST' version of the intent. You can't update
%% the numbered versions that you create with the `CreateIntentVersion'
%% operation.
%%
%% When you create a version of an intent, Amazon Lex sets the version to 1.
%% Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permissions to perform the
%% `lex:CreateIntentVersion' action.
create_intent_version(Client, Name, Input) ->
    create_intent_version(Client, Name, Input, []).
create_intent_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of a slot type based on the `$LATEST' version
%% of the specified slot type.
%%
%% If the `$LATEST' version of this resource has not changed since the last
%% version that you created, Amazon Lex doesn't create a new version. It
%% returns the last version that you created.
%%
%% You can update only the `$LATEST' version of a slot type. You can't update
%% the numbered versions that you create with the `CreateSlotTypeVersion'
%% operation.
%%
%% When you create a version of a slot type, Amazon Lex sets the version to
%% 1. Subsequent versions increment by 1. For more information, see
%% `versioning-intro'.
%%
%% This operation requires permissions for the `lex:CreateSlotTypeVersion'
%% action.
create_slot_type_version(Client, Name, Input) ->
    create_slot_type_version(Client, Name, Input, []).
create_slot_type_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of the bot, including the `$LATEST' version.
%%
%% To delete a specific version of the bot, use the `DeleteBotVersion'
%% operation. The `DeleteBot' operation doesn't immediately remove the bot
%% schema. Instead, it is marked for deletion and removed later.
%%
%% Amazon Lex stores utterances indefinitely for improving the ability of
%% your bot to respond to user inputs. These utterances are not removed when
%% the bot is deleted. To remove the utterances, use the `DeleteUtterances'
%% operation.
%%
%% If a bot has an alias, you can't delete it. Instead, the `DeleteBot'
%% operation returns a `ResourceInUseException' exception that includes a
%% reference to the alias that refers to the bot. To remove the reference to
%% the bot, delete the alias. If you get the same exception again, delete the
%% referring alias until the `DeleteBot' operation is successful.
%%
%% This operation requires permissions for the `lex:DeleteBot' action.
delete_bot(Client, Name, Input) ->
    delete_bot(Client, Name, Input, []).
delete_bot(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an alias for the specified bot.
%%
%% You can't delete an alias that is used in the association between a bot
%% and a messaging channel. If an alias is used in a channel association, the
%% `DeleteBot' operation returns a `ResourceInUseException' exception that
%% includes a reference to the channel association that refers to the bot.
%% You can remove the reference to the alias by deleting the channel
%% association. If you get the same exception again, delete the referring
%% association until the `DeleteBotAlias' operation is successful.
delete_bot_alias(Client, BotName, Name, Input) ->
    delete_bot_alias(Client, BotName, Name, Input, []).
delete_bot_alias(Client, BotName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_bot_channel_association(Client, BotAlias, BotName, Name, Input) ->
    delete_bot_channel_association(Client, BotAlias, BotName, Name, Input, []).
delete_bot_channel_association(Client, BotAlias, BotName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% To delete all versions of a bot, use the `DeleteBot' operation.
%%
%% This operation requires permissions for the `lex:DeleteBotVersion' action.
delete_bot_version(Client, Name, Version, Input) ->
    delete_bot_version(Client, Name, Version, Input, []).
delete_bot_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of the intent, including the `$LATEST' version.
%%
%% To delete a specific version of the intent, use the `DeleteIntentVersion'
%% operation.
%%
%% You can delete a version of an intent only if it is not referenced. To
%% delete an intent that is referred to in one or more bots (see
%% `how-it-works'), you must remove those references first.
%%
%% If you get the `ResourceInUseException' exception, it provides an example
%% reference that shows where the intent is referenced. To remove the
%% reference to the intent, either update the bot or delete it. If you get
%% the same exception when you attempt to delete the intent again, repeat
%% until the intent has no references and the call to `DeleteIntent' is
%% successful.
%%
%% This operation requires permission for the `lex:DeleteIntent' action.
delete_intent(Client, Name, Input) ->
    delete_intent(Client, Name, Input, []).
delete_intent(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/intents/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version of an intent.
%%
%% To delete all versions of a intent, use the `DeleteIntent' operation.
%%
%% This operation requires permissions for the `lex:DeleteIntentVersion'
%% action.
delete_intent_version(Client, Name, Version, Input) ->
    delete_intent_version(Client, Name, Version, Input, []).
delete_intent_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of the slot type, including the `$LATEST'
%% version.
%%
%% To delete a specific version of the slot type, use the
%% `DeleteSlotTypeVersion' operation.
%%
%% You can delete a version of a slot type only if it is not referenced. To
%% delete a slot type that is referred to in one or more intents, you must
%% remove those references first.
%%
%% If you get the `ResourceInUseException' exception, the exception provides
%% an example reference that shows the intent where the slot type is
%% referenced. To remove the reference to the slot type, either update the
%% intent or delete it. If you get the same exception when you attempt to
%% delete the slot type again, repeat until the slot type has no references
%% and the `DeleteSlotType' call is successful.
%%
%% This operation requires permission for the `lex:DeleteSlotType' action.
delete_slot_type(Client, Name, Input) ->
    delete_slot_type(Client, Name, Input, []).
delete_slot_type(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/slottypes/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version of a slot type.
%%
%% To delete all versions of a slot type, use the `DeleteSlotType' operation.
%%
%% This operation requires permissions for the `lex:DeleteSlotTypeVersion'
%% action.
delete_slot_type_version(Client, Name, Version, Input) ->
    delete_slot_type_version(Client, Name, Version, Input, []).
delete_slot_type_version(Client, Name, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/version/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% are stored for 15 days for use with the `GetUtterancesView' operation, and
%% then stored indefinitely for use in improving the ability of your bot to
%% respond to user input.
%%
%% Use the `DeleteUtterances' operation to manually delete stored utterances
%% for a specific user. When you use the `DeleteUtterances' operation,
%% utterances stored for improving your bot's ability to respond to user
%% input are deleted immediately. Utterances stored for use with the
%% `GetUtterancesView' operation are deleted after 15 days.
%%
%% This operation requires permissions for the `lex:DeleteUtterances' action.
delete_utterances(Client, BotName, UserId, Input) ->
    delete_utterances(Client, BotName, UserId, Input, []).
delete_utterances(Client, BotName, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/utterances/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns metadata information for a specific bot.
%%
%% You must provide the bot name and the bot version or alias.
%%
%% This operation requires permissions for the `lex:GetBot' action.
get_bot(Client, Name, VersionOrAlias)
  when is_map(Client) ->
    get_bot(Client, Name, VersionOrAlias, #{}, #{}).

get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap, []).

get_bot(Client, Name, VersionOrAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(VersionOrAlias), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an Amazon Lex bot alias.
%%
%% For more information about aliases, see `versioning-aliases'.
%%
%% This operation requires permissions for the `lex:GetBotAlias' action.
get_bot_alias(Client, BotName, Name)
  when is_map(Client) ->
    get_bot_alias(Client, BotName, Name, #{}, #{}).

get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap, []).

get_bot_alias(Client, BotName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of aliases for a specified Amazon Lex bot.
%%
%% This operation requires permissions for the `lex:GetBotAliases' action.
get_bot_aliases(Client, BotName)
  when is_map(Client) ->
    get_bot_aliases(Client, BotName, #{}, #{}).

get_bot_aliases(Client, BotName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_aliases(Client, BotName, QueryMap, HeadersMap, []).

get_bot_aliases(Client, BotName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% and a messaging platform.
%%
%% This operation requires permissions for the `lex:GetBotChannelAssociation'
%% action.
get_bot_channel_association(Client, BotAlias, BotName, Name)
  when is_map(Client) ->
    get_bot_channel_association(Client, BotAlias, BotName, Name, #{}, #{}).

get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap, []).

get_bot_channel_association(Client, BotAlias, BotName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the channels associated with the specified
%% bot.
%%
%% The `GetBotChannelAssociations' operation requires permissions for the
%% `lex:GetBotChannelAssociations' action.
get_bot_channel_associations(Client, BotAlias, BotName)
  when is_map(Client) ->
    get_bot_channel_associations(Client, BotAlias, BotName, #{}, #{}).

get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap, []).

get_bot_channel_associations(Client, BotAlias, BotName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(BotAlias), "/channels/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% The `GetBotVersions' operation returns a `BotMetadata' object for each
%% version of a bot. For example, if a bot has three numbered versions, the
%% `GetBotVersions' operation returns four `BotMetadata' objects in the
%% response, one for each numbered version and one for the `$LATEST' version.
%%
%% The `GetBotVersions' operation always returns at least one version, the
%% `$LATEST' version.
%%
%% This operation requires permissions for the `lex:GetBotVersions' action.
get_bot_versions(Client, Name)
  when is_map(Client) ->
    get_bot_versions(Client, Name, #{}, #{}).

get_bot_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot_versions(Client, Name, QueryMap, HeadersMap, []).

get_bot_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% <ul> <li> If you provide the `nameContains' field, the response includes
%% information for the `$LATEST' version of all bots whose name contains the
%% specified string.
%%
%% </li> <li> If you don't specify the `nameContains' field, the operation
%% returns information about the `$LATEST' version of all of your bots.
%%
%% </li> </ul> This operation requires permission for the `lex:GetBots'
%% action.
get_bots(Client)
  when is_map(Client) ->
    get_bots(Client, #{}, #{}).

get_bots(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bots(Client, QueryMap, HeadersMap, []).

get_bots(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% This operation requires permission for the `lex:GetBuiltinIntent' action.
get_builtin_intent(Client, Signature)
  when is_map(Client) ->
    get_builtin_intent(Client, Signature, #{}, #{}).

get_builtin_intent(Client, Signature, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_intent(Client, Signature, QueryMap, HeadersMap, []).

get_builtin_intent(Client, Signature, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/intents/", aws_util:encode_uri(Signature), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of built-in intents that meet the specified criteria.
%%
%% This operation requires permission for the `lex:GetBuiltinIntents' action.
get_builtin_intents(Client)
  when is_map(Client) ->
    get_builtin_intents(Client, #{}, #{}).

get_builtin_intents(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_intents(Client, QueryMap, HeadersMap, []).

get_builtin_intents(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets a list of built-in slot types that meet the specified criteria.
%%
%% For a list of built-in slot types, see Slot Type Reference in the Alexa
%% Skills Kit.
%%
%% This operation requires permission for the `lex:GetBuiltInSlotTypes'
%% action.
get_builtin_slot_types(Client)
  when is_map(Client) ->
    get_builtin_slot_types(Client, #{}, #{}).

get_builtin_slot_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_builtin_slot_types(Client, QueryMap, HeadersMap, []).

get_builtin_slot_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/builtins/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_export(Client, ExportType, Name, ResourceType, Version)
  when is_map(Client) ->
    get_export(Client, ExportType, Name, ResourceType, Version, #{}, #{}).

get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap, []).

get_export(Client, ExportType, Name, ResourceType, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/exports/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets information about an import job started with the `StartImport'
%% operation.
get_import(Client, ImportId)
  when is_map(Client) ->
    get_import(Client, ImportId, #{}, #{}).

get_import(Client, ImportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import(Client, ImportId, QueryMap, HeadersMap, []).

get_import(Client, ImportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/imports/", aws_util:encode_uri(ImportId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an intent.
%%
%% In addition to the intent name, you must specify the intent version.
%%
%% This operation requires permissions to perform the `lex:GetIntent' action.
get_intent(Client, Name, Version)
  when is_map(Client) ->
    get_intent(Client, Name, Version, #{}, #{}).

get_intent(Client, Name, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intent(Client, Name, Version, QueryMap, HeadersMap, []).

get_intent(Client, Name, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of an intent.
%%
%% The `GetIntentVersions' operation returns an `IntentMetadata' object for
%% each version of an intent. For example, if an intent has three numbered
%% versions, the `GetIntentVersions' operation returns four `IntentMetadata'
%% objects in the response, one for each numbered version and one for the
%% `$LATEST' version.
%%
%% The `GetIntentVersions' operation always returns at least one version, the
%% `$LATEST' version.
%%
%% This operation requires permissions for the `lex:GetIntentVersions'
%% action.
get_intent_versions(Client, Name)
  when is_map(Client) ->
    get_intent_versions(Client, Name, #{}, #{}).

get_intent_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intent_versions(Client, Name, QueryMap, HeadersMap, []).

get_intent_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% <ul> <li> If you specify the `nameContains' field, returns the `$LATEST'
%% version of all intents that contain the specified string.
%%
%% </li> <li> If you don't specify the `nameContains' field, returns
%% information about the `$LATEST' version of all intents.
%%
%% </li> </ul> The operation requires permission for the `lex:GetIntents'
%% action.
get_intents(Client)
  when is_map(Client) ->
    get_intents(Client, #{}, #{}).

get_intents(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_intents(Client, QueryMap, HeadersMap, []).

get_intents(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific version of a slot type.
%%
%% In addition to specifying the slot type name, you must specify the slot
%% type version.
%%
%% This operation requires permissions for the `lex:GetSlotType' action.
get_slot_type(Client, Name, Version)
  when is_map(Client) ->
    get_slot_type(Client, Name, Version, #{}, #{}).

get_slot_type(Client, Name, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_type(Client, Name, Version, QueryMap, HeadersMap, []).

get_slot_type(Client, Name, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all versions of a slot type.
%%
%% The `GetSlotTypeVersions' operation returns a `SlotTypeMetadata' object
%% for each version of a slot type. For example, if a slot type has three
%% numbered versions, the `GetSlotTypeVersions' operation returns four
%% `SlotTypeMetadata' objects in the response, one for each numbered version
%% and one for the `$LATEST' version.
%%
%% The `GetSlotTypeVersions' operation always returns at least one version,
%% the `$LATEST' version.
%%
%% This operation requires permissions for the `lex:GetSlotTypeVersions'
%% action.
get_slot_type_versions(Client, Name)
  when is_map(Client) ->
    get_slot_type_versions(Client, Name, #{}, #{}).

get_slot_type_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_type_versions(Client, Name, QueryMap, HeadersMap, []).

get_slot_type_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% <ul> <li> If you specify the `nameContains' field, returns the `$LATEST'
%% version of all slot types that contain the specified string.
%%
%% </li> <li> If you don't specify the `nameContains' field, returns
%% information about the `$LATEST' version of all slot types.
%%
%% </li> </ul> The operation requires permission for the `lex:GetSlotTypes'
%% action.
get_slot_types(Client)
  when is_map(Client) ->
    get_slot_types(Client, #{}, #{}).

get_slot_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_slot_types(Client, QueryMap, HeadersMap, []).

get_slot_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the `GetUtterancesView' operation to get information about the
%% utterances that your users have made to your bot.
%%
%% You can use this list to tune the utterances that your bot responds to.
%%
%% For example, say that you have created a bot to order flowers. After your
%% users have used your bot for a while, use the `GetUtterancesView'
%% operation to see the requests that they have made and whether they have
%% been successful. You might find that the utterance "I want flowers" is not
%% being recognized. You could add this utterance to the `OrderFlowers'
%% intent so that your bot recognizes that utterance.
%%
%% After you publish a new version of a bot, you can get information about
%% the old version and the new so that you can compare the performance across
%% the two versions.
%%
%% Utterance statistics are generated once a day. Data is available for the
%% last 15 days. You can request information for up to 5 versions of your bot
%% in each request. Amazon Lex returns the most frequent utterances received
%% by the bot in the last 15 days. The response contains information about a
%% maximum of 100 utterances for each version.
%%
%% If you set `childDirected' field to true when you created your bot, or if
%% you opted out of participating in improving Amazon Lex, utterances are not
%% available.
%%
%% This operation requires permissions for the `lex:GetUtterancesView'
%% action.
get_utterances_view(Client, BotName, BotVersions, StatusType)
  when is_map(Client) ->
    get_utterances_view(Client, BotName, BotVersions, StatusType, #{}, #{}).

get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap, []).

get_utterances_view(Client, BotName, BotVersions, StatusType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotName), "/utterances?view=aggregation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Only bots, bot aliases, and bot channels can have tags associated with
%% them.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an Amazon Lex conversational bot or replaces an existing bot.
%%
%% When you create or update a bot you are only required to specify a name, a
%% locale, and whether the bot is directed toward children under age 13. You
%% can use this to add intents later, or to remove intents from an existing
%% bot. When you create a bot with the minimum information, the bot is
%% created or updated but Amazon Lex returns the ` response `FAILED'. You can
%% build the bot after you add one or more intents. For more information
%% about Amazon Lex bots, see `how-it-works'. '
%%
%% ```
%% If you specify the name of an existing bot, the fields in the request
%% replace the existing values in the `$LATEST' version of the bot. Amazon
%% Lex removes any fields that you don't provide values for in the request,
%% except for the `idleTTLInSeconds' and `privacySettings' fields, which are
%% set to their default values. If you don't specify values for required
%% fields, Amazon Lex throws an exception.
%%
%% This operation requires permissions for the `lex:PutBot' action. For more
%% information, see `security-iam'.
%%
%% '''
put_bot(Client, Name, Input) ->
    put_bot(Client, Name, Input, []).
put_bot(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias for the specified version of the bot or replaces an
%% alias for the specified bot.
%%
%% To change the version of the bot that the alias points to, replace the
%% alias. For more information about aliases, see `versioning-aliases'.
%%
%% This operation requires permissions for the `lex:PutBotAlias' action.
put_bot_alias(Client, BotName, Name, Input) ->
    put_bot_alias(Client, BotName, Name, Input, []).
put_bot_alias(Client, BotName, Name, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an intent or replaces an existing intent.
%%
%% To define the interaction between the user and your bot, you use one or
%% more intents. For a pizza ordering bot, for example, you would create an
%% `OrderPizza' intent.
%%
%% To create an intent or replace an existing intent, you must provide the
%% following:
%%
%% <ul> <li> Intent name. For example, `OrderPizza'.
%%
%% </li> <li> Sample utterances. For example, "Can I order a pizza, please."
%% and "I want to order a pizza."
%%
%% </li> <li> Information to be gathered. You specify slot types for the
%% information that your bot will request from the user. You can specify
%% standard slot types, such as a date or a time, or custom slot types such
%% as the size and crust of a pizza.
%%
%% </li> <li> How the intent will be fulfilled. You can provide a Lambda
%% function or configure the intent to return the intent information to the
%% client application. If you use a Lambda function, when all of the intent
%% information is available, Amazon Lex invokes your Lambda function. If you
%% configure your intent to return the intent information to the client
%% application.
%%
%% </li> </ul> You can specify other optional information in the request,
%% such as:
%%
%% <ul> <li> A confirmation prompt to ask the user to confirm an intent. For
%% example, "Shall I order your pizza?"
%%
%% </li> <li> A conclusion statement to send to the user after the intent has
%% been fulfilled. For example, "I placed your pizza order."
%%
%% </li> <li> A follow-up prompt that asks the user for additional activity.
%% For example, asking "Do you want to order a drink with your pizza?"
%%
%% </li> </ul> If you specify an existing intent name to update the intent,
%% Amazon Lex replaces the values in the `$LATEST' version of the intent with
%% the values in the request. Amazon Lex removes fields that you don't
%% provide in the request. If you don't specify the required fields, Amazon
%% Lex throws an exception. When you update the `$LATEST' version of an
%% intent, the `status' field of any bot that uses the `$LATEST' version of
%% the intent is set to `NOT_BUILT'.
%%
%% For more information, see `how-it-works'.
%%
%% This operation requires permissions for the `lex:PutIntent' action.
put_intent(Client, Name, Input) ->
    put_intent(Client, Name, Input, []).
put_intent(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/intents/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom slot type or replaces an existing custom slot type.
%%
%% To create a custom slot type, specify a name for the slot type and a set
%% of enumeration values, which are the values that a slot of this type can
%% assume. For more information, see `how-it-works'.
%%
%% If you specify the name of an existing slot type, the fields in the
%% request replace the existing values in the `$LATEST' version of the slot
%% type. Amazon Lex removes the fields that you don't provide in the request.
%% If you don't specify required fields, Amazon Lex throws an exception. When
%% you update the `$LATEST' version of a slot type, if a bot uses the
%% `$LATEST' version of an intent that contains the slot type, the bot's
%% `status' field is set to `NOT_BUILT'.
%%
%% This operation requires permissions for the `lex:PutSlotType' action.
put_slot_type(Client, Name, Input) ->
    put_slot_type(Client, Name, Input, []).
put_slot_type(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/slottypes/", aws_util:encode_uri(Name), "/versions/$LATEST"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a job to import a resource to Amazon Lex.
start_import(Client, Input) ->
    start_import(Client, Input, []).
start_import(Client, Input0, Options0) ->
    Method = post,
    Path = ["/imports/"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a bot, bot alias or bot channel.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"lex">>},
    Host = build_host(<<"models.lex">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
