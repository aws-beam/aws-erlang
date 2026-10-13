%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SageMaker Training Session Runtime provides APIs for executing
%% training operations and sampling operations against a running training
%% session.
%%
%% Use these APIs to submit asynchronous training steps (such as
%% forward-backward passes, optimizer steps, and checkpoint saves) and to
%% generate text samples from the model being trained.
-module(aws_sagemakertrainingsessionruntime).

-export([execute_sampling_operation/3,
         execute_sampling_operation/4,
         execute_training_operation/3,
         execute_training_operation/4,
         get_sampling_operation_result/3,
         get_sampling_operation_result/5,
         get_sampling_operation_result/6,
         get_training_operation_result/3,
         get_training_operation_result/5,
         get_training_operation_result/6,
         sample_training_session/3,
         sample_training_session/4,
         sample_training_session_with_response_stream/3,
         sample_training_session_with_response_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% adam_params_config() :: #{
%%   <<"beta1">> => [float()],
%%   <<"beta2">> => [float()],
%%   <<"eps">> => [float()],
%%   <<"gradClipNorm">> => [float()],
%%   <<"learningRate">> => [float()],
%%   <<"loraPlusLrRatio">> => [float()],
%%   <<"weightDecay">> => [float()]
%% }
-type adam_params_config() :: #{binary() => any()}.


%% Example:
%% compute_logprobs_config() :: #{
%%   <<"modelPackageArn">> => [string()],
%%   <<"prompt">> => model_input()
%% }
-type compute_logprobs_config() :: #{binary() => any()}.


%% Example:
%% compute_logprobs_result() :: #{
%%   <<"logprobs">> => list([float()]())
%% }
-type compute_logprobs_result() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% datum() :: #{
%%   <<"lossFnInputs">> => map(),
%%   <<"modelInput">> => model_input()
%% }
-type datum() :: #{binary() => any()}.


%% Example:
%% encoded_text_chunk() :: #{
%%   <<"tokens">> => list([integer()]()),
%%   <<"type">> => list(any())
%% }
-type encoded_text_chunk() :: #{binary() => any()}.


%% Example:
%% execute_sampling_operation_input() :: #{
%%   <<"operationConfig">> := list()
%% }
-type execute_sampling_operation_input() :: #{binary() => any()}.


%% Example:
%% execute_sampling_operation_output() :: #{
%%   <<"operationId">> => string()
%% }
-type execute_sampling_operation_output() :: #{binary() => any()}.


%% Example:
%% execute_training_operation_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"operationConfig">> := list(),
%%   <<"sequenceNumber">> := integer()
%% }
-type execute_training_operation_input() :: #{binary() => any()}.


%% Example:
%% execute_training_operation_output() :: #{
%%   <<"operationId">> => string()
%% }
-type execute_training_operation_output() :: #{binary() => any()}.


%% Example:
%% forward_backward_config() :: #{
%%   <<"datumList">> => list(datum()),
%%   <<"lossFnConfig">> => [any()],
%%   <<"lossFnName">> => list(any())
%% }
-type forward_backward_config() :: #{binary() => any()}.


%% Example:
%% forward_backward_result() :: #{
%%   <<"lossFnOutputType">> => [string()],
%%   <<"lossFnOutputs">> => list(map()),
%%   <<"metrics">> => map(),
%%   <<"tokenUsage">> => training_token_usage()
%% }
-type forward_backward_result() :: #{binary() => any()}.


%% Example:
%% forward_config() :: #{
%%   <<"datumList">> => list(datum()),
%%   <<"lossFnConfig">> => [any()],
%%   <<"lossFnName">> => list(any())
%% }
-type forward_config() :: #{binary() => any()}.


%% Example:
%% forward_result() :: #{
%%   <<"lossFnOutputType">> => [string()],
%%   <<"lossFnOutputs">> => list(map()),
%%   <<"metrics">> => map(),
%%   <<"tokenUsage">> => training_token_usage()
%% }
-type forward_result() :: #{binary() => any()}.

