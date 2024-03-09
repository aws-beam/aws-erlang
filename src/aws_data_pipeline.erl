%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Data Pipeline configures and manages a data-driven workflow
%% called a pipeline.
%%
%% AWS Data Pipeline
%% handles the details of scheduling and ensuring that data dependencies are
%% met so that your application
%% can focus on processing the data.
%%
%% AWS Data Pipeline provides a JAR implementation of a task runner called
%% AWS Data Pipeline Task Runner.
%% AWS Data Pipeline Task Runner provides logic for common data management
%% scenarios, such as performing
%% database queries and running data analysis using Amazon Elastic MapReduce
%% (Amazon EMR). You can use
%% AWS Data Pipeline Task Runner as your task runner, or you can write your
%% own task runner to provide
%% custom data management.
%%
%% AWS Data Pipeline implements two main sets of functionality. Use the first
%% set to create a pipeline
%% and define data sources, schedules, dependencies, and the transforms to be
%% performed on the data.
%% Use the second set in your task runner application to receive the next
%% task ready for processing.
%% The logic for performing the task, such as querying the data, running data
%% analysis, or converting
%% the data from one format to another, is contained within the task runner.
%% The task runner performs
%% the task assigned to it by the web service, reporting progress to the web
%% service as it does so.
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
%% tasks.
%%
%% If the pipeline does not pass validation,
%% activation fails.
%%
%% If you need to pause the pipeline to investigate an issue with a
%% component, such as a data source or script,
%% call `DeactivatePipeline'.
%%
%% To activate a finished pipeline, modify the end date for the pipeline and
%% then activate it.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ActivatePipeline
%% Content-Length: 39
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;}
%%
%% HTTP/1.1 200
%% x-amzn-RequestId: ee19d5bf-074e-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 2
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {}
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

%% @doc Creates a new, empty pipeline.
%%
%% Use `PutPipelineDefinition' to populate the pipeline.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.CreatePipeline
%% Content-Length: 91
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;name&quot;: &quot;myPipeline&quot;,
%% &quot;uniqueId&quot;: &quot;123456789&quot;,
%% &quot;description&quot;: &quot;This is my first pipeline&quot;}
%%
%% HTTP/1.1 200
%% x-amzn-RequestId: b16911ce-0774-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 40
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;}
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Deactivates the specified running pipeline.
%%
%% The pipeline is set to the `DEACTIVATING'
%% state until the deactivation process completes.
%%
%% To resume a deactivated pipeline, use `ActivatePipeline'. By default,
%% the pipeline resumes from the last completed execution.
%% Optionally, you can specify the date and time to resume the pipeline.
deactivate_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_pipeline(Client, Input, []).
deactivate_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivatePipeline">>, Input, Options).

