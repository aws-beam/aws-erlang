%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS Device Farm API documentation, which contains APIs
%% for:
%%
%% <ul> <li> Testing on desktop browsers
%%
%% Device Farm makes it possible for you to test your web applications on
%% desktop browsers using Selenium.
%%
%% The APIs for desktop browser testing contain `TestGrid' in their names.
%% For more information, see Testing Web Applications on Selenium with Device
%% Farm.
%%
%% </li> <li> Testing on real mobile devices
%%
%% Device Farm makes it possible for you to test apps on physical phones,
%% tablets, and other devices in the cloud. For more information, see the
%% Device Farm Developer Guide.
%%
%% </li> </ul>
-module(aws_device_farm).

-export([create_device_pool/2,
         create_device_pool/3,
         create_instance_profile/2,
         create_instance_profile/3,
         create_network_profile/2,
         create_network_profile/3,
         create_project/2,
         create_project/3,
         create_remote_access_session/2,
         create_remote_access_session/3,
         create_test_grid_project/2,
         create_test_grid_project/3,
         create_test_grid_url/2,
         create_test_grid_url/3,
         create_upload/2,
         create_upload/3,
         create_v_p_c_e_configuration/2,
         create_v_p_c_e_configuration/3,
         delete_device_pool/2,
         delete_device_pool/3,
         delete_instance_profile/2,
         delete_instance_profile/3,
         delete_network_profile/2,
         delete_network_profile/3,
         delete_project/2,
         delete_project/3,
         delete_remote_access_session/2,
         delete_remote_access_session/3,
         delete_run/2,
         delete_run/3,
         delete_test_grid_project/2,
         delete_test_grid_project/3,
         delete_upload/2,
         delete_upload/3,
         delete_v_p_c_e_configuration/2,
         delete_v_p_c_e_configuration/3,
         get_account_settings/2,
         get_account_settings/3,
         get_device/2,
         get_device/3,
         get_device_instance/2,
         get_device_instance/3,
         get_device_pool/2,
         get_device_pool/3,
         get_device_pool_compatibility/2,
         get_device_pool_compatibility/3,
         get_instance_profile/2,
         get_instance_profile/3,
         get_job/2,
         get_job/3,
         get_network_profile/2,
         get_network_profile/3,
         get_offering_status/2,
         get_offering_status/3,
         get_project/2,
         get_project/3,
         get_remote_access_session/2,
         get_remote_access_session/3,
         get_run/2,
         get_run/3,
         get_suite/2,
         get_suite/3,
         get_test/2,
         get_test/3,
         get_test_grid_project/2,
         get_test_grid_project/3,
         get_test_grid_session/2,
         get_test_grid_session/3,
         get_upload/2,
         get_upload/3,
         get_v_p_c_e_configuration/2,
         get_v_p_c_e_configuration/3,
         install_to_remote_access_session/2,
         install_to_remote_access_session/3,
         list_artifacts/2,
         list_artifacts/3,
         list_device_instances/2,
         list_device_instances/3,
         list_device_pools/2,
         list_device_pools/3,
         list_devices/2,
         list_devices/3,
         list_instance_profiles/2,
         list_instance_profiles/3,
         list_jobs/2,
         list_jobs/3,
         list_network_profiles/2,
         list_network_profiles/3,
         list_offering_promotions/2,
         list_offering_promotions/3,
         list_offering_transactions/2,
         list_offering_transactions/3,
         list_offerings/2,
         list_offerings/3,
         list_projects/2,
         list_projects/3,
         list_remote_access_sessions/2,
         list_remote_access_sessions/3,
         list_runs/2,
         list_runs/3,
         list_samples/2,
         list_samples/3,
         list_suites/2,
         list_suites/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_test_grid_projects/2,
         list_test_grid_projects/3,
         list_test_grid_session_actions/2,
         list_test_grid_session_actions/3,
         list_test_grid_session_artifacts/2,
         list_test_grid_session_artifacts/3,
         list_test_grid_sessions/2,
         list_test_grid_sessions/3,
         list_tests/2,
         list_tests/3,
         list_unique_problems/2,
         list_unique_problems/3,
         list_uploads/2,
         list_uploads/3,
         list_v_p_c_e_configurations/2,
         list_v_p_c_e_configurations/3,
         purchase_offering/2,
         purchase_offering/3,
         renew_offering/2,
         renew_offering/3,
         schedule_run/2,
         schedule_run/3,
         stop_job/2,
         stop_job/3,
         stop_remote_access_session/2,
         stop_remote_access_session/3,
         stop_run/2,
         stop_run/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_device_instance/2,
         update_device_instance/3,
         update_device_pool/2,
         update_device_pool/3,
         update_instance_profile/2,
         update_instance_profile/3,
         update_network_profile/2,
         update_network_profile/3,
         update_project/2,
         update_project/3,
         update_test_grid_project/2,
         update_test_grid_project/3,
         update_upload/2,
         update_upload/3,
         update_v_p_c_e_configuration/2,
         update_v_p_c_e_configuration/3]).

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

%% @doc Creates a profile that can be applied to one or more private fleet
%% device instances.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates a network profile.
create_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_profile(Client, Input, []).
create_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkProfile">>, Input, Options).

%% @doc Creates a project.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Specifies and starts a remote access session.
create_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_remote_access_session(Client, Input, []).
create_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRemoteAccessSession">>, Input, Options).

%% @doc Creates a Selenium testing project.
%%
%% Projects are used to track `TestGridSession' instances.
create_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_test_grid_project(Client, Input, []).
create_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTestGridProject">>, Input, Options).

