%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Bedrock AgentCore is in preview release and is subject to
%% change.
%%
%% Welcome to the Amazon Bedrock AgentCore Data Plane API reference. Data
%% Plane actions process and handle data or workloads within Amazon Web
%% Services services.
-module(aws_bedrock_agentcore).

-export([batch_create_memory_records/3,
         batch_create_memory_records/4,
         batch_delete_memory_records/3,
         batch_delete_memory_records/4,
         batch_update_memory_records/3,
         batch_update_memory_records/4,
         create_event/3,
         create_event/4,
         delete_event/6,
         delete_event/7,
         delete_memory_record/4,
         delete_memory_record/5,
         get_agent_card/2,
         get_agent_card/4,
         get_agent_card/5,
         get_browser_session/3,
         get_browser_session/5,
         get_browser_session/6,
         get_code_interpreter_session/3,
         get_code_interpreter_session/5,
         get_code_interpreter_session/6,
         get_event/5,
         get_event/7,
         get_event/8,
         get_memory_record/3,
         get_memory_record/5,
         get_memory_record/6,
         get_resource_api_key/2,
         get_resource_api_key/3,
         get_resource_oauth2_token/2,
         get_resource_oauth2_token/3,
         get_workload_access_token/2,
         get_workload_access_token/3,
         get_workload_access_token_for_j_w_t/2,
         get_workload_access_token_for_j_w_t/3,
         get_workload_access_token_for_user_id/2,
         get_workload_access_token_for_user_id/3,
         invoke_agent_runtime/3,
         invoke_agent_runtime/4,
         invoke_code_interpreter/3,
         invoke_code_interpreter/4,
         list_actors/3,
         list_actors/4,
         list_browser_sessions/3,
         list_browser_sessions/4,
         list_code_interpreter_sessions/3,
         list_code_interpreter_sessions/4,
         list_events/5,
         list_events/6,
         list_memory_records/3,
         list_memory_records/4,
         list_sessions/4,
         list_sessions/5,
         retrieve_memory_records/3,
         retrieve_memory_records/4,
         start_browser_session/3,
         start_browser_session/4,
         start_code_interpreter_session/3,
         start_code_interpreter_session/4,
         stop_browser_session/3,
         stop_browser_session/4,
         stop_code_interpreter_session/3,
         stop_code_interpreter_session/4,
         stop_runtime_session/3,
         stop_runtime_session/4,
         update_browser_stream/3,
         update_browser_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% branch() :: #{
%%   <<"name">> => string(),
%%   <<"rootEventId">> => string()
%% }
-type branch() :: #{binary() => any()}.


%% Example:
%% conversational() :: #{
%%   <<"content">> => list(),
%%   <<"role">> => list(any())
%% }
-type conversational() :: #{binary() => any()}.


%% Example:
%% live_view_stream() :: #{
%%   <<"streamEndpoint">> => string()
%% }
-type live_view_stream() :: #{binary() => any()}.


%% Example:
%% batch_update_memory_records_input() :: #{
%%   <<"records">> := list(memory_record_update_input())
%% }
-type batch_update_memory_records_input() :: #{binary() => any()}.


%% Example:
%% retrieve_memory_records_output() :: #{
%%   <<"memoryRecordSummaries">> => list(memory_record_summary()),
%%   <<"nextToken">> => string()
%% }
-type retrieve_memory_records_output() :: #{binary() => any()}.


%% Example:
%% automation_stream() :: #{
%%   <<"streamEndpoint">> => string(),
%%   <<"streamStatus">> => list(any())
%% }
-type automation_stream() :: #{binary() => any()}.


%% Example:
%% batch_create_memory_records_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"records">> := list(memory_record_create_input())
%% }
-type batch_create_memory_records_input() :: #{binary() => any()}.


%% Example:
%% session_summary() :: #{
%%   <<"actorId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"sessionId">> => string()
%% }
-type session_summary() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% memory_record_output() :: #{
%%   <<"errorCode">> => [integer()],
%%   <<"errorMessage">> => [string()],
%%   <<"memoryRecordId">> => string(),
%%   <<"requestIdentifier">> => string(),
%%   <<"status">> => list(any())
%% }
-type memory_record_output() :: #{binary() => any()}.


%% Example:
%% list_actors_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_actors_input() :: #{binary() => any()}.


%% Example:
%% invoke_code_interpreter_request() :: #{
%%   <<"arguments">> => tool_arguments(),
%%   <<"name">> := list(any()),
%%   <<"sessionId">> => string()
%% }
-type invoke_code_interpreter_request() :: #{binary() => any()}.


%% Example:
%% list_browser_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_browser_sessions_request() :: #{binary() => any()}.


%% Example:
%% memory_record_create_input() :: #{
%%   <<"content">> => list(),
%%   <<"memoryStrategyId">> => string(),
%%   <<"namespaces">> => list(string()),
%%   <<"requestIdentifier">> => string(),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type memory_record_create_input() :: #{binary() => any()}.


%% Example:
%% batch_delete_memory_records_input() :: #{
%%   <<"records">> := list(memory_record_delete_input())
%% }
-type batch_delete_memory_records_input() :: #{binary() => any()}.


%% Example:
%% get_workload_access_token_for_j_w_t_response() :: #{
%%   <<"workloadAccessToken">> => string()
%% }
-type get_workload_access_token_for_j_w_t_response() :: #{binary() => any()}.


%% Example:
%% get_workload_access_token_request() :: #{
%%   <<"workloadName">> := string()
%% }
-type get_workload_access_token_request() :: #{binary() => any()}.


%% Example:
%% event_metadata_filter_expression() :: #{
%%   <<"left">> => list(),
%%   <<"operator">> => list(any()),
%%   <<"right">> => list()
%% }
-type event_metadata_filter_expression() :: #{binary() => any()}.


%% Example:
%% get_resource_api_key_request() :: #{
%%   <<"resourceCredentialProviderName">> := string(),
%%   <<"workloadIdentityToken">> := string()
%% }
-type get_resource_api_key_request() :: #{binary() => any()}.


%% Example:
%% code_interpreter_session_summary() :: #{
%%   <<"codeInterpreterIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"status">> => list(any())
%% }
-type code_interpreter_session_summary() :: #{binary() => any()}.


%% Example:
%% memory_record_update_input() :: #{
%%   <<"content">> => list(),
%%   <<"memoryRecordId">> => string(),
%%   <<"memoryStrategyId">> => string(),
%%   <<"namespaces">> => list(string()),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type memory_record_update_input() :: #{binary() => any()}.


%% Example:
%% stop_browser_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"sessionId">> := string()
%% }
-type stop_browser_session_request() :: #{binary() => any()}.

%% Example:
%% delete_memory_record_input() :: #{}
-type delete_memory_record_input() :: #{}.


%% Example:
%% stop_runtime_session_response() :: #{
%%   <<"runtimeSessionId">> => string(),
%%   <<"statusCode">> => integer()
%% }
-type stop_runtime_session_response() :: #{binary() => any()}.


