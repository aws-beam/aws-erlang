%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Storage Gateway Service</fullname>
%%
%% AWS Storage Gateway is the service that connects an on-premises software
%% appliance with cloud-based storage to provide seamless and secure
%% integration between an organization's on-premises IT environment and AWS's
%% storage infrastructure. The service enables you to securely upload data to
%% the AWS cloud for cost effective backup and rapid disaster recovery.
%%
%% Use the following links to get started using the <i>AWS Storage Gateway
%% Service API Reference</i>:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayHTTPRequestsHeaders.html">AWS
%% Storage Gateway Required Request Headers</a>: Describes the required
%% headers that you must send with every POST request to AWS Storage
%% Gateway.</li> <li> <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewaySigningRequests.html">Signing
%% Requests</a>: AWS Storage Gateway requires that you authenticate every
%% request you send; this topic describes how sign such a request.</li> <li>
%% <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/APIErrorResponses.html">Error
%% Responses</a>: Provides reference information about AWS Storage Gateway
%% errors.</li> <li> <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPIOperations.html">Operations
%% in AWS Storage Gateway</a>: Contains detailed descriptions of all AWS
%% Storage Gateway operations, their request parameters, response elements,
%% possible errors, and examples of requests and responses.</li> <li> <a
%% href="http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html">AWS
%% Storage Gateway Regions and Endpoints</a>: Provides a list of each of the
%% regions and endpoints available for use with AWS Storage Gateway. </li>
%% </ul>
-module(aws_storage_gateway).

