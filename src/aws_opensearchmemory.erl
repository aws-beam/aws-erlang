%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon OpenSearch Memory lets your AI agents and applications recall
%% facts and summaries across sessions.
%%
%% Your agents send events, such as conversation turns, and search the
%% memories derived from them.
%%
%% A space groups related events and memories, and holds the memory
%% strategies that you configure for them. Use the space operations to
%% create, get, list, update, and delete spaces. Use the event and memory
%% operations to write, read, list, search, update, and delete a space's
%% events and memories.
-module(aws_opensearchmemory).

-export([batch_get_event/2,
         batch_get_event/3,
         create_event/2,
         create_event/3,
         create_memory/2,
         create_memory/3,
         create_space/2,
         create_space/3,
         delete_event/2,
         delete_event/3,
         delete_memory/2,
         delete_memory/3,
         delete_space/2,
         delete_space/3,
         get_event/2,
         get_event/3,
         get_memory/2,
         get_memory/3,
         get_space/2,
         get_space/3,
         list_events/2,
         list_events/3,
         list_memories/2,
         list_memories/3,
         list_spaces/2,
         list_spaces/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         search_events/2,
         search_events/3,
         search_memories/2,
         search_memories/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_memory/2,
         update_memory/3,
         update_space/2,
         update_space/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_event_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"eventId">> => string(),
%%   <<"message">> => [string()]
%% }
-type batch_get_event_error() :: #{binary() => any()}.

%% Example:
%% batch_get_event_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"eventIds">> := list(string()),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> := string()
%% }
-type batch_get_event_input() :: #{binary() => any()}.

%% Example:
%% batch_get_event_output() :: #{
%%   <<"errors">> => list(batch_get_event_error()),
%%   <<"events">> => list(event())
%% }
-type batch_get_event_output() :: #{binary() => any()}.

%% Example:
%% blob_payload() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"source">> => list()
%% }
-type blob_payload() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_event_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"eventTimestamp">> => non_neg_integer(),
%%   <<"infer">> => [boolean()],
%%   <<"metadata">> => map(),
%%   <<"payload">> := list(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> := string()
%% }
-type create_event_input() :: #{binary() => any()}.

%% Example:
%% create_event_output() :: #{
%%   <<"event">> => event_detail()
%% }
-type create_event_output() :: #{binary() => any()}.

%% Example:
%% create_memory_detail() :: #{
%%   <<"actorId">> => string(),
%%   <<"memoryId">> => string(),
%%   <<"name">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> => string()
%% }
-type create_memory_detail() :: #{binary() => any()}.

%% Example:
%% create_memory_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"content">> := string(),
%%   <<"metadata">> => map(),
%%   <<"name">> := string(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> := string()
%% }
-type create_memory_input() :: #{binary() => any()}.

%% Example:
%% create_memory_output() :: #{
%%   <<"memory">> => create_memory_detail()
%% }
-type create_memory_output() :: #{binary() => any()}.

%% Example:
%% create_space_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"eventExpiryDays">> => integer(),
%%   <<"extractionModelId">> => string(),
%%   <<"memoryExpiryDays">> => integer(),
%%   <<"memoryStrategies">> => list(memory_strategy()),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_space_request() :: #{binary() => any()}.

%% Example:
%% create_space_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"spaceId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_space_response() :: #{binary() => any()}.

%% Example:
%% delete_event_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"eventId">> := string(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> := string()
%% }
-type delete_event_input() :: #{binary() => any()}.

%% Example:
%% delete_event_output() :: #{
%%   <<"eventId">> => string()
%% }
-type delete_event_output() :: #{binary() => any()}.

%% Example:
%% delete_memory_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"memoryId">> := string(),
%%   <<"spaceId">> := string(),
%%   <<"strategyName">> => string()
%% }
-type delete_memory_input() :: #{binary() => any()}.

%% Example:
%% delete_memory_output() :: #{
%%   <<"memoryId">> => string()
%% }
-type delete_memory_output() :: #{binary() => any()}.

%% Example:
%% delete_space_request() :: #{
%%   <<"spaceId">> := string()
%% }
-type delete_space_request() :: #{binary() => any()}.

