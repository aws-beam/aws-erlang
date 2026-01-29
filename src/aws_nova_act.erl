%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Nova Act service provides a REST API for managing AI-powered
%% workflow automation.
%%
%% It enables users to create workflow definitions, execute workflow runs,
%% manage sessions, and orchestrate acts (individual AI tasks) with tool
%% integrations.
-module(aws_nova_act).

-export([create_act/5,
         create_act/6,
         create_session/4,
         create_session/5,
         create_workflow_definition/2,
         create_workflow_definition/3,
         create_workflow_run/3,
         create_workflow_run/4,
         delete_workflow_definition/3,
         delete_workflow_definition/4,
         delete_workflow_run/4,
         delete_workflow_run/5,
         get_workflow_definition/2,
         get_workflow_definition/4,
         get_workflow_definition/5,
         get_workflow_run/3,
         get_workflow_run/5,
         get_workflow_run/6,
         invoke_act_step/6,
         invoke_act_step/7,
         list_acts/3,
         list_acts/4,
         list_models/2,
         list_models/3,
         list_sessions/4,
         list_sessions/5,
         list_workflow_definitions/2,
         list_workflow_definitions/3,
         list_workflow_runs/3,
         list_workflow_runs/4,
         update_act/6,
         update_act/7,
         update_workflow_run/4,
         update_workflow_run/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% call() :: #{
%%   <<"callId">> => string(),
%%   <<"input">> => any(),
%%   <<"name">> => [string()]
%% }
-type call() :: #{binary() => any()}.


%% Example:
%% list_models_request() :: #{
%%   <<"clientCompatibilityVersion">> := [integer()]
%% }
-type list_models_request() :: #{binary() => any()}.


%% Example:
%% workflow_export_config() :: #{
%%   <<"s3BucketName">> => string(),
%%   <<"s3KeyPrefix">> => string()
%% }
-type workflow_export_config() :: #{binary() => any()}.


%% Example:
%% list_workflow_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_workflow_definitions_request() :: #{binary() => any()}.


%% Example:
%% list_models_response() :: #{
%%   <<"compatibilityInformation">> => compatibility_information(),
%%   <<"modelAliases">> => list(model_alias()),
%%   <<"modelSummaries">> => list(model_summary())
%% }
-type list_models_response() :: #{binary() => any()}.


%% Example:
%% update_act_request() :: #{
%%   <<"error">> => act_error(),
%%   <<"status">> := list(any())
%% }
-type update_act_request() :: #{binary() => any()}.


%% Example:
%% session_summary() :: #{
%%   <<"sessionId">> => string()
%% }
-type session_summary() :: #{binary() => any()}.


%% Example:
%% get_workflow_definition_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"exportConfig">> => workflow_export_config(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_workflow_definition_response() :: #{binary() => any()}.


%% Example:
%% create_workflow_run_response() :: #{
%%   <<"status">> => list(any()),
%%   <<"workflowRunId">> => string()
%% }
-type create_workflow_run_response() :: #{binary() => any()}.


%% Example:
%% compatibility_information() :: #{
%%   <<"clientCompatibilityVersion">> => [integer()],
%%   <<"message">> => string(),
%%   <<"supportedModelIds">> => list(string())
%% }
-type compatibility_information() :: #{binary() => any()}.


%% Example:
%% update_workflow_run_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_workflow_run_request() :: #{binary() => any()}.


%% Example:
%% trace_location() :: #{
%%   <<"location">> => string(),
%%   <<"locationType">> => list(any())
%% }
-type trace_location() :: #{binary() => any()}.


%% Example:
%% model_summary() :: #{
%%   <<"minimumCompatibilityVersion">> => [integer()],
%%   <<"modelId">> => string(),
%%   <<"modelLifecycle">> => model_lifecycle()
%% }
-type model_summary() :: #{binary() => any()}.


%% Example:
%% act_error() :: #{
%%   <<"message">> => string(),
%%   <<"type">> => [string()]
%% }
-type act_error() :: #{binary() => any()}.


%% Example:
%% invoke_act_step_response() :: #{
%%   <<"calls">> => list(call()),
%%   <<"stepId">> => string()
%% }
-type invoke_act_step_response() :: #{binary() => any()}.


%% Example:
%% act_summary() :: #{
%%   <<"actId">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"traceLocation">> => trace_location(),
%%   <<"workflowRunId">> => string()
%% }
-type act_summary() :: #{binary() => any()}.