%% Example:
%% get_sampling_operation_result_input() :: #{}
-type get_sampling_operation_result_input() :: #{}.


%% Example:
%% get_sampling_operation_result_output() :: #{
%%   <<"errorDetails">> => [string()],
%%   <<"operationResult">> => list(),
%%   <<"status">> => list(any())
%% }
-type get_sampling_operation_result_output() :: #{binary() => any()}.

%% Example:
%% get_training_operation_result_input() :: #{}
-type get_training_operation_result_input() :: #{}.


%% Example:
%% get_training_operation_result_output() :: #{
%%   <<"errorDetails">> => [string()],
%%   <<"operationResult">> => list(),
%%   <<"status">> => list(any()),
%%   <<"tokenUsage">> => training_token_usage()
%% }
-type get_training_operation_result_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% load_state_config() :: #{
%%   <<"loadOptimizer">> => [boolean()],
%%   <<"modelPackageArn">> => [string()]
%% }
-type load_state_config() :: #{binary() => any()}.

%% Example:
%% load_state_result() :: #{}
-type load_state_result() :: #{}.


%% Example:
%% load_weights_for_sampling_config() :: #{
%%   <<"modelPackageArn">> => [string()]
%% }
-type load_weights_for_sampling_config() :: #{binary() => any()}.

%% Example:
%% load_weights_for_sampling_result() :: #{}
-type load_weights_for_sampling_result() :: #{}.


%% Example:
%% model_input() :: #{
%%   <<"chunks">> => list(encoded_text_chunk())
%% }
-type model_input() :: #{binary() => any()}.


%% Example:
%% optimizer_step_config() :: #{
%%   <<"adamParamsConfig">> => adam_params_config()
%% }
-type optimizer_step_config() :: #{binary() => any()}.


%% Example:
%% optimizer_step_result() :: #{
%%   <<"metrics">> => map()
%% }
-type optimizer_step_result() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% sample_config() :: #{
%%   <<"includePromptLogprobs">> => [boolean()],
%%   <<"modelPackageArn">> => [string()],
%%   <<"numSamples">> => [integer()],
%%   <<"prompt">> => model_input(),
%%   <<"samplingParams">> => sampling_params(),
%%   <<"topkPromptLogprobs">> => [integer()]
%% }
-type sample_config() :: #{binary() => any()}.


%% Example:
%% sample_response() :: #{
%%   <<"promptLogprobs">> => list([float()]()),
%%   <<"sequences">> => list(sampled_sequence()),
%%   <<"topkPromptLogprobs">> => list(list(token_logprob())())
%% }
-type sample_response() :: #{binary() => any()}.


%% Example:
%% sample_token_usage() :: #{
%%   <<"decode">> => [integer()],
%%   <<"prefill">> => [integer()]
%% }
-type sample_token_usage() :: #{binary() => any()}.


%% Example:
%% sample_training_session_input() :: #{
%%   <<"accept">> => [string()],
%%   <<"body">> => binary(),
%%   <<"contentType">> => [string()],
%%   <<"modelPackageArn">> => [string()]
%% }
-type sample_training_session_input() :: #{binary() => any()}.


%% Example:
%% sample_training_session_output() :: #{
%%   <<"body">> => binary(),
%%   <<"contentType">> => [string()]
%% }
-type sample_training_session_output() :: #{binary() => any()}.


%% Example:
%% sample_training_session_with_response_stream_input() :: #{
%%   <<"accept">> => [string()],
%%   <<"body">> => binary(),
%%   <<"contentType">> => [string()],
%%   <<"modelPackageArn">> => [string()]
%% }
-type sample_training_session_with_response_stream_input() :: #{binary() => any()}.


%% Example:
%% sample_training_session_with_response_stream_output() :: #{
%%   <<"body">> => binary(),
%%   <<"contentType">> => [string()]
%% }
-type sample_training_session_with_response_stream_output() :: #{binary() => any()}.


%% Example:
%% sampled_sequence() :: #{
%%   <<"logprobs">> => list([float()]()),
%%   <<"stopReason">> => list(any()),
%%   <<"tokenUsage">> => sample_token_usage(),
%%   <<"tokens">> => list([integer()]())
%% }
-type sampled_sequence() :: #{binary() => any()}.


