%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for running inference using Amazon
%% Bedrock models.
-module(aws_bedrock_runtime).

-export([apply_guardrail/4,
         apply_guardrail/5,
         converse/3,
         converse/4,
         converse_stream/3,
         converse_stream/4,
         invoke_model/3,
         invoke_model/4,
         invoke_model_with_response_stream/3,
         invoke_model_with_response_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% specific_tool_choice() :: #{
%%   <<"name">> => string()
%% }
-type specific_tool_choice() :: #{binary() => any()}.


%% Example:
%% guardrail_content_policy_assessment() :: #{
%%   <<"filters">> => list(guardrail_content_filter()())
%% }
-type guardrail_content_policy_assessment() :: #{binary() => any()}.


%% Example:
%% document_block() :: #{
%%   <<"format">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"source">> => list()
%% }
-type document_block() :: #{binary() => any()}.


%% Example:
%% apply_guardrail_response() :: #{
%%   <<"action">> => list(any()),
%%   <<"assessments">> => list(guardrail_assessment()()),
%%   <<"guardrailCoverage">> => guardrail_coverage(),
%%   <<"outputs">> => list(guardrail_output_content()()),
%%   <<"usage">> => guardrail_usage()
%% }
-type apply_guardrail_response() :: #{binary() => any()}.


%% Example:
%% model_not_ready_exception() :: #{
%%   <<"message">> => string()
%% }
-type model_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% content_block_stop_event() :: #{
%%   <<"contentBlockIndex">> => integer()
%% }
-type content_block_stop_event() :: #{binary() => any()}.

%% Example:
%% any_tool_choice() :: #{}
-type any_tool_choice() :: #{}.


%% Example:
%% inference_configuration() :: #{
%%   <<"maxTokens">> => [integer()],
%%   <<"stopSequences">> => list(string()()),
%%   <<"temperature">> => [float()],
%%   <<"topP">> => [float()]
%% }
-type inference_configuration() :: #{binary() => any()}.

%% Example:
%% auto_tool_choice() :: #{}
-type auto_tool_choice() :: #{}.


%% Example:
%% apply_guardrail_request() :: #{
%%   <<"content">> := list(list()()),
%%   <<"source">> := list(any())
%% }
-type apply_guardrail_request() :: #{binary() => any()}.


%% Example:
%% converse_request() :: #{
%%   <<"additionalModelRequestFields">> => [any()],
%%   <<"additionalModelResponseFieldPaths">> => list([string()]()),
%%   <<"guardrailConfig">> => guardrail_configuration(),
%%   <<"inferenceConfig">> => inference_configuration(),
%%   <<"messages">> => list(message()()),
%%   <<"promptVariables">> => map(),
%%   <<"system">> => list(list()()),
%%   <<"toolConfig">> => tool_configuration()
%% }
-type converse_request() :: #{binary() => any()}.


%% Example:
%% guardrail_trace_assessment() :: #{
%%   <<"inputAssessment">> => map(),
%%   <<"modelOutput">> => list(string()()),
%%   <<"outputAssessments">> => map()
%% }
-type guardrail_trace_assessment() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% message_stop_event() :: #{
%%   <<"additionalModelResponseFields">> => [any()],
%%   <<"stopReason">> => list(any())
%% }
-type message_stop_event() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_managed_word() :: #{binary() => any()}.


%% Example:
%% invoke_model_with_response_stream_response() :: #{
%%   <<"body">> => list(),
%%   <<"contentType">> => string()
%% }
-type invoke_model_with_response_stream_response() :: #{binary() => any()}.


%% Example:
%% guardrail_text_block() :: #{
%%   <<"qualifiers">> => list(list(any())()),
%%   <<"text">> => [string()]
%% }
-type guardrail_text_block() :: #{binary() => any()}.


%% Example:
%% image_block() :: #{
%%   <<"format">> => list(any()),
%%   <<"source">> => list()
%% }
-type image_block() :: #{binary() => any()}.


%% Example:
%% guardrail_text_characters_coverage() :: #{
%%   <<"guarded">> => integer(),
%%   <<"total">> => integer()
%% }
-type guardrail_text_characters_coverage() :: #{binary() => any()}.


%% Example:
%% content_block_start_event() :: #{
%%   <<"contentBlockIndex">> => integer(),
%%   <<"start">> => list()
%% }
-type content_block_start_event() :: #{binary() => any()}.