%% Example:
%% delete_space_response() :: #{
%%   <<"spaceId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_space_response() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => [string()]
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"actorId">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => non_neg_integer(),
%%   <<"metadata">> => map(),
%%   <<"payload">> => list(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> => string()
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% event_detail() :: #{
%%   <<"actorId">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> => string()
%% }
-type event_detail() :: #{binary() => any()}.

%% Example:
%% event_search_summary() :: #{
%%   <<"eventId">> => string(),
%%   <<"matchedContent">> => string(),
%%   <<"metadata">> => map(),
%%   <<"score">> => [float()],
%%   <<"systemMetadata">> => system_metadata()
%% }
-type event_search_summary() :: #{binary() => any()}.

%% Example:
%% event_summary() :: #{
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => non_neg_integer(),
%%   <<"metadata">> => map()
%% }
-type event_summary() :: #{binary() => any()}.

%% Example:
%% get_event_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"eventId">> := string(),
%%   <<"sessionId">> => string(),
%%   <<"spaceId">> := string()
%% }
-type get_event_input() :: #{binary() => any()}.

%% Example:
%% get_event_output() :: #{
%%   <<"event">> => event()
%% }
-type get_event_output() :: #{binary() => any()}.

%% Example:
%% get_memory_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"memoryId">> := string(),
%%   <<"spaceId">> := string(),
%%   <<"strategyName">> => string()
%% }
-type get_memory_input() :: #{binary() => any()}.

%% Example:
%% get_memory_output() :: #{
%%   <<"memory">> => memory()
%% }
-type get_memory_output() :: #{binary() => any()}.

%% Example:
%% get_space_request() :: #{
%%   <<"spaceId">> := string()
%% }
-type get_space_request() :: #{binary() => any()}.

%% Example:
%% get_space_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"eventExpiryDays">> => integer(),
%%   <<"extractionModelId">> => string(),
%%   <<"memoryExpiryDays">> => integer(),
%%   <<"memoryStrategies">> => list(memory_strategy()),
%%   <<"name">> => string(),
%%   <<"spaceId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type get_space_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_events_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"eventTimestampAfter">> => non_neg_integer(),
%%   <<"eventTimestampBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"metadataFilters">> => map(),
%%   <<"nextToken">> => string(),
%%   <<"sessionId">> := string(),
%%   <<"sortOrder">> => list(any()),
%%   <<"spaceId">> := string()
%% }
-type list_events_input() :: #{binary() => any()}.

%% Example:
%% list_events_output() :: #{
%%   <<"events">> => list(event_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_events_output() :: #{binary() => any()}.

%% Example:
%% list_memories_input() :: #{
%%   <<"actorIds">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"memoryStrategies">> => list(strategy_selector()),
%%   <<"nextToken">> => string(),
%%   <<"sessionIds">> => list(string()),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"spaceId">> := string()
%% }
-type list_memories_input() :: #{binary() => any()}.

%% Example:
%% list_memories_output() :: #{
%%   <<"memories">> => list(memory_list_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_memories_output() :: #{binary() => any()}.

%% Example:
%% list_spaces_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_spaces_request() :: #{binary() => any()}.

%% Example:
%% list_spaces_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"spaces">> => list(space_summary())
%% }
-type list_spaces_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% memory() :: #{
%%   <<"content">> => string(),
%%   <<"memoryId">> => string(),
%%   <<"memoryType">> => list(any()),
%%   <<"metadata">> => map(),
%%   <<"strategyName">> => string(),
%%   <<"systemMetadata">> => system_metadata()
%% }
-type memory() :: #{binary() => any()}.

%% Example:
%% memory_list_summary() :: #{
%%   <<"memoryId">> => string(),
%%   <<"memoryType">> => list(any()),
%%   <<"metadata">> => map(),
%%   <<"strategyName">> => string(),
%%   <<"systemMetadata">> => system_metadata()
%% }
-type memory_list_summary() :: #{binary() => any()}.

