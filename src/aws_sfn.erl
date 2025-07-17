%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Step Functions
%%
%% With Step Functions, you can create workflows, also called state machines,
%% to build distributed applications, automate processes, orchestrate
%% microservices, and create data and machine learning pipelines.
%%
%% Through the Step Functions API, you can create, list, update, and delete
%% state machines, activities, and other data types. You can start, stop, and
%% redrive your state machines. Your activity workers can send task success,
%% heartbeat, and failure responses.
%%
%% With API calls, you can also manage other aspects of your workflow, such
%% as tags, versions, and aliases.
%%
%% For more information about developing solutions with Step Functions, see
%% the
%% Step Functions Developer Guide:
%% https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html
%% .
%%
%% If you use the Step Functions API actions using Amazon Web Services SDK
%% integrations, make sure the API actions are in camel case and parameter
%% names are in Pascal case. For example, you might use Step Functions API
%% action `startSyncExecution' and specify its parameter as
%% `StateMachineArn'.
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
         redrive_execution/2,
         redrive_execution/3,
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
         test_state/2,
         test_state/3,
         untag_resource/2,
         untag_resource/3,
         update_map_run/2,
         update_map_run/3,
         update_state_machine/2,
         update_state_machine/3,
         update_state_machine_alias/2,
         update_state_machine_alias/3,
         validate_state_machine_definition/2,
         validate_state_machine_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% state_machine_version_list_item() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"stateMachineVersionArn">> => string()
%% }
-type state_machine_version_list_item() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_for_execution_input() :: #{
%%   <<"executionArn">> := string(),
%%   <<"includedData">> => list(any())
%% }
-type describe_state_machine_for_execution_input() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsDataKeyReusePeriodSeconds">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"type">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% list_executions_output() :: #{
%%   <<"executions">> => list(execution_list_item()),
%%   <<"nextToken">> => string()
%% }
-type list_executions_output() :: #{binary() => any()}.

%% Example:
%% resource_not_found() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type resource_not_found() :: #{binary() => any()}.

%% Example:
%% state_machine_type_not_supported() :: #{
%%   <<"message">> => string()
%% }
-type state_machine_type_not_supported() :: #{binary() => any()}.

%% Example:
%% execution_does_not_exist() :: #{
%%   <<"message">> => string()
%% }
-type execution_does_not_exist() :: #{binary() => any()}.

%% Example:
%% list_state_machine_aliases_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stateMachineArn">> := string()
%% }
-type list_state_machine_aliases_input() :: #{binary() => any()}.

%% Example:
%% execution_succeeded_event_details() :: #{
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details()
%% }
-type execution_succeeded_event_details() :: #{binary() => any()}.

%% Example:
%% missing_required_parameter() :: #{
%%   <<"message">> => string()
%% }
-type missing_required_parameter() :: #{binary() => any()}.

%% Example:
%% state_machine_alias_list_item() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"stateMachineAliasArn">> => string()
%% }
-type state_machine_alias_list_item() :: #{binary() => any()}.

%% Example:
%% cloud_watch_events_execution_data_details() :: #{
%%   <<"included">> => boolean()
%% }
-type cloud_watch_events_execution_data_details() :: #{binary() => any()}.

%% Example:
%% describe_execution_input() :: #{
%%   <<"executionArn">> := string(),
%%   <<"includedData">> => list(any())
%% }
-type describe_execution_input() :: #{binary() => any()}.

%% Example:
%% describe_execution_output() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"executionArn">> => string(),
%%   <<"input">> => string(),
%%   <<"inputDetails">> => cloud_watch_events_execution_data_details(),
%%   <<"mapRunArn">> => string(),
%%   <<"name">> => string(),
%%   <<"output">> => string(),
%%   <<"outputDetails">> => cloud_watch_events_execution_data_details(),
%%   <<"redriveCount">> => integer(),
%%   <<"redriveDate">> => non_neg_integer(),
%%   <<"redriveStatus">> => list(any()),
%%   <<"redriveStatusReason">> => string(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"stateMachineAliasArn">> => string(),
%%   <<"stateMachineArn">> => string(),
%%   <<"stateMachineVersionArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"stopDate">> => non_neg_integer(),
%%   <<"traceHeader">> => string()
%% }
-type describe_execution_output() :: #{binary() => any()}.

%% Example:
%% update_state_machine_alias_output() :: #{
%%   <<"updateDate">> => non_neg_integer()
%% }
-type update_state_machine_alias_output() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_output() :: #{

%% }
-type delete_state_machine_output() :: #{binary() => any()}.

%% Example:
%% map_run_item_counts() :: #{
%%   <<"aborted">> => float(),
%%   <<"failed">> => float(),
%%   <<"failuresNotRedrivable">> => float(),
%%   <<"pending">> => float(),
%%   <<"pendingRedrive">> => float(),
%%   <<"resultsWritten">> => float(),
%%   <<"running">> => float(),
%%   <<"succeeded">> => float(),
%%   <<"timedOut">> => float(),
%%   <<"total">> => float()
%% }
-type map_run_item_counts() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_version_output() :: #{

%% }
-type delete_state_machine_version_output() :: #{binary() => any()}.

%% Example:
%% kms_throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_throttling_exception() :: #{binary() => any()}.

%% Example:
%% list_state_machine_aliases_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"stateMachineAliases">> => list(state_machine_alias_list_item())
%% }
-type list_state_machine_aliases_output() :: #{binary() => any()}.

%% Example:
%% task_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_failed_event_details() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_input() :: #{
%%   <<"includedData">> => list(any()),
%%   <<"stateMachineArn">> := string()
%% }
-type describe_state_machine_input() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_alias_input() :: #{
%%   <<"stateMachineAliasArn">> := string()
%% }
-type describe_state_machine_alias_input() :: #{binary() => any()}.

%% Example:
%% start_execution_output() :: #{
%%   <<"executionArn">> => string(),
%%   <<"startDate">> => non_neg_integer()
%% }
-type start_execution_output() :: #{binary() => any()}.

%% Example:
%% map_run_started_event_details() :: #{
%%   <<"mapRunArn">> => string()
%% }
-type map_run_started_event_details() :: #{binary() => any()}.

%% Example:
%% invalid_tracing_configuration() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tracing_configuration() :: #{binary() => any()}.

%% Example:
%% list_state_machines_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"stateMachines">> => list(state_machine_list_item())
%% }
-type list_state_machines_output() :: #{binary() => any()}.

%% Example:
%% create_state_machine_alias_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"routingConfiguration">> := list(routing_configuration_list_item())
%% }
-type create_state_machine_alias_input() :: #{binary() => any()}.

%% Example:
%% invalid_output() :: #{
%%   <<"message">> => string()
%% }
-type invalid_output() :: #{binary() => any()}.

%% Example:
%% map_run_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type map_run_failed_event_details() :: #{binary() => any()}.

%% Example:
%% send_task_failure_output() :: #{

%% }
-type send_task_failure_output() :: #{binary() => any()}.

%% Example:
%% activity_schedule_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type activity_schedule_failed_event_details() :: #{binary() => any()}.

%% Example:
%% state_entered_event_details() :: #{
%%   <<"input">> => string(),
%%   <<"inputDetails">> => history_event_execution_data_details(),
%%   <<"name">> => string()
%% }
-type state_entered_event_details() :: #{binary() => any()}.

%% Example:
%% invalid_token() :: #{
%%   <<"message">> => string()
%% }
-type invalid_token() :: #{binary() => any()}.

%% Example:
%% delete_activity_input() :: #{
%%   <<"activityArn">> := string()
%% }
-type delete_activity_input() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_alias_input() :: #{
%%   <<"stateMachineAliasArn">> := string()
%% }
-type delete_state_machine_alias_input() :: #{binary() => any()}.

%% Example:
%% state_machine_list_item() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"stateMachineArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type state_machine_list_item() :: #{binary() => any()}.

%% Example:
%% create_state_machine_output() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"stateMachineArn">> => string(),
%%   <<"stateMachineVersionArn">> => string()
%% }
-type create_state_machine_output() :: #{binary() => any()}.

%% Example:
%% execution_aborted_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type execution_aborted_event_details() :: #{binary() => any()}.

%% Example:
%% execution_redriven_event_details() :: #{
%%   <<"redriveCount">> => integer()
%% }
-type execution_redriven_event_details() :: #{binary() => any()}.

%% Example:
%% lambda_function_start_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type lambda_function_start_failed_event_details() :: #{binary() => any()}.

%% Example:
%% lambda_function_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type lambda_function_failed_event_details() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_alias_output() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"routingConfiguration">> => list(routing_configuration_list_item()),
%%   <<"stateMachineAliasArn">> => string(),
%%   <<"updateDate">> => non_neg_integer()
%% }
-type describe_state_machine_alias_output() :: #{binary() => any()}.

%% Example:
%% redrive_execution_output() :: #{
%%   <<"redriveDate">> => non_neg_integer()
%% }
-type redrive_execution_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% start_sync_execution_output() :: #{
%%   <<"billingDetails">> => billing_details(),
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"executionArn">> => string(),
%%   <<"input">> => string(),
%%   <<"inputDetails">> => cloud_watch_events_execution_data_details(),
%%   <<"name">> => string(),
%%   <<"output">> => string(),
%%   <<"outputDetails">> => cloud_watch_events_execution_data_details(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"stateMachineArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"stopDate">> => non_neg_integer(),
%%   <<"traceHeader">> => string()
%% }
-type start_sync_execution_output() :: #{binary() => any()}.

%% Example:
%% send_task_failure_input() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"taskToken">> := string()
%% }
-type send_task_failure_input() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"destinations">> => list(log_destination()),
%%   <<"includeExecutionData">> => boolean(),
%%   <<"level">> => list(any())
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% get_activity_task_output() :: #{
%%   <<"input">> => string(),
%%   <<"taskToken">> => string()
%% }
-type get_activity_task_output() :: #{binary() => any()}.

%% Example:
%% describe_activity_output() :: #{
%%   <<"activityArn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> => string()
%% }
-type describe_activity_output() :: #{binary() => any()}.

