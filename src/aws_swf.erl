%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Simple Workflow Service
%%
%% The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
%% applications that use Amazon's cloud to coordinate work across distributed
%% components.
%%
%% In Amazon SWF, a task represents a logical unit of work that is performed
%% by a component of your workflow. Coordinating tasks in a workflow involves
%% managing intertask dependencies, scheduling, and concurrency in accordance
%% with the logical flow of the application.
%%
%% Amazon SWF gives you full control over implementing tasks and coordinating
%% them without worrying about underlying complexities such as tracking their
%% progress and maintaining their state.
%%
%% This documentation serves as reference only. For a broader overview of the
%% Amazon SWF programming model, see the Amazon SWF Developer Guide .
-module(aws_swf).

-export([count_closed_workflow_executions/2,
         count_closed_workflow_executions/3,
         count_open_workflow_executions/2,
         count_open_workflow_executions/3,
         count_pending_activity_tasks/2,
         count_pending_activity_tasks/3,
         count_pending_decision_tasks/2,
         count_pending_decision_tasks/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the number of closed workflow executions within the given
%% domain that meet the specified filtering criteria.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% </li> <li> `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% </li> <li> `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
count_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_closed_workflow_executions(Client, Input, []).
count_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the number of open workflow executions within the given
%% domain that meet the specified filtering criteria.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% </li> <li> `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% </li> <li> `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
count_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_open_workflow_executions(Client, Input, []).
count_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountOpenWorkflowExecutions">>, Input, Options).

%% @doc Returns the estimated number of activity tasks in the specified task
%% list.
%%
%% The count returned is an approximation and isn't guaranteed to be exact.
%% If you specify a task list that no activity task was ever scheduled in
%% then `0' is returned.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the `taskList.name' parameter by using a `Condition'
%% element with the `swf:taskList.name' key to allow the action to access
%% only certain task lists.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
count_pending_activity_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_activity_tasks(Client, Input, []).
count_pending_activity_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingActivityTasks">>, Input, Options).

%% @doc Returns the estimated number of decision tasks in the specified task
%% list.
%%
%% The count returned is an approximation and isn't guaranteed to be exact.
%% If you specify a task list that no decision task was ever scheduled in
%% then `0' is returned.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the `taskList.name' parameter by using a `Condition'
%% element with the `swf:taskList.name' key to allow the action to access
%% only certain task lists.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
count_pending_decision_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_decision_tasks(Client, Input, []).
count_pending_decision_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingDecisionTasks">>, Input, Options).

%% @doc Deprecates the specified activity type.
%%
%% After an activity type has been deprecated, you cannot create new tasks of
%% that activity type. Tasks of this type that were scheduled before the type
%% was deprecated continue to run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% </li> <li> `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
deprecate_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_activity_type(Client, Input, []).
deprecate_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateActivityType">>, Input, Options).

%% @doc Deprecates the specified domain.
%%
%% After a domain has been deprecated it cannot be used to create new
%% workflow executions or register new types. However, you can still use
%% visibility actions on this domain. Deprecating a domain also deprecates
%% all activity and workflow types registered in the domain. Executions that
%% were started before the domain was deprecated continues to run.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
deprecate_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_domain(Client, Input, []).
deprecate_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateDomain">>, Input, Options).

%% @doc Deprecates the specified workflow type.
%%
%% After a workflow type has been deprecated, you cannot create new
%% executions of that type. Executions that were started before the type was
%% deprecated continues to run. A deprecated workflow type may still be used
%% when calling visibility actions.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% </li> <li> `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
deprecate_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_workflow_type(Client, Input, []).
deprecate_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateWorkflowType">>, Input, Options).

%% @doc Returns information about the specified activity type.
%%
%% This includes configuration settings provided when the type was registered
%% and other general information about the type.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% </li> <li> `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
describe_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity_type(Client, Input, []).
describe_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivityType">>, Input, Options).

%% @doc Returns information about the specified domain, including description
%% and status.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Returns information about the specified workflow execution including
%% its type and some statistics.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
describe_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_execution(Client, Input, []).
describe_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowExecution">>, Input, Options).

%% @doc Returns information about the specified workflow type.
%%
%% This includes configuration settings specified when the type was
%% registered and other information such as creation date, current status,
%% etc.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% </li> <li> `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
describe_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_type(Client, Input, []).
describe_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowType">>, Input, Options).

%% @doc Returns the history of the specified workflow execution.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the `nextPageToken' returned by the
%% initial call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
get_workflow_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_execution_history(Client, Input, []).
get_workflow_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowExecutionHistory">>, Input, Options).

%% @doc Returns information about all activities registered in the specified
%% domain that match the specified name and registration status.
%%
%% The result includes information like creation date, current status of the
%% activity, etc. The results may be split into multiple pages. To retrieve
%% subsequent pages, make the call again using the `nextPageToken' returned
%% by the initial call.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
list_activity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activity_types(Client, Input, []).
list_activity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivityTypes">>, Input, Options).

%% @doc Returns a list of closed workflow executions in the specified domain
%% that meet the filtering criteria.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the nextPageToken returned by the initial
%% call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% </li> <li> `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% </li> <li> `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
list_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_closed_workflow_executions(Client, Input, []).
list_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the list of domains registered in the account.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the nextPageToken returned by the initial
%% call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains. The element must be set to
%% `arn:aws:swf::AccountID:domain/*', where AccountID is the account ID, with
%% no dashes.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Returns a list of open workflow executions in the specified domain
%% that meet the filtering criteria.
%%
%% The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the nextPageToken returned by the initial
%% call.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `tagFilter.tag': String constraint. The key is
%% `swf:tagFilter.tag'.
%%
%% </li> <li> `typeFilter.name': String constraint. The key is
%% `swf:typeFilter.name'.
%%
%% </li> <li> `typeFilter.version': String constraint. The key is
%% `swf:typeFilter.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
list_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_workflow_executions(Client, Input, []).
list_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenWorkflowExecutions">>, Input, Options).

%% @doc List tags for a given domain.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns information about workflow types in the specified domain.
%%
%% The results may be split into multiple pages that can be retrieved by
%% making the call repeatedly.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
list_workflow_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflow_types(Client, Input, []).
list_workflow_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflowTypes">>, Input, Options).

%% @doc Used by workers to get an `ActivityTask' from the specified activity
%% `taskList'.
%%
%% This initiates a long poll, where the service holds the HTTP connection
%% open and responds as soon as a task becomes available. The maximum time
%% the service holds on to the request before responding is 60 seconds. If no
%% task is available within 60 seconds, the poll returns an empty result. An
%% empty result, in this context, means that an ActivityTask is returned, but
%% that the value of taskToken is an empty string. If a task is returned, the
%% worker should use its type to identify and process it correctly.
%%
%% Workers should set their client side socket timeout to at least 70 seconds
%% (10 seconds higher than the maximum time service may hold the poll
%% request).
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the `taskList.name' parameter by using a `Condition'
%% element with the `swf:taskList.name' key to allow the action to access
%% only certain task lists.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
poll_for_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_activity_task(Client, Input, []).
poll_for_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForActivityTask">>, Input, Options).

%% @doc Used by deciders to get a `DecisionTask' from the specified decision
%% `taskList'.
%%
%% A decision task may be returned for any open workflow execution that is
%% using the specified task list. The task includes a paginated view of the
%% history of the workflow execution. The decider should use the workflow
%% type and the history to determine how to properly handle the task.
%%
%% This action initiates a long poll, where the service holds the HTTP
%% connection open and responds as soon a task becomes available. If no
%% decision task is available in the specified task list before the timeout
%% of 60 seconds expires, an empty result is returned. An empty result, in
%% this context, means that a DecisionTask is returned, but that the value of
%% taskToken is an empty string.
%%
%% Deciders should set their client side socket timeout to at least 70
%% seconds (10 seconds higher than the timeout).
%%
%% Because the number of workflow history events for a single workflow
%% execution might be very large, the result returned might be split up
%% across a number of pages. To retrieve subsequent pages, make additional
%% calls to `PollForDecisionTask' using the `nextPageToken' returned by the
%% initial call. Note that you do not call `GetWorkflowExecutionHistory' with
%% this `nextPageToken'. Instead, call `PollForDecisionTask' again.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the `taskList.name' parameter by using a `Condition'
%% element with the `swf:taskList.name' key to allow the action to access
%% only certain task lists.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
poll_for_decision_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_decision_task(Client, Input, []).
poll_for_decision_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForDecisionTask">>, Input, Options).

%% @doc Used by activity workers to report to the service that the
%% `ActivityTask' represented by the specified `taskToken' is still making
%% progress.
%%
%% The worker can also specify details of the progress, for example percent
%% complete, using the `details' parameter. This action can also be used by
%% the worker as a mechanism to check if cancellation is being requested for
%% the activity task. If a cancellation is being attempted for the specified
%% task, then the boolean `cancelRequested' flag returned by the service is
%% set to `true'.
%%
%% This action resets the `taskHeartbeatTimeout' clock. The
%% `taskHeartbeatTimeout' is specified in `RegisterActivityType'.
%%
%% This action doesn't in itself create an event in the workflow execution
%% history. However, if the task times out, the workflow execution history
%% contains a `ActivityTaskTimedOut' event that contains the information from
%% the last heartbeat generated by the activity worker.
%%
%% The `taskStartToCloseTimeout' of an activity type is the maximum duration
%% of an activity task, regardless of the number of
%% `RecordActivityTaskHeartbeat' requests received. The
%% `taskStartToCloseTimeout' is also specified in `RegisterActivityType'.
%%
%% This operation is only useful for long-lived activities to report
%% liveliness of the task and to determine if a cancellation is being
%% attempted.
%%
%% If the `cancelRequested' flag returns `true', a cancellation is being
%% attempted. If the worker can cancel the activity, it should respond with
%% `RespondActivityTaskCanceled'. Otherwise, it should ignore the
%% cancellation request.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
record_activity_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_activity_task_heartbeat(Client, Input, []).
record_activity_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordActivityTaskHeartbeat">>, Input, Options).

%% @doc Registers a new activity type along with its configuration settings
%% in the specified domain.
%%
%% A `TypeAlreadyExists' fault is returned if the type already exists in the
%% domain. You cannot change any configuration settings of the type after its
%% registration, and it must be registered as a new version.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `defaultTaskList.name': String constraint. The key is
%% `swf:defaultTaskList.name'.
%%
%% </li> <li> `name': String constraint. The key is `swf:name'.
%%
%% </li> <li> `version': String constraint. The key is `swf:version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
register_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_activity_type(Client, Input, []).
register_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterActivityType">>, Input, Options).

%% @doc Registers a new domain.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> You cannot use an IAM policy to control domain access for this
%% action. The name of the domain being registered is available as the
%% resource of this action.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc Registers a new workflow type and its configuration settings in the
%% specified domain.
%%
%% The retention period for the workflow history is set by the
%% `RegisterDomain' action.
%%
%% If the type already exists, then a `TypeAlreadyExists' fault is returned.
%% You cannot change the configuration settings of a workflow type once it is
%% registered and it must be registered as a new version.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `defaultTaskList.name': String constraint. The key is
%% `swf:defaultTaskList.name'.
%%
%% </li> <li> `name': String constraint. The key is `swf:name'.
%%
%% </li> <li> `version': String constraint. The key is `swf:version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
register_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_workflow_type(Client, Input, []).
register_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWorkflowType">>, Input, Options).

%% @doc Records a `WorkflowExecutionCancelRequested' event in the currently
%% running workflow execution identified by the given domain, workflowId, and
%% runId.
%%
%% This logically requests the cancellation of the workflow execution as a
%% whole. It is up to the decider to take appropriate actions when it
%% receives an execution history with this event.
%%
%% If the runId isn't specified, the `WorkflowExecutionCancelRequested' event
%% is recorded in the history of the current open workflow execution with the
%% specified workflowId in the domain.
%%
%% Because this action allows the workflow to properly clean up and
%% gracefully close, it should be used instead of
%% `TerminateWorkflowExecution' when possible.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
request_cancel_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_cancel_workflow_execution(Client, Input, []).
request_cancel_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCancelWorkflowExecution">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified by the `taskToken' was successfully canceled.
%%
%% Additional `details' can be provided using the `details' argument.
%%
%% These `details' (if provided) appear in the `ActivityTaskCanceled' event
%% added to the workflow history.
%%
%% Only use this operation if the `canceled' flag of a
%% `RecordActivityTaskHeartbeat' request returns `true' and if the activity
%% can be safely undone or abandoned.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed. Therefore a task is reported as open while a worker is processing
%% it. A task is closed after it has been specified in a call to
%% `RespondActivityTaskCompleted', RespondActivityTaskCanceled,
%% `RespondActivityTaskFailed', or the task has timed out.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
respond_activity_task_canceled(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_canceled(Client, Input, []).
respond_activity_task_canceled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCanceled">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified by the `taskToken' completed successfully with a `result' (if
%% provided).
%%
%% The `result' appears in the `ActivityTaskCompleted' event in the workflow
%% history.
%%
%% If the requested task doesn't complete successfully, use
%% `RespondActivityTaskFailed' instead. If the worker finds that the task is
%% canceled through the `canceled' flag returned by
%% `RecordActivityTaskHeartbeat', it should cancel the task, clean up and
%% then call `RespondActivityTaskCanceled'.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed. Therefore a task is reported as open while a worker is processing
%% it. A task is closed after it has been specified in a call to
%% RespondActivityTaskCompleted, `RespondActivityTaskCanceled',
%% `RespondActivityTaskFailed', or the task has timed out.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
respond_activity_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_completed(Client, Input, []).
respond_activity_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCompleted">>, Input, Options).

%% @doc Used by workers to tell the service that the `ActivityTask'
%% identified by the `taskToken' has failed with `reason' (if specified).
%%
%% The `reason' and `details' appear in the `ActivityTaskFailed' event added
%% to the workflow history.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed. Therefore a task is reported as open while a worker is processing
%% it. A task is closed after it has been specified in a call to
%% `RespondActivityTaskCompleted', `RespondActivityTaskCanceled',
%% RespondActivityTaskFailed, or the task has timed out.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
respond_activity_task_failed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_failed(Client, Input, []).
respond_activity_task_failed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskFailed">>, Input, Options).

%% @doc Used by deciders to tell the service that the `DecisionTask'
%% identified by the `taskToken' has successfully completed.
%%
%% The `decisions' argument specifies the list of decisions made while
%% processing the task.
%%
%% A `DecisionTaskCompleted' event is added to the workflow history. The
%% `executionContext' specified is attached to the event in the workflow
%% execution history.
%%
%% Access Control
%%
%% If an IAM policy grants permission to use `RespondDecisionTaskCompleted',
%% it can express permissions for the list of decisions in the `decisions'
%% parameter. Each of the decisions has one or more parameters, much like a
%% regular API call. To allow for policies to be as readable as possible, you
%% can express permissions on decisions as if they were actual API calls,
%% including applying conditions to some parameters. For more information,
%% see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF
%% Developer Guide.
respond_decision_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_decision_task_completed(Client, Input, []).
respond_decision_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondDecisionTaskCompleted">>, Input, Options).

%% @doc Records a `WorkflowExecutionSignaled' event in the workflow execution
%% history and creates a decision task for the workflow execution identified
%% by the given domain, workflowId and runId.
%%
%% The event is recorded with the specified user defined signalName and input
%% (if provided).
%%
%% If a runId isn't specified, then the `WorkflowExecutionSignaled' event is
%% recorded in the history of the current open workflow with the matching
%% workflowId in the domain.
%%
%% If the specified workflow execution isn't open, this method fails with
%% `UnknownResource'.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
signal_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_workflow_execution(Client, Input, []).
signal_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalWorkflowExecution">>, Input, Options).

%% @doc Starts an execution of the workflow type in the specified domain
%% using the provided `workflowId' and input data.
%%
%% This action returns the newly started workflow execution.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `tagList.member.0': The key is `swf:tagList.member.0'.
%%
%% </li> <li> `tagList.member.1': The key is `swf:tagList.member.1'.
%%
%% </li> <li> `tagList.member.2': The key is `swf:tagList.member.2'.
%%
%% </li> <li> `tagList.member.3': The key is `swf:tagList.member.3'.
%%
%% </li> <li> `tagList.member.4': The key is `swf:tagList.member.4'.
%%
%% </li> <li> `taskList': String constraint. The key is `swf:taskList.name'.
%%
%% </li> <li> `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% </li> <li> `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
start_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_execution(Client, Input, []).
start_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowExecution">>, Input, Options).

%% @doc Add a tag to a Amazon SWF domain.
%%
%% Amazon SWF supports a maximum of 50 tags per resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Records a `WorkflowExecutionTerminated' event and forces closure of
%% the workflow execution identified by the given domain, runId, and
%% workflowId.
%%
%% The child policy, registered with the workflow type or specified when
%% starting this execution, is applied to any open child workflow executions
%% of this workflow execution.
%%
%% If the identified workflow execution was in progress, it is terminated
%% immediately.
%%
%% If a runId isn't specified, then the `WorkflowExecutionTerminated' event
%% is recorded in the history of the current open workflow with the matching
%% workflowId in the domain.
%%
%% You should consider using `RequestCancelWorkflowExecution' action instead
%% because it allows the workflow to gracefully close while
%% `TerminateWorkflowExecution' doesn't.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
terminate_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workflow_execution(Client, Input, []).
terminate_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkflowExecution">>, Input, Options).

%% @doc Undeprecates a previously deprecated activity type.
%%
%% After an activity type has been undeprecated, you can create new tasks of
%% that activity type.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `activityType.name': String constraint. The key is
%% `swf:activityType.name'.
%%
%% </li> <li> `activityType.version': String constraint. The key is
%% `swf:activityType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
undeprecate_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_activity_type(Client, Input, []).
undeprecate_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateActivityType">>, Input, Options).

%% @doc Undeprecates a previously deprecated domain.
%%
%% After a domain has been undeprecated it can be used to create new workflow
%% executions or register new types.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> You cannot use an IAM policy to constrain this action's
%% parameters.
%%
%% </li> </ul> If the caller doesn't have sufficient permissions to invoke
%% the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
undeprecate_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_domain(Client, Input, []).
undeprecate_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateDomain">>, Input, Options).

%% @doc Undeprecates a previously deprecated workflow type.
%%
%% After a workflow type has been undeprecated, you can create new executions
%% of that type.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not exactly reflect recent updates and changes.
%%
%% Access Control
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li> Use a `Resource' element with the domain name to limit the
%% action to only specified domains.
%%
%% </li> <li> Use an `Action' element to allow or deny permission to call
%% this action.
%%
%% </li> <li> Constrain the following parameters by using a `Condition'
%% element with the appropriate keys.
%%
%% <ul> <li> `workflowType.name': String constraint. The key is
%% `swf:workflowType.name'.
%%
%% </li> <li> `workflowType.version': String constraint. The key is
%% `swf:workflowType.version'.
%%
%% </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
%% to invoke the action, or the parameter values fall outside the specified
%% constraints, the action fails. The associated event attribute's `cause'
%% parameter is set to `OPERATION_NOT_PERMITTED'. For details and example IAM
%% policies, see Using IAM to Manage Access to Amazon SWF Workflows in the
%% Amazon SWF Developer Guide.
undeprecate_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeprecate_workflow_type(Client, Input, []).
undeprecate_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeprecateWorkflowType">>, Input, Options).

%% @doc Remove a tag from a Amazon SWF domain.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
