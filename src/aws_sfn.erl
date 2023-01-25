%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Step Functions
%%
%% Step Functions is a service that lets you coordinate the components of
%% distributed applications and microservices using visual workflows.
%%
%% You can use Step Functions to build applications from individual
%% components, each of which performs a discrete function, or task, allowing
%% you to scale and change applications quickly. Step Functions provides a
%% console that helps visualize the components of your application as a
%% series of steps. Step Functions automatically triggers and tracks each
%% step, and retries steps when there are errors, so your application
%% executes predictably and in the right order every time. Step Functions
%% logs the state of each step, so you can quickly diagnose and debug any
%% issues.
%%
%% Step Functions manages operations and underlying infrastructure to ensure
%% your application is available at any scale. You can run tasks on Amazon
%% Web Services, your own servers, or any system that has access to Amazon
%% Web Services. You can access and use Step Functions using the console, the
%% Amazon Web Services SDKs, or an HTTP API. For more information about Step
%% Functions, see the Step Functions Developer Guide .
-module(aws_sfn).

-export([create_activity/2,
         create_activity/3,
         create_state_machine/2,
         create_state_machine/3,
         delete_activity/2,
         delete_activity/3,
         delete_state_machine/2,
         delete_state_machine/3,
         describe_activity/2,
         describe_activity/3,
         describe_execution/2,
         describe_execution/3,
         describe_map_run/2,
         describe_map_run/3,
         describe_state_machine/2,
         describe_state_machine/3,
         describe_state_machine_for_execution/2,
         describe_state_machine_for_execution/3,
         get_activity_task/2,
         get_activity_task/3,
         get_execution_history/2,
         get_execution_history/3,
         list_activities/2,
         list_activities/3,
         list_executions/2,
         list_executions/3,
         list_map_runs/2,
         list_map_runs/3,
         list_state_machines/2,
         list_state_machines/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         send_task_failure/2,
         send_task_failure/3,
         send_task_heartbeat/2,
         send_task_heartbeat/3,
         send_task_success/2,
         send_task_success/3,
         start_execution/2,
         start_execution/3,
         start_sync_execution/2,
         start_sync_execution/3,
         stop_execution/2,
         stop_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_map_run/2,
         update_map_run/3,
         update_state_machine/2,
         update_state_machine/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an activity.
%%
%% An activity is a task that you write in any programming language and host
%% on any machine that has access to Step Functions. Activities must poll
%% Step Functions using the `GetActivityTask' API action and respond
%% using `SendTask*' API actions. This function lets Step Functions know
%% the existence of your activity and returns an identifier for use in a
%% state machine and when polling from the activity.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% `CreateActivity' is an idempotent API. Subsequent requests won’t
%% create a duplicate resource if it was already created.
%% `CreateActivity''s idempotency check is based on the activity
%% `name'. If a following request has different `tags' values, Step
%% Functions will ignore these differences and treat it as an idempotent
%% request of the previous. In this case, `tags' will not be updated,
%% even if they are different.
create_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activity(Client, Input, []).
create_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivity">>, Input, Options).

%% @doc Creates a state machine.
%%
%% A state machine consists of a collection of states that can do work
%% (`Task' states), determine to which states to transition next
%% (`Choice' states), stop an execution with an error (`Fail'
%% states), and so on. State machines are specified using a JSON-based,
%% structured language. For more information, see Amazon States Language in
%% the Step Functions User Guide.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% `CreateStateMachine' is an idempotent API. Subsequent requests won’t
%% create a duplicate resource if it was already created.
%% `CreateStateMachine''s idempotency check is based on the state
%% machine `name', `definition', `type',
%% `LoggingConfiguration' and `TracingConfiguration'. If a following
%% request has a different `roleArn' or `tags', Step Functions will
%% ignore these differences and treat it as an idempotent request of the
%% previous. In this case, `roleArn' and `tags' will not be updated,
%% even if they are different.
create_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_machine(Client, Input, []).
create_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateMachine">>, Input, Options).

%% @doc Deletes an activity.
delete_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activity(Client, Input, []).
delete_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivity">>, Input, Options).

%% @doc Deletes a state machine.
%%
%% This is an asynchronous operation: It sets the state machine's status
%% to `DELETING' and begins the deletion process.
%%
%% If the given state machine Amazon Resource Name (ARN) is a qualified state
%% machine ARN, it will fail with ValidationException.
%%
%% A qualified state machine ARN refers to a Distributed Map state defined
%% within a state machine. For example, the qualified state machine ARN
%% `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel'
%% refers to a Distributed Map state with a label `mapStateLabel' in the
%% state machine named `stateMachineName'.
%%
%% For `EXPRESS' state machines, the deletion will happen eventually
%% (usually less than a minute). Running executions may emit logs after
%% `DeleteStateMachine' API is called.
delete_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine(Client, Input, []).
delete_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachine">>, Input, Options).

%% @doc Describes an activity.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
describe_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity(Client, Input, []).
describe_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivity">>, Input, Options).

%% @doc Provides all information about a state machine execution, such as the
%% state machine associated with the execution, the execution input and
%% output, and relevant execution metadata.
%%
%% Use this API action to return the Map Run ARN if the execution was
%% dispatched by a Map Run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% This API action is not supported by `EXPRESS' state machine executions
%% unless they were dispatched by a Map Run.
describe_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_execution(Client, Input, []).
describe_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExecution">>, Input, Options).

%% @doc Provides information about a Map Run's configuration, progress,
%% and results.
%%
%% For more information, see Examining Map Run in the Step Functions
%% Developer Guide.
describe_map_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_map_run(Client, Input, []).
describe_map_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMapRun">>, Input, Options).

%% @doc Provides information about a state machine's definition, its IAM
%% role Amazon Resource Name (ARN), and configuration.
%%
%% If the state machine ARN is a qualified state machine ARN, the response
%% returned includes the `Map' state's label.
%%
%% A qualified state machine ARN refers to a Distributed Map state defined
%% within a state machine. For example, the qualified state machine ARN
%% `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel'
%% refers to a Distributed Map state with a label `mapStateLabel' in the
%% state machine named `stateMachineName'.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
describe_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine(Client, Input, []).
describe_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachine">>, Input, Options).

%% @doc Provides information about a state machine's definition, its
%% execution role ARN, and configuration.
%%
%% If an execution was dispatched by a Map Run, the Map Run is returned in
%% the response. Additionally, the state machine returned will be the state
%% machine associated with the Map Run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% This API action is not supported by `EXPRESS' state machines.
describe_state_machine_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine_for_execution(Client, Input, []).
describe_state_machine_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachineForExecution">>, Input, Options).

%% @doc Used by workers to retrieve a task (with the specified activity ARN)
%% which has been scheduled for execution by a running state machine.
%%
%% This initiates a long poll, where the service holds the HTTP connection
%% open and responds as soon as a task becomes available (i.e. an execution
%% of a task of this type is needed.) The maximum time the service holds on
%% to the request before responding is 60 seconds. If no task is available
%% within 60 seconds, the poll returns a `taskToken' with a null string.
%%
%% This API action isn't logged in CloudTrail.
%%
%% Workers should set their client side socket timeout to at least 65 seconds
%% (5 seconds higher than the maximum time the service may hold the poll
%% request).
%%
%% Polling with `GetActivityTask' can cause latency in some
%% implementations. See Avoid Latency When Polling for Activity Tasks in the
%% Step Functions Developer Guide.
get_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_activity_task(Client, Input, []).
get_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActivityTask">>, Input, Options).

%% @doc Returns the history of the specified execution as a list of events.
%%
%% By default, the results are returned in ascending order of the
%% `timeStamp' of the events. Use the `reverseOrder' parameter to get
%% the latest events first.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This API action is not supported by `EXPRESS' state machines.
get_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution_history(Client, Input, []).
get_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecutionHistory">>, Input, Options).

%% @doc Lists the existing activities.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
list_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activities(Client, Input, []).
list_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivities">>, Input, Options).

%% @doc Lists all executions of a state machine or a Map Run.
%%
%% You can list all executions related to a state machine by specifying a
%% state machine Amazon Resource Name (ARN), or those related to a Map Run by
%% specifying a Map Run ARN.
%%
%% Results are sorted by time, with the most recent execution first.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% This API action is not supported by `EXPRESS' state machines.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Lists all Map Runs that were started by a given state machine
%% execution.
%%
%% Use this API action to obtain Map Run ARNs, and then call
%% `DescribeMapRun' to obtain more information, if needed.
list_map_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_map_runs(Client, Input, []).
list_map_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMapRuns">>, Input, Options).

%% @doc Lists the existing state machines.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
list_state_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machines(Client, Input, []).
list_state_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachines">>, Input, Options).

%% @doc List tags for a given resource.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: `_ . : / = + - @'.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Used by activity workers and task states using the callback pattern
%% to report that the task identified by the `taskToken' failed.
send_task_failure(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_failure(Client, Input, []).
send_task_failure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskFailure">>, Input, Options).

%% @doc Used by activity workers and task states using the callback pattern
%% to report to Step Functions that the task represented by the specified
%% `taskToken' is still making progress.
%%
%% This action resets the `Heartbeat' clock. The `Heartbeat'
%% threshold is specified in the state machine's Amazon States Language
%% definition (`HeartbeatSeconds'). This action does not in itself create
%% an event in the execution history. However, if the task times out, the
%% execution history contains an `ActivityTimedOut' entry for activities,
%% or a `TaskTimedOut' entry for for tasks using the job run or callback
%% pattern.
%%
%% The `Timeout' of a task, defined in the state machine's Amazon
%% States Language definition, is its maximum allowed duration, regardless of
%% the number of `SendTaskHeartbeat' requests received. Use
%% `HeartbeatSeconds' to configure the timeout interval for heartbeats.
send_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_heartbeat(Client, Input, []).
send_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskHeartbeat">>, Input, Options).

%% @doc Used by activity workers and task states using the callback pattern
%% to report that the task identified by the `taskToken' completed
%% successfully.
send_task_success(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_success(Client, Input, []).
send_task_success(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskSuccess">>, Input, Options).

%% @doc Starts a state machine execution.
%%
%% If the given state machine Amazon Resource Name (ARN) is a qualified state
%% machine ARN, it will fail with ValidationException.
%%
%% A qualified state machine ARN refers to a Distributed Map state defined
%% within a state machine. For example, the qualified state machine ARN
%% `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel'
%% refers to a Distributed Map state with a label `mapStateLabel' in the
%% state machine named `stateMachineName'.
%%
%% `StartExecution' is idempotent for `STANDARD' workflows. For a
%% `STANDARD' workflow, if `StartExecution' is called with the same
%% name and input as a running execution, the call will succeed and return
%% the same response as the original request. If the execution is closed or
%% if the input is different, it will return a `400
%% ExecutionAlreadyExists' error. Names can be reused after 90 days.
%%
%% `StartExecution' is not idempotent for `EXPRESS' workflows.
start_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_execution(Client, Input, []).
start_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExecution">>, Input, Options).

%% @doc Starts a Synchronous Express state machine execution.
%%
%% `StartSyncExecution' is not available for `STANDARD' workflows.
%%
%% `StartSyncExecution' will return a `200 OK' response, even if your
%% execution fails, because the status code in the API response doesn't
%% reflect function errors. Error codes are reserved for errors that prevent
%% your execution from running, such as permissions errors, limit errors, or
%% issues with your state machine code and configuration.
%%
%% This API action isn't logged in CloudTrail.
start_sync_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_sync_execution(Client, Input, []).
start_sync_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSyncExecution">>, Input, Options).

%% @doc Stops an execution.
%%
%% This API action is not supported by `EXPRESS' state machines.
stop_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_execution(Client, Input, []).
stop_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopExecution">>, Input, Options).

%% @doc Add a tag to a Step Functions resource.
%%
%% An array of key-value pairs. For more information, see Using Cost
%% Allocation Tags in the Amazon Web Services Billing and Cost Management
%% User Guide, and Controlling Access Using IAM Tags.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: `_ . : / = + - @'.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove a tag from a Step Functions resource
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an in-progress Map Run's configuration to include changes
%% to the settings that control maximum concurrency and Map Run failure.
update_map_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_map_run(Client, Input, []).
update_map_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMapRun">>, Input, Options).

%% @doc Updates an existing state machine by modifying its `definition',
%% `roleArn', or `loggingConfiguration'.
%%
%% Running executions will continue to use the previous `definition' and
%% `roleArn'. You must include at least one of `definition' or
%% `roleArn' or you will receive a `MissingRequiredParameter' error.
%%
%% If the given state machine Amazon Resource Name (ARN) is a qualified state
%% machine ARN, it will fail with ValidationException.
%%
%% A qualified state machine ARN refers to a Distributed Map state defined
%% within a state machine. For example, the qualified state machine ARN
%% `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel'
%% refers to a Distributed Map state with a label `mapStateLabel' in the
%% state machine named `stateMachineName'.
%%
%% All `StartExecution' calls within a few seconds will use the updated
%% `definition' and `roleArn'. Executions started immediately after
%% calling `UpdateStateMachine' may use the previous state machine
%% `definition' and `roleArn'.
update_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_machine(Client, Input, []).
update_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateMachine">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"states">>},
    Host = build_host(<<"states">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSStepFunctions.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
