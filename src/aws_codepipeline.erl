%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodePipeline
%%
%% Overview
%%
%% This is the CodePipeline API Reference.
%%
%% This guide provides descriptions
%% of the actions and data types for CodePipeline. Some functionality for
%% your
%% pipeline can only be configured through the API. For more information, see
%% the CodePipeline User Guide:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html.
%%
%% You can use the CodePipeline API to work with pipelines, stages, actions,
%% and transitions.
%%
%% Pipelines are models of automated release processes. Each pipeline
%% is uniquely named, and consists of stages, actions, and transitions.
%%
%% You can work with pipelines by calling:
%%
%% `CreatePipeline', which creates a uniquely named
%% pipeline.
%%
%% `DeletePipeline', which deletes the specified
%% pipeline.
%%
%% `GetPipeline', which returns information about the pipeline
%% structure and pipeline metadata, including the pipeline Amazon Resource
%% Name
%% (ARN).
%%
%% `GetPipelineExecution', which returns information about a
%% specific execution of a pipeline.
%%
%% `GetPipelineState', which returns information about the current
%% state of the stages and actions of a pipeline.
%%
%% `ListActionExecutions', which returns action-level details
%% for past executions. The details include full stage and action-level
%% details,
%% including individual action duration, status, any errors that occurred
%% during
%% the execution, and input and output artifact location details.
%%
%% `ListPipelines', which gets a summary of all of the pipelines
%% associated with your account.
%%
%% `ListPipelineExecutions', which gets a summary of the most
%% recent executions for a pipeline.
%%
%% `StartPipelineExecution', which runs the most recent revision of
%% an artifact through the pipeline.
%%
%% `StopPipelineExecution', which stops the specified pipeline
%% execution from continuing through the pipeline.
%%
%% `UpdatePipeline', which updates a pipeline with edits or changes
%% to the structure of the pipeline.
%%
%% Pipelines include stages. Each stage contains one or more
%% actions that must complete before the next stage begins. A stage results
%% in success or
%% failure. If a stage fails, the pipeline stops at that stage and remains
%% stopped until
%% either a new version of an artifact appears in the source location, or a
%% user takes
%% action to rerun the most recent artifact through the pipeline. You can
%% call `GetPipelineState', which displays the status of a pipeline,
%% including the
%% status of stages in the pipeline, or `GetPipeline', which returns the
%% entire structure of the pipeline, including the stages of that pipeline.
%% For more
%% information about the structure of stages and actions, see CodePipeline
%% Pipeline Structure Reference:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html.
%%
%% Pipeline stages include actions that are categorized into
%% categories such as source or build actions performed in a stage of a
%% pipeline. For
%% example, you can use a source action to import artifacts into a pipeline
%% from a source
%% such as Amazon S3. Like stages, you do not work with actions directly in
%% most cases, but
%% you do define and interact with actions when working with pipeline
%% operations such as
%% `CreatePipeline' and `GetPipelineState'. Valid
%% action categories are:
%%
%% Source
%%
%% Build
%%
%% Test
%%
%% Deploy
%%
%% Approval
%%
%% Invoke
%%
%% Compute
%%
%% Pipelines also include transitions, which allow the transition
%% of artifacts from one stage to the next in a pipeline after the actions in
%% one stage
%% complete.
%%
%% You can work with transitions by calling:
%%
%% `DisableStageTransition', which prevents artifacts from
%% transitioning to the next stage in a pipeline.
%%
%% `EnableStageTransition', which enables transition of artifacts
%% between stages in a pipeline.
%%
%% Using the API to integrate with CodePipeline
%%
%% For third-party integrators or developers who want to create their own
%% integrations
%% with CodePipeline, the expected sequence varies from the standard API
%% user. To
%% integrate with CodePipeline, developers need to work with the following
%% items:
%%
%% Jobs, which are instances of an action. For
%% example, a job for a source action might import a revision of an artifact
%% from a source.
%%
%% You can work with jobs by calling:
%%
%% `AcknowledgeJob', which confirms whether a job worker has
%% received the specified job.
%%
%% `GetJobDetails', which returns the details of a job.
%%
%% `PollForJobs', which determines whether there are any jobs to
%% act on.
%%
%% `PutJobFailureResult', which provides details of a job failure.
%%
%% `PutJobSuccessResult', which provides details of a job
%% success.
%%
%% Third party jobs, which are instances of an action
%% created by a partner action and integrated into CodePipeline. Partner
%% actions are
%% created by members of the Amazon Web Services Partner Network.
%%
%% You can work with third party jobs by calling:
%%
%% `AcknowledgeThirdPartyJob', which confirms whether a job worker
%% has received the specified job.
%%
%% `GetThirdPartyJobDetails', which requests the details of a job
%% for a partner action.
%%
%% `PollForThirdPartyJobs', which determines whether there are any
%% jobs to act on.
%%
%% `PutThirdPartyJobFailureResult', which provides details of a job
%% failure.
%%
%% `PutThirdPartyJobSuccessResult', which provides details of a job
%% success.
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
         list_deploy_action_execution_targets/2,
         list_deploy_action_execution_targets/3,
         list_pipeline_executions/2,
         list_pipeline_executions/3,
         list_pipelines/2,
         list_pipelines/3,
         list_rule_executions/2,
         list_rule_executions/3,
         list_rule_types/2,
         list_rule_types/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_webhooks/2,
         list_webhooks/3,
         override_stage_condition/2,
         override_stage_condition/3,
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
         rollback_stage/2,
         rollback_stage/3,
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


%% Example:
%% get_action_type_output() :: #{
%%   <<"actionType">> => action_type_declaration()
%% }
-type get_action_type_output() :: #{binary() => any()}.

%% Example:
%% unable_to_rollback_stage_exception() :: #{
%%   <<"message">> => string()
%% }
-type unable_to_rollback_stage_exception() :: #{binary() => any()}.

%% Example:
%% invalid_blocker_declaration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_blocker_declaration_exception() :: #{binary() => any()}.

%% Example:
%% latest_in_pipeline_execution_filter() :: #{
%%   <<"pipelineExecutionId">> => string(),
%%   <<"startTimeRange">> => list(any())
%% }
-type latest_in_pipeline_execution_filter() :: #{binary() => any()}.

%% Example:
%% action_context() :: #{
%%   <<"actionExecutionId">> => string(),
%%   <<"name">> => string()
%% }
-type action_context() :: #{binary() => any()}.

%% Example:
%% git_branch_filter_criteria() :: #{
%%   <<"excludes">> => list(string()()),
%%   <<"includes">> => list(string()())
%% }
-type git_branch_filter_criteria() :: #{binary() => any()}.

%% Example:
%% override_stage_condition_input() :: #{
%%   <<"conditionType">> := list(any()),
%%   <<"pipelineExecutionId">> := string(),
%%   <<"pipelineName">> := string(),
%%   <<"stageName">> := string()
%% }
-type override_stage_condition_input() :: #{binary() => any()}.

%% Example:
%% request_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_failed_exception() :: #{binary() => any()}.

%% Example:
%% list_action_executions_output() :: #{
%%   <<"actionExecutionDetails">> => list(action_execution_detail()()),
%%   <<"nextToken">> => string()
%% }
-type list_action_executions_output() :: #{binary() => any()}.

%% Example:
%% aws_session_credentials() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"secretAccessKey">> => string(),
%%   <<"sessionToken">> => string()
%% }
-type aws_session_credentials() :: #{binary() => any()}.

%% Example:
%% webhook_auth_configuration() :: #{
%%   <<"AllowedIPRange">> => string(),
%%   <<"SecretToken">> => string()
%% }
-type webhook_auth_configuration() :: #{binary() => any()}.

%% Example:
%% stage_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type stage_not_found_exception() :: #{binary() => any()}.

%% Example:
%% poll_for_third_party_jobs_input() :: #{
%%   <<"actionTypeId">> := action_type_id(),
%%   <<"maxBatchSize">> => integer()
%% }
-type poll_for_third_party_jobs_input() :: #{binary() => any()}.

%% Example:
%% stop_pipeline_execution_output() :: #{
%%   <<"pipelineExecutionId">> => string()
%% }
-type stop_pipeline_execution_output() :: #{binary() => any()}.

%% Example:
%% list_webhook_item() :: #{
%%   <<"arn">> => string(),
%%   <<"definition">> => webhook_definition(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"lastTriggered">> => non_neg_integer(),
%%   <<"tags">> => list(tag()()),
%%   <<"url">> => string()
%% }
-type list_webhook_item() :: #{binary() => any()}.

%% Example:
%% pipeline_declaration() :: #{
%%   <<"artifactStore">> => artifact_store(),
%%   <<"artifactStores">> => map(),
%%   <<"executionMode">> => list(any()),
%%   <<"name">> => string(),
%%   <<"pipelineType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"stages">> => list(stage_declaration()()),
%%   <<"triggers">> => list(pipeline_trigger_declaration()()),
%%   <<"variables">> => list(pipeline_variable_declaration()()),
%%   <<"version">> => integer()
%% }
-type pipeline_declaration() :: #{binary() => any()}.

%% Example:
%% output_artifact() :: #{
%%   <<"files">> => list(string()()),
%%   <<"name">> => string()
%% }
-type output_artifact() :: #{binary() => any()}.

%% Example:
%% action_type_permissions() :: #{
%%   <<"allowedAccounts">> => list(string()())
%% }
-type action_type_permissions() :: #{binary() => any()}.

%% Example:
%% resolved_pipeline_variable() :: #{
%%   <<"name">> => string(),
%%   <<"resolvedValue">> => string()
%% }
-type resolved_pipeline_variable() :: #{binary() => any()}.

%% Example:
%% put_approval_result_output() :: #{
%%   <<"approvedAt">> => non_neg_integer()
%% }
-type put_approval_result_output() :: #{binary() => any()}.

%% Example:
%% create_pipeline_output() :: #{
%%   <<"pipeline">> => pipeline_declaration(),
%%   <<"tags">> => list(tag()())
%% }
-type create_pipeline_output() :: #{binary() => any()}.

%% Example:
%% delete_webhook_output() :: #{

%% }
-type delete_webhook_output() :: #{binary() => any()}.

%% Example:
%% action_state() :: #{
%%   <<"actionName">> => string(),
%%   <<"currentRevision">> => action_revision(),
%%   <<"entityUrl">> => string(),
%%   <<"latestExecution">> => action_execution(),
%%   <<"revisionUrl">> => string()
%% }
-type action_state() :: #{binary() => any()}.

%% Example:
%% put_webhook_output() :: #{
%%   <<"webhook">> => list_webhook_item()
%% }
-type put_webhook_output() :: #{binary() => any()}.

%% Example:
%% artifact_revision() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"revisionChangeIdentifier">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"revisionSummary">> => string(),
%%   <<"revisionUrl">> => string()
%% }
-type artifact_revision() :: #{binary() => any()}.

