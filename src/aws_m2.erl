%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Mainframe Modernization provides tools and
%% resources to help you plan and implement migration and modernization from
%% mainframes to Amazon Web Services managed runtime environments.
%%
%% It provides tools for analyzing existing mainframe applications,
%% developing or updating mainframe applications using COBOL or PL/I, and
%% implementing an automated pipeline for continuous integration and
%% continuous delivery (CI/CD) of the applications.
-module(aws_m2).

-export([cancel_batch_job_execution/4,
         cancel_batch_job_execution/5,
         create_application/2,
         create_application/3,
         create_data_set_import_task/3,
         create_data_set_import_task/4,
         create_deployment/3,
         create_deployment/4,
         create_environment/2,
         create_environment/3,
         delete_application/3,
         delete_application/4,
         delete_application_from_environment/4,
         delete_application_from_environment/5,
         delete_environment/3,
         delete_environment/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_application_version/3,
         get_application_version/5,
         get_application_version/6,
         get_batch_job_execution/3,
         get_batch_job_execution/5,
         get_batch_job_execution/6,
         get_data_set_details/3,
         get_data_set_details/5,
         get_data_set_details/6,
         get_data_set_import_task/3,
         get_data_set_import_task/5,
         get_data_set_import_task/6,
         get_deployment/3,
         get_deployment/5,
         get_deployment/6,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_signed_bluinsights_url/1,
         get_signed_bluinsights_url/3,
         get_signed_bluinsights_url/4,
         list_application_versions/2,
         list_application_versions/4,
         list_application_versions/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_batch_job_definitions/2,
         list_batch_job_definitions/4,
         list_batch_job_definitions/5,
         list_batch_job_executions/2,
         list_batch_job_executions/4,
         list_batch_job_executions/5,
         list_data_set_import_history/2,
         list_data_set_import_history/4,
         list_data_set_import_history/5,
         list_data_sets/2,
         list_data_sets/4,
         list_data_sets/5,
         list_deployments/2,
         list_deployments/4,
         list_deployments/5,
         list_engine_versions/1,
         list_engine_versions/3,
         list_engine_versions/4,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_application/3,
         start_application/4,
         start_batch_job/3,
         start_batch_job/4,
         stop_application/3,
         stop_application/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_environment/3,
         update_environment/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the running of a specific batch job execution.
cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input) ->
    cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input, []).
cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions/", aws_util:encode_uri(ExecutionId), "/cancel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new application with given parameters.
%%
%% Requires an existing runtime environment and application definition file.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a data set import task for a specific application.
create_data_set_import_task(Client, ApplicationId, Input) ->
    create_data_set_import_task(Client, ApplicationId, Input, []).
create_data_set_import_task(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-task"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and starts a deployment to deploy an application into a
%% runtime environment.
create_deployment(Client, ApplicationId, Input) ->
    create_deployment(Client, ApplicationId, Input, []).
create_deployment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a runtime environment for a given runtime engine.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific application.
%%
%% You cannot delete a running application.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific application from the specific runtime environment
%% where it was previously deployed.
%%
%% You cannot delete a runtime environment using DeleteEnvironment if any
%% application has ever been deployed to it. This API removes the association
%% of the application with the runtime environment so you can delete the
%% environment smoothly.
delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input) ->
    delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input, []).
delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environment/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific runtime environment.
%%
%% The environment cannot contain deployed applications. If it does, you must
%% delete those applications before you delete the environment.
delete_environment(Client, EnvironmentId, Input) ->
    delete_environment(Client, EnvironmentId, Input, []).
delete_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the details of a specific application.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a specific version of a specific application.
get_application_version(Client, ApplicationId, ApplicationVersion)
  when is_map(Client) ->
    get_application_version(Client, ApplicationId, ApplicationVersion, #{}, #{}).

get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap, []).

get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions/", aws_util:encode_uri(ApplicationVersion), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a specific batch job execution for a specific
%% application.
get_batch_job_execution(Client, ApplicationId, ExecutionId)
  when is_map(Client) ->
    get_batch_job_execution(Client, ApplicationId, ExecutionId, #{}, #{}).

get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, []).

get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions/", aws_util:encode_uri(ExecutionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a specific data set.
get_data_set_details(Client, ApplicationId, DataSetName)
  when is_map(Client) ->
    get_data_set_details(Client, ApplicationId, DataSetName, #{}, #{}).

get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap, []).