%% Example:
%% task_timed_out_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_timed_out_event_details() :: #{binary() => any()}.

%% Example:
%% history_event_execution_data_details() :: #{
%%   <<"truncated">> => boolean()
%% }
-type history_event_execution_data_details() :: #{binary() => any()}.

%% Example:
%% update_map_run_output() :: #{

%% }
-type update_map_run_output() :: #{binary() => any()}.

%% Example:
%% task_started_event_details() :: #{
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_started_event_details() :: #{binary() => any()}.

%% Example:
%% delete_activity_output() :: #{

%% }
-type delete_activity_output() :: #{binary() => any()}.

%% Example:
%% redrive_execution_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"executionArn">> := string()
%% }
-type redrive_execution_input() :: #{binary() => any()}.

%% Example:
%% get_execution_history_input() :: #{
%%   <<"executionArn">> := string(),
%%   <<"includeExecutionData">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reverseOrder">> => boolean()
%% }
-type get_execution_history_input() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_for_execution_output() :: #{
%%   <<"definition">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"label">> => string(),
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"mapRunArn">> => string(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"stateMachineArn">> => string(),
%%   <<"tracingConfiguration">> => tracing_configuration(),
%%   <<"updateDate">> => non_neg_integer(),
%%   <<"variableReferences">> => map()
%% }
-type describe_state_machine_for_execution_output() :: #{binary() => any()}.

%% Example:
%% get_execution_history_output() :: #{
%%   <<"events">> => list(history_event()),
%%   <<"nextToken">> => string()
%% }
-type get_execution_history_output() :: #{binary() => any()}.

%% Example:
%% list_state_machines_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_state_machines_input() :: #{binary() => any()}.

%% Example:
%% inspection_data_request() :: #{
%%   <<"body">> => string(),
%%   <<"headers">> => string(),
%%   <<"method">> => string(),
%%   <<"protocol">> => string(),
%%   <<"url">> => string()
%% }
-type inspection_data_request() :: #{binary() => any()}.

%% Example:
%% state_machine_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type state_machine_already_exists() :: #{binary() => any()}.

%% Example:
%% execution_not_redrivable() :: #{
%%   <<"message">> => string()
%% }
-type execution_not_redrivable() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% send_task_success_output() :: #{

%% }
-type send_task_success_output() :: #{binary() => any()}.

%% Example:
%% activity_succeeded_event_details() :: #{
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details()
%% }
-type activity_succeeded_event_details() :: #{binary() => any()}.

%% Example:
%% task_timed_out() :: #{
%%   <<"message">> => string()
%% }
-type task_timed_out() :: #{binary() => any()}.

%% Example:
%% send_task_heartbeat_input() :: #{
%%   <<"taskToken">> := string()
%% }
-type send_task_heartbeat_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% task_succeeded_event_details() :: #{
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_succeeded_event_details() :: #{binary() => any()}.

%% Example:
%% inspection_data() :: #{
%%   <<"afterArguments">> => string(),
%%   <<"afterInputPath">> => string(),
%%   <<"afterParameters">> => string(),
%%   <<"afterResultPath">> => string(),
%%   <<"afterResultSelector">> => string(),
%%   <<"input">> => string(),
%%   <<"request">> => inspection_data_request(),
%%   <<"response">> => inspection_data_response(),
%%   <<"result">> => string(),
%%   <<"variables">> => string()
%% }
-type inspection_data() :: #{binary() => any()}.

%% Example:
%% publish_state_machine_version_input() :: #{
%%   <<"description">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"stateMachineArn">> := string()
%% }
-type publish_state_machine_version_input() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% lambda_function_schedule_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type lambda_function_schedule_failed_event_details() :: #{binary() => any()}.

%% Example:
%% log_destination() :: #{
%%   <<"cloudWatchLogsLogGroup">> => cloud_watch_logs_log_group()
%% }
-type log_destination() :: #{binary() => any()}.

%% Example:
%% execution_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type execution_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% get_activity_task_input() :: #{
%%   <<"activityArn">> := string(),
%%   <<"workerName">> => string()
%% }
-type get_activity_task_input() :: #{binary() => any()}.

%% Example:
%% state_exited_event_details() :: #{
%%   <<"assignedVariables">> => map(),
%%   <<"assignedVariablesDetails">> => assigned_variables_details(),
%%   <<"name">> => string(),
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details()
%% }
-type state_exited_event_details() :: #{binary() => any()}.

%% Example:
%% create_state_machine_input() :: #{
%%   <<"definition">> := string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"name">> := string(),
%%   <<"publish">> => boolean(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"tracingConfiguration">> => tracing_configuration(),
%%   <<"type">> => list(any()),
%%   <<"versionDescription">> => string()
%% }
-type create_state_machine_input() :: #{binary() => any()}.

%% Example:
%% invalid_encryption_configuration() :: #{
%%   <<"message">> => string()
%% }
-type invalid_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_log_group() :: #{
%%   <<"logGroupArn">> => string()
%% }
-type cloud_watch_logs_log_group() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_alias_output() :: #{

%% }
-type delete_state_machine_alias_output() :: #{binary() => any()}.

%% Example:
%% activity_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type activity_failed_event_details() :: #{binary() => any()}.

%% Example:
%% create_activity_input() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_activity_input() :: #{binary() => any()}.

%% Example:
%% lambda_function_succeeded_event_details() :: #{
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details()
%% }
-type lambda_function_succeeded_event_details() :: #{binary() => any()}.

%% Example:
%% execution_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type execution_failed_event_details() :: #{binary() => any()}.

%% Example:
%% lambda_function_timed_out_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type lambda_function_timed_out_event_details() :: #{binary() => any()}.

%% Example:
%% lambda_function_scheduled_event_details() :: #{
%%   <<"input">> => string(),
%%   <<"inputDetails">> => history_event_execution_data_details(),
%%   <<"resource">> => string(),
%%   <<"taskCredentials">> => task_credentials(),
%%   <<"timeoutInSeconds">> => float()
%% }
-type lambda_function_scheduled_event_details() :: #{binary() => any()}.

%% Example:
%% task_submit_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_submit_failed_event_details() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% update_state_machine_output() :: #{
%%   <<"revisionId">> => string(),
%%   <<"stateMachineVersionArn">> => string(),
%%   <<"updateDate">> => non_neg_integer()
%% }
-type update_state_machine_output() :: #{binary() => any()}.

%% Example:
%% describe_activity_input() :: #{
%%   <<"activityArn">> := string()
%% }
-type describe_activity_input() :: #{binary() => any()}.

%% Example:
%% tracing_configuration() :: #{
%%   <<"enabled">> => boolean()
%% }
-type tracing_configuration() :: #{binary() => any()}.

%% Example:
%% stop_execution_output() :: #{
%%   <<"stopDate">> => non_neg_integer()
%% }
-type stop_execution_output() :: #{binary() => any()}.

%% Example:
%% activity_worker_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type activity_worker_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% execution_timed_out_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type execution_timed_out_event_details() :: #{binary() => any()}.

%% Example:
%% billing_details() :: #{
%%   <<"billedDurationInMilliseconds">> => float(),
%%   <<"billedMemoryUsedInMB">> => float()
%% }
-type billing_details() :: #{binary() => any()}.

%% Example:
%% execution_started_event_details() :: #{
%%   <<"input">> => string(),
%%   <<"inputDetails">> => history_event_execution_data_details(),
%%   <<"roleArn">> => string(),
%%   <<"stateMachineAliasArn">> => string(),
%%   <<"stateMachineVersionArn">> => string()
%% }
-type execution_started_event_details() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% history_event() :: #{
%%   <<"taskSubmittedEventDetails">> => task_submitted_event_details(),
%%   <<"type">> => list(any()),
%%   <<"executionSucceededEventDetails">> => execution_succeeded_event_details(),
%%   <<"lambdaFunctionFailedEventDetails">> => lambda_function_failed_event_details(),
%%   <<"activityStartedEventDetails">> => activity_started_event_details(),
%%   <<"activityScheduleFailedEventDetails">> => activity_schedule_failed_event_details(),
%%   <<"mapIterationStartedEventDetails">> => map_iteration_event_details(),
%%   <<"taskSucceededEventDetails">> => task_succeeded_event_details(),
%%   <<"activityFailedEventDetails">> => activity_failed_event_details(),
%%   <<"taskStartFailedEventDetails">> => task_start_failed_event_details(),
%%   <<"stateExitedEventDetails">> => state_exited_event_details(),
%%   <<"activityTimedOutEventDetails">> => activity_timed_out_event_details(),
%%   <<"id">> => float(),
%%   <<"lambdaFunctionSucceededEventDetails">> => lambda_function_succeeded_event_details(),
%%   <<"mapRunRedrivenEventDetails">> => map_run_redriven_event_details(),
%%   <<"lambdaFunctionScheduleFailedEventDetails">> => lambda_function_schedule_failed_event_details(),
%%   <<"evaluationFailedEventDetails">> => evaluation_failed_event_details(),
%%   <<"mapStateStartedEventDetails">> => map_state_started_event_details(),
%%   <<"lambdaFunctionStartFailedEventDetails">> => lambda_function_start_failed_event_details(),
%%   <<"taskSubmitFailedEventDetails">> => task_submit_failed_event_details(),
%%   <<"executionTimedOutEventDetails">> => execution_timed_out_event_details(),
%%   <<"lambdaFunctionTimedOutEventDetails">> => lambda_function_timed_out_event_details(),
%%   <<"taskStartedEventDetails">> => task_started_event_details(),
%%   <<"executionAbortedEventDetails">> => execution_aborted_event_details(),
%%   <<"lambdaFunctionScheduledEventDetails">> => lambda_function_scheduled_event_details(),
%%   <<"taskFailedEventDetails">> => task_failed_event_details(),
%%   <<"stateEnteredEventDetails">> => state_entered_event_details(),
%%   <<"executionFailedEventDetails">> => execution_failed_event_details(),
%%   <<"mapIterationSucceededEventDetails">> => map_iteration_event_details(),
%%   <<"mapRunStartedEventDetails">> => map_run_started_event_details(),
%%   <<"executionStartedEventDetails">> => execution_started_event_details(),
%%   <<"taskTimedOutEventDetails">> => task_timed_out_event_details(),
%%   <<"executionRedrivenEventDetails">> => execution_redriven_event_details(),
%%   <<"activitySucceededEventDetails">> => activity_succeeded_event_details(),
%%   <<"mapRunFailedEventDetails">> => map_run_failed_event_details(),
%%   <<"activityScheduledEventDetails">> => activity_scheduled_event_details(),
%%   <<"taskScheduledEventDetails">> => task_scheduled_event_details(),
%%   <<"mapIterationAbortedEventDetails">> => map_iteration_event_details(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"mapIterationFailedEventDetails">> => map_iteration_event_details(),
%%   <<"previousEventId">> => float()
%% }
-type history_event() :: #{binary() => any()}.

