%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc AWS Data Pipeline configures and manages a data-driven workflow
%% called a pipeline. AWS Data Pipeline handles the details of scheduling and
%% ensuring that data dependencies are met so that your application can focus
%% on processing the data.
%%
%% AWS Data Pipeline provides a JAR implementation of a task runner called
%% AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides
%% logic for common data management scenarios, such as performing database
%% queries and running data analysis using Amazon Elastic MapReduce (Amazon
%% EMR). You can use AWS Data Pipeline Task Runner as your task runner, or
%% you can write your own task runner to provide custom data management.
%%
%% AWS Data Pipeline implements two main sets of functionality. Use the first
%% set to create a pipeline and define data sources, schedules, dependencies,
%% and the transforms to be performed on the data. Use the second set in your
%% task runner application to receive the next task ready for processing. The
%% logic for performing the task, such as querying the data, running data
%% analysis, or converting the data from one format to another, is contained
%% within the task runner. The task runner performs the task assigned to it
%% by the web service, reporting progress to the web service as it does so.
%% When the task is done, the task runner reports the final success or
%% failure of the task to the web service.
-module(aws_data_pipeline).

-export([activate_pipeline/2,
         activate_pipeline/3,
         add_tags/2,
         add_tags/3,
         create_pipeline/2,
         create_pipeline/3,
         deactivate_pipeline/2,
         deactivate_pipeline/3,
         delete_pipeline/2,
         delete_pipeline/3,
         describe_objects/2,
         describe_objects/3,
         describe_pipelines/2,
         describe_pipelines/3,
         evaluate_expression/2,
         evaluate_expression/3,
         get_pipeline_definition/2,
         get_pipeline_definition/3,
         list_pipelines/2,
         list_pipelines/3,
         poll_for_task/2,
         poll_for_task/3,
         put_pipeline_definition/2,
         put_pipeline_definition/3,
         query_objects/2,
         query_objects/3,
         remove_tags/2,
         remove_tags/3,
         report_task_progress/2,
         report_task_progress/3,
         report_task_runner_heartbeat/2,
         report_task_runner_heartbeat/3,
         set_status/2,
         set_status/3,
         set_task_status/2,
         set_task_status/3,
         validate_pipeline_definition/2,
         validate_pipeline_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Validates the specified pipeline and starts processing pipeline
%% tasks. If the pipeline does not pass validation, activation fails.
%%
%% If you need to pause the pipeline to investigate an issue with a
%% component, such as a data source or script, call
%% <a>DeactivatePipeline</a>.
%%
%% To activate a finished pipeline, modify the end date for the pipeline and
%% then activate it.
activate_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_pipeline(Client, Input, []).
activate_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivatePipeline">>, Input, Options).

%% @doc Adds or modifies tags for the specified pipeline.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to
%% populate the pipeline.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Deactivates the specified running pipeline. The pipeline is set to
%% the <code>DEACTIVATING</code> state until the deactivation process
%% completes.
%%
%% To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default,
%% the pipeline resumes from the last completed execution. Optionally, you
%% can specify the date and time to resume the pipeline.
deactivate_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_pipeline(Client, Input, []).
deactivate_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivatePipeline">>, Input, Options).

%% @doc Deletes a pipeline, its pipeline definition, and its run history. AWS
%% Data Pipeline attempts to cancel instances associated with the pipeline
%% that are currently being processed by task runners.
%%
%% Deleting a pipeline cannot be undone. You cannot query or restore a
%% deleted pipeline. To temporarily pause a pipeline instead of deleting it,
%% call <a>SetStatus</a> with the status set to <code>PAUSE</code> on
%% individual components. Components that are paused by <a>SetStatus</a> can
%% be resumed.
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Gets the object definitions for a set of objects associated with the
%% pipeline. Object definitions are composed of a set of fields that define
%% the properties of the object.
describe_objects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_objects(Client, Input, []).
describe_objects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObjects">>, Input, Options).

%% @doc Retrieves metadata about one or more pipelines. The information
%% retrieved includes the name of the pipeline, the pipeline identifier, its
%% current state, and the user account that owns the pipeline. Using account
%% credentials, you can retrieve metadata about pipelines that you or your
%% IAM users have created. If you are using an IAM user account, you can
%% retrieve metadata about only those pipelines for which you have read
%% permissions.
%%
%% To retrieve the full pipeline definition instead of metadata about the
%% pipeline, call <a>GetPipelineDefinition</a>.
describe_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipelines(Client, Input, []).
describe_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelines">>, Input, Options).

%% @doc Task runners call <code>EvaluateExpression</code> to evaluate a
%% string in the context of the specified object. For example, a task runner
%% can evaluate SQL queries stored in Amazon S3.
evaluate_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    evaluate_expression(Client, Input, []).
evaluate_expression(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EvaluateExpression">>, Input, Options).

%% @doc Gets the definition of the specified pipeline. You can call
%% <code>GetPipelineDefinition</code> to retrieve the pipeline definition
%% that you provided using <a>PutPipelineDefinition</a>.
get_pipeline_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_definition(Client, Input, []).
get_pipeline_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineDefinition">>, Input, Options).

%% @doc Lists the pipeline identifiers for all active pipelines that you have
%% permission to access.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Task runners call <code>PollForTask</code> to receive a task to
%% perform from AWS Data Pipeline. The task runner specifies which tasks it
%% can perform by setting a value for the <code>workerGroup</code> parameter.
%% The task returned can come from any of the pipelines that match the
%% <code>workerGroup</code> value passed in by the task runner and that was
%% launched using the IAM user credentials specified by the task runner.
%%
%% If tasks are ready in the work queue, <code>PollForTask</code> returns a
%% response immediately. If no tasks are available in the queue,
%% <code>PollForTask</code> uses long-polling and holds on to a poll
%% connection for up to a 90 seconds, during which time the first newly
%% scheduled task is handed to the task runner. To accomodate this, set the
%% socket timeout in your task runner to 90 seconds. The task runner should
%% not call <code>PollForTask</code> again on the same
%% <code>workerGroup</code> until it receives a response, and this can take
%% up to 90 seconds.
poll_for_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_task(Client, Input, []).
poll_for_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForTask">>, Input, Options).

%% @doc Adds tasks, schedules, and preconditions to the specified pipeline.
%% You can use <code>PutPipelineDefinition</code> to populate a new pipeline.
%%
%% <code>PutPipelineDefinition</code> also validates the configuration as it
%% adds it to the pipeline. Changes to the pipeline are saved unless one of
%% the following three validation errors exists in the pipeline.
%%
%% <ol> <li>An object is missing a name or identifier field.</li> <li>A
%% string or reference field is empty.</li> <li>The number of objects in the
%% pipeline exceeds the maximum allowed objects.</li> <li>The pipeline is in
%% a FINISHED state.</li> </ol> Pipeline object definitions are passed to the
%% <code>PutPipelineDefinition</code> action and returned by the
%% <a>GetPipelineDefinition</a> action.
put_pipeline_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_pipeline_definition(Client, Input, []).
put_pipeline_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPipelineDefinition">>, Input, Options).

%% @doc Queries the specified pipeline for the names of objects that match
%% the specified set of conditions.
query_objects(Client, Input)
  when is_map(Client), is_map(Input) ->
    query_objects(Client, Input, []).
query_objects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"QueryObjects">>, Input, Options).

%% @doc Removes existing tags from the specified pipeline.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Task runners call <code>ReportTaskProgress</code> when assigned a
%% task to acknowledge that it has the task. If the web service does not
%% receive this acknowledgement within 2 minutes, it assigns the task in a
%% subsequent <a>PollForTask</a> call. After this initial acknowledgement,
%% the task runner only needs to report progress every 15 minutes to maintain
%% its ownership of the task. You can change this reporting time from 15
%% minutes by specifying a <code>reportProgressTimeout</code> field in your
%% pipeline.
%%
%% If a task runner does not report its status after 5 minutes, AWS Data
%% Pipeline assumes that the task runner is unable to process the task and
%% reassigns the task in a subsequent response to <a>PollForTask</a>. Task
%% runners should call <code>ReportTaskProgress</code> every 60 seconds.
report_task_progress(Client, Input)
  when is_map(Client), is_map(Input) ->
    report_task_progress(Client, Input, []).
report_task_progress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReportTaskProgress">>, Input, Options).

%% @doc Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15
%% minutes to indicate that they are operational. If the AWS Data Pipeline
%% Task Runner is launched on a resource managed by AWS Data Pipeline, the
%% web service can use this call to detect when the task runner application
%% has failed and restart a new instance.
report_task_runner_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    report_task_runner_heartbeat(Client, Input, []).
report_task_runner_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReportTaskRunnerHeartbeat">>, Input, Options).

%% @doc Requests that the status of the specified physical or logical
%% pipeline objects be updated in the specified pipeline. This update might
%% not occur immediately, but is eventually consistent. The status that can
%% be set depends on the type of object (for example, DataNode or Activity).
%% You cannot perform this operation on <code>FINISHED</code> pipelines and
%% attempting to do so returns <code>InvalidRequestException</code>.
set_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_status(Client, Input, []).
set_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetStatus">>, Input, Options).

%% @doc Task runners call <code>SetTaskStatus</code> to notify AWS Data
%% Pipeline that a task is completed and provide information about the final
%% status. A task runner makes this call regardless of whether the task was
%% sucessful. A task runner does not need to call <code>SetTaskStatus</code>
%% for tasks that are canceled by the web service during a call to
%% <a>ReportTaskProgress</a>.
set_task_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_task_status(Client, Input, []).
set_task_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTaskStatus">>, Input, Options).

%% @doc Validates the specified pipeline definition to ensure that it is well
%% formed and can be run without error.
validate_pipeline_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_pipeline_definition(Client, Input, []).
validate_pipeline_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidatePipelineDefinition">>, Input, Options).

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
    Client1 = Client#{service => <<"datapipeline">>},
    Host = aws_util:binary_join([<<"datapipeline.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"DataPipeline.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