%% Example:
%% content_block_delta_event() :: #{
%%   <<"contentBlockIndex">> => integer(),
%%   <<"delta">> => list()
%% }
-type content_block_delta_event() :: #{binary() => any()}.


%% Example:
%% guardrail_custom_word() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()]
%% }
-type guardrail_custom_word() :: #{binary() => any()}.


%% Example:
%% message_start_event() :: #{
%%   <<"role">> => list(any())
%% }
-type message_start_event() :: #{binary() => any()}.


%% Example:
%% guardrail_word_policy_assessment() :: #{
%%   <<"customWords">> => list(guardrail_custom_word()()),
%%   <<"managedWordLists">> => list(guardrail_managed_word()())
%% }
-type guardrail_word_policy_assessment() :: #{binary() => any()}.


%% Example:
%% guardrail_coverage() :: #{
%%   <<"textCharacters">> => guardrail_text_characters_coverage()
%% }
-type guardrail_coverage() :: #{binary() => any()}.


%% Example:
%% invoke_model_request() :: #{
%%   <<"accept">> => string(),
%%   <<"body">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"trace">> => list(any())
%% }
-type invoke_model_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% invoke_model_with_response_stream_request() :: #{
%%   <<"accept">> => string(),
%%   <<"body">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"trace">> => list(any())
%% }
-type invoke_model_with_response_stream_request() :: #{binary() => any()}.


%% Example:
%% guardrail_sensitive_information_policy_assessment() :: #{
%%   <<"piiEntities">> => list(guardrail_pii_entity_filter()()),
%%   <<"regexes">> => list(guardrail_regex_filter()())
%% }
-type guardrail_sensitive_information_policy_assessment() :: #{binary() => any()}.


%% Example:
%% converse_stream_metrics() :: #{
%%   <<"latencyMs">> => [float()]
%% }
-type converse_stream_metrics() :: #{binary() => any()}.


%% Example:
%% tool_use_block_start() :: #{
%%   <<"name">> => string(),
%%   <<"toolUseId">> => string()
%% }
-type tool_use_block_start() :: #{binary() => any()}.


%% Example:
%% invoke_model_response() :: #{
%%   <<"body">> => binary(),
%%   <<"contentType">> => string()
%% }
-type invoke_model_response() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"confidence">> => list(any()),
%%   <<"filterStrength">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type guardrail_content_filter() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% converse_trace() :: #{
%%   <<"guardrail">> => guardrail_trace_assessment()
%% }
-type converse_trace() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"score">> => [float()],
%%   <<"threshold">> => [float()],
%%   <<"type">> => list(any())
%% }
-type guardrail_contextual_grounding_filter() :: #{binary() => any()}.


%% Example:
%% tool_specification() :: #{
%%   <<"description">> => string(),
%%   <<"inputSchema">> => list(),
%%   <<"name">> => string()
%% }
-type tool_specification() :: #{binary() => any()}.


%% Example:
%% converse_stream_response() :: #{
%%   <<"stream">> => list()
%% }
-type converse_stream_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_policy_assessment() :: #{
%%   <<"filters">> => list(guardrail_contextual_grounding_filter()())
%% }
-type guardrail_contextual_grounding_policy_assessment() :: #{binary() => any()}.


%% Example:
%% converse_stream_metadata_event() :: #{
%%   <<"metrics">> => converse_stream_metrics(),
%%   <<"trace">> => converse_stream_trace(),
%%   <<"usage">> => token_usage()
%% }
-type converse_stream_metadata_event() :: #{binary() => any()}.


%% Example:
%% guardrail_stream_configuration() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"streamProcessingMode">> => list(any()),
%%   <<"trace">> => list(any())
%% }
-type guardrail_stream_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_assessment() :: #{
%%   <<"contentPolicy">> => guardrail_content_policy_assessment(),
%%   <<"contextualGroundingPolicy">> => guardrail_contextual_grounding_policy_assessment(),
%%   <<"invocationMetrics">> => guardrail_invocation_metrics(),
%%   <<"sensitiveInformationPolicy">> => guardrail_sensitive_information_policy_assessment(),
%%   <<"topicPolicy">> => guardrail_topic_policy_assessment(),
%%   <<"wordPolicy">> => guardrail_word_policy_assessment()
%% }
-type guardrail_assessment() :: #{binary() => any()}.


%% Example:
%% converse_metrics() :: #{
%%   <<"latencyMs">> => [float()]
%% }
-type converse_metrics() :: #{binary() => any()}.


