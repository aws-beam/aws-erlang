%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Snow Family provides a petabyte-scale data
%% transport solution that uses
%% secure devices to transfer large amounts of data between your on-premises
%% data centers and
%% Amazon Simple Storage Service (Amazon S3).
%%
%% The Snow Family commands described here provide access to the same
%% functionality that is available in the Amazon Web Services Snow Family
%% Management Console, which enables you to create
%% and manage jobs for a Snow Family device. To transfer data locally with a
%% Snow Family device,
%% you'll need to use the Snowball Edge client or the Amazon S3 API
%% Interface for Snowball or OpsHub for Snow Family. For more information,
%% see the User Guide:
%% https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html.
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
         create_long_term_pricing/2,
         create_long_term_pricing/3,
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
         list_long_term_pricing/2,
         list_long_term_pricing/3,
         list_pickup_locations/2,
         list_pickup_locations/3,
         list_service_versions/2,
         list_service_versions/3,
         update_cluster/2,
         update_cluster/3,
         update_job/2,
         update_job/3,
         update_job_shipment_state/2,
         update_job_shipment_state/3,
         update_long_term_pricing/2,
         update_long_term_pricing/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a cluster job.
%%
%% You can only cancel a cluster job while it's in the
%% `AwaitingQuorum' status. You'll have at least an hour after
%% creating a cluster
%% job to cancel it.
cancel_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_cluster(Client, Input, []).
cancel_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCluster">>, Input, Options).

%% @doc Cancels the specified job.
%%
%% You can only cancel a job before its `JobState'
%% value changes to `PreparingAppliance'. Requesting the `ListJobs'
%% or
%% `DescribeJob' action returns a job's `JobState' as part of the
%% response element data returned.
cancel_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelJob">>, Input, Options).

%% @doc Creates an address for a Snow device to be shipped to.
%%
%% In most regions,
%% addresses are validated at the time of creation. The address you provide
%% must be located
%% within the serviceable area of your region. If the address is invalid or
%% unsupported, then an
%% exception is thrown. If providing an address as a JSON file through the
%% `cli-input-json' option, include the full file path. For example,
%% `--cli-input-json file://create-address.json'.
create_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address(Client, Input, []).
create_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddress">>, Input, Options).

%% @doc Creates an empty cluster.
%%
%% Each cluster supports five nodes. You use the `CreateJob' action
%% separately to create the jobs for each of these nodes. The
%% cluster does not ship until these five node jobs have been created.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a job to import or export data between Amazon S3 and your
%% on-premises data
%% center.
%%
%% Your Amazon Web Services account must have the right trust policies and
%% permissions in
%% place to create a job for a Snow device. If you're creating a job for
%% a node in a cluster, you
%% only need to provide the `clusterId' value; the other job attributes
%% are inherited
%% from the cluster.
%%
%% Only the Snowball; Edge device type is supported when ordering clustered
%% jobs.
%%
%% The device capacity is optional.
%%
%% Availability of device types differ by Amazon Web Services Region. For
%% more information
%% about Region availability, see Amazon Web Services Regional Services:
%% https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&amp;loc=4.
%%
%% == Snow Family devices and their capacities. ==
%%
%% Device type: SNC1_SSD
%%
%% Capacity: T14
%%
%% Description: Snowcone
%%
%% Device type: SNC1_HDD
%%
%% Capacity: T8
%%
%% Description: Snowcone
%%
%% Device type: EDGE_S
%%
%% Capacity: T98
%%
%% Description: Snowball Edge Storage Optimized for data transfer only
%%
%% Device type: EDGE_CG
%%
%% Capacity: T42
%%
%% Description: Snowball Edge Compute Optimized with GPU
%%
%% Device type: EDGE_C
%%
%% Capacity: T42
%%
%% Description: Snowball Edge Compute Optimized without GPU
%%
%% Device type: EDGE
%%
%% Capacity: T100
%%
%% Description: Snowball Edge Storage Optimized with EC2 Compute
%%
%% This device is replaced with T98.
%%
%% Device type: STANDARD
%%
%% Capacity: T50
%%
%% Description: Original Snowball device
%%
%% This device is only available in the Ningxia, Beijing, and Singapore
%% Amazon Web Services Region
%%
%% Device type: STANDARD
%%
%% Capacity: T80
%%
%% Description: Original Snowball device
%%
%% This device is only available in the Ningxia, Beijing, and Singapore
%% Amazon Web Services Region.
%%
%% Snow Family device type: RACK_5U_C
%%
%% Capacity: T13
%%
%% Description: Snowblade.
%%
%% Device type: V3_5S
%%
%% Capacity: T240
%%
%% Description: Snowball Edge Storage Optimized 210TB
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc Creates a job with the long-term usage option for a device.
%%
%% The long-term usage is a
%% 1-year or 3-year long-term pricing type for the device. You are billed
%% upfront, and Amazon Web Services provides discounts for long-term pricing.
create_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_long_term_pricing(Client, Input, []).
create_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLongTermPricing">>, Input, Options).

