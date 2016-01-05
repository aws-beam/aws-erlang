%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc AWS Device Farm is a service that enables mobile app developers to
%% test Android, iOS, and Fire OS apps on physical phones, tablets, and other
%% devices in the cloud.
-module(aws_device_farm).

-export([create_device_pool/2,
         create_device_pool/3,
         create_project/2,
         create_project/3,
         create_upload/2,
         create_upload/3,
         delete_device_pool/2,
         delete_device_pool/3,
         delete_project/2,
         delete_project/3,
         delete_run/2,
         delete_run/3,
         delete_upload/2,
         delete_upload/3,
         get_account_settings/2,
         get_account_settings/3,
         get_device/2,
         get_device/3,
         get_device_pool/2,
         get_device_pool/3,
         get_device_pool_compatibility/2,
         get_device_pool_compatibility/3,
         get_job/2,
         get_job/3,
         get_project/2,
         get_project/3,
         get_run/2,
         get_run/3,
         get_suite/2,
         get_suite/3,
         get_test/2,
         get_test/3,
         get_upload/2,
         get_upload/3,
         list_artifacts/2,
         list_artifacts/3,
         list_device_pools/2,
         list_device_pools/3,
         list_devices/2,
         list_devices/3,
         list_jobs/2,
         list_jobs/3,
         list_projects/2,
         list_projects/3,
         list_runs/2,
         list_runs/3,
         list_samples/2,
         list_samples/3,
         list_suites/2,
         list_suites/3,
         list_tests/2,
         list_tests/3,
         list_unique_problems/2,
         list_unique_problems/3,
         list_uploads/2,
         list_uploads/3,
         schedule_run/2,
         schedule_run/3,
         update_device_pool/2,
         update_device_pool/3,
         update_project/2,
         update_project/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a device pool.
create_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_device_pool(Client, Input, []).
create_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDevicePool">>, Input, Options).

%% @doc Creates a new project.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Uploads an app or test scripts.
create_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_upload(Client, Input, []).
create_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpload">>, Input, Options).

%% @doc Deletes a device pool given the pool ARN. Does not allow deletion of
%% curated pools owned by the system.
delete_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_pool(Client, Input, []).
delete_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevicePool">>, Input, Options).

%% @doc Deletes an AWS Device Farm project, given the project ARN.
%%
%% <b>Note</b> Deleting this resource does not stop an in-progress run.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes the run, given the run ARN.
%%
%% <b>Note</b> Deleting this resource does not stop an in-progress run.
delete_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_run(Client, Input, []).
delete_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRun">>, Input, Options).

%% @doc Deletes an upload given the upload ARN.
delete_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_upload(Client, Input, []).
delete_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUpload">>, Input, Options).

%% @doc Returns the number of unmetered iOS and/or unmetered Android devices
%% that have been purchased by the account.
get_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_settings(Client, Input, []).
get_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Gets information about a unique device type.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Gets information about a device pool.
get_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_pool(Client, Input, []).
get_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevicePool">>, Input, Options).

%% @doc Gets information about compatibility with a device pool.
get_device_pool_compatibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_pool_compatibility(Client, Input, []).
get_device_pool_compatibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevicePoolCompatibility">>, Input, Options).

%% @doc Gets information about a job.
get_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job(Client, Input, []).
get_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJob">>, Input, Options).

%% @doc Gets information about a project.
get_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_project(Client, Input, []).
get_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProject">>, Input, Options).

%% @doc Gets information about a run.
get_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_run(Client, Input, []).
get_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRun">>, Input, Options).

%% @doc Gets information about a suite.
get_suite(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_suite(Client, Input, []).
get_suite(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSuite">>, Input, Options).

%% @doc Gets information about a test.
get_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test(Client, Input, []).
get_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTest">>, Input, Options).

%% @doc Gets information about an upload.
get_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_upload(Client, Input, []).
get_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUpload">>, Input, Options).

%% @doc Gets information about artifacts.
list_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_artifacts(Client, Input, []).
list_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Gets information about device pools.
list_device_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_pools(Client, Input, []).
list_device_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevicePools">>, Input, Options).

%% @doc Gets information about unique device types.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Gets information about jobs.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Gets information about projects.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Gets information about runs.
list_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_runs(Client, Input, []).
list_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuns">>, Input, Options).

%% @doc Gets information about samples.
list_samples(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_samples(Client, Input, []).
list_samples(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSamples">>, Input, Options).

%% @doc Gets information about suites.
list_suites(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_suites(Client, Input, []).
list_suites(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSuites">>, Input, Options).

%% @doc Gets information about tests.
list_tests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tests(Client, Input, []).
list_tests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTests">>, Input, Options).

%% @doc Gets information about unique problems.
list_unique_problems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_unique_problems(Client, Input, []).
list_unique_problems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUniqueProblems">>, Input, Options).

%% @doc Gets information about uploads.
list_uploads(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_uploads(Client, Input, []).
list_uploads(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUploads">>, Input, Options).

%% @doc Schedules a run.
schedule_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    schedule_run(Client, Input, []).
schedule_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScheduleRun">>, Input, Options).

%% @doc Modifies the name, description, and rules in a device pool given the
%% attributes and the pool ARN. Rule updates are all-or-nothing, meaning they
%% can only be updated as a whole (or not at all).
update_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_pool(Client, Input, []).
update_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevicePool">>, Input, Options).

%% @doc Modifies the specified project name, given the project ARN and a new
%% name.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

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
    Client1 = Client#{service => <<"devicefarm">>},
    Host = aws_util:binary_join([<<"devicefarm.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"DeviceFarm_20150623.">>/binary, Action/binary>>}],
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