%% Example:
%% get_workload_access_token_response() :: #{
%%   <<"workloadAccessToken">> => string()
%% }
-type get_workload_access_token_response() :: #{binary() => any()}.


%% Example:
%% tool_arguments() :: #{
%%   <<"clearContext">> => [boolean()],
%%   <<"code">> => string(),
%%   <<"command">> => string(),
%%   <<"content">> => list(input_content_block()),
%%   <<"directoryPath">> => string(),
%%   <<"language">> => list(any()),
%%   <<"path">> => string(),
%%   <<"paths">> => list(string()),
%%   <<"taskId">> => string()
%% }
-type tool_arguments() :: #{binary() => any()}.


%% Example:
%% content_block() :: #{
%%   <<"data">> => [binary()],
%%   <<"description">> => [string()],
%%   <<"mimeType">> => [string()],
%%   <<"name">> => [string()],
%%   <<"resource">> => resource_content(),
%%   <<"size">> => [float()],
%%   <<"text">> => [string()],
%%   <<"type">> => list(any()),
%%   <<"uri">> => [string()]
%% }
-type content_block() :: #{binary() => any()}.


%% Example:
%% get_browser_session_request() :: #{
%%   <<"sessionId">> := string()
%% }
-type get_browser_session_request() :: #{binary() => any()}.


%% Example:
%% view_port() :: #{
%%   <<"height">> => integer(),
%%   <<"width">> => integer()
%% }
-type view_port() :: #{binary() => any()}.


%% Example:
%% input_content_block() :: #{
%%   <<"blob">> => binary(),
%%   <<"path">> => string(),
%%   <<"text">> => string()
%% }
-type input_content_block() :: #{binary() => any()}.


%% Example:
%% batch_update_memory_records_output() :: #{
%%   <<"failedRecords">> => list(memory_record_output()),
%%   <<"successfulRecords">> => list(memory_record_output())
%% }
-type batch_update_memory_records_output() :: #{binary() => any()}.


%% Example:
%% stop_code_interpreter_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"sessionId">> := string()
%% }
-type stop_code_interpreter_session_request() :: #{binary() => any()}.


%% Example:
%% throttled_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttled_exception() :: #{binary() => any()}.


%% Example:
%% start_browser_session_response() :: #{
%%   <<"browserIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"streams">> => browser_session_stream()
%% }
-type start_browser_session_response() :: #{binary() => any()}.


%% Example:
%% start_browser_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> => string(),
%%   <<"sessionTimeoutSeconds">> => integer(),
%%   <<"viewPort">> => view_port()
%% }
-type start_browser_session_request() :: #{binary() => any()}.


%% Example:
%% branch_filter() :: #{
%%   <<"includeParentBranches">> => [boolean()],
%%   <<"name">> => string()
%% }
-type branch_filter() :: #{binary() => any()}.


%% Example:
%% get_resource_oauth2_token_request() :: #{
%%   <<"customParameters">> => map(),
%%   <<"forceAuthentication">> => [boolean()],
%%   <<"oauth2Flow">> := list(any()),
%%   <<"resourceCredentialProviderName">> := string(),
%%   <<"resourceOauth2ReturnUrl">> => string(),
%%   <<"scopes">> := list(string()),
%%   <<"workloadIdentityToken">> := string()
%% }
-type get_resource_oauth2_token_request() :: #{binary() => any()}.


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
%% list_memory_records_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"memoryStrategyId">> => string(),
%%   <<"namespace">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_memory_records_input() :: #{binary() => any()}.

%% Example:
%% get_event_input() :: #{}
-type get_event_input() :: #{}.


%% Example:
%% get_workload_access_token_for_j_w_t_request() :: #{
%%   <<"userToken">> := string(),
%%   <<"workloadName">> := string()
%% }
-type get_workload_access_token_for_j_w_t_request() :: #{binary() => any()}.


%% Example:
%% filter_input() :: #{
%%   <<"branch">> => branch_filter(),
%%   <<"eventMetadata">> => list(event_metadata_filter_expression())
%% }
-type filter_input() :: #{binary() => any()}.


%% Example:
%% start_code_interpreter_session_response() :: #{
%%   <<"codeInterpreterIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"sessionId">> => string()
%% }
-type start_code_interpreter_session_response() :: #{binary() => any()}.


%% Example:
%% get_resource_oauth2_token_response() :: #{
%%   <<"accessToken">> => string(),
%%   <<"authorizationUrl">> => [string()]
%% }
-type get_resource_oauth2_token_response() :: #{binary() => any()}.


%% Example:
%% update_browser_stream_response() :: #{
%%   <<"browserIdentifier">> => [string()],
%%   <<"sessionId">> => string(),
%%   <<"streams">> => browser_session_stream(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_browser_stream_response() :: #{binary() => any()}.


%% Example:
%% start_code_interpreter_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> => string(),
%%   <<"sessionTimeoutSeconds">> => integer()
%% }
-type start_code_interpreter_session_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_agent_card_request() :: #{
%%   <<"qualifier">> => [string()],
%%   <<"runtimeSessionId">> => string()
%% }
-type get_agent_card_request() :: #{binary() => any()}.


%% Example:
%% memory_record_summary() :: #{
%%   <<"content">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"memoryRecordId">> => string(),
%%   <<"memoryStrategyId">> => string(),
%%   <<"namespaces">> => list(string()),
%%   <<"score">> => [float()]
%% }
-type memory_record_summary() :: #{binary() => any()}.


%% Example:
%% list_events_output() :: #{
%%   <<"events">> => list(event()),
%%   <<"nextToken">> => string()
%% }
-type list_events_output() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_memory_records_output() :: #{
%%   <<"failedRecords">> => list(memory_record_output()),
%%   <<"successfulRecords">> => list(memory_record_output())
%% }
-type batch_create_memory_records_output() :: #{binary() => any()}.


%% Example:
%% retrieve_memory_records_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"searchCriteria">> := search_criteria()
%% }
-type retrieve_memory_records_input() :: #{binary() => any()}.


%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_input_exception() :: #{binary() => any()}.


%% Example:
%% get_code_interpreter_session_request() :: #{
%%   <<"sessionId">> := string()
%% }
-type get_code_interpreter_session_request() :: #{binary() => any()}.


%% Example:
%% browser_session_summary() :: #{
%%   <<"browserIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"status">> => list(any())
%% }
-type browser_session_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% stop_browser_session_response() :: #{
%%   <<"browserIdentifier">> => [string()],
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sessionId">> => string()
%% }
-type stop_browser_session_response() :: #{binary() => any()}.


%% Example:
%% tool_result_structured_content() :: #{
%%   <<"executionTime">> => [float()],
%%   <<"exitCode">> => [integer()],
%%   <<"stderr">> => [string()],
%%   <<"stdout">> => [string()],
%%   <<"taskId">> => [string()],
%%   <<"taskStatus">> => list(any())
%% }
-type tool_result_structured_content() :: #{binary() => any()}.


