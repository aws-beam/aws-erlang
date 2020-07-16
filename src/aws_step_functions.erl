%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Step Functions</fullname>
%%
%% AWS Step Functions is a service that lets you coordinate the components of
%% distributed applications and microservices using visual workflows.
%%
%% You can use Step Functions to build applications from individual
%% components, each of which performs a discrete function, or <i>task</i>,
%% allowing you to scale and change applications quickly. Step Functions
%% provides a console that helps visualize the components of your application
%% as a series of steps. Step Functions automatically triggers and tracks
%% each step, and retries steps when there are errors, so your application
%% executes predictably and in the right order every time. Step Functions
%% logs the state of each step, so you can quickly diagnose and debug any
%% issues.
%%
%% Step Functions manages operations and underlying infrastructure to ensure
%% your application is available at any scale. You can run tasks on AWS, your
%% own servers, or any system that has access to AWS. You can access and use
%% Step Functions using the console, the AWS SDKs, or an HTTP API. For more
%% information about Step Functions, see the <i> <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS
%% Step Functions Developer Guide</a> </i>.
-module(aws_step_functions).

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
         stop_execution/2,
         stop_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_state_machine/2,
         update_state_machine/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an activity. An activity is a task that you write in any
%% programming language and host on any machine that has access to AWS Step
%% Functions. Activities must poll Step Functions using the
%% <code>GetActivityTask</code> API action and respond using
%% <code>SendTask*</code> API actions. This function lets Step Functions know
%% the existence of your activity and returns an identifier for use in a
%% state machine and when polling from the activity.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note> <note> <code>CreateActivity</code> is an idempotent API.
%% Subsequent requests won’t create a duplicate resource if it was already
%% created. <code>CreateActivity</code>'s idempotency check is based on the
%% activity <code>name</code>. If a following request has different
%% <code>tags</code> values, Step Functions will ignore these differences and
%% treat it as an idempotent request of the previous. In this case,
%% <code>tags</code> will not be updated, even if they are different.
%%
%% </note>
create_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activity(Client, Input, []).
create_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivity">>, Input, Options).

%% @doc Creates a state machine. A state machine consists of a collection of
%% states that can do work (<code>Task</code> states), determine to which
%% states to transition next (<code>Choice</code> states), stop an execution
%% with an error (<code>Fail</code> states), and so on. State machines are
%% specified using a JSON-based, structured language. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon
%% States Language</a> in the AWS Step Functions User Guide.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note> <note> <code>CreateStateMachine</code> is an idempotent API.
%% Subsequent requests won’t create a duplicate resource if it was already
%% created. <code>CreateStateMachine</code>'s idempotency check is based on
%% the state machine <code>name</code>, <code>definition</code>,
%% <code>type</code>, and <code>LoggingConfiguration</code>. If a following
%% request has a different <code>roleArn</code> or <code>tags</code>, Step
%% Functions will ignore these differences and treat it as an idempotent
%% request of the previous. In this case, <code>roleArn</code> and
%% <code>tags</code> will not be updated, even if they are different.
%%
%% </note>
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

%% @doc Deletes a state machine. This is an asynchronous operation: It sets
%% the state machine's status to <code>DELETING</code> and begins the
%% deletion process.
%%
%% <note> For <code>EXPRESS</code>state machines, the deletion will happen
%% eventually (usually less than a minute). Running executions may emit logs
%% after <code>DeleteStateMachine</code> API is called.
%%
%% </note>
delete_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine(Client, Input, []).
delete_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachine">>, Input, Options).

%% @doc Describes an activity.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note>
describe_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity(Client, Input, []).
describe_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivity">>, Input, Options).

%% @doc Describes an execution.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note> This API action is not supported by <code>EXPRESS</code> state
%% machines.
describe_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_execution(Client, Input, []).
describe_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExecution">>, Input, Options).

%% @doc Describes a state machine.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note>
describe_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine(Client, Input, []).
describe_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachine">>, Input, Options).

%% @doc Describes the state machine associated with a specific execution.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note> This API action is not supported by <code>EXPRESS</code> state
%% machines.
describe_state_machine_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine_for_execution(Client, Input, []).
describe_state_machine_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachineForExecution">>, Input, Options).

%% @doc Used by workers to retrieve a task (with the specified activity ARN)
%% which has been scheduled for execution by a running state machine. This
%% initiates a long poll, where the service holds the HTTP connection open
%% and responds as soon as a task becomes available (i.e. an execution of a
%% task of this type is needed.) The maximum time the service holds on to the
%% request before responding is 60 seconds. If no task is available within 60
%% seconds, the poll returns a <code>taskToken</code> with a null string.
%%
%% <important> Workers should set their client side socket timeout to at
%% least 65 seconds (5 seconds higher than the maximum time the service may
%% hold the poll request).
%%
%% Polling with <code>GetActivityTask</code> can cause latency in some
%% implementations. See <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html">Avoid
%% Latency When Polling for Activity Tasks</a> in the Step Functions
%% Developer Guide.
%%
%% </important>
get_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_activity_task(Client, Input, []).
get_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActivityTask">>, Input, Options).