%% Example:
%% state_machine_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type state_machine_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% map_iteration_event_details() :: #{
%%   <<"index">> => integer(),
%%   <<"name">> => string()
%% }
-type map_iteration_event_details() :: #{binary() => any()}.

%% Example:
%% kms_access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% update_state_machine_alias_input() :: #{
%%   <<"description">> => string(),
%%   <<"routingConfiguration">> => list(routing_configuration_list_item()),
%%   <<"stateMachineAliasArn">> := string()
%% }
-type update_state_machine_alias_input() :: #{binary() => any()}.

%% Example:
%% task_start_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_start_failed_event_details() :: #{binary() => any()}.

%% Example:
%% map_run_execution_counts() :: #{
%%   <<"aborted">> => float(),
%%   <<"failed">> => float(),
%%   <<"failuresNotRedrivable">> => float(),
%%   <<"pending">> => float(),
%%   <<"pendingRedrive">> => float(),
%%   <<"resultsWritten">> => float(),
%%   <<"running">> => float(),
%%   <<"succeeded">> => float(),
%%   <<"timedOut">> => float(),
%%   <<"total">> => float()
%% }
-type map_run_execution_counts() :: #{binary() => any()}.

%% Example:
%% validate_state_machine_definition_output() :: #{
%%   <<"diagnostics">> => list(validate_state_machine_definition_diagnostic()),
%%   <<"result">> => list(any()),
%%   <<"truncated">> => boolean()
%% }
-type validate_state_machine_definition_output() :: #{binary() => any()}.

%% Example:
%% activity_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type activity_already_exists() :: #{binary() => any()}.

%% Example:
%% update_state_machine_input() :: #{
%%   <<"definition">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"publish">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"stateMachineArn">> := string(),
%%   <<"tracingConfiguration">> => tracing_configuration(),
%%   <<"versionDescription">> => string()
%% }
-type update_state_machine_input() :: #{binary() => any()}.

%% Example:
%% evaluation_failed_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"location">> => string(),
%%   <<"state">> => string()
%% }
-type evaluation_failed_event_details() :: #{binary() => any()}.

%% Example:
%% state_machine_does_not_exist() :: #{
%%   <<"message">> => string()
%% }
-type state_machine_does_not_exist() :: #{binary() => any()}.

%% Example:
%% map_state_started_event_details() :: #{
%%   <<"length">> => integer()
%% }
-type map_state_started_event_details() :: #{binary() => any()}.

%% Example:
%% map_run_list_item() :: #{
%%   <<"executionArn">> => string(),
%%   <<"mapRunArn">> => string(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"stateMachineArn">> => string(),
%%   <<"stopDate">> => non_neg_integer()
%% }
-type map_run_list_item() :: #{binary() => any()}.

%% Example:
%% activity_list_item() :: #{
%%   <<"activityArn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type activity_list_item() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% invalid_definition() :: #{
%%   <<"message">> => string()
%% }
-type invalid_definition() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_input() :: #{
%%   <<"stateMachineArn">> := string()
%% }
-type delete_state_machine_input() :: #{binary() => any()}.

%% Example:
%% list_map_runs_input() :: #{
%%   <<"executionArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_map_runs_input() :: #{binary() => any()}.

%% Example:
%% task_does_not_exist() :: #{
%%   <<"message">> => string()
%% }
-type task_does_not_exist() :: #{binary() => any()}.

%% Example:
%% execution_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type execution_already_exists() :: #{binary() => any()}.

%% Example:
%% create_activity_output() :: #{
%%   <<"activityArn">> => string(),
%%   <<"creationDate">> => non_neg_integer()
%% }
-type create_activity_output() :: #{binary() => any()}.

%% Example:
%% assigned_variables_details() :: #{
%%   <<"truncated">> => boolean()
%% }
-type assigned_variables_details() :: #{binary() => any()}.

%% Example:
%% activity_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type activity_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% invalid_name() :: #{
%%   <<"message">> => string()
%% }
-type invalid_name() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% task_submitted_event_details() :: #{
%%   <<"output">> => string(),
%%   <<"outputDetails">> => history_event_execution_data_details(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string()
%% }
-type task_submitted_event_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% map_run_redriven_event_details() :: #{
%%   <<"mapRunArn">> => string(),
%%   <<"redriveCount">> => integer()
%% }
-type map_run_redriven_event_details() :: #{binary() => any()}.

%% Example:
%% test_state_output() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"inspectionData">> => inspection_data(),
%%   <<"nextState">> => string(),
%%   <<"output">> => string(),
%%   <<"status">> => list(any())
%% }
-type test_state_output() :: #{binary() => any()}.

%% Example:
%% update_map_run_input() :: #{
%%   <<"mapRunArn">> := string(),
%%   <<"maxConcurrency">> => integer(),
%%   <<"toleratedFailureCount">> => float(),
%%   <<"toleratedFailurePercentage">> => float()
%% }
-type update_map_run_input() :: #{binary() => any()}.

%% Example:
%% start_sync_execution_input() :: #{
%%   <<"includedData">> => list(any()),
%%   <<"input">> => string(),
%%   <<"name">> => string(),
%%   <<"stateMachineArn">> := string(),
%%   <<"traceHeader">> => string()
%% }
-type start_sync_execution_input() :: #{binary() => any()}.

%% Example:
%% validate_state_machine_definition_input() :: #{
%%   <<"definition">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"severity">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type validate_state_machine_definition_input() :: #{binary() => any()}.

%% Example:
%% send_task_success_input() :: #{
%%   <<"output">> := string(),
%%   <<"taskToken">> := string()
%% }
-type send_task_success_input() :: #{binary() => any()}.

%% Example:
%% routing_configuration_list_item() :: #{
%%   <<"stateMachineVersionArn">> => string(),
%%   <<"weight">> => integer()
%% }
-type routing_configuration_list_item() :: #{binary() => any()}.

%% Example:
%% execution_list_item() :: #{
%%   <<"executionArn">> => string(),
%%   <<"itemCount">> => integer(),
%%   <<"mapRunArn">> => string(),
%%   <<"name">> => string(),
%%   <<"redriveCount">> => integer(),
%%   <<"redriveDate">> => non_neg_integer(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"stateMachineAliasArn">> => string(),
%%   <<"stateMachineArn">> => string(),
%%   <<"stateMachineVersionArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"stopDate">> => non_neg_integer()
%% }
-type execution_list_item() :: #{binary() => any()}.

%% Example:
%% activity_scheduled_event_details() :: #{
%%   <<"heartbeatInSeconds">> => float(),
%%   <<"input">> => string(),
%%   <<"inputDetails">> => history_event_execution_data_details(),
%%   <<"resource">> => string(),
%%   <<"timeoutInSeconds">> => float()
%% }
-type activity_scheduled_event_details() :: #{binary() => any()}.

%% Example:
%% activity_timed_out_event_details() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string()
%% }
-type activity_timed_out_event_details() :: #{binary() => any()}.

%% Example:
%% task_credentials() :: #{
%%   <<"roleArn">> => string()
%% }
-type task_credentials() :: #{binary() => any()}.

%% Example:
%% send_task_heartbeat_output() :: #{

%% }
-type send_task_heartbeat_output() :: #{binary() => any()}.

%% Example:
%% create_state_machine_alias_output() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"stateMachineAliasArn">> => string()
%% }
-type create_state_machine_alias_output() :: #{binary() => any()}.

%% Example:
%% describe_map_run_output() :: #{
%%   <<"executionArn">> => string(),
%%   <<"executionCounts">> => map_run_execution_counts(),
%%   <<"itemCounts">> => map_run_item_counts(),
%%   <<"mapRunArn">> => string(),
%%   <<"maxConcurrency">> => integer(),
%%   <<"redriveCount">> => integer(),
%%   <<"redriveDate">> => non_neg_integer(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stopDate">> => non_neg_integer(),
%%   <<"toleratedFailureCount">> => float(),
%%   <<"toleratedFailurePercentage">> => float()
%% }
-type describe_map_run_output() :: #{binary() => any()}.

%% Example:
%% test_state_input() :: #{
%%   <<"definition">> := string(),
%%   <<"input">> => string(),
%%   <<"inspectionLevel">> => list(any()),
%%   <<"revealSecrets">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"variables">> => string()
%% }
-type test_state_input() :: #{binary() => any()}.

%% Example:
%% invalid_logging_configuration() :: #{
%%   <<"message">> => string()
%% }
-type invalid_logging_configuration() :: #{binary() => any()}.

%% Example:
%% list_state_machine_versions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stateMachineArn">> := string()
%% }
-type list_state_machine_versions_input() :: #{binary() => any()}.

%% Example:
%% state_machine_deleting() :: #{
%%   <<"message">> => string()
%% }
-type state_machine_deleting() :: #{binary() => any()}.

%% Example:
%% list_activities_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_activities_input() :: #{binary() => any()}.

%% Example:
%% list_state_machine_versions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"stateMachineVersions">> => list(state_machine_version_list_item())
%% }
-type list_state_machine_versions_output() :: #{binary() => any()}.

%% Example:
%% activity_does_not_exist() :: #{
%%   <<"message">> => string()
%% }
-type activity_does_not_exist() :: #{binary() => any()}.