%% Example:
%% memory_search_summary() :: #{
%%   <<"content">> => string(),
%%   <<"memoryId">> => string(),
%%   <<"memoryType">> => list(any()),
%%   <<"metadata">> => map(),
%%   <<"score">> => [float()],
%%   <<"sourceEventIds">> => list(string()),
%%   <<"strategyName">> => string(),
%%   <<"systemMetadata">> => system_metadata()
%% }
-type memory_search_summary() :: #{binary() => any()}.

%% Example:
%% memory_strategy() :: #{
%%   <<"configuration">> => memory_strategy_configuration(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type memory_strategy() :: #{binary() => any()}.

%% Example:
%% memory_strategy_configuration() :: #{
%%   <<"consolidationEnabled">> => [boolean()],
%%   <<"extractEveryNMessages">> => integer(),
%%   <<"extractEveryNTokens">> => integer(),
%%   <<"extractionPrompt">> => string(),
%%   <<"extractionSeedRecentN">> => integer(),
%%   <<"extractionSeedTopK">> => integer(),
%%   <<"idleTimeoutSeconds">> => integer()
%% }
-type memory_strategy_configuration() :: #{binary() => any()}.

%% Example:
%% message() :: #{
%%   <<"content">> => message_content(),
%%   <<"role">> => list(any())
%% }
-type message() :: #{binary() => any()}.

%% Example:
%% message_content() :: #{
%%   <<"text">> => string()
%% }
-type message_content() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"uri">> => [string()]
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% search_events_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"query">> := any(),
%%   <<"sessionIds">> => list(string()),
%%   <<"sort">> => any(),
%%   <<"spaceId">> := string()
%% }
-type search_events_input() :: #{binary() => any()}.

%% Example:
%% search_events_output() :: #{
%%   <<"events">> => list(event_search_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_events_output() :: #{binary() => any()}.

%% Example:
%% search_memories_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"memoryStrategies">> => list(strategy_selector()),
%%   <<"nextToken">> => string(),
%%   <<"query">> := any(),
%%   <<"sort">> => any(),
%%   <<"spaceId">> := string()
%% }
-type search_memories_input() :: #{binary() => any()}.

%% Example:
%% search_memories_output() :: #{
%%   <<"memories">> => list(memory_search_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_memories_output() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% space_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"spaceId">> => string(),
%%   <<"status">> => list(any())
%% }
-type space_summary() :: #{binary() => any()}.

%% Example:
%% strategy_selector() :: #{
%%   <<"memoryStrategyNames">> => list(string()),
%%   <<"memoryType">> => list(any())
%% }
-type strategy_selector() :: #{binary() => any()}.

%% Example:
%% structured_data_payload() :: #{
%%   <<"source">> => list()
%% }
-type structured_data_payload() :: #{binary() => any()}.

%% Example:
%% system_metadata() :: #{
%%   <<"actorId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"sessionId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type system_metadata() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% unified_conversational() :: #{
%%   <<"source">> => list()
%% }
-type unified_conversational() :: #{binary() => any()}.

%% Example:
%% unified_conversational_object() :: #{
%%   <<"messages">> => list(message())
%% }
-type unified_conversational_object() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_memory_input() :: #{
%%   <<"actorId">> => string(),
%%   <<"content">> => string(),
%%   <<"memoryId">> := string(),
%%   <<"metadata">> => map(),
%%   <<"metadataMode">> => list(any()),
%%   <<"spaceId">> := string(),
%%   <<"strategyName">> => string()
%% }
-type update_memory_input() :: #{binary() => any()}.

%% Example:
%% update_memory_output() :: #{
%%   <<"memory">> => memory()
%% }
-type update_memory_output() :: #{binary() => any()}.

%% Example:
%% update_space_request() :: #{
%%   <<"eventExpiryDays">> => integer(),
%%   <<"extractionModelId">> => string(),
%%   <<"memoryExpiryDays">> => integer(),
%%   <<"memoryStrategies">> => list(memory_strategy()),
%%   <<"spaceId">> := string()
%% }
-type update_space_request() :: #{binary() => any()}.

