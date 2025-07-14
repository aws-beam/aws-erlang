%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Simple Workflow Service
%%
%% The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
%% applications that use Amazon's cloud to
%% coordinate work across distributed components.
%%
%% In Amazon SWF, a task
%% represents a logical unit of work that is performed by a component of your
%% workflow.
%% Coordinating tasks in a workflow involves managing intertask dependencies,
%% scheduling, and
%% concurrency in accordance with the logical flow of the application.
%%
%% Amazon SWF gives you full control over implementing tasks and coordinating
%% them without
%% worrying about underlying complexities such as tracking their progress and
%% maintaining their
%% state.
%%
%% This documentation serves as reference only. For a broader overview of the
%% Amazon SWF
%% programming model, see the
%% Amazon SWF Developer Guide:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/
%% .
-module(aws_swf).

-export([count_closed_workflow_executions/2,
         count_closed_workflow_executions/3,
         count_open_workflow_executions/2,
         count_open_workflow_executions/3,
         count_pending_activity_tasks/2,
         count_pending_activity_tasks/3,
         count_pending_decision_tasks/2,
         count_pending_decision_tasks/3,
         delete_activity_type/2,
         delete_activity_type/3,
         delete_workflow_type/2,
         delete_workflow_type/3,
         deprecate_activity_type/2,
         deprecate_activity_type/3,
         deprecate_domain/2,
         deprecate_domain/3,
         deprecate_workflow_type/2,
         deprecate_workflow_type/3,
         describe_activity_type/2,
         describe_activity_type/3,
         describe_domain/2,
         describe_domain/3,
         describe_workflow_execution/2,
         describe_workflow_execution/3,
         describe_workflow_type/2,
         describe_workflow_type/3,
         get_workflow_execution_history/2,
         get_workflow_execution_history/3,
         list_activity_types/2,
         list_activity_types/3,
         list_closed_workflow_executions/2,
         list_closed_workflow_executions/3,
         list_domains/2,
         list_domains/3,
         list_open_workflow_executions/2,
         list_open_workflow_executions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workflow_types/2,
         list_workflow_types/3,
         poll_for_activity_task/2,
         poll_for_activity_task/3,
         poll_for_decision_task/2,
         poll_for_decision_task/3,
         record_activity_task_heartbeat/2,
         record_activity_task_heartbeat/3,
         register_activity_type/2,
         register_activity_type/3,
         register_domain/2,
         register_domain/3,
         register_workflow_type/2,
         register_workflow_type/3,
         request_cancel_workflow_execution/2,
         request_cancel_workflow_execution/3,
         respond_activity_task_canceled/2,
         respond_activity_task_canceled/3,
         respond_activity_task_completed/2,
         respond_activity_task_completed/3,
         respond_activity_task_failed/2,
         respond_activity_task_failed/3,
         respond_decision_task_completed/2,
         respond_decision_task_completed/3,
         signal_workflow_execution/2,
         signal_workflow_execution/3,
         start_workflow_execution/2,
         start_workflow_execution/3,
         tag_resource/2,
         tag_resource/3,
         terminate_workflow_execution/2,
         terminate_workflow_execution/3,
         undeprecate_activity_type/2,
         undeprecate_activity_type/3,
         undeprecate_domain/2,
         undeprecate_domain/3,
         undeprecate_workflow_type/2,
         undeprecate_workflow_type/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% workflow_execution_infos() :: #{
%%   <<"executionInfos">> => list(workflow_execution_info()),
%%   <<"nextPageToken">> => string()
%% }
-type workflow_execution_infos() :: #{binary() => any()}.

%% Example:
%% respond_decision_task_completed_input() :: #{
%%   <<"decisions">> => list(decision()),
%%   <<"executionContext">> => string(),
%%   <<"taskList">> => task_list(),
%%   <<"taskListScheduleToStartTimeout">> => string(),
%%   <<"taskToken">> := string()
%% }
-type respond_decision_task_completed_input() :: #{binary() => any()}.

%% Example:
%% workflow_type_detail() :: #{
%%   <<"configuration">> => workflow_type_configuration(),
%%   <<"typeInfo">> => workflow_type_info()
%% }
-type workflow_type_detail() :: #{binary() => any()}.

%% Example:
%% timer_canceled_event_attributes() :: #{
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"timerId">> => string()
%% }
-type timer_canceled_event_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_cancel_requested_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"externalInitiatedEventId">> => float(),
%%   <<"externalWorkflowExecution">> => workflow_execution()
%% }
-type workflow_execution_cancel_requested_event_attributes() :: #{binary() => any()}.

%% Example:
%% activity_task_status() :: #{
%%   <<"cancelRequested">> => boolean()
%% }
-type activity_task_status() :: #{binary() => any()}.

%% Example:
%% undeprecate_workflow_type_input() :: #{
%%   <<"domain">> := string(),
%%   <<"workflowType">> := workflow_type()
%% }
-type undeprecate_workflow_type_input() :: #{binary() => any()}.

%% Example:
%% activity_task_scheduled_event_attributes() :: #{
%%   <<"activityId">> => string(),
%%   <<"activityType">> => activity_type(),
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"heartbeatTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"scheduleToCloseTimeout">> => string(),
%%   <<"scheduleToStartTimeout">> => string(),
%%   <<"startToCloseTimeout">> => string(),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string()
%% }
-type activity_task_scheduled_event_attributes() :: #{binary() => any()}.

%% Example:
%% count_closed_workflow_executions_input() :: #{
%%   <<"closeStatusFilter">> => close_status_filter(),
%%   <<"closeTimeFilter">> => execution_time_filter(),
%%   <<"domain">> := string(),
%%   <<"executionFilter">> => workflow_execution_filter(),
%%   <<"startTimeFilter">> => execution_time_filter(),
%%   <<"tagFilter">> => tag_filter(),
%%   <<"typeFilter">> => workflow_type_filter()
%% }
-type count_closed_workflow_executions_input() :: #{binary() => any()}.

%% Example:
%% activity_type_configuration() :: #{
%%   <<"defaultTaskHeartbeatTimeout">> => string(),
%%   <<"defaultTaskList">> => task_list(),
%%   <<"defaultTaskPriority">> => string(),
%%   <<"defaultTaskScheduleToCloseTimeout">> => string(),
%%   <<"defaultTaskScheduleToStartTimeout">> => string(),
%%   <<"defaultTaskStartToCloseTimeout">> => string()
%% }
-type activity_type_configuration() :: #{binary() => any()}.

%% Example:
%% lambda_function_completed_event_attributes() :: #{
%%   <<"result">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float()
%% }
-type lambda_function_completed_event_attributes() :: #{binary() => any()}.

%% Example:
%% start_child_workflow_execution_decision_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"control">> => string(),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowId">> => string(),
%%   <<"workflowType">> => workflow_type()
%% }
-type start_child_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_timed_out_event_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"timeoutType">> => list(any())
%% }
-type workflow_execution_timed_out_event_attributes() :: #{binary() => any()}.

%% Example:
%% poll_for_decision_task_input() :: #{
%%   <<"domain">> := string(),
%%   <<"identity">> => string(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"nextPageToken">> => string(),
%%   <<"reverseOrder">> => boolean(),
%%   <<"startAtPreviousStartedEvent">> => boolean(),
%%   <<"taskList">> := task_list()
%% }
-type poll_for_decision_task_input() :: #{binary() => any()}.

%% Example:
%% describe_workflow_execution_input() :: #{
%%   <<"domain">> := string(),
%%   <<"execution">> := workflow_execution()
%% }
-type describe_workflow_execution_input() :: #{binary() => any()}.

%% Example:
%% close_status_filter() :: #{
%%   <<"status">> => list(any())
%% }
-type close_status_filter() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_canceled_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"initiatedEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_canceled_event_attributes() :: #{binary() => any()}.

%% Example:
%% register_activity_type_input() :: #{
%%   <<"defaultTaskHeartbeatTimeout">> => string(),
%%   <<"defaultTaskList">> => task_list(),
%%   <<"defaultTaskPriority">> => string(),
%%   <<"defaultTaskScheduleToCloseTimeout">> => string(),
%%   <<"defaultTaskScheduleToStartTimeout">> => string(),
%%   <<"defaultTaskStartToCloseTimeout">> => string(),
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"name">> := string(),
%%   <<"version">> := string()
%% }
-type register_activity_type_input() :: #{binary() => any()}.

%% Example:
%% workflow_execution_count() :: #{
%%   <<"count">> => integer(),
%%   <<"truncated">> => boolean()
%% }
-type workflow_execution_count() :: #{binary() => any()}.

%% Example:
%% workflow_execution_started_event_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"continuedExecutionRunId">> => string(),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"parentInitiatedEventId">> => float(),
%%   <<"parentWorkflowExecution">> => workflow_execution(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowType">> => workflow_type()
%% }
-type workflow_execution_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% workflow_type_filter() :: #{
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type workflow_type_filter() :: #{binary() => any()}.

%% Example:
%% request_cancel_activity_task_decision_attributes() :: #{
%%   <<"activityId">> => string()
%% }
-type request_cancel_activity_task_decision_attributes() :: #{binary() => any()}.

%% Example:
%% cancel_workflow_execution_decision_attributes() :: #{
%%   <<"details">> => string()
%% }
-type cancel_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% complete_workflow_execution_decision_attributes() :: #{
%%   <<"result">> => string()
%% }
-type complete_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% external_workflow_execution_signaled_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution()
%% }
-type external_workflow_execution_signaled_event_attributes() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_completed_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"result">> => string(),
%%   <<"startedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_completed_event_attributes() :: #{binary() => any()}.