%% @doc Creates a signed, short-term URL that can be passed to a Selenium
%% `RemoteWebDriver' constructor.
create_test_grid_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_test_grid_url(Client, Input, []).
create_test_grid_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTestGridUrl">>, Input, Options).

%% @doc Uploads an app or test scripts.
create_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_upload(Client, Input, []).
create_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpload">>, Input, Options).

%% @doc Creates a configuration record in Device Farm for your Amazon Virtual
%% Private Cloud (VPC) endpoint.
create_v_p_c_e_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_v_p_c_e_configuration(Client, Input, []).
create_v_p_c_e_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVPCEConfiguration">>, Input, Options).

%% @doc Deletes a device pool given the pool ARN.
%%
%% Does not allow deletion of curated pools owned by the system.
delete_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_pool(Client, Input, []).
delete_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevicePool">>, Input, Options).

%% @doc Deletes a profile that can be applied to one or more private device
%% instances.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes a network profile.
delete_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_profile(Client, Input, []).
delete_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkProfile">>, Input, Options).

%% @doc Deletes an AWS Device Farm project, given the project ARN.
%%
%% Deleting this resource does not stop an in-progress run.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes a completed remote access session and its results.
delete_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remote_access_session(Client, Input, []).
delete_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemoteAccessSession">>, Input, Options).

%% @doc Deletes the run, given the run ARN.
%%
%% Deleting this resource does not stop an in-progress run.
delete_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_run(Client, Input, []).
delete_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRun">>, Input, Options).

%% @doc Deletes a Selenium testing project and all content generated under
%% it.
%%
%% You cannot undo this operation.
%%
%% You cannot delete a project if it has active sessions.
delete_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_test_grid_project(Client, Input, []).
delete_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTestGridProject">>, Input, Options).

%% @doc Deletes an upload given the upload ARN.
delete_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_upload(Client, Input, []).
delete_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUpload">>, Input, Options).

%% @doc Deletes a configuration for your Amazon Virtual Private Cloud (VPC)
%% endpoint.
delete_v_p_c_e_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_v_p_c_e_configuration(Client, Input, []).
delete_v_p_c_e_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVPCEConfiguration">>, Input, Options).

%% @doc Returns the number of unmetered iOS or unmetered Android devices that
%% have been purchased by the account.
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

%% @doc Returns information about a device instance that belongs to a private
%% device fleet.
get_device_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_instance(Client, Input, []).
get_device_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeviceInstance">>, Input, Options).

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

%% @doc Returns information about the specified instance profile.
get_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_profile(Client, Input, []).
get_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceProfile">>, Input, Options).

%% @doc Gets information about a job.
get_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job(Client, Input, []).
get_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJob">>, Input, Options).

%% @doc Returns information about a network profile.
get_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_profile(Client, Input, []).
get_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkProfile">>, Input, Options).

%% @doc Gets the current status and future status of all offerings purchased
%% by an AWS account.
%%
%% The response indicates how many offerings are currently available and the
%% offerings that will be available in the next period. The API returns a
%% `NotEligible' error if the user is not permitted to invoke the operation.
%% If you must be able to invoke this operation, contact
%% aws-devicefarm-support@amazon.com.
get_offering_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_offering_status(Client, Input, []).
get_offering_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOfferingStatus">>, Input, Options).

%% @doc Gets information about a project.
get_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_project(Client, Input, []).
get_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProject">>, Input, Options).

%% @doc Returns a link to a currently running remote access session.
get_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_remote_access_session(Client, Input, []).
get_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRemoteAccessSession">>, Input, Options).

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