%% Example:
%% model_error_exception() :: #{
%%   <<"message">> => string(),
%%   <<"originalStatusCode">> => integer(),
%%   <<"resourceName">> => string()
%% }
-type model_error_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_invocation_metrics() :: #{
%%   <<"guardrailCoverage">> => guardrail_coverage(),
%%   <<"guardrailProcessingLatency">> => float(),
%%   <<"usage">> => guardrail_usage()
%% }
-type guardrail_invocation_metrics() :: #{binary() => any()}.


%% Example:
%% tool_configuration() :: #{
%%   <<"toolChoice">> => list(),
%%   <<"tools">> => list(list()())
%% }
-type tool_configuration() :: #{binary() => any()}.


%% Example:
%% converse_stream_request() :: #{
%%   <<"additionalModelRequestFields">> => [any()],
%%   <<"additionalModelResponseFieldPaths">> => list([string()]()),
%%   <<"guardrailConfig">> => guardrail_stream_configuration(),
%%   <<"inferenceConfig">> => inference_configuration(),
%%   <<"messages">> => list(message()()),
%%   <<"promptVariables">> => map(),
%%   <<"system">> => list(list()()),
%%   <<"toolConfig">> => tool_configuration()
%% }
-type converse_stream_request() :: #{binary() => any()}.


%% Example:
%% tool_result_block() :: #{
%%   <<"content">> => list(list()()),
%%   <<"status">> => list(any()),
%%   <<"toolUseId">> => string()
%% }
-type tool_result_block() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% tool_use_block() :: #{
%%   <<"input">> => [any()],
%%   <<"name">> => string(),
%%   <<"toolUseId">> => string()
%% }
-type tool_use_block() :: #{binary() => any()}.


%% Example:
%% token_usage() :: #{
%%   <<"inputTokens">> => [integer()],
%%   <<"outputTokens">> => [integer()],
%%   <<"totalTokens">> => [integer()]
%% }
-type token_usage() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_policy_assessment() :: #{
%%   <<"topics">> => list(guardrail_topic()())
%% }
-type guardrail_topic_policy_assessment() :: #{binary() => any()}.


%% Example:
%% guardrail_usage() :: #{
%%   <<"contentPolicyUnits">> => integer(),
%%   <<"contextualGroundingPolicyUnits">> => integer(),
%%   <<"sensitiveInformationPolicyFreeUnits">> => integer(),
%%   <<"sensitiveInformationPolicyUnits">> => integer(),
%%   <<"topicPolicyUnits">> => integer(),
%%   <<"wordPolicyUnits">> => integer()
%% }
-type guardrail_usage() :: #{binary() => any()}.


%% Example:
%% model_stream_error_exception() :: #{
%%   <<"message">> => string(),
%%   <<"originalMessage">> => string(),
%%   <<"originalStatusCode">> => integer()
%% }
-type model_stream_error_exception() :: #{binary() => any()}.


%% Example:
%% model_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type model_timeout_exception() :: #{binary() => any()}.


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
%% guardrail_configuration() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"trace">> => list(any())
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
%% guardrail_output_content() :: #{
%%   <<"text">> => string()
%% }
-type guardrail_output_content() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"match">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_pii_entity_filter() :: #{binary() => any()}.


%% Example:
%% guardrail_converse_text_block() :: #{
%%   <<"qualifiers">> => list(list(any())()),
%%   <<"text">> => [string()]
%% }
-type guardrail_converse_text_block() :: #{binary() => any()}.


%% Example:
%% converse_stream_trace() :: #{
%%   <<"guardrail">> => guardrail_trace_assessment()
%% }
-type converse_stream_trace() :: #{binary() => any()}.


%% Example:
%% tool_use_block_delta() :: #{
%%   <<"input">> => [string()]
%% }
-type tool_use_block_delta() :: #{binary() => any()}.


%% Example:
%% guardrail_topic() :: #{
%%   <<"action">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"type">> => list(any())
%% }
-type guardrail_topic() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"content">> => list(list()()),
%%   <<"role">> => list(any())
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% converse_response() :: #{
%%   <<"additionalModelResponseFields">> => [any()],
%%   <<"metrics">> => converse_metrics(),
%%   <<"output">> => list(),
%%   <<"stopReason">> => list(any()),
%%   <<"trace">> => converse_trace(),
%%   <<"usage">> => token_usage()
%% }
-type converse_response() :: #{binary() => any()}.

-type apply_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type converse_errors() ::
    throttling_exception() | 
    validation_exception() | 
    model_timeout_exception() | 
    access_denied_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    model_not_ready_exception().

