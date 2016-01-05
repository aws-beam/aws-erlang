%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodePipeline</fullname>
%%
%% <b>Overview</b> This is the AWS CodePipeline API Reference. This guide
%% provides descriptions of the actions and data types for AWS CodePipeline.
%% Some functionality for your pipeline is only configurable through the API.
%% For additional information, see the <a
%% href="http://docs.aws.amazon.com/pipelines/latest/userguide/welcome.html">AWS
%% CodePipeline User Guide</a>.
%%
%% You can use the AWS CodePipeline API to work with pipelines, stages,
%% actions, gates, and transitions, as described below.
%%
%% <i>Pipelines</i> are models of automated release processes. Each pipeline
%% is uniquely named, and consists of actions, gates, and stages.
%%
%% You can work with pipelines by calling: <ul> <li> <a>CreatePipeline</a>,
%% which creates a uniquely-named pipeline.</li> <li> <a>DeletePipeline</a>,
%% which deletes the specified pipeline.</li> <li> <a>GetPipeline</a>, which
%% returns information about a pipeline structure.</li> <li>
%% <a>GetPipelineState</a>, which returns information about the current state
%% of the stages and actions of a pipeline.</li> <li> <a>ListPipelines</a>,
%% which gets a summary of all of the pipelines associated with your
%% account.</li> <li> <a>StartPipelineExecution</a>, which runs the the most
%% recent revision of an artifact through the pipeline.</li> <li>
%% <a>UpdatePipeline</a>, which updates a pipeline with edits or changes to
%% the structure of the pipeline.</li> </ul> Pipelines include <i>stages</i>,
%% which are which are logical groupings of gates and actions. Each stage
%% contains one or more actions that must complete before the next stage
%% begins. A stage will result in success or failure. If a stage fails, then
%% the pipeline stops at that stage and will remain stopped until either a
%% new version of an artifact appears in the source location, or a user takes
%% action to re-run the most recent artifact through the pipeline. You can
%% call <a>GetPipelineState</a>, which displays the status of a pipeline,
%% including the status of stages in the pipeline, or <a>GetPipeline</a>,
%% which returns the entire structure of the pipeline, including the stages
%% of that pipeline. For more information about the structure of stages and
%% actions, also refer to the <ulink
%% url="http://docs.aws.amazon.com/codepipeline/latest/UserGuide/pipeline-structure.html">AWS
%% CodePipeline Pipeline Structure Reference</ulink>.
%%
%% Pipeline stages include <i>actions</i>, which are categorized into
%% categories such as source or build actions performed within a stage of a
%% pipeline. For example, you can use a source action to import artifacts
%% into a pipeline from a source such as Amazon S3. Like stages, you do not
%% work with actions directly in most cases, but you do define and interact
%% with actions when working with pipeline operations such as
%% <a>CreatePipeline</a> and <a>GetPipelineState</a>.
%%
%% Pipelines also include <i>transitions</i>, which allow the transition of
%% artifacts from one stage to the next in a pipeline after the actions in
%% one stage complete.
%%
%% You can work with transitions by calling:
%%
%% <ul> <li> <a>DisableStageTransition</a>, which prevents artifacts from
%% transitioning to the next stage in a pipeline.</li> <li>
%% <a>EnableStageTransition</a>, which enables transition of artifacts
%% between stages in a pipeline. </li> </ul> <b>Using the API to integrate
%% with AWS CodePipeline</b>
%%
%% For third-party integrators or developers who want to create their own
%% integrations with AWS CodePipeline, the expected sequence varies from the
%% standard API user. In order to integrate with AWS CodePipeline, developers
%% will need to work with the following items:
%%
%% <ul> <li>Jobs, which are instances of an action. For example, a job for a
%% source action might import a revision of an artifact from a source. You
%% can work with jobs by calling:
%%
%% <ul> <li> <a>AcknowledgeJob</a>, which confirms whether a job worker has
%% received the specified job,</li> <li> <a>GetJobDetails</a>, which returns
%% the details of a job,</li> <li> <a>PollForJobs</a>, which determines
%% whether there are any jobs to act upon, </li> <li>
%% <a>PutJobFailureResult</a>, which provides details of a job failure,
%% and</li> <li> <a>PutJobSuccessResult</a>, which provides details of a job
%% success.</li> </ul> </li> <li>Third party jobs, which are instances of an
%% action created by a partner action and integrated into AWS CodePipeline.
%% Partner actions are created by members of the AWS Partner Network. You can
%% work with third party jobs by calling:
%%
%% <ul> <li> <a>AcknowledgeThirdPartyJob</a>, which confirms whether a job
%% worker has received the specified job,</li> <li>
%% <a>GetThirdPartyJobDetails</a>, which requests the details of a job for a
%% partner action,</li> <li> <a>PollForThirdPartyJobs</a>, which determines
%% whether there are any jobs to act upon, </li> <li>
%% <a>PutThirdPartyJobFailureResult</a>, which provides details of a job
%% failure, and</li> <li> <a>PutThirdPartyJobSuccessResult</a>, which
%% provides details of a job success.</li> </ul> </li> </ul>
-module(aws_code_pipeline).