%% Example:
%% delete_event_output() :: #{
%%   <<"eventId">> => string()
%% }
-type delete_event_output() :: #{binary() => any()}.

%% Example:
%% get_memory_record_input() :: #{}
-type get_memory_record_input() :: #{}.


%% Example:
%% get_workload_access_token_for_user_id_request() :: #{
%%   <<"userId">> := string(),
%%   <<"workloadName">> := string()
%% }
-type get_workload_access_token_for_user_id_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_memory_record_output() :: #{
%%   <<"memoryRecord">> => memory_record()
%% }
-type get_memory_record_output() :: #{binary() => any()}.


%% Example:
%% stop_runtime_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"qualifier">> => [string()],
%%   <<"runtimeSessionId">> := string()
%% }
-type stop_runtime_session_request() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"actorId">> => string(),
%%   <<"branch">> => branch(),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"memoryId">> => string(),
%%   <<"metadata">> => map(),
%%   <<"payload">> => list(list()),
%%   <<"sessionId">> => string()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% list_events_input() :: #{
%%   <<"filter">> => filter_input(),
%%   <<"includePayloads">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_events_input() :: #{binary() => any()}.


%% Example:
%% memory_record() :: #{
%%   <<"content">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"memoryRecordId">> => string(),
%%   <<"memoryStrategyId">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type memory_record() :: #{binary() => any()}.


%% Example:
%% create_event_input() :: #{
%%   <<"actorId">> := string(),
%%   <<"branch">> => branch(),
%%   <<"clientToken">> => [string()],
%%   <<"eventTimestamp">> := [non_neg_integer()],
%%   <<"metadata">> => map(),
%%   <<"payload">> := list(list()),
%%   <<"sessionId">> => string()
%% }
-type create_event_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invoke_agent_runtime_response() :: #{
%%   <<"baggage">> => [string()],
%%   <<"contentType">> => [string()],
%%   <<"mcpProtocolVersion">> => [string()],
%%   <<"mcpSessionId">> => string(),
%%   <<"response">> => binary(),
%%   <<"runtimeSessionId">> => string(),
%%   <<"statusCode">> => integer(),
%%   <<"traceId">> => [string()],
%%   <<"traceParent">> => [string()],
%%   <<"traceState">> => [string()]
%% }
-type invoke_agent_runtime_response() :: #{binary() => any()}.


%% Example:
%% invoke_agent_runtime_request() :: #{
%%   <<"accept">> => string(),
%%   <<"baggage">> => [string()],
%%   <<"contentType">> => string(),
%%   <<"mcpProtocolVersion">> => string(),
%%   <<"mcpSessionId">> => string(),
%%   <<"payload">> := binary(),
%%   <<"qualifier">> => [string()],
%%   <<"runtimeSessionId">> => string(),
%%   <<"runtimeUserId">> => string(),
%%   <<"traceId">> => [string()],
%%   <<"traceParent">> => [string()],
%%   <<"traceState">> => [string()]
%% }
-type invoke_agent_runtime_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% get_browser_session_response() :: #{
%%   <<"browserIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionReplayArtifact">> => [string()],
%%   <<"sessionTimeoutSeconds">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"streams">> => browser_session_stream(),
%%   <<"viewPort">> => view_port()
%% }
-type get_browser_session_response() :: #{binary() => any()}.


%% Example:
%% memory_record_delete_input() :: #{
%%   <<"memoryRecordId">> => string()
%% }
-type memory_record_delete_input() :: #{binary() => any()}.


%% Example:
%% resource_content() :: #{
%%   <<"blob">> => [binary()],
%%   <<"mimeType">> => [string()],
%%   <<"text">> => [string()],
%%   <<"type">> => list(any()),
%%   <<"uri">> => [string()]
%% }
-type resource_content() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_browser_sessions_response() :: #{
%%   <<"items">> => list(browser_session_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_browser_sessions_response() :: #{binary() => any()}.


%% Example:
%% stop_code_interpreter_session_response() :: #{
%%   <<"codeInterpreterIdentifier">> => [string()],
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sessionId">> => string()
%% }
-type stop_code_interpreter_session_response() :: #{binary() => any()}.


%% Example:
%% get_event_output() :: #{
%%   <<"event">> => event()
%% }
-type get_event_output() :: #{binary() => any()}.


%% Example:
%% get_agent_card_response() :: #{
%%   <<"agentCard">> => any(),
%%   <<"runtimeSessionId">> => string(),
%%   <<"statusCode">> => integer()
%% }
-type get_agent_card_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionSummaries">> => list(session_summary())
%% }
-type list_sessions_output() :: #{binary() => any()}.


%% Example:
%% get_code_interpreter_session_response() :: #{
%%   <<"codeInterpreterIdentifier">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionTimeoutSeconds">> => integer(),
%%   <<"status">> => list(any())
%% }
-type get_code_interpreter_session_response() :: #{binary() => any()}.


%% Example:
%% list_actors_output() :: #{
%%   <<"actorSummaries">> => list(actor_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_actors_output() :: #{binary() => any()}.


%% Example:
%% get_workload_access_token_for_user_id_response() :: #{
%%   <<"workloadAccessToken">> => string()
%% }
-type get_workload_access_token_for_user_id_response() :: #{binary() => any()}.

%% Example:
%% delete_event_input() :: #{}
-type delete_event_input() :: #{}.


%% Example:
%% list_code_interpreter_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_code_interpreter_sessions_request() :: #{binary() => any()}.


%% Example:
%% automation_stream_update() :: #{
%%   <<"streamStatus">> => list(any())
%% }
-type automation_stream_update() :: #{binary() => any()}.


%% Example:
%% code_interpreter_result() :: #{
%%   <<"content">> => list(content_block()),
%%   <<"isError">> => [boolean()],
%%   <<"structuredContent">> => tool_result_structured_content()
%% }
-type code_interpreter_result() :: #{binary() => any()}.


%% Example:
%% get_resource_api_key_response() :: #{
%%   <<"apiKey">> => string()
%% }
-type get_resource_api_key_response() :: #{binary() => any()}.


%% Example:
%% invoke_code_interpreter_response() :: #{
%%   <<"sessionId">> => string(),
%%   <<"stream">> => list()
%% }
-type invoke_code_interpreter_response() :: #{binary() => any()}.


%% Example:
%% browser_session_stream() :: #{
%%   <<"automationStream">> => automation_stream(),
%%   <<"liveViewStream">> => live_view_stream()
%% }
-type browser_session_stream() :: #{binary() => any()}.


%% Example:
%% actor_summary() :: #{
%%   <<"actorId">> => string()
%% }
-type actor_summary() :: #{binary() => any()}.


%% Example:
%% create_event_output() :: #{
%%   <<"event">> => event()
%% }
-type create_event_output() :: #{binary() => any()}.


%% Example:
%% search_criteria() :: #{
%%   <<"memoryStrategyId">> => string(),
%%   <<"searchQuery">> => string(),
%%   <<"topK">> => [integer()]
%% }
-type search_criteria() :: #{binary() => any()}.


