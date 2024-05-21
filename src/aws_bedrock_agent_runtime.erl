%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains APIs related to model invocation and querying of knowledge
%% bases.
-module(aws_bedrock_agent_runtime).

-export([invoke_agent/5,
         invoke_agent/6,
         retrieve/3,
         retrieve/4,
         retrieve_and_generate/2,
         retrieve_and_generate/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% function_invocation_input() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"function">> => [string()],
%%   <<"parameters">> => list(function_parameter()())
%% }
-type function_invocation_input() :: #{binary() => any()}.


%% Example:
%% rationale() :: #{
%%   <<"text">> => string(),
%%   <<"traceId">> => string()
%% }
-type rationale() :: #{binary() => any()}.


%% Example:
%% api_request_body() :: #{
%%   <<"content">> => map()
%% }
-type api_request_body() :: #{binary() => any()}.


%% Example:
%% guardrail_content_policy_assessment() :: #{
%%   <<"filters">> => list(guardrail_content_filter()())
%% }
-type guardrail_content_policy_assessment() :: #{binary() => any()}.


%% Example:
%% text_inference_config() :: #{
%%   <<"maxTokens">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topP">> => float()
%% }
-type text_inference_config() :: #{binary() => any()}.


%% Example:
%% external_source() :: #{
%%   <<"byteContent">> => byte_content_doc(),
%%   <<"s3Location">> => s3_object_doc(),
%%   <<"sourceType">> => list(any())
%% }
-type external_source() :: #{binary() => any()}.


%% Example:
%% inference_configuration() :: #{
%%   <<"maximumLength">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topK">> => integer(),
%%   <<"topP">> => float()
%% }
-type inference_configuration() :: #{binary() => any()}.


%% Example:
%% bad_gateway_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% s3_object_doc() :: #{
%%   <<"uri">> => string()
%% }
-type s3_object_doc() :: #{binary() => any()}.


%% Example:
%% function_parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type function_parameter() :: #{binary() => any()}.


%% Example:
%% dependency_failed_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type dependency_failed_exception() :: #{binary() => any()}.


%% Example:
%% citation() :: #{
%%   <<"generatedResponsePart">> => generated_response_part(),
%%   <<"retrievedReferences">> => list(retrieved_reference()())
%% }
-type citation() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_response() :: #{
%%   <<"citations">> => list(citation()()),
%%   <<"guardrailAction">> => list(any()),
%%   <<"output">> => retrieve_and_generate_output(),
%%   <<"sessionId">> => string()
%% }
-type retrieve_and_generate_response() :: #{binary() => any()}.


%% Example:
%% knowledge_base_query() :: #{
%%   <<"text">> => [string()]
%% }
-type knowledge_base_query() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"attribution">> => attribution(),
%%   <<"bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% failure_trace() :: #{
%%   <<"failureReason">> => string(),
%%   <<"traceId">> => string()
%% }
-type failure_trace() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_managed_word() :: #{binary() => any()}.


%% Example:
%% action_group_invocation_input() :: #{
%%   <<"actionGroupName">> => string(),
%%   <<"apiPath">> => string(),
%%   <<"function">> => string(),
%%   <<"parameters">> => list(parameter()()),
%%   <<"requestBody">> => request_body(),
%%   <<"verb">> => string()
%% }
-type action_group_invocation_input() :: #{binary() => any()}.


%% Example:
%% retrieved_reference() :: #{
%%   <<"content">> => retrieval_result_content(),
%%   <<"location">> => retrieval_result_location(),
%%   <<"metadata">> => map()
%% }
-type retrieved_reference() :: #{binary() => any()}.


%% Example:
%% retrieval_result_location() :: #{
%%   <<"s3Location">> => retrieval_result_s3_location(),
%%   <<"type">> => list(any())
%% }
-type retrieval_result_location() :: #{binary() => any()}.


%% Example:
%% api_parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type api_parameter() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_session_configuration() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type retrieve_and_generate_session_configuration() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_request() :: #{
%%   <<"input">> := retrieve_and_generate_input(),
%%   <<"retrieveAndGenerateConfiguration">> => retrieve_and_generate_configuration(),
%%   <<"sessionConfiguration">> => retrieve_and_generate_session_configuration(),
%%   <<"sessionId">> => string()
%% }
-type retrieve_and_generate_request() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_configuration() :: #{
%%   <<"externalSourcesConfiguration">> => external_sources_retrieve_and_generate_configuration(),
%%   <<"knowledgeBaseConfiguration">> => knowledge_base_retrieve_and_generate_configuration(),
%%   <<"type">> => list(any())
%% }
-type retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% retrieval_result_s3_location() :: #{
%%   <<"uri">> => [string()]
%% }
-type retrieval_result_s3_location() :: #{binary() => any()}.