%% Example:
%% pipeline_trigger_declaration() :: #{
%%   <<"gitConfiguration">> => git_configuration(),
%%   <<"providerType">> => list(any())
%% }
-type pipeline_trigger_declaration() :: #{binary() => any()}.

%% Example:
%% rule_state() :: #{
%%   <<"currentRevision">> => rule_revision(),
%%   <<"entityUrl">> => string(),
%%   <<"latestExecution">> => rule_execution(),
%%   <<"revisionUrl">> => string(),
%%   <<"ruleName">> => string()
%% }
-type rule_state() :: #{binary() => any()}.

%% Example:
%% execution_details() :: #{
%%   <<"externalExecutionId">> => string(),
%%   <<"percentComplete">> => integer(),
%%   <<"summary">> => string()
%% }
-type execution_details() :: #{binary() => any()}.

%% Example:
%% rule_type_settings() :: #{
%%   <<"entityUrlTemplate">> => string(),
%%   <<"executionUrlTemplate">> => string(),
%%   <<"revisionUrlTemplate">> => string(),
%%   <<"thirdPartyConfigurationUrl">> => string()
%% }
-type rule_type_settings() :: #{binary() => any()}.

%% Example:
%% not_latest_pipeline_execution_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_latest_pipeline_execution_exception() :: #{binary() => any()}.

%% Example:
%% rule_execution_detail() :: #{
%%   <<"input">> => rule_execution_input(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"output">> => rule_execution_output(),
%%   <<"pipelineExecutionId">> => string(),
%%   <<"pipelineVersion">> => integer(),
%%   <<"ruleExecutionId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"stageName">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type rule_execution_detail() :: #{binary() => any()}.

%% Example:
%% executor_configuration() :: #{
%%   <<"jobWorkerExecutorConfiguration">> => job_worker_executor_configuration(),
%%   <<"lambdaExecutorConfiguration">> => lambda_executor_configuration()
%% }
-type executor_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_action_declaration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_action_declaration_exception() :: #{binary() => any()}.

%% Example:
%% put_third_party_job_failure_result_input() :: #{
%%   <<"clientToken">> := string(),
%%   <<"failureDetails">> := failure_details(),
%%   <<"jobId">> := string()
%% }
-type put_third_party_job_failure_result_input() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_summary() :: #{
%%   <<"executionMode">> => list(any()),
%%   <<"executionType">> => list(any()),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"pipelineExecutionId">> => string(),
%%   <<"rollbackMetadata">> => pipeline_rollback_metadata(),
%%   <<"sourceRevisions">> => list(source_revision()()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusSummary">> => string(),
%%   <<"stopTrigger">> => stop_execution_trigger(),
%%   <<"trigger">> => execution_trigger()
%% }
-type pipeline_execution_summary() :: #{binary() => any()}.

%% Example:
%% get_third_party_job_details_output() :: #{
%%   <<"jobDetails">> => third_party_job_details()
%% }
-type get_third_party_job_details_output() :: #{binary() => any()}.

%% Example:
%% environment_variable() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type environment_variable() :: #{binary() => any()}.

%% Example:
%% third_party_job() :: #{
%%   <<"clientId">> => string(),
%%   <<"jobId">> => string()
%% }
-type third_party_job() :: #{binary() => any()}.

%% Example:
%% acknowledge_third_party_job_output() :: #{
%%   <<"status">> => list(any())
%% }
-type acknowledge_third_party_job_output() :: #{binary() => any()}.

%% Example:
%% pipeline_execution() :: #{
%%   <<"artifactRevisions">> => list(artifact_revision()()),
%%   <<"executionMode">> => list(any()),
%%   <<"executionType">> => list(any()),
%%   <<"pipelineExecutionId">> => string(),
%%   <<"pipelineName">> => string(),
%%   <<"pipelineVersion">> => integer(),
%%   <<"rollbackMetadata">> => pipeline_rollback_metadata(),
%%   <<"status">> => list(any()),
%%   <<"statusSummary">> => string(),
%%   <<"trigger">> => execution_trigger(),
%%   <<"variables">> => list(resolved_pipeline_variable()())
%% }
-type pipeline_execution() :: #{binary() => any()}.

%% Example:
%% acknowledge_job_output() :: #{
%%   <<"status">> => list(any())
%% }
-type acknowledge_job_output() :: #{binary() => any()}.

%% Example:
%% acknowledge_third_party_job_input() :: #{
%%   <<"clientToken">> := string(),
%%   <<"jobId">> := string(),
%%   <<"nonce">> := string()
%% }
-type acknowledge_third_party_job_input() :: #{binary() => any()}.

%% Example:
%% rule_execution_filter() :: #{
%%   <<"latestInPipelineExecution">> => latest_in_pipeline_execution_filter(),
%%   <<"pipelineExecutionId">> => string()
%% }
-type rule_execution_filter() :: #{binary() => any()}.

%% Example:
%% list_rule_types_output() :: #{
%%   <<"ruleTypes">> => list(rule_type()())
%% }
-type list_rule_types_output() :: #{binary() => any()}.

%% Example:
%% pipeline_variable_declaration() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type pipeline_variable_declaration() :: #{binary() => any()}.

%% Example:
%% pipeline_name_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_name_in_use_exception() :: #{binary() => any()}.

%% Example:
%% get_pipeline_output() :: #{
%%   <<"metadata">> => pipeline_metadata(),
%%   <<"pipeline">> => pipeline_declaration()
%% }
-type get_pipeline_output() :: #{binary() => any()}.

%% Example:
%% failure_conditions() :: #{
%%   <<"conditions">> => list(condition()()),
%%   <<"result">> => list(any()),
%%   <<"retryConfiguration">> => retry_configuration()
%% }
-type failure_conditions() :: #{binary() => any()}.

%% Example:
%% action_revision() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"revisionChangeId">> => string(),
%%   <<"revisionId">> => string()
%% }
-type action_revision() :: #{binary() => any()}.

%% Example:
%% rule_execution_result() :: #{
%%   <<"errorDetails">> => error_details(),
%%   <<"externalExecutionId">> => string(),
%%   <<"externalExecutionSummary">> => string(),
%%   <<"externalExecutionUrl">> => string()
%% }
-type rule_execution_result() :: #{binary() => any()}.

%% Example:
%% stage_context() :: #{
%%   <<"name">> => string()
%% }
-type stage_context() :: #{binary() => any()}.

%% Example:
%% retry_stage_metadata() :: #{
%%   <<"autoStageRetryAttempt">> => integer(),
%%   <<"latestRetryTrigger">> => list(any()),
%%   <<"manualStageRetryAttempt">> => integer()
%% }
-type retry_stage_metadata() :: #{binary() => any()}.

%% Example:
%% enable_stage_transition_input() :: #{
%%   <<"pipelineName">> := string(),
%%   <<"stageName">> := string(),
%%   <<"transitionType">> := list(any())
%% }
-type enable_stage_transition_input() :: #{binary() => any()}.

%% Example:
%% third_party_job_data() :: #{
%%   <<"actionConfiguration">> => action_configuration(),
%%   <<"actionTypeId">> => action_type_id(),
%%   <<"artifactCredentials">> => aws_session_credentials(),
%%   <<"continuationToken">> => string(),
%%   <<"encryptionKey">> => encryption_key(),
%%   <<"inputArtifacts">> => list(artifact()()),
%%   <<"outputArtifacts">> => list(artifact()()),
%%   <<"pipelineContext">> => pipeline_context()
%% }
-type third_party_job_data() :: #{binary() => any()}.

%% Example:
%% list_webhooks_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"webhooks">> => list(list_webhook_item()())
%% }
-type list_webhooks_output() :: #{binary() => any()}.

%% Example:
%% put_job_success_result_input() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"currentRevision">> => current_revision(),
%%   <<"executionDetails">> => execution_details(),
%%   <<"jobId">> := string(),
%%   <<"outputVariables">> => map()
%% }
-type put_job_success_result_input() :: #{binary() => any()}.

%% Example:
%% action_execution_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type action_execution_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_pipeline_execution_input() :: #{
%%   <<"pipelineExecutionId">> := string(),
%%   <<"pipelineName">> := string()
%% }
-type get_pipeline_execution_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% list_deploy_action_execution_targets_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targets">> => list(deploy_action_execution_target()())
%% }
-type list_deploy_action_execution_targets_output() :: #{binary() => any()}.

%% Example:
%% failure_details() :: #{
%%   <<"externalExecutionId">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => list(any())
%% }
-type failure_details() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_not_stoppable_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_execution_not_stoppable_exception() :: #{binary() => any()}.

%% Example:
%% list_webhooks_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_webhooks_input() :: #{binary() => any()}.

%% Example:
%% pipeline_rollback_metadata() :: #{
%%   <<"rollbackTargetPipelineExecutionId">> => string()
%% }
-type pipeline_rollback_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn_exception() :: #{binary() => any()}.

%% Example:
%% update_pipeline_input() :: #{
%%   <<"pipeline">> := pipeline_declaration()
%% }
-type update_pipeline_input() :: #{binary() => any()}.

%% Example:
%% rule_type() :: #{
%%   <<"id">> => rule_type_id(),
%%   <<"inputArtifactDetails">> => artifact_details(),
%%   <<"ruleConfigurationProperties">> => list(rule_configuration_property()()),
%%   <<"settings">> => rule_type_settings()
%% }
-type rule_type() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_filter() :: #{
%%   <<"succeededInStage">> => succeeded_in_stage_filter()
%% }
-type pipeline_execution_filter() :: #{binary() => any()}.

%% Example:
%% execution_trigger() :: #{
%%   <<"triggerDetail">> => string(),
%%   <<"triggerType">> => list(any())
%% }
-type execution_trigger() :: #{binary() => any()}.

%% Example:
%% list_rule_types_input() :: #{
%%   <<"regionFilter">> => string(),
%%   <<"ruleOwnerFilter">> => list(any())
%% }
-type list_rule_types_input() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_input() :: #{
%%   <<"name">> := string()
%% }
-type delete_pipeline_input() :: #{binary() => any()}.

%% Example:
%% artifact_store() :: #{
%%   <<"encryptionKey">> => encryption_key(),
%%   <<"location">> => string(),
%%   <<"type">> => list(any())
%% }
-type artifact_store() :: #{binary() => any()}.

%% Example:
%% artifact_location() :: #{
%%   <<"s3Location">> => s3_artifact_location(),
%%   <<"type">> => list(any())
%% }
-type artifact_location() :: #{binary() => any()}.

%% Example:
%% job_data() :: #{
%%   <<"actionConfiguration">> => action_configuration(),
%%   <<"actionTypeId">> => action_type_id(),
%%   <<"artifactCredentials">> => aws_session_credentials(),
%%   <<"continuationToken">> => string(),
%%   <<"encryptionKey">> => encryption_key(),
%%   <<"inputArtifacts">> => list(artifact()()),
%%   <<"outputArtifacts">> => list(artifact()()),
%%   <<"pipelineContext">> => pipeline_context()
%% }
-type job_data() :: #{binary() => any()}.