%% @doc Retrieves information about a Selenium testing project.
get_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test_grid_project(Client, Input, []).
get_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTestGridProject">>, Input, Options).

%% @doc A session is an instance of a browser created through a
%% `RemoteWebDriver' with the URL from `CreateTestGridUrlResult$url'.
%%
%% You can use the following to look up sessions:
%%
%% <ul> <li> The session ARN (`GetTestGridSessionRequest$sessionArn').
%%
%% </li> <li> The project ARN and a session ID
%% (`GetTestGridSessionRequest$projectArn' and
%% `GetTestGridSessionRequest$sessionId').
%%
%% </li> </ul>
get_test_grid_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test_grid_session(Client, Input, []).
get_test_grid_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTestGridSession">>, Input, Options).

%% @doc Gets information about an upload.
get_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_upload(Client, Input, []).
get_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUpload">>, Input, Options).

%% @doc Returns information about the configuration settings for your Amazon
%% Virtual Private Cloud (VPC) endpoint.
get_v_p_c_e_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_v_p_c_e_configuration(Client, Input, []).
get_v_p_c_e_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVPCEConfiguration">>, Input, Options).

%% @doc Installs an application to the device in a remote access session.
%%
%% For Android applications, the file must be in .apk format. For iOS
%% applications, the file must be in .ipa format.
install_to_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    install_to_remote_access_session(Client, Input, []).
install_to_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InstallToRemoteAccessSession">>, Input, Options).

%% @doc Gets information about artifacts.
list_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_artifacts(Client, Input, []).
list_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Returns information about the private device instances associated
%% with one or more AWS accounts.
list_device_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_instances(Client, Input, []).
list_device_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceInstances">>, Input, Options).

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

%% @doc Returns information about all the instance profiles in an AWS
%% account.
list_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles(Client, Input, []).
list_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfiles">>, Input, Options).

%% @doc Gets information about jobs for a given test run.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Returns the list of available network profiles.
list_network_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_network_profiles(Client, Input, []).
list_network_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNetworkProfiles">>, Input, Options).

%% @doc Returns a list of offering promotions.
%%
%% Each offering promotion record contains the ID and description of the
%% promotion. The API returns a `NotEligible' error if the caller is not
%% permitted to invoke the operation. Contact
%% aws-devicefarm-support@amazon.com if you must be able to invoke this
%% operation.
list_offering_promotions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offering_promotions(Client, Input, []).
list_offering_promotions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferingPromotions">>, Input, Options).

%% @doc Returns a list of all historical purchases, renewals, and system
%% renewal transactions for an AWS account.
%%
%% The list is paginated and ordered by a descending timestamp (most recent
%% transactions are first). The API returns a `NotEligible' error if the user
%% is not permitted to invoke the operation. If you must be able to invoke
%% this operation, contact aws-devicefarm-support@amazon.com.
list_offering_transactions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offering_transactions(Client, Input, []).
list_offering_transactions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferingTransactions">>, Input, Options).

%% @doc Returns a list of products or offerings that the user can manage
%% through the API.
%%
%% Each offering record indicates the recurring price per unit and the
%% frequency for that offering. The API returns a `NotEligible' error if the
%% user is not permitted to invoke the operation. If you must be able to
%% invoke this operation, contact aws-devicefarm-support@amazon.com.
list_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offerings(Client, Input, []).
list_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferings">>, Input, Options).

%% @doc Gets information about projects.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Returns a list of all currently running remote access sessions.
list_remote_access_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_remote_access_sessions(Client, Input, []).
list_remote_access_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRemoteAccessSessions">>, Input, Options).

%% @doc Gets information about runs, given an AWS Device Farm project ARN.
list_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_runs(Client, Input, []).
list_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuns">>, Input, Options).

%% @doc Gets information about samples, given an AWS Device Farm job ARN.
list_samples(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_samples(Client, Input, []).
list_samples(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSamples">>, Input, Options).

%% @doc Gets information about test suites for a given job.
list_suites(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_suites(Client, Input, []).
list_suites(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSuites">>, Input, Options).

%% @doc List the tags for an AWS Device Farm resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Gets a list of all Selenium testing projects in your account.
list_test_grid_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_projects(Client, Input, []).
list_test_grid_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridProjects">>, Input, Options).

%% @doc Returns a list of the actions taken in a `TestGridSession'.
list_test_grid_session_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_session_actions(Client, Input, []).
list_test_grid_session_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessionActions">>, Input, Options).

%% @doc Retrieves a list of artifacts created during the session.
list_test_grid_session_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_session_artifacts(Client, Input, []).
list_test_grid_session_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessionArtifacts">>, Input, Options).

%% @doc Retrieves a list of sessions for a `TestGridProject'.
list_test_grid_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_sessions(Client, Input, []).
list_test_grid_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessions">>, Input, Options).

%% @doc Gets information about tests in a given test suite.
list_tests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tests(Client, Input, []).
list_tests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTests">>, Input, Options).

%% @doc Gets information about unique problems, such as exceptions or
%% crashes.
%%
%% Unique problems are defined as a single instance of an error across a run,
%% job, or suite. For example, if a call in your application consistently
%% raises an exception (`OutOfBoundsException in MyActivity.java:386'),
%% `ListUniqueProblems' returns a single entry instead of many individual
%% entries for that exception.
list_unique_problems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_unique_problems(Client, Input, []).
list_unique_problems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUniqueProblems">>, Input, Options).

%% @doc Gets information about uploads, given an AWS Device Farm project ARN.
list_uploads(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_uploads(Client, Input, []).
list_uploads(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUploads">>, Input, Options).

%% @doc Returns information about all Amazon Virtual Private Cloud (VPC)
%% endpoint configurations in the AWS account.
list_v_p_c_e_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_v_p_c_e_configurations(Client, Input, []).
list_v_p_c_e_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVPCEConfigurations">>, Input, Options).

%% @doc Immediately purchases offerings for an AWS account.
%%
%% Offerings renew with the latest total purchased quantity for an offering,
%% unless the renewal was overridden. The API returns a `NotEligible' error
%% if the user is not permitted to invoke the operation. If you must be able
%% to invoke this operation, contact aws-devicefarm-support@amazon.com.
purchase_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_offering(Client, Input, []).
purchase_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseOffering">>, Input, Options).

%% @doc Explicitly sets the quantity of devices to renew for an offering,
%% starting from the `effectiveDate' of the next period.
%%
%% The API returns a `NotEligible' error if the user is not permitted to
%% invoke the operation. If you must be able to invoke this operation,
%% contact aws-devicefarm-support@amazon.com.
renew_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_offering(Client, Input, []).
renew_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewOffering">>, Input, Options).

%% @doc Schedules a run.
schedule_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    schedule_run(Client, Input, []).
schedule_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScheduleRun">>, Input, Options).

%% @doc Initiates a stop request for the current job.
%%
%% AWS Device Farm immediately stops the job on the device where tests have
%% not started. You are not billed for this device. On the device where tests
%% have started, setup suite and teardown suite tests run to completion on
%% the device. You are billed for setup, teardown, and any tests that were in
%% progress or already completed.
stop_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_job(Client, Input, []).
stop_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopJob">>, Input, Options).

%% @doc Ends a specified remote access session.
stop_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_remote_access_session(Client, Input, []).
stop_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRemoteAccessSession">>, Input, Options).

%% @doc Initiates a stop request for the current test run.
%%
%% AWS Device Farm immediately stops the run on devices where tests have not
%% started. You are not billed for these devices. On devices where tests have
%% started executing, setup suite and teardown suite tests run to completion
%% on those devices. You are billed for setup, teardown, and any tests that
%% were in progress or already completed.
stop_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_run(Client, Input, []).
stop_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRun">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are also deleted.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes the specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates information about a private device instance.
update_device_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_instance(Client, Input, []).
update_device_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceInstance">>, Input, Options).

%% @doc Modifies the name, description, and rules in a device pool given the
%% attributes and the pool ARN.
%%
%% Rule updates are all-or-nothing, meaning they can only be updated as a
%% whole (or not at all).
update_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_pool(Client, Input, []).
update_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevicePool">>, Input, Options).

%% @doc Updates information about an existing private device instance
%% profile.
update_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_profile(Client, Input, []).
update_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceProfile">>, Input, Options).

%% @doc Updates the network profile.
update_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_network_profile(Client, Input, []).
update_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNetworkProfile">>, Input, Options).

%% @doc Modifies the specified project name, given the project ARN and a new
%% name.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Change details of a project.
update_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_test_grid_project(Client, Input, []).
update_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTestGridProject">>, Input, Options).

%% @doc Updates an uploaded test spec.
update_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_upload(Client, Input, []).
update_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUpload">>, Input, Options).

%% @doc Updates information about an Amazon Virtual Private Cloud (VPC)
%% endpoint configuration.
update_v_p_c_e_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_v_p_c_e_configuration(Client, Input, []).
update_v_p_c_e_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVPCEConfiguration">>, Input, Options).

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
    Client1 = Client#{service => <<"devicefarm">>},
    Host = build_host(<<"devicefarm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"DeviceFarm_20150623.", Action/binary>>}
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
