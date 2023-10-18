%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodePipeline
%%
%% Overview
%%
%% This is the CodePipeline API Reference.
%%
%% This guide provides descriptions of the actions and data types for
%% CodePipeline. Some functionality for your pipeline can only be configured
%% through the API. For more information, see the CodePipeline User Guide.
%%
%% You can use the CodePipeline API to work with pipelines, stages, actions,
%% and transitions.
%%
%% Pipelines are models of automated release processes. Each pipeline is
%% uniquely named, and consists of stages, actions, and transitions.
%%
%% You can work with pipelines by calling:
%%
%% <ul> <li> `CreatePipeline', which creates a uniquely named pipeline.
%%
%% </li> <li> `DeletePipeline', which deletes the specified pipeline.
%%
%% </li> <li> `GetPipeline', which returns information about the pipeline
%% structure and pipeline metadata, including the pipeline Amazon Resource
%% Name (ARN).
%%
%% </li> <li> `GetPipelineExecution', which returns information about a
%% specific execution of a pipeline.
%%
%% </li> <li> `GetPipelineState', which returns information about the
%% current state of the stages and actions of a pipeline.
%%
%% </li> <li> `ListActionExecutions', which returns action-level details
%% for past executions. The details include full stage and action-level
%% details, including individual action duration, status, any errors that
%% occurred during the execution, and input and output artifact location
%% details.
%%
%% </li> <li> `ListPipelines', which gets a summary of all of the
%% pipelines associated with your account.
%%
%% </li> <li> `ListPipelineExecutions', which gets a summary of the most
%% recent executions for a pipeline.
%%
%% </li> <li> `StartPipelineExecution', which runs the most recent
%% revision of an artifact through the pipeline.
%%
%% </li> <li> `StopPipelineExecution', which stops the specified pipeline
%% execution from continuing through the pipeline.
%%
%% </li> <li> `UpdatePipeline', which updates a pipeline with edits or
%% changes to the structure of the pipeline.
%%
%% </li> </ul> Pipelines include stages. Each stage contains one or more
%% actions that must complete before the next stage begins. A stage results
%% in success or failure. If a stage fails, the pipeline stops at that stage
%% and remains stopped until either a new version of an artifact appears in
%% the source location, or a user takes action to rerun the most recent
%% artifact through the pipeline. You can call `GetPipelineState', which
%% displays the status of a pipeline, including the status of stages in the
%% pipeline, or `GetPipeline', which returns the entire structure of the
%% pipeline, including the stages of that pipeline. For more information
%% about the structure of stages and actions, see CodePipeline Pipeline
%% Structure Reference.
%%
%% Pipeline stages include actions that are categorized into categories such
%% as source or build actions performed in a stage of a pipeline. For
%% example, you can use a source action to import artifacts into a pipeline
%% from a source such as Amazon S3. Like stages, you do not work with actions
%% directly in most cases, but you do define and interact with actions when
%% working with pipeline operations such as `CreatePipeline' and
%% `GetPipelineState'. Valid action categories are:
%%
%% <ul> <li> Source
%%
%% </li> <li> Build
%%
%% </li> <li> Test
%%
%% </li> <li> Deploy
%%
%% </li> <li> Approval
%%
%% </li> <li> Invoke
%%
%% </li> </ul> Pipelines also include transitions, which allow the transition
%% of artifacts from one stage to the next in a pipeline after the actions in
%% one stage complete.
%%
%% You can work with transitions by calling:
%%
%% <ul> <li> `DisableStageTransition', which prevents artifacts from
%% transitioning to the next stage in a pipeline.
%%
%% </li> <li> `EnableStageTransition', which enables transition of
%% artifacts between stages in a pipeline.
%%
%% </li> </ul> Using the API to integrate with CodePipeline
%%
%% For third-party integrators or developers who want to create their own
%% integrations with CodePipeline, the expected sequence varies from the
%% standard API user. To integrate with CodePipeline, developers need to work
%% with the following items:
%%
%% Jobs, which are instances of an action. For example, a job for a source
%% action might import a revision of an artifact from a source.
%%
%% You can work with jobs by calling:
%%
%% <ul> <li> `AcknowledgeJob', which confirms whether a job worker has
%% received the specified job.
%%
%% </li> <li> `GetJobDetails', which returns the details of a job.
%%
%% </li> <li> `PollForJobs', which determines whether there are any jobs
%% to act on.
%%
%% </li> <li> `PutJobFailureResult', which provides details of a job
%% failure.
%%
%% </li> <li> `PutJobSuccessResult', which provides details of a job
%% success.
%%
%% </li> </ul> Third party jobs, which are instances of an action created by
%% a partner action and integrated into CodePipeline. Partner actions are
%% created by members of the Amazon Web Services Partner Network.
%%
%% You can work with third party jobs by calling:
%%
%% <ul> <li> `AcknowledgeThirdPartyJob', which confirms whether a job
%% worker has received the specified job.
%%
%% </li> <li> `GetThirdPartyJobDetails', which requests the details of a
%% job for a partner action.
%%
%% </li> <li> `PollForThirdPartyJobs', which determines whether there are
%% any jobs to act on.
%%
%% </li> <li> `PutThirdPartyJobFailureResult', which provides details of
%% a job failure.
%%
%% </li> <li> `PutThirdPartyJobSuccessResult', which provides details of
%% a job success.
%%
%% </li> </ul>
-module(aws_codepipeline).

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
         delete_webhook/2,
         delete_webhook/3,
         deregister_webhook_with_third_party/2,
         deregister_webhook_with_third_party/3,
         disable_stage_transition/2,
         disable_stage_transition/3,
         enable_stage_transition/2,
         enable_stage_transition/3,
         get_action_type/2,
         get_action_type/3,
         get_job_details/2,
         get_job_details/3,
         get_pipeline/2,
         get_pipeline/3,
         get_pipeline_execution/2,
         get_pipeline_execution/3,
         get_pipeline_state/2,
         get_pipeline_state/3,
         get_third_party_job_details/2,
         get_third_party_job_details/3,
         list_action_executions/2,
         list_action_executions/3,
         list_action_types/2,
         list_action_types/3,
         list_pipeline_executions/2,
         list_pipeline_executions/3,
         list_pipelines/2,
         list_pipelines/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_webhooks/2,
         list_webhooks/3,
         poll_for_jobs/2,
         poll_for_jobs/3,
         poll_for_third_party_jobs/2,
         poll_for_third_party_jobs/3,
         put_action_revision/2,
         put_action_revision/3,
         put_approval_result/2,
         put_approval_result/3,
         put_job_failure_result/2,
         put_job_failure_result/3,
         put_job_success_result/2,
         put_job_success_result/3,
         put_third_party_job_failure_result/2,
         put_third_party_job_failure_result/3,
         put_third_party_job_success_result/2,
         put_third_party_job_success_result/3,
         put_webhook/2,
         put_webhook/3,
         register_webhook_with_third_party/2,
         register_webhook_with_third_party/3,
         retry_stage_execution/2,
         retry_stage_execution/3,
         start_pipeline_execution/2,
         start_pipeline_execution/3,
         stop_pipeline_execution/2,
         stop_pipeline_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_action_type/2,
         update_action_type/3,
         update_pipeline/2,
         update_pipeline/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a specified job and whether that job has
%% been received by the job worker.
%%
%% Used for custom actions only.
acknowledge_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_job(Client, Input, []).
acknowledge_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeJob">>, Input, Options).

%% @doc Confirms a job worker has received the specified job.
%%
%% Used for partner actions only.
acknowledge_third_party_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_third_party_job(Client, Input, []).
acknowledge_third_party_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeThirdPartyJob">>, Input, Options).

%% @doc Creates a new custom action that can be used in all pipelines
%% associated with the Amazon Web Services account.
%%
%% Only used for custom actions.
create_custom_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_action_type(Client, Input, []).
create_custom_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomActionType">>, Input, Options).

%% @doc Creates a pipeline.
%%
%% In the pipeline structure, you must include either `artifactStore' or
%% `artifactStores' in your pipeline, but you cannot use both. If you
%% create a cross-region action in your pipeline, you must use
%% `artifactStores'.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Marks a custom action as deleted.
%%
%% `PollForJobs' for the custom action fails after the action is marked
%% for deletion. Used for custom actions only.
%%
%% To re-create a custom action after it has been deleted you must use a
%% string in the version field that has never been used before. This string
%% can be an incremented version number, for example. To restore a deleted
%% custom action, use a JSON file that is identical to the deleted action,
%% including the original string in the version field.
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

%% @doc Deletes a previously created webhook by name.
%%
%% Deleting the webhook stops CodePipeline from starting a pipeline every
%% time an external event occurs. The API returns successfully when trying to
%% delete a webhook that is already deleted. If a deleted webhook is
%% re-created by calling PutWebhook with the same name, it will have a
%% different URL.
delete_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_webhook(Client, Input, []).
delete_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebhook">>, Input, Options).

%% @doc Removes the connection between the webhook that was created by
%% CodePipeline and the external tool with events to be detected.
%%
%% Currently supported only for webhooks that target an action type of
%% GitHub.
deregister_webhook_with_third_party(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_webhook_with_third_party(Client, Input, []).
deregister_webhook_with_third_party(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterWebhookWithThirdParty">>, Input, Options).

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

%% @doc Returns information about an action type created for an external
%% provider, where the action is to be used by customers of the external
%% provider.
%%
%% The action can be created with any supported integration model.
get_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_action_type(Client, Input, []).
get_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActionType">>, Input, Options).

%% @doc Returns information about a job.
%%
%% Used for custom actions only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires access to that S3 bucket for input or output artifacts. This API
%% also returns any secret values defined for the action.
get_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_details(Client, Input, []).
get_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobDetails">>, Input, Options).

%% @doc Returns the metadata, structure, stages, and actions of a pipeline.
%%
%% Can be used to return the entire structure of a pipeline in JSON format,
%% which can then be modified and used to update the pipeline structure with
%% `UpdatePipeline'.
get_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline(Client, Input, []).
get_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipeline">>, Input, Options).