%% Example:
%% update_space_response() :: #{
%%   <<"spaceId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_space_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type batch_get_event_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type create_event_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_memory_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_space_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_event_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_memory_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_space_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_event_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_memory_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_space_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_events_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_memories_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_spaces_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type search_events_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type search_memories_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_memory_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_space_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets up to 10 events by ID, each as `GetEvent' returns it,
%% including its payload.
%%
%% If you supply `actorId' or `sessionId', every requested event must
%% match it. Each event has its own outcome. The operation reports an event
%% that it can't return in `errors' instead of failing, with an error
%% code named for the exception that `GetEvent' would return for it. The
%% operation reports both an event that doesn't exist and an event
%% outside the supplied scope as `RESOURCE_NOT_FOUND'.
%%
%% The exception is the space's customer managed AWS KMS key: if it is
%% disabled, pending deletion, can't be used for decryption, or was
%% deleted, the whole call fails with `ValidationException', as
%% `GetEvent' does.
-spec batch_get_event(aws_client:aws_client(), batch_get_event_input()) ->
    {ok, batch_get_event_output(), tuple()} |
    {error, any()} |
    {error, batch_get_event_errors(), tuple()}.
batch_get_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_event(Client, Input, []).

-spec batch_get_event(aws_client:aws_client(), batch_get_event_input(), proplists:proplist()) ->
    {ok, batch_get_event_output(), tuple()} |
    {error, any()} |
    {error, batch_get_event_errors(), tuple()}.
batch_get_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetEvent">>, Input, Options).

%% @doc Submits an event (conversation turns, structured data, or a PDF
%% document stored in Amazon S3) to a session in a space.
%%
%% The operation returns as soon as the event is saved. `GetEvent' and
%% `ListEvents' return it immediately. `SearchEvents' returns it
%% after it's indexed. `SearchMemories' returns memories extracted
%% from it only after a strategy's extraction trigger fires and the
%% memories are indexed.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec create_event(aws_client:aws_client(), create_event_input()) ->
    {ok, create_event_output(), tuple()} |
    {error, any()} |
    {error, create_event_errors(), tuple()}.
create_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event(Client, Input, []).

-spec create_event(aws_client:aws_client(), create_event_input(), proplists:proplist()) ->
    {ok, create_event_output(), tuple()} |
    {error, any()} |
    {error, create_event_errors(), tuple()}.
create_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEvent">>, Input, Options).

%% @doc Writes a memory that you have already formed, without extracting it
%% from events.
%%
%% The service embeds the text as given and stores it as a memory of the
%% named strategy. To have the service extract memories from conversation
%% turns, use `CreateEvent' instead.
%%
%% The operation returns before the memory is searchable. The returned
%% `memoryId' is final, but until the memory is indexed, `GetMemory',
%% `UpdateMemory', and `DeleteMemory' return
%% `ResourceNotFoundException' for it.
%%
%% If the request would exceed the service's rate for embedding requests,
%% it fails with `ThrottlingException'. Retry with exponential backoff.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec create_memory(aws_client:aws_client(), create_memory_input()) ->
    {ok, create_memory_output(), tuple()} |
    {error, any()} |
    {error, create_memory_errors(), tuple()}.
