%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Jobs is a service that allows you to define a set of jobs —
%% remote operations
%% that are sent to and executed on one or more devices connected to Amazon
%% Web Services IoT Core.
%%
%% For example,
%% you can define a job that instructs a set of devices to download and
%% install application or
%% firmware updates, reboot, rotate certificates, or perform remote
%% troubleshooting
%% operations.
%%
%% Find the endpoint address for actions in the IoT jobs data plane by
%% running this
%% CLI command:
%%
%% `aws iot describe-endpoint --endpoint-type iot:Jobs'
%%
%% The service name used by Amazon Web Services
%% Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html to
%% sign requests is:
%% iot-jobs-data.
%%
%% To create a job, you make a job document which is a description of the
%% remote
%% operations to be performed, and you specify a list of targets that should
%% perform the
%% operations. The targets can be individual things, thing groups or both.
%%
%% IoT Jobs sends a message to inform the targets that a job is available.
%% The target
%% starts the execution of the job by downloading the job document,
%% performing the operations
%% it specifies, and reporting its progress to Amazon Web Services IoT Core.
%% The Jobs service provides commands
%% to track the progress of a job on a specific target and for all the
%% targets of the
%% job
-module(aws_iot_jobs_data_plane).

-export([describe_job_execution/3,
         describe_job_execution/5,
         describe_job_execution/6,
         get_pending_job_executions/2,
         get_pending_job_executions/4,
         get_pending_job_executions/5,
         start_command_execution/2,
         start_command_execution/3,
         start_next_pending_job_execution/3,
         start_next_pending_job_execution/4,
         update_job_execution/4,
         update_job_execution/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% certificate_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type certificate_validation_exception() :: #{binary() => any()}.


%% Example:
%% command_parameter_value() :: #{
%%   <<"B">> => boolean(),
%%   <<"BIN">> => binary(),
%%   <<"D">> => float(),
%%   <<"I">> => integer(),
%%   <<"L">> => float(),
%%   <<"S">> => string(),
%%   <<"UL">> => string()
%% }
-type command_parameter_value() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% describe_job_execution_request() :: #{
%%   <<"executionNumber">> => float(),
%%   <<"includeJobDocument">> => boolean()
%% }
-type describe_job_execution_request() :: #{binary() => any()}.


%% Example:
%% describe_job_execution_response() :: #{
%%   <<"execution">> => job_execution()
%% }
-type describe_job_execution_response() :: #{binary() => any()}.

%% Example:
%% get_pending_job_executions_request() :: #{}
-type get_pending_job_executions_request() :: #{}.


%% Example:
%% get_pending_job_executions_response() :: #{
%%   <<"inProgressJobs">> => list(job_execution_summary()()),
%%   <<"queuedJobs">> => list(job_execution_summary()())
%% }
-type get_pending_job_executions_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% invalid_state_transition_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_transition_exception() :: #{binary() => any()}.


%% Example:
%% job_execution() :: #{
%%   <<"approximateSecondsBeforeTimedOut">> => float(),
%%   <<"executionNumber">> => float(),
%%   <<"jobDocument">> => string(),
%%   <<"jobId">> => string(),
%%   <<"lastUpdatedAt">> => float(),
%%   <<"queuedAt">> => float(),
%%   <<"startedAt">> => float(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => map(),
%%   <<"thingName">> => string(),
%%   <<"versionNumber">> => float()
%% }
-type job_execution() :: #{binary() => any()}.


%% Example:
%% job_execution_state() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => map(),
%%   <<"versionNumber">> => float()
%% }
-type job_execution_state() :: #{binary() => any()}.


%% Example:
%% job_execution_summary() :: #{
%%   <<"executionNumber">> => float(),
%%   <<"jobId">> => string(),
%%   <<"lastUpdatedAt">> => float(),
%%   <<"queuedAt">> => float(),
%%   <<"startedAt">> => float(),
%%   <<"versionNumber">> => float()
%% }
-type job_execution_summary() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% start_command_execution_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"commandArn">> := string(),
%%   <<"executionTimeoutSeconds">> => float(),
%%   <<"parameters">> => map(),
%%   <<"targetArn">> := string()
%% }
-type start_command_execution_request() :: #{binary() => any()}.


%% Example:
%% start_command_execution_response() :: #{
%%   <<"executionId">> => string()
%% }
-type start_command_execution_response() :: #{binary() => any()}.


%% Example:
%% start_next_pending_job_execution_request() :: #{
%%   <<"statusDetails">> => map(),
%%   <<"stepTimeoutInMinutes">> => float()
%% }
-type start_next_pending_job_execution_request() :: #{binary() => any()}.


%% Example:
%% start_next_pending_job_execution_response() :: #{
%%   <<"execution">> => job_execution()
%% }
-type start_next_pending_job_execution_response() :: #{binary() => any()}.


%% Example:
%% terminal_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type terminal_state_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"payload">> => binary()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_job_execution_request() :: #{
%%   <<"executionNumber">> => float(),
%%   <<"expectedVersion">> => float(),
%%   <<"includeJobDocument">> => boolean(),
%%   <<"includeJobExecutionState">> => boolean(),
%%   <<"status">> := list(any()),
%%   <<"statusDetails">> => map(),
%%   <<"stepTimeoutInMinutes">> => float()
%% }
-type update_job_execution_request() :: #{binary() => any()}.


%% Example:
%% update_job_execution_response() :: #{
%%   <<"executionState">> => job_execution_state(),
%%   <<"jobDocument">> => string()
%% }
-type update_job_execution_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type describe_job_execution_errors() ::
    throttling_exception() | 
    terminal_state_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    certificate_validation_exception().

-type get_pending_job_executions_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    certificate_validation_exception().

-type start_command_execution_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type start_next_pending_job_execution_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    certificate_validation_exception().

-type update_job_execution_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    invalid_state_transition_exception() | 
    invalid_request_exception() | 
    certificate_validation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets details of a job execution.
%%
%% Requires permission to access the DescribeJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName)
  when is_map(Client) ->
    describe_job_execution(Client, JobId, ThingName, #{}, #{}).

-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, []).

-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"executionNumber">>, maps:get(<<"executionNumber">>, QueryMap, undefined)},
        {<<"includeJobDocument">>, maps:get(<<"includeJobDocument">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the list of all jobs for a thing that are not in a terminal
%% status.
%%
%% Requires permission to access the GetPendingJobExecutions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_pending_job_executions(aws_client:aws_client(), binary() | list()) ->
    {ok, get_pending_job_executions_response(), tuple()} |
    {error, any()} |
    {error, get_pending_job_executions_errors(), tuple()}.
get_pending_job_executions(Client, ThingName)
  when is_map(Client) ->
    get_pending_job_executions(Client, ThingName, #{}, #{}).

-spec get_pending_job_executions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_pending_job_executions_response(), tuple()} |
    {error, any()} |
    {error, get_pending_job_executions_errors(), tuple()}.
get_pending_job_executions(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pending_job_executions(Client, ThingName, QueryMap, HeadersMap, []).

-spec get_pending_job_executions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_pending_job_executions_response(), tuple()} |
    {error, any()} |
    {error, get_pending_job_executions_errors(), tuple()}.
get_pending_job_executions(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Using the command created with the `CreateCommand' API, start a
%% command
%% execution on a specific device.
-spec start_command_execution(aws_client:aws_client(), start_command_execution_request()) ->
    {ok, start_command_execution_response(), tuple()} |
    {error, any()} |
    {error, start_command_execution_errors(), tuple()}.