%% Example:
%% sampling_params() :: #{
%%   <<"maxTokens">> => [integer()],
%%   <<"seed">> => [integer()],
%%   <<"stop">> => list([string()]()),
%%   <<"temperature">> => [float()],
%%   <<"topK">> => [integer()],
%%   <<"topP">> => [float()]
%% }
-type sampling_params() :: #{binary() => any()}.


%% Example:
%% save_state_config() :: #{
%%   <<"description">> => [string()]
%% }
-type save_state_config() :: #{binary() => any()}.


%% Example:
%% save_state_result() :: #{
%%   <<"modelPackageArn">> => [string()]
%% }
-type save_state_result() :: #{binary() => any()}.


%% Example:
%% save_weights_config() :: #{
%%   <<"description">> => [string()],
%%   <<"mergeWeights">> => [boolean()]
%% }
-type save_weights_config() :: #{binary() => any()}.


%% Example:
%% save_weights_result() :: #{
%%   <<"modelPackageArn">> => [string()]
%% }
-type save_weights_result() :: #{binary() => any()}.


%% Example:
%% tensor_data() :: #{
%%   <<"data">> => [any()],
%%   <<"dtype">> => [string()],
%%   <<"shape">> => list([integer()]())
%% }
-type tensor_data() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% token_logprob() :: #{
%%   <<"logprob">> => [float()],
%%   <<"tokenId">> => [integer()]
%% }
-type token_logprob() :: #{binary() => any()}.