%% Example:
%% list_acts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sortOrder">> => list(any()),
%%   <<"workflowRunId">> => string()
%% }
-type list_acts_request() :: #{binary() => any()}.


%% Example:
%% create_session_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type create_session_request() :: #{binary() => any()}.


%% Example:
%% list_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionSummaries">> => list(session_summary())
%% }
-type list_sessions_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_workflow_definition_request() :: #{}
-type delete_workflow_definition_request() :: #{}.


%% Example:
%% call_result() :: #{
%%   <<"callId">> => string(),
%%   <<"content">> => list(list())
%% }
-type call_result() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_act_response() :: #{}
-type update_act_response() :: #{}.


%% Example:
%% tool_spec() :: #{
%%   <<"description">> => string(),
%%   <<"inputSchema">> => list(),
%%   <<"name">> => string()
%% }
-type tool_spec() :: #{binary() => any()}.

%% Example:
%% get_workflow_definition_request() :: #{}
-type get_workflow_definition_request() :: #{}.


%% Example:
%% create_workflow_definition_response() :: #{
%%   <<"status">> => list(any())
%% }
-type create_workflow_definition_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_sessions_request() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% update_workflow_run_response() :: #{}
-type update_workflow_run_response() :: #{}.


%% Example:
%% create_workflow_run_request() :: #{
%%   <<"clientInfo">> := client_info(),
%%   <<"clientToken">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"modelId">> := string()
%% }
-type create_workflow_run_request() :: #{binary() => any()}.


%% Example:
%% list_workflow_runs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_workflow_runs_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% workflow_definition_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workflowDefinitionArn">> => string(),
%%   <<"workflowDefinitionName">> => string()
%% }
-type workflow_definition_summary() :: #{binary() => any()}.


%% Example:
%% model_alias() :: #{
%%   <<"aliasName">> => string(),
%%   <<"latestModelId">> => string(),
%%   <<"resolvedModelId">> => string()
%% }
-type model_alias() :: #{binary() => any()}.


%% Example:
%% delete_workflow_definition_response() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_workflow_definition_response() :: #{binary() => any()}.


%% Example:
%% list_acts_response() :: #{
%%   <<"actSummaries">> => list(act_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_acts_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_workflow_runs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowRunSummaries">> => list(workflow_run_summary())
%% }
-type list_workflow_runs_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% create_workflow_definition_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"exportConfig">> => workflow_export_config(),
%%   <<"name">> := string()
%% }
-type create_workflow_definition_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% delete_workflow_run_response() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_request() :: #{}
-type get_workflow_run_request() :: #{}.


%% Example:
%% model_lifecycle() :: #{
%%   <<"status">> => list(any())
%% }
-type model_lifecycle() :: #{binary() => any()}.


%% Example:
%% invoke_act_step_request() :: #{
%%   <<"callResults">> := list(call_result()),
%%   <<"previousStepId">> => string()
%% }
-type invoke_act_step_request() :: #{binary() => any()}.


%% Example:
%% client_info() :: #{
%%   <<"compatibilityVersion">> => [integer()],
%%   <<"sdkVersion">> => string()
%% }
-type client_info() :: #{binary() => any()}.


%% Example:
%% list_workflow_definitions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowDefinitionSummaries">> => list(workflow_definition_summary())
%% }
-type list_workflow_definitions_response() :: #{binary() => any()}.


%% Example:
%% create_session_response() :: #{
%%   <<"sessionId">> => string()
%% }
-type create_session_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_run_response() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"logGroupName">> => string(),
%%   <<"modelId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workflowRunArn">> => string(),
%%   <<"workflowRunId">> => string()
%% }
-type get_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% delete_workflow_run_request() :: #{}
-type delete_workflow_run_request() :: #{}.


%% Example:
%% workflow_run_summary() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"traceLocation">> => trace_location(),
%%   <<"workflowRunArn">> => string(),
%%   <<"workflowRunId">> => string()
%% }
-type workflow_run_summary() :: #{binary() => any()}.


%% Example:
%% create_act_response() :: #{
%%   <<"actId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_act_response() :: #{binary() => any()}.


%% Example:
%% create_act_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"task">> := string(),
%%   <<"toolSpecs">> => list(tool_spec())
%% }
-type create_act_request() :: #{binary() => any()}.