create_memory(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_memory(Client, Input, []).

-spec create_memory(aws_client:aws_client(), create_memory_input(), proplists:proplist()) ->
    {ok, create_memory_output(), tuple()} |
    {error, any()} |
    {error, create_memory_errors(), tuple()}.
create_memory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMemory">>, Input, Options).

%% @doc Creates a space.
%%
%% A space is an AWS resource that stores the events you send and the
%% memories extracted from them, and defines the memory strategies that
%% extract those memories.
%%
%% The operation returns before provisioning finishes, with `status'
%% `CREATING'. Call `GetSpace' until the status is `ACTIVE', and
%% then use the space. If provisioning fails, the status becomes `FAILED'
%% and `statusReason' says why.
-spec create_space(aws_client:aws_client(), create_space_request()) ->
    {ok, create_space_response(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_space(Client, Input, []).

-spec create_space(aws_client:aws_client(), create_space_request(), proplists:proplist()) ->
    {ok, create_space_response(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSpace">>, Input, Options).

%% @doc Deletes an event.
%%
%% Deletion can't be undone. The event stops appearing in
%% `SearchEvents' results shortly after you delete it. Deleting an event
%% that doesn't exist returns `ResourceNotFoundException'.
%%
%% Deleting an event doesn't delete the memories derived from it, because
%% a memory can combine content from several events. To remove them, use
%% `DeleteMemory'.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec delete_event(aws_client:aws_client(), delete_event_input()) ->
    {ok, delete_event_output(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event(Client, Input, []).

-spec delete_event(aws_client:aws_client(), delete_event_input(), proplists:proplist()) ->
    {ok, delete_event_output(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvent">>, Input, Options).

%% @doc Deletes a memory, including its content and embedding.
%%
%% Deletion can't be undone. Searches stop returning the memory shortly
%% after you delete it.
%%
%% Deleting a memory that no longer exists returns
%% `ResourceNotFoundException', so the operation is not idempotent. If
%% you retry deletes, treat that error as success.
%%
%% A memory past its expiry (set from the space's `memoryExpiryDays'
%% when the memory is written) reads as not found: the operation returns
%% `ResourceNotFoundException', as for a memory that was already deleted.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec delete_memory(aws_client:aws_client(), delete_memory_input()) ->
    {ok, delete_memory_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_errors(), tuple()}.
delete_memory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_memory(Client, Input, []).

-spec delete_memory(aws_client:aws_client(), delete_memory_input(), proplists:proplist()) ->
    {ok, delete_memory_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_errors(), tuple()}.
delete_memory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMemory">>, Input, Options).

%% @doc Deletes a space and its memories.
%%
%% Deletion can't be undone. After you delete the space, you can't
%% retrieve its events, and the service removes them when they reach their
%% expiry.
%%
%% The operation returns with `status' `DELETING'. When deletion
%% finishes, `GetSpace' returns `ResourceNotFoundException'. If
%% deletion fails, the status becomes `FAILED'. A space that is
%% `CREATING' or `UPDATING' can't be deleted until that finishes:
%% the request fails with `ConflictException'. Deleting a space that is
%% already `DELETING' returns `DELETING' again.
-spec delete_space(aws_client:aws_client(), delete_space_request()) ->
    {ok, delete_space_response(), tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_space(Client, Input, []).

-spec delete_space(aws_client:aws_client(), delete_space_request(), proplists:proplist()) ->
    {ok, delete_space_response(), tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSpace">>, Input, Options).

%% @doc Gets an event by ID, including its payload.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec get_event(aws_client:aws_client(), get_event_input()) ->
    {ok, get_event_output(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event(Client, Input, []).

-spec get_event(aws_client:aws_client(), get_event_input(), proplists:proplist()) ->
    {ok, get_event_output(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvent">>, Input, Options).

%% @doc Gets a memory by ID, as returned by `SearchMemories' or
%% `ListMemories'.
%%
%% A memory that doesn't exist returns `ResourceNotFoundException'.
%% Unlike `SearchMemories', this operation also returns memories that
%% consolidation has superseded.
%%
%% A memory past its expiry (set from the space's `memoryExpiryDays'
%% when the memory is written) reads as not found:
%% `ResourceNotFoundException', the same answer as for an ID that does
%% not exist.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec get_memory(aws_client:aws_client(), get_memory_input()) ->
    {ok, get_memory_output(), tuple()} |
    {error, any()} |
    {error, get_memory_errors(), tuple()}.
get_memory(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_memory(Client, Input, []).

-spec get_memory(aws_client:aws_client(), get_memory_input(), proplists:proplist()) ->
    {ok, get_memory_output(), tuple()} |
    {error, any()} |
    {error, get_memory_errors(), tuple()}.
get_memory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMemory">>, Input, Options).

%% @doc Returns a space's configuration and status.
-spec get_space(aws_client:aws_client(), get_space_request()) ->
    {ok, get_space_response(), tuple()} |
    {error, any()} |
    {error, get_space_errors(), tuple()}.
get_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_space(Client, Input, []).

-spec get_space(aws_client:aws_client(), get_space_request(), proplists:proplist()) ->
    {ok, get_space_response(), tuple()} |
    {error, any()} |
    {error, get_space_errors(), tuple()}.
get_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSpace">>, Input, Options).

%% @doc Lists the events in a session, sorted by time.
%%
%% Optionally limit the results to events whose `eventTimestamp' falls
%% between `eventTimestampAfter' and `eventTimestampBefore'. Returns
%% event metadata only. Call `GetEvent' for the payload. For full-text or
%% relevance search, use `SearchEvents'.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec list_events(aws_client:aws_client(), list_events_input()) ->
    {ok, list_events_output(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_events(Client, Input, []).

-spec list_events(aws_client:aws_client(), list_events_input(), proplists:proplist()) ->
    {ok, list_events_output(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEvents">>, Input, Options).

%% @doc Lists a space's memories without a query, for example the most
%% recent memories or the memories of one strategy.
%%
%% Filter by strategy and optionally by owning actor or session, sort by
%% creation or update time, and page through the results. Results have no
%% relevance score. To query or filter by metadata, use `SearchMemories'.
%%
%% If memories are written or deleted while you page, the results can skip a
%% memory or return it twice. You can page through only a limited number of
%% results. A request past that limit fails with `ValidationException'
%% (reason `invalidNextToken'), and the message gives the limit.
%%
%% Memories past their expiry (set from the space's
%% `memoryExpiryDays' when each memory is written) are left out. Unlike
%% `SearchMemories', this operation also returns memories that
%% consolidation has superseded.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec list_memories(aws_client:aws_client(), list_memories_input()) ->
    {ok, list_memories_output(), tuple()} |
    {error, any()} |
    {error, list_memories_errors(), tuple()}.
list_memories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_memories(Client, Input, []).

-spec list_memories(aws_client:aws_client(), list_memories_input(), proplists:proplist()) ->
    {ok, list_memories_output(), tuple()} |
    {error, any()} |
    {error, list_memories_errors(), tuple()}.
list_memories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMemories">>, Input, Options).

%% @doc Lists the spaces in your account in the current Region.
-spec list_spaces(aws_client:aws_client(), list_spaces_request()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()} |
    {error, list_spaces_errors(), tuple()}.
list_spaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_spaces(Client, Input, []).

-spec list_spaces(aws_client:aws_client(), list_spaces_request(), proplists:proplist()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()} |
    {error, list_spaces_errors(), tuple()}.
list_spaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSpaces">>, Input, Options).

%% @doc Lists the tags for the specified space.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Searches a space's events by relevance.
%%
%% It works like `SearchMemories' without the memory type and strategy
%% selector. The query is a subset of the OpenSearch Query DSL. The service
%% validates it, limits the search to the actor in `actorId' and the
%% sessions in `sessionIds', and returns ranked results. Each result is
%% the matching chunk of an event, not the whole event. You can page through
%% only a limited number of results. A request past that limit fails with
%% `ValidationException' (reason `invalidNextToken'), and the message
%% gives the limit.
%%
%% If the results are larger than 5 MiB, the request fails with
%% `ValidationException' (reason `queryBodyTooLarge'). Lower
%% `maxResults'.
%%
%% If the request would exceed the service's rate for embedding requests,
%% it fails with `ThrottlingException'. Retry with exponential backoff.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec search_events(aws_client:aws_client(), search_events_input()) ->
    {ok, search_events_output(), tuple()} |
    {error, any()} |
    {error, search_events_errors(), tuple()}.
search_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_events(Client, Input, []).

-spec search_events(aws_client:aws_client(), search_events_input(), proplists:proplist()) ->
    {ok, search_events_output(), tuple()} |
    {error, any()} |
    {error, search_events_errors(), tuple()}.
search_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchEvents">>, Input, Options).

%% @doc Searches a space's memories by relevance.
%%
%% The query is a subset of the OpenSearch Query DSL. The service validates
%% it, limits the search to the requested strategies and to the actor in
%% `actorId', and returns one ranked list of memories. You can page
%% through only a limited number of results. A request past that limit fails
%% with `ValidationException' (reason `invalidNextToken'), and the
%% message gives the limit.
%%
%% Memories past their expiry (set from the space's
%% `memoryExpiryDays' when each memory is written) are left out of the
%% results. Only current memories are returned: a memory that consolidation
%% has superseded (an older version of a fact that a newer memory replaced)
%% is left out.
%%
%% If the results are larger than 5 MiB, the request fails with
%% `ValidationException' (reason `queryBodyTooLarge'). Lower
%% `maxResults'.
%%
%% If the request would exceed the service's rate for embedding requests,
%% it fails with `ThrottlingException'. Retry with exponential backoff.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec search_memories(aws_client:aws_client(), search_memories_input()) ->
    {ok, search_memories_output(), tuple()} |
    {error, any()} |
    {error, search_memories_errors(), tuple()}.
search_memories(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_memories(Client, Input, []).

-spec search_memories(aws_client:aws_client(), search_memories_input(), proplists:proplist()) ->
    {ok, search_memories_output(), tuple()} |
    {error, any()} |
    {error, search_memories_errors(), tuple()}.
search_memories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchMemories">>, Input, Options).

%% @doc Adds the specified tags to the specified space.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tags from the specified space.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a memory in place.
%%
%% Supply only the fields to change. Omitted fields keep their stored values.
%% A request must supply `content' or `metadata', or it fails with
%% `ValidationException'. Supplying `content' re-embeds the memory. A
%% change to metadata alone doesn't.
%%
%% The memory keeps its `memoryId' across updates. Shortly after an
%% update, searches stop returning the previous content.
%%
%% `memoryType' can't be changed. To change it, delete the memory and
%% create a new one.
%%
%% A memory past its expiry (set from the space's `memoryExpiryDays'
%% when the memory is written) reads as not found: the operation fails with
%% `ResourceNotFoundException' and changes nothing. An update does not
%% move the expiry.
%%
%% Concurrent updates to one memory are last-writer-wins. There is no version
%% check. To avoid lost updates, serialize your updates to a memory.
%%
%% If you supply `content' and the request would exceed the service's
%% rate for embedding requests, it fails with `ThrottlingException'.
%% Retry with exponential backoff.
%%
%% If the space uses a customer managed AWS KMS key, the call can also fail
%% because of the key. It fails with `AccessDeniedException' if you
%% aren't allowed to use the key, and with `ThrottlingException' if
%% AWS KMS throttles the request. It fails with `ValidationException' if
%% the key is disabled, pending deletion, or deleted.
-spec update_memory(aws_client:aws_client(), update_memory_input()) ->
    {ok, update_memory_output(), tuple()} |
    {error, any()} |
    {error, update_memory_errors(), tuple()}.
update_memory(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_memory(Client, Input, []).

-spec update_memory(aws_client:aws_client(), update_memory_input(), proplists:proplist()) ->
    {ok, update_memory_output(), tuple()} |
    {error, any()} |
    {error, update_memory_errors(), tuple()}.
update_memory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMemory">>, Input, Options).

%% @doc Updates a space's memory strategies, retention settings, or
%% extraction model.
%%
%% Supply only the fields to change. Omitted fields keep their current
%% values.
%%
%% If the request changes the set of strategies, a strategy's
%% configuration, a retention setting, or the extraction model, the space
%% moves to `UPDATING'. When the change is complete, the space returns to
%% `ACTIVE', or moves to `FAILED' if the change can't be applied.
%% While the space is `UPDATING', `GetSpace' returns the previous
%% configuration. A request that only changes strategy descriptions or
%% repeats the values the space has stored is applied immediately and
%% doesn't change the status. Sending a retention value that the space
%% never set also moves the space to `UPDATING', even one that matches
%% the behavior without it, such as 90 for `eventExpiryDays' or 0 for
%% `memoryExpiryDays'. A space that is `CREATING', `UPDATING', or
%% `DELETING' can't be updated: the request fails with
%% `ConflictException'.
-spec update_space(aws_client:aws_client(), update_space_request()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_space(Client, Input, []).

-spec update_space(aws_client:aws_client(), update_space_request(), proplists:proplist()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSpace">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"osm">>},
    DefaultHost = build_host(<<"osm">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_OPENSEARCHMEMORY">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"OpenSearchMemory.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case response_body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = response_body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