%% Example:
%% decision_task_timed_out_event_attributes() :: #{
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"timeoutType">> => list(any())
%% }
-type decision_task_timed_out_event_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_canceled_event_attributes() :: #{
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"details">> => string()
%% }
-type workflow_execution_canceled_event_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_configuration() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string()
%% }
-type workflow_execution_configuration() :: #{binary() => any()}.

%% Example:
%% workflow_type_infos() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"typeInfos">> => list(workflow_type_info())
%% }
-type workflow_type_infos() :: #{binary() => any()}.

%% Example:
%% workflow_execution_already_started_fault() :: #{
%%   <<"message">> => string()
%% }
-type workflow_execution_already_started_fault() :: #{binary() => any()}.

%% Example:
%% list_workflow_types_input() :: #{
%%   <<"domain">> := string(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextPageToken">> => string(),
%%   <<"registrationStatus">> := list(any()),
%%   <<"reverseOrder">> => boolean()
%% }
-type list_workflow_types_input() :: #{binary() => any()}.

%% Example:
%% activity_task_canceled_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"latestCancelRequestedEventId">> => float(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float()
%% }
-type activity_task_canceled_event_attributes() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => list(resource_tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% schedule_lambda_function_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type schedule_lambda_function_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% respond_activity_task_failed_input() :: #{
%%   <<"details">> => string(),
%%   <<"reason">> => string(),
%%   <<"taskToken">> := string()
%% }
-type respond_activity_task_failed_input() :: #{binary() => any()}.

%% Example:
%% execution_time_filter() :: #{
%%   <<"latestDate">> => non_neg_integer(),
%%   <<"oldestDate">> => non_neg_integer()
%% }
-type execution_time_filter() :: #{binary() => any()}.

%% Example:
%% cancel_timer_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"timerId">> => string()
%% }
-type cancel_timer_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% start_timer_decision_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"startToFireTimeout">> => string(),
%%   <<"timerId">> => string()
%% }
-type start_timer_decision_attributes() :: #{binary() => any()}.

%% Example:
%% type_not_deprecated_fault() :: #{
%%   <<"message">> => string()
%% }
-type type_not_deprecated_fault() :: #{binary() => any()}.

%% Example:
%% workflow_type_configuration() :: #{
%%   <<"defaultChildPolicy">> => list(any()),
%%   <<"defaultExecutionStartToCloseTimeout">> => string(),
%%   <<"defaultLambdaRole">> => string(),
%%   <<"defaultTaskList">> => task_list(),
%%   <<"defaultTaskPriority">> => string(),
%%   <<"defaultTaskStartToCloseTimeout">> => string()
%% }
-type workflow_type_configuration() :: #{binary() => any()}.

%% Example:
%% register_domain_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(resource_tag()),
%%   <<"workflowExecutionRetentionPeriodInDays">> := string()
%% }
-type register_domain_input() :: #{binary() => any()}.

%% Example:
%% undeprecate_domain_input() :: #{
%%   <<"name">> := string()
%% }
-type undeprecate_domain_input() :: #{binary() => any()}.

%% Example:
%% poll_for_activity_task_input() :: #{
%%   <<"domain">> := string(),
%%   <<"identity">> => string(),
%%   <<"taskList">> := task_list()
%% }
-type poll_for_activity_task_input() :: #{binary() => any()}.

%% Example:
%% lambda_function_scheduled_event_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"id">> => string(),
%%   <<"input">> => string(),
%%   <<"name">> => string(),
%%   <<"startToCloseTimeout">> => string()
%% }
-type lambda_function_scheduled_event_attributes() :: #{binary() => any()}.

%% Example:
%% request_cancel_external_workflow_execution_decision_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string()
%% }
-type request_cancel_external_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% continue_as_new_workflow_execution_decision_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowTypeVersion">> => string()
%% }
-type continue_as_new_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% lambda_function_timed_out_event_attributes() :: #{
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"timeoutType">> => list(any())
%% }
-type lambda_function_timed_out_event_attributes() :: #{binary() => any()}.

%% Example:
%% record_activity_task_heartbeat_input() :: #{
%%   <<"details">> => string(),
%%   <<"taskToken">> := string()
%% }
-type record_activity_task_heartbeat_input() :: #{binary() => any()}.

%% Example:
%% terminate_workflow_execution_input() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"details">> => string(),
%%   <<"domain">> := string(),
%%   <<"reason">> => string(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> := string()
%% }
-type terminate_workflow_execution_input() :: #{binary() => any()}.

%% Example:
%% respond_activity_task_completed_input() :: #{
%%   <<"result">> => string(),
%%   <<"taskToken">> := string()
%% }
-type respond_activity_task_completed_input() :: #{binary() => any()}.

%% Example:
%% list_open_workflow_executions_input() :: #{
%%   <<"domain">> := string(),
%%   <<"executionFilter">> => workflow_execution_filter(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"nextPageToken">> => string(),
%%   <<"reverseOrder">> => boolean(),
%%   <<"startTimeFilter">> := execution_time_filter(),
%%   <<"tagFilter">> => tag_filter(),
%%   <<"typeFilter">> => workflow_type_filter()
%% }
-type list_open_workflow_executions_input() :: #{binary() => any()}.

%% Example:
%% workflow_execution() :: #{
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string()
%% }
-type workflow_execution() :: #{binary() => any()}.

%% Example:
%% deprecate_domain_input() :: #{
%%   <<"name">> := string()
%% }
-type deprecate_domain_input() :: #{binary() => any()}.

%% Example:
%% register_workflow_type_input() :: #{
%%   <<"defaultChildPolicy">> => list(any()),
%%   <<"defaultExecutionStartToCloseTimeout">> => string(),
%%   <<"defaultLambdaRole">> => string(),
%%   <<"defaultTaskList">> => task_list(),
%%   <<"defaultTaskPriority">> => string(),
%%   <<"defaultTaskStartToCloseTimeout">> => string(),
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"name">> := string(),
%%   <<"version">> := string()
%% }
-type register_workflow_type_input() :: #{binary() => any()}.

%% Example:
%% decision() :: #{
%%   <<"cancelTimerDecisionAttributes">> => cancel_timer_decision_attributes(),
%%   <<"cancelWorkflowExecutionDecisionAttributes">> => cancel_workflow_execution_decision_attributes(),
%%   <<"completeWorkflowExecutionDecisionAttributes">> => complete_workflow_execution_decision_attributes(),
%%   <<"continueAsNewWorkflowExecutionDecisionAttributes">> => continue_as_new_workflow_execution_decision_attributes(),
%%   <<"decisionType">> => list(any()),
%%   <<"failWorkflowExecutionDecisionAttributes">> => fail_workflow_execution_decision_attributes(),
%%   <<"recordMarkerDecisionAttributes">> => record_marker_decision_attributes(),
%%   <<"requestCancelActivityTaskDecisionAttributes">> => request_cancel_activity_task_decision_attributes(),
%%   <<"requestCancelExternalWorkflowExecutionDecisionAttributes">> => request_cancel_external_workflow_execution_decision_attributes(),
%%   <<"scheduleActivityTaskDecisionAttributes">> => schedule_activity_task_decision_attributes(),
%%   <<"scheduleLambdaFunctionDecisionAttributes">> => schedule_lambda_function_decision_attributes(),
%%   <<"signalExternalWorkflowExecutionDecisionAttributes">> => signal_external_workflow_execution_decision_attributes(),
%%   <<"startChildWorkflowExecutionDecisionAttributes">> => start_child_workflow_execution_decision_attributes(),
%%   <<"startTimerDecisionAttributes">> => start_timer_decision_attributes()
%% }
-type decision() :: #{binary() => any()}.

%% Example:
%% workflow_type_info() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"deprecationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"status">> => list(any()),
%%   <<"workflowType">> => workflow_type()
%% }
-type workflow_type_info() :: #{binary() => any()}.

%% Example:
%% lambda_function_started_event_attributes() :: #{
%%   <<"scheduledEventId">> => float()
%% }
-type lambda_function_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_failed_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"initiatedEventId">> => float(),
%%   <<"reason">> => string(),
%%   <<"startedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% decision_task_started_event_attributes() :: #{
%%   <<"identity">> => string(),
%%   <<"scheduledEventId">> => float()
%% }
-type decision_task_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% pending_task_count() :: #{
%%   <<"count">> => integer(),
%%   <<"truncated">> => boolean()
%% }
-type pending_task_count() :: #{binary() => any()}.

%% Example:
%% list_closed_workflow_executions_input() :: #{
%%   <<"closeStatusFilter">> => close_status_filter(),
%%   <<"closeTimeFilter">> => execution_time_filter(),
%%   <<"domain">> := string(),
%%   <<"executionFilter">> => workflow_execution_filter(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"nextPageToken">> => string(),
%%   <<"reverseOrder">> => boolean(),
%%   <<"startTimeFilter">> => execution_time_filter(),
%%   <<"tagFilter">> => tag_filter(),
%%   <<"typeFilter">> => workflow_type_filter()
%% }
-type list_closed_workflow_executions_input() :: #{binary() => any()}.

%% Example:
%% decision_task_completed_event_attributes() :: #{
%%   <<"executionContext">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"taskList">> => task_list(),
%%   <<"taskListScheduleToStartTimeout">> => string()
%% }
-type decision_task_completed_event_attributes() :: #{binary() => any()}.

