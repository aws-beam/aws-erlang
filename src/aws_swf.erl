%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon Simple Workflow Service</fullname>
%%
%% The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
%% applications that use Amazon's cloud to coordinate work across distributed
%% components. In Amazon SWF, a <i>task</i> represents a logical unit of work
%% that is performed by a component of your workflow. Coordinating tasks in a
%% workflow involves managing intertask dependencies, scheduling, and
%% concurrency in accordance with the logical flow of the application.
%%
%% Amazon SWF gives you full control over implementing tasks and coordinating
%% them without worrying about underlying complexities such as tracking their
%% progress and maintaining their state.
%%
%% This documentation serves as reference only. For a broader overview of the
%% Amazon SWF programming model, see the <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon
%% SWF Developer Guide</a>.
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
         terminate_workflow_execution/2,
         terminate_workflow_execution/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the number of closed workflow executions within the given
%% domain that meet the specified filtering criteria.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>:
%% String constraint. The key is <code>swf:tagFilter.tag</code>.</li>
%% <li><code>typeFilter.name</code>: String constraint. The key is
%% <code>swf:typeFilter.name</code>.</li>
%% <li><code>typeFilter.version</code>: String constraint. The key is
%% <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> If the caller
%% does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
count_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_closed_workflow_executions(Client, Input, []).
count_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the number of open workflow executions within the given
%% domain that meet the specified filtering criteria.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>:
%% String constraint. The key is <code>swf:tagFilter.tag</code>.</li>
%% <li><code>typeFilter.name</code>: String constraint. The key is
%% <code>swf:typeFilter.name</code>.</li>
%% <li><code>typeFilter.version</code>: String constraint. The key is
%% <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> If the caller
%% does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
count_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_open_workflow_executions(Client, Input, []).
count_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountOpenWorkflowExecutions">>, Input, Options).

%% @doc Returns the estimated number of activity tasks in the specified task
%% list. The count returned is an approximation and is not guaranteed to be
%% exact. If you specify a task list that no activity task was ever scheduled
%% in then 0 will be returned.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the <code>taskList.name</code> parameter by using a
%% <b>Condition</b> element with the <code>swf:taskList.name</code> key to
%% allow the action to access only certain task lists.</li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
count_pending_activity_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_activity_tasks(Client, Input, []).
count_pending_activity_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingActivityTasks">>, Input, Options).

%% @doc Returns the estimated number of decision tasks in the specified task
%% list. The count returned is an approximation and is not guaranteed to be
%% exact. If you specify a task list that no decision task was ever scheduled
%% in then 0 will be returned.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the <code>taskList.name</code> parameter by using a
%% <b>Condition</b> element with the <code>swf:taskList.name</code> key to
%% allow the action to access only certain task lists.</li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
count_pending_decision_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    count_pending_decision_tasks(Client, Input, []).
count_pending_decision_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CountPendingDecisionTasks">>, Input, Options).

%% @doc Deprecates the specified <i>activity type</i>. After an activity type
%% has been deprecated, you cannot create new tasks of that activity type.
%% Tasks of this type that were scheduled before the type was deprecated will
%% continue to run.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul>
%% <li><code>activityType.name</code>: String constraint. The key is
%% <code>swf:activityType.name</code>.</li>
%% <li><code>activityType.version</code>: String constraint. The key is
%% <code>swf:activityType.version</code>.</li> </ul> </li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
deprecate_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_activity_type(Client, Input, []).
deprecate_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateActivityType">>, Input, Options).

%% @doc Deprecates the specified domain. After a domain has been deprecated
%% it cannot be used to create new workflow executions or register new types.
%% However, you can still use visibility actions on this domain. Deprecating
%% a domain also deprecates all activity and workflow types registered in the
%% domain. Executions that were started before the domain was deprecated will
%% continue to run.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
deprecate_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_domain(Client, Input, []).
deprecate_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateDomain">>, Input, Options).