%% Example:
%% condition_state() :: #{
%%   <<"latestExecution">> => condition_execution(),
%%   <<"ruleStates">> => list(rule_state()())
%% }
-type condition_state() :: #{binary() => any()}.

%% Example:
%% invalid_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tags_exception() :: #{binary() => any()}.

%% Example:
%% invalid_webhook_filter_pattern_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_webhook_filter_pattern_exception() :: #{binary() => any()}.

%% Example:
%% rule_execution_output() :: #{
%%   <<"executionResult">> => rule_execution_result()
%% }
-type rule_execution_output() :: #{binary() => any()}.

%% Example:
%% git_file_path_filter_criteria() :: #{
%%   <<"excludes">> => list(string()()),
%%   <<"includes">> => list(string()())
%% }
-type git_file_path_filter_criteria() :: #{binary() => any()}.

%% Example:
%% job_worker_executor_configuration() :: #{
%%   <<"pollingAccounts">> => list(string()()),
%%   <<"pollingServicePrincipals">> => list(string()())
%% }
-type job_worker_executor_configuration() :: #{binary() => any()}.

%% Example:
%% approval_already_completed_exception() :: #{
%%   <<"message">> => string()
%% }
-type approval_already_completed_exception() :: #{binary() => any()}.

%% Example:
%% current_revision() :: #{
%%   <<"changeIdentifier">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"revision">> => string(),
%%   <<"revisionSummary">> => string()
%% }
-type current_revision() :: #{binary() => any()}.

%% Example:
%% action_execution_filter() :: #{
%%   <<"latestInPipelineExecution">> => latest_in_pipeline_execution_filter(),
%%   <<"pipelineExecutionId">> => string()
%% }
-type action_execution_filter() :: #{binary() => any()}.

%% Example:
%% create_pipeline_input() :: #{
%%   <<"pipeline">> := pipeline_declaration(),
%%   <<"tags">> => list(tag()())
%% }
-type create_pipeline_input() :: #{binary() => any()}.

%% Example:
%% deploy_target_event_context() :: #{
%%   <<"message">> => string(),
%%   <<"ssmCommandId">> => string()
%% }
-type deploy_target_event_context() :: #{binary() => any()}.

%% Example:
%% action_declaration() :: #{
%%   <<"actionTypeId">> => action_type_id(),
%%   <<"commands">> => list(string()()),
%%   <<"configuration">> => map(),
%%   <<"environmentVariables">> => list(environment_variable()()),
%%   <<"inputArtifacts">> => list(input_artifact()()),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"outputArtifacts">> => list(output_artifact()()),
%%   <<"outputVariables">> => list(string()()),
%%   <<"region">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"runOrder">> => integer(),
%%   <<"timeoutInMinutes">> => integer()
%% }
-type action_declaration() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% retry_configuration() :: #{
%%   <<"retryMode">> => list(any())
%% }
-type retry_configuration() :: #{binary() => any()}.

%% Example:
%% input_artifact() :: #{
%%   <<"name">> => string()
%% }
-type input_artifact() :: #{binary() => any()}.

%% Example:
%% put_webhook_input() :: #{
%%   <<"tags">> => list(tag()()),
%%   <<"webhook">> := webhook_definition()
%% }
-type put_webhook_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% stage_conditions_execution() :: #{
%%   <<"status">> => list(any()),
%%   <<"summary">> => string()
%% }
-type stage_conditions_execution() :: #{binary() => any()}.

%% Example:
%% action_execution() :: #{
%%   <<"actionExecutionId">> => string(),
%%   <<"errorDetails">> => error_details(),
%%   <<"externalExecutionId">> => string(),
%%   <<"externalExecutionUrl">> => string(),
%%   <<"lastStatusChange">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"logStreamARN">> => string(),
%%   <<"percentComplete">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"summary">> => string(),
%%   <<"token">> => string()
%% }
-type action_execution() :: #{binary() => any()}.

%% Example:
%% list_pipelines_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_pipelines_input() :: #{binary() => any()}.

%% Example:
%% get_action_type_input() :: #{
%%   <<"category">> := list(any()),
%%   <<"owner">> := string(),
%%   <<"provider">> := string(),
%%   <<"version">> := string()
%% }
-type get_action_type_input() :: #{binary() => any()}.

%% Example:
%% artifact_detail() :: #{
%%   <<"name">> => string(),
%%   <<"s3location">> => s3_location()
%% }
-type artifact_detail() :: #{binary() => any()}.

%% Example:
%% update_action_type_input() :: #{
%%   <<"actionType">> := action_type_declaration()
%% }
-type update_action_type_input() :: #{binary() => any()}.

%% Example:
%% action_type_artifact_details() :: #{
%%   <<"maximumCount">> => integer(),
%%   <<"minimumCount">> => integer()
%% }
-type action_type_artifact_details() :: #{binary() => any()}.

%% Example:
%% rollback_stage_output() :: #{
%%   <<"pipelineExecutionId">> => string()
%% }
-type rollback_stage_output() :: #{binary() => any()}.

%% Example:
%% invalid_approval_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_approval_token_exception() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% put_job_failure_result_input() :: #{
%%   <<"failureDetails">> := failure_details(),
%%   <<"jobId">> := string()
%% }
-type put_job_failure_result_input() :: #{binary() => any()}.

%% Example:
%% action_execution_output() :: #{
%%   <<"executionResult">> => action_execution_result(),
%%   <<"outputArtifacts">> => list(artifact_detail()()),
%%   <<"outputVariables">> => map()
%% }
-type action_execution_output() :: #{binary() => any()}.

%% Example:
%% invalid_stage_declaration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_stage_declaration_exception() :: #{binary() => any()}.

%% Example:
%% list_action_executions_input() :: #{
%%   <<"filter">> => action_execution_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pipelineName">> := string()
%% }
-type list_action_executions_input() :: #{binary() => any()}.

%% Example:
%% s3_artifact_location() :: #{
%%   <<"bucketName">> => string(),
%%   <<"objectKey">> => string()
%% }
-type s3_artifact_location() :: #{binary() => any()}.

%% Example:
%% list_pipeline_executions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pipelineExecutionSummaries">> => list(pipeline_execution_summary()())
%% }
-type list_pipeline_executions_output() :: #{binary() => any()}.

%% Example:
%% action_type_urls() :: #{
%%   <<"configurationUrl">> => string(),
%%   <<"entityUrlTemplate">> => string(),
%%   <<"executionUrlTemplate">> => string(),
%%   <<"revisionUrlTemplate">> => string()
%% }
-type action_type_urls() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_execution_not_found_exception() :: #{binary() => any()}.

%% Example:
%% start_pipeline_execution_output() :: #{
%%   <<"pipelineExecutionId">> => string()
%% }
-type start_pipeline_execution_output() :: #{binary() => any()}.

%% Example:
%% transition_state() :: #{
%%   <<"disabledReason">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"lastChangedAt">> => non_neg_integer(),
%%   <<"lastChangedBy">> => string()
%% }
-type transition_state() :: #{binary() => any()}.

%% Example:
%% pipeline_summary() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"executionMode">> => list(any()),
%%   <<"name">> => string(),
%%   <<"pipelineType">> => list(any()),
%%   <<"updated">> => non_neg_integer(),
%%   <<"version">> => integer()
%% }
-type pipeline_summary() :: #{binary() => any()}.

%% Example:
%% error_details() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type error_details() :: #{binary() => any()}.

%% Example:
%% git_configuration() :: #{
%%   <<"pullRequest">> => list(git_pull_request_filter()()),
%%   <<"push">> => list(git_push_filter()()),
%%   <<"sourceActionName">> => string()
%% }
-type git_configuration() :: #{binary() => any()}.

%% Example:
%% list_action_types_output() :: #{
%%   <<"actionTypes">> => list(action_type()()),
%%   <<"nextToken">> => string()
%% }
-type list_action_types_output() :: #{binary() => any()}.

%% Example:
%% action_type_id() :: #{
%%   <<"category">> => list(any()),
%%   <<"owner">> => list(any()),
%%   <<"provider">> => string(),
%%   <<"version">> => string()
%% }
-type action_type_id() :: #{binary() => any()}.

%% Example:
%% webhook_definition() :: #{
%%   <<"authentication">> => list(any()),
%%   <<"authenticationConfiguration">> => webhook_auth_configuration(),
%%   <<"filters">> => list(webhook_filter_rule()()),
%%   <<"name">> => string(),
%%   <<"targetAction">> => string(),
%%   <<"targetPipeline">> => string()
%% }
-type webhook_definition() :: #{binary() => any()}.

%% Example:
%% condition() :: #{
%%   <<"result">> => list(any()),
%%   <<"rules">> => list(rule_declaration()())
%% }
-type condition() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% get_job_details_input() :: #{
%%   <<"jobId">> := string()
%% }
-type get_job_details_input() :: #{binary() => any()}.

%% Example:
%% condition_not_overridable_exception() :: #{
%%   <<"message">> => string()
%% }
-type condition_not_overridable_exception() :: #{binary() => any()}.

%% Example:
%% get_pipeline_state_output() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"pipelineName">> => string(),
%%   <<"pipelineVersion">> => integer(),
%%   <<"stageStates">> => list(stage_state()()),
%%   <<"updated">> => non_neg_integer()
%% }
-type get_pipeline_state_output() :: #{binary() => any()}.

%% Example:
%% action_type_executor() :: #{
%%   <<"configuration">> => executor_configuration(),
%%   <<"jobTimeout">> => integer(),
%%   <<"policyStatementsTemplate">> => string(),
%%   <<"type">> => list(any())
%% }
-type action_type_executor() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% approval_result() :: #{
%%   <<"status">> => list(any()),
%%   <<"summary">> => string()
%% }
-type approval_result() :: #{binary() => any()}.

%% Example:
%% stage_not_retryable_exception() :: #{
%%   <<"message">> => string()
%% }
-type stage_not_retryable_exception() :: #{binary() => any()}.

%% Example:
%% git_pull_request_filter() :: #{
%%   <<"branches">> => git_branch_filter_criteria(),
%%   <<"events">> => list(list(any())()),
%%   <<"filePaths">> => git_file_path_filter_criteria()
%% }
-type git_pull_request_filter() :: #{binary() => any()}.

%% Example:
%% deploy_action_execution_target() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"events">> => list(deploy_target_event()()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"targetId">> => string(),
%%   <<"targetType">> => string()
%% }
-type deploy_action_execution_target() :: #{binary() => any()}.

%% Example:
%% job_details() :: #{
%%   <<"accountId">> => string(),
%%   <<"data">> => job_data(),
%%   <<"id">> => string()
%% }
-type job_details() :: #{binary() => any()}.

%% Example:
%% git_tag_filter_criteria() :: #{
%%   <<"excludes">> => list(string()()),
%%   <<"includes">> => list(string()())
%% }
-type git_tag_filter_criteria() :: #{binary() => any()}.