%% Example:
%% signal_external_workflow_execution_initiated_event_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"input">> => string(),
%%   <<"runId">> => string(),
%%   <<"signalName">> => string(),
%%   <<"workflowId">> => string()
%% }
-type signal_external_workflow_execution_initiated_event_attributes() :: #{binary() => any()}.

%% Example:
%% record_marker_decision_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"markerName">> => string()
%% }
-type record_marker_decision_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_terminated_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"childPolicy">> => list(any()),
%%   <<"details">> => string(),
%%   <<"reason">> => string()
%% }
-type workflow_execution_terminated_event_attributes() :: #{binary() => any()}.

%% Example:
%% start_workflow_execution_input() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"domain">> := string(),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowId">> := string(),
%%   <<"workflowType">> := workflow_type()
%% }
-type start_workflow_execution_input() :: #{binary() => any()}.

%% Example:
%% activity_task_timed_out_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"timeoutType">> => list(any())
%% }
-type activity_task_timed_out_event_attributes() :: #{binary() => any()}.

%% Example:
%% continue_as_new_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type continue_as_new_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% fail_workflow_execution_decision_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"reason">> => string()
%% }
-type fail_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% complete_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type complete_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% task_list() :: #{
%%   <<"name">> => string()
%% }
-type task_list() :: #{binary() => any()}.

%% Example:
%% deprecate_activity_type_input() :: #{
%%   <<"activityType">> := activity_type(),
%%   <<"domain">> := string()
%% }
-type deprecate_activity_type_input() :: #{binary() => any()}.

%% Example:
%% cancel_timer_decision_attributes() :: #{
%%   <<"timerId">> => string()
%% }
-type cancel_timer_decision_attributes() :: #{binary() => any()}.

%% Example:
%% decision_task() :: #{
%%   <<"events">> => list(history_event()),
%%   <<"nextPageToken">> => string(),
%%   <<"previousStartedEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"taskToken">> => string(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type decision_task() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_timed_out_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"timeoutType">> => list(any()),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_timed_out_event_attributes() :: #{binary() => any()}.

%% Example:
%% fail_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type fail_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% schedule_activity_task_decision_attributes() :: #{
%%   <<"activityId">> => string(),
%%   <<"activityType">> => activity_type(),
%%   <<"control">> => string(),
%%   <<"heartbeatTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"scheduleToCloseTimeout">> => string(),
%%   <<"scheduleToStartTimeout">> => string(),
%%   <<"startToCloseTimeout">> => string(),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string()
%% }
-type schedule_activity_task_decision_attributes() :: #{binary() => any()}.

%% Example:
%% signal_external_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"initiatedEventId">> => float(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string()
%% }
-type signal_external_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% type_deprecated_fault() :: #{
%%   <<"message">> => string()
%% }
-type type_deprecated_fault() :: #{binary() => any()}.

%% Example:
%% request_cancel_activity_task_failed_event_attributes() :: #{
%%   <<"activityId">> => string(),
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type request_cancel_activity_task_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% schedule_activity_task_failed_event_attributes() :: #{
%%   <<"activityId">> => string(),
%%   <<"activityType">> => activity_type(),
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type schedule_activity_task_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_detail() :: #{
%%   <<"executionConfiguration">> => workflow_execution_configuration(),
%%   <<"executionInfo">> => workflow_execution_info(),
%%   <<"latestActivityTaskTimestamp">> => non_neg_integer(),
%%   <<"latestExecutionContext">> => string(),
%%   <<"openCounts">> => workflow_execution_open_counts()
%% }
-type workflow_execution_detail() :: #{binary() => any()}.

%% Example:
%% workflow_execution_failed_event_attributes() :: #{
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"details">> => string(),
%%   <<"reason">> => string()
%% }
-type workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% count_open_workflow_executions_input() :: #{
%%   <<"domain">> := string(),
%%   <<"executionFilter">> => workflow_execution_filter(),
%%   <<"startTimeFilter">> := execution_time_filter(),
%%   <<"tagFilter">> => tag_filter(),
%%   <<"typeFilter">> => workflow_type_filter()
%% }
-type count_open_workflow_executions_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(resource_tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% workflow_type() :: #{
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type workflow_type() :: #{binary() => any()}.

%% Example:
%% workflow_execution_info() :: #{
%%   <<"cancelRequested">> => boolean(),
%%   <<"closeStatus">> => list(any()),
%%   <<"closeTimestamp">> => non_neg_integer(),
%%   <<"execution">> => workflow_execution(),
%%   <<"executionStatus">> => list(any()),
%%   <<"parent">> => workflow_execution(),
%%   <<"startTimestamp">> => non_neg_integer(),
%%   <<"tagList">> => list(string()),
%%   <<"workflowType">> => workflow_type()
%% }
-type workflow_execution_info() :: #{binary() => any()}.

%% Example:
%% activity_task() :: #{
%%   <<"activityId">> => string(),
%%   <<"activityType">> => activity_type(),
%%   <<"input">> => string(),
%%   <<"startedEventId">> => float(),
%%   <<"taskToken">> => string(),
%%   <<"workflowExecution">> => workflow_execution()
%% }
-type activity_task() :: #{binary() => any()}.

%% Example:
%% history_event() :: #{
%%   <<"startChildWorkflowExecutionFailedEventAttributes">> => start_child_workflow_execution_failed_event_attributes(),
%%   <<"timerStartedEventAttributes">> => timer_started_event_attributes(),
%%   <<"childWorkflowExecutionStartedEventAttributes">> => child_workflow_execution_started_event_attributes(),
%%   <<"workflowExecutionFailedEventAttributes">> => workflow_execution_failed_event_attributes(),
%%   <<"requestCancelActivityTaskFailedEventAttributes">> => request_cancel_activity_task_failed_event_attributes(),
%%   <<"activityTaskStartedEventAttributes">> => activity_task_started_event_attributes(),
%%   <<"externalWorkflowExecutionCancelRequestedEventAttributes">> => external_workflow_execution_cancel_requested_event_attributes(),
%%   <<"activityTaskScheduledEventAttributes">> => activity_task_scheduled_event_attributes(),
%%   <<"workflowExecutionCanceledEventAttributes">> => workflow_execution_canceled_event_attributes(),
%%   <<"timerCanceledEventAttributes">> => timer_canceled_event_attributes(),
%%   <<"decisionTaskTimedOutEventAttributes">> => decision_task_timed_out_event_attributes(),
%%   <<"lambdaFunctionScheduledEventAttributes">> => lambda_function_scheduled_event_attributes(),
%%   <<"childWorkflowExecutionFailedEventAttributes">> => child_workflow_execution_failed_event_attributes(),
%%   <<"decisionTaskStartedEventAttributes">> => decision_task_started_event_attributes(),
%%   <<"lambdaFunctionTimedOutEventAttributes">> => lambda_function_timed_out_event_attributes(),
%%   <<"requestCancelExternalWorkflowExecutionFailedEventAttributes">> => request_cancel_external_workflow_execution_failed_event_attributes(),
%%   <<"decisionTaskScheduledEventAttributes">> => decision_task_scheduled_event_attributes(),
%%   <<"scheduleActivityTaskFailedEventAttributes">> => schedule_activity_task_failed_event_attributes(),
%%   <<"cancelTimerFailedEventAttributes">> => cancel_timer_failed_event_attributes(),
%%   <<"workflowExecutionCancelRequestedEventAttributes">> => workflow_execution_cancel_requested_event_attributes(),
%%   <<"eventTimestamp">> => non_neg_integer(),
%%   <<"markerRecordedEventAttributes">> => marker_recorded_event_attributes(),
%%   <<"signalExternalWorkflowExecutionInitiatedEventAttributes">> => signal_external_workflow_execution_initiated_event_attributes(),
%%   <<"childWorkflowExecutionTimedOutEventAttributes">> => child_workflow_execution_timed_out_event_attributes(),
%%   <<"scheduleLambdaFunctionFailedEventAttributes">> => schedule_lambda_function_failed_event_attributes(),
%%   <<"lambdaFunctionCompletedEventAttributes">> => lambda_function_completed_event_attributes(),
%%   <<"childWorkflowExecutionTerminatedEventAttributes">> => child_workflow_execution_terminated_event_attributes(),
%%   <<"continueAsNewWorkflowExecutionFailedEventAttributes">> => continue_as_new_workflow_execution_failed_event_attributes(),
%%   <<"activityTaskTimedOutEventAttributes">> => activity_task_timed_out_event_attributes(),
%%   <<"lambdaFunctionStartedEventAttributes">> => lambda_function_started_event_attributes(),
%%   <<"externalWorkflowExecutionSignaledEventAttributes">> => external_workflow_execution_signaled_event_attributes(),
%%   <<"workflowExecutionTerminatedEventAttributes">> => workflow_execution_terminated_event_attributes(),
%%   <<"workflowExecutionSignaledEventAttributes">> => workflow_execution_signaled_event_attributes(),
%%   <<"workflowExecutionContinuedAsNewEventAttributes">> => workflow_execution_continued_as_new_event_attributes(),
%%   <<"decisionTaskCompletedEventAttributes">> => decision_task_completed_event_attributes(),
%%   <<"activityTaskCompletedEventAttributes">> => activity_task_completed_event_attributes(),
%%   <<"startChildWorkflowExecutionInitiatedEventAttributes">> => start_child_workflow_execution_initiated_event_attributes(),
%%   <<"requestCancelExternalWorkflowExecutionInitiatedEventAttributes">> => request_cancel_external_workflow_execution_initiated_event_attributes(),
%%   <<"timerFiredEventAttributes">> => timer_fired_event_attributes(),
%%   <<"eventType">> => list(any()),
%%   <<"failWorkflowExecutionFailedEventAttributes">> => fail_workflow_execution_failed_event_attributes(),
%%   <<"recordMarkerFailedEventAttributes">> => record_marker_failed_event_attributes(),
%%   <<"activityTaskFailedEventAttributes">> => activity_task_failed_event_attributes(),
%%   <<"activityTaskCancelRequestedEventAttributes">> => activity_task_cancel_requested_event_attributes(),
%%   <<"signalExternalWorkflowExecutionFailedEventAttributes">> => signal_external_workflow_execution_failed_event_attributes(),
%%   <<"childWorkflowExecutionCompletedEventAttributes">> => child_workflow_execution_completed_event_attributes(),
%%   <<"childWorkflowExecutionCanceledEventAttributes">> => child_workflow_execution_canceled_event_attributes(),
%%   <<"workflowExecutionCompletedEventAttributes">> => workflow_execution_completed_event_attributes(),
%%   <<"workflowExecutionTimedOutEventAttributes">> => workflow_execution_timed_out_event_attributes(),
%%   <<"cancelWorkflowExecutionFailedEventAttributes">> => cancel_workflow_execution_failed_event_attributes(),
%%   <<"eventId">> => float(),
%%   <<"completeWorkflowExecutionFailedEventAttributes">> => complete_workflow_execution_failed_event_attributes(),
%%   <<"activityTaskCanceledEventAttributes">> => activity_task_canceled_event_attributes(),
%%   <<"lambdaFunctionFailedEventAttributes">> => lambda_function_failed_event_attributes(),
%%   <<"startLambdaFunctionFailedEventAttributes">> => start_lambda_function_failed_event_attributes(),
%%   <<"startTimerFailedEventAttributes">> => start_timer_failed_event_attributes(),
%%   <<"workflowExecutionStartedEventAttributes">> => workflow_execution_started_event_attributes()
%% }
-type history_event() :: #{binary() => any()}.

