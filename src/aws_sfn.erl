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
         create_state_machine_alias/2,
         create_state_machine_alias/3,
         delete_activity/2,
         delete_activity/3,
         delete_state_machine/2,
         delete_state_machine/3,
         delete_state_machine_alias/2,
         delete_state_machine_alias/3,
         delete_state_machine_version/2,
         delete_state_machine_version/3,
         describe_activity/2,
         describe_activity/3,
         describe_execution/2,
         describe_execution/3,
         describe_map_run/2,
         describe_map_run/3,
         describe_state_machine/2,
         describe_state_machine/3,
         describe_state_machine_alias/2,
         describe_state_machine_alias/3,
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
         list_state_machine_aliases/2,
         list_state_machine_aliases/3,
         list_state_machine_versions/2,
         list_state_machine_versions/3,
         list_state_machines/2,
         list_state_machines/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         publish_state_machine_version/2,
         publish_state_machine_version/3,
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
         update_state_machine/3,
         update_state_machine_alias/2,
         update_state_machine_alias/3]).

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
%% If you set the `publish' parameter of this API action to `true',
%% it publishes version `1' as the first revision of the state machine.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% `CreateStateMachine' is an idempotent API. Subsequent requests won’t
%% create a duplicate resource if it was already created.
%% `CreateStateMachine''s idempotency check is based on the state
%% machine `name', `definition', `type',
%% `LoggingConfiguration', and `TracingConfiguration'. The check is
%% also based on the `publish' and `versionDescription' parameters.
%% If a following request has a different `roleArn' or `tags', Step
%% Functions will ignore these differences and treat it as an idempotent
%% request of the previous. In this case, `roleArn' and `tags' will
%% not be updated, even if they are different.
create_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_machine(Client, Input, []).
create_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateMachine">>, Input, Options).

%% @doc Creates an alias for a state machine that points to one or two
%% versions of the same state machine.
%%
%% You can set your application to call `StartExecution' with an alias
%% and update the version the alias uses without changing the client's
%% code.
%%
%% You can also map an alias to split `StartExecution' requests between
%% two versions of a state machine. To do this, add a second
%% `RoutingConfig' object in the `routingConfiguration' parameter.
%% You must also specify the percentage of execution run requests each
%% version should receive in both `RoutingConfig' objects. Step Functions
%% randomly chooses which version runs a given execution based on the
%% percentage you specify.
%%
%% To create an alias that points to a single version, specify a single
%% `RoutingConfig' object with a `weight' set to 100.
%%
%% You can create up to 100 aliases for each state machine. You must delete
%% unused aliases using the `DeleteStateMachineAlias' API action.
%%
%% `CreateStateMachineAlias' is an idempotent API. Step Functions bases
%% the idempotency check on the `stateMachineArn', `description',
%% `name', and `routingConfiguration' parameters. Requests that
%% contain the same values for these parameters return a successful
%% idempotent response without creating a duplicate resource.
%%
%% Related operations:
%%
%% <ul> <li> `DescribeStateMachineAlias'
%%
%% </li> <li> `ListStateMachineAliases'
%%
%% </li> <li> `UpdateStateMachineAlias'
%%
%% </li> <li> `DeleteStateMachineAlias'
%%
%% </li> </ul>
create_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_machine_alias(Client, Input, []).
create_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateMachineAlias">>, Input, Options).

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
%% A qualified state machine ARN can either refer to a Distributed Map state
%% defined within a state machine, a version ARN, or an alias ARN.
%%
%% The following are some examples of qualified and unqualified state machine
%% ARNs:
%%
%% <ul> <li> The following qualified state machine ARN refers to a
%% Distributed Map state with a label `mapStateLabel' in a state machine
%% named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% </li> <li> The following unqualified state machine ARN refers to a state
%% machine named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine'
%%
%% </li> </ul> This API action also deletes all versions and aliases
%% associated with a state machine.
%%
%% For `EXPRESS' state machines, the deletion happens eventually (usually
%% in less than a minute). Running executions may emit logs after
%% `DeleteStateMachine' API is called.
delete_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine(Client, Input, []).
delete_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachine">>, Input, Options).

%% @doc Deletes a state machine alias.
%%
%% After you delete a state machine alias, you can't use it to start
%% executions. When you delete a state machine alias, Step Functions
%% doesn't delete the state machine versions that alias references.
%%
%% Related operations:
%%
%% <ul> <li> `CreateStateMachineAlias'
%%
%% </li> <li> `DescribeStateMachineAlias'
%%
%% </li> <li> `ListStateMachineAliases'
%%
%% </li> <li> `UpdateStateMachineAlias'
%%
%% </li> </ul>
delete_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine_alias(Client, Input, []).
delete_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachineAlias">>, Input, Options).

%% @doc Deletes a state machine version.
%%
%% After you delete a version, you can't call `StartExecution' using
%% that version's ARN or use the version with a state machine alias.
%%
%% Deleting a state machine version won't terminate its in-progress
%% executions.
%%
%% You can't delete a state machine version currently referenced by one
%% or more aliases. Before you delete a version, you must either delete the
%% aliases or update them to point to another state machine version.
%%
%% Related operations:
%%
%% <ul> <li> `PublishStateMachineVersion'
%%
%% </li> <li> `ListStateMachineVersions'
%%
%% </li> </ul>
delete_state_machine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine_version(Client, Input, []).
delete_state_machine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachineVersion">>, Input, Options).

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