%% @doc Deletes a pipeline, its pipeline definition, and its run history.
%%
%% AWS Data Pipeline attempts to cancel instances associated with the
%% pipeline that are currently being processed by task runners.
%%
%% Deleting a pipeline cannot be undone. You cannot query or restore a
%% deleted pipeline.
%% To temporarily pause a pipeline instead of deleting it, call
%% `SetStatus' with the status set to `PAUSE' on individual
%% components.
%% Components that are paused by `SetStatus' can be resumed.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.DeletePipeline
%% Content-Length: 50
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;}
%%
%% x-amzn-RequestId: b7a88c81-0754-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 0
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% Unexpected response: 200, OK, undefined
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Gets the object definitions for a set of objects associated with the
%% pipeline.
%%
%% Object definitions are composed of
%% a set of fields that define the properties of the object.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.DescribeObjects
%% Content-Length: 98
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;,
%% &quot;objectIds&quot;:
%% [&quot;Schedule&quot;],
%% &quot;evaluateExpressions&quot;: true}
%%
%% x-amzn-RequestId: 4c18ea5d-0777-11e2-8a14-21bb8a1f50ef
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 1488
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;hasMoreResults&quot;: false,
%% &quot;pipelineObjects&quot;:
%% [
%% {&quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-12T00:00:00&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;@sphere&quot;,
%% &quot;stringValue&quot;: &quot;COMPONENT&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-21T18:00:00&quot;},
%% {&quot;key&quot;: &quot;@version&quot;,
%% &quot;stringValue&quot;: &quot;1&quot;},
%% {&quot;key&quot;: &quot;@status&quot;,
%% &quot;stringValue&quot;: &quot;PENDING&quot;},
%% {&quot;key&quot;: &quot;@pipelineId&quot;,
%% &quot;stringValue&quot;: &quot;df-06372391ZG65EXAMPLE&quot;}
%% ],
%% &quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;}
%% ]
%% }
describe_objects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_objects(Client, Input, []).
describe_objects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObjects">>, Input, Options).

%% @doc Retrieves metadata about one or more pipelines.
%%
%% The information retrieved includes the name of the pipeline, the pipeline
%% identifier,
%% its current state, and the user account that owns the pipeline. Using
%% account credentials, you can retrieve metadata about pipelines
%% that you or your IAM users have created. If you are using an IAM user
%% account, you can retrieve metadata about only those pipelines
%% for which you have read permissions.
%%
%% To retrieve the full pipeline definition instead of metadata about the
%% pipeline, call `GetPipelineDefinition'.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.DescribePipelines
%% Content-Length: 70
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineIds&quot;:
%% [&quot;df-08785951KAKJEXAMPLE&quot;]
%% }
%%
%% x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 767
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;pipelineDescriptionList&quot;:
%% [
%% {&quot;description&quot;: &quot;This is my first pipeline&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;@pipelineState&quot;,
%% &quot;stringValue&quot;: &quot;SCHEDULED&quot;},
%% {&quot;key&quot;: &quot;description&quot;,
%% &quot;stringValue&quot;: &quot;This is my first pipeline&quot;},
%% {&quot;key&quot;: &quot;name&quot;,
%% &quot;stringValue&quot;: &quot;myPipeline&quot;},
%% {&quot;key&quot;: &quot;@creationTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-13T01:24:06&quot;},
%% {&quot;key&quot;: &quot;@id&quot;,
%% &quot;stringValue&quot;: &quot;df-0937003356ZJEXAMPLE&quot;},
%% {&quot;key&quot;: &quot;@sphere&quot;,
%% &quot;stringValue&quot;: &quot;PIPELINE&quot;},
%% {&quot;key&quot;: &quot;@version&quot;,
%% &quot;stringValue&quot;: &quot;1&quot;},
%% {&quot;key&quot;: &quot;@userId&quot;,
%% &quot;stringValue&quot;: &quot;924374875933&quot;},
%% {&quot;key&quot;: &quot;@accountId&quot;,
%% &quot;stringValue&quot;: &quot;924374875933&quot;},
%% {&quot;key&quot;: &quot;uniqueId&quot;,
%% &quot;stringValue&quot;: &quot;1234567890&quot;}
%% ],
%% &quot;name&quot;: &quot;myPipeline&quot;,
%% &quot;pipelineId&quot;: &quot;df-0937003356ZJEXAMPLE&quot;}
%% ]
%% }
describe_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipelines(Client, Input, []).
describe_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelines">>, Input, Options).