get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/datasets/", aws_util:encode_uri(DataSetName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a data set import task initiated with the
%% `CreateDataSetImportTask' operation.
get_data_set_import_task(Client, ApplicationId, TaskId)
  when is_map(Client) ->
    get_data_set_import_task(Client, ApplicationId, TaskId, #{}, #{}).

get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, []).

get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details of a specific deployment with a given deployment
%% identifier.
get_deployment(Client, ApplicationId, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, ApplicationId, DeploymentId, #{}, #{}).

get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap, []).

get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a specific runtime environment.
get_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, EnvironmentId, #{}, #{}).

get_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

get_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a single sign-on URL that can be used to connect to AWS Blu
%% Insights.
get_signed_bluinsights_url(Client)
  when is_map(Client) ->
    get_signed_bluinsights_url(Client, #{}, #{}).

get_signed_bluinsights_url(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signed_bluinsights_url(Client, QueryMap, HeadersMap, []).

get_signed_bluinsights_url(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signed-bi-url"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the application versions for a specific
%% application.
list_application_versions(Client, ApplicationId)
  when is_map(Client) ->
    list_application_versions(Client, ApplicationId, #{}, #{}).

list_application_versions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, []).

list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the applications associated with a specific Amazon Web Services
%% account.
%%
%% You can provide the unique identifier of a specific runtime environment in
%% a query parameter to see all applications associated with that
%% environment.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"environmentId">>, maps:get(<<"environmentId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"names">>, maps:get(<<"names">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the available batch job definitions based on the batch job
%% resources uploaded during the application creation.
%%
%% You can use the batch job definitions in the list to start a batch job.
list_batch_job_definitions(Client, ApplicationId)
  when is_map(Client) ->
    list_batch_job_definitions(Client, ApplicationId, #{}, #{}).

list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap, []).

list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-definitions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists historical, current, and scheduled batch job executions for a
%% specific application.
list_batch_job_executions(Client, ApplicationId)
  when is_map(Client) ->
    list_batch_job_executions(Client, ApplicationId, #{}, #{}).

list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap, []).

list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"executionIds">>, maps:get(<<"executionIds">>, QueryMap, undefined)},
        {<<"jobName">>, maps:get(<<"jobName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startedAfter">>, maps:get(<<"startedAfter">>, QueryMap, undefined)},
        {<<"startedBefore">>, maps:get(<<"startedBefore">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data set imports for the specified application.
list_data_set_import_history(Client, ApplicationId)
  when is_map(Client) ->
    list_data_set_import_history(Client, ApplicationId, #{}, #{}).

list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap, []).

list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-tasks"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data sets imported for a specific application.
%%
%% In Amazon Web Services Mainframe Modernization, data sets are associated
%% with applications deployed on runtime environments. This is known as
%% importing data sets. Currently, Amazon Web Services Mainframe
%% Modernization can import data sets into catalogs using
%% CreateDataSetImportTask:
%% https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html.
list_data_sets(Client, ApplicationId)
  when is_map(Client) ->
    list_data_sets(Client, ApplicationId, #{}, #{}).

list_data_sets(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, ApplicationId, QueryMap, HeadersMap, []).

list_data_sets(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/datasets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameFilter">>, maps:get(<<"nameFilter">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all deployments of a specific application.
%%
%% A deployment is a combination of a specific application and a specific
%% version of that application. Each deployment is mapped to a particular
%% application version.
list_deployments(Client, ApplicationId)
  when is_map(Client) ->
    list_deployments(Client, ApplicationId, #{}, #{}).

list_deployments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, ApplicationId, QueryMap, HeadersMap, []).

list_deployments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available engine versions.
list_engine_versions(Client)
  when is_map(Client) ->
    list_engine_versions(Client, #{}, #{}).

list_engine_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_engine_versions(Client, QueryMap, HeadersMap, []).

list_engine_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/engine-versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the runtime environments.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"names">>, maps:get(<<"names">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts an application that is currently stopped.
start_application(Client, ApplicationId, Input) ->
    start_application(Client, ApplicationId, Input, []).
start_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a batch job and returns the unique identifier of this
%% execution of the batch job.
%%
%% The associated application must be running in order to start the batch
%% job.
start_batch_job(Client, ApplicationId, Input) ->
    start_batch_job(Client, ApplicationId, Input, []).
start_batch_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a running application.
stop_application(Client, ApplicationId, Input) ->
    stop_application(Client, ApplicationId, Input, []).
stop_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an application and creates a new version.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration details for a specific runtime environment.
update_environment(Client, EnvironmentId, Input) ->
    update_environment(Client, EnvironmentId, Input, []).
update_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"m2">>},
    Host = build_host(<<"m2">>, Client1),
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
