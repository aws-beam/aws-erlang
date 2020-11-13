%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Snow Family is a petabyte-scale data transport solution that uses
%% secure devices to transfer large amounts of data between your on-premises
%% data centers and Amazon Simple Storage Service (Amazon S3).
%%
%% The Snow commands described here provide access to the same functionality
%% that is available in the AWS Snow Family Management Console, which enables
%% you to create and manage jobs for a Snow device. To transfer data locally
%% with a Snow device, you'll need to use the Snowball Edge client or the
%% Amazon S3 API Interface for Snowball or AWS OpsHub for Snow Family. For
%% more information, see the User Guide.
-module(aws_snowball).

-export([cancel_cluster/2,
         cancel_cluster/3,
         cancel_job/2,
         cancel_job/3,
         create_address/2,
         create_address/3,
         create_cluster/2,
         create_cluster/3,
         create_job/2,
         create_job/3,
         create_return_shipping_label/2,
         create_return_shipping_label/3,
         describe_address/2,
         describe_address/3,
         describe_addresses/2,
         describe_addresses/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_job/2,
         describe_job/3,
         describe_return_shipping_label/2,
         describe_return_shipping_label/3,
         get_job_manifest/2,
         get_job_manifest/3,
         get_job_unlock_code/2,
         get_job_unlock_code/3,
         get_snowball_usage/2,
         get_snowball_usage/3,
         get_software_updates/2,
         get_software_updates/3,
         list_cluster_jobs/2,
         list_cluster_jobs/3,
         list_clusters/2,
         list_clusters/3,
         list_compatible_images/2,
         list_compatible_images/3,
         list_jobs/2,
         list_jobs/3,
         update_cluster/2,
         update_cluster/3,
         update_job/2,
         update_job/3,
         update_job_shipment_state/2,
         update_job_shipment_state/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a cluster job.
%%
%% You can only cancel a cluster job while it's in the `AwaitingQuorum'
%% status. You'll have at least an hour after creating a cluster job to
%% cancel it.
cancel_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_cluster(Client, Input, []).
cancel_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCluster">>, Input, Options).

%% @doc Cancels the specified job.
%%
%% You can only cancel a job before its `JobState' value changes to
%% `PreparingAppliance'. Requesting the `ListJobs' or `DescribeJob' action
%% returns a job's `JobState' as part of the response element data returned.
cancel_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelJob">>, Input, Options).

%% @doc Creates an address for a Snow device to be shipped to.
%%
%% In most regions, addresses are validated at the time of creation. The
%% address you provide must be located within the serviceable area of your
%% region. If the address is invalid or unsupported, then an exception is
%% thrown.
create_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address(Client, Input, []).
create_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddress">>, Input, Options).

%% @doc Creates an empty cluster.
%%
%% Each cluster supports five nodes. You use the `CreateJob' action
%% separately to create the jobs for each of these nodes. The cluster does
%% not ship until these five node jobs have been created.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a job to import or export data between Amazon S3 and your
%% on-premises data center.
%%
%% Your AWS account must have the right trust policies and permissions in
%% place to create a job for a Snow device. If you're creating a job for a
%% node in a cluster, you only need to provide the `clusterId' value; the
%% other job attributes are inherited from the cluster.
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc Creates a shipping label that will be used to return the Snow device
%% to AWS.
create_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_return_shipping_label(Client, Input, []).
create_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReturnShippingLabel">>, Input, Options).

%% @doc Takes an `AddressId' and returns specific details about that address
%% in the form of an `Address' object.
describe_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_address(Client, Input, []).
describe_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddress">>, Input, Options).

%% @doc Returns a specified number of `ADDRESS' objects.
%%
%% Calling this API in one of the US regions will return addresses from the
%% list of all addresses associated with this account in all US regions.
describe_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_addresses(Client, Input, []).
describe_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddresses">>, Input, Options).

%% @doc Returns information about a specific cluster including shipping
%% information, cluster status, and other important metadata.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc Returns information about a specific job including shipping
%% information, job status, and other important metadata.
describe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job(Client, Input, []).
describe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJob">>, Input, Options).

%% @doc Information on the shipping label of a Snow device that is being
%% returned to AWS.
describe_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_return_shipping_label(Client, Input, []).
describe_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReturnShippingLabel">>, Input, Options).

%% @doc Returns a link to an Amazon S3 presigned URL for the manifest file
%% associated with the specified `JobId' value.
%%
%% You can access the manifest file for up to 60 minutes after this request
%% has been made. To access the manifest file after 60 minutes have passed,
%% you'll have to make another call to the `GetJobManifest' action.
%%
%% The manifest is an encrypted file that you can download after your job
%% enters the `WithCustomer' status. The manifest is decrypted by using the
%% `UnlockCode' code value, when you pass both values to the Snow device
%% through the Snowball client when the client is started for the first time.
%%
%% As a best practice, we recommend that you don't save a copy of an
%% `UnlockCode' value in the same location as the manifest file for that job.
%% Saving these separately helps prevent unauthorized parties from gaining
%% access to the Snow device associated with that job.
%%
%% The credentials of a given job, including its manifest file and unlock
%% code, expire 90 days after the job is created.
get_job_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_manifest(Client, Input, []).
get_job_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobManifest">>, Input, Options).

%% @doc Returns the `UnlockCode' code value for the specified job.
%%
%% A particular `UnlockCode' value can be accessed for up to 90 days after
%% the associated job has been created.
%%
%% The `UnlockCode' value is a 29-character code with 25 alphanumeric
%% characters and 4 hyphens. This code is used to decrypt the manifest file
%% when it is passed along with the manifest to the Snow device through the
%% Snowball client when the client is started for the first time.
%%
%% As a best practice, we recommend that you don't save a copy of the
%% `UnlockCode' in the same location as the manifest file for that job.
%% Saving these separately helps prevent unauthorized parties from gaining
%% access to the Snow device associated with that job.
get_job_unlock_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_unlock_code(Client, Input, []).
get_job_unlock_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobUnlockCode">>, Input, Options).

%% @doc Returns information about the Snow Family service limit for your
%% account, and also the number of Snow devices your account has in use.
%%
%% The default service limit for the number of Snow devices that you can have
%% at one time is 1. If you want to increase your service limit, contact AWS
%% Support.
get_snowball_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snowball_usage(Client, Input, []).
get_snowball_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnowballUsage">>, Input, Options).

%% @doc Returns an Amazon S3 presigned URL for an update file associated with
%% a specified `JobId'.
get_software_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_software_updates(Client, Input, []).
get_software_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSoftwareUpdates">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified length.
%%
%% Each `JobListEntry' object is for a job in the specified cluster and
%% contains a job's state, a job's ID, and other information.
list_cluster_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cluster_jobs(Client, Input, []).
list_cluster_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusterJobs">>, Input, Options).

%% @doc Returns an array of `ClusterListEntry' objects of the specified
%% length.
%%
%% Each `ClusterListEntry' object contains a cluster's state, a cluster's ID,
%% and other important status information.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc This action returns a list of the different Amazon EC2 Amazon Machine
%% Images (AMIs) that are owned by your AWS account that would be supported
%% for use on a Snow device.
%%
%% Currently, supported AMIs are based on the CentOS 7 (x86_64) - with
%% Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial
%% (HVM) images, available on the AWS Marketplace.
list_compatible_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compatible_images(Client, Input, []).
list_compatible_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCompatibleImages">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified length.
%%
%% Each `JobListEntry' object contains a job's state, a job's ID, and a value
%% that indicates whether the job is a job part, in the case of export jobs.
%% Calling this API action in one of the US regions will return jobs from the
%% list of all jobs associated with this account in all US regions.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc While a cluster's `ClusterState' value is in the `AwaitingQuorum'
%% state, you can update some of the information associated with a cluster.
%%
%% Once the cluster changes to a different job state, usually 60 minutes
%% after the cluster being created, this action is no longer available.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc While a job's `JobState' value is `New', you can update some of the
%% information associated with a job.
%%
%% Once the job changes to a different job state, usually within 60 minutes
%% of the job being created, this action is no longer available.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).
update_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJob">>, Input, Options).

%% @doc Updates the state when a the shipment states changes to a different
%% state.
update_job_shipment_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job_shipment_state(Client, Input, []).
update_job_shipment_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJobShipmentState">>, Input, Options).

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
    Client1 = Client#{service => <<"snowball">>},
    Host = build_host(<<"snowball">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSIESnowballJobManagementService.", Action/binary>>}
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