%% Example:
%% list_code_interpreter_sessions_response() :: #{
%%   <<"items">> => list(code_interpreter_session_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_code_interpreter_sessions_response() :: #{binary() => any()}.


%% Example:
%% update_browser_stream_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"sessionId">> := string(),
%%   <<"streamUpdate">> := list()
%% }
-type update_browser_stream_request() :: #{binary() => any()}.


%% Example:
%% list_memory_records_output() :: #{
%%   <<"memoryRecordSummaries">> => list(memory_record_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_memory_records_output() :: #{binary() => any()}.


%% Example:
%% delete_memory_record_output() :: #{
%%   <<"memoryRecordId">> => string()
%% }
-type delete_memory_record_output() :: #{binary() => any()}.


%% Example:
%% batch_delete_memory_records_output() :: #{
%%   <<"failedRecords">> => list(memory_record_output()),
%%   <<"successfulRecords">> => list(memory_record_output())
%% }
-type batch_delete_memory_records_output() :: #{binary() => any()}.


%% Example:
%% list_sessions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sessions_input() :: #{binary() => any()}.


%% Example:
%% runtime_client_error() :: #{
%%   <<"message">> => string()
%% }
-type runtime_client_error() :: #{binary() => any()}.

-type batch_create_memory_records_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type batch_delete_memory_records_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type batch_update_memory_records_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type create_event_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type delete_event_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type delete_memory_record_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type get_agent_card_errors() ::
    runtime_client_error() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_browser_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_code_interpreter_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type get_memory_record_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type get_resource_api_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_resource_oauth2_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_workload_access_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_workload_access_token_for_j_w_t_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_workload_access_token_for_user_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type invoke_agent_runtime_errors() ::
    runtime_client_error() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type invoke_code_interpreter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_actors_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_browser_sessions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_code_interpreter_sessions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_events_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_memory_records_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_sessions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type retrieve_memory_records_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type start_browser_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_code_interpreter_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_browser_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_code_interpreter_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_runtime_session_errors() ::
    runtime_client_error() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type update_browser_stream_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates multiple memory records in a single batch operation for the
%% specified memory with custom content.
-spec batch_create_memory_records(aws_client:aws_client(), binary() | list(), batch_create_memory_records_input()) ->
    {ok, batch_create_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_create_memory_records_errors(), tuple()}.
batch_create_memory_records(Client, MemoryId, Input) ->
    batch_create_memory_records(Client, MemoryId, Input, []).

-spec batch_create_memory_records(aws_client:aws_client(), binary() | list(), batch_create_memory_records_input(), proplists:proplist()) ->
    {ok, batch_create_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_create_memory_records_errors(), tuple()}.