%% Example:
%% domain_configuration() :: #{
%%   <<"workflowExecutionRetentionPeriodInDays">> => string()
%% }
-type domain_configuration() :: #{binary() => any()}.

%% Example:
%% schedule_lambda_function_decision_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"id">> => string(),
%%   <<"input">> => string(),
%%   <<"name">> => string(),
%%   <<"startToCloseTimeout">> => string()
%% }
-type schedule_lambda_function_decision_attributes() :: #{binary() => any()}.

%% Example:
%% request_cancel_workflow_execution_input() :: #{
%%   <<"domain">> := string(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> := string()
%% }
-type request_cancel_workflow_execution_input() :: #{binary() => any()}.

%% Example:
%% start_timer_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"timerId">> => string()
%% }
-type start_timer_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% domain_info() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type domain_info() :: #{binary() => any()}.

%% Example:
%% timer_fired_event_attributes() :: #{
%%   <<"startedEventId">> => float(),
%%   <<"timerId">> => string()
%% }
-type timer_fired_event_attributes() :: #{binary() => any()}.

%% Example:
%% respond_activity_task_canceled_input() :: #{
%%   <<"details">> => string(),
%%   <<"taskToken">> := string()
%% }
-type respond_activity_task_canceled_input() :: #{binary() => any()}.

%% Example:
%% list_activity_types_input() :: #{
%%   <<"domain">> := string(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextPageToken">> => string(),
%%   <<"registrationStatus">> := list(any()),
%%   <<"reverseOrder">> => boolean()
%% }
-type list_activity_types_input() :: #{binary() => any()}.

%% Example:
%% domain_detail() :: #{
%%   <<"configuration">> => domain_configuration(),
%%   <<"domainInfo">> => domain_info()
%% }
-type domain_detail() :: #{binary() => any()}.

%% Example:
%% unknown_resource_fault() :: #{
%%   <<"message">> => string()
%% }
-type unknown_resource_fault() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% activity_type() :: #{
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type activity_type() :: #{binary() => any()}.

%% Example:
%% activity_type_infos() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"typeInfos">> => list(activity_type_info())
%% }
-type activity_type_infos() :: #{binary() => any()}.

%% Example:
%% too_many_tags_fault() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_fault() :: #{binary() => any()}.

%% Example:
%% lambda_function_failed_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"reason">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float()
%% }
-type lambda_function_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% domain_infos() :: #{
%%   <<"domainInfos">> => list(domain_info()),
%%   <<"nextPageToken">> => string()
%% }
-type domain_infos() :: #{binary() => any()}.

%% Example:
%% workflow_execution_filter() :: #{
%%   <<"workflowId">> => string()
%% }
-type workflow_execution_filter() :: #{binary() => any()}.

%% Example:
%% workflow_execution_completed_event_attributes() :: #{
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"result">> => string()
%% }
-type workflow_execution_completed_event_attributes() :: #{binary() => any()}.

%% Example:
%% signal_workflow_execution_input() :: #{
%%   <<"domain">> := string(),
%%   <<"input">> => string(),
%%   <<"runId">> => string(),
%%   <<"signalName">> := string(),
%%   <<"workflowId">> := string()
%% }
-type signal_workflow_execution_input() :: #{binary() => any()}.

%% Example:
%% request_cancel_external_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"initiatedEventId">> => float(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string()
%% }
-type request_cancel_external_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_fault() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_permitted_fault() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_domain_input() :: #{
%%   <<"name">> := string()
%% }
-type describe_domain_input() :: #{binary() => any()}.

%% Example:
%% activity_type_info() :: #{
%%   <<"activityType">> => activity_type(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"deprecationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"status">> => list(any())
%% }
-type activity_type_info() :: #{binary() => any()}.

%% Example:
%% request_cancel_external_workflow_execution_initiated_event_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string()
%% }
-type request_cancel_external_workflow_execution_initiated_event_attributes() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% external_workflow_execution_cancel_requested_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution()
%% }
-type external_workflow_execution_cancel_requested_event_attributes() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_terminated_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"startedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_terminated_event_attributes() :: #{binary() => any()}.

%% Example:
%% domain_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type domain_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% activity_task_completed_event_attributes() :: #{
%%   <<"result">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float()
%% }
-type activity_task_completed_event_attributes() :: #{binary() => any()}.

%% Example:
%% decision_task_scheduled_event_attributes() :: #{
%%   <<"scheduleToStartTimeout">> => string(),
%%   <<"startToCloseTimeout">> => string(),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string()
%% }
-type decision_task_scheduled_event_attributes() :: #{binary() => any()}.

%% Example:
%% count_pending_decision_tasks_input() :: #{
%%   <<"domain">> := string(),
%%   <<"taskList">> := task_list()
%% }
-type count_pending_decision_tasks_input() :: #{binary() => any()}.

%% Example:
%% activity_task_started_event_attributes() :: #{
%%   <<"identity">> => string(),
%%   <<"scheduledEventId">> => float()
%% }
-type activity_task_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% start_child_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"initiatedEventId">> => float(),
%%   <<"workflowId">> => string(),
%%   <<"workflowType">> => workflow_type()
%% }
-type start_child_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% count_pending_activity_tasks_input() :: #{
%%   <<"domain">> := string(),
%%   <<"taskList">> := task_list()
%% }
-type count_pending_activity_tasks_input() :: #{binary() => any()}.

%% Example:
%% undeprecate_activity_type_input() :: #{
%%   <<"activityType">> := activity_type(),
%%   <<"domain">> := string()
%% }
-type undeprecate_activity_type_input() :: #{binary() => any()}.

%% Example:
%% timer_started_event_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"startToFireTimeout">> => string(),
%%   <<"timerId">> => string()
%% }
-type timer_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% activity_task_cancel_requested_event_attributes() :: #{
%%   <<"activityId">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type activity_task_cancel_requested_event_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_open_counts() :: #{
%%   <<"openActivityTasks">> => integer(),
%%   <<"openChildWorkflowExecutions">> => integer(),
%%   <<"openDecisionTasks">> => integer(),
%%   <<"openLambdaFunctions">> => integer(),
%%   <<"openTimers">> => integer()
%% }
-type workflow_execution_open_counts() :: #{binary() => any()}.

%% Example:
%% describe_activity_type_input() :: #{
%%   <<"activityType">> := activity_type(),
%%   <<"domain">> := string()
%% }
-type describe_activity_type_input() :: #{binary() => any()}.

%% Example:
%% workflow_execution_continued_as_new_event_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"newExecutionRunId">> => string(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowType">> => workflow_type()
%% }
-type workflow_execution_continued_as_new_event_attributes() :: #{binary() => any()}.

%% Example:
%% marker_recorded_event_attributes() :: #{
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"details">> => string(),
%%   <<"markerName">> => string()
%% }
-type marker_recorded_event_attributes() :: #{binary() => any()}.

%% Example:
%% record_marker_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"markerName">> => string()
%% }
-type record_marker_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% start_lambda_function_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"message">> => string(),
%%   <<"scheduledEventId">> => float()
%% }
-type start_lambda_function_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% history() :: #{
%%   <<"events">> => list(history_event()),
%%   <<"nextPageToken">> => string()
%% }
-type history() :: #{binary() => any()}.

%% Example:
%% activity_type_detail() :: #{
%%   <<"configuration">> => activity_type_configuration(),
%%   <<"typeInfo">> => activity_type_info()
%% }
-type activity_type_detail() :: #{binary() => any()}.

%% Example:
%% deprecate_workflow_type_input() :: #{
%%   <<"domain">> := string(),
%%   <<"workflowType">> := workflow_type()
%% }
-type deprecate_workflow_type_input() :: #{binary() => any()}.