-export([acknowledge_job/2,
         acknowledge_job/3,
         acknowledge_third_party_job/2,
         acknowledge_third_party_job/3,
         create_custom_action_type/2,
         create_custom_action_type/3,
         create_pipeline/2,
         create_pipeline/3,
         delete_custom_action_type/2,
         delete_custom_action_type/3,
         delete_pipeline/2,
         delete_pipeline/3,
         disable_stage_transition/2,
         disable_stage_transition/3,
         enable_stage_transition/2,
         enable_stage_transition/3,
         get_job_details/2,
         get_job_details/3,
         get_pipeline/2,
         get_pipeline/3,
         get_pipeline_state/2,
         get_pipeline_state/3,
         get_third_party_job_details/2,
         get_third_party_job_details/3,
         list_action_types/2,
         list_action_types/3,
         list_pipelines/2,
         list_pipelines/3,
         poll_for_jobs/2,
         poll_for_jobs/3,
         poll_for_third_party_jobs/2,
         poll_for_third_party_jobs/3,
         put_action_revision/2,
         put_action_revision/3,
         put_job_failure_result/2,
         put_job_failure_result/3,
         put_job_success_result/2,
         put_job_success_result/3,
         put_third_party_job_failure_result/2,
         put_third_party_job_failure_result/3,
         put_third_party_job_success_result/2,
         put_third_party_job_success_result/3,
         start_pipeline_execution/2,
         start_pipeline_execution/3,
         update_pipeline/2,
         update_pipeline/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a specified job and whether that job has
%% been received by the job worker. Only used for custom actions.
acknowledge_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_job(Client, Input, []).
acknowledge_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeJob">>, Input, Options).

%% @doc Confirms a job worker has received the specified job. Only used for
%% partner actions.
acknowledge_third_party_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_third_party_job(Client, Input, []).
acknowledge_third_party_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeThirdPartyJob">>, Input, Options).

%% @doc Creates a new custom action that can be used in all pipelines
%% associated with the AWS account. Only used for custom actions.
create_custom_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_action_type(Client, Input, []).
create_custom_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomActionType">>, Input, Options).

%% @doc Creates a pipeline.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Marks a custom action as deleted. PollForJobs for the custom action
%% will fail after the action is marked for deletion. Only used for custom
%% actions.
%%
%% <important>You cannot recreate a custom action after it has been deleted
%% unless you increase the version number of the action.
%%
%% </important>
delete_custom_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_action_type(Client, Input, []).
delete_custom_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomActionType">>, Input, Options).

%% @doc Deletes the specified pipeline.
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Prevents artifacts in a pipeline from transitioning to the next stage
%% in the pipeline.
disable_stage_transition(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_stage_transition(Client, Input, []).
disable_stage_transition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableStageTransition">>, Input, Options).

%% @doc Enables artifacts in a pipeline to transition to a stage in a
%% pipeline.
enable_stage_transition(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_stage_transition(Client, Input, []).
enable_stage_transition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableStageTransition">>, Input, Options).

%% @doc Returns information about a job. Only used for custom actions.
%%
%% <important>When this API is called, AWS CodePipeline returns temporary
%% credentials for the Amazon S3 bucket used to store artifacts for the
%% pipeline, if the action requires access to that Amazon S3 bucket for input
%% or output artifacts. Additionally, this API returns any secret values
%% defined for the action.
%%
%% </important>
get_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_details(Client, Input, []).
get_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobDetails">>, Input, Options).

%% @doc Returns the metadata, structure, stages, and actions of a pipeline.
%% Can be used to return the entire structure of a pipeline in JSON format,
%% which can then be modified and used to update the pipeline structure with
%% <a>UpdatePipeline</a>.
get_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline(Client, Input, []).
get_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipeline">>, Input, Options).

%% @doc Returns information about the state of a pipeline, including the
%% stages, actions, and details about the last run of the pipeline.
get_pipeline_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_state(Client, Input, []).
get_pipeline_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineState">>, Input, Options).

%% @doc Requests the details of a job for a third party action. Only used for
%% partner actions.
%%
%% <important>When this API is called, AWS CodePipeline returns temporary
%% credentials for the Amazon S3 bucket used to store artifacts for the
%% pipeline, if the action requires access to that Amazon S3 bucket for input
%% or output artifacts. Additionally, this API returns any secret values
%% defined for the action.
%%
%% </important>
get_third_party_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_third_party_job_details(Client, Input, []).
get_third_party_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetThirdPartyJobDetails">>, Input, Options).

%% @doc Gets a summary of all AWS CodePipeline action types associated with
%% your account.
list_action_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_action_types(Client, Input, []).
list_action_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActionTypes">>, Input, Options).

%% @doc Gets a summary of all of the pipelines associated with your account.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Returns information about any jobs for AWS CodePipeline to act upon.
%%
%% <important>When this API is called, AWS CodePipeline returns temporary
%% credentials for the Amazon S3 bucket used to store artifacts for the
%% pipeline, if the action requires access to that Amazon S3 bucket for input
%% or output artifacts. Additionally, this API returns any secret values
%% defined for the action.
%%
%% </important>
poll_for_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_jobs(Client, Input, []).
poll_for_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForJobs">>, Input, Options).

%% @doc Determines whether there are any third party jobs for a job worker to
%% act on. Only used for partner actions.
%%
%% <important>When this API is called, AWS CodePipeline returns temporary
%% credentials for the Amazon S3 bucket used to store artifacts for the
%% pipeline, if the action requires access to that Amazon S3 bucket for input
%% or output artifacts.
%%
%% </important>
poll_for_third_party_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_third_party_jobs(Client, Input, []).
poll_for_third_party_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForThirdPartyJobs">>, Input, Options).

%% @doc Provides information to AWS CodePipeline about new revisions to a
%% source.
put_action_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_action_revision(Client, Input, []).
put_action_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutActionRevision">>, Input, Options).

%% @doc Represents the failure of a job as returned to the pipeline by a job
%% worker. Only used for custom actions.
put_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_failure_result(Client, Input, []).
put_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobFailureResult">>, Input, Options).

%% @doc Represents the success of a job as returned to the pipeline by a job
%% worker. Only used for custom actions.
put_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_success_result(Client, Input, []).
put_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobSuccessResult">>, Input, Options).

%% @doc Represents the failure of a third party job as returned to the
%% pipeline by a job worker. Only used for partner actions.
put_third_party_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_failure_result(Client, Input, []).
put_third_party_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobFailureResult">>, Input, Options).

%% @doc Represents the success of a third party job as returned to the
%% pipeline by a job worker. Only used for partner actions.
put_third_party_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_success_result(Client, Input, []).
put_third_party_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobSuccessResult">>, Input, Options).

%% @doc Starts the specified pipeline. Specifically, it begins processing the
%% latest commit to the source location specified as part of the pipeline.
start_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pipeline_execution(Client, Input, []).
start_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPipelineExecution">>, Input, Options).

%% @doc Updates a specified pipeline with edits or changes to its structure.
%% Use a JSON file with the pipeline structure in conjunction with
%% UpdatePipeline to provide the full structure of the pipeline. Updating the
%% pipeline increases the version number of the pipeline by 1.
update_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline(Client, Input, []).
update_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePipeline">>, Input, Options).

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
    Client1 = Client#{service => <<"codepipeline">>},
    Host = aws_util:binary_join([<<"codepipeline.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CodePipeline_20150709.">>/binary, Action/binary>>}],
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