%% Example:
%% condition_execution() :: #{
%%   <<"lastStatusChange">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"summary">> => string()
%% }
-type condition_execution() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% rule_declaration() :: #{
%%   <<"commands">> => list(string()()),
%%   <<"configuration">> => map(),
%%   <<"inputArtifacts">> => list(input_artifact()()),
%%   <<"name">> => string(),
%%   <<"region">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"ruleTypeId">> => rule_type_id(),
%%   <<"timeoutInMinutes">> => integer()
%% }
-type rule_declaration() :: #{binary() => any()}.

%% Example:
%% poll_for_jobs_output() :: #{
%%   <<"jobs">> => list(job()())
%% }
-type poll_for_jobs_output() :: #{binary() => any()}.

%% Example:
%% list_rule_executions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"ruleExecutionDetails">> => list(rule_execution_detail()())
%% }
-type list_rule_executions_output() :: #{binary() => any()}.

%% Example:
%% output_variables_size_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type output_variables_size_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_structure_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_structure_exception() :: #{binary() => any()}.

%% Example:
%% stop_execution_trigger() :: #{
%%   <<"reason">> => string()
%% }
-type stop_execution_trigger() :: #{binary() => any()}.

%% Example:
%% webhook_filter_rule() :: #{
%%   <<"jsonPath">> => string(),
%%   <<"matchEquals">> => string()
%% }
-type webhook_filter_rule() :: #{binary() => any()}.

%% Example:
%% get_third_party_job_details_input() :: #{
%%   <<"clientToken">> := string(),
%%   <<"jobId">> := string()
%% }
-type get_third_party_job_details_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% succeeded_in_stage_filter() :: #{
%%   <<"stageName">> => string()
%% }
-type succeeded_in_stage_filter() :: #{binary() => any()}.

%% Example:
%% pipeline_metadata() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"pipelineArn">> => string(),
%%   <<"pollingDisabledAt">> => non_neg_integer(),
%%   <<"updated">> => non_neg_integer()
%% }
-type pipeline_metadata() :: #{binary() => any()}.

%% Example:
%% put_action_revision_input() :: #{
%%   <<"actionName">> := string(),
%%   <<"actionRevision">> := action_revision(),
%%   <<"pipelineName">> := string(),
%%   <<"stageName">> := string()
%% }
-type put_action_revision_input() :: #{binary() => any()}.

%% Example:
%% rule_type_id() :: #{
%%   <<"category">> => list(any()),
%%   <<"owner">> => list(any()),
%%   <<"provider">> => string(),
%%   <<"version">> => string()
%% }
-type rule_type_id() :: #{binary() => any()}.

%% Example:
%% start_pipeline_execution_input() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"name">> := string(),
%%   <<"sourceRevisions">> => list(source_revision_override()()),
%%   <<"variables">> => list(pipeline_variable()())
%% }
-type start_pipeline_execution_input() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% pipeline_context() :: #{
%%   <<"action">> => action_context(),
%%   <<"pipelineArn">> => string(),
%%   <<"pipelineExecutionId">> => string(),
%%   <<"pipelineName">> => string(),
%%   <<"stage">> => stage_context()
%% }
-type pipeline_context() :: #{binary() => any()}.

%% Example:
%% update_pipeline_output() :: #{
%%   <<"pipeline">> => pipeline_declaration()
%% }
-type update_pipeline_output() :: #{binary() => any()}.

%% Example:
%% action_type_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type action_type_not_found_exception() :: #{binary() => any()}.

%% Example:
%% target_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type target_filter() :: #{binary() => any()}.

%% Example:
%% blocker_declaration() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type blocker_declaration() :: #{binary() => any()}.

%% Example:
%% artifact_details() :: #{
%%   <<"maximumCount">> => integer(),
%%   <<"minimumCount">> => integer()
%% }
-type artifact_details() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% action_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type action_not_found_exception() :: #{binary() => any()}.

%% Example:
%% deregister_webhook_with_third_party_input() :: #{
%%   <<"webhookName">> => string()
%% }
-type deregister_webhook_with_third_party_input() :: #{binary() => any()}.

%% Example:
%% job() :: #{
%%   <<"accountId">> => string(),
%%   <<"data">> => job_data(),
%%   <<"id">> => string(),
%%   <<"nonce">> => string()
%% }
-type job() :: #{binary() => any()}.

%% Example:
%% concurrent_pipeline_executions_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_pipeline_executions_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_custom_action_type_output() :: #{
%%   <<"actionType">> => action_type(),
%%   <<"tags">> => list(tag()())
%% }
-type create_custom_action_type_output() :: #{binary() => any()}.

%% Example:
%% put_third_party_job_success_result_input() :: #{
%%   <<"clientToken">> := string(),
%%   <<"continuationToken">> => string(),
%%   <<"currentRevision">> => current_revision(),
%%   <<"executionDetails">> => execution_details(),
%%   <<"jobId">> := string()
%% }
-type put_third_party_job_success_result_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_outdated_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_execution_outdated_exception() :: #{binary() => any()}.

%% Example:
%% poll_for_third_party_jobs_output() :: #{
%%   <<"jobs">> => list(third_party_job()())
%% }
-type poll_for_third_party_jobs_output() :: #{binary() => any()}.

%% Example:
%% list_rule_executions_input() :: #{
%%   <<"filter">> => rule_execution_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pipelineName">> := string()
%% }
-type list_rule_executions_input() :: #{binary() => any()}.

%% Example:
%% action_execution_input() :: #{
%%   <<"actionTypeId">> => action_type_id(),
%%   <<"configuration">> => map(),
%%   <<"inputArtifacts">> => list(artifact_detail()()),
%%   <<"namespace">> => string(),
%%   <<"region">> => string(),
%%   <<"resolvedConfiguration">> => map(),
%%   <<"roleArn">> => string()
%% }
-type action_execution_input() :: #{binary() => any()}.

%% Example:
%% invalid_nonce_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_nonce_exception() :: #{binary() => any()}.

%% Example:
%% invalid_client_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_client_token_exception() :: #{binary() => any()}.

%% Example:
%% action_type_identifier() :: #{
%%   <<"category">> => list(any()),
%%   <<"owner">> => string(),
%%   <<"provider">> => string(),
%%   <<"version">> => string()
%% }
-type action_type_identifier() :: #{binary() => any()}.

%% Example:
%% pipeline_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_not_found_exception() :: #{binary() => any()}.

%% Example:
%% rollback_stage_input() :: #{
%%   <<"pipelineName">> := string(),
%%   <<"stageName">> := string(),
%%   <<"targetPipelineExecutionId">> := string()
%% }
-type rollback_stage_input() :: #{binary() => any()}.

%% Example:
%% deregister_webhook_with_third_party_output() :: #{

%% }
-type deregister_webhook_with_third_party_output() :: #{binary() => any()}.

%% Example:
%% delete_webhook_input() :: #{
%%   <<"name">> := string()
%% }
-type delete_webhook_input() :: #{binary() => any()}.

%% Example:
%% pipeline_variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type pipeline_variable() :: #{binary() => any()}.

%% Example:
%% action_execution_detail() :: #{
%%   <<"actionExecutionId">> => string(),
%%   <<"actionName">> => string(),
%%   <<"input">> => action_execution_input(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"output">> => action_execution_output(),
%%   <<"pipelineExecutionId">> => string(),
%%   <<"pipelineVersion">> => integer(),
%%   <<"stageName">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type action_execution_detail() :: #{binary() => any()}.

%% Example:
%% source_revision_override() :: #{
%%   <<"actionName">> => string(),
%%   <<"revisionType">> => list(any()),
%%   <<"revisionValue">> => string()
%% }
-type source_revision_override() :: #{binary() => any()}.

%% Example:
%% list_pipelines_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pipelines">> => list(pipeline_summary()())
%% }
-type list_pipelines_output() :: #{binary() => any()}.

%% Example:
%% register_webhook_with_third_party_input() :: #{
%%   <<"webhookName">> => string()
%% }
-type register_webhook_with_third_party_input() :: #{binary() => any()}.

%% Example:
%% list_action_types_input() :: #{
%%   <<"actionOwnerFilter">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"regionFilter">> => string()
%% }
-type list_action_types_input() :: #{binary() => any()}.

%% Example:
%% rule_revision() :: #{
%%   <<"created">> => non_neg_integer(),
%%   <<"revisionChangeId">> => string(),
%%   <<"revisionId">> => string()
%% }
-type rule_revision() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stage_declaration() :: #{
%%   <<"actions">> => list(action_declaration()()),
%%   <<"beforeEntry">> => before_entry_conditions(),
%%   <<"blockers">> => list(blocker_declaration()()),
%%   <<"name">> => string(),
%%   <<"onFailure">> => failure_conditions(),
%%   <<"onSuccess">> => success_conditions()
%% }
-type stage_declaration() :: #{binary() => any()}.

%% Example:
%% create_custom_action_type_input() :: #{
%%   <<"category">> := list(any()),
%%   <<"configurationProperties">> => list(action_configuration_property()()),
%%   <<"inputArtifactDetails">> := artifact_details(),
%%   <<"outputArtifactDetails">> := artifact_details(),
%%   <<"provider">> := string(),
%%   <<"settings">> => action_type_settings(),
%%   <<"tags">> => list(tag()()),
%%   <<"version">> := string()
%% }
-type create_custom_action_type_input() :: #{binary() => any()}.

%% Example:
%% action_configuration() :: #{
%%   <<"configuration">> => map()
%% }
-type action_configuration() :: #{binary() => any()}.

%% Example:
%% stage_condition_state() :: #{
%%   <<"conditionStates">> => list(condition_state()()),
%%   <<"latestExecution">> => stage_conditions_execution()
%% }
-type stage_condition_state() :: #{binary() => any()}.

%% Example:
%% stage_execution() :: #{
%%   <<"pipelineExecutionId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type stage_execution() :: #{binary() => any()}.

%% Example:
%% action_execution_result() :: #{
%%   <<"errorDetails">> => error_details(),
%%   <<"externalExecutionId">> => string(),
%%   <<"externalExecutionSummary">> => string(),
%%   <<"externalExecutionUrl">> => string(),
%%   <<"logStreamARN">> => string()
%% }
-type action_execution_result() :: #{binary() => any()}.

%% Example:
%% rule_configuration_property() :: #{
%%   <<"description">> => string(),
%%   <<"key">> => boolean(),
%%   <<"name">> => string(),
%%   <<"queryable">> => boolean(),
%%   <<"required">> => boolean(),
%%   <<"secret">> => boolean(),
%%   <<"type">> => list(any())
%% }
-type rule_configuration_property() :: #{binary() => any()}.

%% Example:
%% list_deploy_action_execution_targets_input() :: #{
%%   <<"actionExecutionId">> := string(),
%%   <<"filters">> => list(target_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pipelineName">> => string()
%% }
-type list_deploy_action_execution_targets_input() :: #{binary() => any()}.