-type converse_stream_errors() ::
    throttling_exception() | 
    validation_exception() | 
    model_timeout_exception() | 
    access_denied_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    model_not_ready_exception().

-type invoke_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    model_timeout_exception() | 
    access_denied_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    model_not_ready_exception().

-type invoke_model_with_response_stream_errors() ::
    throttling_exception() | 
    validation_exception() | 
    model_timeout_exception() | 
    model_stream_error_exception() | 
    access_denied_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    model_not_ready_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc The action to apply a guardrail.
-spec apply_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), apply_guardrail_request()) ->
    {ok, apply_guardrail_response(), tuple()} |
    {error, any()} |
    {error, apply_guardrail_errors(), tuple()}.
apply_guardrail(Client, GuardrailIdentifier, GuardrailVersion, Input) ->
    apply_guardrail(Client, GuardrailIdentifier, GuardrailVersion, Input, []).

-spec apply_guardrail(aws_client:aws_client(), binary() | list(), binary() | list(), apply_guardrail_request(), proplists:proplist()) ->
    {ok, apply_guardrail_response(), tuple()} |
    {error, any()} |
    {error, apply_guardrail_errors(), tuple()}.
apply_guardrail(Client, GuardrailIdentifier, GuardrailVersion, Input0, Options0) ->
    Method = post,
    Path = ["/guardrail/", aws_util:encode_uri(GuardrailIdentifier), "/version/", aws_util:encode_uri(GuardrailVersion), "/apply"],
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

%% @doc Sends messages to the specified Amazon Bedrock model.
%%
%% `Converse' provides
%% a consistent interface that works with all models that
%% support messages. This allows you to write code once and use it with
%% different models.
%% If a model has unique inference parameters, you can also pass those unique
%% parameters
%% to the model.
%%
%% Amazon Bedrock doesn't store any text, images, or documents that you
%% provide as content. The data is only used to generate the response.
%%
%% You can submit a prompt by including it in the `messages' field,
%% specifying the `modelId' of a foundation model or inference profile to
%% run inference on it, and including any other fields that are relevant to
%% your use case.
%%
%% You can also submit a prompt from Prompt management by specifying the ARN
%% of the prompt version and including a map of variables to values in the
%% `promptVariables' field. You can append more messages to the prompt by
%% using the `messages' field. If you use a prompt from Prompt
%% management, you can't include the following fields in the request:
%% `additionalModelRequestFields', `inferenceConfig', `system',
%% or `toolConfig'. Instead, these fields must be defined through Prompt
%% management. For more information, see Use a prompt from Prompt management:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html.
%%
%% For information about the Converse API, see Use the Converse API in the
%% Amazon Bedrock User Guide.
%% To use a guardrail, see Use a guardrail with the Converse API in the
%% Amazon Bedrock User Guide.
%% To use a tool with a model, see Tool use (Function calling) in the Amazon
%% Bedrock User Guide
%%
%% For example code, see Converse API examples in the Amazon Bedrock User
%% Guide.
%%
%% This operation requires permission for the `bedrock:InvokeModel'
%% action.
-spec converse(aws_client:aws_client(), binary() | list(), converse_request()) ->
    {ok, converse_response(), tuple()} |
    {error, any()} |
    {error, converse_errors(), tuple()}.
converse(Client, ModelId, Input) ->
    converse(Client, ModelId, Input, []).

-spec converse(aws_client:aws_client(), binary() | list(), converse_request(), proplists:proplist()) ->
    {ok, converse_response(), tuple()} |
    {error, any()} |
    {error, converse_errors(), tuple()}.
converse(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/converse"],
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

%% @doc Sends messages to the specified Amazon Bedrock model and returns
%% the response in a stream.
%%
%% `ConverseStream' provides a consistent API
%% that works with all Amazon Bedrock models that support messages.
%% This allows you to write code once and use it with different models.
%% Should a
%% model have unique inference parameters, you can also pass those unique
%% parameters to the
%% model.
%%
%% To find out if a model supports streaming, call GetFoundationModel:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html
%% and check the `responseStreamingSupported' field in the response.
%%
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `ConverseStream'.
%%
%% Amazon Bedrock doesn't store any text, images, or documents that you
%% provide as content. The data is only used to generate the response.
%%
%% You can submit a prompt by including it in the `messages' field,
%% specifying the `modelId' of a foundation model or inference profile to
%% run inference on it, and including any other fields that are relevant to
%% your use case.
%%
%% You can also submit a prompt from Prompt management by specifying the ARN
%% of the prompt version and including a map of variables to values in the
%% `promptVariables' field. You can append more messages to the prompt by
%% using the `messages' field. If you use a prompt from Prompt
%% management, you can't include the following fields in the request:
%% `additionalModelRequestFields', `inferenceConfig', `system',
%% or `toolConfig'. Instead, these fields must be defined through Prompt
%% management. For more information, see Use a prompt from Prompt management:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html.
%%
%% For information about the Converse API, see Use the Converse API in the
%% Amazon Bedrock User Guide.
%% To use a guardrail, see Use a guardrail with the Converse API in the
%% Amazon Bedrock User Guide.
%% To use a tool with a model, see Tool use (Function calling) in the Amazon
%% Bedrock User Guide
%%
%% For example code, see Conversation streaming example in the Amazon Bedrock
%% User Guide.
%%
%% This operation requires permission for the
%% `bedrock:InvokeModelWithResponseStream' action.
-spec converse_stream(aws_client:aws_client(), binary() | list(), converse_stream_request()) ->
    {ok, converse_stream_response(), tuple()} |
    {error, any()} |
    {error, converse_stream_errors(), tuple()}.