%% @doc Task runners call `EvaluateExpression' to evaluate a string in
%% the context of the specified object.
%%
%% For example, a task runner can evaluate SQL queries stored in Amazon S3.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.DescribePipelines
%% Content-Length: 164
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-08785951KAKJEXAMPLE&quot;,
%% &quot;objectId&quot;: &quot;Schedule&quot;,
%% &quot;expression&quot;: &quot;Transform started at #{startDateTime} and
%% finished at #{endDateTime}&quot;}
%%
%% x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 103
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;evaluatedExpression&quot;: &quot;Transform started at
%% 2012-12-12T00:00:00 and finished at 2012-12-21T18:00:00&quot;}
evaluate_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    evaluate_expression(Client, Input, []).
evaluate_expression(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EvaluateExpression">>, Input, Options).

%% @doc Gets the definition of the specified pipeline.
%%
%% You can call `GetPipelineDefinition' to retrieve
%% the pipeline definition that you provided using
%% `PutPipelineDefinition'.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.GetPipelineDefinition
%% Content-Length: 40
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;}
%%
%% x-amzn-RequestId: e28309e5-0776-11e2-8a14-21bb8a1f50ef
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 890
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;pipelineObjects&quot;:
%% [
%% {&quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;workerGroup&quot;}
%% ],
%% &quot;id&quot;: &quot;Default&quot;,
%% &quot;name&quot;: &quot;Default&quot;},
%% {&quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T17:00:00&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T18:00:00&quot;}
%% ],
%% &quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;},
%% {&quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;}
%% ],
%% &quot;id&quot;: &quot;SayHello&quot;,
%% &quot;name&quot;: &quot;SayHello&quot;}
%% ]
%% }
get_pipeline_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_definition(Client, Input, []).
get_pipeline_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineDefinition">>, Input, Options).

%% @doc Lists the pipeline identifiers for all active pipelines that you have
%% permission to access.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ListPipelines
%% Content-Length: 14
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {}
%%
%% Status:
%% x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 39
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;PipelineIdList&quot;:
%% [
%% {&quot;id&quot;: &quot;df-08785951KAKJEXAMPLE&quot;,
%% &quot;name&quot;: &quot;MyPipeline&quot;},
%% {&quot;id&quot;: &quot;df-08662578ISYEXAMPLE&quot;,
%% &quot;name&quot;: &quot;MySecondPipeline&quot;}
%% ]
%% }
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Task runners call `PollForTask' to receive a task to perform from
%% AWS Data Pipeline.
%%
%% The task runner specifies which tasks it can perform
%% by setting a value for the `workerGroup' parameter. The task returned
%% can come from any of the pipelines that
%% match the `workerGroup' value passed in by the task runner and that
%% was launched using the IAM user credentials
%% specified by the task runner.
%%
%% If tasks are ready in the work queue, `PollForTask' returns a response
%% immediately. If no tasks are available in the queue,
%% `PollForTask' uses long-polling and holds on to a poll connection for
%% up to a 90 seconds, during which time the first newly
%% scheduled task is handed to the task runner. To accomodate this, set the
%% socket timeout in your task runner to 90 seconds. The task
%% runner should not call `PollForTask' again on the same
%% `workerGroup' until it receives a response, and this can take up to 90
%% seconds.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.PollForTask
%% Content-Length: 59
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;workerGroup&quot;: &quot;MyworkerGroup&quot;,
%% &quot;hostname&quot;: &quot;example.com&quot;}
%%
%% x-amzn-RequestId: 41c713d2-0775-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 39
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;taskObject&quot;:
%% {&quot;attemptId&quot;:
%% &quot;@SayHello_2012-12-12T00:00:00_Attempt=1&quot;,
%% &quot;objects&quot;:
%% {&quot;@SayHello_2012-12-12T00:00:00_Attempt=1&quot;:
%% {&quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;@componentParent&quot;,
%% &quot;refValue&quot;: &quot;SayHello&quot;},
%% {&quot;key&quot;: &quot;@scheduledStartTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-12T00:00:00&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;SayHello&quot;},
%% {&quot;key&quot;: &quot;@sphere&quot;,
%% &quot;stringValue&quot;: &quot;ATTEMPT&quot;},
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;workerGroup&quot;},
%% {&quot;key&quot;: &quot;@instanceParent&quot;,
%% &quot;refValue&quot;: &quot;@SayHello_2012-12-12T00:00:00&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;},
%% {&quot;key&quot;: &quot;@status&quot;,
%% &quot;stringValue&quot;: &quot;WAITING_FOR_RUNNER&quot;},
%% {&quot;key&quot;: &quot;@version&quot;,
%% &quot;stringValue&quot;: &quot;1&quot;},
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;@actualStartTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-13T01:40:50&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;@scheduledEndTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-12T01:00:00&quot;},
%% {&quot;key&quot;: &quot;@activeInstances&quot;,
%% &quot;refValue&quot;: &quot;@SayHello_2012-12-12T00:00:00&quot;},
%% {&quot;key&quot;: &quot;@pipelineId&quot;,
%% &quot;stringValue&quot;: &quot;df-0937003356ZJEXAMPLE&quot;}
%% ],
%% &quot;id&quot;: &quot;@SayHello_2012-12-12T00:00:00_Attempt=1&quot;,
%% &quot;name&quot;: &quot;@SayHello_2012-12-12T00:00:00_Attempt=1&quot;}
%% },
%% &quot;pipelineId&quot;: &quot;df-0937003356ZJEXAMPLE&quot;,
%% &quot;taskId&quot;:
%% &quot;2xaM4wRs5zOsIH+g9U3oVHfAgAlbSqU6XduncB0HhZ3xMnmvfePZPn4dIbYXHyWyRK+cU15MqDHwdrvftx/4wv+sNS4w34vJfv7QA9aOoOazW28l1GYSb2ZRR0N0paiQp+d1MhSKo10hOTWOsVK5S5Lnx9Qm6omFgXHyIvZRIvTlrQMpr1xuUrflyGOfbFOGpOLpvPE172MYdqpZKnbSS4TcuqgQKSWV2833fEubI57DPOP7ghWa2TcYeSIv4pdLYG53fTuwfbnbdc98g2LNUQzSVhSnt7BoqyNwht2aQ6b/UHg9A80+KVpuXuqmz3m1MXwHFgxjdmuesXNOrrlGpeLCcRWD+aGo0RN1NqhQRzNAig8V4GlaPTQzMsRCljKqvrIyAoP3Tt2XEGsHkkQo12rEX8Z90957XX2qKRwhruwYzqGkSLWjINoLdAxUJdpRXRc5DJTrBd3D5mdzn7kY1l7NEh4kFHJDt3Cx4Z3Mk8MYCACyCk/CEyy9DwuPi66cLz0NBcgbCM5LKjTBOwo1m+am+pvM1kSposE9FPP1+RFGb8k6jQBTJx3TRz1yKilnGXQTZ5xvdOFpJrklIT0OXP1MG3+auM9FlJA+1dX90QoNJE5z7axmK//MOGXUdkqFe2kiDkorqjxwDvc0Js9pVKfKvAmW8YqUbmI9l0ERpWCXXnLVHNmPWz3jaPY+OBAmuJWDmxB/Z8p94aEDg4BVXQ7LvsKQ3DLYhaB7yJ390CJT+i0mm+EBqY60V6YikPSWDFrYQ/NPi2b1DgE19mX8zHqw8qprIl4yh1Ckx2Iige4En/N5ktOoIxnASxAw/TzcE2skxdw5KlHDF+UTj71m16CR/dIaKlXijlfNlNzUBo/bNSadCQn3G5NoO501wPKI:XO50TgDNyo8EXAMPLE/g==:1&quot;}
%% }
poll_for_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_task(Client, Input, []).
poll_for_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForTask">>, Input, Options).