%% Example:
%% before_entry_conditions() :: #{
%%   <<"conditions">> => list(condition()())
%% }
-type before_entry_conditions() :: #{binary() => any()}.

%% Example:
%% get_pipeline_input() :: #{
%%   <<"name">> := string(),
%%   <<"version">> => integer()
%% }
-type get_pipeline_input() :: #{binary() => any()}.

%% Example:
%% stage_state() :: #{
%%   <<"actionStates">> => list(action_state()()),
%%   <<"beforeEntryConditionState">> => stage_condition_state(),
%%   <<"inboundExecution">> => stage_execution(),
%%   <<"inboundExecutions">> => list(stage_execution()()),
%%   <<"inboundTransitionState">> => transition_state(),
%%   <<"latestExecution">> => stage_execution(),
%%   <<"onFailureConditionState">> => stage_condition_state(),
%%   <<"onSuccessConditionState">> => stage_condition_state(),
%%   <<"retryStageMetadata">> => retry_stage_metadata(),
%%   <<"stageName">> => string()
%% }
-type stage_state() :: #{binary() => any()}.

%% Example:
%% job_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type job_not_found_exception() :: #{binary() => any()}.

%% Example:
%% third_party_job_details() :: #{
%%   <<"data">> => third_party_job_data(),
%%   <<"id">> => string(),
%%   <<"nonce">> => string()
%% }
-type third_party_job_details() :: #{binary() => any()}.

%% Example:
%% pipeline_version_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type pipeline_version_not_found_exception() :: #{binary() => any()}.

%% Example:
%% deploy_target_event() :: #{
%%   <<"context">> => deploy_target_event_context(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type deploy_target_event() :: #{binary() => any()}.

%% Example:
%% artifact() :: #{
%%   <<"location">> => artifact_location(),
%%   <<"name">> => string(),
%%   <<"revision">> => string()
%% }
-type artifact() :: #{binary() => any()}.

%% Example:
%% retry_stage_execution_input() :: #{
%%   <<"pipelineExecutionId">> := string(),
%%   <<"pipelineName">> := string(),
%%   <<"retryMode">> := list(any()),
%%   <<"stageName">> := string()
%% }
-type retry_stage_execution_input() :: #{binary() => any()}.

%% Example:
%% get_job_details_output() :: #{
%%   <<"jobDetails">> => job_details()
%% }
-type get_job_details_output() :: #{binary() => any()}.

%% Example:
%% stop_pipeline_execution_input() :: #{
%%   <<"abandon">> => boolean(),
%%   <<"pipelineExecutionId">> := string(),
%%   <<"pipelineName">> := string(),
%%   <<"reason">> => string()
%% }
-type stop_pipeline_execution_input() :: #{binary() => any()}.

%% Example:
%% duplicated_stop_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicated_stop_request_exception() :: #{binary() => any()}.

%% Example:
%% source_revision() :: #{
%%   <<"actionName">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"revisionSummary">> => string(),
%%   <<"revisionUrl">> => string()
%% }
-type source_revision() :: #{binary() => any()}.

%% Example:
%% action_type_property() :: #{
%%   <<"description">> => string(),
%%   <<"key">> => boolean(),
%%   <<"name">> => string(),
%%   <<"noEcho">> => boolean(),
%%   <<"optional">> => boolean(),
%%   <<"queryable">> => boolean()
%% }
-type action_type_property() :: #{binary() => any()}.

%% Example:
%% acknowledge_job_input() :: #{
%%   <<"jobId">> := string(),
%%   <<"nonce">> := string()
%% }
-type acknowledge_job_input() :: #{binary() => any()}.

%% Example:
%% get_pipeline_state_input() :: #{
%%   <<"name">> := string()
%% }
-type get_pipeline_state_input() :: #{binary() => any()}.

%% Example:
%% poll_for_jobs_input() :: #{
%%   <<"actionTypeId">> := action_type_id(),
%%   <<"maxBatchSize">> => integer(),
%%   <<"queryParam">> => map()
%% }
-type poll_for_jobs_input() :: #{binary() => any()}.

%% Example:
%% delete_custom_action_type_input() :: #{
%%   <<"category">> := list(any()),
%%   <<"provider">> := string(),
%%   <<"version">> := string()
%% }
-type delete_custom_action_type_input() :: #{binary() => any()}.

%% Example:
%% put_action_revision_output() :: #{
%%   <<"newRevision">> => boolean(),
%%   <<"pipelineExecutionId">> => string()
%% }
-type put_action_revision_output() :: #{binary() => any()}.

%% Example:
%% disable_stage_transition_input() :: #{
%%   <<"pipelineName">> := string(),
%%   <<"reason">> := string(),
%%   <<"stageName">> := string(),
%%   <<"transitionType">> := list(any())
%% }
-type disable_stage_transition_input() :: #{binary() => any()}.

%% Example:
%% retry_stage_execution_output() :: #{
%%   <<"pipelineExecutionId">> => string()
%% }
-type retry_stage_execution_output() :: #{binary() => any()}.

%% Example:
%% encryption_key() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type encryption_key() :: #{binary() => any()}.

%% Example:
%% rule_execution() :: #{
%%   <<"errorDetails">> => error_details(),
%%   <<"externalExecutionId">> => string(),
%%   <<"externalExecutionUrl">> => string(),
%%   <<"lastStatusChange">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"ruleExecutionId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"summary">> => string(),
%%   <<"token">> => string()
%% }
-type rule_execution() :: #{binary() => any()}.

%% Example:
%% put_approval_result_input() :: #{
%%   <<"actionName">> := string(),
%%   <<"pipelineName">> := string(),
%%   <<"result">> := approval_result(),
%%   <<"stageName">> := string(),
%%   <<"token">> := string()
%% }
-type put_approval_result_input() :: #{binary() => any()}.

%% Example:
%% lambda_executor_configuration() :: #{
%%   <<"lambdaFunctionArn">> => string()
%% }
-type lambda_executor_configuration() :: #{binary() => any()}.

%% Example:
%% rule_execution_input() :: #{
%%   <<"configuration">> => map(),
%%   <<"inputArtifacts">> => list(artifact_detail()()),
%%   <<"region">> => string(),
%%   <<"resolvedConfiguration">> => map(),
%%   <<"roleArn">> => string(),
%%   <<"ruleTypeId">> => rule_type_id()
%% }
-type rule_execution_input() :: #{binary() => any()}.

%% Example:
%% git_push_filter() :: #{
%%   <<"branches">> => git_branch_filter_criteria(),
%%   <<"filePaths">> => git_file_path_filter_criteria(),
%%   <<"tags">> => git_tag_filter_criteria()
%% }
-type git_push_filter() :: #{binary() => any()}.

%% Example:
%% action_type_declaration() :: #{
%%   <<"description">> => string(),
%%   <<"executor">> => action_type_executor(),
%%   <<"id">> => action_type_identifier(),
%%   <<"inputArtifactDetails">> => action_type_artifact_details(),
%%   <<"outputArtifactDetails">> => action_type_artifact_details(),
%%   <<"permissions">> => action_type_permissions(),
%%   <<"properties">> => list(action_type_property()()),
%%   <<"urls">> => action_type_urls()
%% }
-type action_type_declaration() :: #{binary() => any()}.

%% Example:
%% invalid_job_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_job_exception() :: #{binary() => any()}.

%% Example:
%% action_type() :: #{
%%   <<"actionConfigurationProperties">> => list(action_configuration_property()()),
%%   <<"id">> => action_type_id(),
%%   <<"inputArtifactDetails">> => artifact_details(),
%%   <<"outputArtifactDetails">> => artifact_details(),
%%   <<"settings">> => action_type_settings()
%% }
-type action_type() :: #{binary() => any()}.

%% Example:
%% webhook_not_found_exception() :: #{

%% }
-type webhook_not_found_exception() :: #{binary() => any()}.

%% Example:
%% register_webhook_with_third_party_output() :: #{

%% }
-type register_webhook_with_third_party_output() :: #{binary() => any()}.

%% Example:
%% get_pipeline_execution_output() :: #{
%%   <<"pipelineExecution">> => pipeline_execution()
%% }
-type get_pipeline_execution_output() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% action_configuration_property() :: #{
%%   <<"description">> => string(),
%%   <<"key">> => boolean(),
%%   <<"name">> => string(),
%%   <<"queryable">> => boolean(),
%%   <<"required">> => boolean(),
%%   <<"secret">> => boolean(),
%%   <<"type">> => list(any())
%% }
-type action_configuration_property() :: #{binary() => any()}.

%% Example:
%% success_conditions() :: #{
%%   <<"conditions">> => list(condition()())
%% }
-type success_conditions() :: #{binary() => any()}.

%% Example:
%% invalid_webhook_authentication_parameters_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_webhook_authentication_parameters_exception() :: #{binary() => any()}.

%% Example:
%% list_pipeline_executions_input() :: #{
%%   <<"filter">> => pipeline_execution_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pipelineName">> := string()
%% }
-type list_pipeline_executions_input() :: #{binary() => any()}.

%% Example:
%% action_type_settings() :: #{
%%   <<"entityUrlTemplate">> => string(),
%%   <<"executionUrlTemplate">> => string(),
%%   <<"revisionUrlTemplate">> => string(),
%%   <<"thirdPartyConfigurationUrl">> => string()
%% }
-type action_type_settings() :: #{binary() => any()}.

%% Example:
%% invalid_job_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_job_state_exception() :: #{binary() => any()}.

-type acknowledge_job_errors() ::
    job_not_found_exception() | 
    invalid_nonce_exception() | 
    validation_exception().

-type acknowledge_third_party_job_errors() ::
    job_not_found_exception() | 
    invalid_client_token_exception() | 
    invalid_nonce_exception() | 
    validation_exception().

-type create_custom_action_type_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    invalid_tags_exception().

-type create_pipeline_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    invalid_structure_exception() | 
    invalid_stage_declaration_exception() | 
    invalid_tags_exception() | 
    pipeline_name_in_use_exception() | 
    invalid_action_declaration_exception() | 
    invalid_blocker_declaration_exception().

-type delete_custom_action_type_errors() ::
    validation_exception() | 
    concurrent_modification_exception().

-type delete_pipeline_errors() ::
    validation_exception() | 
    concurrent_modification_exception().

-type delete_webhook_errors() ::
    validation_exception() | 
    concurrent_modification_exception().

-type deregister_webhook_with_third_party_errors() ::
    webhook_not_found_exception() | 
    validation_exception().

-type disable_stage_transition_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    stage_not_found_exception().

-type enable_stage_transition_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    stage_not_found_exception().

-type get_action_type_errors() ::
    validation_exception() | 
    action_type_not_found_exception().

-type get_job_details_errors() ::
    job_not_found_exception() | 
    validation_exception().

-type get_pipeline_errors() ::
    pipeline_version_not_found_exception() | 
    pipeline_not_found_exception() | 
    validation_exception().