%% @doc Returns information about an execution of a pipeline, including
%% details about artifacts, the pipeline execution ID, and the name, version,
%% and status of the pipeline.
get_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_execution(Client, Input, []).
get_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineExecution">>, Input, Options).

%% @doc Returns information about the state of a pipeline, including the
%% stages and actions.
%%
%% Values returned in the `revisionId' and `revisionUrl' fields
%% indicate the source revision information, such as the commit ID, for the
%% current state.
get_pipeline_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_state(Client, Input, []).
get_pipeline_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineState">>, Input, Options).

%% @doc Requests the details of a job for a third party action.
%%
%% Used for partner actions only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires access to that S3 bucket for input or output artifacts. This API
%% also returns any secret values defined for the action.
get_third_party_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_third_party_job_details(Client, Input, []).
get_third_party_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetThirdPartyJobDetails">>, Input, Options).

%% @doc Lists the action executions that have occurred in a pipeline.
list_action_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_action_executions(Client, Input, []).
list_action_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActionExecutions">>, Input, Options).

%% @doc Gets a summary of all CodePipeline action types associated with your
%% account.
list_action_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_action_types(Client, Input, []).
list_action_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActionTypes">>, Input, Options).

%% @doc Gets a summary of the most recent executions for a pipeline.
list_pipeline_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_executions(Client, Input, []).
list_pipeline_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutions">>, Input, Options).