-type create_act_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workflow_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workflow_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_workflow_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type invoke_act_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_acts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_models_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sessions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_workflow_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_workflow_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_act_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new AI task (act) within a session that can interact with
%% tools and perform specific actions.
-spec create_act(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_act_request()) ->
    {ok, create_act_response(), tuple()} |
    {error, any()} |
    {error, create_act_errors(), tuple()}.
create_act(Client, SessionId, WorkflowDefinitionName, WorkflowRunId, Input) ->
    create_act(Client, SessionId, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec create_act(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_act_request(), proplists:proplist()) ->
    {ok, create_act_response(), tuple()} |
    {error, any()} |
    {error, create_act_errors(), tuple()}.
create_act(Client, SessionId, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), "/sessions/", aws_util:encode_uri(SessionId), "/acts"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new session context within a workflow run to manage
%% conversation state and acts.
-spec create_session(aws_client:aws_client(), binary() | list(), binary() | list(), create_session_request()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, WorkflowDefinitionName, WorkflowRunId, Input) ->
    create_session(Client, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec create_session(aws_client:aws_client(), binary() | list(), binary() | list(), create_session_request(), proplists:proplist()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), "/sessions"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new workflow definition template that can be used to
%% execute multiple workflow runs.
-spec create_workflow_definition(aws_client:aws_client(), create_workflow_definition_request()) ->
    {ok, create_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_definition_errors(), tuple()}.
create_workflow_definition(Client, Input) ->
    create_workflow_definition(Client, Input, []).

-spec create_workflow_definition(aws_client:aws_client(), create_workflow_definition_request(), proplists:proplist()) ->
    {ok, create_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_definition_errors(), tuple()}.
create_workflow_definition(Client, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new execution instance of a workflow definition with
%% specified parameters.
-spec create_workflow_run(aws_client:aws_client(), binary() | list(), create_workflow_run_request()) ->
    {ok, create_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_run_errors(), tuple()}.
create_workflow_run(Client, WorkflowDefinitionName, Input) ->
    create_workflow_run(Client, WorkflowDefinitionName, Input, []).

-spec create_workflow_run(aws_client:aws_client(), binary() | list(), create_workflow_run_request(), proplists:proplist()) ->
    {ok, create_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_run_errors(), tuple()}.
create_workflow_run(Client, WorkflowDefinitionName, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a workflow definition and all associated resources.
%%
%% This operation cannot be undone.
-spec delete_workflow_definition(aws_client:aws_client(), binary() | list(), delete_workflow_definition_request()) ->
    {ok, delete_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_definition_errors(), tuple()}.
delete_workflow_definition(Client, WorkflowDefinitionName, Input) ->
    delete_workflow_definition(Client, WorkflowDefinitionName, Input, []).

-spec delete_workflow_definition(aws_client:aws_client(), binary() | list(), delete_workflow_definition_request(), proplists:proplist()) ->
    {ok, delete_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_definition_errors(), tuple()}.
delete_workflow_definition(Client, WorkflowDefinitionName, Input0, Options0) ->
    Method = delete,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Terminates and cleans up a workflow run, stopping all associated acts
%% and sessions.
-spec delete_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workflow_run_request()) ->
    {ok, delete_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_run_errors(), tuple()}.
delete_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input) ->
    delete_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec delete_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workflow_run_request(), proplists:proplist()) ->
    {ok, delete_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_run_errors(), tuple()}.
delete_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = delete,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the details and configuration of a specific workflow
%% definition.
-spec get_workflow_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_definition_errors(), tuple()}.
get_workflow_definition(Client, WorkflowDefinitionName)
  when is_map(Client) ->
    get_workflow_definition(Client, WorkflowDefinitionName, #{}, #{}).

-spec get_workflow_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_definition_errors(), tuple()}.
get_workflow_definition(Client, WorkflowDefinitionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_definition(Client, WorkflowDefinitionName, QueryMap, HeadersMap, []).

-spec get_workflow_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_definition_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_definition_errors(), tuple()}.
get_workflow_definition(Client, WorkflowDefinitionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state, configuration, and execution details of
%% a workflow run.
-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId)
  when is_map(Client) ->
    get_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, #{}, #{}).

-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, QueryMap, HeadersMap, []).

-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Executes the next step of an act, processing tool call results and
%% returning new tool calls if needed.
-spec invoke_act_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), invoke_act_step_request()) ->
    {ok, invoke_act_step_response(), tuple()} |
    {error, any()} |
    {error, invoke_act_step_errors(), tuple()}.