%% @doc Creates a shipping label that will be used to return the Snow device
%% to Amazon Web Services.
create_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_return_shipping_label(Client, Input, []).
create_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReturnShippingLabel">>, Input, Options).

%% @doc Takes an `AddressId' and returns specific details about that
%% address in the
%% form of an `Address' object.
describe_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_address(Client, Input, []).
describe_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddress">>, Input, Options).

%% @doc Returns a specified number of `ADDRESS' objects.
%%
%% Calling this API in one of
%% the US regions will return addresses from the list of all addresses
%% associated with this
%% account in all US regions.
describe_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_addresses(Client, Input, []).
describe_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddresses">>, Input, Options).

%% @doc Returns information about a specific cluster including shipping
%% information, cluster
%% status, and other important metadata.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc Returns information about a specific job including shipping
%% information, job status,
%% and other important metadata.
describe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job(Client, Input, []).
describe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJob">>, Input, Options).

%% @doc Information on the shipping label of a Snow device that is being
%% returned to Amazon Web Services.
describe_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_return_shipping_label(Client, Input, []).
describe_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReturnShippingLabel">>, Input, Options).

%% @doc Returns a link to an Amazon S3 presigned URL for the manifest file
%% associated with the
%% specified `JobId' value.
%%
%% You can access the manifest file for up to 60 minutes
%% after this request has been made. To access the manifest file after 60
%% minutes have passed,
%% you'll have to make another call to the `GetJobManifest' action.
%%
%% The manifest is an encrypted file that you can download after your job
%% enters the
%% `WithCustomer' status. This is the only valid status for calling this
%% API as the
%% manifest and `UnlockCode' code value are used for securing your device
%% and should
%% only be used when you have the device. The manifest is decrypted by using
%% the
%% `UnlockCode' code value, when you pass both values to the Snow device
%% through the
%% Snowball client when the client is started for the first time.
%%
%% As a best practice, we recommend that you don't save a copy of an
%% `UnlockCode' value in the same location as the manifest file for that
%% job. Saving
%% these separately helps prevent unauthorized parties from gaining access to
%% the Snow device
%% associated with that job.
%%
%% The credentials of a given job, including its manifest file and unlock
%% code, expire 360
%% days after the job is created.
get_job_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_manifest(Client, Input, []).
get_job_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobManifest">>, Input, Options).