%% Example:
%% delete_state_machine_version_input() :: #{
%%   <<"stateMachineVersionArn">> := string()
%% }
-type delete_state_machine_version_input() :: #{binary() => any()}.

%% Example:
%% kms_invalid_state_exception() :: #{
%%   <<"kmsKeyState">> => list(any()),
%%   <<"message">> => string()
%% }
-type kms_invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% validate_state_machine_definition_diagnostic() :: #{
%%   <<"code">> => string(),
%%   <<"location">> => string(),
%%   <<"message">> => string(),
%%   <<"severity">> => list(any())
%% }
-type validate_state_machine_definition_diagnostic() :: #{binary() => any()}.

%% Example:
%% list_activities_output() :: #{
%%   <<"activities">> => list(activity_list_item()),
%%   <<"nextToken">> => string()
%% }
-type list_activities_output() :: #{binary() => any()}.

%% Example:
%% too_many_tags() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags() :: #{binary() => any()}.

%% Example:
%% activity_started_event_details() :: #{
%%   <<"workerName">> => string()
%% }
-type activity_started_event_details() :: #{binary() => any()}.

%% Example:
%% list_map_runs_output() :: #{
%%   <<"mapRuns">> => list(map_run_list_item()),
%%   <<"nextToken">> => string()
%% }
-type list_map_runs_output() :: #{binary() => any()}.

%% Example:
%% list_executions_input() :: #{
%%   <<"mapRunArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"redriveFilter">> => list(any()),
%%   <<"stateMachineArn">> => string(),
%%   <<"statusFilter">> => list(any())
%% }
-type list_executions_input() :: #{binary() => any()}.

%% Example:
%% inspection_data_response() :: #{
%%   <<"body">> => string(),
%%   <<"headers">> => string(),
%%   <<"protocol">> => string(),
%%   <<"statusCode">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type inspection_data_response() :: #{binary() => any()}.

%% Example:
%% invalid_execution_input() :: #{
%%   <<"message">> => string()
%% }
-type invalid_execution_input() :: #{binary() => any()}.

%% Example:
%% task_scheduled_event_details() :: #{
%%   <<"heartbeatInSeconds">> => float(),
%%   <<"parameters">> => string(),
%%   <<"region">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"taskCredentials">> => task_credentials(),
%%   <<"timeoutInSeconds">> => float()
%% }
-type task_scheduled_event_details() :: #{binary() => any()}.

%% Example:
%% publish_state_machine_version_output() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"stateMachineVersionArn">> => string()
%% }
-type publish_state_machine_version_output() :: #{binary() => any()}.

%% Example:
%% start_execution_input() :: #{
%%   <<"input">> => string(),
%%   <<"name">> => string(),
%%   <<"stateMachineArn">> := string(),
%%   <<"traceHeader">> => string()
%% }
-type start_execution_input() :: #{binary() => any()}.

%% Example:
%% describe_map_run_input() :: #{
%%   <<"mapRunArn">> := string()
%% }
-type describe_map_run_input() :: #{binary() => any()}.

%% Example:
%% invalid_arn() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn() :: #{binary() => any()}.

%% Example:
%% stop_execution_input() :: #{
%%   <<"cause">> => string(),
%%   <<"error">> => string(),
%%   <<"executionArn">> := string()
%% }
-type stop_execution_input() :: #{binary() => any()}.

%% Example:
%% describe_state_machine_output() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"definition">> => string(),
%%   <<"description">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"label">> => string(),
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"stateMachineArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tracingConfiguration">> => tracing_configuration(),
%%   <<"type">> => list(any()),
%%   <<"variableReferences">> => map()
%% }
-type describe_state_machine_output() :: #{binary() => any()}.

-type create_activity_errors() ::
    too_many_tags() | 
    invalid_name() | 
    activity_limit_exceeded() | 
    activity_already_exists() | 
    kms_access_denied_exception() | 
    invalid_encryption_configuration() | 
    kms_throttling_exception().

-type create_state_machine_errors() ::
    invalid_arn() | 
    too_many_tags() | 
    state_machine_deleting() | 
    invalid_logging_configuration() | 
    validation_exception() | 
    invalid_name() | 
    invalid_definition() | 
    kms_access_denied_exception() | 
    state_machine_limit_exceeded() | 
    invalid_encryption_configuration() | 
    conflict_exception() | 
    state_machine_already_exists() | 
    invalid_tracing_configuration() | 
    kms_throttling_exception() | 
    state_machine_type_not_supported().

-type create_state_machine_alias_errors() ::
    invalid_arn() | 
    state_machine_deleting() | 
    validation_exception() | 
    invalid_name() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    resource_not_found().

-type delete_activity_errors() ::
    invalid_arn().

-type delete_state_machine_errors() ::
    invalid_arn() | 
    validation_exception().

-type delete_state_machine_alias_errors() ::
    invalid_arn() | 
    validation_exception() | 
    conflict_exception() | 
    resource_not_found().

-type delete_state_machine_version_errors() ::
    invalid_arn() | 
    validation_exception() | 
    conflict_exception().

-type describe_activity_errors() ::
    invalid_arn() | 
    activity_does_not_exist().

-type describe_execution_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    kms_access_denied_exception() | 
    kms_throttling_exception() | 
    execution_does_not_exist().

-type describe_map_run_errors() ::
    invalid_arn() | 
    resource_not_found().

-type describe_state_machine_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    state_machine_does_not_exist() | 
    kms_access_denied_exception() | 
    kms_throttling_exception().

-type describe_state_machine_alias_errors() ::
    invalid_arn() | 
    validation_exception() | 
    resource_not_found().

-type describe_state_machine_for_execution_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    kms_access_denied_exception() | 
    kms_throttling_exception() | 
    execution_does_not_exist().

-type get_activity_task_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    activity_does_not_exist() | 
    kms_access_denied_exception() | 
    activity_worker_limit_exceeded() | 
    kms_throttling_exception().

-type get_execution_history_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    kms_access_denied_exception() | 
    invalid_token() | 
    kms_throttling_exception() | 
    execution_does_not_exist().

-type list_activities_errors() ::
    invalid_token().

-type list_executions_errors() ::
    invalid_arn() | 
    validation_exception() | 
    state_machine_does_not_exist() | 
    invalid_token() | 
    state_machine_type_not_supported() | 
    resource_not_found().

-type list_map_runs_errors() ::
    invalid_arn() | 
    invalid_token() | 
    execution_does_not_exist().

-type list_state_machine_aliases_errors() ::
    invalid_arn() | 
    state_machine_deleting() | 
    state_machine_does_not_exist() | 
    invalid_token() | 
    resource_not_found().

-type list_state_machine_versions_errors() ::
    invalid_arn() | 
    validation_exception() | 
    invalid_token().

-type list_state_machines_errors() ::
    invalid_token().

-type list_tags_for_resource_errors() ::
    invalid_arn() | 
    resource_not_found().

-type publish_state_machine_version_errors() ::
    invalid_arn() | 
    state_machine_deleting() | 
    validation_exception() | 
    state_machine_does_not_exist() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type redrive_execution_errors() ::
    invalid_arn() | 
    validation_exception() | 
    execution_limit_exceeded() | 
    execution_not_redrivable() | 
    execution_does_not_exist().

-type send_task_failure_errors() ::
    kms_invalid_state_exception() | 
    task_does_not_exist() | 
    kms_access_denied_exception() | 
    task_timed_out() | 
    invalid_token() | 
    kms_throttling_exception().

-type send_task_heartbeat_errors() ::
    task_does_not_exist() | 
    task_timed_out() | 
    invalid_token().

-type send_task_success_errors() ::
    kms_invalid_state_exception() | 
    task_does_not_exist() | 
    kms_access_denied_exception() | 
    task_timed_out() | 
    invalid_token() | 
    invalid_output() | 
    kms_throttling_exception().

-type start_execution_errors() ::
    invalid_arn() | 
    invalid_execution_input() | 
    kms_invalid_state_exception() | 
    state_machine_deleting() | 
    validation_exception() | 
    invalid_name() | 
    execution_already_exists() | 
    state_machine_does_not_exist() | 
    kms_access_denied_exception() | 
    execution_limit_exceeded() | 
    kms_throttling_exception().

-type start_sync_execution_errors() ::
    invalid_arn() | 
    invalid_execution_input() | 
    kms_invalid_state_exception() | 
    state_machine_deleting() | 
    invalid_name() | 
    state_machine_does_not_exist() | 
    kms_access_denied_exception() | 
    kms_throttling_exception() | 
    state_machine_type_not_supported().

-type stop_execution_errors() ::
    invalid_arn() | 
    kms_invalid_state_exception() | 
    validation_exception() | 
    kms_access_denied_exception() | 
    kms_throttling_exception() | 
    execution_does_not_exist().

-type tag_resource_errors() ::
    invalid_arn() | 
    too_many_tags() | 
    resource_not_found().

-type test_state_errors() ::
    invalid_arn() | 
    invalid_execution_input() | 
    validation_exception() | 
    invalid_definition().

-type untag_resource_errors() ::
    invalid_arn() | 
    resource_not_found().

-type update_map_run_errors() ::
    invalid_arn() | 
    validation_exception() | 
    resource_not_found().

-type update_state_machine_errors() ::
    invalid_arn() | 
    state_machine_deleting() | 
    invalid_logging_configuration() | 
    validation_exception() | 
    invalid_definition() | 
    state_machine_does_not_exist() | 
    kms_access_denied_exception() | 
    invalid_encryption_configuration() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    invalid_tracing_configuration() | 
    kms_throttling_exception() | 
    missing_required_parameter().

-type update_state_machine_alias_errors() ::
    invalid_arn() | 
    state_machine_deleting() | 
    validation_exception() | 
    conflict_exception() | 
    resource_not_found().

-type validate_state_machine_definition_errors() ::
    validation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an activity.