converse_stream(Client, ModelId, Input) ->
    converse_stream(Client, ModelId, Input, []).

-spec converse_stream(aws_client:aws_client(), binary() | list(), converse_stream_request(), proplists:proplist()) ->
    {ok, converse_stream_response(), tuple()} |
    {error, any()} |
    {error, converse_stream_errors(), tuple()}.
converse_stream(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/converse-stream"],
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

%% @doc Invokes the specified Amazon Bedrock model to run inference using the
%% prompt and inference parameters provided in the request body.
%%
%% You use model inference to generate text, images, and embeddings.
%%
%% For example code, see Invoke model code examples in the Amazon Bedrock
%% User Guide.
%%
%% This operation requires permission for the `bedrock:InvokeModel'
%% action.
-spec invoke_model(aws_client:aws_client(), binary() | list(), invoke_model_request()) ->
    {ok, invoke_model_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_errors(), tuple()}.
invoke_model(Client, ModelId, Input) ->
    invoke_model(Client, ModelId, Input, []).

-spec invoke_model(aws_client:aws_client(), binary() | list(), invoke_model_request(), proplists:proplist()) ->
    {ok, invoke_model_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_errors(), tuple()}.
invoke_model(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/invoke"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"X-Amzn-Bedrock-GuardrailIdentifier">>, <<"guardrailIdentifier">>},
                       {<<"X-Amzn-Bedrock-GuardrailVersion">>, <<"guardrailVersion">>},
                       {<<"X-Amzn-Bedrock-Trace">>, <<"trace">>}
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
            {<<"Content-Type">>, <<"contentType">>}
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

%% @doc Invoke the specified Amazon Bedrock model to run inference using the
%% prompt and inference parameters provided in the request body.
%%
%% The response is returned in a stream.
%%
%% To see if a model supports streaming, call GetFoundationModel:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html
%% and check the `responseStreamingSupported' field in the response.
%%
%% The CLI doesn't support streaming operations in Amazon Bedrock,
%% including `InvokeModelWithResponseStream'.
%%
%% For example code, see Invoke model with streaming code
%% example in the Amazon Bedrock User Guide.
%%
%% This operation requires permissions to perform the
%% `bedrock:InvokeModelWithResponseStream' action.
-spec invoke_model_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_model_with_response_stream_request()) ->
    {ok, invoke_model_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_with_response_stream_errors(), tuple()}.
invoke_model_with_response_stream(Client, ModelId, Input) ->
    invoke_model_with_response_stream(Client, ModelId, Input, []).

-spec invoke_model_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_model_with_response_stream_request(), proplists:proplist()) ->
    {ok, invoke_model_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_with_response_stream_errors(), tuple()}.
invoke_model_with_response_stream(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/invoke-with-response-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Bedrock-Accept">>, <<"accept">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"X-Amzn-Bedrock-GuardrailIdentifier">>, <<"guardrailIdentifier">>},
                       {<<"X-Amzn-Bedrock-GuardrailVersion">>, <<"guardrailVersion">>},
                       {<<"X-Amzn-Bedrock-Trace">>, <<"trace">>}
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
            {<<"X-Amzn-Bedrock-Content-Type">>, <<"contentType">>}
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
    Host = build_host(<<"bedrock-runtime">>, Client1),
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