start_command_execution(Client, Input) ->
    start_command_execution(Client, Input, []).

-spec start_command_execution(aws_client:aws_client(), start_command_execution_request(), proplists:proplist()) ->
    {ok, start_command_execution_response(), tuple()} |
    {error, any()} |
    {error, start_command_execution_errors(), tuple()}.
start_command_execution(Client, Input0, Options0) ->
    Method = post,
    Path = ["/command-executions"],
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

%% @doc Gets and starts the next pending (status IN_PROGRESS or QUEUED) job
%% execution for a
%% thing.
%%
%% Requires permission to access the StartNextPendingJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_next_pending_job_execution(aws_client:aws_client(), binary() | list(), start_next_pending_job_execution_request()) ->
    {ok, start_next_pending_job_execution_response(), tuple()} |
    {error, any()} |
    {error, start_next_pending_job_execution_errors(), tuple()}.
start_next_pending_job_execution(Client, ThingName, Input) ->
    start_next_pending_job_execution(Client, ThingName, Input, []).

-spec start_next_pending_job_execution(aws_client:aws_client(), binary() | list(), start_next_pending_job_execution_request(), proplists:proplist()) ->
    {ok, start_next_pending_job_execution_response(), tuple()} |
    {error, any()} |
    {error, start_next_pending_job_execution_errors(), tuple()}.
start_next_pending_job_execution(Client, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/$next"],
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

%% @doc Updates the status of a job execution.
%%
%% Requires permission to access the UpdateJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotjobsdataplane.html
%% action.
-spec update_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), update_job_execution_request()) ->
    {ok, update_job_execution_response(), tuple()} |
    {error, any()} |
    {error, update_job_execution_errors(), tuple()}.
update_job_execution(Client, JobId, ThingName, Input) ->
    update_job_execution(Client, JobId, ThingName, Input, []).

-spec update_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), update_job_execution_request(), proplists:proplist()) ->
    {ok, update_job_execution_response(), tuple()} |
    {error, any()} |
    {error, update_job_execution_errors(), tuple()}.
update_job_execution(Client, JobId, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
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
    Client1 = Client#{service => <<"iot-jobs-data">>},
    Host = build_host(<<"data.jobs.iot">>, Client1),
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