%% @doc Provides information about a state machine execution, such as the
%% state machine associated with the execution, the execution input and
%% output, and relevant execution metadata.
%%
%% Use this API action to return the Map Run Amazon Resource Name (ARN) if
%% the execution was dispatched by a Map Run.
%%
%% If you specify a version or alias ARN when you call the
%% `StartExecution' API action, `DescribeExecution' returns that ARN.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% Executions of an `EXPRESS' state machinearen't supported by
%% `DescribeExecution' unless a Map Run dispatched them.
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
%% A qualified state machine ARN can either refer to a Distributed Map state
%% defined within a state machine, a version ARN, or an alias ARN.
%%
%% The following are some examples of qualified and unqualified state machine
%% ARNs:
%%
%% <ul> <li> The following qualified state machine ARN refers to a
%% Distributed Map state with a label `mapStateLabel' in a state machine
%% named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% </li> <li> The following qualified state machine ARN refers to an alias
%% named `PROD'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine:PROD&gt;'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% </li> <li> The following unqualified state machine ARN refers to a state
%% machine named `myStateMachine'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine&gt;'
%%
%% </li> </ul> This API action returns the details for a state machine
%% version if the `stateMachineArn' you specify is a state machine
%% version ARN.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
describe_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine(Client, Input, []).
describe_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachine">>, Input, Options).

%% @doc Returns details about a state machine alias.
%%
%% Related operations:
%%
%% <ul> <li> `CreateStateMachineAlias'
%%
%% </li> <li> `ListStateMachineAliases'
%%
%% </li> <li> `UpdateStateMachineAlias'
%%
%% </li> <li> `DeleteStateMachineAlias'
%%
%% </li> </ul>
describe_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine_alias(Client, Input, []).
describe_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachineAlias">>, Input, Options).

%% @doc Provides information about a state machine's definition, its
%% execution role ARN, and configuration.
%%
%% If a Map Run dispatched the execution, this action returns the Map Run
%% Amazon Resource Name (ARN) in the response. The state machine returned is
%% the state machine associated with the Map Run.
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
%% You can also provide a state machine alias ARN or version ARN to list the
%% executions associated with a specific alias or version.
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

%% @doc Lists aliases for a specified state machine ARN.
%%
%% Results are sorted by time, with the most recently created aliases listed
%% first.
%%
%% To list aliases that reference a state machine version, you can specify
%% the version ARN in the `stateMachineArn' parameter.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% Related operations:
%%
%% <ul> <li> `CreateStateMachineAlias'
%%
%% </li> <li> `DescribeStateMachineAlias'
%%
%% </li> <li> `UpdateStateMachineAlias'
%%
%% </li> <li> `DeleteStateMachineAlias'
%%
%% </li> </ul>
list_state_machine_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machine_aliases(Client, Input, []).
list_state_machine_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachineAliases">>, Input, Options).

%% @doc Lists versions for the specified state machine Amazon Resource Name
%% (ARN).
%%
%% The results are sorted in descending order of the version creation time.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page. Make
%% the call again using the returned token to retrieve the next page. Keep
%% all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% Related operations:
%%
%% <ul> <li> `PublishStateMachineVersion'
%%
%% </li> <li> `DeleteStateMachineVersion'
%%
%% </li> </ul>
list_state_machine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machine_versions(Client, Input, []).
list_state_machine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachineVersions">>, Input, Options).

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