invoke_act_step(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input) ->
    invoke_act_step(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec invoke_act_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), invoke_act_step_request(), proplists:proplist()) ->
    {ok, invoke_act_step_response(), tuple()} |
    {error, any()} |
    {error, invoke_act_step_errors(), tuple()}.
invoke_act_step(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), "/sessions/", aws_util:encode_uri(SessionId), "/acts/", aws_util:encode_uri(ActId), "/invoke-step/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all acts within a specific session with their current status
%% and execution details.
-spec list_acts(aws_client:aws_client(), binary() | list(), list_acts_request()) ->
    {ok, list_acts_response(), tuple()} |
    {error, any()} |
    {error, list_acts_errors(), tuple()}.
list_acts(Client, WorkflowDefinitionName, Input) ->
    list_acts(Client, WorkflowDefinitionName, Input, []).

-spec list_acts(aws_client:aws_client(), binary() | list(), list_acts_request(), proplists:proplist()) ->
    {ok, list_acts_response(), tuple()} |
    {error, any()} |
    {error, list_acts_errors(), tuple()}.
list_acts(Client, WorkflowDefinitionName, Input0, Options0) ->
    Method = post,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/acts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"sessionId">>, <<"sessionId">>},
                     {<<"workflowRunId">>, <<"workflowRunId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all available AI models that can be used for workflow
%% execution, including their status and compatibility information.
-spec list_models(aws_client:aws_client(), list_models_request()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, Input) ->
    list_models(Client, Input, []).

-spec list_models(aws_client:aws_client(), list_models_request(), proplists:proplist()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, Input0, Options0) ->
    Method = post,
    Path = ["/models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientCompatibilityVersion">>, <<"clientCompatibilityVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all sessions within a specific workflow run.
-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), list_sessions_request()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, WorkflowDefinitionName, WorkflowRunId, Input) ->
    list_sessions(Client, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), list_sessions_request(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = post,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all workflow definitions in your account with optional
%% filtering and pagination.
-spec list_workflow_definitions(aws_client:aws_client(), list_workflow_definitions_request()) ->
    {ok, list_workflow_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_definitions_errors(), tuple()}.
list_workflow_definitions(Client, Input) ->
    list_workflow_definitions(Client, Input, []).

-spec list_workflow_definitions(aws_client:aws_client(), list_workflow_definitions_request(), proplists:proplist()) ->
    {ok, list_workflow_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_definitions_errors(), tuple()}.
list_workflow_definitions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflow-definitions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all workflow runs for a specific workflow definition with
%% optional filtering and pagination.
-spec list_workflow_runs(aws_client:aws_client(), binary() | list(), list_workflow_runs_request()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_runs_errors(), tuple()}.
list_workflow_runs(Client, WorkflowDefinitionName, Input) ->
    list_workflow_runs(Client, WorkflowDefinitionName, Input, []).

-spec list_workflow_runs(aws_client:aws_client(), binary() | list(), list_workflow_runs_request(), proplists:proplist()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_runs_errors(), tuple()}.
list_workflow_runs(Client, WorkflowDefinitionName, Input0, Options0) ->
    Method = post,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing act's configuration, status, or error
%% information.
-spec update_act(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_act_request()) ->
    {ok, update_act_response(), tuple()} |
    {error, any()} |
    {error, update_act_errors(), tuple()}.
update_act(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input) ->
    update_act(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec update_act(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_act_request(), proplists:proplist()) ->
    {ok, update_act_response(), tuple()} |
    {error, any()} |
    {error, update_act_errors(), tuple()}.
update_act(Client, ActId, SessionId, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), "/sessions/", aws_util:encode_uri(SessionId), "/acts/", aws_util:encode_uri(ActId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration or state of an active workflow run.
-spec update_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), update_workflow_run_request()) ->
    {ok, update_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_run_errors(), tuple()}.
update_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input) ->
    update_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input, []).

-spec update_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), update_workflow_run_request(), proplists:proplist()) ->
    {ok, update_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_run_errors(), tuple()}.
update_workflow_run(Client, WorkflowDefinitionName, WorkflowRunId, Input0, Options0) ->
    Method = put,
    Path = ["/workflow-definitions/", aws_util:encode_uri(WorkflowDefinitionName), "/workflow-runs/", aws_util:encode_uri(WorkflowRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"nova-act">>},
    Host = build_host(<<"nova-act">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