%% Example:
%% retrieval_result_content() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieval_result_content() :: #{binary() => any()}.


%% Example:
%% guardrail_custom_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()]
%% }
-type guardrail_custom_word() :: #{binary() => any()}.


%% Example:
%% content_body() :: #{
%%   <<"body">> => [string()]
%% }
-type content_body() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => generation_configuration(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type knowledge_base_retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% observation() :: #{
%%   <<"actionGroupInvocationOutput">> => action_group_invocation_output(),
%%   <<"finalResponse">> => final_response(),
%%   <<"knowledgeBaseLookupOutput">> => knowledge_base_lookup_output(),
%%   <<"repromptResponse">> => reprompt_response(),
%%   <<"traceId">> => string(),
%%   <<"type">> => list(any())
%% }
-type observation() :: #{binary() => any()}.


%% Example:
%% guardrail_word_policy_assessment() :: #{
%%   <<"customWords">> => list(guardrail_custom_word()()),
%%   <<"managedWordLists">> => list(guardrail_managed_word()())
%% }
-type guardrail_word_policy_assessment() :: #{binary() => any()}.


%% Example:
%% span() :: #{
%%   <<"end">> => [integer()],
%%   <<"start">> => [integer()]
%% }
-type span() :: #{binary() => any()}.


%% Example:
%% pre_processing_parsed_response() :: #{
%%   <<"isValid">> => [boolean()],
%%   <<"rationale">> => string()
%% }
-type pre_processing_parsed_response() :: #{binary() => any()}.


%% Example:
%% function_result() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"function">> => [string()],
%%   <<"responseBody">> => map(),
%%   <<"responseState">> => list(any())
%% }
-type function_result() :: #{binary() => any()}.


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
%% post_processing_parsed_response() :: #{
%%   <<"text">> => string()
%% }
-type post_processing_parsed_response() :: #{binary() => any()}.


%% Example:
%% guardrail_sensitive_information_policy_assessment() :: #{
%%   <<"piiEntities">> => list(guardrail_pii_entity_filter()()),
%%   <<"regexes">> => list(guardrail_regex_filter()())
%% }
-type guardrail_sensitive_information_policy_assessment() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieval_configuration() :: #{
%%   <<"vectorSearchConfiguration">> => knowledge_base_vector_search_configuration()
%% }
-type knowledge_base_retrieval_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"confidence">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type guardrail_content_filter() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% return_control_payload() :: #{
%%   <<"invocationId">> => [string()],
%%   <<"invocationInputs">> => list(list()())
%% }
-type return_control_payload() :: #{binary() => any()}.


%% Example:
%% text_response_part() :: #{
%%   <<"span">> => span(),
%%   <<"text">> => [string()]
%% }
-type text_response_part() :: #{binary() => any()}.


%% Example:
%% invoke_agent_response() :: #{
%%   <<"completion">> => list(),
%%   <<"contentType">> => string(),
%%   <<"sessionId">> => string()
%% }
-type invoke_agent_response() :: #{binary() => any()}.


%% Example:
%% session_state() :: #{
%%   <<"invocationId">> => [string()],
%%   <<"promptSessionAttributes">> => map(),
%%   <<"returnControlInvocationResults">> => list(list()()),
%%   <<"sessionAttributes">> => map()
%% }
-type session_state() :: #{binary() => any()}.


%% Example:
%% pre_processing_model_invocation_output() :: #{
%%   <<"parsedResponse">> => pre_processing_parsed_response(),
%%   <<"traceId">> => string()
%% }
-type pre_processing_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type parameter() :: #{binary() => any()}.


%% Example:
%% external_sources_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => external_sources_generation_configuration(),
%%   <<"modelArn">> => string(),
%%   <<"sources">> => list(external_source()())
%% }
-type external_sources_retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% api_invocation_input() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"apiPath">> => string(),
%%   <<"httpMethod">> => [string()],
%%   <<"parameters">> => list(api_parameter()()),
%%   <<"requestBody">> => api_request_body()
%% }
-type api_invocation_input() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_input() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieve_and_generate_input() :: #{binary() => any()}.


%% Example:
%% reprompt_response() :: #{
%%   <<"source">> => list(any()),
%%   <<"text">> => [string()]
%% }
-type reprompt_response() :: #{binary() => any()}.


%% Example:
%% final_response() :: #{
%%   <<"text">> => string()
%% }
-type final_response() :: #{binary() => any()}.