%% @doc Deprecates the specified <i>workflow type</i>. After a workflow type
%% has been deprecated, you cannot create new executions of that type.
%% Executions that were started before the type was deprecated will continue
%% to run. A deprecated workflow type may still be used when calling
%% visibility actions.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul>
%% <li><code>workflowType.name</code>: String constraint. The key is
%% <code>swf:workflowType.name</code>.</li>
%% <li><code>workflowType.version</code>: String constraint. The key is
%% <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
deprecate_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_workflow_type(Client, Input, []).
deprecate_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateWorkflowType">>, Input, Options).

%% @doc Returns information about the specified activity type. This includes
%% configuration settings provided when the type was registered and other
%% general information about the type.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul>
%% <li><code>activityType.name</code>: String constraint. The key is
%% <code>swf:activityType.name</code>.</li>
%% <li><code>activityType.version</code>: String constraint. The key is
%% <code>swf:activityType.version</code>.</li> </ul> </li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
describe_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activity_type(Client, Input, []).
describe_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivityType">>, Input, Options).

%% @doc Returns information about the specified domain, including description
%% and status.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Returns information about the specified workflow execution including
%% its type and some statistics.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
describe_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_execution(Client, Input, []).
describe_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowExecution">>, Input, Options).

%% @doc Returns information about the specified <i>workflow type</i>. This
%% includes configuration settings specified when the type was registered and
%% other information such as creation date, current status, and so on.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul>
%% <li><code>workflowType.name</code>: String constraint. The key is
%% <code>swf:workflowType.name</code>.</li>
%% <li><code>workflowType.version</code>: String constraint. The key is
%% <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
describe_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow_type(Client, Input, []).
describe_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflowType">>, Input, Options).

%% @doc Returns the history of the specified workflow execution. The results
%% may be split into multiple pages. To retrieve subsequent pages, make the
%% call again using the <code>nextPageToken</code> returned by the initial
%% call.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
get_workflow_execution_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_execution_history(Client, Input, []).
get_workflow_execution_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowExecutionHistory">>, Input, Options).

%% @doc Returns information about all activities registered in the specified
%% domain that match the specified name and registration status. The result
%% includes information like creation date, current status of the activity,
%% etc. The results may be split into multiple pages. To retrieve subsequent
%% pages, make the call again using the <code>nextPageToken</code> returned
%% by the initial call.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
list_activity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activity_types(Client, Input, []).
list_activity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivityTypes">>, Input, Options).

%% @doc Returns a list of closed workflow executions in the specified domain
%% that meet the filtering criteria. The results may be split into multiple
%% pages. To retrieve subsequent pages, make the call again using the
%% nextPageToken returned by the initial call.
%%
%% <note>This operation is eventually consistent. The results are best effort
%% and may not exactly reflect recent updates and changes.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>:
%% String constraint. The key is <code>swf:tagFilter.tag</code>.</li>
%% <li><code>typeFilter.name</code>: String constraint. The key is
%% <code>swf:typeFilter.name</code>.</li>
%% <li><code>typeFilter.version</code>: String constraint. The key is
%% <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> If the caller
%% does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
list_closed_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_closed_workflow_executions(Client, Input, []).
list_closed_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClosedWorkflowExecutions">>, Input, Options).

%% @doc Returns the list of domains registered in the account. The results
%% may be split into multiple pages. To retrieve subsequent pages, make the
%% call again using the nextPageToken returned by the initial call.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not exactly reflect recent updates and changes.</note>
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains. The element must be set to
%% <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is
%% the account ID, with no dashes.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Returns a list of open workflow executions in the specified domain
%% that meet the filtering criteria. The results may be split into multiple
%% pages. To retrieve subsequent pages, make the call again using the
%% nextPageToken returned by the initial call.
%%
%% <note> This operation is eventually consistent. The results are best
%% effort and may not exactly reflect recent updates and changes.</note>
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>:
%% String constraint. The key is <code>swf:tagFilter.tag</code>.</li>
%% <li><code>typeFilter.name</code>: String constraint. The key is
%% <code>swf:typeFilter.name</code>.</li>
%% <li><code>typeFilter.version</code>: String constraint. The key is
%% <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> If the caller
%% does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
list_open_workflow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_workflow_executions(Client, Input, []).
list_open_workflow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenWorkflowExecutions">>, Input, Options).