%%
%% An activity is a task that you write in any programming language and
%% host on any machine that has access to Step Functions. Activities must
%% poll Step Functions using the
%% `GetActivityTask' API action and respond using `SendTask*' API
%% actions. This function lets Step Functions know the existence of your
%% activity and returns an
%% identifier for use in a state machine and when polling from the activity.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% `CreateActivity' is an idempotent API. Subsequent requests won’t
%% create a
%% duplicate resource if it was already created. `CreateActivity''s
%% idempotency
%% check is based on the activity `name'. If a following request has
%% different
%% `tags' values, Step Functions will ignore these differences and treat
%% it as an
%% idempotent request of the previous. In this case, `tags' will not be
%% updated,
%% even if they are different.
-spec create_activity(aws_client:aws_client(), create_activity_input()) ->
    {ok, create_activity_output(), tuple()} |
    {error, any()} |
    {error, create_activity_errors(), tuple()}.
create_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activity(Client, Input, []).

-spec create_activity(aws_client:aws_client(), create_activity_input(), proplists:proplist()) ->
    {ok, create_activity_output(), tuple()} |
    {error, any()} |
    {error, create_activity_errors(), tuple()}.
create_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivity">>, Input, Options).

%% @doc Creates a state machine.
%%
%% A state machine consists of a collection of states that can do
%% work (`Task' states), determine to which states to transition next
%% (`Choice' states), stop an execution with an error (`Fail'
%% states),
%% and so on. State machines are specified using a JSON-based, structured
%% language. For more
%% information, see Amazon States
%% Language:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
%% in the Step Functions User Guide.
%%
%% If you set the `publish' parameter of this API action to `true',
%% it
%% publishes version `1' as the first revision of the state machine.
%%
%% For additional control over security, you can encrypt your data using a
%% customer-managed key for Step Functions state machines. You can configure
%% a symmetric KMS key and data key reuse period when creating or updating a
%% State Machine. The execution history and state machine definition will be
%% encrypted with the key applied to the State Machine.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% `CreateStateMachine' is an idempotent API. Subsequent requests won’t
%% create a
%% duplicate resource if it was already created.
%% `CreateStateMachine''s idempotency
%% check is based on the state machine `name', `definition',
%% `type', `LoggingConfiguration',
%% `TracingConfiguration', and `EncryptionConfiguration' The check is
%% also based on the `publish' and `versionDescription' parameters.
%% If a following request has a different
%% `roleArn' or `tags', Step Functions will ignore these differences
%% and treat
%% it as an idempotent request of the previous. In this case, `roleArn'
%% and
%% `tags' will not be updated, even if they are different.
-spec create_state_machine(aws_client:aws_client(), create_state_machine_input()) ->
    {ok, create_state_machine_output(), tuple()} |
    {error, any()} |
    {error, create_state_machine_errors(), tuple()}.
create_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_machine(Client, Input, []).

-spec create_state_machine(aws_client:aws_client(), create_state_machine_input(), proplists:proplist()) ->
    {ok, create_state_machine_output(), tuple()} |
    {error, any()} |
    {error, create_state_machine_errors(), tuple()}.
create_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateMachine">>, Input, Options).

%% @doc Creates an alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% for a state machine that points to one or two versions:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
%% of the same state machine.
%%
%% You can set your application to call `StartExecution' with an alias
%% and update the version the alias uses without changing the client's
%% code.
%%
%% You can also map an alias to split `StartExecution' requests between
%% two
%% versions of a state machine. To do this, add a second `RoutingConfig'
%% object in the
%% `routingConfiguration' parameter. You must also specify the percentage
%% of
%% execution run requests each version should receive in both
%% `RoutingConfig' objects.
%% Step Functions randomly chooses which version runs a given execution based
%% on the
%% percentage you specify.
%%
%% To create an alias that points to a single version, specify a single
%% `RoutingConfig' object with a `weight' set to 100.
%%
%% You can create up to 100 aliases for each state machine. You must delete
%% unused aliases using the `DeleteStateMachineAlias' API action.
%%
%% `CreateStateMachineAlias' is an idempotent API. Step Functions bases
%% the
%% idempotency check on the `stateMachineArn', `description',
%% `name', and `routingConfiguration' parameters. Requests that
%% contain
%% the same values for these parameters return a successful idempotent
%% response without creating
%% a duplicate resource.
%%
%% Related operations:
%%
%% `DescribeStateMachineAlias'
%%
%% `ListStateMachineAliases'
%%
%% `UpdateStateMachineAlias'
%%
%% `DeleteStateMachineAlias'
-spec create_state_machine_alias(aws_client:aws_client(), create_state_machine_alias_input()) ->
    {ok, create_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, create_state_machine_alias_errors(), tuple()}.
create_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_state_machine_alias(Client, Input, []).

-spec create_state_machine_alias(aws_client:aws_client(), create_state_machine_alias_input(), proplists:proplist()) ->
    {ok, create_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, create_state_machine_alias_errors(), tuple()}.
create_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStateMachineAlias">>, Input, Options).

%% @doc Deletes an activity.
-spec delete_activity(aws_client:aws_client(), delete_activity_input()) ->
    {ok, delete_activity_output(), tuple()} |
    {error, any()} |
    {error, delete_activity_errors(), tuple()}.
delete_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activity(Client, Input, []).

-spec delete_activity(aws_client:aws_client(), delete_activity_input(), proplists:proplist()) ->
    {ok, delete_activity_output(), tuple()} |
    {error, any()} |
    {error, delete_activity_errors(), tuple()}.
delete_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivity">>, Input, Options).

%% @doc Deletes a state machine.
%%
%% This is an asynchronous operation. It sets the state machine's
%% status to `DELETING' and begins the deletion process. A state machine
%% is deleted only when all its executions are completed. On the next state
%% transition, the state machine's executions are terminated.
%%
%% A qualified state machine ARN can either refer to a Distributed Map state
%% defined within a state machine, a version ARN, or an alias ARN.
%%
%% The following are some examples of qualified and unqualified state machine
%% ARNs:
%%
%% The following qualified state machine ARN refers to a Distributed Map
%% state with a label `mapStateLabel' in a state machine named
%% `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% The following unqualified state machine ARN refers to a state machine
%% named `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine'
%%
%% This API action also deletes all versions:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
%% and aliases:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% associated with a state machine.
%%
%% For `EXPRESS' state machines, the deletion happens eventually (usually
%% in
%% less than a minute). Running executions may emit logs after
%% `DeleteStateMachine'
%% API is called.
-spec delete_state_machine(aws_client:aws_client(), delete_state_machine_input()) ->
    {ok, delete_state_machine_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_errors(), tuple()}.
delete_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine(Client, Input, []).

-spec delete_state_machine(aws_client:aws_client(), delete_state_machine_input(), proplists:proplist()) ->
    {ok, delete_state_machine_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_errors(), tuple()}.
delete_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachine">>, Input, Options).

%% @doc Deletes a state machine alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html.
%%
%% After you delete a state machine alias, you can't use it to start
%% executions. When you
%% delete a state machine alias, Step Functions doesn't delete the state
%% machine versions
%% that alias references.
%%
%% Related operations:
%%
%% `CreateStateMachineAlias'
%%
%% `DescribeStateMachineAlias'
%%
%% `ListStateMachineAliases'
%%
%% `UpdateStateMachineAlias'
-spec delete_state_machine_alias(aws_client:aws_client(), delete_state_machine_alias_input()) ->
    {ok, delete_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_alias_errors(), tuple()}.
delete_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine_alias(Client, Input, []).

-spec delete_state_machine_alias(aws_client:aws_client(), delete_state_machine_alias_input(), proplists:proplist()) ->
    {ok, delete_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_alias_errors(), tuple()}.
delete_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachineAlias">>, Input, Options).

%% @doc Deletes a state machine version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html.
%%
%% After
%% you delete a version, you can't call `StartExecution' using that
%% version's ARN
%% or use the version with a state machine alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html.
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
%% `PublishStateMachineVersion'
%%
%% `ListStateMachineVersions'
-spec delete_state_machine_version(aws_client:aws_client(), delete_state_machine_version_input()) ->
    {ok, delete_state_machine_version_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_version_errors(), tuple()}.
delete_state_machine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_state_machine_version(Client, Input, []).

-spec delete_state_machine_version(aws_client:aws_client(), delete_state_machine_version_input(), proplists:proplist()) ->
    {ok, delete_state_machine_version_output(), tuple()} |
    {error, any()} |
    {error, delete_state_machine_version_errors(), tuple()}.
delete_state_machine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStateMachineVersion">>, Input, Options).

%% @doc Describes an activity.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
-spec describe_activity(aws_client:aws_client(), describe_activity_input()) ->
    {ok, describe_activity_output(), tuple()} |
    {error, any()} |
    {error, describe_activity_errors(), tuple()}.
describe_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity(Client, Input, []).

-spec describe_activity(aws_client:aws_client(), describe_activity_input(), proplists:proplist()) ->
    {ok, describe_activity_output(), tuple()} |
    {error, any()} |
    {error, describe_activity_errors(), tuple()}.
describe_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivity">>, Input, Options).