%% Example:
%% start_child_workflow_execution_initiated_event_attributes() :: #{
%%   <<"childPolicy">> => list(any()),
%%   <<"control">> => string(),
%%   <<"decisionTaskCompletedEventId">> => float(),
%%   <<"executionStartToCloseTimeout">> => string(),
%%   <<"input">> => string(),
%%   <<"lambdaRole">> => string(),
%%   <<"tagList">> => list(string()),
%%   <<"taskList">> => task_list(),
%%   <<"taskPriority">> => string(),
%%   <<"taskStartToCloseTimeout">> => string(),
%%   <<"workflowId">> => string(),
%%   <<"workflowType">> => workflow_type()
%% }
-type start_child_workflow_execution_initiated_event_attributes() :: #{binary() => any()}.

%% Example:
%% type_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type type_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% tag_filter() :: #{
%%   <<"tag">> => string()
%% }
-type tag_filter() :: #{binary() => any()}.

%% Example:
%% cancel_workflow_execution_failed_event_attributes() :: #{
%%   <<"cause">> => list(any()),
%%   <<"decisionTaskCompletedEventId">> => float()
%% }
-type cancel_workflow_execution_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% get_workflow_execution_history_input() :: #{
%%   <<"domain">> := string(),
%%   <<"execution">> := workflow_execution(),
%%   <<"maximumPageSize">> => integer(),
%%   <<"nextPageToken">> => string(),
%%   <<"reverseOrder">> => boolean()
%% }
-type get_workflow_execution_history_input() :: #{binary() => any()}.

%% Example:
%% list_domains_input() :: #{
%%   <<"maximumPageSize">> => integer(),
%%   <<"nextPageToken">> => string(),
%%   <<"registrationStatus">> := list(any()),
%%   <<"reverseOrder">> => boolean()
%% }
-type list_domains_input() :: #{binary() => any()}.

%% Example:
%% signal_external_workflow_execution_decision_attributes() :: #{
%%   <<"control">> => string(),
%%   <<"input">> => string(),
%%   <<"runId">> => string(),
%%   <<"signalName">> => string(),
%%   <<"workflowId">> => string()
%% }
-type signal_external_workflow_execution_decision_attributes() :: #{binary() => any()}.

%% Example:
%% workflow_execution_signaled_event_attributes() :: #{
%%   <<"externalInitiatedEventId">> => float(),
%%   <<"externalWorkflowExecution">> => workflow_execution(),
%%   <<"input">> => string(),
%%   <<"signalName">> => string()
%% }
-type workflow_execution_signaled_event_attributes() :: #{binary() => any()}.

%% Example:
%% domain_deprecated_fault() :: #{
%%   <<"message">> => string()
%% }
-type domain_deprecated_fault() :: #{binary() => any()}.

%% Example:
%% delete_workflow_type_input() :: #{
%%   <<"domain">> := string(),
%%   <<"workflowType">> := workflow_type()
%% }
-type delete_workflow_type_input() :: #{binary() => any()}.

%% Example:
%% describe_workflow_type_input() :: #{
%%   <<"domain">> := string(),
%%   <<"workflowType">> := workflow_type()
%% }
-type describe_workflow_type_input() :: #{binary() => any()}.

%% Example:
%% default_undefined_fault() :: #{
%%   <<"message">> => string()
%% }
-type default_undefined_fault() :: #{binary() => any()}.

%% Example:
%% activity_task_failed_event_attributes() :: #{
%%   <<"details">> => string(),
%%   <<"reason">> => string(),
%%   <<"scheduledEventId">> => float(),
%%   <<"startedEventId">> => float()
%% }
-type activity_task_failed_event_attributes() :: #{binary() => any()}.

%% Example:
%% run() :: #{
%%   <<"runId">> => string()
%% }
-type run() :: #{binary() => any()}.

%% Example:
%% child_workflow_execution_started_event_attributes() :: #{
%%   <<"initiatedEventId">> => float(),
%%   <<"workflowExecution">> => workflow_execution(),
%%   <<"workflowType">> => workflow_type()
%% }
-type child_workflow_execution_started_event_attributes() :: #{binary() => any()}.

%% Example:
%% delete_activity_type_input() :: #{
%%   <<"activityType">> := activity_type(),
%%   <<"domain">> := string()
%% }
-type delete_activity_type_input() :: #{binary() => any()}.

-type count_closed_workflow_executions_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type count_open_workflow_executions_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type count_pending_activity_tasks_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type count_pending_decision_tasks_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type delete_activity_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    type_not_deprecated_fault().

-type delete_workflow_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    type_not_deprecated_fault().

-type deprecate_activity_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    type_deprecated_fault().

-type deprecate_domain_errors() ::
    domain_deprecated_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type deprecate_workflow_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    type_deprecated_fault().

-type describe_activity_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type describe_domain_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type describe_workflow_execution_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type describe_workflow_type_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type get_workflow_execution_history_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type list_activity_types_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type list_closed_workflow_executions_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type list_domains_errors() ::
    operation_not_permitted_fault().

-type list_open_workflow_executions_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type list_tags_for_resource_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type list_workflow_types_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type poll_for_activity_task_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type poll_for_decision_task_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type record_activity_task_heartbeat_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type register_activity_type_errors() ::
    type_already_exists_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type register_domain_errors() ::
    domain_already_exists_fault() | 
    operation_not_permitted_fault() | 
    too_many_tags_fault() | 
    limit_exceeded_fault().

-type register_workflow_type_errors() ::
    type_already_exists_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type request_cancel_workflow_execution_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type respond_activity_task_canceled_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type respond_activity_task_completed_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type respond_activity_task_failed_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type respond_decision_task_completed_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type signal_workflow_execution_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type start_workflow_execution_errors() ::
    default_undefined_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    type_deprecated_fault() | 
    workflow_execution_already_started_fault() | 
    limit_exceeded_fault().

-type tag_resource_errors() ::
    operation_not_permitted_fault() | 
    too_many_tags_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

-type terminate_workflow_execution_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type undeprecate_activity_type_errors() ::
    type_already_exists_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type undeprecate_domain_errors() ::
    domain_already_exists_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type undeprecate_workflow_type_errors() ::
    type_already_exists_fault() | 
    operation_not_permitted_fault() | 
    unknown_resource_fault().

-type untag_resource_errors() ::
    operation_not_permitted_fault() | 
    unknown_resource_fault() | 
    limit_exceeded_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the number of closed workflow executions within the given
%% domain that meet the
%% specified filtering criteria.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec count_closed_workflow_executions(aws_client:aws_client(), count_closed_workflow_executions_input()) ->
    {ok, workflow_execution_count(), tuple()} |
    {error, any()} |
    {error, count_closed_workflow_executions_errors(), tuple()}.
count_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_closed_workflow_executions(Client, Input, []).

-spec count_closed_workflow_executions(aws_client:aws_client(), count_closed_workflow_executions_input(), proplists:proplist()) ->
    {ok, workflow_execution_count(), tuple()} |
    {error, any()} |
    {error, count_closed_workflow_executions_errors(), tuple()}.
count_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the number of open workflow executions within the given
%% domain that meet the
%% specified filtering criteria.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec count_open_workflow_executions(aws_client:aws_client(), count_open_workflow_executions_input()) ->
    {ok, workflow_execution_count(), tuple()} |
    {error, any()} |
    {error, count_open_workflow_executions_errors(), tuple()}.
count_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_open_workflow_executions(Client, Input, []).

-spec count_open_workflow_executions(aws_client:aws_client(), count_open_workflow_executions_input(), proplists:proplist()) ->
    {ok, workflow_execution_count(), tuple()} |
    {error, any()} |
    {error, count_open_workflow_executions_errors(), tuple()}.
count_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountOpenWorkflowExecutions">>, Input, Options).

%% @doc Returns the estimated number of activity tasks in the specified task
%% list.
%%
%% The count
%% returned is an approximation and isn't guaranteed to be exact. If you
%% specify a task list that
%% no activity task was ever scheduled in then `0' is returned.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the `taskList.name' parameter by using a
%% `Condition' element with the `swf:taskList.name' key to allow the
%% action to access only certain task lists.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec count_pending_activity_tasks(aws_client:aws_client(), count_pending_activity_tasks_input()) ->
    {ok, pending_task_count(), tuple()} |
    {error, any()} |
    {error, count_pending_activity_tasks_errors(), tuple()}.
count_pending_activity_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_activity_tasks(Client, Input, []).

-spec count_pending_activity_tasks(aws_client:aws_client(), count_pending_activity_tasks_input(), proplists:proplist()) ->
    {ok, pending_task_count(), tuple()} |
    {error, any()} |
    {error, count_pending_activity_tasks_errors(), tuple()}.
count_pending_activity_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingActivityTasks">>, Input, Options).

%% @doc Returns the estimated number of decision tasks in the specified task
%% list.
%%
%% The count
%% returned is an approximation and isn't guaranteed to be exact. If you
%% specify a task list that
%% no decision task was ever scheduled in then `0' is returned.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the `taskList.name' parameter by using a
%% `Condition' element with the `swf:taskList.name' key to allow the
%% action to access only certain task lists.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec count_pending_decision_tasks(aws_client:aws_client(), count_pending_decision_tasks_input()) ->
    {ok, pending_task_count(), tuple()} |
    {error, any()} |
    {error, count_pending_decision_tasks_errors(), tuple()}.
count_pending_decision_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_decision_tasks(Client, Input, []).