%% @doc Returns the history of the specified execution as a list of events.
%% By default, the results are returned in ascending order of the
%% <code>timeStamp</code> of the events. Use the <code>reverseOrder</code>
%% parameter to get the latest events first.
%%
%% If <code>nextToken</code> is returned, there are more results available.
%% The value of <code>nextToken</code> is a unique pagination token for each
%% page. Make the call again using the returned token to retrieve the next
%% page. Keep all other arguments unchanged. Each pagination token expires
%% after 24 hours. Using an expired pagination token will return an <i>HTTP
%% 400 InvalidToken</i> error.
%%
%% This API action is not supported by <code>EXPRESS</code> state machines.
get_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution_history(Client, Input, []).
get_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecutionHistory">>, Input, Options).

%% @doc Lists the existing activities.
%%
%% If <code>nextToken</code> is returned, there are more results available.
%% The value of <code>nextToken</code> is a unique pagination token for each
%% page. Make the call again using the returned token to retrieve the next
%% page. Keep all other arguments unchanged. Each pagination token expires
%% after 24 hours. Using an expired pagination token will return an <i>HTTP
%% 400 InvalidToken</i> error.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note>
list_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activities(Client, Input, []).
list_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivities">>, Input, Options).

%% @doc Lists the executions of a state machine that meet the filtering
%% criteria. Results are sorted by time, with the most recent execution
%% first.
%%
%% If <code>nextToken</code> is returned, there are more results available.
%% The value of <code>nextToken</code> is a unique pagination token for each
%% page. Make the call again using the returned token to retrieve the next
%% page. Keep all other arguments unchanged. Each pagination token expires
%% after 24 hours. Using an expired pagination token will return an <i>HTTP
%% 400 InvalidToken</i> error.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note> This API action is not supported by <code>EXPRESS</code> state
%% machines.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Lists the existing state machines.
%%
%% If <code>nextToken</code> is returned, there are more results available.
%% The value of <code>nextToken</code> is a unique pagination token for each
%% page. Make the call again using the returned token to retrieve the next
%% page. Keep all other arguments unchanged. Each pagination token expires
%% after 24 hours. Using an expired pagination token will return an <i>HTTP
%% 400 InvalidToken</i> error.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not reflect very recent updates and changes.
%%
%% </note>
list_state_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machines(Client, Input, []).
list_state_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachines">>, Input, Options).

%% @doc List tags for a given resource.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: <code>_ . : / = + - @</code>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Used by activity workers and task states using the <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
%% pattern to report that the task identified by the <code>taskToken</code>
%% failed.
send_task_failure(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_failure(Client, Input, []).
send_task_failure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskFailure">>, Input, Options).

%% @doc Used by activity workers and task states using the <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
%% pattern to report to Step Functions that the task represented by the
%% specified <code>taskToken</code> is still making progress. This action
%% resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code>
%% threshold is specified in the state machine's Amazon States Language
%% definition (<code>HeartbeatSeconds</code>). This action does not in itself
%% create an event in the execution history. However, if the task times out,
%% the execution history contains an <code>ActivityTimedOut</code> entry for
%% activities, or a <code>TaskTimedOut</code> entry for for tasks using the
%% <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job
%% run</a> or <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
%% pattern.
%%
%% <note> The <code>Timeout</code> of a task, defined in the state machine's
%% Amazon States Language definition, is its maximum allowed duration,
%% regardless of the number of <a>SendTaskHeartbeat</a> requests received.
%% Use <code>HeartbeatSeconds</code> to configure the timeout interval for
%% heartbeats.
%%
%% </note>
send_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_heartbeat(Client, Input, []).
send_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskHeartbeat">>, Input, Options).

%% @doc Used by activity workers and task states using the <a
%% href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
%% pattern to report that the task identified by the <code>taskToken</code>
%% completed successfully.
send_task_success(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_success(Client, Input, []).
send_task_success(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskSuccess">>, Input, Options).

%% @doc Starts a state machine execution.
%%
%% <note> <code>StartExecution</code> is idempotent. If
%% <code>StartExecution</code> is called with the same name and input as a
%% running execution, the call will succeed and return the same response as
%% the original request. If the execution is closed or if the input is
%% different, it will return a 400 <code>ExecutionAlreadyExists</code> error.
%% Names can be reused after 90 days.
%%
%% </note>
start_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_execution(Client, Input, []).
start_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExecution">>, Input, Options).

%% @doc Stops an execution.
%%
%% This API action is not supported by <code>EXPRESS</code> state machines.
stop_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_execution(Client, Input, []).
stop_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopExecution">>, Input, Options).

%% @doc Add a tag to a Step Functions resource.
%%
%% An array of key-value pairs. For more information, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
%% Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>, and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling
%% Access Using IAM Tags</a>.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: <code>_ . : / = + - @</code>.
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

%% @doc Updates an existing state machine by modifying its
%% <code>definition</code>, <code>roleArn</code>, or
%% <code>loggingConfiguration</code>. Running executions will continue to use
%% the previous <code>definition</code> and <code>roleArn</code>. You must
%% include at least one of <code>definition</code> or <code>roleArn</code> or
%% you will receive a <code>MissingRequiredParameter</code> error.
%%
%% <note> All <code>StartExecution</code> calls within a few seconds will use
%% the updated <code>definition</code> and <code>roleArn</code>. Executions
%% started immediately after calling <code>UpdateStateMachine</code> may use
%% the previous state machine <code>definition</code> and
%% <code>roleArn</code>.
%%
%% </note>
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"states">>},
    Host = get_host(<<"states">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, << <<"AWSStepFunctions.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