%% @doc Provides information about a state machine execution, such as the
%% state machine associated with the execution, the execution input and
%% output, and relevant execution metadata.
%%
%% If you've redriven:
%% https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html
%% an execution, you can use this API action to return information about the
%% redrives of that execution. In addition, you can use this API action to
%% return the Map Run Amazon Resource Name (ARN) if the execution was
%% dispatched by a Map Run.
%%
%% If you specify a version or alias ARN when you call the
%% `StartExecution'
%% API action, `DescribeExecution' returns that ARN.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% Executions of an `EXPRESS' state machine aren't supported by
%% `DescribeExecution' unless a Map Run dispatched them.
-spec describe_execution(aws_client:aws_client(), describe_execution_input()) ->
    {ok, describe_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_execution(Client, Input, []).

-spec describe_execution(aws_client:aws_client(), describe_execution_input(), proplists:proplist()) ->
    {ok, describe_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExecution">>, Input, Options).

%% @doc Provides information about a Map Run's configuration, progress,
%% and results.
%%
%% If you've redriven:
%% https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html
%% a Map Run, this API action also returns information about the redrives of
%% that Map Run. For more information, see Examining Map Run:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html
%% in the Step Functions Developer Guide.
-spec describe_map_run(aws_client:aws_client(), describe_map_run_input()) ->
    {ok, describe_map_run_output(), tuple()} |
    {error, any()} |
    {error, describe_map_run_errors(), tuple()}.
describe_map_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_map_run(Client, Input, []).

-spec describe_map_run(aws_client:aws_client(), describe_map_run_input(), proplists:proplist()) ->
    {ok, describe_map_run_output(), tuple()} |
    {error, any()} |
    {error, describe_map_run_errors(), tuple()}.
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
%% The following qualified state machine ARN refers to a Distributed Map
%% state with a label `mapStateLabel' in a state machine named
%% `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% The following qualified state machine ARN refers to an alias named
%% `PROD'.
%%
%% `arn::states:::stateMachine:'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% The following unqualified state machine ARN refers to a state machine
%% named `myStateMachine'.
%%
%% `arn::states:::stateMachine:'
%%
%% This API action returns the details for a state machine version if the
%% `stateMachineArn' you specify is a state machine version ARN.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
-spec describe_state_machine(aws_client:aws_client(), describe_state_machine_input()) ->
    {ok, describe_state_machine_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_errors(), tuple()}.
describe_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine(Client, Input, []).

-spec describe_state_machine(aws_client:aws_client(), describe_state_machine_input(), proplists:proplist()) ->
    {ok, describe_state_machine_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_errors(), tuple()}.
describe_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachine">>, Input, Options).

%% @doc Returns details about a state machine alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html.
%%
%% Related operations:
%%
%% `CreateStateMachineAlias'
%%
%% `ListStateMachineAliases'
%%
%% `UpdateStateMachineAlias'
%%
%% `DeleteStateMachineAlias'
-spec describe_state_machine_alias(aws_client:aws_client(), describe_state_machine_alias_input()) ->
    {ok, describe_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_alias_errors(), tuple()}.
describe_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine_alias(Client, Input, []).

-spec describe_state_machine_alias(aws_client:aws_client(), describe_state_machine_alias_input(), proplists:proplist()) ->
    {ok, describe_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_alias_errors(), tuple()}.
describe_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachineAlias">>, Input, Options).

%% @doc Provides information about a state machine's definition, its
%% execution role ARN, and
%% configuration.
%%
%% If a Map Run dispatched the execution, this action returns the Map Run
%% Amazon Resource Name (ARN) in the response. The state machine returned is
%% the state machine associated with the
%% Map Run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% This API action is not supported by `EXPRESS' state machines.
-spec describe_state_machine_for_execution(aws_client:aws_client(), describe_state_machine_for_execution_input()) ->
    {ok, describe_state_machine_for_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_for_execution_errors(), tuple()}.
describe_state_machine_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_state_machine_for_execution(Client, Input, []).

-spec describe_state_machine_for_execution(aws_client:aws_client(), describe_state_machine_for_execution_input(), proplists:proplist()) ->
    {ok, describe_state_machine_for_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_state_machine_for_execution_errors(), tuple()}.
describe_state_machine_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStateMachineForExecution">>, Input, Options).

%% @doc Used by workers to retrieve a task (with the specified activity ARN)
%% which has been
%% scheduled for execution by a running state machine.
%%
%% This initiates a long poll, where the
%% service holds the HTTP connection open and responds as soon as a task
%% becomes available (i.e.
%% an execution of a task of this type is needed.) The maximum time the
%% service holds on to the
%% request before responding is 60 seconds. If no task is available within 60
%% seconds, the poll
%% returns a `taskToken' with a null string.
%%
%% This API action isn't logged in CloudTrail.
%%
%% Workers should set their client side socket timeout to at least 65 seconds
%% (5 seconds
%% higher than the maximum time the service may hold the poll request).
%%
%% Polling with `GetActivityTask' can cause latency in some
%% implementations. See
%% Avoid
%% Latency When Polling for Activity Tasks:
%% https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html
%% in the Step Functions Developer Guide.
-spec get_activity_task(aws_client:aws_client(), get_activity_task_input()) ->
    {ok, get_activity_task_output(), tuple()} |
    {error, any()} |
    {error, get_activity_task_errors(), tuple()}.
get_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_activity_task(Client, Input, []).

-spec get_activity_task(aws_client:aws_client(), get_activity_task_input(), proplists:proplist()) ->
    {ok, get_activity_task_output(), tuple()} |
    {error, any()} |
    {error, get_activity_task_errors(), tuple()}.
get_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActivityTask">>, Input, Options).

%% @doc Returns the history of the specified execution as a list of events.
%%
%% By default, the
%% results are returned in ascending order of the `timeStamp' of the
%% events. Use the
%% `reverseOrder' parameter to get the latest events first.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This API action is not supported by `EXPRESS' state machines.
-spec get_execution_history(aws_client:aws_client(), get_execution_history_input()) ->
    {ok, get_execution_history_output(), tuple()} |
    {error, any()} |
    {error, get_execution_history_errors(), tuple()}.
get_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution_history(Client, Input, []).

-spec get_execution_history(aws_client:aws_client(), get_execution_history_input(), proplists:proplist()) ->
    {ok, get_execution_history_output(), tuple()} |
    {error, any()} |
    {error, get_execution_history_errors(), tuple()}.
get_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecutionHistory">>, Input, Options).

%% @doc Lists the existing activities.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
-spec list_activities(aws_client:aws_client(), list_activities_input()) ->
    {ok, list_activities_output(), tuple()} |
    {error, any()} |
    {error, list_activities_errors(), tuple()}.
list_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activities(Client, Input, []).

-spec list_activities(aws_client:aws_client(), list_activities_input(), proplists:proplist()) ->
    {ok, list_activities_output(), tuple()} |
    {error, any()} |
    {error, list_activities_errors(), tuple()}.
list_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivities">>, Input, Options).

%% @doc Lists all executions of a state machine or a Map Run.
%%
%% You can list all executions related to a state machine by specifying a
%% state machine Amazon Resource Name (ARN), or those related to a Map Run by
%% specifying a Map Run ARN. Using this API action, you can also list all
%% redriven:
%% https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html
%% executions.
%%
%% You can also provide a state machine alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% ARN or version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
%% ARN to list the executions associated with a specific alias or version.
%%
%% Results are
%% sorted by time, with the most recent execution first.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
%%
%% This API action is not supported by `EXPRESS' state machines.
-spec list_executions(aws_client:aws_client(), list_executions_input()) ->
    {ok, list_executions_output(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).

-spec list_executions(aws_client:aws_client(), list_executions_input(), proplists:proplist()) ->
    {ok, list_executions_output(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Lists all Map Runs that were started by a given state machine
%% execution.
%%
%% Use this API action to obtain Map Run ARNs, and then call
%% `DescribeMapRun' to obtain more information, if needed.
-spec list_map_runs(aws_client:aws_client(), list_map_runs_input()) ->
    {ok, list_map_runs_output(), tuple()} |
    {error, any()} |
    {error, list_map_runs_errors(), tuple()}.
list_map_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_map_runs(Client, Input, []).

-spec list_map_runs(aws_client:aws_client(), list_map_runs_input(), proplists:proplist()) ->
    {ok, list_map_runs_output(), tuple()} |
    {error, any()} |
    {error, list_map_runs_errors(), tuple()}.
list_map_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMapRuns">>, Input, Options).

%% @doc Lists aliases:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% for a specified state machine ARN.
%%
%% Results are sorted by time, with the most recently created aliases listed
%% first.
%%
%% To list aliases that reference a state machine version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html,
%% you can specify the version ARN in the `stateMachineArn' parameter.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% Related operations:
%%
%% `CreateStateMachineAlias'
%%
%% `DescribeStateMachineAlias'
%%
%% `UpdateStateMachineAlias'
%%
%% `DeleteStateMachineAlias'
-spec list_state_machine_aliases(aws_client:aws_client(), list_state_machine_aliases_input()) ->
    {ok, list_state_machine_aliases_output(), tuple()} |
    {error, any()} |
    {error, list_state_machine_aliases_errors(), tuple()}.
list_state_machine_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machine_aliases(Client, Input, []).

-spec list_state_machine_aliases(aws_client:aws_client(), list_state_machine_aliases_input(), proplists:proplist()) ->
    {ok, list_state_machine_aliases_output(), tuple()} |
    {error, any()} |
    {error, list_state_machine_aliases_errors(), tuple()}.
list_state_machine_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachineAliases">>, Input, Options).

%% @doc Lists versions:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
%% for the specified state machine Amazon Resource Name (ARN).
%%
%% The results are sorted in descending order of the version creation time.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% Related operations:
%%
%% `PublishStateMachineVersion'
%%
%% `DeleteStateMachineVersion'
-spec list_state_machine_versions(aws_client:aws_client(), list_state_machine_versions_input()) ->
    {ok, list_state_machine_versions_output(), tuple()} |
    {error, any()} |
    {error, list_state_machine_versions_errors(), tuple()}.
list_state_machine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machine_versions(Client, Input, []).

-spec list_state_machine_versions(aws_client:aws_client(), list_state_machine_versions_input(), proplists:proplist()) ->
    {ok, list_state_machine_versions_output(), tuple()} |
    {error, any()} |
    {error, list_state_machine_versions_errors(), tuple()}.
list_state_machine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachineVersions">>, Input, Options).

%% @doc Lists the existing state machines.
%%
%% If `nextToken' is returned, there are more results available. The
%% value of `nextToken' is a unique pagination token for each page.
%% Make the call again using the returned token to retrieve the next page.
%% Keep all other arguments unchanged. Each pagination token expires after 24
%% hours. Using an expired pagination token will return an HTTP 400
%% InvalidToken error.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
-spec list_state_machines(aws_client:aws_client(), list_state_machines_input()) ->
    {ok, list_state_machines_output(), tuple()} |
    {error, any()} |
    {error, list_state_machines_errors(), tuple()}.
list_state_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_state_machines(Client, Input, []).

-spec list_state_machines(aws_client:aws_client(), list_state_machines_input(), proplists:proplist()) ->
    {ok, list_state_machines_output(), tuple()} |
    {error, any()} |
    {error, list_state_machines_errors(), tuple()}.
list_state_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStateMachines">>, Input, Options).

%% @doc List tags for a given resource.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: `_ . : / = + - @'.
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