%% @doc Creates a version from the current revision of a state machine.
%%
%% Use versions to create immutable snapshots of your state machine. You can
%% start executions from versions either directly or with an alias. To create
%% an alias, use `CreateStateMachineAlias'.
%%
%% You can publish up to 1000 versions for each state machine. You must
%% manually delete unused versions using the `DeleteStateMachineVersion'
%% API action.
%%
%% `PublishStateMachineVersion' is an idempotent API. It doesn't
%% create a duplicate state machine version if it already exists for the
%% current revision. Step Functions bases
%% `PublishStateMachineVersion''s idempotency check on the
%% `stateMachineArn', `name', and `revisionId' parameters.
%% Requests with the same parameters return a successful idempotent response.
%% If you don't specify a `revisionId', Step Functions checks for a
%% previously published version of the state machine's current revision.
%%
%% Related operations:
%%
%% <ul> <li> `DeleteStateMachineVersion'
%%
%% </li> <li> `ListStateMachineVersions'
%%
%% </li> </ul>
publish_state_machine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_state_machine_version(Client, Input, []).
publish_state_machine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishStateMachineVersion">>, Input, Options).

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
%% A qualified state machine ARN can either refer to a Distributed Map state
%% defined within a state machine, a version ARN, or an alias ARN.
%%
%% The following are some examples of qualified and unqualified state machine
%% ARNs:
%%
%% <ul> <li> The following qualified state machine ARN refers to a
%% Distributed Map state with a label `mapStateLabel' in a state machine
%% named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% </li> <li> The following qualified state machine ARN refers to an alias
%% named `PROD'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine:PROD&gt;'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% </li> <li> The following unqualified state machine ARN refers to a state
%% machine named `myStateMachine'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine&gt;'
%%
%% </li> </ul> If you start an execution with an unqualified state machine
%% ARN, Step Functions uses the latest revision of the state machine for the
%% execution.
%%
%% To start executions of a state machine version, call `StartExecution'
%% and provide the version ARN or the ARN of an alias that points to the
%% version.
%%
%% `StartExecution' is idempotent for `STANDARD' workflows. For a
%% `STANDARD' workflow, if you call `StartExecution' with the same
%% name and input as a running execution, the call succeeds and return the
%% same response as the original request. If the execution is closed or if
%% the input is different, it returns a `400 ExecutionAlreadyExists'
%% error. You can reuse names after 90 days.
%%
%% `StartExecution' isn't idempotent for `EXPRESS' workflows.
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
%% A qualified state machine ARN refers to a Distributed Map state defined
%% within a state machine. For example, the qualified state machine ARN
%% `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel'
%% refers to a Distributed Map state with a label `mapStateLabel' in the
%% state machine named `stateMachineName'.
%%
%% A qualified state machine ARN can either refer to a Distributed Map state
%% defined within a state machine, a version ARN, or an alias ARN.
%%
%% The following are some examples of qualified and unqualified state machine
%% ARNs:
%%
%% <ul> <li> The following qualified state machine ARN refers to a
%% Distributed Map state with a label `mapStateLabel' in a state machine
%% named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% </li> <li> The following qualified state machine ARN refers to an alias
%% named `PROD'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine:PROD&gt;'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% </li> <li> The following unqualified state machine ARN refers to a state
%% machine named `myStateMachine'.
%%
%% `arn:&lt;partition&gt;:states:&lt;region&gt;:&lt;account-id&gt;:stateMachine:&lt;myStateMachine&gt;'
%%
%% </li> </ul> After you update your state machine, you can set the
%% `publish' parameter to `true' in the same action to publish a new
%% version. This way, you can opt-in to strict versioning of your state
%% machine.
%%
%% Step Functions assigns monotonically increasing integers for state machine
%% versions, starting at version number 1.
%%
%% All `StartExecution' calls within a few seconds use the updated
%% `definition' and `roleArn'. Executions started immediately after
%% you call `UpdateStateMachine' may use the previous state machine
%% `definition' and `roleArn'.
update_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_machine(Client, Input, []).
update_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateMachine">>, Input, Options).

%% @doc Updates the configuration of an existing state machine alias by
%% modifying its `description' or `routingConfiguration'.
%%
%% You must specify at least one of the `description' or
%% `routingConfiguration' parameters to update a state machine alias.
%%
%% `UpdateStateMachineAlias' is an idempotent API. Step Functions bases
%% the idempotency check on the `stateMachineAliasArn',
%% `description', and `routingConfiguration' parameters. Requests
%% with the same parameters return an idempotent response.
%%
%% This operation is eventually consistent. All `StartExecution' requests
%% made within a few seconds use the latest alias configuration. Executions
%% started immediately after calling `UpdateStateMachineAlias' may use
%% the previous routing configuration.
%%
%% Related operations:
%%
%% <ul> <li> `CreateStateMachineAlias'
%%
%% </li> <li> `DescribeStateMachineAlias'
%%
%% </li> <li> `ListStateMachineAliases'
%%
%% </li> <li> `DeleteStateMachineAlias'
%%
%% </li> </ul>
update_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_machine_alias(Client, Input, []).
update_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateMachineAlias">>, Input, Options).

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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