%% @doc Gets a summary of all of the pipelines associated with your account.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Gets the set of key-value pairs (metadata) that are used to manage
%% the resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Gets a listing of all the webhooks in this Amazon Web Services Region
%% for this account.
%%
%% The output lists all webhooks and includes the webhook URL and ARN and the
%% configuration for each webhook.
list_webhooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_webhooks(Client, Input, []).
list_webhooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebhooks">>, Input, Options).

%% @doc Returns information about any jobs for CodePipeline to act on.
%%
%% `PollForJobs' is valid only for action types with &quot;Custom&quot;
%% in the owner field. If the action type contains `AWS' or
%% `ThirdParty' in the owner field, the `PollForJobs' action returns
%% an error.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires access to that S3 bucket for input or output artifacts. This API
%% also returns any secret values defined for the action.
poll_for_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_jobs(Client, Input, []).
poll_for_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForJobs">>, Input, Options).

%% @doc Determines whether there are any third party jobs for a job worker to
%% act on.
%%
%% Used for partner actions only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires access to that S3 bucket for input or output artifacts.
poll_for_third_party_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_third_party_jobs(Client, Input, []).
poll_for_third_party_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForThirdPartyJobs">>, Input, Options).

%% @doc Provides information to CodePipeline about new revisions to a source.
put_action_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_action_revision(Client, Input, []).
put_action_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutActionRevision">>, Input, Options).