-type get_pipeline_execution_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    pipeline_execution_not_found_exception().

-type get_pipeline_state_errors() ::
    pipeline_not_found_exception() | 
    validation_exception().

-type get_third_party_job_details_errors() ::
    invalid_job_exception() | 
    job_not_found_exception() | 
    invalid_client_token_exception() | 
    validation_exception().

-type list_action_executions_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    pipeline_execution_not_found_exception() | 
    invalid_next_token_exception().

-type list_action_types_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_deploy_action_execution_targets_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    invalid_next_token_exception() | 
    action_execution_not_found_exception().

-type list_pipeline_executions_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    invalid_next_token_exception().

-type list_pipelines_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_rule_executions_errors() ::
    pipeline_not_found_exception() | 
    validation_exception() | 
    pipeline_execution_not_found_exception() | 
    invalid_next_token_exception().

-type list_rule_types_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception().

-type list_webhooks_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type override_stage_condition_errors() ::
    pipeline_not_found_exception() | 
    concurrent_pipeline_executions_limit_exceeded_exception() | 
    validation_exception() | 
    condition_not_overridable_exception() | 
    conflict_exception() | 
    not_latest_pipeline_execution_exception() | 
    stage_not_found_exception().

-type poll_for_jobs_errors() ::
    validation_exception() | 
    action_type_not_found_exception().

-type poll_for_third_party_jobs_errors() ::
    validation_exception() | 
    action_type_not_found_exception().

-type put_action_revision_errors() ::
    pipeline_not_found_exception() | 
    concurrent_pipeline_executions_limit_exceeded_exception() | 
    action_not_found_exception() | 
    validation_exception() | 
    stage_not_found_exception().

-type put_approval_result_errors() ::
    pipeline_not_found_exception() | 
    action_not_found_exception() | 
    validation_exception() | 
    invalid_approval_token_exception() | 
    approval_already_completed_exception() | 
    stage_not_found_exception().

-type put_job_failure_result_errors() ::
    invalid_job_state_exception() | 
    job_not_found_exception() | 
    validation_exception().

-type put_job_success_result_errors() ::
    invalid_job_state_exception() | 
    job_not_found_exception() | 
    validation_exception() | 
    output_variables_size_exceeded_exception().

-type put_third_party_job_failure_result_errors() ::
    invalid_job_state_exception() | 
    job_not_found_exception() | 
    invalid_client_token_exception() | 
    validation_exception().

-type put_third_party_job_success_result_errors() ::
    invalid_job_state_exception() | 
    job_not_found_exception() | 
    invalid_client_token_exception() | 
    validation_exception().

-type put_webhook_errors() ::
    invalid_webhook_authentication_parameters_exception() | 
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    pipeline_not_found_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    invalid_webhook_filter_pattern_exception() | 
    invalid_tags_exception().

-type register_webhook_with_third_party_errors() ::
    webhook_not_found_exception() | 
    validation_exception().

-type retry_stage_execution_errors() ::
    pipeline_not_found_exception() | 
    concurrent_pipeline_executions_limit_exceeded_exception() | 
    validation_exception() | 
    stage_not_retryable_exception() | 
    conflict_exception() | 
    not_latest_pipeline_execution_exception() | 
    stage_not_found_exception().

-type rollback_stage_errors() ::
    pipeline_not_found_exception() | 
    pipeline_execution_outdated_exception() | 
    validation_exception() | 
    pipeline_execution_not_found_exception() | 
    conflict_exception() | 
    stage_not_found_exception() | 
    unable_to_rollback_stage_exception().

-type start_pipeline_execution_errors() ::
    pipeline_not_found_exception() | 
    concurrent_pipeline_executions_limit_exceeded_exception() | 
    validation_exception() | 
    conflict_exception().

-type stop_pipeline_execution_errors() ::
    duplicated_stop_request_exception() | 
    pipeline_not_found_exception() | 
    validation_exception() | 
    conflict_exception() | 
    pipeline_execution_not_stoppable_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    invalid_tags_exception() | 
    invalid_arn_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    invalid_tags_exception() | 
    invalid_arn_exception().

-type update_action_type_errors() ::
    validation_exception() | 
    action_type_not_found_exception() | 
    request_failed_exception().

-type update_pipeline_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_structure_exception() | 
    invalid_stage_declaration_exception() | 
    invalid_action_declaration_exception() | 
    invalid_blocker_declaration_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a specified job and whether that job has
%% been received by
%% the job worker.
%%
%% Used for custom actions only.
-spec acknowledge_job(aws_client:aws_client(), acknowledge_job_input()) ->
    {ok, acknowledge_job_output(), tuple()} |
    {error, any()} |
    {error, acknowledge_job_errors(), tuple()}.
acknowledge_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_job(Client, Input, []).

-spec acknowledge_job(aws_client:aws_client(), acknowledge_job_input(), proplists:proplist()) ->
    {ok, acknowledge_job_output(), tuple()} |
    {error, any()} |
    {error, acknowledge_job_errors(), tuple()}.
acknowledge_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeJob">>, Input, Options).

%% @doc Confirms a job worker has received the specified job.
%%
%% Used for partner actions
%% only.
-spec acknowledge_third_party_job(aws_client:aws_client(), acknowledge_third_party_job_input()) ->
    {ok, acknowledge_third_party_job_output(), tuple()} |
    {error, any()} |
    {error, acknowledge_third_party_job_errors(), tuple()}.
acknowledge_third_party_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    acknowledge_third_party_job(Client, Input, []).

-spec acknowledge_third_party_job(aws_client:aws_client(), acknowledge_third_party_job_input(), proplists:proplist()) ->
    {ok, acknowledge_third_party_job_output(), tuple()} |
    {error, any()} |
    {error, acknowledge_third_party_job_errors(), tuple()}.
acknowledge_third_party_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcknowledgeThirdPartyJob">>, Input, Options).

%% @doc Creates a new custom action that can be used in all pipelines
%% associated with the
%% Amazon Web Services account.
%%
%% Only used for custom actions.
-spec create_custom_action_type(aws_client:aws_client(), create_custom_action_type_input()) ->
    {ok, create_custom_action_type_output(), tuple()} |
    {error, any()} |
    {error, create_custom_action_type_errors(), tuple()}.
create_custom_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_action_type(Client, Input, []).

-spec create_custom_action_type(aws_client:aws_client(), create_custom_action_type_input(), proplists:proplist()) ->
    {ok, create_custom_action_type_output(), tuple()} |
    {error, any()} |
    {error, create_custom_action_type_errors(), tuple()}.
create_custom_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomActionType">>, Input, Options).

%% @doc Creates a pipeline.
%%
%% In the pipeline structure, you must include either `artifactStore'
%% or `artifactStores' in your pipeline, but you cannot use both. If you
%% create a cross-region action in your pipeline, you must use
%% `artifactStores'.
-spec create_pipeline(aws_client:aws_client(), create_pipeline_input()) ->
    {ok, create_pipeline_output(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).

-spec create_pipeline(aws_client:aws_client(), create_pipeline_input(), proplists:proplist()) ->
    {ok, create_pipeline_output(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Marks a custom action as deleted.
%%
%% `PollForJobs' for the custom action
%% fails after the action is marked for deletion. Used for custom actions
%% only.
%%
%% To re-create a custom action after it has been deleted you must use a
%% string in
%% the version field that has never been used before. This string can be an
%% incremented
%% version number, for example. To restore a deleted custom action, use a
%% JSON file
%% that is identical to the deleted action, including the original string in
%% the
%% version field.
-spec delete_custom_action_type(aws_client:aws_client(), delete_custom_action_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_action_type_errors(), tuple()}.
delete_custom_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_action_type(Client, Input, []).

-spec delete_custom_action_type(aws_client:aws_client(), delete_custom_action_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_action_type_errors(), tuple()}.
delete_custom_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomActionType">>, Input, Options).

%% @doc Deletes the specified pipeline.
-spec delete_pipeline(aws_client:aws_client(), delete_pipeline_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).

