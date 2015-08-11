%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc AWS Device Farm is a service that enables mobile app developers to
%% test Android, iOS, and Fire OS apps on physical phones, tablets, and other
%% devices in the cloud.
-module(aws_device_farm).

-export([create_device_pool/3,
         create_project/3,
         create_upload/3,
         get_account_settings/3,
         get_device/3,
         get_device_pool/3,
         get_device_pool_compatibility/3,
         get_job/3,
         get_project/3,
         get_run/3,
         get_suite/3,
         get_test/3,
         get_upload/3,
         list_artifacts/3,
         list_device_pools/3,
         list_devices/3,
         list_jobs/3,
         list_projects/3,
         list_runs/3,
         list_samples/3,
         list_suites/3,
         list_tests/3,
         list_unique_problems/3,
         list_uploads/3,
         schedule_run/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a device pool.
create_device_pool(Client, Input, Options) ->
  request(Client, <<"CreateDevicePool">>, Input, Options).

%% @doc Creates a new project.
create_project(Client, Input, Options) ->
  request(Client, <<"CreateProject">>, Input, Options).

%% @doc Uploads an app or test scripts.
create_upload(Client, Input, Options) ->
  request(Client, <<"CreateUpload">>, Input, Options).

%% @doc Returns the number of unmetered iOS and/or unmetered Android devices
%% that have been purchased by the account.
get_account_settings(Client, Input, Options) ->
  request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Gets information about a unique device type.
get_device(Client, Input, Options) ->
  request(Client, <<"GetDevice">>, Input, Options).

%% @doc Gets information about a device pool.
get_device_pool(Client, Input, Options) ->
  request(Client, <<"GetDevicePool">>, Input, Options).

%% @doc Gets information about compatibility with a device pool.
get_device_pool_compatibility(Client, Input, Options) ->
  request(Client, <<"GetDevicePoolCompatibility">>, Input, Options).

%% @doc Gets information about a job.
get_job(Client, Input, Options) ->
  request(Client, <<"GetJob">>, Input, Options).

%% @doc Gets information about a project.
get_project(Client, Input, Options) ->
  request(Client, <<"GetProject">>, Input, Options).

%% @doc Gets information about a run.
get_run(Client, Input, Options) ->
  request(Client, <<"GetRun">>, Input, Options).

%% @doc Gets information about a suite.
get_suite(Client, Input, Options) ->
  request(Client, <<"GetSuite">>, Input, Options).

%% @doc Gets information about a test.
get_test(Client, Input, Options) ->
  request(Client, <<"GetTest">>, Input, Options).

%% @doc Gets information about an upload.
get_upload(Client, Input, Options) ->
  request(Client, <<"GetUpload">>, Input, Options).

%% @doc Gets information about artifacts.
list_artifacts(Client, Input, Options) ->
  request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Gets information about device pools.
list_device_pools(Client, Input, Options) ->
  request(Client, <<"ListDevicePools">>, Input, Options).

%% @doc Gets information about unique device types.
list_devices(Client, Input, Options) ->
  request(Client, <<"ListDevices">>, Input, Options).

%% @doc Gets information about jobs.
list_jobs(Client, Input, Options) ->
  request(Client, <<"ListJobs">>, Input, Options).

%% @doc Gets information about projects.
list_projects(Client, Input, Options) ->
  request(Client, <<"ListProjects">>, Input, Options).

%% @doc Gets information about runs.
list_runs(Client, Input, Options) ->
  request(Client, <<"ListRuns">>, Input, Options).

%% @doc Gets information about samples.
list_samples(Client, Input, Options) ->
  request(Client, <<"ListSamples">>, Input, Options).

%% @doc Gets information about suites.
list_suites(Client, Input, Options) ->
  request(Client, <<"ListSuites">>, Input, Options).

%% @doc Gets information about tests.
list_tests(Client, Input, Options) ->
  request(Client, <<"ListTests">>, Input, Options).

%% @doc Gets information about unique problems.
list_unique_problems(Client, Input, Options) ->
  request(Client, <<"ListUniqueProblems">>, Input, Options).

%% @doc Gets information about uploads.
list_uploads(Client, Input, Options) ->
  request(Client, <<"ListUploads">>, Input, Options).

%% @doc Schedules a run.
schedule_run(Client, Input, Options) ->
  request(Client, <<"ScheduleRun">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"devicefarm">>},
    Method = post,
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
    Headers1 = aws_request:sign_request(Client1, Method, URL, Headers, Payload),
    Response = hackney:request(Method, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