%% @doc Provides the response to a manual approval request to CodePipeline.
%%
%% Valid responses include Approved and Rejected.
put_approval_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_approval_result(Client, Input, []).
put_approval_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApprovalResult">>, Input, Options).

%% @doc Represents the failure of a job as returned to the pipeline by a job
%% worker.
%%
%% Used for custom actions only.
put_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_failure_result(Client, Input, []).
put_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobFailureResult">>, Input, Options).

%% @doc Represents the success of a job as returned to the pipeline by a job
%% worker.
%%
%% Used for custom actions only.
put_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_success_result(Client, Input, []).
put_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobSuccessResult">>, Input, Options).

%% @doc Represents the failure of a third party job as returned to the
%% pipeline by a job worker.
%%
%% Used for partner actions only.
put_third_party_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_failure_result(Client, Input, []).
put_third_party_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobFailureResult">>, Input, Options).

%% @doc Represents the success of a third party job as returned to the
%% pipeline by a job worker.
%%
%% Used for partner actions only.
put_third_party_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_success_result(Client, Input, []).
put_third_party_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobSuccessResult">>, Input, Options).

%% @doc Defines a webhook and returns a unique webhook URL generated by
%% CodePipeline.
%%
%% This URL can be supplied to third party source hosting providers to call
%% every time there's a code change. When CodePipeline receives a POST
%% request on this URL, the pipeline defined in the webhook is started as
%% long as the POST request satisfied the authentication and filtering
%% requirements supplied when defining the webhook.
%% RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can
%% be used to automatically configure supported third parties to call the
%% generated webhook URL.
put_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_webhook(Client, Input, []).
put_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWebhook">>, Input, Options).

%% @doc Configures a connection between the webhook that was created and the
%% external tool with events to be detected.
register_webhook_with_third_party(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_webhook_with_third_party(Client, Input, []).
register_webhook_with_third_party(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWebhookWithThirdParty">>, Input, Options).

%% @doc You can retry a stage that has failed without having to run a
%% pipeline again from the beginning.
%%
%% You do this by either retrying the failed actions in a stage or by
%% retrying all actions in the stage starting from the first action in the
%% stage. When you retry the failed actions in a stage, all actions that are
%% still in progress continue working, and failed actions are triggered
%% again. When you retry a failed stage from the first action in the stage,
%% the stage cannot have any actions in progress. Before a stage can be
%% retried, it must either have all actions failed or some actions failed and
%% some succeeded.
retry_stage_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_stage_execution(Client, Input, []).
retry_stage_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryStageExecution">>, Input, Options).

%% @doc Starts the specified pipeline.
%%
%% Specifically, it begins processing the latest commit to the source
%% location specified as part of the pipeline.
start_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pipeline_execution(Client, Input, []).
start_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPipelineExecution">>, Input, Options).

%% @doc Stops the specified pipeline execution.
%%
%% You choose to either stop the pipeline execution by completing in-progress
%% actions without starting subsequent actions, or by abandoning in-progress
%% actions. While completing or abandoning in-progress actions, the pipeline
%% execution is in a `Stopping' state. After all in-progress actions are
%% completed or abandoned, the pipeline execution is in a `Stopped'
%% state.
stop_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pipeline_execution(Client, Input, []).
stop_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPipelineExecution">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to manage a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Web Services resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an action type that was created with any supported
%% integration model, where the action type is to be used by customers of the
%% action type provider.
%%
%% Use a JSON file with the action definition and `UpdateActionType' to
%% provide the full structure.
update_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_action_type(Client, Input, []).
update_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateActionType">>, Input, Options).

%% @doc Updates a specified pipeline with edits or changes to its structure.
%%
%% Use a JSON file with the pipeline structure and `UpdatePipeline' to
%% provide the full structure of the pipeline. Updating the pipeline
%% increases the version number of the pipeline by 1.
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
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"codepipeline">>},
    Host = build_host(<<"codepipeline">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodePipeline_20150709.", Action/binary>>}
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
