%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Jobs is a service that allows you to define a set of jobs —
%% remote operations that are sent to and executed on one or more devices
%% connected to AWS IoT.
%%
%% For example, you can define a job that instructs a set of devices to
%% download and install application or firmware updates, reboot, rotate
%% certificates, or perform remote troubleshooting operations.
%%
%% To create a job, you make a job document which is a description of the
%% remote operations to be performed, and you specify a list of targets that
%% should perform the operations. The targets can be individual things, thing
%% groups or both.
%%
%% AWS IoT Jobs sends a message to inform the targets that a job is
%% available. The target starts the execution of the job by downloading the
%% job document, performing the operations it specifies, and reporting its
%% progress to AWS IoT. The Jobs service provides commands to track the
%% progress of a job on a specific target and for all the targets of the job
-module(aws_iot_jobs_data_plane).

-export([describe_job_execution/5,
         describe_job_execution/6,
         get_pending_job_executions/2,
         get_pending_job_executions/3,
         start_next_pending_job_execution/3,
         start_next_pending_job_execution/4,
         update_job_execution/4,
         update_job_execution/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Gets details of a job execution.
describe_job_execution(Client, JobId, ThingName, ExecutionNumber, IncludeJobDocument)
  when is_map(Client) ->
    describe_job_execution(Client, JobId, ThingName, ExecutionNumber, IncludeJobDocument, []).
describe_job_execution(Client, JobId, ThingName, ExecutionNumber, IncludeJobDocument, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"executionNumber">>, ExecutionNumber},
        {<<"includeJobDocument">>, IncludeJobDocument}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the list of all jobs for a thing that are not in a terminal
%% status.
get_pending_job_executions(Client, ThingName)
  when is_map(Client) ->
    get_pending_job_executions(Client, ThingName, []).
get_pending_job_executions(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets and starts the next pending (status IN_PROGRESS or QUEUED) job
%% execution for a thing.
start_next_pending_job_execution(Client, ThingName, Input) ->
    start_next_pending_job_execution(Client, ThingName, Input, []).
start_next_pending_job_execution(Client, ThingName, Input0, Options) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/$next"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of a job execution.
update_job_execution(Client, JobId, ThingName, Input) ->
    update_job_execution(Client, JobId, ThingName, Input, []).
update_job_execution(Client, JobId, ThingName, Input0, Options) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"iot-jobs-data">>},
    Host = build_host(<<"data.jobs.iot">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