%% @doc Adds tasks, schedules, and preconditions to the specified pipeline.
%%
%% You can use `PutPipelineDefinition' to populate a new pipeline.
%%
%% `PutPipelineDefinition' also validates the configuration as it adds it
%% to the pipeline. Changes to the pipeline are saved unless one
%% of the following three validation errors exists in the pipeline.
%%
%% An object is missing a name or identifier field.
%% A string or reference field is empty.
%% The number of objects in the pipeline exceeds the maximum allowed objects.
%% The pipeline is in a FINISHED state.
%%
%% Pipeline object definitions are passed to the `PutPipelineDefinition'
%% action and returned by the `GetPipelineDefinition' action.
%%
%% Example 1
%%
%% This example sets an valid pipeline configuration and returns success.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.PutPipelineDefinition
%% Content-Length: 914
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-0937003356ZJEXAMPLE&quot;,
%% &quot;pipelineObjects&quot;:
%% [
%% {&quot;id&quot;: &quot;Default&quot;,
%% &quot;name&quot;: &quot;Default&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;workerGroup&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-12T00:00:00&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-12-21T18:00:00&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;SayHello&quot;,
%% &quot;name&quot;: &quot;SayHello&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;}
%% ]
%% }
%% ]
%% }
%%
%% HTTP/1.1 200
%% x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 18
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;errored&quot;: false}
%%
%% Example 2
%%
%% This example sets an invalid pipeline configuration (the value for
%% `workerGroup' is an empty string) and returns an error message.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.PutPipelineDefinition
%% Content-Length: 903
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;,
%% &quot;pipelineObjects&quot;:
%% [
%% {&quot;id&quot;: &quot;Default&quot;,
%% &quot;name&quot;: &quot;Default&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T17:00:00&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T18:00:00&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;SayHello&quot;,
%% &quot;name&quot;: &quot;SayHello&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;}
%%
%% ]
%% }
%% ]
%% }
%%
%% HTTP/1.1 200
%% x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 18
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;__type&quot;:
%% &quot;com.amazon.setl.webservice#InvalidRequestException&quot;,
%% &quot;message&quot;: &quot;Pipeline definition has errors: Could not save
%% the pipeline definition due to FATAL errors:
%% [com.amazon.setl.webservice.ValidationError@108d7ea9] Please call Validate
%% to validate your pipeline&quot;}
put_pipeline_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_pipeline_definition(Client, Input, []).
put_pipeline_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPipelineDefinition">>, Input, Options).

%% @doc Queries the specified pipeline for the names of objects that match
%% the specified set of conditions.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.QueryObjects
%% Content-Length: 123
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;,
%% &quot;query&quot;:
%% {&quot;selectors&quot;:
%% [
%% ]
%% },
%% &quot;sphere&quot;: &quot;INSTANCE&quot;,
%% &quot;marker&quot;: &quot;&quot;,
%% &quot;limit&quot;: 10}
%%
%% x-amzn-RequestId: 14d704c1-0775-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 72
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;hasMoreResults&quot;: false,
%% &quot;ids&quot;:
%% [&quot;@SayHello_1_2012-09-25T17:00:00&quot;]
%% }
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

%% @doc Task runners call `ReportTaskProgress' when assigned a task to
%% acknowledge that it has the task.
%%
%% If the web service does not
%% receive this acknowledgement within 2 minutes, it assigns the task in a
%% subsequent `PollForTask' call. After this initial acknowledgement,
%% the task runner only needs to report progress every 15 minutes to maintain
%% its ownership of the task. You can change this reporting time
%% from 15 minutes by specifying a `reportProgressTimeout' field in your
%% pipeline.
%%
%% If a task runner does not report its status after 5 minutes, AWS Data
%% Pipeline assumes that the task runner is unable to process the task
%% and reassigns the task in a subsequent response to `PollForTask'. Task
%% runners should call `ReportTaskProgress' every 60 seconds.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ReportTaskProgress
%% Content-Length: 832
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;taskId&quot;:
%% &quot;aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;percentComplete&quot;,
%% &quot;stringValue&quot;: &quot;50&quot;}
%% ]
%% }
%%
%% x-amzn-RequestId: 640bd023-0775-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 18
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;canceled&quot;: false}
report_task_progress(Client, Input)
  when is_map(Client), is_map(Input) ->
    report_task_progress(Client, Input, []).