%% @doc Creates a version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
%% from the
%% current revision of a state machine.
%%
%% Use versions to create immutable snapshots of your state
%% machine. You can start executions from versions either directly or with an
%% alias. To create an
%% alias, use `CreateStateMachineAlias'.
%%
%% You can publish up to 1000 versions for each state machine. You must
%% manually delete unused versions using the `DeleteStateMachineVersion'
%% API action.
%%
%% `PublishStateMachineVersion' is an idempotent API. It doesn't
%% create a
%% duplicate state machine version if it already exists for the current
%% revision. Step Functions bases `PublishStateMachineVersion''s
%% idempotency check on the
%% `stateMachineArn', `name', and `revisionId' parameters.
%% Requests with the same parameters return a successful idempotent response.
%% If you don't
%% specify a `revisionId', Step Functions checks for a previously
%% published
%% version of the state machine's current revision.
%%
%% Related operations:
%%
%% `DeleteStateMachineVersion'
%%
%% `ListStateMachineVersions'
-spec publish_state_machine_version(aws_client:aws_client(), publish_state_machine_version_input()) ->
    {ok, publish_state_machine_version_output(), tuple()} |
    {error, any()} |
    {error, publish_state_machine_version_errors(), tuple()}.
publish_state_machine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_state_machine_version(Client, Input, []).

-spec publish_state_machine_version(aws_client:aws_client(), publish_state_machine_version_input(), proplists:proplist()) ->
    {ok, publish_state_machine_version_output(), tuple()} |
    {error, any()} |
    {error, publish_state_machine_version_errors(), tuple()}.
publish_state_machine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishStateMachineVersion">>, Input, Options).

%% @doc Restarts unsuccessful executions of Standard workflows that
%% didn't complete successfully in the last 14 days.
%%
%% These include failed, aborted, or timed out executions. When you redrive:
%% https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html
%% an execution, it continues the failed execution from the unsuccessful step
%% and uses the same input. Step Functions preserves the results and
%% execution history of the successful steps, and doesn't rerun these
%% steps when you redrive an execution. Redriven executions use the same
%% state machine definition and execution ARN as the original execution
%% attempt.
%%
%% For workflows that include an Inline Map:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html
%% or Parallel:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html
%% state, `RedriveExecution' API action reschedules and redrives only the
%% iterations and branches that failed or aborted.
%%
%% To redrive a workflow that includes a Distributed Map state whose Map Run
%% failed, you must redrive the parent workflow:
%% https://docs.aws.amazon.com/step-functions/latest/dg/use-dist-map-orchestrate-large-scale-parallel-workloads.html#dist-map-orchestrate-parallel-workloads-key-terms.
%% The parent workflow redrives all the unsuccessful states, including a
%% failed Map Run. If a Map Run was not started in the original execution
%% attempt, the redriven parent workflow starts the Map Run.
%%
%% This API action is not supported by `EXPRESS' state machines.
%%
%% However, you can restart the unsuccessful executions of Express child
%% workflows in a Distributed Map by redriving its Map Run. When you redrive
%% a Map Run, the Express child workflows are rerun using the
%% `StartExecution' API action. For more information, see Redriving Map
%% Runs:
%% https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html.
%%
%% You can redrive executions if your original execution meets the following
%% conditions:
%%
%% The execution status isn't `SUCCEEDED'.
%%
%% Your workflow execution has not exceeded the redrivable period of 14 days.
%% Redrivable period refers to the time during which you can redrive a given
%% execution. This period starts from the day a state machine completes its
%% execution.
%%
%% The workflow execution has not exceeded the maximum open time of one year.
%% For more information about state machine quotas, see Quotas related to
%% state machine executions:
%% https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions.
%%
%% The execution event history count is less than 24,999. Redriven executions
%% append their event history to the existing event history. Make sure your
%% workflow execution contains less than 24,999 events to accommodate the
%% `ExecutionRedriven' history event and at least one other history
%% event.
-spec redrive_execution(aws_client:aws_client(), redrive_execution_input()) ->
    {ok, redrive_execution_output(), tuple()} |
    {error, any()} |
    {error, redrive_execution_errors(), tuple()}.
redrive_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    redrive_execution(Client, Input, []).

-spec redrive_execution(aws_client:aws_client(), redrive_execution_input(), proplists:proplist()) ->
    {ok, redrive_execution_output(), tuple()} |
    {error, any()} |
    {error, redrive_execution_errors(), tuple()}.
redrive_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RedriveExecution">>, Input, Options).

%% @doc Used by activity workers, Task states using the callback:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
%% pattern, and optionally Task states using the job run:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync
%% pattern to report that the task identified by the `taskToken' failed.
%%
%% For an execution with encryption enabled, Step Functions will encrypt the
%% error and cause fields using the KMS key for the execution role.
%%
%% A caller can mark a task as fail without using any KMS permissions in the
%% execution role if the caller provides a null value for both `error'
%% and `cause' fields because no data needs to be encrypted.
-spec send_task_failure(aws_client:aws_client(), send_task_failure_input()) ->
    {ok, send_task_failure_output(), tuple()} |
    {error, any()} |
    {error, send_task_failure_errors(), tuple()}.
send_task_failure(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_failure(Client, Input, []).

-spec send_task_failure(aws_client:aws_client(), send_task_failure_input(), proplists:proplist()) ->
    {ok, send_task_failure_output(), tuple()} |
    {error, any()} |
    {error, send_task_failure_errors(), tuple()}.
send_task_failure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskFailure">>, Input, Options).

%% @doc Used by activity workers and Task states using the callback:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
%% pattern, and optionally Task states using the job run:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync
%% pattern to report to Step Functions that the task represented by the
%% specified
%% `taskToken' is still making progress.
%%
%% This action resets the
%% `Heartbeat' clock. The `Heartbeat' threshold is specified in the
%% state
%% machine's Amazon States Language definition (`HeartbeatSeconds').
%% This action does not in itself
%% create an event in the execution history. However, if the task times out,
%% the execution
%% history contains an `ActivityTimedOut' entry for activities, or a
%% `TaskTimedOut' entry for tasks using the job run:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync
%% or
%% callback:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
%% pattern.
%%
%% The `Timeout' of a task, defined in the state machine's Amazon
%% States Language definition, is
%% its maximum allowed duration, regardless of the number of
%% `SendTaskHeartbeat' requests received. Use `HeartbeatSeconds' to
%% configure the timeout interval
%% for heartbeats.
-spec send_task_heartbeat(aws_client:aws_client(), send_task_heartbeat_input()) ->
    {ok, send_task_heartbeat_output(), tuple()} |
    {error, any()} |
    {error, send_task_heartbeat_errors(), tuple()}.
send_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_heartbeat(Client, Input, []).

-spec send_task_heartbeat(aws_client:aws_client(), send_task_heartbeat_input(), proplists:proplist()) ->
    {ok, send_task_heartbeat_output(), tuple()} |
    {error, any()} |
    {error, send_task_heartbeat_errors(), tuple()}.
send_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTaskHeartbeat">>, Input, Options).

%% @doc Used by activity workers, Task states using the callback:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
%% pattern, and optionally Task states using the job run:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync
%% pattern to report that the task identified by the `taskToken'
%% completed
%% successfully.
-spec send_task_success(aws_client:aws_client(), send_task_success_input()) ->
    {ok, send_task_success_output(), tuple()} |
    {error, any()} |
    {error, send_task_success_errors(), tuple()}.
send_task_success(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_task_success(Client, Input, []).

-spec send_task_success(aws_client:aws_client(), send_task_success_input(), proplists:proplist()) ->
    {ok, send_task_success_output(), tuple()} |
    {error, any()} |
    {error, send_task_success_errors(), tuple()}.
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
%% The following qualified state machine ARN refers to a Distributed Map
%% state with a label `mapStateLabel' in a state machine named
%% `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% The following qualified state machine ARN refers to an alias named
%% `PROD'.
%%
%% `arn::states:::stateMachine:'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% The following unqualified state machine ARN refers to a state machine
%% named `myStateMachine'.
%%
%% `arn::states:::stateMachine:'
%%
%% If you start an execution with an unqualified state machine ARN, Step
%% Functions uses the latest revision of the state machine for the execution.
%%
%% To start executions of a state machine version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html,
%% call
%% `StartExecution' and provide the version ARN or the ARN of an alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% that points to the version.
%%
%% `StartExecution' is idempotent for `STANDARD' workflows. For a
%% `STANDARD' workflow, if you call `StartExecution' with the same
%% name
%% and input as a running execution, the call succeeds and return the same
%% response as the
%% original request. If the execution is closed or if the input is different,
%% it returns a
%% `400 ExecutionAlreadyExists' error. You can reuse names after 90 days.
%%
%% `StartExecution' isn't idempotent for `EXPRESS' workflows.
-spec start_execution(aws_client:aws_client(), start_execution_input()) ->
    {ok, start_execution_output(), tuple()} |
    {error, any()} |
    {error, start_execution_errors(), tuple()}.
start_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_execution(Client, Input, []).

-spec start_execution(aws_client:aws_client(), start_execution_input(), proplists:proplist()) ->
    {ok, start_execution_output(), tuple()} |
    {error, any()} |
    {error, start_execution_errors(), tuple()}.
start_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExecution">>, Input, Options).

%% @doc Starts a Synchronous Express state machine execution.
%%
%% `StartSyncExecution'
%% is not available for `STANDARD' workflows.
%%
%% `StartSyncExecution' will return a `200 OK' response, even if your
%% execution fails, because the status code in the API response doesn't
%% reflect function
%% errors. Error codes are reserved for errors that prevent your execution
%% from running, such
%% as permissions errors, limit errors, or issues with your state machine
%% code and
%% configuration.
%%
%% This API action isn't logged in CloudTrail.
-spec start_sync_execution(aws_client:aws_client(), start_sync_execution_input()) ->
    {ok, start_sync_execution_output(), tuple()} |
    {error, any()} |
    {error, start_sync_execution_errors(), tuple()}.