%% @doc Returns information about workflow types in the specified domain. The
%% results may be split into multiple pages that can be retrieved by making
%% the call repeatedly.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
list_workflow_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflow_types(Client, Input, []).
list_workflow_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflowTypes">>, Input, Options).

%% @doc Used by workers to get an <a>ActivityTask</a> from the specified
%% activity <code>taskList</code>. This initiates a long poll, where the
%% service holds the HTTP connection open and responds as soon as a task
%% becomes available. The maximum time the service holds on to the request
%% before responding is 60 seconds. If no task is available within 60
%% seconds, the poll will return an empty result. An empty result, in this
%% context, means that an ActivityTask is returned, but that the value of
%% taskToken is an empty string. If a task is returned, the worker should use
%% its type to identify and process it correctly.
%%
%% <important>Workers should set their client side socket timeout to at least
%% 70 seconds (10 seconds higher than the maximum time service may hold the
%% poll request).</important> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the <code>taskList.name</code> parameter by using a
%% <b>Condition</b> element with the <code>swf:taskList.name</code> key to
%% allow the action to access only certain task lists.</li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
poll_for_activity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_activity_task(Client, Input, []).
poll_for_activity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForActivityTask">>, Input, Options).

%% @doc Used by deciders to get a <a>DecisionTask</a> from the specified
%% decision <code>taskList</code>. A decision task may be returned for any
%% open workflow execution that is using the specified task list. The task
%% includes a paginated view of the history of the workflow execution. The
%% decider should use the workflow type and the history to determine how to
%% properly handle the task.
%%
%% This action initiates a long poll, where the service holds the HTTP
%% connection open and responds as soon a task becomes available. If no
%% decision task is available in the specified task list before the timeout
%% of 60 seconds expires, an empty result is returned. An empty result, in
%% this context, means that a DecisionTask is returned, but that the value of
%% <code>taskToken</code> is an empty string.
%%
%% <important>Deciders should set their client-side socket timeout to at
%% least 70 seconds (10 seconds higher than the timeout).</important>
%% <important>Because the number of workflow history events for a single
%% workflow execution might be very large, the result returned might be split
%% up across a number of pages. To retrieve subsequent pages, make additional
%% calls to <code>PollForDecisionTask</code> using the
%% <code>nextPageToken</code> returned by the initial call. Note that you do
%% <b>not</b> call <code>GetWorkflowExecutionHistory</code> with this
%% <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code>
%% again.</important> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the <code>taskList.name</code> parameter by using a
%% <b>Condition</b> element with the <code>swf:taskList.name</code> key to
%% allow the action to access only certain task lists.</li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
poll_for_decision_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    poll_for_decision_task(Client, Input, []).
poll_for_decision_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PollForDecisionTask">>, Input, Options).