report_task_progress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReportTaskProgress">>, Input, Options).

%% @doc Task runners call `ReportTaskRunnerHeartbeat' every 15 minutes to
%% indicate that they are operational.
%%
%% If the AWS Data Pipeline Task Runner is launched on a resource managed by
%% AWS Data Pipeline, the web service can use
%% this call to detect when the task runner application has failed and
%% restart a new instance.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ReportTaskRunnerHeartbeat
%% Content-Length: 84
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;taskrunnerId&quot;: &quot;1234567890&quot;,
%% &quot;workerGroup&quot;: &quot;wg-12345&quot;,
%% &quot;hostname&quot;: &quot;example.com&quot;}
%%
%% Status:
%% x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 20
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;terminate&quot;: false}
report_task_runner_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    report_task_runner_heartbeat(Client, Input, []).
report_task_runner_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReportTaskRunnerHeartbeat">>, Input, Options).

%% @doc Requests that the status of the specified physical or logical
%% pipeline objects be updated in the specified pipeline.
%%
%% This update might not occur immediately, but is eventually consistent. The
%% status that can be set depends on the type of object (for example,
%% DataNode or Activity).
%% You cannot perform this operation on `FINISHED' pipelines and
%% attempting to do so returns `InvalidRequestException'.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.SetStatus
%% Content-Length: 100
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-0634701J7KEXAMPLE&quot;,
%% &quot;objectIds&quot;:
%% [&quot;o-08600941GHJWMBR9E2&quot;],
%% &quot;status&quot;: &quot;pause&quot;}
%%
%% x-amzn-RequestId: e83b8ab7-076a-11e2-af6f-6bc7a6be60d9
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 0
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% Unexpected response: 200, OK, undefined
set_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_status(Client, Input, []).
set_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetStatus">>, Input, Options).

%% @doc Task runners call `SetTaskStatus' to notify AWS Data Pipeline
%% that a task is completed and provide information about the final status.
%%
%% A task runner makes this call regardless of whether the task was
%% sucessful. A task runner does not need to call `SetTaskStatus' for
%% tasks that are canceled by the web service during a call to
%% `ReportTaskProgress'.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.SetTaskStatus
%% Content-Length: 847
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;taskId&quot;:
%% &quot;aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE&quot;,
%% &quot;taskStatus&quot;: &quot;FINISHED&quot;}
%%
%% x-amzn-RequestId: 8c8deb53-0788-11e2-af9c-6bc7a6be6qr8
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 0
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {}
set_task_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_task_status(Client, Input, []).
set_task_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTaskStatus">>, Input, Options).