%% Example:
%% api_result() :: #{
%%   <<"actionGroup">> => [string()],
%%   <<"apiPath">> => string(),
%%   <<"httpMethod">> => [string()],
%%   <<"httpStatusCode">> => [integer()],
%%   <<"responseBody">> => map(),
%%   <<"responseState">> => list(any())
%% }
-type api_result() :: #{binary() => any()}.


%% Example:
%% byte_content_doc() :: #{
%%   <<"contentType">> => string(),
%%   <<"data">> => binary(),
%%   <<"identifier">> => string()
%% }
-type byte_content_doc() :: #{binary() => any()}.


%% Example:
%% external_sources_generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"inferenceConfig">> => inference_config(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type external_sources_generation_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_trace() :: #{
%%   <<"action">> => list(any()),
%%   <<"inputAssessments">> => list(guardrail_assessment()()),
%%   <<"outputAssessments">> => list(guardrail_assessment()()),
%%   <<"traceId">> => string()
%% }
-type guardrail_trace() :: #{binary() => any()}.


%% Example:
%% knowledge_base_vector_search_configuration() :: #{
%%   <<"filter">> => list(),
%%   <<"numberOfResults">> => [integer()],
%%   <<"overrideSearchType">> => list(any())
%% }
-type knowledge_base_vector_search_configuration() :: #{binary() => any()}.


%% Example:
%% filter_attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => any()
%% }
-type filter_attribute() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_assessment() :: #{
%%   <<"contentPolicy">> => guardrail_content_policy_assessment(),
%%   <<"sensitiveInformationPolicy">> => guardrail_sensitive_information_policy_assessment(),
%%   <<"topicPolicy">> => guardrail_topic_policy_assessment(),
%%   <<"wordPolicy">> => guardrail_word_policy_assessment()
%% }
-type guardrail_assessment() :: #{binary() => any()}.


%% Example:
%% model_invocation_input() :: #{
%%   <<"inferenceConfiguration">> => inference_configuration(),
%%   <<"overrideLambda">> => string(),
%%   <<"parserMode">> => list(any()),
%%   <<"promptCreationMode">> => list(any()),
%%   <<"text">> => string(),
%%   <<"traceId">> => string(),
%%   <<"type">> => list(any())
%% }
-type model_invocation_input() :: #{binary() => any()}.


%% Example:
%% attribution() :: #{
%%   <<"citations">> => list(citation()())
%% }
-type attribution() :: #{binary() => any()}.


%% Example:
%% trace_part() :: #{
%%   <<"agentAliasId">> => string(),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"trace">> => list()
%% }
-type trace_part() :: #{binary() => any()}.


%% Example:
%% prompt_template() :: #{
%%   <<"textPromptTemplate">> => string()
%% }
-type prompt_template() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% inference_config() :: #{
%%   <<"textInferenceConfig">> => text_inference_config()
%% }
-type inference_config() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_policy_assessment() :: #{
%%   <<"topics">> => list(guardrail_topic()())
%% }
-type guardrail_topic_policy_assessment() :: #{binary() => any()}.


%% Example:
%% generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"inferenceConfig">> => inference_config(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type generation_configuration() :: #{binary() => any()}.


%% Example:
%% property_parameters() :: #{
%%   <<"properties">> => list(parameter()())
%% }
-type property_parameters() :: #{binary() => any()}.


%% Example:
%% generated_response_part() :: #{
%%   <<"textResponsePart">> => text_response_part()
%% }
-type generated_response_part() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_output() :: #{
%%   <<"text">> => [string()]
%% }
-type retrieve_and_generate_output() :: #{binary() => any()}.


%% Example:
%% action_group_invocation_output() :: #{
%%   <<"text">> => string()
%% }
-type action_group_invocation_output() :: #{binary() => any()}.


%% Example:
%% guardrail_configuration() :: #{
%%   <<"guardrailId">> => [string()],
%%   <<"guardrailVersion">> => [string()]
%% }
-type guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_regex_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"name">> => [string()],
%%   <<"regex">> => [string()]
%% }
-type guardrail_regex_filter() :: #{binary() => any()}.


%% Example:
%% knowledge_base_lookup_output() :: #{
%%   <<"retrievedReferences">> => list(retrieved_reference()())
%% }
-type knowledge_base_lookup_output() :: #{binary() => any()}.


%% Example:
%% retrieve_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration(),
%%   <<"retrievalQuery">> := knowledge_base_query()
%% }
-type retrieve_request() :: #{binary() => any()}.


%% Example:
%% invoke_agent_request() :: #{
%%   <<"enableTrace">> => [boolean()],
%%   <<"endSession">> => [boolean()],
%%   <<"inputText">> => string(),
%%   <<"sessionState">> => session_state()
%% }
-type invoke_agent_request() :: #{binary() => any()}.