%% @doc Used by activity workers to report to the service that the
%% <a>ActivityTask</a> represented by the specified <code>taskToken</code> is
%% still making progress. The worker can also (optionally) specify details of
%% the progress, for example percent complete, using the <code>details</code>
%% parameter. This action can also be used by the worker as a mechanism to
%% check if cancellation is being requested for the activity task. If a
%% cancellation is being attempted for the specified task, then the boolean
%% <code>cancelRequested</code> flag returned by the service is set to
%% <code>true</code>.
%%
%% This action resets the <code>taskHeartbeatTimeout</code> clock. The
%% <code>taskHeartbeatTimeout</code> is specified in
%% <a>RegisterActivityType</a>.
%%
%% This action does not in itself create an event in the workflow execution
%% history. However, if the task times out, the workflow execution history
%% will contain a <code>ActivityTaskTimedOut</code> event that contains the
%% information from the last heartbeat generated by the activity worker.
%%
%% <note>The <code>taskStartToCloseTimeout</code> of an activity type is the
%% maximum duration of an activity task, regardless of the number of
%% <a>RecordActivityTaskHeartbeat</a> requests received. The
%% <code>taskStartToCloseTimeout</code> is also specified in
%% <a>RegisterActivityType</a>.</note> <note>This operation is only useful
%% for long-lived activities to report liveliness of the task and to
%% determine if a cancellation is being attempted. </note> <important>If the
%% <code>cancelRequested</code> flag returns <code>true</code>, a
%% cancellation is being attempted. If the worker can cancel the activity, it
%% should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it
%% should ignore the cancellation request.</important> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
record_activity_task_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_activity_task_heartbeat(Client, Input, []).
record_activity_task_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordActivityTaskHeartbeat">>, Input, Options).

%% @doc Registers a new <i>activity type</i> along with its configuration
%% settings in the specified domain.
%%
%% <important>A <code>TypeAlreadyExists</code> fault is returned if the type
%% already exists in the domain. You cannot change any configuration settings
%% of the type after its registration, and it must be registered as a new
%% version.</important> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li>
%% <code>defaultTaskList.name</code>: String constraint. The key is
%% <code>swf:defaultTaskList.name</code>.</li> <li> <code>name</code>: String
%% constraint. The key is <code>swf:name</code>.</li> <li>
%% <code>version</code>: String constraint. The key is
%% <code>swf:version</code>.</li> </ul> </li> </ul> If the caller does not
%% have sufficient permissions to invoke the action, or the parameter values
%% fall outside the specified constraints, the action fails. The associated
%% event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
register_activity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_activity_type(Client, Input, []).
register_activity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterActivityType">>, Input, Options).

%% @doc Registers a new domain.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>You cannot use an IAM policy to control domain access for this
%% action. The name of the domain being registered is available as the
%% resource of this action.</li> <li>Use an <code>Action</code> element to
%% allow or deny permission to call this action.</li> <li>You cannot use an
%% IAM policy to constrain this action's parameters.</li> </ul> If the caller
%% does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc Registers a new <i>workflow type</i> and its configuration settings
%% in the specified domain.
%%
%% The retention period for the workflow history is set by the
%% <a>RegisterDomain</a> action.
%%
%% <important>If the type already exists, then a
%% <code>TypeAlreadyExists</code> fault is returned. You cannot change the
%% configuration settings of a workflow type once it is registered and it
%% must be registered as a new version.</important> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li>
%% <code>defaultTaskList.name</code>: String constraint. The key is
%% <code>swf:defaultTaskList.name</code>.</li> <li> <code>name</code>: String
%% constraint. The key is <code>swf:name</code>.</li> <li>
%% <code>version</code>: String constraint. The key is
%% <code>swf:version</code>.</li> </ul> </li> </ul> If the caller does not
%% have sufficient permissions to invoke the action, or the parameter values
%% fall outside the specified constraints, the action fails. The associated
%% event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
register_workflow_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_workflow_type(Client, Input, []).
register_workflow_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterWorkflowType">>, Input, Options).

%% @doc Records a <code>WorkflowExecutionCancelRequested</code> event in the
%% currently running workflow execution identified by the given domain,
%% workflowId, and runId. This logically requests the cancellation of the
%% workflow execution as a whole. It is up to the decider to take appropriate
%% actions when it receives an execution history with this event.
%%
%% <note>If the runId is not specified, the
%% <code>WorkflowExecutionCancelRequested</code> event is recorded in the
%% history of the current open workflow execution with the specified
%% workflowId in the domain.</note> <note>Because this action allows the
%% workflow to properly clean up and gracefully close, it should be used
%% instead of <a>TerminateWorkflowExecution</a> when possible.</note>
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
request_cancel_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_cancel_workflow_execution(Client, Input, []).
request_cancel_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCancelWorkflowExecution">>, Input, Options).