-export([activate_gateway/2,
         activate_gateway/3,
         add_cache/2,
         add_cache/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         add_upload_buffer/2,
         add_upload_buffer/3,
         add_working_storage/2,
         add_working_storage/3,
         cancel_archival/2,
         cancel_archival/3,
         cancel_retrieval/2,
         cancel_retrieval/3,
         create_cached_iscsi_volume/2,
         create_cached_iscsi_volume/3,
         create_snapshot/2,
         create_snapshot/3,
         create_snapshot_from_volume_recovery_point/2,
         create_snapshot_from_volume_recovery_point/3,
         create_stored_iscsi_volume/2,
         create_stored_iscsi_volume/3,
         create_tapes/2,
         create_tapes/3,
         delete_bandwidth_rate_limit/2,
         delete_bandwidth_rate_limit/3,
         delete_chap_credentials/2,
         delete_chap_credentials/3,
         delete_gateway/2,
         delete_gateway/3,
         delete_snapshot_schedule/2,
         delete_snapshot_schedule/3,
         delete_tape/2,
         delete_tape/3,
         delete_tape_archive/2,
         delete_tape_archive/3,
         delete_volume/2,
         delete_volume/3,
         describe_bandwidth_rate_limit/2,
         describe_bandwidth_rate_limit/3,
         describe_cache/2,
         describe_cache/3,
         describe_cached_iscsi_volumes/2,
         describe_cached_iscsi_volumes/3,
         describe_chap_credentials/2,
         describe_chap_credentials/3,
         describe_gateway_information/2,
         describe_gateway_information/3,
         describe_maintenance_start_time/2,
         describe_maintenance_start_time/3,
         describe_snapshot_schedule/2,
         describe_snapshot_schedule/3,
         describe_stored_iscsi_volumes/2,
         describe_stored_iscsi_volumes/3,
         describe_tape_archives/2,
         describe_tape_archives/3,
         describe_tape_recovery_points/2,
         describe_tape_recovery_points/3,
         describe_tapes/2,
         describe_tapes/3,
         describe_upload_buffer/2,
         describe_upload_buffer/3,
         describe_vtl_devices/2,
         describe_vtl_devices/3,
         describe_working_storage/2,
         describe_working_storage/3,
         disable_gateway/2,
         disable_gateway/3,
         list_gateways/2,
         list_gateways/3,
         list_local_disks/2,
         list_local_disks/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_volume_initiators/2,
         list_volume_initiators/3,
         list_volume_recovery_points/2,
         list_volume_recovery_points/3,
         list_volumes/2,
         list_volumes/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_cache/2,
         reset_cache/3,
         retrieve_tape_archive/2,
         retrieve_tape_archive/3,
         retrieve_tape_recovery_point/2,
         retrieve_tape_recovery_point/3,
         shutdown_gateway/2,
         shutdown_gateway/3,
         start_gateway/2,
         start_gateway/3,
         update_bandwidth_rate_limit/2,
         update_bandwidth_rate_limit/3,
         update_chap_credentials/2,
         update_chap_credentials/3,
         update_gateway_information/2,
         update_gateway_information/3,
         update_gateway_software_now/2,
         update_gateway_software_now/3,
         update_maintenance_start_time/2,
         update_maintenance_start_time/3,
         update_snapshot_schedule/2,
         update_snapshot_schedule/3,
         update_vtl_device_type/2,
         update_vtl_device_type/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation activates the gateway you previously deployed on your
%% host. For more information, see <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedActivateGateway-common.html">
%% Activate the AWS Storage Gateway</a>. In the activation process, you
%% specify information such as the region you want to use for storing
%% snapshots, the time zone for scheduled snapshots the gateway snapshot
%% schedule window, an activation key, and a name for your gateway. The
%% activation process also associates your gateway with your account; for
%% more information, see <a>UpdateGatewayInformation</a>.
%%
%% <note>You must turn on the gateway VM before you can activate your
%% gateway.</note>
activate_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_gateway(Client, Input, []).
activate_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateGateway">>, Input, Options).

%% @doc This operation configures one or more gateway local disks as cache
%% for a cached-volume gateway. This operation is supported only for the
%% gateway-cached volume architecture (see <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">Storage
%% Gateway Concepts</a>).
%%
%% In the request, you specify the gateway Amazon Resource Name (ARN) to
%% which you want to add cache, and one or more disk IDs that you want to
%% configure as cache.
add_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_cache(Client, Input, []).
add_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCache">>, Input, Options).

%% @doc This operation adds one or more tags to the specified resource. You
%% use tags to add metadata to resources, which you can use to categorize
%% these resources. For example, you can categorize resources by purpose,
%% owner, environment, or team. Each tag consists of a key and a value, which
%% you define. You can add tags to the following AWS Storage Gateway
%% resources:
%%
%% <ul> <li>Storage gateways of all types
%%
%% </li> </ul> <ul> <li>Storage Volumes
%%
%% </li> </ul> <ul> <li>Virtual Tapes
%%
%% </li> </ul> You can create a maximum of 10 tags for each resource. Virtual
%% tapes and storage volumes that are recovered to a new gateway maintain
%% their tags.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc This operation configures one or more gateway local disks as upload
%% buffer for a specified gateway. This operation is supported for both the
%% gateway-stored and gateway-cached volume architectures.
%%
%% In the request, you specify the gateway Amazon Resource Name (ARN) to
%% which you want to add upload buffer, and one or more disk IDs that you
%% want to configure as upload buffer.
add_upload_buffer(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_upload_buffer(Client, Input, []).
add_upload_buffer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddUploadBuffer">>, Input, Options).

%% @doc This operation configures one or more gateway local disks as working
%% storage for a gateway. This operation is supported only for the
%% gateway-stored volume architecture. This operation is deprecated method in
%% cached-volumes API version (20120630). Use AddUploadBuffer instead.
%%
%% <note>Working storage is also referred to as upload buffer. You can also
%% use the <a>AddUploadBuffer</a> operation to add upload buffer to a
%% stored-volume gateway.
%%
%% </note> In the request, you specify the gateway Amazon Resource Name (ARN)
%% to which you want to add working storage, and one or more disk IDs that
%% you want to configure as working storage.
add_working_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_working_storage(Client, Input, []).
add_working_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddWorkingStorage">>, Input, Options).

%% @doc Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
%% after the archiving process is initiated.
cancel_archival(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_archival(Client, Input, []).
cancel_archival(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelArchival">>, Input, Options).

%% @doc Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
%% to a gateway after the retrieval process is initiated. The virtual tape is
%% returned to the VTS.
cancel_retrieval(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_retrieval(Client, Input, []).
cancel_retrieval(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelRetrieval">>, Input, Options).

%% @doc This operation creates a cached volume on a specified cached gateway.
%% This operation is supported only for the gateway-cached volume
%% architecture.
%%
%% <note>Cache storage must be allocated to the gateway before you can create
%% a cached volume. Use the <a>AddCache</a> operation to add cache storage to
%% a gateway. </note> In the request, you must specify the gateway, size of
%% the volume in bytes, the iSCSI target name, an IP address on which to
%% expose the target, and a unique client token. In response, AWS Storage
%% Gateway creates the volume and returns information about it such as the
%% volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
%% initiators can use to connect to the volume target.
create_cached_iscsi_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cached_iscsi_volume(Client, Input, []).
create_cached_iscsi_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCachediSCSIVolume">>, Input, Options).

%% @doc This operation initiates a snapshot of a volume.
%%
%% AWS Storage Gateway provides the ability to back up point-in-time
%% snapshots of your data to Amazon Simple Storage (S3) for durable off-site
%% recovery, as well as import the data to an Amazon Elastic Block Store
%% (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots
%% of your gateway volume on a scheduled or ad-hoc basis. This API enables
%% you to take ad-hoc snapshot. For more information, see <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working
%% With Snapshots in the AWS Storage Gateway Console</a>.
%%
%% In the CreateSnapshot request you identify the volume by providing its
%% Amazon Resource Name (ARN). You must also provide description for the
%% snapshot. When AWS Storage Gateway takes the snapshot of specified volume,
%% the snapshot and description appears in the AWS Storage Gateway Console.
%% In response, AWS Storage Gateway returns you a snapshot ID. You can use
%% this snapshot ID to check the snapshot progress or later use it when you
%% want to create a volume from a snapshot.
%%
%% <note>To list or delete a snapshot, you must use the Amazon EC2 API. For
%% more information, see DescribeSnapshots or DeleteSnapshot in the <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html">EC2
%% API reference</a>.</note>
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc This operation initiates a snapshot of a gateway from a volume
%% recovery point. This operation is supported only for the gateway-cached
%% volume architecture (see ).
%%
%% A volume recovery point is a point in time at which all data of the volume
%% is consistent and from which you can create a snapshot. To get a list of
%% volume recovery point for gateway-cached volumes, use
%% <a>ListVolumeRecoveryPoints</a>.
%%
%% In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you
%% identify the volume by providing its Amazon Resource Name (ARN). You must
%% also provide a description for the snapshot. When AWS Storage Gateway
%% takes a snapshot of the specified volume, the snapshot and its description
%% appear in the AWS Storage Gateway console. In response, AWS Storage
%% Gateway returns you a snapshot ID. You can use this snapshot ID to check
%% the snapshot progress or later use it when you want to create a volume
%% from a snapshot.
%%
%% <note> To list or delete a snapshot, you must use the Amazon EC2 API. For
%% more information, in <i>Amazon Elastic Compute Cloud API Reference</i>.
%%
%% </note>
create_snapshot_from_volume_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_from_volume_recovery_point(Client, Input, []).
create_snapshot_from_volume_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotFromVolumeRecoveryPoint">>, Input, Options).

%% @doc This operation creates a volume on a specified gateway. This
%% operation is supported only for the gateway-stored volume architecture.
%%
%% The size of the volume to create is inferred from the disk size. You can
%% choose to preserve existing data on the disk, create volume from an
%% existing snapshot, or create an empty volume. If you choose to create an
%% empty gateway volume, then any existing data on the disk is erased.
%%
%% In the request you must specify the gateway and the disk information on
%% which you are creating the volume. In response, AWS Storage Gateway
%% creates the volume and returns volume information such as the volume
%% Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
%% initiators can use to connect to the volume target.
create_stored_iscsi_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stored_iscsi_volume(Client, Input, []).
create_stored_iscsi_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorediSCSIVolume">>, Input, Options).

%% @doc Creates one or more virtual tapes. You write data to the virtual
%% tapes and then archive the tapes.
%%
%% <note>Cache storage must be allocated to the gateway before you can create
%% virtual tapes. Use the <a>AddCache</a> operation to add cache storage to a
%% gateway. </note>
create_tapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tapes(Client, Input, []).
create_tapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTapes">>, Input, Options).

%% @doc This operation deletes the bandwidth rate limits of a gateway. You
%% can delete either the upload and download bandwidth rate limit, or you can
%% delete both. If you delete only one of the limits, the other limit remains
%% unchanged. To specify which gateway to work with, use the Amazon Resource
%% Name (ARN) of the gateway in your request.
delete_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bandwidth_rate_limit(Client, Input, []).
delete_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBandwidthRateLimit">>, Input, Options).

%% @doc This operation deletes Challenge-Handshake Authentication Protocol
%% (CHAP) credentials for a specified iSCSI target and initiator pair.
delete_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_chap_credentials(Client, Input, []).
delete_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChapCredentials">>, Input, Options).

%% @doc This operation deletes a gateway. To specify which gateway to delete,
%% use the Amazon Resource Name (ARN) of the gateway in your request. The
%% operation deletes the gateway; however, it does not delete the gateway
%% virtual machine (VM) from your host computer.
%%
%% After you delete a gateway, you cannot reactivate it. Completed snapshots
%% of the gateway volumes are not deleted upon deleting the gateway, however,
%% pending snapshots will not complete. After you delete a gateway, your next
%% step is to remove it from your environment.
%%
%% <important> You no longer pay software charges after the gateway is
%% deleted; however, your existing Amazon EBS snapshots persist and you will
%% continue to be billed for these snapshots. You can choose to remove all
%% remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription. 
%% If you prefer not to cancel your Amazon EC2 subscription, you can delete
%% your snapshots using the Amazon EC2 console. For more information, see the
%% <a href="http://aws.amazon.com/storagegateway"> AWS Storage Gateway Detail
%% Page</a>.
%%
%% </important>
delete_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_gateway(Client, Input, []).
delete_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGateway">>, Input, Options).

%% @doc This operation deletes a snapshot of a volume.
%%
%% You can take snapshots of your gateway volumes on a scheduled or ad-hoc
%% basis. This API enables you to delete a snapshot schedule for a volume.
%% For more information, see <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working
%% with Snapshots</a>. In the <code>DeleteSnapshotSchedule</code> request,
%% you identify the volume by providing its Amazon Resource Name (ARN).
%%
%% <note> To list or delete a snapshot, you must use the Amazon EC2 API. in
%% <i>Amazon Elastic Compute Cloud API Reference</i>.
%%
%% </note>
delete_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_schedule(Client, Input, []).
delete_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotSchedule">>, Input, Options).

%% @doc Deletes the specified virtual tape.
delete_tape(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tape(Client, Input, []).
delete_tape(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTape">>, Input, Options).

%% @doc Deletes the specified virtual tape from the virtual tape shelf (VTS).
delete_tape_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tape_archive(Client, Input, []).
delete_tape_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTapeArchive">>, Input, Options).

%% @doc This operation deletes the specified gateway volume that you
%% previously created using the <a>CreateCachediSCSIVolume</a> or
%% <a>CreateStorediSCSIVolume</a> API. For gateway-stored volumes, the local
%% disk that was configured as the storage volume is not deleted. You can
%% reuse the local disk to create another storage volume.
%%
%% Before you delete a gateway volume, make sure there are no iSCSI
%% connections to the volume you are deleting. You should also make sure
%% there is no snapshot in progress. You can use the Amazon Elastic Compute
%% Cloud (Amazon EC2) API to query snapshots on the volume you are deleting
%% and check the snapshot status. For more information, go to <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a>
%% in the <i>Amazon Elastic Compute Cloud API Reference</i>.
%%
%% In the request, you must provide the Amazon Resource Name (ARN) of the
%% storage volume you want to delete.
delete_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_volume(Client, Input, []).
delete_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVolume">>, Input, Options).

%% @doc This operation returns the bandwidth rate limits of a gateway. By
%% default, these limits are not set, which means no bandwidth rate limiting
%% is in effect.
%%
%% This operation only returns a value for a bandwidth rate limit only if the
%% limit is set. If no limits are set for the gateway, then this operation
%% returns only the gateway ARN in the response body. To specify which
%% gateway to describe, use the Amazon Resource Name (ARN) of the gateway in
%% your request.
describe_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_bandwidth_rate_limit(Client, Input, []).
describe_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBandwidthRateLimit">>, Input, Options).

%% @doc This operation returns information about the cache of a gateway. This
%% operation is supported only for the gateway-cached volume architecture.
%%
%% The response includes disk IDs that are configured as cache, and it
%% includes the amount of cache allocated and used.
describe_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache(Client, Input, []).
describe_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCache">>, Input, Options).

%% @doc This operation returns a description of the gateway volumes specified
%% in the request. This operation is supported only for the gateway-cached
%% volume architecture.
%%
%% The list of gateway volumes in the request must be from one gateway. In
%% the response Amazon Storage Gateway returns volume information sorted by
%% volume Amazon Resource Name (ARN).
describe_cached_iscsi_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cached_iscsi_volumes(Client, Input, []).
describe_cached_iscsi_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCachediSCSIVolumes">>, Input, Options).

%% @doc This operation returns an array of Challenge-Handshake Authentication
%% Protocol (CHAP) credentials information for a specified iSCSI target, one
%% for each target-initiator pair.
describe_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_chap_credentials(Client, Input, []).
describe_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChapCredentials">>, Input, Options).

%% @doc This operation returns metadata about a gateway such as its name,
%% network interfaces, configured time zone, and the state (whether the
%% gateway is running or not). To specify which gateway to describe, use the
%% Amazon Resource Name (ARN) of the gateway in your request.
describe_gateway_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_gateway_information(Client, Input, []).
describe_gateway_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGatewayInformation">>, Input, Options).

%% @doc This operation returns your gateway's weekly maintenance start time
%% including the day and time of the week. Note that values are in terms of
%% the gateway's time zone.
describe_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_start_time(Client, Input, []).
describe_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceStartTime">>, Input, Options).

%% @doc This operation describes the snapshot schedule for the specified
%% gateway volume. The snapshot schedule information includes intervals at
%% which snapshots are automatically initiated on the volume.
describe_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_schedule(Client, Input, []).
describe_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotSchedule">>, Input, Options).

%% @doc This operation returns the description of the gateway volumes
%% specified in the request. The list of gateway volumes in the request must
%% be from one gateway. In the response Amazon Storage Gateway returns volume
%% information sorted by volume ARNs.
describe_stored_iscsi_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stored_iscsi_volumes(Client, Input, []).
describe_stored_iscsi_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorediSCSIVolumes">>, Input, Options).

%% @doc Returns a description of specified virtual tapes in the virtual tape
%% shelf (VTS).
%%
%% If a specific <code>TapeARN</code> is not specified, AWS Storage Gateway
%% returns a description of all virtual tapes found in the VTS associated
%% with your account.
describe_tape_archives(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tape_archives(Client, Input, []).
describe_tape_archives(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapeArchives">>, Input, Options).

%% @doc Returns a list of virtual tape recovery points that are available for
%% the specified gateway-VTL.
%%
%% A recovery point is a point in time view of a virtual tape at which all
%% the data on the virtual tape is consistent. If your gateway crashes,
%% virtual tapes that have recovery points can be recovered to a new gateway.
describe_tape_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tape_recovery_points(Client, Input, []).
describe_tape_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapeRecoveryPoints">>, Input, Options).

%% @doc Returns a description of the specified Amazon Resource Name (ARN) of
%% virtual tapes. If a <code>TapeARN</code> is not specified, returns a
%% description of all virtual tapes associated with the specified gateway.
describe_tapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tapes(Client, Input, []).
describe_tapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapes">>, Input, Options).

%% @doc This operation returns information about the upload buffer of a
%% gateway. This operation is supported for both the gateway-stored and
%% gateway-cached volume architectures.
%%
%% The response includes disk IDs that are configured as upload buffer space,
%% and it includes the amount of upload buffer space allocated and used.
describe_upload_buffer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_upload_buffer(Client, Input, []).
describe_upload_buffer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUploadBuffer">>, Input, Options).

%% @doc Returns a description of virtual tape library (VTL) devices for the
%% specified gateway. In the response, AWS Storage Gateway returns VTL device
%% information.
%%
%% The list of VTL devices must be from one gateway.
describe_vtl_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vtl_devices(Client, Input, []).
describe_vtl_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVTLDevices">>, Input, Options).

%% @doc This operation returns information about the working storage of a
%% gateway. This operation is supported only for the gateway-stored volume
%% architecture. This operation is deprecated in cached-volumes API version
%% (20120630). Use DescribeUploadBuffer instead.
%%
%% <note>Working storage is also referred to as upload buffer. You can also
%% use the DescribeUploadBuffer operation to add upload buffer to a
%% stored-volume gateway.
%%
%% </note> The response includes disk IDs that are configured as working
%% storage, and it includes the amount of working storage allocated and used.
describe_working_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_working_storage(Client, Input, []).
describe_working_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkingStorage">>, Input, Options).

%% @doc Disables a gateway when the gateway is no longer functioning. For
%% example, if your gateway VM is damaged, you can disable the gateway so you
%% can recover virtual tapes.
%%
%% Use this operation for a gateway-VTL that is not reachable or not
%% functioning.
%%
%% <important>Once a gateway is disabled it cannot be enabled.</important>
disable_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_gateway(Client, Input, []).
disable_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableGateway">>, Input, Options).

%% @doc This operation lists gateways owned by an AWS account in a region
%% specified in the request. The returned list is ordered by gateway Amazon
%% Resource Name (ARN).
%%
%% By default, the operation returns a maximum of 100 gateways. This
%% operation supports pagination that allows you to optionally reduce the
%% number of gateways returned in a response.
%%
%% If you have more gateways than are returned in a response-that is, the
%% response returns only a truncated list of your gateways-the response
%% contains a marker that you can specify in your next request to fetch the
%% next page of gateways.
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc This operation returns a list of the gateway's local disks. To
%% specify which gateway to describe, you use the Amazon Resource Name (ARN)
%% of the gateway in the body of the request.
%%
%% The request returns a list of all disks, specifying which are configured
%% as working storage, cache storage, or stored volume or not configured at
%% all. The response includes a <code>DiskStatus</code> field. This field can
%% have a value of present (the disk is available to use), missing (the disk
%% is no longer connected to the gateway), or mismatch (the disk node is
%% occupied by a disk that has incorrect metadata or the disk content is
%% corrupted).
list_local_disks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_local_disks(Client, Input, []).
list_local_disks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLocalDisks">>, Input, Options).

%% @doc This operation lists the tags that have been added to the specified
%% resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc This operation lists iSCSI initiators that are connected to a volume.
%% You can use this operation to determine whether a volume is being used or
%% not.
list_volume_initiators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volume_initiators(Client, Input, []).
list_volume_initiators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumeInitiators">>, Input, Options).

%% @doc This operation lists the recovery points for a specified gateway.
%% This operation is supported only for the gateway-cached volume
%% architecture.
%%
%% Each gateway-cached volume has one recovery point. A volume recovery point
%% is a point in time at which all data of the volume is consistent and from
%% which you can create a snapshot. To create a snapshot from a volume
%% recovery point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a>
%% operation.
list_volume_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volume_recovery_points(Client, Input, []).
list_volume_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumeRecoveryPoints">>, Input, Options).

%% @doc This operation lists the iSCSI stored volumes of a gateway. Results
%% are sorted by volume ARN. The response includes only the volume ARNs. If
%% you want additional volume information, use the
%% <a>DescribeStorediSCSIVolumes</a> API.
%%
%% The operation supports pagination. By default, the operation returns a
%% maximum of up to 100 volumes. You can optionally specify the
%% <code>Limit</code> field in the body to limit the number of volumes in the
%% response. If the number of volumes returned in the response is truncated,
%% the response includes a Marker field. You can use this Marker value in
%% your subsequent request to retrieve the next set of volumes.
list_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volumes(Client, Input, []).
list_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumes">>, Input, Options).

%% @doc This operation removes one or more tags from the specified resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc This operation resets all cache disks that have encountered a error
%% and makes the disks available for reconfiguration as cache storage. If
%% your cache disk encounters a error, the gateway prevents read and write
%% operations on virtual tapes in the gateway. For example, an error can
%% occur when a disk is corrupted or removed from the gateway. When a cache
%% is reset, the gateway loses its cache storage. At this point you can
%% reconfigure the disks as cache disks.
%%
%% <important> If the cache disk you are resetting contains data that has not
%% been uploaded to Amazon S3 yet, that data can be lost. After you reset
%% cache disks, there will be no configured cache disks left in the gateway,
%% so you must configure at least one new cache disk for your gateway to
%% function properly.
%%
%% </important>
reset_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cache(Client, Input, []).
reset_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetCache">>, Input, Options).

%% @doc Retrieves an archived virtual tape from the virtual tape shelf (VTS)
%% to a gateway-VTL. Virtual tapes archived in the VTS are not associated
%% with any gateway. However after a tape is retrieved, it is associated with
%% a gateway, even though it is also listed in the VTS.
%%
%% Once a tape is successfully retrieved to a gateway, it cannot be retrieved
%% again to another gateway. You must archive the tape again before you can
%% retrieve it to another gateway.
retrieve_tape_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_tape_archive(Client, Input, []).
retrieve_tape_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveTapeArchive">>, Input, Options).

%% @doc Retrieves the recovery point for the specified virtual tape.
%%
%% A recovery point is a point in time view of a virtual tape at which all
%% the data on the tape is consistent. If your gateway crashes, virtual tapes
%% that have recovery points can be recovered to a new gateway.
%%
%% <note>The virtual tape can be retrieved to only one gateway. The retrieved
%% tape is read-only. The virtual tape can be retrieved to only a
%% gateway-VTL. There is no charge for retrieving recovery points.</note>
retrieve_tape_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_tape_recovery_point(Client, Input, []).
retrieve_tape_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveTapeRecoveryPoint">>, Input, Options).

%% @doc This operation shuts down a gateway. To specify which gateway to shut
%% down, use the Amazon Resource Name (ARN) of the gateway in the body of
%% your request.
%%
%% The operation shuts down the gateway service component running in the
%% storage gateway's virtual machine (VM) and not the VM.
%%
%% <note>If you want to shut down the VM, it is recommended that you first
%% shut down the gateway component in the VM to avoid unpredictable
%% conditions.</note> After the gateway is shutdown, you cannot call any
%% other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>,
%% and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>.
%% Your applications cannot read from or write to the gateway's storage
%% volumes, and there are no snapshots taken.
%%
%% <note>When you make a shutdown request, you will get a <code>200 OK</code>
%% success response immediately. However, it might take some time for the
%% gateway to shut down. You can call the <a>DescribeGatewayInformation</a>
%% API to check the status. For more information, see
%% <a>ActivateGateway</a>.</note> If do not intend to use the gateway again,
%% you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay
%% software charges associated with the gateway.
shutdown_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    shutdown_gateway(Client, Input, []).
shutdown_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ShutdownGateway">>, Input, Options).

%% @doc This operation starts a gateway that you previously shut down (see
%% <a>ShutdownGateway</a>). After the gateway starts, you can then make other
%% API calls, your applications can read from or write to the gateway's
%% storage volumes and you will be able to take snapshot backups.
%%
%% <note>When you make a request, you will get a 200 OK success response
%% immediately. However, it might take some time for the gateway to be ready.
%% You should call <a>DescribeGatewayInformation</a> and check the status
%% before making any additional API calls. For more information, see
%% <a>ActivateGateway</a>.</note> To specify which gateway to start, use the
%% Amazon Resource Name (ARN) of the gateway in your request.
start_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_gateway(Client, Input, []).
start_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartGateway">>, Input, Options).

%% @doc This operation updates the bandwidth rate limits of a gateway. You
%% can update both the upload and download bandwidth rate limit or specify
%% only one of the two. If you don't set a bandwidth rate limit, the existing
%% rate limit remains.
%%
%% By default, a gateway's bandwidth rate limits are not set. If you don't
%% set any limit, the gateway does not have any limitations on its bandwidth
%% usage and could potentially use the maximum available bandwidth.
%%
%% To specify which gateway to update, use the Amazon Resource Name (ARN) of
%% the gateway in your request.
update_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bandwidth_rate_limit(Client, Input, []).
update_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBandwidthRateLimit">>, Input, Options).

%% @doc This operation updates the Challenge-Handshake Authentication
%% Protocol (CHAP) credentials for a specified iSCSI target. By default, a
%% gateway does not have CHAP enabled; however, for added security, you might
%% use it.
%%
%% <important> When you update CHAP credentials, all existing connections on
%% the target are closed and initiators must reconnect with the new
%% credentials.
%%
%% </important>
update_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_chap_credentials(Client, Input, []).
update_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateChapCredentials">>, Input, Options).

%% @doc This operation updates a gateway's metadata, which includes the
%% gateway's name and time zone. To specify which gateway to update, use the
%% Amazon Resource Name (ARN) of the gateway in your request.
update_gateway_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_information(Client, Input, []).
update_gateway_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewayInformation">>, Input, Options).

%% @doc This operation updates the gateway virtual machine (VM) software. The
%% request immediately triggers the software update.
%%
%% <note>When you make this request, you get a <code>200 OK</code> success
%% response immediately. However, it might take some time for the update to
%% complete. You can call <a>DescribeGatewayInformation</a> to verify the
%% gateway is in the <code>STATE_RUNNING</code> state.</note> <important>A
%% software update forces a system restart of your gateway. You can minimize
%% the chance of any disruption to your applications by increasing your iSCSI
%% Initiators' timeouts. For more information about increasing iSCSI
%% Initiator timeouts for Windows and Linux, see <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing
%% Your Windows iSCSI Settings</a> and <a
%% href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing
%% Your Linux iSCSI Settings</a>, respectively.</important>
update_gateway_software_now(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_software_now(Client, Input, []).
update_gateway_software_now(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewaySoftwareNow">>, Input, Options).

%% @doc This operation updates a gateway's weekly maintenance start time
%% information, including day and time of the week. The maintenance time is
%% the time in your gateway's time zone.
update_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_start_time(Client, Input, []).
update_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceStartTime">>, Input, Options).

%% @doc This operation updates a snapshot schedule configured for a gateway
%% volume.
%%
%% The default snapshot schedule for volume is once every 24 hours, starting
%% at the creation time of the volume. You can use this API to change the
%% snapshot schedule configured for the volume.
%%
%% In the request you must identify the gateway volume whose snapshot
%% schedule you want to update, and the schedule information, including when
%% you want the snapshot to begin on a day and the frequency (in hours) of
%% snapshots.
update_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot_schedule(Client, Input, []).
update_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshotSchedule">>, Input, Options).

%% @doc This operation updates the type of medium changer in a gateway-VTL.
%% When you activate a gateway-VTL, you select a medium changer type for the
%% gateway-VTL. This operation enables you to select a different type of
%% medium changer after a gateway-VTL is activated.
update_vtl_device_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vtl_device_type(Client, Input, []).
update_vtl_device_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVTLDeviceType">>, Input, Options).

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
    Client1 = Client#{service => <<"storagegateway">>},
    Host = aws_util:binary_join([<<"storagegateway.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"StorageGateway_20130630.">>/binary, Action/binary>>}],
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