%% @doc Validates the specified pipeline definition to ensure that it is well
%% formed and can be run without error.
%%
%% Example 1
%%
%% This example sets an valid pipeline configuration and returns success.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ValidatePipelineDefinition
%% Content-Length: 936
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;,
%% &quot;pipelineObjects&quot;:
%% [
%% {&quot;id&quot;: &quot;Default&quot;,
%% &quot;name&quot;: &quot;Default&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;MyworkerGroup&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T17:00:00&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T18:00:00&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;SayHello&quot;,
%% &quot;name&quot;: &quot;SayHello&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;}
%%
%% ]
%% }
%% ]
%% }
%%
%% x-amzn-RequestId: 92c9f347-0776-11e2-8a14-21bb8a1f50ef
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 18
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;errored&quot;: false}
%%
%% Example 2
%%
%% This example sets an invalid pipeline configuration and returns the
%% associated set of validation errors.
%%
%% POST / HTTP/1.1
%% Content-Type: application/x-amz-json-1.1
%% X-Amz-Target: DataPipeline.ValidatePipelineDefinition
%% Content-Length: 903
%% Host: datapipeline.us-east-1.amazonaws.com
%% X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
%% Authorization: AuthParams
%%
%% {&quot;pipelineId&quot;: &quot;df-06372391ZG65EXAMPLE&quot;,
%% &quot;pipelineObjects&quot;:
%% [
%% {&quot;id&quot;: &quot;Default&quot;,
%% &quot;name&quot;: &quot;Default&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;workerGroup&quot;,
%% &quot;stringValue&quot;: &quot;MyworkerGroup&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;Schedule&quot;,
%% &quot;name&quot;: &quot;Schedule&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;startDateTime&quot;,
%% &quot;stringValue&quot;: &quot;bad-time&quot;},
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;Schedule&quot;},
%% {&quot;key&quot;: &quot;period&quot;,
%% &quot;stringValue&quot;: &quot;1 hour&quot;},
%% {&quot;key&quot;: &quot;endDateTime&quot;,
%% &quot;stringValue&quot;: &quot;2012-09-25T18:00:00&quot;}
%% ]
%% },
%% {&quot;id&quot;: &quot;SayHello&quot;,
%% &quot;name&quot;: &quot;SayHello&quot;,
%% &quot;fields&quot;:
%% [
%% {&quot;key&quot;: &quot;type&quot;,
%% &quot;stringValue&quot;: &quot;ShellCommandActivity&quot;},
%% {&quot;key&quot;: &quot;command&quot;,
%% &quot;stringValue&quot;: &quot;echo hello&quot;},
%% {&quot;key&quot;: &quot;parent&quot;,
%% &quot;refValue&quot;: &quot;Default&quot;},
%% {&quot;key&quot;: &quot;schedule&quot;,
%% &quot;refValue&quot;: &quot;Schedule&quot;}
%%
%% ]
%% }
%% ]
%% }
%%
%% x-amzn-RequestId: 496a1f5a-0e6a-11e2-a61c-bd6312c92ddd
%% Content-Type: application/x-amz-json-1.1
%% Content-Length: 278
%% Date: Mon, 12 Nov 2012 17:50:53 GMT
%%
%% {&quot;errored&quot;: true,
%% &quot;validationErrors&quot;:
%% [
%% {&quot;errors&quot;:
%% [&quot;INVALID_FIELD_VALUE: 'startDateTime' value must be a
%% literal datetime value.&quot;],
%% &quot;id&quot;: &quot;Schedule&quot;}
%% ]
%% }
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
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"datapipeline">>},
    Host = build_host(<<"datapipeline">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"DataPipeline.", Action/binary>>}
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