-spec count_pending_decision_tasks(aws_client:aws_client(), count_pending_decision_tasks_input(), proplists:proplist()) ->
    {ok, pending_task_count(), tuple()} |
    {error, any()} |
    {error, count_pending_decision_tasks_errors(), tuple()}.
count_pending_decision_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingDecisionTasks">>, Input, Options).

%% @doc Deletes the specified activity type.
%%
%% Note: Prior to deletion, activity types must first be deprecated.
%%
%% After an activity type has been deleted, you cannot schedule new
%% activities of that type. Activities that started before the type was
%% deleted will continue to run.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec delete_activity_type(aws_client:aws_client(), delete_activity_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_activity_type_errors(), tuple()}.
delete_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activity_type(Client, Input, []).

-spec delete_activity_type(aws_client:aws_client(), delete_activity_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_activity_type_errors(), tuple()}.
delete_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivityType">>, Input, Options).

%% @doc Deletes the specified workflow type.
%%
%% Note: Prior to deletion, workflow types must first be deprecated.
%%
%% After a workflow type has been deleted, you cannot create new executions
%% of that type. Executions that
%% started before the type was deleted will continue to run.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec delete_workflow_type(aws_client:aws_client(), delete_workflow_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_type_errors(), tuple()}.
delete_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow_type(Client, Input, []).

-spec delete_workflow_type(aws_client:aws_client(), delete_workflow_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_type_errors(), tuple()}.
delete_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflowType">>, Input, Options).

%% @doc Deprecates the specified activity type.
%%
%% After an activity type has
%% been deprecated, you cannot create new tasks of that activity type. Tasks
%% of this type that
%% were scheduled before the type was deprecated continue to run.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec deprecate_activity_type(aws_client:aws_client(), deprecate_activity_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_activity_type_errors(), tuple()}.
deprecate_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_activity_type(Client, Input, []).

-spec deprecate_activity_type(aws_client:aws_client(), deprecate_activity_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_activity_type_errors(), tuple()}.
deprecate_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateActivityType">>, Input, Options).

%% @doc Deprecates the specified domain.
%%
%% After a domain has been deprecated it cannot be used
%% to create new workflow executions or register new types. However, you can
%% still use visibility
%% actions on this domain. Deprecating a domain also deprecates all activity
%% and workflow types
%% registered in the domain. Executions that were started before the domain
%% was deprecated
%% continues to run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec deprecate_domain(aws_client:aws_client(), deprecate_domain_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_domain_errors(), tuple()}.
deprecate_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_domain(Client, Input, []).

-spec deprecate_domain(aws_client:aws_client(), deprecate_domain_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_domain_errors(), tuple()}.
deprecate_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateDomain">>, Input, Options).

%% @doc Deprecates the specified workflow type.
%%
%% After a workflow type has
%% been deprecated, you cannot create new executions of that type. Executions
%% that were started
%% before the type was deprecated continues to run. A deprecated workflow
%% type may still be used
%% when calling visibility actions.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec deprecate_workflow_type(aws_client:aws_client(), deprecate_workflow_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_workflow_type_errors(), tuple()}.
deprecate_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_workflow_type(Client, Input, []).

-spec deprecate_workflow_type(aws_client:aws_client(), deprecate_workflow_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deprecate_workflow_type_errors(), tuple()}.
deprecate_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateWorkflowType">>, Input, Options).

%% @doc Returns information about the specified activity type.
%%
%% This includes configuration
%% settings provided when the type was registered and other general
%% information about the
%% type.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec describe_activity_type(aws_client:aws_client(), describe_activity_type_input()) ->
    {ok, activity_type_detail(), tuple()} |
    {error, any()} |
    {error, describe_activity_type_errors(), tuple()}.
describe_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity_type(Client, Input, []).

-spec describe_activity_type(aws_client:aws_client(), describe_activity_type_input(), proplists:proplist()) ->
    {ok, activity_type_detail(), tuple()} |
    {error, any()} |
    {error, describe_activity_type_errors(), tuple()}.
describe_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivityType">>, Input, Options).