%% Example:
%% training_token_usage() :: #{
%%   <<"trainingTokens">> => [integer()]
%% }
-type training_token_usage() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type execute_sampling_operation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type execute_training_operation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_sampling_operation_result_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type get_training_operation_result_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type sample_training_session_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type sample_training_session_with_response_stream_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Submits an asynchronous sampling operation to generate text or
%% compute log-probabilities from the model associated with the specified
%% training session.
%%
%% The session must be in `Running' or `Blocked' state. Use
%% `GetSamplingOperationResult' to poll for the result.
-spec execute_sampling_operation(aws_client:aws_client(), binary() | list(), execute_sampling_operation_input()) ->
    {ok, execute_sampling_operation_output(), tuple()} |
    {error, any()} |
    {error, execute_sampling_operation_errors(), tuple()}.
execute_sampling_operation(Client, TrainingSessionName, Input) ->
    execute_sampling_operation(Client, TrainingSessionName, Input, []).

-spec execute_sampling_operation(aws_client:aws_client(), binary() | list(), execute_sampling_operation_input(), proplists:proplist()) ->
    {ok, execute_sampling_operation_output(), tuple()} |
    {error, any()} |
    {error, execute_sampling_operation_errors(), tuple()}.
execute_sampling_operation(Client, TrainingSessionName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/sampling-operations"],
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

%% @doc Submits an asynchronous training operation to the specified training
%% session.
%%
%% The service executes operations in sequence number order. The session must
%% be in `Running' or `Blocked' state. Use
%% `GetTrainingOperationResult' to poll for the result. Supported
%% operation types: `forward', `forwardBackward',
%% `optimizerStep', `saveWeights', `saveState', and
%% `loadState'.
-spec execute_training_operation(aws_client:aws_client(), binary() | list(), execute_training_operation_input()) ->
    {ok, execute_training_operation_output(), tuple()} |
    {error, any()} |
    {error, execute_training_operation_errors(), tuple()}.
execute_training_operation(Client, TrainingSessionName, Input) ->
    execute_training_operation(Client, TrainingSessionName, Input, []).

-spec execute_training_operation(aws_client:aws_client(), binary() | list(), execute_training_operation_input(), proplists:proplist()) ->
    {ok, execute_training_operation_output(), tuple()} |
    {error, any()} |
    {error, execute_training_operation_errors(), tuple()}.
execute_training_operation(Client, TrainingSessionName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/operations"],
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

%% @doc Retrieves the current status and result of a previously submitted
%% sampling operation.
%%
%% Poll this operation until the status reaches a terminal state (Completed
%% or Failed).
-spec get_sampling_operation_result(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_sampling_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_sampling_operation_result_errors(), tuple()}.
get_sampling_operation_result(Client, OperationId, TrainingSessionName)
  when is_map(Client) ->
    get_sampling_operation_result(Client, OperationId, TrainingSessionName, #{}, #{}).

-spec get_sampling_operation_result(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sampling_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_sampling_operation_result_errors(), tuple()}.
get_sampling_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sampling_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap, []).

-spec get_sampling_operation_result(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sampling_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_sampling_operation_result_errors(), tuple()}.
get_sampling_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/sampling-operations/", aws_util:encode_uri(OperationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current status and result of a previously submitted
%% training operation.
%%
%% Poll this operation until the status reaches a terminal state (Completed,
%% Failed, or Skipped).
-spec get_training_operation_result(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_training_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_training_operation_result_errors(), tuple()}.
get_training_operation_result(Client, OperationId, TrainingSessionName)
  when is_map(Client) ->
    get_training_operation_result(Client, OperationId, TrainingSessionName, #{}, #{}).

-spec get_training_operation_result(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_training_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_training_operation_result_errors(), tuple()}.
get_training_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_training_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap, []).

-spec get_training_operation_result(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_training_operation_result_output(), tuple()} |
    {error, any()} |
    {error, get_training_operation_result_errors(), tuple()}.
get_training_operation_result(Client, OperationId, TrainingSessionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/operations/", aws_util:encode_uri(OperationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends an inference request to the model associated with the specified
%% training session and returns the response synchronously.
%%
%% The service passes the request and response bodies to and from the model
%% without modification.
-spec sample_training_session(aws_client:aws_client(), binary() | list(), sample_training_session_input()) ->
    {ok, sample_training_session_output(), tuple()} |
    {error, any()} |
    {error, sample_training_session_errors(), tuple()}.
sample_training_session(Client, TrainingSessionName, Input) ->
    sample_training_session(Client, TrainingSessionName, Input, []).

-spec sample_training_session(aws_client:aws_client(), binary() | list(), sample_training_session_input(), proplists:proplist()) ->
    {ok, sample_training_session_output(), tuple()} |
    {error, any()} |
    {error, sample_training_session_errors(), tuple()}.
sample_training_session(Client, TrainingSessionName, Input0, Options0) ->
    Method = post,
    Path = ["/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/sample"],
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
                       {<<"X-Amzn-SageMaker-Model-Package">>, <<"modelPackageArn">>}
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

%% @doc Streams inference responses from the model associated with the
%% specified training session.
%%
%% Use this operation for real-time token-by-token generation. The service
%% passes the request body to the model without modification.
-spec sample_training_session_with_response_stream(aws_client:aws_client(), binary() | list(), sample_training_session_with_response_stream_input()) ->
    {ok, sample_training_session_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, sample_training_session_with_response_stream_errors(), tuple()}.
sample_training_session_with_response_stream(Client, TrainingSessionName, Input) ->
    sample_training_session_with_response_stream(Client, TrainingSessionName, Input, []).

-spec sample_training_session_with_response_stream(aws_client:aws_client(), binary() | list(), sample_training_session_with_response_stream_input(), proplists:proplist()) ->
    {ok, sample_training_session_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, sample_training_session_with_response_stream_errors(), tuple()}.
sample_training_session_with_response_stream(Client, TrainingSessionName, Input0, Options0) ->
    Method = post,
    Path = ["/training-sessions/", aws_util:encode_uri(TrainingSessionName), "/sample-with-response-stream"],
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
                       {<<"X-Amzn-SageMaker-Model-Package">>, <<"modelPackageArn">>}
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
    Client1 = Client#{service => <<"sagemaker">>},
    DefaultHost = build_host(<<"training-session-runtime.sagemaker">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_SAGEMAKERTRAININGSESSIONRUNTIME">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