batch_create_memory_records(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecords/batchCreate"],
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

%% @doc Deletes multiple memory records in a single batch operation from the
%% specified memory.
-spec batch_delete_memory_records(aws_client:aws_client(), binary() | list(), batch_delete_memory_records_input()) ->
    {ok, batch_delete_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_memory_records_errors(), tuple()}.
batch_delete_memory_records(Client, MemoryId, Input) ->
    batch_delete_memory_records(Client, MemoryId, Input, []).

-spec batch_delete_memory_records(aws_client:aws_client(), binary() | list(), batch_delete_memory_records_input(), proplists:proplist()) ->
    {ok, batch_delete_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_memory_records_errors(), tuple()}.
batch_delete_memory_records(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecords/batchDelete"],
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

%% @doc Updates multiple memory records with custom content in a single batch
%% operation within the specified memory.
-spec batch_update_memory_records(aws_client:aws_client(), binary() | list(), batch_update_memory_records_input()) ->
    {ok, batch_update_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_update_memory_records_errors(), tuple()}.
batch_update_memory_records(Client, MemoryId, Input) ->
    batch_update_memory_records(Client, MemoryId, Input, []).

-spec batch_update_memory_records(aws_client:aws_client(), binary() | list(), batch_update_memory_records_input(), proplists:proplist()) ->
    {ok, batch_update_memory_records_output(), tuple()} |
    {error, any()} |
    {error, batch_update_memory_records_errors(), tuple()}.
batch_update_memory_records(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecords/batchUpdate"],
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

%% @doc Creates an event in an AgentCore Memory resource.
%%
%% Events represent interactions or activities that occur within a session
%% and are associated with specific actors.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:CreateEvent' permission.
%%
%% This operation is subject to request rate limiting.
-spec create_event(aws_client:aws_client(), binary() | list(), create_event_input()) ->
    {ok, create_event_output(), tuple()} |
    {error, any()} |
    {error, create_event_errors(), tuple()}.
create_event(Client, MemoryId, Input) ->
    create_event(Client, MemoryId, Input, []).

-spec create_event(aws_client:aws_client(), binary() | list(), create_event_input(), proplists:proplist()) ->
    {ok, create_event_output(), tuple()} |
    {error, any()} |
    {error, create_event_errors(), tuple()}.
create_event(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/events"],
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

%% @doc Deletes an event from an AgentCore Memory resource.
%%
%% When you delete an event, it is permanently removed.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:DeleteEvent' permission.
-spec delete_event(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_event_input()) ->
    {ok, delete_event_output(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, ActorId, EventId, MemoryId, SessionId, Input) ->
    delete_event(Client, ActorId, EventId, MemoryId, SessionId, Input, []).

-spec delete_event(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_event_input(), proplists:proplist()) ->
    {ok, delete_event_output(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, ActorId, EventId, MemoryId, SessionId, Input0, Options0) ->
    Method = delete,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/actor/", aws_util:encode_uri(ActorId), "/sessions/", aws_util:encode_uri(SessionId), "/events/", aws_util:encode_uri(EventId), ""],
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

%% @doc Deletes a memory record from an AgentCore Memory resource.
%%
%% When you delete a memory record, it is permanently removed.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:DeleteMemoryRecord' permission.
-spec delete_memory_record(aws_client:aws_client(), binary() | list(), binary() | list(), delete_memory_record_input()) ->
    {ok, delete_memory_record_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_record_errors(), tuple()}.
delete_memory_record(Client, MemoryId, MemoryRecordId, Input) ->
    delete_memory_record(Client, MemoryId, MemoryRecordId, Input, []).

-spec delete_memory_record(aws_client:aws_client(), binary() | list(), binary() | list(), delete_memory_record_input(), proplists:proplist()) ->
    {ok, delete_memory_record_output(), tuple()} |
    {error, any()} |
    {error, delete_memory_record_errors(), tuple()}.
delete_memory_record(Client, MemoryId, MemoryRecordId, Input0, Options0) ->
    Method = delete,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecords/", aws_util:encode_uri(MemoryRecordId), ""],
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

%% @doc Retrieves the A2A agent card associated with an AgentCore Runtime
%% agent.
-spec get_agent_card(aws_client:aws_client(), binary() | list()) ->
    {ok, get_agent_card_response(), tuple()} |
    {error, any()} |
    {error, get_agent_card_errors(), tuple()}.
get_agent_card(Client, AgentRuntimeArn)
  when is_map(Client) ->
    get_agent_card(Client, AgentRuntimeArn, #{}, #{}).

-spec get_agent_card(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_agent_card_response(), tuple()} |
    {error, any()} |
    {error, get_agent_card_errors(), tuple()}.
get_agent_card(Client, AgentRuntimeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_card(Client, AgentRuntimeArn, QueryMap, HeadersMap, []).

-spec get_agent_card(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_card_response(), tuple()} |
    {error, any()} |
    {error, get_agent_card_errors(), tuple()}.
get_agent_card(Client, AgentRuntimeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeArn), "/invocations/.well-known/agent-card.json"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, maps:get(<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"qualifier">>, maps:get(<<"qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, <<"runtimeSessionId">>}
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

%% @doc Retrieves detailed information about a specific browser session in
%% Amazon Bedrock.
%%
%% This operation returns the session's configuration, current status,
%% associated streams, and metadata.
%%
%% To get a browser session, you must specify both the browser identifier and
%% the session ID. The response includes information about the session's
%% viewport configuration, timeout settings, and stream endpoints.
%%
%% The following operations are related to `GetBrowserSession':
%%
%% StartBrowserSession:
%% https://docs.aws.amazon.com/API_StartBrowserSession.html
%%
%% ListBrowserSessions:
%% https://docs.aws.amazon.com/API_ListBrowserSessions.html
%%
%% StopBrowserSession:
%% https://docs.aws.amazon.com/API_StopBrowserSession.html
-spec get_browser_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_browser_session_response(), tuple()} |
    {error, any()} |
    {error, get_browser_session_errors(), tuple()}.
get_browser_session(Client, BrowserIdentifier, SessionId)
  when is_map(Client) ->
    get_browser_session(Client, BrowserIdentifier, SessionId, #{}, #{}).

-spec get_browser_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_browser_session_response(), tuple()} |
    {error, any()} |
    {error, get_browser_session_errors(), tuple()}.
get_browser_session(Client, BrowserIdentifier, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_browser_session(Client, BrowserIdentifier, SessionId, QueryMap, HeadersMap, []).

-spec get_browser_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_browser_session_response(), tuple()} |
    {error, any()} |
    {error, get_browser_session_errors(), tuple()}.
get_browser_session(Client, BrowserIdentifier, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browsers/", aws_util:encode_uri(BrowserIdentifier), "/sessions/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"sessionId">>, SessionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific code interpreter
%% session in Amazon Bedrock.
%%
%% This operation returns the session's configuration, current status,
%% and metadata.
%%
%% To get a code interpreter session, you must specify both the code
%% interpreter identifier and the session ID. The response includes
%% information about the session's timeout settings and current status.
%%
%% The following operations are related to `GetCodeInterpreterSession':
%%
%% StartCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
%%
%% ListCodeInterpreterSessions:
%% https://docs.aws.amazon.com/API_ListCodeInterpreterSessions.html
%%
%% StopCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html
-spec get_code_interpreter_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_session_errors(), tuple()}.
get_code_interpreter_session(Client, CodeInterpreterIdentifier, SessionId)
  when is_map(Client) ->
    get_code_interpreter_session(Client, CodeInterpreterIdentifier, SessionId, #{}, #{}).

-spec get_code_interpreter_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_session_errors(), tuple()}.
get_code_interpreter_session(Client, CodeInterpreterIdentifier, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_interpreter_session(Client, CodeInterpreterIdentifier, SessionId, QueryMap, HeadersMap, []).

-spec get_code_interpreter_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, get_code_interpreter_session_errors(), tuple()}.
get_code_interpreter_session(Client, CodeInterpreterIdentifier, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterIdentifier), "/sessions/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"sessionId">>, SessionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific event in an AgentCore Memory
%% resource.
%%
%% To use this operation, you must have the `bedrock-agentcore:GetEvent'
%% permission.
-spec get_event(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_event_output(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, ActorId, EventId, MemoryId, SessionId)
  when is_map(Client) ->
    get_event(Client, ActorId, EventId, MemoryId, SessionId, #{}, #{}).

-spec get_event(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_event_output(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, ActorId, EventId, MemoryId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event(Client, ActorId, EventId, MemoryId, SessionId, QueryMap, HeadersMap, []).

-spec get_event(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_output(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, ActorId, EventId, MemoryId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/actor/", aws_util:encode_uri(ActorId), "/sessions/", aws_util:encode_uri(SessionId), "/events/", aws_util:encode_uri(EventId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specific memory record from an AgentCore Memory resource.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:GetMemoryRecord' permission.
-spec get_memory_record(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_memory_record_output(), tuple()} |
    {error, any()} |
    {error, get_memory_record_errors(), tuple()}.
get_memory_record(Client, MemoryId, MemoryRecordId)
  when is_map(Client) ->
    get_memory_record(Client, MemoryId, MemoryRecordId, #{}, #{}).

-spec get_memory_record(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_memory_record_output(), tuple()} |
    {error, any()} |
    {error, get_memory_record_errors(), tuple()}.
get_memory_record(Client, MemoryId, MemoryRecordId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_memory_record(Client, MemoryId, MemoryRecordId, QueryMap, HeadersMap, []).

-spec get_memory_record(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_memory_record_output(), tuple()} |
    {error, any()} |
    {error, get_memory_record_errors(), tuple()}.
get_memory_record(Client, MemoryId, MemoryRecordId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecord/", aws_util:encode_uri(MemoryRecordId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the API key associated with an API key credential provider.
-spec get_resource_api_key(aws_client:aws_client(), get_resource_api_key_request()) ->
    {ok, get_resource_api_key_response(), tuple()} |
    {error, any()} |
    {error, get_resource_api_key_errors(), tuple()}.
get_resource_api_key(Client, Input) ->
    get_resource_api_key(Client, Input, []).

-spec get_resource_api_key(aws_client:aws_client(), get_resource_api_key_request(), proplists:proplist()) ->
    {ok, get_resource_api_key_response(), tuple()} |
    {error, any()} |
    {error, get_resource_api_key_errors(), tuple()}.
get_resource_api_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/api-key"],
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

%% @doc Returns the OAuth 2.0 token of the provided resource.
-spec get_resource_oauth2_token(aws_client:aws_client(), get_resource_oauth2_token_request()) ->
    {ok, get_resource_oauth2_token_response(), tuple()} |
    {error, any()} |
    {error, get_resource_oauth2_token_errors(), tuple()}.
get_resource_oauth2_token(Client, Input) ->
    get_resource_oauth2_token(Client, Input, []).

-spec get_resource_oauth2_token(aws_client:aws_client(), get_resource_oauth2_token_request(), proplists:proplist()) ->
    {ok, get_resource_oauth2_token_response(), tuple()} |
    {error, any()} |
    {error, get_resource_oauth2_token_errors(), tuple()}.
get_resource_oauth2_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/oauth2/token"],
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

%% @doc Obtains a workload access token for agentic workloads not acting on
%% behalf of a user.
-spec get_workload_access_token(aws_client:aws_client(), get_workload_access_token_request()) ->
    {ok, get_workload_access_token_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_errors(), tuple()}.
get_workload_access_token(Client, Input) ->
    get_workload_access_token(Client, Input, []).

-spec get_workload_access_token(aws_client:aws_client(), get_workload_access_token_request(), proplists:proplist()) ->
    {ok, get_workload_access_token_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_errors(), tuple()}.
get_workload_access_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetWorkloadAccessToken"],
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

%% @doc Obtains a workload access token for agentic workloads acting on
%% behalf of a user, using a JWT token.
-spec get_workload_access_token_for_j_w_t(aws_client:aws_client(), get_workload_access_token_for_j_w_t_request()) ->
    {ok, get_workload_access_token_for_j_w_t_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_for_j_w_t_errors(), tuple()}.
get_workload_access_token_for_j_w_t(Client, Input) ->
    get_workload_access_token_for_j_w_t(Client, Input, []).

-spec get_workload_access_token_for_j_w_t(aws_client:aws_client(), get_workload_access_token_for_j_w_t_request(), proplists:proplist()) ->
    {ok, get_workload_access_token_for_j_w_t_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_for_j_w_t_errors(), tuple()}.
get_workload_access_token_for_j_w_t(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetWorkloadAccessTokenForJWT"],
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

%% @doc Obtains a workload access token for agentic workloads acting on
%% behalf of a user, using the user's ID.
-spec get_workload_access_token_for_user_id(aws_client:aws_client(), get_workload_access_token_for_user_id_request()) ->
    {ok, get_workload_access_token_for_user_id_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_for_user_id_errors(), tuple()}.
get_workload_access_token_for_user_id(Client, Input) ->
    get_workload_access_token_for_user_id(Client, Input, []).

-spec get_workload_access_token_for_user_id(aws_client:aws_client(), get_workload_access_token_for_user_id_request(), proplists:proplist()) ->
    {ok, get_workload_access_token_for_user_id_response(), tuple()} |
    {error, any()} |
    {error, get_workload_access_token_for_user_id_errors(), tuple()}.
get_workload_access_token_for_user_id(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identities/GetWorkloadAccessTokenForUserId"],
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

%% @doc Sends a request to an agent or tool hosted in an Amazon Bedrock
%% AgentCore Runtime and receives responses in real-time.
%%
%% To invoke an agent you must specify the AgentCore Runtime ARN and provide
%% a payload containing your request. You can optionally specify a qualifier
%% to target a specific version or endpoint of the agent.
%%
%% This operation supports streaming responses, allowing you to receive
%% partial responses as they become available. We recommend using pagination
%% to ensure that the operation returns quickly and successfully when
%% processing large responses.
%%
%% For example code, see Invoke an AgentCore Runtime agent:
%% https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html.
%%
%% If you're integrating your agent with OAuth, you can't use the
%% Amazon Web Services SDK to call `InvokeAgentRuntime'. Instead, make a
%% HTTPS request to `InvokeAgentRuntime'. For an example, see
%% Authenticate and authorize with Inbound Auth and Outbound Auth:
%% https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:InvokeAgentRuntime' permission.
-spec invoke_agent_runtime(aws_client:aws_client(), binary() | list(), invoke_agent_runtime_request()) ->
    {ok, invoke_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_runtime_errors(), tuple()}.
invoke_agent_runtime(Client, AgentRuntimeArn, Input) ->
    invoke_agent_runtime(Client, AgentRuntimeArn, Input, []).

-spec invoke_agent_runtime(aws_client:aws_client(), binary() | list(), invoke_agent_runtime_request(), proplists:proplist()) ->
    {ok, invoke_agent_runtime_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_runtime_errors(), tuple()}.
invoke_agent_runtime(Client, AgentRuntimeArn, Input0, Options0) ->
    Method = post,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeArn), "/invocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>},
                       {<<"baggage">>, <<"baggage">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"Mcp-Protocol-Version">>, <<"mcpProtocolVersion">>},
                       {<<"Mcp-Session-Id">>, <<"mcpSessionId">>},
                       {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, <<"runtimeSessionId">>},
                       {<<"X-Amzn-Bedrock-AgentCore-Runtime-User-Id">>, <<"runtimeUserId">>},
                       {<<"X-Amzn-Trace-Id">>, <<"traceId">>},
                       {<<"traceparent">>, <<"traceParent">>},
                       {<<"tracestate">>, <<"traceState">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"qualifier">>, <<"qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"baggage">>, <<"baggage">>},
            {<<"Content-Type">>, <<"contentType">>},
            {<<"Mcp-Protocol-Version">>, <<"mcpProtocolVersion">>},
            {<<"Mcp-Session-Id">>, <<"mcpSessionId">>},
            {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, <<"runtimeSessionId">>},
            {<<"X-Amzn-Trace-Id">>, <<"traceId">>},
            {<<"traceparent">>, <<"traceParent">>},
            {<<"tracestate">>, <<"traceState">>}
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

%% @doc Executes code within an active code interpreter session in Amazon
%% Bedrock.
%%
%% This operation processes the provided code, runs it in a secure
%% environment, and returns the execution results including output, errors,
%% and generated visualizations.
%%
%% To execute code, you must specify the code interpreter identifier, session
%% ID, and the code to run in the arguments parameter. The operation returns
%% a stream containing the execution results, which can include text output,
%% error messages, and data visualizations.
%%
%% This operation is subject to request rate limiting based on your
%% account's service quotas.
%%
%% The following operations are related to `InvokeCodeInterpreter':
%%
%% StartCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
%%
%% GetCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
-spec invoke_code_interpreter(aws_client:aws_client(), binary() | list(), invoke_code_interpreter_request()) ->
    {ok, invoke_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, invoke_code_interpreter_errors(), tuple()}.
invoke_code_interpreter(Client, CodeInterpreterIdentifier, Input) ->
    invoke_code_interpreter(Client, CodeInterpreterIdentifier, Input, []).

-spec invoke_code_interpreter(aws_client:aws_client(), binary() | list(), invoke_code_interpreter_request(), proplists:proplist()) ->
    {ok, invoke_code_interpreter_response(), tuple()} |
    {error, any()} |
    {error, invoke_code_interpreter_errors(), tuple()}.
invoke_code_interpreter(Client, CodeInterpreterIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterIdentifier), "/tools/invoke"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-code-interpreter-session-id">>, <<"sessionId">>}
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
            {<<"x-amzn-code-interpreter-session-id">>, <<"sessionId">>}
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

%% @doc Lists all actors in an AgentCore Memory resource.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:ListActors' permission.
-spec list_actors(aws_client:aws_client(), binary() | list(), list_actors_input()) ->
    {ok, list_actors_output(), tuple()} |
    {error, any()} |
    {error, list_actors_errors(), tuple()}.
list_actors(Client, MemoryId, Input) ->
    list_actors(Client, MemoryId, Input, []).

-spec list_actors(aws_client:aws_client(), binary() | list(), list_actors_input(), proplists:proplist()) ->
    {ok, list_actors_output(), tuple()} |
    {error, any()} |
    {error, list_actors_errors(), tuple()}.
list_actors(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/actors"],
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

%% @doc Retrieves a list of browser sessions in Amazon Bedrock that match the
%% specified criteria.
%%
%% This operation returns summary information about each session, including
%% identifiers, status, and timestamps.
%%
%% You can filter the results by browser identifier and session status. The
%% operation supports pagination to handle large result sets efficiently.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully when retrieving large numbers of sessions.
%%
%% The following operations are related to `ListBrowserSessions':
%%
%% StartBrowserSession:
%% https://docs.aws.amazon.com/API_StartBrowserSession.html
%%
%% GetBrowserSession: https://docs.aws.amazon.com/API_GetBrowserSession.html
-spec list_browser_sessions(aws_client:aws_client(), binary() | list(), list_browser_sessions_request()) ->
    {ok, list_browser_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_browser_sessions_errors(), tuple()}.
list_browser_sessions(Client, BrowserIdentifier, Input) ->
    list_browser_sessions(Client, BrowserIdentifier, Input, []).

-spec list_browser_sessions(aws_client:aws_client(), binary() | list(), list_browser_sessions_request(), proplists:proplist()) ->
    {ok, list_browser_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_browser_sessions_errors(), tuple()}.
list_browser_sessions(Client, BrowserIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/browsers/", aws_util:encode_uri(BrowserIdentifier), "/sessions/list"],
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

%% @doc Retrieves a list of code interpreter sessions in Amazon Bedrock that
%% match the specified criteria.
%%
%% This operation returns summary information about each session, including
%% identifiers, status, and timestamps.
%%
%% You can filter the results by code interpreter identifier and session
%% status. The operation supports pagination to handle large result sets
%% efficiently.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully when retrieving large numbers of sessions.
%%
%% The following operations are related to `ListCodeInterpreterSessions':
%%
%% StartCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
%%
%% GetCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
-spec list_code_interpreter_sessions(aws_client:aws_client(), binary() | list(), list_code_interpreter_sessions_request()) ->
    {ok, list_code_interpreter_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_code_interpreter_sessions_errors(), tuple()}.
list_code_interpreter_sessions(Client, CodeInterpreterIdentifier, Input) ->
    list_code_interpreter_sessions(Client, CodeInterpreterIdentifier, Input, []).

-spec list_code_interpreter_sessions(aws_client:aws_client(), binary() | list(), list_code_interpreter_sessions_request(), proplists:proplist()) ->
    {ok, list_code_interpreter_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_code_interpreter_sessions_errors(), tuple()}.
list_code_interpreter_sessions(Client, CodeInterpreterIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterIdentifier), "/sessions/list"],
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

%% @doc Lists events in an AgentCore Memory resource based on specified
%% criteria.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:ListEvents' permission.
-spec list_events(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_events_input()) ->
    {ok, list_events_output(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, ActorId, MemoryId, SessionId, Input) ->
    list_events(Client, ActorId, MemoryId, SessionId, Input, []).

-spec list_events(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_events_input(), proplists:proplist()) ->
    {ok, list_events_output(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, ActorId, MemoryId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/actor/", aws_util:encode_uri(ActorId), "/sessions/", aws_util:encode_uri(SessionId), ""],
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

%% @doc Lists memory records in an AgentCore Memory resource based on
%% specified criteria.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:ListMemoryRecords' permission.
-spec list_memory_records(aws_client:aws_client(), binary() | list(), list_memory_records_input()) ->
    {ok, list_memory_records_output(), tuple()} |
    {error, any()} |
    {error, list_memory_records_errors(), tuple()}.
list_memory_records(Client, MemoryId, Input) ->
    list_memory_records(Client, MemoryId, Input, []).

-spec list_memory_records(aws_client:aws_client(), binary() | list(), list_memory_records_input(), proplists:proplist()) ->
    {ok, list_memory_records_output(), tuple()} |
    {error, any()} |
    {error, list_memory_records_errors(), tuple()}.
list_memory_records(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/memoryRecords"],
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

%% @doc Lists sessions in an AgentCore Memory resource based on specified
%% criteria.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:ListSessions' permission.
-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), list_sessions_input()) ->
    {ok, list_sessions_output(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, ActorId, MemoryId, Input) ->
    list_sessions(Client, ActorId, MemoryId, Input, []).

-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), list_sessions_input(), proplists:proplist()) ->
    {ok, list_sessions_output(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, ActorId, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/actor/", aws_util:encode_uri(ActorId), "/sessions"],
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

%% @doc Searches for and retrieves memory records from an AgentCore Memory
%% resource based on specified search criteria.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% To use this operation, you must have the
%% `bedrock-agentcore:RetrieveMemoryRecords' permission.
-spec retrieve_memory_records(aws_client:aws_client(), binary() | list(), retrieve_memory_records_input()) ->
    {ok, retrieve_memory_records_output(), tuple()} |
    {error, any()} |
    {error, retrieve_memory_records_errors(), tuple()}.
retrieve_memory_records(Client, MemoryId, Input) ->
    retrieve_memory_records(Client, MemoryId, Input, []).

-spec retrieve_memory_records(aws_client:aws_client(), binary() | list(), retrieve_memory_records_input(), proplists:proplist()) ->
    {ok, retrieve_memory_records_output(), tuple()} |
    {error, any()} |
    {error, retrieve_memory_records_errors(), tuple()}.
retrieve_memory_records(Client, MemoryId, Input0, Options0) ->
    Method = post,
    Path = ["/memories/", aws_util:encode_uri(MemoryId), "/retrieve"],
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

%% @doc Creates and initializes a browser session in Amazon Bedrock.
%%
%% The session enables agents to navigate and interact with web content,
%% extract information from websites, and perform web-based tasks as part of
%% their response generation.
%%
%% To create a session, you must specify a browser identifier and a name. You
%% can also configure the viewport dimensions to control the visible area of
%% web content. The session remains active until it times out or you
%% explicitly stop it using the `StopBrowserSession' operation.
%%
%% The following operations are related to `StartBrowserSession':
%%
%% GetBrowserSession: https://docs.aws.amazon.com/API_GetBrowserSession.html
%%
%% UpdateBrowserStream:
%% https://docs.aws.amazon.com/API_UpdateBrowserStream.html
%%
%% StopBrowserSession:
%% https://docs.aws.amazon.com/API_StopBrowserSession.html
-spec start_browser_session(aws_client:aws_client(), binary() | list(), start_browser_session_request()) ->
    {ok, start_browser_session_response(), tuple()} |
    {error, any()} |
    {error, start_browser_session_errors(), tuple()}.
start_browser_session(Client, BrowserIdentifier, Input) ->
    start_browser_session(Client, BrowserIdentifier, Input, []).

-spec start_browser_session(aws_client:aws_client(), binary() | list(), start_browser_session_request(), proplists:proplist()) ->
    {ok, start_browser_session_response(), tuple()} |
    {error, any()} |
    {error, start_browser_session_errors(), tuple()}.
start_browser_session(Client, BrowserIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/browsers/", aws_util:encode_uri(BrowserIdentifier), "/sessions/start"],
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

%% @doc Creates and initializes a code interpreter session in Amazon Bedrock.
%%
%% The session enables agents to execute code as part of their response
%% generation, supporting programming languages such as Python for data
%% analysis, visualization, and computation tasks.
%%
%% To create a session, you must specify a code interpreter identifier and a
%% name. The session remains active until it times out or you explicitly stop
%% it using the `StopCodeInterpreterSession' operation.
%%
%% The following operations are related to `StartCodeInterpreterSession':
%%
%% InvokeCodeInterpreter:
%% https://docs.aws.amazon.com/API_InvokeCodeInterpreter.html
%%
%% GetCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
%%
%% StopCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html
-spec start_code_interpreter_session(aws_client:aws_client(), binary() | list(), start_code_interpreter_session_request()) ->
    {ok, start_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, start_code_interpreter_session_errors(), tuple()}.
start_code_interpreter_session(Client, CodeInterpreterIdentifier, Input) ->
    start_code_interpreter_session(Client, CodeInterpreterIdentifier, Input, []).

-spec start_code_interpreter_session(aws_client:aws_client(), binary() | list(), start_code_interpreter_session_request(), proplists:proplist()) ->
    {ok, start_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, start_code_interpreter_session_errors(), tuple()}.
start_code_interpreter_session(Client, CodeInterpreterIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterIdentifier), "/sessions/start"],
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

%% @doc Terminates an active browser session in Amazon Bedrock.
%%
%% This operation stops the session, releases associated resources, and makes
%% the session unavailable for further use.
%%
%% To stop a browser session, you must specify both the browser identifier
%% and the session ID. Once stopped, a session cannot be restarted; you must
%% create a new session using `StartBrowserSession'.
%%
%% The following operations are related to `StopBrowserSession':
%%
%% StartBrowserSession:
%% https://docs.aws.amazon.com/API_StartBrowserSession.html
%%
%% GetBrowserSession: https://docs.aws.amazon.com/API_GetBrowserSession.html
-spec stop_browser_session(aws_client:aws_client(), binary() | list(), stop_browser_session_request()) ->
    {ok, stop_browser_session_response(), tuple()} |
    {error, any()} |
    {error, stop_browser_session_errors(), tuple()}.
stop_browser_session(Client, BrowserIdentifier, Input) ->
    stop_browser_session(Client, BrowserIdentifier, Input, []).

-spec stop_browser_session(aws_client:aws_client(), binary() | list(), stop_browser_session_request(), proplists:proplist()) ->
    {ok, stop_browser_session_response(), tuple()} |
    {error, any()} |
    {error, stop_browser_session_errors(), tuple()}.
stop_browser_session(Client, BrowserIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/browsers/", aws_util:encode_uri(BrowserIdentifier), "/sessions/stop"],
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
                     {<<"sessionId">>, <<"sessionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Terminates an active code interpreter session in Amazon Bedrock.
%%
%% This operation stops the session, releases associated resources, and makes
%% the session unavailable for further use.
%%
%% To stop a code interpreter session, you must specify both the code
%% interpreter identifier and the session ID. Once stopped, a session cannot
%% be restarted; you must create a new session using
%% `StartCodeInterpreterSession'.
%%
%% The following operations are related to `StopCodeInterpreterSession':
%%
%% StartCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
%%
%% GetCodeInterpreterSession:
%% https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
-spec stop_code_interpreter_session(aws_client:aws_client(), binary() | list(), stop_code_interpreter_session_request()) ->
    {ok, stop_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, stop_code_interpreter_session_errors(), tuple()}.
stop_code_interpreter_session(Client, CodeInterpreterIdentifier, Input) ->
    stop_code_interpreter_session(Client, CodeInterpreterIdentifier, Input, []).

-spec stop_code_interpreter_session(aws_client:aws_client(), binary() | list(), stop_code_interpreter_session_request(), proplists:proplist()) ->
    {ok, stop_code_interpreter_session_response(), tuple()} |
    {error, any()} |
    {error, stop_code_interpreter_session_errors(), tuple()}.
stop_code_interpreter_session(Client, CodeInterpreterIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/code-interpreters/", aws_util:encode_uri(CodeInterpreterIdentifier), "/sessions/stop"],
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
                     {<<"sessionId">>, <<"sessionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a session that is running in an running AgentCore Runtime
%% agent.
-spec stop_runtime_session(aws_client:aws_client(), binary() | list(), stop_runtime_session_request()) ->
    {ok, stop_runtime_session_response(), tuple()} |
    {error, any()} |
    {error, stop_runtime_session_errors(), tuple()}.
stop_runtime_session(Client, AgentRuntimeArn, Input) ->
    stop_runtime_session(Client, AgentRuntimeArn, Input, []).

-spec stop_runtime_session(aws_client:aws_client(), binary() | list(), stop_runtime_session_request(), proplists:proplist()) ->
    {ok, stop_runtime_session_response(), tuple()} |
    {error, any()} |
    {error, stop_runtime_session_errors(), tuple()}.
stop_runtime_session(Client, AgentRuntimeArn, Input0, Options0) ->
    Method = post,
    Path = ["/runtimes/", aws_util:encode_uri(AgentRuntimeArn), "/stopruntimesession"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, <<"runtimeSessionId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"qualifier">>, <<"qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id">>, <<"runtimeSessionId">>}
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

%% @doc Updates a browser stream.
%%
%% To use this operation, you must have permissions to perform the
%% bedrock:UpdateBrowserStream action.
-spec update_browser_stream(aws_client:aws_client(), binary() | list(), update_browser_stream_request()) ->
    {ok, update_browser_stream_response(), tuple()} |
    {error, any()} |
    {error, update_browser_stream_errors(), tuple()}.
update_browser_stream(Client, BrowserIdentifier, Input) ->
    update_browser_stream(Client, BrowserIdentifier, Input, []).

-spec update_browser_stream(aws_client:aws_client(), binary() | list(), update_browser_stream_request(), proplists:proplist()) ->
    {ok, update_browser_stream_response(), tuple()} |
    {error, any()} |
    {error, update_browser_stream_errors(), tuple()}.
update_browser_stream(Client, BrowserIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/browsers/", aws_util:encode_uri(BrowserIdentifier), "/sessions/streams/update"],
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
                     {<<"sessionId">>, <<"sessionId">>}
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
    Client1 = Client#{service => <<"bedrock-agentcore">>},
    Host = build_host(<<"bedrock-agentcore">>, Client1),
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
