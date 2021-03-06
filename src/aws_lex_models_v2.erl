%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_lex_models_v2).

-export([build_bot_locale/5,
         build_bot_locale/6,
         create_bot/2,
         create_bot/3,
         create_bot_alias/3,
         create_bot_alias/4,
         create_bot_locale/4,
         create_bot_locale/5,
         create_bot_version/3,
         create_bot_version/4,
         create_intent/5,
         create_intent/6,
         create_slot/6,
         create_slot/7,
         create_slot_type/5,
         create_slot_type/6,
         delete_bot/3,
         delete_bot/4,
         delete_bot_alias/4,
         delete_bot_alias/5,
         delete_bot_locale/5,
         delete_bot_locale/6,
         delete_bot_version/4,
         delete_bot_version/5,
         delete_intent/6,
         delete_intent/7,
         delete_slot/7,
         delete_slot/8,
         delete_slot_type/6,
         delete_slot_type/7,
         describe_bot/2,
         describe_bot/4,
         describe_bot/5,
         describe_bot_alias/3,
         describe_bot_alias/5,
         describe_bot_alias/6,
         describe_bot_locale/4,
         describe_bot_locale/6,
         describe_bot_locale/7,
         describe_bot_version/3,
         describe_bot_version/5,
         describe_bot_version/6,
         describe_intent/5,
         describe_intent/7,
         describe_intent/8,
         describe_slot/6,
         describe_slot/8,
         describe_slot/9,
         describe_slot_type/5,
         describe_slot_type/7,
         describe_slot_type/8,
         list_bot_aliases/3,
         list_bot_aliases/4,
         list_bot_locales/4,
         list_bot_locales/5,
         list_bot_versions/3,
         list_bot_versions/4,
         list_bots/2,
         list_bots/3,
         list_built_in_intents/3,
         list_built_in_intents/4,
         list_built_in_slot_types/3,
         list_built_in_slot_types/4,
         list_intents/5,
         list_intents/6,
         list_slot_types/5,
         list_slot_types/6,
         list_slots/6,
         list_slots/7,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
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
         update_intent/6,
         update_intent/7,
         update_slot/7,
         update_slot/8,
         update_slot_type/6,
         update_slot_type/7]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Lex conversational bot.
create_bot(Client, Input) ->
    create_bot(Client, Input, []).
create_bot(Client, Input0, Options0) ->
    Method = put,
    Path = ["/bots/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias for the specified version of a bot.
%%
%% Use an alias to enable you to change the version of a bot without updating
%% applications that use the bot.
%%
%% For example, you can create an alias called "PROD" that your applications
%% use to call the Amazon Lex bot.
create_bot_alias(Client, BotId, Input) ->
    create_bot_alias(Client, BotId, Input, []).
create_bot_alias(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the bot based on the `DRAFT' version.
%%
%% If the `DRAFT' version of this resource hasn't changed since you created
%% the last version, Amazon Lex doesn't create a new version, it returns the
%% last created version.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an intent.
%%
%% To define the interaction between the user and your bot, you define one or
%% more intents. For example, for a pizza ordering bot you would create an
%% `OrderPizza' intent.
%%
%% When you create an intent, you must provide a name. You can optionally
%% provide the following:
%%
%% <ul> <li> Sample utterances. For example, "I want to order a pizza" and
%% "Can I order a pizza." You can't provide utterances for built-in intents.
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
%% For example, "Shall I order your pizza?"
%%
%% </li> <li> A conclusion statement to send to the user after the intent is
%% fulfilled. For example, "I ordered your pizza."
%%
%% </li> <li> A follow-up prompt that asks the user for additional activity.
%% For example, "Do you want a drink with your pizza?"
%%
%% </li> </ul>
create_intent(Client, BotId, BotVersion, LocaleId, Input) ->
    create_intent(Client, BotId, BotVersion, LocaleId, Input, []).
create_intent(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all versions of a bot, including the `Draft' version.
%%
%% To delete a specific version, use the `DeleteBotVersion' operation.
%%
%% When you delete a bot, all of the resources contained in the bot are also
%% deleted. Deleting a bot removes all locales, intents, slot, and slot types
%% defined for the bot.
%%
%% If a bot has an alias, the `DeleteBot' operation returns a
%% `ResourceInUseException' exception. If you want to delete the bot and the
%% alias, set the `skipResourceInUseCheck' parameter to `true'.
delete_bot(Client, BotId, Input) ->
    delete_bot(Client, BotId, Input, []).
delete_bot(Client, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified bot alias.
delete_bot_alias(Client, BotAliasId, BotId, Input) ->
    delete_bot_alias(Client, BotAliasId, BotId, Input, []).
delete_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version of a bot.
%%
%% To delete all version of a bot, use the `DeleteBot' operation.
delete_bot_version(Client, BotId, BotVersion, Input) ->
    delete_bot_version(Client, BotId, BotVersion, Input, []).
delete_bot_version(Client, BotId, BotVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified slot from an intent.
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).
delete_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), "/"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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

%% @doc Gets a list of aliases for the specified bot.
list_bot_aliases(Client, BotId, Input) ->
    list_bot_aliases(Client, BotId, Input, []).
list_bot_aliases(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of locales for the specified bot.
list_bot_locales(Client, BotId, BotVersion, Input) ->
    list_bot_locales(Client, BotId, BotVersion, Input, []).
list_bot_locales(Client, BotId, BotVersion, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions of a bot.
%%
%% The `ListBotVersions' operation returns a summary of each version of a
%% bot. For example, if a bot has three numbered versions, the
%% `ListBotVersions' operation returns for summaries, one for each numbered
%% version and one for the `DRAFT' version.
%%
%% The `ListBotVersions' operation always returns at least one version, the
%% `DRAFT' version.
list_bot_versions(Client, BotId, Input) ->
    list_bot_versions(Client, BotId, Input, []).
list_bot_versions(Client, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of available bots.
list_bots(Client, Input) ->
    list_bots(Client, Input, []).
list_bots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/bots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in intents provided by Amazon Lex that you can
%% use in your bot.
%%
%% To use a built-in intent as a the base for your own intent, include the
%% built-in intent signature in the `parentIntentSignature' parameter when
%% you call the `CreateIntent' operation. For more information, see
%% `CreateIntent'.
list_built_in_intents(Client, LocaleId, Input) ->
    list_built_in_intents(Client, LocaleId, Input, []).
list_built_in_intents(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of built-in slot types that meet the specified criteria.
list_built_in_slot_types(Client, LocaleId, Input) ->
    list_built_in_slot_types(Client, LocaleId, Input, []).
list_built_in_slot_types(Client, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/builtins/locales/", aws_util:encode_uri(LocaleId), "/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Get a list of intents that meet the specified criteria.
list_intents(Client, BotId, BotVersion, LocaleId, Input) ->
    list_intents(Client, BotId, BotVersion, LocaleId, Input, []).
list_intents(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slot types that match the specified criteria.
list_slot_types(Client, BotId, BotVersion, LocaleId, Input) ->
    list_slot_types(Client, BotId, BotVersion, LocaleId, Input, []).
list_slot_types(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a list of slots that match the specified criteria.
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
list_slots(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a bot, bot alias, or bot channel.
untag_resource(Client, ResourceARN, Input) ->
    untag_resource(Client, ResourceARN, Input, []).
untag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing bot.
update_bot(Client, BotId, Input) ->
    update_bot(Client, BotId, Input, []).
update_bot(Client, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing bot alias.
update_bot_alias(Client, BotAliasId, BotId, Input) ->
    update_bot_alias(Client, BotAliasId, BotId, Input, []).
update_bot_alias(Client, BotAliasId, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botaliases/", aws_util:encode_uri(BotAliasId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings that a bot has for a specific locale.
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input) ->
    update_bot_locale(Client, BotId, BotVersion, LocaleId, Input, []).
update_bot_locale(Client, BotId, BotVersion, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for an intent.
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input) ->
    update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input, []).
update_intent(Client, BotId, BotVersion, IntentId, LocaleId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for a slot.
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input) ->
    update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input, []).
update_slot(Client, BotId, BotVersion, IntentId, LocaleId, SlotId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/intents/", aws_util:encode_uri(IntentId), "/slots/", aws_util:encode_uri(SlotId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing slot type.
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input) ->
    update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input, []).
update_slot_type(Client, BotId, BotVersion, LocaleId, SlotTypeId, Input0, Options0) ->
    Method = put,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botversions/", aws_util:encode_uri(BotVersion), "/botlocales/", aws_util:encode_uri(LocaleId), "/slottypes/", aws_util:encode_uri(SlotTypeId), "/"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Host = build_host(<<"models-v2-lex">>, Client1),
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