%% @doc Used by workers to tell the service that the <a>ActivityTask</a>
%% identified by the <code>taskToken</code> was successfully canceled.
%% Additional <code>details</code> can be optionally provided using the
%% <code>details</code> argument.
%%
%% These <code>details</code> (if provided) appear in the
%% <code>ActivityTaskCanceled</code> event added to the workflow history.
%%
%% <important>Only use this operation if the <code>canceled</code> flag of a
%% <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and
%% if the activity can be safely undone or abandoned.</important> A task is
%% considered open from the time that it is scheduled until it is closed.
%% Therefore a task is reported as open while a worker is processing it. A
%% task is closed after it has been specified in a call to
%% <a>RespondActivityTaskCompleted</a>, RespondActivityTaskCanceled,
%% <a>RespondActivityTaskFailed</a>, or the task has <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
%% out</a>.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
respond_activity_task_canceled(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_canceled(Client, Input, []).
respond_activity_task_canceled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCanceled">>, Input, Options).

%% @doc Used by workers to tell the service that the <a>ActivityTask</a>
%% identified by the <code>taskToken</code> completed successfully with a
%% <code>result</code> (if provided). The <code>result</code> appears in the
%% <code>ActivityTaskCompleted</code> event in the workflow history.
%%
%% <important> If the requested task does not complete successfully, use
%% <a>RespondActivityTaskFailed</a> instead. If the worker finds that the
%% task is canceled through the <code>canceled</code> flag returned by
%% <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up
%% and then call <a>RespondActivityTaskCanceled</a>.</important> A task is
%% considered open from the time that it is scheduled until it is closed.
%% Therefore a task is reported as open while a worker is processing it. A
%% task is closed after it has been specified in a call to
%% RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>,
%% <a>RespondActivityTaskFailed</a>, or the task has <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
%% out</a>.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
respond_activity_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_completed(Client, Input, []).
respond_activity_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskCompleted">>, Input, Options).

%% @doc Used by workers to tell the service that the <a>ActivityTask</a>
%% identified by the <code>taskToken</code> has failed with
%% <code>reason</code> (if specified). The <code>reason</code> and
%% <code>details</code> appear in the <code>ActivityTaskFailed</code> event
%% added to the workflow history.
%%
%% A task is considered open from the time that it is scheduled until it is
%% closed. Therefore a task is reported as open while a worker is processing
%% it. A task is closed after it has been specified in a call to
%% <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>,
%% RespondActivityTaskFailed, or the task has <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
%% out</a>.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
respond_activity_task_failed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_activity_task_failed(Client, Input, []).
respond_activity_task_failed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondActivityTaskFailed">>, Input, Options).

%% @doc Used by deciders to tell the service that the <a>DecisionTask</a>
%% identified by the <code>taskToken</code> has successfully completed. The
%% <code>decisions</code> argument specifies the list of decisions made while
%% processing the task.
%%
%% A <code>DecisionTaskCompleted</code> event is added to the workflow
%% history. The <code>executionContext</code> specified is attached to the
%% event in the workflow execution history.
%%
%% <b>Access Control</b>
%%
%% If an IAM policy grants permission to use
%% <code>RespondDecisionTaskCompleted</code>, it can express permissions for
%% the list of decisions in the <code>decisions</code> parameter. Each of the
%% decisions has one or more parameters, much like a regular API call. To
%% allow for policies to be as readable as possible, you can express
%% permissions on decisions as if they were actual API calls, including
%% applying conditions to some parameters. For more information, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
respond_decision_task_completed(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_decision_task_completed(Client, Input, []).
respond_decision_task_completed(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondDecisionTaskCompleted">>, Input, Options).

%% @doc Records a <code>WorkflowExecutionSignaled</code> event in the
%% workflow execution history and creates a decision task for the workflow
%% execution identified by the given domain, workflowId and runId. The event
%% is recorded with the specified user defined signalName and input (if
%% provided).
%%
%% <note> If a runId is not specified, then the
%% <code>WorkflowExecutionSignaled</code> event is recorded in the history of
%% the current open workflow with the matching workflowId in the
%% domain.</note> <note> If the specified workflow execution is not open,
%% this method fails with <code>UnknownResource</code>.</note> <b>Access
%% Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
signal_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_workflow_execution(Client, Input, []).
signal_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalWorkflowExecution">>, Input, Options).

%% @doc Starts an execution of the workflow type in the specified domain
%% using the provided <code>workflowId</code> and input data.
%%
%% This action returns the newly started workflow execution.
%%
%% <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li>
%% <li>Constrain the following parameters by using a <code>Condition</code>
%% element with the appropriate keys. <ul> <li>
%% <code>tagList.member.0</code>: The key is
%% <code>swf:tagList.member.0</code>.</li> <li>
%% <code>tagList.member.1</code>: The key is
%% <code>swf:tagList.member.1</code>.</li> <li>
%% <code>tagList.member.2</code>: The key is
%% <code>swf:tagList.member.2</code>.</li> <li>
%% <code>tagList.member.3</code>: The key is
%% <code>swf:tagList.member.3</code>.</li> <li>
%% <code>tagList.member.4</code>: The key is
%% <code>swf:tagList.member.4</code>.</li> <li><code>taskList</code>: String
%% constraint. The key is <code>swf:taskList.name</code>.</li>
%% <li><code>workflowType.name</code>: String constraint. The key is
%% <code>swf:workflowType.name</code>.</li>
%% <li><code>workflowType.version</code>: String constraint. The key is
%% <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> If the
%% caller does not have sufficient permissions to invoke the action, or the
%% parameter values fall outside the specified constraints, the action fails.
%% The associated event attribute's <b>cause</b> parameter will be set to
%% OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
start_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_execution(Client, Input, []).
start_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowExecution">>, Input, Options).

%% @doc Records a <code>WorkflowExecutionTerminated</code> event and forces
%% closure of the workflow execution identified by the given domain, runId,
%% and workflowId. The child policy, registered with the workflow type or
%% specified when starting this execution, is applied to any open child
%% workflow executions of this workflow execution.
%%
%% <important> If the identified workflow execution was in progress, it is
%% terminated immediately.</important> <note> If a runId is not specified,
%% then the <code>WorkflowExecutionTerminated</code> event is recorded in the
%% history of the current open workflow with the matching workflowId in the
%% domain.</note> <note> You should consider using
%% <a>RequestCancelWorkflowExecution</a> action instead because it allows the
%% workflow to gracefully close while <a>TerminateWorkflowExecution</a> does
%% not.</note> <b>Access Control</b>
%%
%% You can use IAM policies to control this action's access to Amazon SWF
%% resources as follows:
%%
%% <ul> <li>Use a <code>Resource</code> element with the domain name to limit
%% the action to only specified domains.</li> <li>Use an <code>Action</code>
%% element to allow or deny permission to call this action.</li> <li>You
%% cannot use an IAM policy to constrain this action's parameters.</li> </ul>
%% If the caller does not have sufficient permissions to invoke the action,
%% or the parameter values fall outside the specified constraints, the action
%% fails. The associated event attribute's <b>cause</b> parameter will be set
%% to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a
%% href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
%% IAM to Manage Access to Amazon SWF Workflows</a>.
terminate_workflow_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_workflow_execution(Client, Input, []).
terminate_workflow_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateWorkflowExecution">>, Input, Options).

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
    Client1 = Client#{service => <<"swf">>},
    Host = aws_util:binary_join([<<"swf.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
               {<<"X-Amz-Target">>, << <<"SimpleWorkflowService.">>/binary, Action/binary>>}],
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