start_sync_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_sync_execution(Client, Input, []).

-spec start_sync_execution(aws_client:aws_client(), start_sync_execution_input(), proplists:proplist()) ->
    {ok, start_sync_execution_output(), tuple()} |
    {error, any()} |
    {error, start_sync_execution_errors(), tuple()}.
start_sync_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSyncExecution">>, Input, Options).

%% @doc Stops an execution.
%%
%% This API action is not supported by `EXPRESS' state machines.
%%
%% For an execution with encryption enabled, Step Functions will encrypt the
%% error and cause fields using the KMS key for the execution role.
%%
%% A caller can stop an execution without using any KMS permissions in the
%% execution role if the caller provides a null value for both `error'
%% and `cause' fields because no data needs to be encrypted.
-spec stop_execution(aws_client:aws_client(), stop_execution_input()) ->
    {ok, stop_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_execution_errors(), tuple()}.
stop_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_execution(Client, Input, []).

-spec stop_execution(aws_client:aws_client(), stop_execution_input(), proplists:proplist()) ->
    {ok, stop_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_execution_errors(), tuple()}.
stop_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopExecution">>, Input, Options).

%% @doc Add a tag to a Step Functions resource.
%%
%% An array of key-value pairs. For more information, see Using
%% Cost Allocation Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Amazon Web Services Billing and Cost Management User
%% Guide, and Controlling Access Using IAM
%% Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html.
%%
%% Tags may only contain Unicode letters, digits, white space, or these
%% symbols: `_ . : / = + - @'.
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

%% @doc Accepts the definition of a single state and executes it.
%%
%% You can test a state without creating a state machine or updating an
%% existing state machine. Using this API, you can test the following:
%%
%% A state's input and output processing:
%% https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-input-output-dataflow
%% data flow
%%
%% An Amazon Web Services service integration:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-services.html
%% request and response
%%
%% An HTTP Task:
%% https://docs.aws.amazon.com/step-functions/latest/dg/call-https-apis.html
%% request and response
%%
%% You can call this API on only one state at a time. The states that you can
%% test include the following:
%%
%% All Task types:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-task-state.html#task-types
%% except Activity:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html
%%
%% Pass:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-pass-state.html
%%
%% Wait:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-wait-state.html
%%
%% Choice:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-choice-state.html
%%
%% Succeed:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-succeed-state.html
%%
%% Fail:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-fail-state.html
%%
%% The `TestState' API assumes an IAM role which must contain the
%% required IAM permissions for the resources your state is accessing. For
%% information about the permissions a state might need, see IAM permissions
%% to test a state:
%% https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions.
%%
%% The `TestState' API can run for up to five minutes. If the execution
%% of a state exceeds this duration, it fails with the `States.Timeout'
%% error.
%%
%% `TestState' doesn't support Activity tasks:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html,
%% `.sync' or `.waitForTaskToken'
%% service integration patterns:
%% https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html,
%% Parallel:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html,
%% or Map:
%% https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html
%% states.
-spec test_state(aws_client:aws_client(), test_state_input()) ->
    {ok, test_state_output(), tuple()} |
    {error, any()} |
    {error, test_state_errors(), tuple()}.
test_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_state(Client, Input, []).

-spec test_state(aws_client:aws_client(), test_state_input(), proplists:proplist()) ->
    {ok, test_state_output(), tuple()} |
    {error, any()} |
    {error, test_state_errors(), tuple()}.
test_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestState">>, Input, Options).

%% @doc Remove a tag from a Step Functions resource
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

%% @doc Updates an in-progress Map Run's configuration to include changes
%% to the settings that control maximum concurrency and Map Run failure.
-spec update_map_run(aws_client:aws_client(), update_map_run_input()) ->
    {ok, update_map_run_output(), tuple()} |
    {error, any()} |
    {error, update_map_run_errors(), tuple()}.
update_map_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_map_run(Client, Input, []).

-spec update_map_run(aws_client:aws_client(), update_map_run_input(), proplists:proplist()) ->
    {ok, update_map_run_output(), tuple()} |
    {error, any()} |
    {error, update_map_run_errors(), tuple()}.
update_map_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMapRun">>, Input, Options).

%% @doc Updates an existing state machine by modifying its `definition',
%% `roleArn', `loggingConfiguration', or
%% `EncryptionConfiguration'.
%%
%% Running executions will continue
%% to use the previous `definition' and `roleArn'. You must include
%% at
%% least one of `definition' or `roleArn' or you will receive a
%% `MissingRequiredParameter' error.
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
%% The following qualified state machine ARN refers to a Distributed Map
%% state with a label `mapStateLabel' in a state machine named
%% `myStateMachine'.
%%
%% `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel'
%%
%% If you provide a qualified state machine ARN that refers to a Distributed
%% Map state, the request fails with `ValidationException'.
%%
%% The following qualified state machine ARN refers to an alias named
%% `PROD'.
%%
%% `arn::states:::stateMachine:'
%%
%% If you provide a qualified state machine ARN that refers to a version ARN
%% or an alias ARN, the request starts execution for that version or alias.
%%
%% The following unqualified state machine ARN refers to a state machine
%% named `myStateMachine'.
%%
%% `arn::states:::stateMachine:'
%%
%% After you update your state machine, you can set the `publish'
%% parameter to
%% `true' in the same action to publish a new version:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html.
%% This
%% way, you can opt-in to strict versioning of your state machine.
%%
%% Step Functions assigns monotonically increasing integers for state machine
%% versions, starting at version number 1.
%%
%% All `StartExecution' calls within a few seconds use the updated
%% `definition' and `roleArn'. Executions started immediately after
%% you
%% call `UpdateStateMachine' may use the previous state machine
%% `definition' and `roleArn'.
-spec update_state_machine(aws_client:aws_client(), update_state_machine_input()) ->
    {ok, update_state_machine_output(), tuple()} |
    {error, any()} |
    {error, update_state_machine_errors(), tuple()}.
update_state_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_machine(Client, Input, []).

-spec update_state_machine(aws_client:aws_client(), update_state_machine_input(), proplists:proplist()) ->
    {ok, update_state_machine_output(), tuple()} |
    {error, any()} |
    {error, update_state_machine_errors(), tuple()}.
update_state_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateMachine">>, Input, Options).

%% @doc Updates the configuration of an existing state machine alias:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
%% by modifying its `description' or `routingConfiguration'.
%%
%% You must specify at least one of the `description' or
%% `routingConfiguration' parameters to update a state machine alias.
%%
%% `UpdateStateMachineAlias' is an idempotent API. Step Functions bases
%% the
%% idempotency check on the `stateMachineAliasArn', `description',
%% and
%% `routingConfiguration' parameters. Requests with the same parameters
%% return an
%% idempotent response.
%%
%% This operation is eventually consistent. All `StartExecution' requests
%% made within a few seconds use the latest alias configuration. Executions
%% started immediately
%% after calling `UpdateStateMachineAlias' may use the previous routing
%% configuration.
%%
%% Related operations:
%%
%% `CreateStateMachineAlias'
%%
%% `DescribeStateMachineAlias'
%%
%% `ListStateMachineAliases'
%%
%% `DeleteStateMachineAlias'
-spec update_state_machine_alias(aws_client:aws_client(), update_state_machine_alias_input()) ->
    {ok, update_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, update_state_machine_alias_errors(), tuple()}.
update_state_machine_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_state_machine_alias(Client, Input, []).

-spec update_state_machine_alias(aws_client:aws_client(), update_state_machine_alias_input(), proplists:proplist()) ->
    {ok, update_state_machine_alias_output(), tuple()} |
    {error, any()} |
    {error, update_state_machine_alias_errors(), tuple()}.
update_state_machine_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStateMachineAlias">>, Input, Options).

%% @doc Validates the syntax of a state machine definition specified in
%% Amazon States Language:
%% https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
%% (ASL), a
%% JSON-based, structured language.
%%
%% You can validate that a state machine definition is correct without
%% creating a state
%% machine resource.
%%
%% Suggested uses for `ValidateStateMachineDefinition':
%%
%% Integrate automated checks into your code review or Continuous Integration
%% (CI) process to check state machine definitions before starting
%% deployments.
%%
%% Run validation from a Git pre-commit hook to verify the definition before
%% committing to your source repository.
%%
%% Validation will look for problems in your state machine definition and
%% return a
%% result and a list of diagnostic
%% elements.
%%
%% The result value will be `OK' when your
%% workflow definition can be successfully created or updated. Note the
%% result can be
%% `OK' even when diagnostic warnings are present in the response. The
%% result value will be `FAIL' when the
%% workflow definition contains errors that would prevent you from creating
%% or updating
%% your state machine.
%%
%% The list of ValidateStateMachineDefinitionDiagnostic:
%% https://docs.aws.amazon.com/step-functions/latest/apireference/API_ValidateStateMachineDefinitionDiagnostic.html
%% data elements can contain zero or more WARNING and/or ERROR elements.
%%
%% The ValidateStateMachineDefinition API might add
%% new diagnostics in the future, adjust diagnostic codes, or change the
%% message
%% wording. Your automated processes should only rely on the value of the
%% result field value (OK, FAIL). Do not rely on the exact order, count, or
%% wording of diagnostic messages.
-spec validate_state_machine_definition(aws_client:aws_client(), validate_state_machine_definition_input()) ->
    {ok, validate_state_machine_definition_output(), tuple()} |
    {error, any()} |
    {error, validate_state_machine_definition_errors(), tuple()}.
validate_state_machine_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_state_machine_definition(Client, Input, []).

-spec validate_state_machine_definition(aws_client:aws_client(), validate_state_machine_definition_input(), proplists:proplist()) ->
    {ok, validate_state_machine_definition_output(), tuple()} |
    {error, any()} |
    {error, validate_state_machine_definition_errors(), tuple()}.
validate_state_machine_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateStateMachineDefinition">>, Input, Options).

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
