%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeBuild
%%
%% AWS CodeBuild is a fully managed build service in the cloud.
%%
%% AWS CodeBuild compiles your source code, runs unit tests, and produces
%% artifacts that are ready to deploy. AWS CodeBuild eliminates the need to
%% provision, manage, and scale your own build servers. It provides
%% prepackaged build environments for the most popular programming languages
%% and build tools, such as Apache Maven, Gradle, and more. You can also
%% fully customize build environments in AWS CodeBuild to use your own build
%% tools. AWS CodeBuild scales automatically to meet peak build requests. You
%% pay only for the build time you consume. For more information about AWS
%% CodeBuild, see the AWS CodeBuild User Guide.
%%
%% AWS CodeBuild supports these operations:
%%
%% <ul> <li> `BatchDeleteBuilds': Deletes one or more builds.
%%
%% </li> <li> `BatchGetBuilds': Gets information about one or more builds.
%%
%% </li> <li> `BatchGetProjects': Gets information about one or more build
%% projects. A build project defines how AWS CodeBuild runs a build. This
%% includes information such as where to get the source code to build, the
%% build environment to use, the build commands to run, and where to store
%% the build output. A build environment is a representation of operating
%% system, programming language runtime, and tools that AWS CodeBuild uses to
%% run a build. You can add tags to build projects to help manage your
%% resources and costs.
%%
%% </li> <li> `BatchGetReportGroups': Returns an array of report groups.
%%
%% </li> <li> `BatchGetReports': Returns an array of reports.
%%
%% </li> <li> `CreateProject': Creates a build project.
%%
%% </li> <li> `CreateReportGroup': Creates a report group. A report group
%% contains a collection of reports.
%%
%% </li> <li> `CreateWebhook': For an existing AWS CodeBuild build project
%% that has its source code stored in a GitHub or Bitbucket repository,
%% enables AWS CodeBuild to start rebuilding the source code every time a
%% code change is pushed to the repository.
%%
%% </li> <li> `DeleteProject': Deletes a build project.
%%
%% </li> <li> `DeleteReport': Deletes a report.
%%
%% </li> <li> `DeleteReportGroup': Deletes a report group.
%%
%% </li> <li> `DeleteResourcePolicy': Deletes a resource policy that is
%% identified by its resource ARN.
%%
%% </li> <li> `DeleteSourceCredentials': Deletes a set of GitHub, GitHub
%% Enterprise, or Bitbucket source credentials.
%%
%% </li> <li> `DeleteWebhook': For an existing AWS CodeBuild build project
%% that has its source code stored in a GitHub or Bitbucket repository, stops
%% AWS CodeBuild from rebuilding the source code every time a code change is
%% pushed to the repository.
%%
%% </li> <li> `DescribeTestCases': Returns a list of details about test cases
%% for a report.
%%
%% </li> <li> `GetResourcePolicy': Gets a resource policy that is identified
%% by its resource ARN.
%%
%% </li> <li> `ImportSourceCredentials': Imports the source repository
%% credentials for an AWS CodeBuild project that has its source code stored
%% in a GitHub, GitHub Enterprise, or Bitbucket repository.
%%
%% </li> <li> `InvalidateProjectCache': Resets the cache for a project.
%%
%% </li> <li> `ListBuilds': Gets a list of build IDs, with each build ID
%% representing a single build.
%%
%% </li> <li> `ListBuildsForProject': Gets a list of build IDs for the
%% specified build project, with each build ID representing a single build.
%%
%% </li> <li> `ListCuratedEnvironmentImages': Gets information about Docker
%% images that are managed by AWS CodeBuild.
%%
%% </li> <li> `ListProjects': Gets a list of build project names, with each
%% build project name representing a single build project.
%%
%% </li> <li> `ListReportGroups': Gets a list ARNs for the report groups in
%% the current AWS account.
%%
%% </li> <li> `ListReports': Gets a list ARNs for the reports in the current
%% AWS account.
%%
%% </li> <li> `ListReportsForReportGroup': Returns a list of ARNs for the
%% reports that belong to a `ReportGroup'.
%%
%% </li> <li> `ListSharedProjects': Gets a list of ARNs associated with
%% projects shared with the current AWS account or user.
%%
%% </li> <li> `ListSharedReportGroups': Gets a list of ARNs associated with
%% report groups shared with the current AWS account or user
%%
%% </li> <li> `ListSourceCredentials': Returns a list of
%% `SourceCredentialsInfo' objects. Each `SourceCredentialsInfo' object
%% includes the authentication type, token ARN, and type of source provider
%% for one set of credentials.
%%
%% </li> <li> `PutResourcePolicy': Stores a resource policy for the ARN of a
%% `Project' or `ReportGroup' object.
%%
%% </li> <li> `StartBuild': Starts running a build.
%%
%% </li> <li> `StopBuild': Attempts to stop running a build.
%%
%% </li> <li> `UpdateProject': Changes the settings of an existing build
%% project.
%%
%% </li> <li> `UpdateReportGroup': Changes a report group.
%%
%% </li> <li> `UpdateWebhook': Changes the settings of an existing webhook.
%%
%% </li> </ul>
-module(aws_codebuild).

-export([batch_delete_builds/2,
         batch_delete_builds/3,
         batch_get_build_batches/2,
         batch_get_build_batches/3,
         batch_get_builds/2,
         batch_get_builds/3,
         batch_get_projects/2,
         batch_get_projects/3,
         batch_get_report_groups/2,
         batch_get_report_groups/3,
         batch_get_reports/2,
         batch_get_reports/3,
         create_project/2,
         create_project/3,
         create_report_group/2,
         create_report_group/3,
         create_webhook/2,
         create_webhook/3,
         delete_build_batch/2,
         delete_build_batch/3,
         delete_project/2,
         delete_project/3,
         delete_report/2,
         delete_report/3,
         delete_report_group/2,
         delete_report_group/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_source_credentials/2,
         delete_source_credentials/3,
         delete_webhook/2,
         delete_webhook/3,
         describe_code_coverages/2,
         describe_code_coverages/3,
         describe_test_cases/2,
         describe_test_cases/3,
         get_report_group_trend/2,
         get_report_group_trend/3,
         get_resource_policy/2,
         get_resource_policy/3,
         import_source_credentials/2,
         import_source_credentials/3,
         invalidate_project_cache/2,
         invalidate_project_cache/3,
         list_build_batches/2,
         list_build_batches/3,
         list_build_batches_for_project/2,
         list_build_batches_for_project/3,
         list_builds/2,
         list_builds/3,
         list_builds_for_project/2,
         list_builds_for_project/3,
         list_curated_environment_images/2,
         list_curated_environment_images/3,
         list_projects/2,
         list_projects/3,
         list_report_groups/2,
         list_report_groups/3,
         list_reports/2,
         list_reports/3,
         list_reports_for_report_group/2,
         list_reports_for_report_group/3,
         list_shared_projects/2,
         list_shared_projects/3,
         list_shared_report_groups/2,
         list_shared_report_groups/3,
         list_source_credentials/2,
         list_source_credentials/3,
         put_resource_policy/2,
         put_resource_policy/3,
         retry_build/2,
         retry_build/3,
         retry_build_batch/2,
         retry_build_batch/3,
         start_build/2,
         start_build/3,
         start_build_batch/2,
         start_build_batch/3,
         stop_build/2,
         stop_build/3,
         stop_build_batch/2,
         stop_build_batch/3,
         update_project/2,
         update_project/3,
         update_report_group/2,
         update_report_group/3,
         update_webhook/2,
         update_webhook/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more builds.
batch_delete_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_builds(Client, Input, []).
batch_delete_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteBuilds">>, Input, Options).

%% @doc Retrieves information about one or more batch builds.
batch_get_build_batches(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_build_batches(Client, Input, []).
batch_get_build_batches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBuildBatches">>, Input, Options).

%% @doc Gets information about one or more builds.
batch_get_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_builds(Client, Input, []).
batch_get_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBuilds">>, Input, Options).

%% @doc Gets information about one or more build projects.
batch_get_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_projects(Client, Input, []).
batch_get_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetProjects">>, Input, Options).

%% @doc Returns an array of report groups.
batch_get_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_report_groups(Client, Input, []).
batch_get_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetReportGroups">>, Input, Options).

%% @doc Returns an array of reports.
batch_get_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_reports(Client, Input, []).
batch_get_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetReports">>, Input, Options).

%% @doc Creates a build project.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Creates a report group.
%%
%% A report group contains a collection of reports.
create_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_report_group(Client, Input, []).
create_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReportGroup">>, Input, Options).

%% @doc For an existing AWS CodeBuild build project that has its source code
%% stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start
%% rebuilding the source code every time a code change is pushed to the
%% repository.
%%
%% If you enable webhooks for an AWS CodeBuild project, and the project is
%% used as a build step in AWS CodePipeline, then two identical builds are
%% created for each commit. One build is triggered through webhooks, and one
%% through AWS CodePipeline. Because billing is on a per-build basis, you are
%% billed for both builds. Therefore, if you are using AWS CodePipeline, we
%% recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild
%% console, clear the Webhook box. For more information, see step 5 in Change
%% a Build Project's Settings.
create_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_webhook(Client, Input, []).
create_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebhook">>, Input, Options).

%% @doc Deletes a batch build.
delete_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_build_batch(Client, Input, []).
delete_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBuildBatch">>, Input, Options).

%% @doc Deletes a build project.
%%
%% When you delete a project, its builds are not deleted.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes a report.
delete_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report(Client, Input, []).
delete_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReport">>, Input, Options).

%% @doc Deletes a report group.
%%
%% Before you delete a report group, you must delete its reports.
delete_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report_group(Client, Input, []).
delete_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReportGroup">>, Input, Options).

%% @doc Deletes a resource policy that is identified by its resource ARN.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
%% credentials.
delete_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_source_credentials(Client, Input, []).
delete_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSourceCredentials">>, Input, Options).

%% @doc For an existing AWS CodeBuild build project that has its source code
%% stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from
%% rebuilding the source code every time a code change is pushed to the
%% repository.
delete_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_webhook(Client, Input, []).
delete_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebhook">>, Input, Options).

%% @doc Retrieves one or more code coverage reports.
describe_code_coverages(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_code_coverages(Client, Input, []).
describe_code_coverages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCodeCoverages">>, Input, Options).

%% @doc Returns a list of details about test cases for a report.
describe_test_cases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_test_cases(Client, Input, []).
describe_test_cases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTestCases">>, Input, Options).


get_report_group_trend(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_report_group_trend(Client, Input, []).
get_report_group_trend(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReportGroupTrend">>, Input, Options).

%% @doc Gets a resource policy that is identified by its resource ARN.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Imports the source repository credentials for an AWS CodeBuild
%% project that has its source code stored in a GitHub, GitHub Enterprise, or
%% Bitbucket repository.
import_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_source_credentials(Client, Input, []).
import_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSourceCredentials">>, Input, Options).

%% @doc Resets the cache for a project.
invalidate_project_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    invalidate_project_cache(Client, Input, []).
invalidate_project_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InvalidateProjectCache">>, Input, Options).

%% @doc Retrieves the identifiers of your build batches in the current
%% region.
list_build_batches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_build_batches(Client, Input, []).
list_build_batches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildBatches">>, Input, Options).

%% @doc Retrieves the identifiers of the build batches for a specific
%% project.
list_build_batches_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_build_batches_for_project(Client, Input, []).
list_build_batches_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildBatchesForProject">>, Input, Options).

%% @doc Gets a list of build IDs, with each build ID representing a single
%% build.
list_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds(Client, Input, []).
list_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuilds">>, Input, Options).

%% @doc Gets a list of build IDs for the specified build project, with each
%% build ID representing a single build.
list_builds_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds_for_project(Client, Input, []).
list_builds_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildsForProject">>, Input, Options).

%% @doc Gets information about Docker images that are managed by AWS
%% CodeBuild.
list_curated_environment_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_curated_environment_images(Client, Input, []).
list_curated_environment_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCuratedEnvironmentImages">>, Input, Options).

%% @doc Gets a list of build project names, with each build project name
%% representing a single build project.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Gets a list ARNs for the report groups in the current AWS account.
list_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_report_groups(Client, Input, []).
list_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReportGroups">>, Input, Options).

%% @doc Returns a list of ARNs for the reports in the current AWS account.
list_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reports(Client, Input, []).
list_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReports">>, Input, Options).

%% @doc Returns a list of ARNs for the reports that belong to a
%% `ReportGroup'.
list_reports_for_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reports_for_report_group(Client, Input, []).
list_reports_for_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReportsForReportGroup">>, Input, Options).