%% Example:
%% invocation_input() :: #{
%%   <<"actionGroupInvocationInput">> => action_group_invocation_input(),
%%   <<"invocationType">> => list(any()),
%%   <<"knowledgeBaseLookupInput">> => knowledge_base_lookup_input(),
%%   <<"traceId">> => string()
%% }
-type invocation_input() :: #{binary() => any()}.


%% Example:
%% request_body() :: #{
%%   <<"content">> => map()
%% }
-type request_body() :: #{binary() => any()}.


%% Example:
%% post_processing_model_invocation_output() :: #{
%%   <<"parsedResponse">> => post_processing_parsed_response(),
%%   <<"traceId">> => string()
%% }
-type post_processing_model_invocation_output() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_pii_entity_filter() :: #{binary() => any()}.


%% Example:
%% retrieve_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"retrievalResults">> => list(knowledge_base_retrieval_result()())
%% }
-type retrieve_response() :: #{binary() => any()}.


%% Example:
%% knowledge_base_lookup_input() :: #{
%%   <<"knowledgeBaseId">> => string(),
%%   <<"text">> => string()
%% }
-type knowledge_base_lookup_input() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieval_result() :: #{
%%   <<"content">> => retrieval_result_content(),
%%   <<"location">> => retrieval_result_location(),
%%   <<"metadata">> => map(),
%%   <<"score">> => [float()]
%% }
-type knowledge_base_retrieval_result() :: #{binary() => any()}.


%% Example:
%% guardrail_topic() :: #{
%%   <<"action">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_topic() :: #{binary() => any()}.

-type invoke_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type retrieve_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type retrieve_and_generate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% The CLI doesn't support `InvokeAgent'.
%%
%% Sends a prompt for the agent to process and respond to. Note the following
%% fields for the request:
%%
%% To continue the same conversation with an agent, use the same
%% `sessionId' value in the request.
%%
%% To activate trace enablement, turn `enableTrace' to `true'. Trace
%% enablement helps you follow the agent's reasoning process that led it
%% to the information it processed, the actions it took, and the final result
%% it yielded. For more information, see Trace enablement:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events.
%%
%% End a conversation by setting `endSession' to `true'.
%%
%% In the `sessionState' object, you can include attributes for the
%% session or prompt or, if you configured an action group to return control,
%% results from invocation of the action group.
%%
%% The response is returned in the `bytes' field of the `chunk'
%% object.
%%
%% The `attribution' object contains citations for parts of the response.
%%
%% If you set `enableTrace' to `true' in the request, you can trace
%% the agent's steps and reasoning process that led it to the response.
%%
%% If the action predicted was configured to return control, the response
%% returns parameters for the action, elicited from the user, in the
%% `returnControl' field.
%%
%% Errors are also surfaced in the response.
-spec invoke_agent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), invoke_agent_request()) ->
    {ok, invoke_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_errors(), tuple()}.
invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input) ->
    invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input, []).

-spec invoke_agent(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), invoke_agent_request(), proplists:proplist()) ->
    {ok, invoke_agent_response(), tuple()} |
    {error, any()} |
    {error, invoke_agent_errors(), tuple()}.
invoke_agent(Client, AgentAliasId, AgentId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentAliases/", aws_util:encode_uri(AgentAliasId), "/sessions/", aws_util:encode_uri(SessionId), "/text"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-bedrock-agent-content-type">>, <<"contentType">>},
            {<<"x-amz-bedrock-agent-session-id">>, <<"sessionId">>}
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

%% @doc Queries a knowledge base and retrieves information from it.
-spec retrieve(aws_client:aws_client(), binary() | list(), retrieve_request()) ->
    {ok, retrieve_response(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, KnowledgeBaseId, Input) ->
    retrieve(Client, KnowledgeBaseId, Input, []).

-spec retrieve(aws_client:aws_client(), binary() | list(), retrieve_request(), proplists:proplist()) ->
    {ok, retrieve_response(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/retrieve"],
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

%% @doc Queries a knowledge base and generates responses based on the
%% retrieved results.
%%
%% The response only cites sources that are relevant to the query.
-spec retrieve_and_generate(aws_client:aws_client(), retrieve_and_generate_request()) ->
    {ok, retrieve_and_generate_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_errors(), tuple()}.
retrieve_and_generate(Client, Input) ->
    retrieve_and_generate(Client, Input, []).

-spec retrieve_and_generate(aws_client:aws_client(), retrieve_and_generate_request(), proplists:proplist()) ->
    {ok, retrieve_and_generate_response(), tuple()} |
    {error, any()} |
    {error, retrieve_and_generate_errors(), tuple()}.
retrieve_and_generate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/retrieveAndGenerate"],
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-agent-runtime">>, Client1),
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