%% @doc Returns information about the specified domain, including description
%% and
%% status.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec describe_domain(aws_client:aws_client(), describe_domain_input()) ->
    {ok, domain_detail(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).

-spec describe_domain(aws_client:aws_client(), describe_domain_input(), proplists:proplist()) ->
    {ok, domain_detail(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Returns information about the specified workflow execution including
%% its type and some
%% statistics.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec describe_workflow_execution(aws_client:aws_client(), describe_workflow_execution_input()) ->
    {ok, workflow_execution_detail(), tuple()} |
    {error, any()} |
    {error, describe_workflow_execution_errors(), tuple()}.
describe_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_execution(Client, Input, []).

-spec describe_workflow_execution(aws_client:aws_client(), describe_workflow_execution_input(), proplists:proplist()) ->
    {ok, workflow_execution_detail(), tuple()} |
    {error, any()} |
    {error, describe_workflow_execution_errors(), tuple()}.
describe_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowExecution">>, Input, Options).

%% @doc Returns information about the specified workflow type.
%%
%% This
%% includes configuration settings specified when the type was registered and
%% other information
%% such as creation date, current status, etc.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec describe_workflow_type(aws_client:aws_client(), describe_workflow_type_input()) ->
    {ok, workflow_type_detail(), tuple()} |
    {error, any()} |
    {error, describe_workflow_type_errors(), tuple()}.
describe_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_type(Client, Input, []).

-spec describe_workflow_type(aws_client:aws_client(), describe_workflow_type_input(), proplists:proplist()) ->
    {ok, workflow_type_detail(), tuple()} |
    {error, any()} |
    {error, describe_workflow_type_errors(), tuple()}.
describe_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowType">>, Input, Options).

%% @doc Returns the history of the specified workflow execution.
%%
%% The results may be split into
%% multiple pages. To retrieve subsequent pages, make the call again using
%% the
%% `nextPageToken' returned by the initial call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec get_workflow_execution_history(aws_client:aws_client(), get_workflow_execution_history_input()) ->
    {ok, history(), tuple()} |
    {error, any()} |
    {error, get_workflow_execution_history_errors(), tuple()}.
get_workflow_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_execution_history(Client, Input, []).

-spec get_workflow_execution_history(aws_client:aws_client(), get_workflow_execution_history_input(), proplists:proplist()) ->
    {ok, history(), tuple()} |
    {error, any()} |
    {error, get_workflow_execution_history_errors(), tuple()}.
get_workflow_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowExecutionHistory">>, Input, Options).

%% @doc Returns information about all activities registered in the specified
%% domain that match
%% the specified name and registration status.
%%
%% The result includes information like creation
%% date, current status of the activity, etc. The results may be split into
%% multiple pages. To
%% retrieve subsequent pages, make the call again using the
%% `nextPageToken' returned
%% by the initial call.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec list_activity_types(aws_client:aws_client(), list_activity_types_input()) ->
    {ok, activity_type_infos(), tuple()} |
    {error, any()} |
    {error, list_activity_types_errors(), tuple()}.
list_activity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activity_types(Client, Input, []).

-spec list_activity_types(aws_client:aws_client(), list_activity_types_input(), proplists:proplist()) ->
    {ok, activity_type_infos(), tuple()} |
    {error, any()} |
    {error, list_activity_types_errors(), tuple()}.
list_activity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivityTypes">>, Input, Options).

%% @doc Returns a list of closed workflow executions in the specified domain
%% that meet the
%% filtering criteria.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the nextPageToken returned by the initial
%% call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec list_closed_workflow_executions(aws_client:aws_client(), list_closed_workflow_executions_input()) ->
    {ok, workflow_execution_infos(), tuple()} |
    {error, any()} |
    {error, list_closed_workflow_executions_errors(), tuple()}.
list_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_closed_workflow_executions(Client, Input, []).

-spec list_closed_workflow_executions(aws_client:aws_client(), list_closed_workflow_executions_input(), proplists:proplist()) ->
    {ok, workflow_execution_infos(), tuple()} |
    {error, any()} |
    {error, list_closed_workflow_executions_errors(), tuple()}.
list_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the list of domains registered in the account.
%%
%% The results may be split into
%% multiple pages. To retrieve subsequent pages, make the call again using
%% the nextPageToken
%% returned by the initial call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains. The element must be set to
%% `arn:aws:swf::AccountID:domain/*', where AccountID is
%% the account ID, with no dashes.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec list_domains(aws_client:aws_client(), list_domains_input()) ->
    {ok, domain_infos(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_input(), proplists:proplist()) ->
    {ok, domain_infos(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Returns a list of open workflow executions in the specified domain
%% that meet the
%% filtering criteria.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the nextPageToken returned by the initial
%% call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec list_open_workflow_executions(aws_client:aws_client(), list_open_workflow_executions_input()) ->
    {ok, workflow_execution_infos(), tuple()} |
    {error, any()} |
    {error, list_open_workflow_executions_errors(), tuple()}.
list_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_workflow_executions(Client, Input, []).

-spec list_open_workflow_executions(aws_client:aws_client(), list_open_workflow_executions_input(), proplists:proplist()) ->
    {ok, workflow_execution_infos(), tuple()} |
    {error, any()} |
    {error, list_open_workflow_executions_errors(), tuple()}.
list_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenWorkflowExecutions">>, Input, Options).

%% @doc List tags for a given domain.
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

%% @doc Returns information about workflow types in the specified domain.
%%
%% The results may be
%% split into multiple pages that can be retrieved by making the call
%% repeatedly.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec list_workflow_types(aws_client:aws_client(), list_workflow_types_input()) ->
    {ok, workflow_type_infos(), tuple()} |
    {error, any()} |
    {error, list_workflow_types_errors(), tuple()}.
list_workflow_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflow_types(Client, Input, []).

-spec list_workflow_types(aws_client:aws_client(), list_workflow_types_input(), proplists:proplist()) ->
    {ok, workflow_type_infos(), tuple()} |
    {error, any()} |
    {error, list_workflow_types_errors(), tuple()}.
list_workflow_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflowTypes">>, Input, Options).

%% @doc Used by workers to get an `ActivityTask' from the specified
%% activity
%% `taskList'.
%%
%% This initiates a long poll, where the service holds the HTTP
%% connection open and responds as soon as a task becomes available. The
%% maximum time the service
%% holds on to the request before responding is 60 seconds. If no task is
%% available within 60
%% seconds, the poll returns an empty result. An empty result, in this
%% context, means that an
%% ActivityTask is returned, but that the value of taskToken is an empty
%% string. If a task is
%% returned, the worker should use its type to identify and process it
%% correctly.
%%
%% Workers should set their client side socket timeout to at least 70 seconds
%% (10
%% seconds higher than the maximum time service may hold the poll request).
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the `taskList.name' parameter by using a
%% `Condition' element with the `swf:taskList.name' key to allow the
%% action to access only certain task lists.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec poll_for_activity_task(aws_client:aws_client(), poll_for_activity_task_input()) ->
    {ok, activity_task(), tuple()} |
    {error, any()} |
    {error, poll_for_activity_task_errors(), tuple()}.
poll_for_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_activity_task(Client, Input, []).

-spec poll_for_activity_task(aws_client:aws_client(), poll_for_activity_task_input(), proplists:proplist()) ->
    {ok, activity_task(), tuple()} |
    {error, any()} |
    {error, poll_for_activity_task_errors(), tuple()}.
poll_for_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForActivityTask">>, Input, Options).

%% @doc Used by deciders to get a `DecisionTask' from the specified
%% decision
%% `taskList'.
%%
%% A decision task may be returned for any open workflow execution that
%% is using the specified task list. The task includes a paginated view of
%% the history of the
%% workflow execution. The decider should use the workflow type and the
%% history to determine how
%% to properly handle the task.
%%
%% This action initiates a long poll, where the service holds the HTTP
%% connection open and
%% responds as soon a task becomes available. If no decision task is
%% available in the specified
%% task list before the timeout of 60 seconds expires, an empty result is
%% returned. An empty
%% result, in this context, means that a DecisionTask is returned, but that
%% the value of
%% taskToken is an empty string.
%%
%% Deciders should set their client side socket timeout to at least 70
%% seconds (10
%% seconds higher than the timeout).
%%
%% Because the number of workflow history events for a single workflow
%% execution might
%% be very large, the result returned might be split up across a number of
%% pages. To retrieve
%% subsequent pages, make additional calls to `PollForDecisionTask' using
%% the
%% `nextPageToken' returned by the initial call. Note that you do
%% not call `GetWorkflowExecutionHistory' with this
%% `nextPageToken'. Instead, call `PollForDecisionTask'
%% again.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the `taskList.name' parameter by using a
%% `Condition' element with the `swf:taskList.name' key to allow the
%% action to access only certain task lists.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec poll_for_decision_task(aws_client:aws_client(), poll_for_decision_task_input()) ->
    {ok, decision_task(), tuple()} |
    {error, any()} |
    {error, poll_for_decision_task_errors(), tuple()}.
poll_for_decision_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_decision_task(Client, Input, []).

-spec poll_for_decision_task(aws_client:aws_client(), poll_for_decision_task_input(), proplists:proplist()) ->
    {ok, decision_task(), tuple()} |
    {error, any()} |
    {error, poll_for_decision_task_errors(), tuple()}.
poll_for_decision_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForDecisionTask">>, Input, Options).

%% @doc Used by activity workers to report to the service that the
%% `ActivityTask' represented by the specified `taskToken' is still
%% making progress.
%%
%% The worker
%% can also specify details of the progress, for example percent complete,
%% using the
%% `details' parameter. This action can also be used by the worker as a
%% mechanism to
%% check if cancellation is being requested for the activity task. If a
%% cancellation is being
%% attempted for the specified task, then the boolean `cancelRequested'
%% flag returned
%% by the service is set to `true'.
%%
%% This action resets the `taskHeartbeatTimeout' clock. The
%% `taskHeartbeatTimeout' is specified in `RegisterActivityType'.
%%
%% This action doesn't in itself create an event in the workflow
%% execution history.
%% However, if the task times out, the workflow execution history contains a
%% `ActivityTaskTimedOut' event that contains the information from the
%% last
%% heartbeat generated by the activity worker.
%%
%% The `taskStartToCloseTimeout' of an activity type is the maximum
%% duration
%% of an activity task, regardless of the number of
%% `RecordActivityTaskHeartbeat' requests received. The
%% `taskStartToCloseTimeout' is also specified in
%% `RegisterActivityType'.
%%
%% This operation is only useful for long-lived activities to report
%% liveliness of the
%% task and to determine if a cancellation is being attempted.
%%
%% If the `cancelRequested' flag returns `true', a cancellation is
%% being attempted. If the worker can cancel the activity, it should respond
%% with `RespondActivityTaskCanceled'. Otherwise, it should ignore the
%% cancellation
%% request.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec record_activity_task_heartbeat(aws_client:aws_client(), record_activity_task_heartbeat_input()) ->
    {ok, activity_task_status(), tuple()} |
    {error, any()} |
    {error, record_activity_task_heartbeat_errors(), tuple()}.
record_activity_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_activity_task_heartbeat(Client, Input, []).

-spec record_activity_task_heartbeat(aws_client:aws_client(), record_activity_task_heartbeat_input(), proplists:proplist()) ->
    {ok, activity_task_status(), tuple()} |
    {error, any()} |
    {error, record_activity_task_heartbeat_errors(), tuple()}.
record_activity_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordActivityTaskHeartbeat">>, Input, Options).

%% @doc Registers a new activity type along with its configuration
%% settings in the specified domain.
%%
%% A `TypeAlreadyExists' fault is returned if the type already exists in
%% the
%% domain. You cannot change any configuration settings of the type after its
%% registration, and
%% it must be registered as a new version.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `defaultTaskList.name': String constraint. The key is
%% `swf:defaultTaskList.name'.
%%
%% `name': String constraint. The key is `swf:name'.
%%
%% `version': String constraint. The key is
%% `swf:version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec register_activity_type(aws_client:aws_client(), register_activity_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_activity_type_errors(), tuple()}.
register_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_activity_type(Client, Input, []).

-spec register_activity_type(aws_client:aws_client(), register_activity_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_activity_type_errors(), tuple()}.
register_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterActivityType">>, Input, Options).

%% @doc Registers a new domain.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% You cannot use an IAM policy to control domain access for this action. The
%% name of
%% the domain being registered is available as the resource of this action.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec register_domain(aws_client:aws_client(), register_domain_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_domain_errors(), tuple()}.
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).

-spec register_domain(aws_client:aws_client(), register_domain_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_domain_errors(), tuple()}.
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc Registers a new workflow type and its configuration settings in
%% the specified domain.
%%
%% The retention period for the workflow history is set by the
%% `RegisterDomain' action.
%%
%% If the type already exists, then a `TypeAlreadyExists' fault is
%% returned.
%% You cannot change the configuration settings of a workflow type once it is
%% registered and it
%% must be registered as a new version.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `defaultTaskList.name': String constraint. The key is
%% `swf:defaultTaskList.name'.
%%
%% `name': String constraint. The key is `swf:name'.
%%
%% `version': String constraint. The key is
%% `swf:version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec register_workflow_type(aws_client:aws_client(), register_workflow_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_workflow_type_errors(), tuple()}.
register_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_workflow_type(Client, Input, []).

-spec register_workflow_type(aws_client:aws_client(), register_workflow_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_workflow_type_errors(), tuple()}.
register_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWorkflowType">>, Input, Options).

%% @doc Records a `WorkflowExecutionCancelRequested' event in the
%% currently running
%% workflow execution identified by the given domain, workflowId, and runId.
%%
%% This logically
%% requests the cancellation of the workflow execution as a whole. It is up
%% to the decider to
%% take appropriate actions when it receives an execution history with this
%% event.
%%
%% If the runId isn't specified, the
%% `WorkflowExecutionCancelRequested' event
%% is recorded in the history of the current open workflow execution with the
%% specified
%% workflowId in the domain.
%%
%% Because this action allows the workflow to properly clean up and
%% gracefully close, it
%% should be used instead of `TerminateWorkflowExecution' when
%% possible.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec request_cancel_workflow_execution(aws_client:aws_client(), request_cancel_workflow_execution_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, request_cancel_workflow_execution_errors(), tuple()}.
request_cancel_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_cancel_workflow_execution(Client, Input, []).

-spec request_cancel_workflow_execution(aws_client:aws_client(), request_cancel_workflow_execution_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, request_cancel_workflow_execution_errors(), tuple()}.
request_cancel_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCancelWorkflowExecution">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified
%% by the `taskToken' was successfully canceled.
%%
%% Additional `details' can
%% be provided using the `details' argument.
%%
%% These `details' (if provided) appear in the
%% `ActivityTaskCanceled' event added to the workflow history.
%%
%% Only use this operation if the `canceled' flag of a
%% `RecordActivityTaskHeartbeat' request returns `true' and if the
%% activity can be safely undone or abandoned.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed.
%% Therefore a task is reported as open while a worker is processing it. A
%% task is closed after
%% it has been specified in a call to `RespondActivityTaskCompleted',
%% RespondActivityTaskCanceled, `RespondActivityTaskFailed', or the task
%% has
%% timed
%% out:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec respond_activity_task_canceled(aws_client:aws_client(), respond_activity_task_canceled_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_canceled_errors(), tuple()}.
respond_activity_task_canceled(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_canceled(Client, Input, []).

-spec respond_activity_task_canceled(aws_client:aws_client(), respond_activity_task_canceled_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_canceled_errors(), tuple()}.
respond_activity_task_canceled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCanceled">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified
%% by the `taskToken' completed successfully with a `result' (if
%% provided).
%%
%% The `result' appears in the `ActivityTaskCompleted' event in the
%% workflow history.
%%
%% If the requested task doesn't complete successfully, use
%% `RespondActivityTaskFailed' instead. If the worker finds that the task
%% is
%% canceled through the `canceled' flag returned by
%% `RecordActivityTaskHeartbeat', it should cancel the task, clean up and
%% then call
%% `RespondActivityTaskCanceled'.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed.
%% Therefore a task is reported as open while a worker is processing it. A
%% task is closed after
%% it has been specified in a call to RespondActivityTaskCompleted,
%% `RespondActivityTaskCanceled', `RespondActivityTaskFailed', or the
%% task has timed
%% out:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec respond_activity_task_completed(aws_client:aws_client(), respond_activity_task_completed_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_completed_errors(), tuple()}.
respond_activity_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_completed(Client, Input, []).

-spec respond_activity_task_completed(aws_client:aws_client(), respond_activity_task_completed_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_completed_errors(), tuple()}.
respond_activity_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCompleted">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified
%% by the `taskToken' has failed with `reason' (if specified).
%%
%% The
%% `reason' and `details' appear in the `ActivityTaskFailed'
%% event added to the workflow history.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed.
%% Therefore a task is reported as open while a worker is processing it. A
%% task is closed after
%% it has been specified in a call to `RespondActivityTaskCompleted',
%% `RespondActivityTaskCanceled', RespondActivityTaskFailed, or the task
%% has timed
%% out:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec respond_activity_task_failed(aws_client:aws_client(), respond_activity_task_failed_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_failed_errors(), tuple()}.
respond_activity_task_failed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_failed(Client, Input, []).

-spec respond_activity_task_failed(aws_client:aws_client(), respond_activity_task_failed_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_activity_task_failed_errors(), tuple()}.
respond_activity_task_failed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskFailed">>, Input, Options).

%% @doc Used by deciders to tell the service that the `DecisionTask'
%% identified
%% by the `taskToken' has successfully completed.
%%
%% The `decisions' argument
%% specifies the list of decisions made while processing the task.
%%
%% A `DecisionTaskCompleted' event is added to the workflow history. The
%% `executionContext' specified is attached to the event in the workflow
%% execution
%% history.
%%
%% Access Control
%%
%% If an IAM policy grants permission to use
%% `RespondDecisionTaskCompleted', it
%% can express permissions for the list of decisions in the `decisions'
%% parameter.
%% Each of the decisions has one or more parameters, much like a regular API
%% call. To allow for
%% policies to be as readable as possible, you can express permissions on
%% decisions as if they
%% were actual API calls, including applying conditions to some parameters.
%% For more information,
%% see Using
%% IAM to Manage Access to Amazon SWF Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the
%% Amazon SWF Developer Guide.
-spec respond_decision_task_completed(aws_client:aws_client(), respond_decision_task_completed_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_decision_task_completed_errors(), tuple()}.
respond_decision_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_decision_task_completed(Client, Input, []).

-spec respond_decision_task_completed(aws_client:aws_client(), respond_decision_task_completed_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, respond_decision_task_completed_errors(), tuple()}.
respond_decision_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondDecisionTaskCompleted">>, Input, Options).

%% @doc Records a `WorkflowExecutionSignaled' event in the workflow
%% execution
%% history and creates a decision task for the workflow execution identified
%% by the given domain,
%% workflowId and runId.
%%
%% The event is recorded with the specified user defined signalName and
%% input (if provided).
%%
%% If a runId isn't specified, then the `WorkflowExecutionSignaled'
%% event is
%% recorded in the history of the current open workflow with the matching
%% workflowId in the
%% domain.
%%
%% If the specified workflow execution isn't open, this method fails with
%% `UnknownResource'.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec signal_workflow_execution(aws_client:aws_client(), signal_workflow_execution_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, signal_workflow_execution_errors(), tuple()}.
signal_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_workflow_execution(Client, Input, []).

-spec signal_workflow_execution(aws_client:aws_client(), signal_workflow_execution_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, signal_workflow_execution_errors(), tuple()}.
signal_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalWorkflowExecution">>, Input, Options).

%% @doc Starts an execution of the workflow type in the specified domain
%% using the provided
%% `workflowId' and input data.
%%
%% This action returns the newly started workflow execution.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `tagList.member.0': The key is `swf:tagList.member.0'.
%%
%% `tagList.member.1': The key is `swf:tagList.member.1'.
%%
%% `tagList.member.2': The key is `swf:tagList.member.2'.
%%
%% `tagList.member.3': The key is `swf:tagList.member.3'.
%%
%% `tagList.member.4': The key is `swf:tagList.member.4'.
%%
%% `taskList': String constraint. The key is
%% `swf:taskList.name'.
%%
%% `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec start_workflow_execution(aws_client:aws_client(), start_workflow_execution_input()) ->
    {ok, run(), tuple()} |
    {error, any()} |
    {error, start_workflow_execution_errors(), tuple()}.
start_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_execution(Client, Input, []).

-spec start_workflow_execution(aws_client:aws_client(), start_workflow_execution_input(), proplists:proplist()) ->
    {ok, run(), tuple()} |
    {error, any()} |
    {error, start_workflow_execution_errors(), tuple()}.
start_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowExecution">>, Input, Options).

%% @doc Add a tag to a Amazon SWF domain.
%%
%% Amazon SWF supports a maximum of 50 tags per resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Records a `WorkflowExecutionTerminated' event and forces closure
%% of the
%% workflow execution identified by the given domain, runId, and workflowId.
%%
%% The child policy,
%% registered with the workflow type or specified when starting this
%% execution, is applied to any
%% open child workflow executions of this workflow execution.
%%
%% If the identified workflow execution was in progress, it is terminated
%% immediately.
%%
%% If a runId isn't specified, then the `WorkflowExecutionTerminated'
%% event
%% is recorded in the history of the current open workflow with the matching
%% workflowId in the
%% domain.
%%
%% You should consider using `RequestCancelWorkflowExecution' action
%% instead because it allows the workflow to gracefully close while
%% `TerminateWorkflowExecution' doesn't.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec terminate_workflow_execution(aws_client:aws_client(), terminate_workflow_execution_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_workflow_execution_errors(), tuple()}.
terminate_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workflow_execution(Client, Input, []).

-spec terminate_workflow_execution(aws_client:aws_client(), terminate_workflow_execution_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_workflow_execution_errors(), tuple()}.
terminate_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkflowExecution">>, Input, Options).

%% @doc Undeprecates a previously deprecated activity type.
%%
%% After an activity type has
%% been undeprecated, you can create new tasks of that activity type.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec undeprecate_activity_type(aws_client:aws_client(), undeprecate_activity_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_activity_type_errors(), tuple()}.
undeprecate_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_activity_type(Client, Input, []).

-spec undeprecate_activity_type(aws_client:aws_client(), undeprecate_activity_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_activity_type_errors(), tuple()}.
undeprecate_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateActivityType">>, Input, Options).

%% @doc Undeprecates a previously deprecated domain.
%%
%% After a domain has been undeprecated it can be used
%% to create new workflow executions or register new types.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% You cannot use an IAM policy to constrain this action's parameters.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec undeprecate_domain(aws_client:aws_client(), undeprecate_domain_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_domain_errors(), tuple()}.
undeprecate_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_domain(Client, Input, []).

-spec undeprecate_domain(aws_client:aws_client(), undeprecate_domain_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_domain_errors(), tuple()}.
undeprecate_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateDomain">>, Input, Options).

%% @doc Undeprecates a previously deprecated workflow type.
%%
%% After a workflow type has
%% been undeprecated, you can create new executions of that type.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as
%% follows:
%%
%% Use a `Resource' element with the domain name to limit the action to
%% only specified domains.
%%
%% Use an `Action' element to allow or deny permission to call this
%% action.
%%
%% Constrain the following parameters by using a `Condition' element with
%% the appropriate keys.
%%
%% `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% If the caller doesn't have sufficient permissions to invoke the
%% action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated
%% event attribute's `cause' parameter is set to
%% `OPERATION_NOT_PERMITTED'.
%% For details and example IAM policies, see Using IAM to Manage Access to
%% Amazon SWF
%% Workflows:
%% https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
%% in the Amazon SWF Developer Guide.
-spec undeprecate_workflow_type(aws_client:aws_client(), undeprecate_workflow_type_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_workflow_type_errors(), tuple()}.
undeprecate_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_workflow_type(Client, Input, []).

-spec undeprecate_workflow_type(aws_client:aws_client(), undeprecate_workflow_type_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, undeprecate_workflow_type_errors(), tuple()}.
undeprecate_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateWorkflowType">>, Input, Options).

%% @doc Remove a tag from a Amazon SWF domain.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"swf">>},
    Host = build_host(<<"swf">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"SimpleWorkflowService.", Action/binary>>}
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