%% @doc Gets a list of projects that are shared with other AWS accounts or
%% users.
list_shared_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_shared_projects(Client, Input, []).
list_shared_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSharedProjects">>, Input, Options).

%% @doc Gets a list of report groups that are shared with other AWS accounts
%% or users.
list_shared_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_shared_report_groups(Client, Input, []).
list_shared_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSharedReportGroups">>, Input, Options).

%% @doc Returns a list of `SourceCredentialsInfo' objects.
list_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_source_credentials(Client, Input, []).
list_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSourceCredentials">>, Input, Options).

%% @doc Stores a resource policy for the ARN of a `Project' or `ReportGroup'
%% object.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Restarts a build.
retry_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_build(Client, Input, []).
retry_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryBuild">>, Input, Options).

%% @doc Restarts a failed batch build.
%%
%% Only batch builds that have failed can be retried.
retry_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_build_batch(Client, Input, []).
retry_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryBuildBatch">>, Input, Options).

%% @doc Starts running a build.
start_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_build(Client, Input, []).
start_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBuild">>, Input, Options).

%% @doc Starts a batch build for a project.
start_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_build_batch(Client, Input, []).
start_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBuildBatch">>, Input, Options).

%% @doc Attempts to stop running a build.
stop_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_build(Client, Input, []).
stop_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopBuild">>, Input, Options).

%% @doc Stops a running batch build.
stop_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_build_batch(Client, Input, []).
stop_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopBuildBatch">>, Input, Options).

%% @doc Changes the settings of a build project.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Updates a report group.
update_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_report_group(Client, Input, []).
update_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReportGroup">>, Input, Options).

%% @doc Updates the webhook associated with an AWS CodeBuild build project.
%%
%% If you use Bitbucket for your repository, `rotateSecret' is ignored.
update_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_webhook(Client, Input, []).
update_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebhook">>, Input, Options).

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
    Client1 = Client#{service => <<"codebuild">>},
    Host = build_host(<<"codebuild">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodeBuild_20161006.", Action/binary>>}
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