-spec delete_pipeline(aws_client:aws_client(), delete_pipeline_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Deletes a previously created webhook by name.
%%
%% Deleting the webhook stops CodePipeline from starting a pipeline every
%% time an external event occurs. The API
%% returns successfully when trying to delete a webhook that is already
%% deleted. If a
%% deleted webhook is re-created by calling PutWebhook with the same name, it
%% will have a
%% different URL.
-spec delete_webhook(aws_client:aws_client(), delete_webhook_input()) ->
    {ok, delete_webhook_output(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_webhook(Client, Input, []).

-spec delete_webhook(aws_client:aws_client(), delete_webhook_input(), proplists:proplist()) ->
    {ok, delete_webhook_output(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebhook">>, Input, Options).

%% @doc Removes the connection between the webhook that was created by
%% CodePipeline
%% and the external tool with events to be detected.
%%
%% Currently supported only for webhooks
%% that target an action type of GitHub.
-spec deregister_webhook_with_third_party(aws_client:aws_client(), deregister_webhook_with_third_party_input()) ->
    {ok, deregister_webhook_with_third_party_output(), tuple()} |
    {error, any()} |
    {error, deregister_webhook_with_third_party_errors(), tuple()}.
deregister_webhook_with_third_party(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_webhook_with_third_party(Client, Input, []).

-spec deregister_webhook_with_third_party(aws_client:aws_client(), deregister_webhook_with_third_party_input(), proplists:proplist()) ->
    {ok, deregister_webhook_with_third_party_output(), tuple()} |
    {error, any()} |
    {error, deregister_webhook_with_third_party_errors(), tuple()}.
deregister_webhook_with_third_party(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterWebhookWithThirdParty">>, Input, Options).

%% @doc Prevents artifacts in a pipeline from transitioning to the next stage
%% in the
%% pipeline.
-spec disable_stage_transition(aws_client:aws_client(), disable_stage_transition_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_stage_transition_errors(), tuple()}.
disable_stage_transition(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_stage_transition(Client, Input, []).

-spec disable_stage_transition(aws_client:aws_client(), disable_stage_transition_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_stage_transition_errors(), tuple()}.
disable_stage_transition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableStageTransition">>, Input, Options).

%% @doc Enables artifacts in a pipeline to transition to a stage in a
%% pipeline.
-spec enable_stage_transition(aws_client:aws_client(), enable_stage_transition_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_stage_transition_errors(), tuple()}.
enable_stage_transition(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_stage_transition(Client, Input, []).

-spec enable_stage_transition(aws_client:aws_client(), enable_stage_transition_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_stage_transition_errors(), tuple()}.
enable_stage_transition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableStageTransition">>, Input, Options).

%% @doc Returns information about an action type created for an external
%% provider, where the
%% action is to be used by customers of the external provider.
%%
%% The action can be created
%% with any supported integration model.
-spec get_action_type(aws_client:aws_client(), get_action_type_input()) ->
    {ok, get_action_type_output(), tuple()} |
    {error, any()} |
    {error, get_action_type_errors(), tuple()}.
get_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_action_type(Client, Input, []).

-spec get_action_type(aws_client:aws_client(), get_action_type_input(), proplists:proplist()) ->
    {ok, get_action_type_output(), tuple()} |
    {error, any()} |
    {error, get_action_type_errors(), tuple()}.
get_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActionType">>, Input, Options).

%% @doc Returns information about a job.
%%
%% Used for custom actions only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires
%% access to that S3 bucket for input or output artifacts. This API also
%% returns any
%% secret values defined for the action.
-spec get_job_details(aws_client:aws_client(), get_job_details_input()) ->
    {ok, get_job_details_output(), tuple()} |
    {error, any()} |
    {error, get_job_details_errors(), tuple()}.
get_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_details(Client, Input, []).

-spec get_job_details(aws_client:aws_client(), get_job_details_input(), proplists:proplist()) ->
    {ok, get_job_details_output(), tuple()} |
    {error, any()} |
    {error, get_job_details_errors(), tuple()}.
get_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobDetails">>, Input, Options).

%% @doc Returns the metadata, structure, stages, and actions of a pipeline.
%%
%% Can be used to
%% return the entire structure of a pipeline in JSON format, which can then
%% be modified and
%% used to update the pipeline structure with `UpdatePipeline'.
-spec get_pipeline(aws_client:aws_client(), get_pipeline_input()) ->
    {ok, get_pipeline_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_errors(), tuple()}.
get_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline(Client, Input, []).

-spec get_pipeline(aws_client:aws_client(), get_pipeline_input(), proplists:proplist()) ->
    {ok, get_pipeline_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_errors(), tuple()}.
get_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipeline">>, Input, Options).

%% @doc Returns information about an execution of a pipeline, including
%% details about
%% artifacts, the pipeline execution ID, and the name, version, and status of
%% the
%% pipeline.
-spec get_pipeline_execution(aws_client:aws_client(), get_pipeline_execution_input()) ->
    {ok, get_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_execution_errors(), tuple()}.
get_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_execution(Client, Input, []).

-spec get_pipeline_execution(aws_client:aws_client(), get_pipeline_execution_input(), proplists:proplist()) ->
    {ok, get_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_execution_errors(), tuple()}.
get_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineExecution">>, Input, Options).

%% @doc Returns information about the state of a pipeline, including the
%% stages and
%% actions.
%%
%% Values returned in the `revisionId' and `revisionUrl'
%% fields indicate the source revision information, such as the commit ID,
%% for the
%% current state.
-spec get_pipeline_state(aws_client:aws_client(), get_pipeline_state_input()) ->
    {ok, get_pipeline_state_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_state_errors(), tuple()}.
get_pipeline_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_pipeline_state(Client, Input, []).

-spec get_pipeline_state(aws_client:aws_client(), get_pipeline_state_input(), proplists:proplist()) ->
    {ok, get_pipeline_state_output(), tuple()} |
    {error, any()} |
    {error, get_pipeline_state_errors(), tuple()}.
get_pipeline_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPipelineState">>, Input, Options).

%% @doc Requests the details of a job for a third party action.
%%
%% Used for partner actions
%% only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires
%% access to that S3 bucket for input or output artifacts. This API also
%% returns any
%% secret values defined for the action.
-spec get_third_party_job_details(aws_client:aws_client(), get_third_party_job_details_input()) ->
    {ok, get_third_party_job_details_output(), tuple()} |
    {error, any()} |
    {error, get_third_party_job_details_errors(), tuple()}.
get_third_party_job_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_third_party_job_details(Client, Input, []).

-spec get_third_party_job_details(aws_client:aws_client(), get_third_party_job_details_input(), proplists:proplist()) ->
    {ok, get_third_party_job_details_output(), tuple()} |
    {error, any()} |
    {error, get_third_party_job_details_errors(), tuple()}.
get_third_party_job_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetThirdPartyJobDetails">>, Input, Options).

%% @doc Lists the action executions that have occurred in a pipeline.
-spec list_action_executions(aws_client:aws_client(), list_action_executions_input()) ->
    {ok, list_action_executions_output(), tuple()} |
    {error, any()} |
    {error, list_action_executions_errors(), tuple()}.
list_action_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_action_executions(Client, Input, []).

-spec list_action_executions(aws_client:aws_client(), list_action_executions_input(), proplists:proplist()) ->
    {ok, list_action_executions_output(), tuple()} |
    {error, any()} |
    {error, list_action_executions_errors(), tuple()}.
list_action_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActionExecutions">>, Input, Options).

%% @doc Gets a summary of all CodePipeline action types associated with your
%% account.
-spec list_action_types(aws_client:aws_client(), list_action_types_input()) ->
    {ok, list_action_types_output(), tuple()} |
    {error, any()} |
    {error, list_action_types_errors(), tuple()}.
list_action_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_action_types(Client, Input, []).

-spec list_action_types(aws_client:aws_client(), list_action_types_input(), proplists:proplist()) ->
    {ok, list_action_types_output(), tuple()} |
    {error, any()} |
    {error, list_action_types_errors(), tuple()}.
list_action_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActionTypes">>, Input, Options).

%% @doc Lists the targets for the deploy action.
-spec list_deploy_action_execution_targets(aws_client:aws_client(), list_deploy_action_execution_targets_input()) ->
    {ok, list_deploy_action_execution_targets_output(), tuple()} |
    {error, any()} |
    {error, list_deploy_action_execution_targets_errors(), tuple()}.
list_deploy_action_execution_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deploy_action_execution_targets(Client, Input, []).

-spec list_deploy_action_execution_targets(aws_client:aws_client(), list_deploy_action_execution_targets_input(), proplists:proplist()) ->
    {ok, list_deploy_action_execution_targets_output(), tuple()} |
    {error, any()} |
    {error, list_deploy_action_execution_targets_errors(), tuple()}.
list_deploy_action_execution_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeployActionExecutionTargets">>, Input, Options).

%% @doc Gets a summary of the most recent executions for a pipeline.
%%
%% When applying the filter for pipeline executions that have succeeded in
%% the stage,
%% the operation returns all executions in the current pipeline version
%% beginning on
%% February 1, 2024.
-spec list_pipeline_executions(aws_client:aws_client(), list_pipeline_executions_input()) ->
    {ok, list_pipeline_executions_output(), tuple()} |
    {error, any()} |
    {error, list_pipeline_executions_errors(), tuple()}.
list_pipeline_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_executions(Client, Input, []).

-spec list_pipeline_executions(aws_client:aws_client(), list_pipeline_executions_input(), proplists:proplist()) ->
    {ok, list_pipeline_executions_output(), tuple()} |
    {error, any()} |
    {error, list_pipeline_executions_errors(), tuple()}.
list_pipeline_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutions">>, Input, Options).

%% @doc Gets a summary of all of the pipelines associated with your account.
-spec list_pipelines(aws_client:aws_client(), list_pipelines_input()) ->
    {ok, list_pipelines_output(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).

-spec list_pipelines(aws_client:aws_client(), list_pipelines_input(), proplists:proplist()) ->
    {ok, list_pipelines_output(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Lists the rule executions that have occurred in a pipeline configured
%% for conditions
%% with rules.
-spec list_rule_executions(aws_client:aws_client(), list_rule_executions_input()) ->
    {ok, list_rule_executions_output(), tuple()} |
    {error, any()} |
    {error, list_rule_executions_errors(), tuple()}.
list_rule_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_executions(Client, Input, []).

-spec list_rule_executions(aws_client:aws_client(), list_rule_executions_input(), proplists:proplist()) ->
    {ok, list_rule_executions_output(), tuple()} |
    {error, any()} |
    {error, list_rule_executions_errors(), tuple()}.
list_rule_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleExecutions">>, Input, Options).

%% @doc Lists the rules for the condition.
%%
%% For more information about conditions, see Stage
%% conditions:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html
%% and How do
%% stage conditions work?:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html.For
%% more information about rules, see the CodePipeline rule reference:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html.
-spec list_rule_types(aws_client:aws_client(), list_rule_types_input()) ->
    {ok, list_rule_types_output(), tuple()} |
    {error, any()} |
    {error, list_rule_types_errors(), tuple()}.
list_rule_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_types(Client, Input, []).

-spec list_rule_types(aws_client:aws_client(), list_rule_types_input(), proplists:proplist()) ->
    {ok, list_rule_types_output(), tuple()} |
    {error, any()} |
    {error, list_rule_types_errors(), tuple()}.
list_rule_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleTypes">>, Input, Options).

%% @doc Gets the set of key-value pairs (metadata) that are used to manage
%% the
%% resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Gets a listing of all the webhooks in this Amazon Web Services Region
%% for this
%% account.
%%
%% The output lists all webhooks and includes the webhook URL and ARN and the
%% configuration for each webhook.
%%
%% If a secret token was provided, it will be redacted in the response.
-spec list_webhooks(aws_client:aws_client(), list_webhooks_input()) ->
    {ok, list_webhooks_output(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_webhooks(Client, Input, []).

-spec list_webhooks(aws_client:aws_client(), list_webhooks_input(), proplists:proplist()) ->
    {ok, list_webhooks_output(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebhooks">>, Input, Options).

%% @doc Used to override a stage condition.
%%
%% For more information about conditions, see Stage
%% conditions:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html
%% and How do
%% stage conditions work?:
%% https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html.
-spec override_stage_condition(aws_client:aws_client(), override_stage_condition_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, override_stage_condition_errors(), tuple()}.
override_stage_condition(Client, Input)
  when is_map(Client), is_map(Input) ->
    override_stage_condition(Client, Input, []).

-spec override_stage_condition(aws_client:aws_client(), override_stage_condition_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, override_stage_condition_errors(), tuple()}.
override_stage_condition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OverrideStageCondition">>, Input, Options).

%% @doc Returns information about any jobs for CodePipeline to act on.
%%
%% `PollForJobs' is valid only for action types with &quot;Custom&quot;
%% in the owner
%% field. If the action type contains `AWS' or `ThirdParty' in the
%% owner field, the `PollForJobs' action returns an error.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires
%% access to that S3 bucket for input or output artifacts. This API also
%% returns any
%% secret values defined for the action.
-spec poll_for_jobs(aws_client:aws_client(), poll_for_jobs_input()) ->
    {ok, poll_for_jobs_output(), tuple()} |
    {error, any()} |
    {error, poll_for_jobs_errors(), tuple()}.
poll_for_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_jobs(Client, Input, []).

-spec poll_for_jobs(aws_client:aws_client(), poll_for_jobs_input(), proplists:proplist()) ->
    {ok, poll_for_jobs_output(), tuple()} |
    {error, any()} |
    {error, poll_for_jobs_errors(), tuple()}.
poll_for_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForJobs">>, Input, Options).

%% @doc Determines whether there are any third party jobs for a job worker to
%% act on.
%%
%% Used
%% for partner actions only.
%%
%% When this API is called, CodePipeline returns temporary credentials for
%% the S3 bucket used to store artifacts for the pipeline, if the action
%% requires
%% access to that S3 bucket for input or output artifacts.
-spec poll_for_third_party_jobs(aws_client:aws_client(), poll_for_third_party_jobs_input()) ->
    {ok, poll_for_third_party_jobs_output(), tuple()} |
    {error, any()} |
    {error, poll_for_third_party_jobs_errors(), tuple()}.
poll_for_third_party_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_third_party_jobs(Client, Input, []).

-spec poll_for_third_party_jobs(aws_client:aws_client(), poll_for_third_party_jobs_input(), proplists:proplist()) ->
    {ok, poll_for_third_party_jobs_output(), tuple()} |
    {error, any()} |
    {error, poll_for_third_party_jobs_errors(), tuple()}.
poll_for_third_party_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForThirdPartyJobs">>, Input, Options).

%% @doc Provides information to CodePipeline about new revisions to a
%% source.
-spec put_action_revision(aws_client:aws_client(), put_action_revision_input()) ->
    {ok, put_action_revision_output(), tuple()} |
    {error, any()} |
    {error, put_action_revision_errors(), tuple()}.
put_action_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_action_revision(Client, Input, []).

-spec put_action_revision(aws_client:aws_client(), put_action_revision_input(), proplists:proplist()) ->
    {ok, put_action_revision_output(), tuple()} |
    {error, any()} |
    {error, put_action_revision_errors(), tuple()}.
put_action_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutActionRevision">>, Input, Options).

%% @doc Provides the response to a manual approval request to CodePipeline.
%%
%% Valid
%% responses include Approved and Rejected.
-spec put_approval_result(aws_client:aws_client(), put_approval_result_input()) ->
    {ok, put_approval_result_output(), tuple()} |
    {error, any()} |
    {error, put_approval_result_errors(), tuple()}.
put_approval_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_approval_result(Client, Input, []).

-spec put_approval_result(aws_client:aws_client(), put_approval_result_input(), proplists:proplist()) ->
    {ok, put_approval_result_output(), tuple()} |
    {error, any()} |
    {error, put_approval_result_errors(), tuple()}.
put_approval_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApprovalResult">>, Input, Options).

%% @doc Represents the failure of a job as returned to the pipeline by a job
%% worker.
%%
%% Used
%% for custom actions only.
-spec put_job_failure_result(aws_client:aws_client(), put_job_failure_result_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_job_failure_result_errors(), tuple()}.
put_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_failure_result(Client, Input, []).

-spec put_job_failure_result(aws_client:aws_client(), put_job_failure_result_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_job_failure_result_errors(), tuple()}.
put_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobFailureResult">>, Input, Options).

%% @doc Represents the success of a job as returned to the pipeline by a job
%% worker.
%%
%% Used
%% for custom actions only.
-spec put_job_success_result(aws_client:aws_client(), put_job_success_result_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_job_success_result_errors(), tuple()}.
put_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_job_success_result(Client, Input, []).

-spec put_job_success_result(aws_client:aws_client(), put_job_success_result_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_job_success_result_errors(), tuple()}.
put_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutJobSuccessResult">>, Input, Options).

%% @doc Represents the failure of a third party job as returned to the
%% pipeline by a job
%% worker.
%%
%% Used for partner actions only.
-spec put_third_party_job_failure_result(aws_client:aws_client(), put_third_party_job_failure_result_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_third_party_job_failure_result_errors(), tuple()}.
put_third_party_job_failure_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_failure_result(Client, Input, []).

-spec put_third_party_job_failure_result(aws_client:aws_client(), put_third_party_job_failure_result_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_third_party_job_failure_result_errors(), tuple()}.
put_third_party_job_failure_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobFailureResult">>, Input, Options).

%% @doc Represents the success of a third party job as returned to the
%% pipeline by a job
%% worker.
%%
%% Used for partner actions only.
-spec put_third_party_job_success_result(aws_client:aws_client(), put_third_party_job_success_result_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_third_party_job_success_result_errors(), tuple()}.
put_third_party_job_success_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_third_party_job_success_result(Client, Input, []).

-spec put_third_party_job_success_result(aws_client:aws_client(), put_third_party_job_success_result_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_third_party_job_success_result_errors(), tuple()}.
put_third_party_job_success_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutThirdPartyJobSuccessResult">>, Input, Options).

%% @doc Defines a webhook and returns a unique webhook URL generated by
%% CodePipeline.
%%
%% This URL can be supplied to third party source hosting providers to call
%% every time
%% there's a code change. When CodePipeline receives a POST request on
%% this URL, the
%% pipeline defined in the webhook is started as long as the POST request
%% satisfied the
%% authentication and filtering requirements supplied when defining the
%% webhook.
%% RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can
%% be used to
%% automatically configure supported third parties to call the generated
%% webhook
%% URL.
%%
%% When creating CodePipeline webhooks, do not use your own credentials or
%% reuse the same secret token across multiple webhooks. For optimal
%% security, generate
%% a unique secret token for each webhook you create. The secret token is an
%% arbitrary
%% string that you provide, which GitHub uses to compute and sign the webhook
%% payloads
%% sent to CodePipeline, for protecting the integrity and authenticity of the
%% webhook payloads. Using your own credentials or reusing the same token
%% across
%% multiple webhooks can lead to security vulnerabilities.
%%
%% If a secret token was provided, it will be redacted in the response.
-spec put_webhook(aws_client:aws_client(), put_webhook_input()) ->
    {ok, put_webhook_output(), tuple()} |
    {error, any()} |
    {error, put_webhook_errors(), tuple()}.
put_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_webhook(Client, Input, []).

-spec put_webhook(aws_client:aws_client(), put_webhook_input(), proplists:proplist()) ->
    {ok, put_webhook_output(), tuple()} |
    {error, any()} |
    {error, put_webhook_errors(), tuple()}.
put_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWebhook">>, Input, Options).

%% @doc Configures a connection between the webhook that was created and the
%% external tool
%% with events to be detected.
-spec register_webhook_with_third_party(aws_client:aws_client(), register_webhook_with_third_party_input()) ->
    {ok, register_webhook_with_third_party_output(), tuple()} |
    {error, any()} |
    {error, register_webhook_with_third_party_errors(), tuple()}.
register_webhook_with_third_party(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_webhook_with_third_party(Client, Input, []).

-spec register_webhook_with_third_party(aws_client:aws_client(), register_webhook_with_third_party_input(), proplists:proplist()) ->
    {ok, register_webhook_with_third_party_output(), tuple()} |
    {error, any()} |
    {error, register_webhook_with_third_party_errors(), tuple()}.
register_webhook_with_third_party(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWebhookWithThirdParty">>, Input, Options).

%% @doc You can retry a stage that has failed without having to run a
%% pipeline again from
%% the beginning.
%%
%% You do this by either retrying the failed actions in a stage or by
%% retrying all actions in the stage starting from the first action in the
%% stage. When you
%% retry the failed actions in a stage, all actions that are still in
%% progress continue
%% working, and failed actions are triggered again. When you retry a failed
%% stage from the
%% first action in the stage, the stage cannot have any actions in progress.
%% Before a stage
%% can be retried, it must either have all actions failed or some actions
%% failed and some
%% succeeded.
-spec retry_stage_execution(aws_client:aws_client(), retry_stage_execution_input()) ->
    {ok, retry_stage_execution_output(), tuple()} |
    {error, any()} |
    {error, retry_stage_execution_errors(), tuple()}.
retry_stage_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_stage_execution(Client, Input, []).

-spec retry_stage_execution(aws_client:aws_client(), retry_stage_execution_input(), proplists:proplist()) ->
    {ok, retry_stage_execution_output(), tuple()} |
    {error, any()} |
    {error, retry_stage_execution_errors(), tuple()}.
retry_stage_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryStageExecution">>, Input, Options).

%% @doc Rolls back a stage execution.
-spec rollback_stage(aws_client:aws_client(), rollback_stage_input()) ->
    {ok, rollback_stage_output(), tuple()} |
    {error, any()} |
    {error, rollback_stage_errors(), tuple()}.
rollback_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_stage(Client, Input, []).

-spec rollback_stage(aws_client:aws_client(), rollback_stage_input(), proplists:proplist()) ->
    {ok, rollback_stage_output(), tuple()} |
    {error, any()} |
    {error, rollback_stage_errors(), tuple()}.
rollback_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackStage">>, Input, Options).

%% @doc Starts the specified pipeline.
%%
%% Specifically, it begins processing the latest commit
%% to the source location specified as part of the pipeline.
-spec start_pipeline_execution(aws_client:aws_client(), start_pipeline_execution_input()) ->
    {ok, start_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, start_pipeline_execution_errors(), tuple()}.
start_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pipeline_execution(Client, Input, []).

-spec start_pipeline_execution(aws_client:aws_client(), start_pipeline_execution_input(), proplists:proplist()) ->
    {ok, start_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, start_pipeline_execution_errors(), tuple()}.
start_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPipelineExecution">>, Input, Options).

%% @doc Stops the specified pipeline execution.
%%
%% You choose to either stop the pipeline
%% execution by completing in-progress actions without starting subsequent
%% actions, or by
%% abandoning in-progress actions. While completing or abandoning in-progress
%% actions, the
%% pipeline execution is in a `Stopping' state. After all in-progress
%% actions
%% are completed or abandoned, the pipeline execution is in a `Stopped'
%% state.
-spec stop_pipeline_execution(aws_client:aws_client(), stop_pipeline_execution_input()) ->
    {ok, stop_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_execution_errors(), tuple()}.
stop_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pipeline_execution(Client, Input, []).

-spec stop_pipeline_execution(aws_client:aws_client(), stop_pipeline_execution_input(), proplists:proplist()) ->
    {ok, stop_pipeline_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_execution_errors(), tuple()}.
stop_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPipelineExecution">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used
%% to manage a resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Web Services resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an action type that was created with any supported
%% integration model, where
%% the action type is to be used by customers of the action type provider.
%%
%% Use a JSON file
%% with the action definition and `UpdateActionType' to provide the full
%% structure.
-spec update_action_type(aws_client:aws_client(), update_action_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_action_type_errors(), tuple()}.
update_action_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_action_type(Client, Input, []).

-spec update_action_type(aws_client:aws_client(), update_action_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_action_type_errors(), tuple()}.
update_action_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateActionType">>, Input, Options).

%% @doc Updates a specified pipeline with edits or changes to its structure.
%%
%% Use a JSON
%% file with the pipeline structure and `UpdatePipeline' to provide the
%% full
%% structure of the pipeline. Updating the pipeline increases the version
%% number of the
%% pipeline by 1.
-spec update_pipeline(aws_client:aws_client(), update_pipeline_input()) ->
    {ok, update_pipeline_output(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline(Client, Input, []).

-spec update_pipeline(aws_client:aws_client(), update_pipeline_input(), proplists:proplist()) ->
    {ok, update_pipeline_output(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
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