%% @doc Returns the `UnlockCode' code value for the specified job.
%%
%% A particular
%% `UnlockCode' value can be accessed for up to 360 days after the
%% associated job
%% has been created.
%%
%% The `UnlockCode' value is a 29-character code with 25 alphanumeric
%% characters and 4 hyphens. This code is used to decrypt the manifest file
%% when it is passed
%% along with the manifest to the Snow device through the Snowball client
%% when the client is
%% started for the first time. The only valid status for calling this API is
%% `WithCustomer' as the manifest and `Unlock' code values are used
%% for
%% securing your device and should only be used when you have the device.
%%
%% As a best practice, we recommend that you don't save a copy of the
%% `UnlockCode' in the same location as the manifest file for that job.
%% Saving these
%% separately helps prevent unauthorized parties from gaining access to the
%% Snow device
%% associated with that job.
get_job_unlock_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_unlock_code(Client, Input, []).
get_job_unlock_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobUnlockCode">>, Input, Options).

%% @doc Returns information about the Snow Family service limit for your
%% account, and also the
%% number of Snow devices your account has in use.
%%
%% The default service limit for the number of Snow devices that you can have
%% at one time
%% is 1. If you want to increase your service limit, contact Amazon Web
%% Services Support.
get_snowball_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snowball_usage(Client, Input, []).
get_snowball_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnowballUsage">>, Input, Options).

%% @doc Returns an Amazon S3 presigned URL for an update file associated with
%% a specified
%% `JobId'.
get_software_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_software_updates(Client, Input, []).
get_software_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSoftwareUpdates">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified
%% length.
%%
%% Each
%% `JobListEntry' object is for a job in the specified cluster and
%% contains a job's
%% state, a job's ID, and other information.
list_cluster_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cluster_jobs(Client, Input, []).
list_cluster_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusterJobs">>, Input, Options).

%% @doc Returns an array of `ClusterListEntry' objects of the specified
%% length.
%%
%% Each
%% `ClusterListEntry' object contains a cluster's state, a
%% cluster's ID, and other
%% important status information.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc This action returns a list of the different Amazon EC2-compatible
%% Amazon Machine Images (AMIs)
%% that are owned by your Amazon Web Services accountthat would be supported
%% for use on a Snow
%% device.
%%
%% Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04
%% LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the
%% Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images
%% are no longer supported in the Market, but still supported for use on
%% devices through Amazon EC2 VM Import/Export and running locally in AMIs.
list_compatible_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compatible_images(Client, Input, []).
list_compatible_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCompatibleImages">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified
%% length.
%%
%% Each
%% `JobListEntry' object contains a job's state, a job's ID, and
%% a value that
%% indicates whether the job is a job part, in the case of export jobs.
%% Calling this API action
%% in one of the US regions will return jobs from the list of all jobs
%% associated with this
%% account in all US regions.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Lists all long-term pricing types.
list_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_long_term_pricing(Client, Input, []).
list_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLongTermPricing">>, Input, Options).

%% @doc A list of locations from which the customer can choose to pickup a
%% device.
list_pickup_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pickup_locations(Client, Input, []).
list_pickup_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPickupLocations">>, Input, Options).

%% @doc Lists all supported versions for Snow on-device services.
%%
%% Returns an
%% array of `ServiceVersion' object containing the supported versions for
%% a particular service.
list_service_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_versions(Client, Input, []).
list_service_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceVersions">>, Input, Options).

%% @doc While a cluster's `ClusterState' value is in the
%% `AwaitingQuorum'
%% state, you can update some of the information associated with a cluster.
%%
%% Once the cluster
%% changes to a different job state, usually 60 minutes after the cluster
%% being created, this
%% action is no longer available.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc While a job's `JobState' value is `New', you can update
%% some of
%% the information associated with a job.
%%
%% Once the job changes to a different job state, usually
%% within 60 minutes of the job being created, this action is no longer
%% available.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).
update_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJob">>, Input, Options).

%% @doc Updates the state when a shipment state changes to a different state.
update_job_shipment_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job_shipment_state(Client, Input, []).
update_job_shipment_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJobShipmentState">>, Input, Options).

%% @doc Updates the long-term pricing type.
update_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_long_term_pricing(Client, Input, []).
update_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLongTermPricing">>, Input, Options).

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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
