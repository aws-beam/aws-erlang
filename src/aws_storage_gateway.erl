%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Storage Gateway Service
%%
%% Amazon FSx File Gateway is no longer available to new customers.
%%
%% Existing
%% customers of FSx File Gateway can continue to use the service normally.
%% For
%% capabilities similar to FSx File Gateway, visit this blog post:
%% https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/.
%%
%% Storage Gateway is the service that connects an on-premises software
%% appliance
%% with cloud-based storage to provide seamless and secure integration
%% between an
%% organization's on-premises IT environment and the Amazon Web Services
%% storage
%% infrastructure. The service enables you to securely upload data to the
%% Amazon Web Services Cloud for cost effective backup and rapid disaster
%% recovery.
%%
%% Use the following links to get started using the Storage Gateway
%% Service API Reference:
%%
%% Storage Gateway required request headers:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders:
%% Describes the required
%% headers that you must send with every POST request to Storage Gateway.
%%
%% Signing requests:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests:
%% Storage Gateway requires that you authenticate
%% every request you send; this topic describes how sign such a request.
%%
%% Error responses:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses:
%% Provides reference information about Storage Gateway errors.
%%
%% Operations in Storage Gateway:
%% https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html:
%% Contains detailed descriptions of all Storage Gateway operations, their
%% request parameters, response elements, possible errors, and
%% examples of requests and responses.
%%
%% Storage Gateway
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/sg.html: Provides a list of
%% each Amazon Web Services Region
%% and the endpoints available for use with Storage Gateway.
%%
%% Storage Gateway resource IDs are in uppercase. When you use these resource
%% IDs
%% with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must
%% change
%% your resource ID to lowercase to use it with the EC2 API. For example, in
%% Storage
%% Gateway the ID for a volume might be `vol-AA22BB012345DAF670'. When
%% you use
%% this ID with the EC2 API, you must change it to
%% `vol-aa22bb012345daf670'.
%% Otherwise, the EC2 API might not behave as expected.
%%
%% IDs for Storage Gateway volumes and Amazon EBS snapshots created from
%% gateway
%% volumes are changing to a longer format. Starting in December 2016, all
%% new volumes and
%% snapshots will be created with a 17-character string. Starting in April
%% 2016, you will
%% be able to use these longer IDs so you can test your systems with the new
%% format. For
%% more information, see Longer EC2 and
%% EBS resource IDs: http://aws.amazon.com/ec2/faqs/#longer-ids.
%%
%% For example, a volume Amazon Resource Name (ARN) with the longer volume ID
%% format
%% looks like the following:
%%
%% `arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG'.
%%
%% A snapshot ID with the longer ID format looks like the following:
%% `snap-78e226633445566ee'.
%%
%% For more information, see Announcement:
%% Heads-up – Longer Storage Gateway volume and snapshot IDs coming in
%% 2016: http://forums.aws.amazon.com/ann.jspa?annID=3557.
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
         assign_tape_pool/2,
         assign_tape_pool/3,
         associate_file_system/2,
         associate_file_system/3,
         attach_volume/2,
         attach_volume/3,
         cancel_archival/2,
         cancel_archival/3,
         cancel_cache_report/2,
         cancel_cache_report/3,
         cancel_retrieval/2,
         cancel_retrieval/3,
         create_cached_iscsi_volume/2,
         create_cached_iscsi_volume/3,
         create_nfs_file_share/2,
         create_nfs_file_share/3,
         create_smb_file_share/2,
         create_smb_file_share/3,
         create_snapshot/2,
         create_snapshot/3,
         create_snapshot_from_volume_recovery_point/2,
         create_snapshot_from_volume_recovery_point/3,
         create_stored_iscsi_volume/2,
         create_stored_iscsi_volume/3,
         create_tape_pool/2,
         create_tape_pool/3,
         create_tape_with_barcode/2,
         create_tape_with_barcode/3,
         create_tapes/2,
         create_tapes/3,
         delete_automatic_tape_creation_policy/2,
         delete_automatic_tape_creation_policy/3,
         delete_bandwidth_rate_limit/2,
         delete_bandwidth_rate_limit/3,
         delete_cache_report/2,
         delete_cache_report/3,
         delete_chap_credentials/2,
         delete_chap_credentials/3,
         delete_file_share/2,
         delete_file_share/3,
         delete_gateway/2,
         delete_gateway/3,
         delete_snapshot_schedule/2,
         delete_snapshot_schedule/3,
         delete_tape/2,
         delete_tape/3,
         delete_tape_archive/2,
         delete_tape_archive/3,
         delete_tape_pool/2,
         delete_tape_pool/3,
         delete_volume/2,
         delete_volume/3,
         describe_availability_monitor_test/2,
         describe_availability_monitor_test/3,
         describe_bandwidth_rate_limit/2,
         describe_bandwidth_rate_limit/3,
         describe_bandwidth_rate_limit_schedule/2,
         describe_bandwidth_rate_limit_schedule/3,
         describe_cache/2,
         describe_cache/3,
         describe_cache_report/2,
         describe_cache_report/3,
         describe_cached_iscsi_volumes/2,
         describe_cached_iscsi_volumes/3,
         describe_chap_credentials/2,
         describe_chap_credentials/3,
         describe_file_system_associations/2,
         describe_file_system_associations/3,
         describe_gateway_information/2,
         describe_gateway_information/3,
         describe_maintenance_start_time/2,
         describe_maintenance_start_time/3,
         describe_nfs_file_shares/2,
         describe_nfs_file_shares/3,
         describe_smb_file_shares/2,
         describe_smb_file_shares/3,
         describe_smb_settings/2,
         describe_smb_settings/3,
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
         detach_volume/2,
         detach_volume/3,
         disable_gateway/2,
         disable_gateway/3,
         disassociate_file_system/2,
         disassociate_file_system/3,
         join_domain/2,
         join_domain/3,
         list_automatic_tape_creation_policies/2,
         list_automatic_tape_creation_policies/3,
         list_cache_reports/2,
         list_cache_reports/3,
         list_file_shares/2,
         list_file_shares/3,
         list_file_system_associations/2,
         list_file_system_associations/3,
         list_gateways/2,
         list_gateways/3,
         list_local_disks/2,
         list_local_disks/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tape_pools/2,
         list_tape_pools/3,
         list_tapes/2,
         list_tapes/3,
         list_volume_initiators/2,
         list_volume_initiators/3,
         list_volume_recovery_points/2,
         list_volume_recovery_points/3,
         list_volumes/2,
         list_volumes/3,
         notify_when_uploaded/2,
         notify_when_uploaded/3,
         refresh_cache/2,
         refresh_cache/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_cache/2,
         reset_cache/3,
         retrieve_tape_archive/2,
         retrieve_tape_archive/3,
         retrieve_tape_recovery_point/2,
         retrieve_tape_recovery_point/3,
         set_local_console_password/2,
         set_local_console_password/3,
         set_smb_guest_password/2,
         set_smb_guest_password/3,
         shutdown_gateway/2,
         shutdown_gateway/3,
         start_availability_monitor_test/2,
         start_availability_monitor_test/3,
         start_cache_report/2,
         start_cache_report/3,
         start_gateway/2,
         start_gateway/3,
         update_automatic_tape_creation_policy/2,
         update_automatic_tape_creation_policy/3,
         update_bandwidth_rate_limit/2,
         update_bandwidth_rate_limit/3,
         update_bandwidth_rate_limit_schedule/2,
         update_bandwidth_rate_limit_schedule/3,
         update_chap_credentials/2,
         update_chap_credentials/3,
         update_file_system_association/2,
         update_file_system_association/3,
         update_gateway_information/2,
         update_gateway_information/3,
         update_gateway_software_now/2,
         update_gateway_software_now/3,
         update_maintenance_start_time/2,
         update_maintenance_start_time/3,
         update_nfs_file_share/2,
         update_nfs_file_share/3,
         update_smb_file_share/2,
         update_smb_file_share/3,
         update_smb_file_share_visibility/2,
         update_smb_file_share_visibility/3,
         update_smb_local_groups/2,
         update_smb_local_groups/3,
         update_smb_security_strategy/2,
         update_smb_security_strategy/3,
         update_snapshot_schedule/2,
         update_snapshot_schedule/3,
         update_vtl_device_type/2,
         update_vtl_device_type/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_cache_report_output() :: #{
%%   <<"CacheReportInfo">> => cache_report_info()
%% }
-type describe_cache_report_output() :: #{binary() => any()}.

%% Example:
%% join_domain_output() :: #{
%%   <<"ActiveDirectoryStatus">> => list(any()),
%%   <<"GatewayARN">> => string()
%% }
-type join_domain_output() :: #{binary() => any()}.

%% Example:
%% create_stored_iscsi_volume_input() :: #{
%%   <<"DiskId">> := string(),
%%   <<"GatewayARN">> := string(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"NetworkInterfaceId">> := string(),
%%   <<"PreserveExistingData">> := boolean(),
%%   <<"SnapshotId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetName">> := string()
%% }
-type create_stored_iscsi_volume_input() :: #{binary() => any()}.

%% Example:
%% associate_file_system_output() :: #{
%%   <<"FileSystemAssociationARN">> => string()
%% }
-type associate_file_system_output() :: #{binary() => any()}.

%% Example:
%% update_snapshot_schedule_input() :: #{
%%   <<"Description">> => string(),
%%   <<"RecurrenceInHours">> := integer(),
%%   <<"StartAt">> := integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeARN">> := string()
%% }
-type update_snapshot_schedule_input() :: #{binary() => any()}.

%% Example:
%% cancel_archival_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type cancel_archival_input() :: #{binary() => any()}.

%% Example:
%% describe_gateway_information_output() :: #{
%%   <<"CloudWatchLogGroupARN">> => string(),
%%   <<"DeprecationDate">> => string(),
%%   <<"Ec2InstanceId">> => string(),
%%   <<"Ec2InstanceRegion">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"GatewayARN">> => string(),
%%   <<"GatewayCapacity">> => list(any()),
%%   <<"GatewayId">> => string(),
%%   <<"GatewayName">> => string(),
%%   <<"GatewayNetworkInterfaces">> => list(network_interface()()),
%%   <<"GatewayState">> => string(),
%%   <<"GatewayTimezone">> => string(),
%%   <<"GatewayType">> => string(),
%%   <<"HostEnvironment">> => list(any()),
%%   <<"HostEnvironmentId">> => string(),
%%   <<"LastSoftwareUpdate">> => string(),
%%   <<"NextUpdateAvailabilityDate">> => string(),
%%   <<"SoftwareUpdatesEndDate">> => string(),
%%   <<"SoftwareVersion">> => string(),
%%   <<"SupportedGatewayCapacities">> => list(list(any())()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpoint">> => string()
%% }
-type describe_gateway_information_output() :: #{binary() => any()}.

%% Example:
%% list_volume_initiators_input() :: #{
%%   <<"VolumeARN">> := string()
%% }
-type list_volume_initiators_input() :: #{binary() => any()}.

%% Example:
%% notify_when_uploaded_input() :: #{
%%   <<"FileShareARN">> := string()
%% }
-type notify_when_uploaded_input() :: #{binary() => any()}.

%% Example:
%% list_volume_recovery_points_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type list_volume_recovery_points_input() :: #{binary() => any()}.

%% Example:
%% describe_upload_buffer_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_upload_buffer_input() :: #{binary() => any()}.

%% Example:
%% describe_cache_output() :: #{
%%   <<"CacheAllocatedInBytes">> => float(),
%%   <<"CacheDirtyPercentage">> => float(),
%%   <<"CacheHitPercentage">> => float(),
%%   <<"CacheMissPercentage">> => float(),
%%   <<"CacheUsedPercentage">> => float(),
%%   <<"DiskIds">> => list(string()()),
%%   <<"GatewayARN">> => string()
%% }
-type describe_cache_output() :: #{binary() => any()}.

%% Example:
%% start_cache_report_input() :: #{
%%   <<"BucketRegion">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"ExclusionFilters">> => list(cache_report_filter()()),
%%   <<"FileShareARN">> := string(),
%%   <<"InclusionFilters">> => list(cache_report_filter()()),
%%   <<"LocationARN">> := string(),
%%   <<"Role">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpointDNSName">> => string()
%% }
-type start_cache_report_input() :: #{binary() => any()}.

%% Example:
%% assign_tape_pool_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type assign_tape_pool_output() :: #{binary() => any()}.

%% Example:
%% describe_file_system_associations_output() :: #{
%%   <<"FileSystemAssociationInfoList">> => list(file_system_association_info()())
%% }
-type describe_file_system_associations_output() :: #{binary() => any()}.

%% Example:
%% create_tape_with_barcode_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"PoolId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TapeBarcode">> := string(),
%%   <<"TapeSizeInBytes">> := float(),
%%   <<"Worm">> => boolean()
%% }
-type create_tape_with_barcode_input() :: #{binary() => any()}.

%% Example:
%% tape_info() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"PoolEntryDate">> => non_neg_integer(),
%%   <<"PoolId">> => string(),
%%   <<"RetentionStartDate">> => non_neg_integer(),
%%   <<"TapeARN">> => string(),
%%   <<"TapeBarcode">> => string(),
%%   <<"TapeSizeInBytes">> => float(),
%%   <<"TapeStatus">> => string()
%% }
-type tape_info() :: #{binary() => any()}.

%% Example:
%% delete_file_share_input() :: #{
%%   <<"FileShareARN">> := string(),
%%   <<"ForceDelete">> => boolean()
%% }
-type delete_file_share_input() :: #{binary() => any()}.

%% Example:
%% join_domain_input() :: #{
%%   <<"DomainControllers">> => list(string()()),
%%   <<"DomainName">> := string(),
%%   <<"GatewayARN">> := string(),
%%   <<"OrganizationalUnit">> => string(),
%%   <<"Password">> := string(),
%%   <<"TimeoutInSeconds">> => integer(),
%%   <<"UserName">> := string()
%% }
-type join_domain_input() :: #{binary() => any()}.

%% Example:
%% update_file_system_association_input() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"FileSystemAssociationARN">> := string(),
%%   <<"Password">> => string(),
%%   <<"UserName">> => string()
%% }
-type update_file_system_association_input() :: #{binary() => any()}.

%% Example:
%% delete_bandwidth_rate_limit_input() :: #{
%%   <<"BandwidthType">> := string(),
%%   <<"GatewayARN">> := string()
%% }
-type delete_bandwidth_rate_limit_input() :: #{binary() => any()}.

%% Example:
%% update_maintenance_start_time_input() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"DayOfWeek">> => integer(),
%%   <<"GatewayARN">> := string(),
%%   <<"HourOfDay">> => integer(),
%%   <<"MinuteOfHour">> => integer(),
%%   <<"SoftwareUpdatePreferences">> => software_update_preferences()
%% }
-type update_maintenance_start_time_input() :: #{binary() => any()}.

%% Example:
%% volume_iscsi_attributes() :: #{
%%   <<"ChapEnabled">> => boolean(),
%%   <<"LunNumber">> => integer(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"NetworkInterfacePort">> => integer(),
%%   <<"TargetARN">> => string()
%% }
-type volume_iscsi_attributes() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_start_time_output() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"DayOfWeek">> => integer(),
%%   <<"GatewayARN">> => string(),
%%   <<"HourOfDay">> => integer(),
%%   <<"MinuteOfHour">> => integer(),
%%   <<"SoftwareUpdatePreferences">> => software_update_preferences(),
%%   <<"Timezone">> => string()
%% }
-type describe_maintenance_start_time_output() :: #{binary() => any()}.

%% Example:
%% associate_file_system_input() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"ClientToken">> := string(),
%%   <<"EndpointNetworkConfiguration">> => endpoint_network_configuration(),
%%   <<"GatewayARN">> := string(),
%%   <<"LocationARN">> := string(),
%%   <<"Password">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserName">> := string()
%% }
-type associate_file_system_input() :: #{binary() => any()}.

%% Example:
%% list_volume_recovery_points_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"VolumeRecoveryPointInfos">> => list(volume_recovery_point_info()())
%% }
-type list_volume_recovery_points_output() :: #{binary() => any()}.

%% Example:
%% describe_smb_settings_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_smb_settings_input() :: #{binary() => any()}.

%% Example:
%% file_share_info() :: #{
%%   <<"FileShareARN">> => string(),
%%   <<"FileShareId">> => string(),
%%   <<"FileShareStatus">> => string(),
%%   <<"FileShareType">> => list(any()),
%%   <<"GatewayARN">> => string()
%% }
-type file_share_info() :: #{binary() => any()}.

%% Example:
%% delete_tape_archive_input() :: #{
%%   <<"BypassGovernanceRetention">> => boolean(),
%%   <<"TapeARN">> := string()
%% }
-type delete_tape_archive_input() :: #{binary() => any()}.

%% Example:
%% start_cache_report_output() :: #{
%%   <<"CacheReportARN">> => string()
%% }
-type start_cache_report_output() :: #{binary() => any()}.

%% Example:
%% volume_recovery_point_info() :: #{
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeRecoveryPointTime">> => string(),
%%   <<"VolumeSizeInBytes">> => float(),
%%   <<"VolumeUsageInBytes">> => float()
%% }
-type volume_recovery_point_info() :: #{binary() => any()}.

%% Example:
%% pool_info() :: #{
%%   <<"PoolARN">> => string(),
%%   <<"PoolName">> => string(),
%%   <<"PoolStatus">> => list(any()),
%%   <<"RetentionLockTimeInDays">> => integer(),
%%   <<"RetentionLockType">> => list(any()),
%%   <<"StorageClass">> => list(any())
%% }
-type pool_info() :: #{binary() => any()}.

%% Example:
%% describe_cache_report_input() :: #{
%%   <<"CacheReportARN">> := string()
%% }
-type describe_cache_report_input() :: #{binary() => any()}.

%% Example:
%% create_tapes_output() :: #{
%%   <<"TapeARNs">> => list(string()())
%% }
-type create_tapes_output() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"Ipv4Address">> => string(),
%%   <<"Ipv6Address">> => string(),
%%   <<"MacAddress">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% tape_recovery_point_info() :: #{
%%   <<"TapeARN">> => string(),
%%   <<"TapeRecoveryPointTime">> => non_neg_integer(),
%%   <<"TapeSizeInBytes">> => float(),
%%   <<"TapeStatus">> => string()
%% }
-type tape_recovery_point_info() :: #{binary() => any()}.

%% Example:
%% delete_volume_input() :: #{
%%   <<"VolumeARN">> := string()
%% }
-type delete_volume_input() :: #{binary() => any()}.

%% Example:
%% describe_cached_iscsi_volumes_input() :: #{
%%   <<"VolumeARNs">> := list(string()())
%% }
-type describe_cached_iscsi_volumes_input() :: #{binary() => any()}.

%% Example:
%% set_local_console_password_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"LocalConsolePassword">> := string()
%% }
-type set_local_console_password_input() :: #{binary() => any()}.

%% Example:
%% list_file_system_associations_output() :: #{
%%   <<"FileSystemAssociationSummaryList">> => list(file_system_association_summary()()),
%%   <<"Marker">> => string(),
%%   <<"NextMarker">> => string()
%% }
-type list_file_system_associations_output() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_schedule_output() :: #{
%%   <<"VolumeARN">> => string()
%% }
-type delete_snapshot_schedule_output() :: #{binary() => any()}.

%% Example:
%% list_tape_pools_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"PoolInfos">> => list(pool_info()())
%% }
-type list_tape_pools_output() :: #{binary() => any()}.

%% Example:
%% describe_tape_recovery_points_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type describe_tape_recovery_points_input() :: #{binary() => any()}.

%% Example:
%% describe_vtl_devices_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"VTLDeviceARNs">> => list(string()())
%% }
-type describe_vtl_devices_input() :: #{binary() => any()}.

%% Example:
%% list_file_system_associations_input() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type list_file_system_associations_input() :: #{binary() => any()}.

%% Example:
%% list_volumes_input() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type list_volumes_input() :: #{binary() => any()}.

%% Example:
%% gateway_info() :: #{
%%   <<"DeprecationDate">> => string(),
%%   <<"Ec2InstanceId">> => string(),
%%   <<"Ec2InstanceRegion">> => string(),
%%   <<"GatewayARN">> => string(),
%%   <<"GatewayId">> => string(),
%%   <<"GatewayName">> => string(),
%%   <<"GatewayOperationalState">> => string(),
%%   <<"GatewayType">> => string(),
%%   <<"HostEnvironment">> => list(any()),
%%   <<"HostEnvironmentId">> => string(),
%%   <<"SoftwareVersion">> => string()
%% }
-type gateway_info() :: #{binary() => any()}.

%% Example:
%% update_smb_file_share_input() :: #{
%%   <<"AccessBasedEnumeration">> => boolean(),
%%   <<"AdminUserList">> => list(string()()),
%%   <<"AuditDestinationARN">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"CaseSensitivity">> => list(any()),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareARN">> := string(),
%%   <<"FileShareName">> => string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"InvalidUserList">> => list(string()()),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"OplocksEnabled">> => boolean(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"SMBACLEnabled">> => boolean(),
%%   <<"ValidUserList">> => list(string()())
%% }
-type update_smb_file_share_input() :: #{binary() => any()}.

%% Example:
%% list_local_disks_output() :: #{
%%   <<"Disks">> => list(disk()()),
%%   <<"GatewayARN">> => string()
%% }
-type list_local_disks_output() :: #{binary() => any()}.

%% Example:
%% activate_gateway_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type activate_gateway_output() :: #{binary() => any()}.

%% Example:
%% detach_volume_output() :: #{
%%   <<"VolumeARN">> => string()
%% }
-type detach_volume_output() :: #{binary() => any()}.

%% Example:
%% set_local_console_password_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type set_local_console_password_output() :: #{binary() => any()}.

%% Example:
%% create_snapshot_from_volume_recovery_point_output() :: #{
%%   <<"SnapshotId">> => string(),
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeRecoveryPointTime">> => string()
%% }
-type create_snapshot_from_volume_recovery_point_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% cached_iscsi_volume() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"KMSKey">> => string(),
%%   <<"SourceSnapshotId">> => string(),
%%   <<"TargetName">> => string(),
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeAttachmentStatus">> => string(),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeProgress">> => float(),
%%   <<"VolumeSizeInBytes">> => float(),
%%   <<"VolumeStatus">> => string(),
%%   <<"VolumeType">> => string(),
%%   <<"VolumeUsedInBytes">> => float(),
%%   <<"VolumeiSCSIAttributes">> => volume_iscsi_attributes()
%% }
-type cached_iscsi_volume() :: #{binary() => any()}.

%% Example:
%% describe_bandwidth_rate_limit_output() :: #{
%%   <<"AverageDownloadRateLimitInBitsPerSec">> => float(),
%%   <<"AverageUploadRateLimitInBitsPerSec">> => float(),
%%   <<"GatewayARN">> => string()
%% }
-type describe_bandwidth_rate_limit_output() :: #{binary() => any()}.

%% Example:
%% start_gateway_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type start_gateway_input() :: #{binary() => any()}.

%% Example:
%% create_smb_file_share_output() :: #{
%%   <<"FileShareARN">> => string()
%% }
-type create_smb_file_share_output() :: #{binary() => any()}.

%% Example:
%% attach_volume_input() :: #{
%%   <<"DiskId">> => string(),
%%   <<"GatewayARN">> := string(),
%%   <<"NetworkInterfaceId">> := string(),
%%   <<"TargetName">> => string(),
%%   <<"VolumeARN">> := string()
%% }
-type attach_volume_input() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_schedule_input() :: #{
%%   <<"VolumeARN">> := string()
%% }
-type delete_snapshot_schedule_input() :: #{binary() => any()}.

%% Example:
%% create_snapshot_output() :: #{
%%   <<"SnapshotId">> => string(),
%%   <<"VolumeARN">> => string()
%% }
-type create_snapshot_output() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type remove_tags_from_resource_output() :: #{binary() => any()}.

%% Example:
%% nfs_file_share_defaults() :: #{
%%   <<"DirectoryMode">> => string(),
%%   <<"FileMode">> => string(),
%%   <<"GroupId">> => float(),
%%   <<"OwnerId">> => float()
%% }
-type nfs_file_share_defaults() :: #{binary() => any()}.

%% Example:
%% create_tape_with_barcode_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type create_tape_with_barcode_output() :: #{binary() => any()}.

%% Example:
%% disable_gateway_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type disable_gateway_input() :: #{binary() => any()}.

%% Example:
%% delete_tape_pool_output() :: #{
%%   <<"PoolARN">> => string()
%% }
-type delete_tape_pool_output() :: #{binary() => any()}.

%% Example:
%% list_local_disks_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type list_local_disks_input() :: #{binary() => any()}.

%% Example:
%% add_working_storage_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type add_working_storage_output() :: #{binary() => any()}.

%% Example:
%% update_smb_file_share_visibility_input() :: #{
%%   <<"FileSharesVisible">> := boolean(),
%%   <<"GatewayARN">> := string()
%% }
-type update_smb_file_share_visibility_input() :: #{binary() => any()}.

%% Example:
%% cancel_retrieval_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type cancel_retrieval_input() :: #{binary() => any()}.

%% Example:
%% notify_when_uploaded_output() :: #{
%%   <<"FileShareARN">> => string(),
%%   <<"NotificationId">> => string()
%% }
-type notify_when_uploaded_output() :: #{binary() => any()}.

%% Example:
%% service_unavailable_error() :: #{
%%   <<"error">> => storage_gateway_error(),
%%   <<"message">> => string()
%% }
-type service_unavailable_error() :: #{binary() => any()}.

%% Example:
%% retrieve_tape_recovery_point_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type retrieve_tape_recovery_point_output() :: #{binary() => any()}.

%% Example:
%% cache_report_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type cache_report_filter() :: #{binary() => any()}.

%% Example:
%% update_vtl_device_type_input() :: #{
%%   <<"DeviceType">> := string(),
%%   <<"VTLDeviceARN">> := string()
%% }
-type update_vtl_device_type_input() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_smb_settings_output() :: #{
%%   <<"ActiveDirectoryStatus">> => list(any()),
%%   <<"DomainName">> => string(),
%%   <<"FileSharesVisible">> => boolean(),
%%   <<"GatewayARN">> => string(),
%%   <<"SMBGuestPasswordSet">> => boolean(),
%%   <<"SMBLocalGroups">> => smb_local_groups(),
%%   <<"SMBSecurityStrategy">> => list(any())
%% }
-type describe_smb_settings_output() :: #{binary() => any()}.

%% Example:
%% update_gateway_information_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"GatewayName">> => string()
%% }
-type update_gateway_information_output() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type add_tags_to_resource_output() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% cancel_cache_report_input() :: #{
%%   <<"CacheReportARN">> := string()
%% }
-type cancel_cache_report_input() :: #{binary() => any()}.

%% Example:
%% update_bandwidth_rate_limit_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_bandwidth_rate_limit_output() :: #{binary() => any()}.

%% Example:
%% device_iscsi_attributes() :: #{
%%   <<"ChapEnabled">> => boolean(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"NetworkInterfacePort">> => integer(),
%%   <<"TargetARN">> => string()
%% }
-type device_iscsi_attributes() :: #{binary() => any()}.

%% Example:
%% describe_vtl_devices_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Marker">> => string(),
%%   <<"VTLDevices">> => list(vtl_device()())
%% }
-type describe_vtl_devices_output() :: #{binary() => any()}.

%% Example:
%% cache_report_info() :: #{
%%   <<"CacheReportARN">> => string(),
%%   <<"CacheReportStatus">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExclusionFilters">> => list(cache_report_filter()()),
%%   <<"FileShareARN">> => string(),
%%   <<"InclusionFilters">> => list(cache_report_filter()()),
%%   <<"LocationARN">> => string(),
%%   <<"ReportCompletionPercent">> => integer(),
%%   <<"ReportName">> => string(),
%%   <<"Role">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type cache_report_info() :: #{binary() => any()}.

%% Example:
%% cancel_archival_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type cancel_archival_output() :: #{binary() => any()}.

%% Example:
%% start_availability_monitor_test_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type start_availability_monitor_test_input() :: #{binary() => any()}.

%% Example:
%% retrieve_tape_recovery_point_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type retrieve_tape_recovery_point_input() :: #{binary() => any()}.

%% Example:
%% describe_bandwidth_rate_limit_schedule_output() :: #{
%%   <<"BandwidthRateLimitIntervals">> => list(bandwidth_rate_limit_interval()()),
%%   <<"GatewayARN">> => string()
%% }
-type describe_bandwidth_rate_limit_schedule_output() :: #{binary() => any()}.

%% Example:
%% describe_gateway_information_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_gateway_information_input() :: #{binary() => any()}.

%% Example:
%% add_cache_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type add_cache_output() :: #{binary() => any()}.

%% Example:
%% start_gateway_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type start_gateway_output() :: #{binary() => any()}.

%% Example:
%% list_cache_reports_input() :: #{
%%   <<"Marker">> => string()
%% }
-type list_cache_reports_input() :: #{binary() => any()}.

%% Example:
%% list_cache_reports_output() :: #{
%%   <<"CacheReportList">> => list(cache_report_info()()),
%%   <<"Marker">> => string()
%% }
-type list_cache_reports_output() :: #{binary() => any()}.

%% Example:
%% assign_tape_pool_input() :: #{
%%   <<"BypassGovernanceRetention">> => boolean(),
%%   <<"PoolId">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type assign_tape_pool_input() :: #{binary() => any()}.

%% Example:
%% describe_nfs_file_shares_output() :: #{
%%   <<"NFSFileShareInfoList">> => list(nfs_file_share_info()())
%% }
-type describe_nfs_file_shares_output() :: #{binary() => any()}.

%% Example:
%% create_snapshot_input() :: #{
%%   <<"SnapshotDescription">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeARN">> := string()
%% }
-type create_snapshot_input() :: #{binary() => any()}.

%% Example:
%% storage_gateway_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorDetails">> => map()
%% }
-type storage_gateway_error() :: #{binary() => any()}.

%% Example:
%% list_file_shares_input() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type list_file_shares_input() :: #{binary() => any()}.

%% Example:
%% tape() :: #{
%%   <<"KMSKey">> => string(),
%%   <<"PoolEntryDate">> => non_neg_integer(),
%%   <<"PoolId">> => string(),
%%   <<"Progress">> => float(),
%%   <<"RetentionStartDate">> => non_neg_integer(),
%%   <<"TapeARN">> => string(),
%%   <<"TapeBarcode">> => string(),
%%   <<"TapeCreatedDate">> => non_neg_integer(),
%%   <<"TapeSizeInBytes">> => float(),
%%   <<"TapeStatus">> => string(),
%%   <<"TapeUsedInBytes">> => float(),
%%   <<"VTLDevice">> => string(),
%%   <<"Worm">> => boolean()
%% }
-type tape() :: #{binary() => any()}.

%% Example:
%% bandwidth_rate_limit_interval() :: #{
%%   <<"AverageDownloadRateLimitInBitsPerSec">> => float(),
%%   <<"AverageUploadRateLimitInBitsPerSec">> => float(),
%%   <<"DaysOfWeek">> => list(integer()()),
%%   <<"EndHourOfDay">> => integer(),
%%   <<"EndMinuteOfHour">> => integer(),
%%   <<"StartHourOfDay">> => integer(),
%%   <<"StartMinuteOfHour">> => integer()
%% }
-type bandwidth_rate_limit_interval() :: #{binary() => any()}.

%% Example:
%% list_gateways_output() :: #{
%%   <<"Gateways">> => list(gateway_info()()),
%%   <<"Marker">> => string()
%% }
-type list_gateways_output() :: #{binary() => any()}.

%% Example:
%% delete_tape_pool_input() :: #{
%%   <<"PoolARN">> := string()
%% }
-type delete_tape_pool_input() :: #{binary() => any()}.

%% Example:
%% update_bandwidth_rate_limit_input() :: #{
%%   <<"AverageDownloadRateLimitInBitsPerSec">> => float(),
%%   <<"AverageUploadRateLimitInBitsPerSec">> => float(),
%%   <<"GatewayARN">> := string()
%% }
-type update_bandwidth_rate_limit_input() :: #{binary() => any()}.

%% Example:
%% delete_gateway_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type delete_gateway_input() :: #{binary() => any()}.

%% Example:
%% reset_cache_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type reset_cache_input() :: #{binary() => any()}.

%% Example:
%% list_tapes_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"TapeInfos">> => list(tape_info()())
%% }
-type list_tapes_output() :: #{binary() => any()}.

%% Example:
%% delete_tape_input() :: #{
%%   <<"BypassGovernanceRetention">> => boolean(),
%%   <<"GatewayARN">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type delete_tape_input() :: #{binary() => any()}.

%% Example:
%% endpoint_network_configuration() :: #{
%%   <<"IpAddresses">> => list(string()())
%% }
-type endpoint_network_configuration() :: #{binary() => any()}.

%% Example:
%% describe_stored_iscsi_volumes_output() :: #{
%%   <<"StorediSCSIVolumes">> => list(stored_iscsi_volume()())
%% }
-type describe_stored_iscsi_volumes_output() :: #{binary() => any()}.

%% Example:
%% list_volume_initiators_output() :: #{
%%   <<"Initiators">> => list(string()())
%% }
-type list_volume_initiators_output() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_from_resource_input() :: #{binary() => any()}.

%% Example:
%% update_smb_file_share_visibility_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_smb_file_share_visibility_output() :: #{binary() => any()}.

%% Example:
%% retrieve_tape_archive_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type retrieve_tape_archive_output() :: #{binary() => any()}.

%% Example:
%% describe_snapshot_schedule_output() :: #{
%%   <<"Description">> => string(),
%%   <<"RecurrenceInHours">> => integer(),
%%   <<"StartAt">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Timezone">> => string(),
%%   <<"VolumeARN">> => string()
%% }
-type describe_snapshot_schedule_output() :: #{binary() => any()}.

%% Example:
%% create_tape_pool_input() :: #{
%%   <<"PoolName">> := string(),
%%   <<"RetentionLockTimeInDays">> => integer(),
%%   <<"RetentionLockType">> => list(any()),
%%   <<"StorageClass">> := list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_tape_pool_input() :: #{binary() => any()}.

%% Example:
%% delete_cache_report_input() :: #{
%%   <<"CacheReportARN">> := string()
%% }
-type delete_cache_report_input() :: #{binary() => any()}.

%% Example:
%% detach_volume_input() :: #{
%%   <<"ForceDetach">> => boolean(),
%%   <<"VolumeARN">> := string()
%% }
-type detach_volume_input() :: #{binary() => any()}.

%% Example:
%% smb_file_share_info() :: #{
%%   <<"AccessBasedEnumeration">> => boolean(),
%%   <<"AdminUserList">> => list(string()()),
%%   <<"AuditDestinationARN">> => string(),
%%   <<"Authentication">> => string(),
%%   <<"BucketRegion">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"CaseSensitivity">> => list(any()),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareARN">> => string(),
%%   <<"FileShareId">> => string(),
%%   <<"FileShareName">> => string(),
%%   <<"FileShareStatus">> => string(),
%%   <<"GatewayARN">> => string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"InvalidUserList">> => list(string()()),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"LocationARN">> => string(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"OplocksEnabled">> => boolean(),
%%   <<"Path">> => string(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"Role">> => string(),
%%   <<"SMBACLEnabled">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpointDNSName">> => string(),
%%   <<"ValidUserList">> => list(string()())
%% }
-type smb_file_share_info() :: #{binary() => any()}.

%% Example:
%% describe_cache_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_cache_input() :: #{binary() => any()}.

%% Example:
%% update_file_system_association_output() :: #{
%%   <<"FileSystemAssociationARN">> => string()
%% }
-type update_file_system_association_output() :: #{binary() => any()}.

%% Example:
%% vtl_device() :: #{
%%   <<"DeviceiSCSIAttributes">> => device_iscsi_attributes(),
%%   <<"VTLDeviceARN">> => string(),
%%   <<"VTLDeviceProductIdentifier">> => string(),
%%   <<"VTLDeviceType">> => string(),
%%   <<"VTLDeviceVendor">> => string()
%% }
-type vtl_device() :: #{binary() => any()}.

%% Example:
%% delete_tape_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type delete_tape_output() :: #{binary() => any()}.

%% Example:
%% list_file_shares_output() :: #{
%%   <<"FileShareInfoList">> => list(file_share_info()()),
%%   <<"Marker">> => string(),
%%   <<"NextMarker">> => string()
%% }
-type list_file_shares_output() :: #{binary() => any()}.

%% Example:
%% start_availability_monitor_test_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type start_availability_monitor_test_output() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_start_time_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_maintenance_start_time_input() :: #{binary() => any()}.

%% Example:
%% delete_chap_credentials_input() :: #{
%%   <<"InitiatorName">> := string(),
%%   <<"TargetARN">> := string()
%% }
-type delete_chap_credentials_input() :: #{binary() => any()}.

%% Example:
%% describe_availability_monitor_test_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_availability_monitor_test_input() :: #{binary() => any()}.

%% Example:
%% update_gateway_information_input() :: #{
%%   <<"CloudWatchLogGroupARN">> => string(),
%%   <<"GatewayARN">> := string(),
%%   <<"GatewayCapacity">> => list(any()),
%%   <<"GatewayName">> => string(),
%%   <<"GatewayTimezone">> => string()
%% }
-type update_gateway_information_input() :: #{binary() => any()}.

%% Example:
%% create_snapshot_from_volume_recovery_point_input() :: #{
%%   <<"SnapshotDescription">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeARN">> := string()
%% }
-type create_snapshot_from_volume_recovery_point_input() :: #{binary() => any()}.

%% Example:
%% create_smb_file_share_input() :: #{
%%   <<"AccessBasedEnumeration">> => boolean(),
%%   <<"AdminUserList">> => list(string()()),
%%   <<"AuditDestinationARN">> => string(),
%%   <<"Authentication">> => string(),
%%   <<"BucketRegion">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"CaseSensitivity">> => list(any()),
%%   <<"ClientToken">> := string(),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareName">> => string(),
%%   <<"GatewayARN">> := string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"InvalidUserList">> => list(string()()),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"LocationARN">> := string(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"OplocksEnabled">> => boolean(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"Role">> := string(),
%%   <<"SMBACLEnabled">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpointDNSName">> => string(),
%%   <<"ValidUserList">> => list(string()())
%% }
-type create_smb_file_share_input() :: #{binary() => any()}.

%% Example:
%% cancel_retrieval_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type cancel_retrieval_output() :: #{binary() => any()}.

%% Example:
%% update_smb_local_groups_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"SMBLocalGroups">> := smb_local_groups()
%% }
-type update_smb_local_groups_input() :: #{binary() => any()}.

%% Example:
%% reset_cache_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type reset_cache_output() :: #{binary() => any()}.

%% Example:
%% update_vtl_device_type_output() :: #{
%%   <<"VTLDeviceARN">> => string()
%% }
-type update_vtl_device_type_output() :: #{binary() => any()}.

%% Example:
%% describe_tape_archives_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"TapeARNs">> => list(string()())
%% }
-type describe_tape_archives_input() :: #{binary() => any()}.

%% Example:
%% automatic_tape_creation_rule() :: #{
%%   <<"MinimumNumTapes">> => integer(),
%%   <<"PoolId">> => string(),
%%   <<"TapeBarcodePrefix">> => string(),
%%   <<"TapeSizeInBytes">> => float(),
%%   <<"Worm">> => boolean()
%% }
-type automatic_tape_creation_rule() :: #{binary() => any()}.

%% Example:
%% list_gateways_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string()
%% }
-type list_gateways_input() :: #{binary() => any()}.

%% Example:
%% describe_chap_credentials_output() :: #{
%%   <<"ChapCredentials">> => list(chap_info()())
%% }
-type describe_chap_credentials_output() :: #{binary() => any()}.

%% Example:
%% describe_smb_file_shares_output() :: #{
%%   <<"SMBFileShareInfoList">> => list(smb_file_share_info()())
%% }
-type describe_smb_file_shares_output() :: #{binary() => any()}.

%% Example:
%% delete_chap_credentials_output() :: #{
%%   <<"InitiatorName">> => string(),
%%   <<"TargetARN">> => string()
%% }
-type delete_chap_credentials_output() :: #{binary() => any()}.

%% Example:
%% delete_tape_archive_output() :: #{
%%   <<"TapeARN">> => string()
%% }
-type delete_tape_archive_output() :: #{binary() => any()}.

%% Example:
%% shutdown_gateway_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type shutdown_gateway_input() :: #{binary() => any()}.

%% Example:
%% describe_snapshot_schedule_input() :: #{
%%   <<"VolumeARN">> := string()
%% }
-type describe_snapshot_schedule_input() :: #{binary() => any()}.

%% Example:
%% create_nfs_file_share_input() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"BucketRegion">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"ClientList">> => list(string()()),
%%   <<"ClientToken">> := string(),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareName">> => string(),
%%   <<"GatewayARN">> := string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"LocationARN">> := string(),
%%   <<"NFSFileShareDefaults">> => nfs_file_share_defaults(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"Role">> := string(),
%%   <<"Squash">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpointDNSName">> => string()
%% }
-type create_nfs_file_share_input() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"error">> => storage_gateway_error(),
%%   <<"message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% update_smb_security_strategy_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_smb_security_strategy_output() :: #{binary() => any()}.

%% Example:
%% delete_file_share_output() :: #{
%%   <<"FileShareARN">> => string()
%% }
-type delete_file_share_output() :: #{binary() => any()}.

%% Example:
%% create_nfs_file_share_output() :: #{
%%   <<"FileShareARN">> => string()
%% }
-type create_nfs_file_share_output() :: #{binary() => any()}.

%% Example:
%% describe_tapes_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"TapeARNs">> => list(string()())
%% }
-type describe_tapes_input() :: #{binary() => any()}.

%% Example:
%% list_automatic_tape_creation_policies_input() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type list_automatic_tape_creation_policies_input() :: #{binary() => any()}.

%% Example:
%% update_snapshot_schedule_output() :: #{
%%   <<"VolumeARN">> => string()
%% }
-type update_snapshot_schedule_output() :: #{binary() => any()}.

%% Example:
%% stored_iscsi_volume() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"KMSKey">> => string(),
%%   <<"PreservedExistingData">> => boolean(),
%%   <<"SourceSnapshotId">> => string(),
%%   <<"TargetName">> => string(),
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeAttachmentStatus">> => string(),
%%   <<"VolumeDiskId">> => string(),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeProgress">> => float(),
%%   <<"VolumeSizeInBytes">> => float(),
%%   <<"VolumeStatus">> => string(),
%%   <<"VolumeType">> => string(),
%%   <<"VolumeUsedInBytes">> => float(),
%%   <<"VolumeiSCSIAttributes">> => volume_iscsi_attributes()
%% }
-type stored_iscsi_volume() :: #{binary() => any()}.

%% Example:
%% volume_info() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"GatewayId">> => string(),
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeAttachmentStatus">> => string(),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeSizeInBytes">> => float(),
%%   <<"VolumeType">> => string()
%% }
-type volume_info() :: #{binary() => any()}.

%% Example:
%% update_nfs_file_share_output() :: #{
%%   <<"FileShareARN">> => string()
%% }
-type update_nfs_file_share_output() :: #{binary() => any()}.

%% Example:
%% disable_gateway_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type disable_gateway_output() :: #{binary() => any()}.

%% Example:
%% software_update_preferences() :: #{
%%   <<"AutomaticUpdatePolicy">> => list(any())
%% }
-type software_update_preferences() :: #{binary() => any()}.

%% Example:
%% describe_stored_iscsi_volumes_input() :: #{
%%   <<"VolumeARNs">> := list(string()())
%% }
-type describe_stored_iscsi_volumes_input() :: #{binary() => any()}.

%% Example:
%% describe_file_system_associations_input() :: #{
%%   <<"FileSystemAssociationARNList">> := list(string()())
%% }
-type describe_file_system_associations_input() :: #{binary() => any()}.

%% Example:
%% disk() :: #{
%%   <<"DiskAllocationResource">> => string(),
%%   <<"DiskAllocationType">> => string(),
%%   <<"DiskAttributeList">> => list(string()()),
%%   <<"DiskId">> => string(),
%%   <<"DiskNode">> => string(),
%%   <<"DiskPath">> => string(),
%%   <<"DiskSizeInBytes">> => float(),
%%   <<"DiskStatus">> => string()
%% }
-type disk() :: #{binary() => any()}.

%% Example:
%% describe_tapes_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"Tapes">> => list(tape()())
%% }
-type describe_tapes_output() :: #{binary() => any()}.

%% Example:
%% list_automatic_tape_creation_policies_output() :: #{
%%   <<"AutomaticTapeCreationPolicyInfos">> => list(automatic_tape_creation_policy_info()())
%% }
-type list_automatic_tape_creation_policies_output() :: #{binary() => any()}.

%% Example:
%% add_cache_input() :: #{
%%   <<"DiskIds">> := list(string()()),
%%   <<"GatewayARN">> := string()
%% }
-type add_cache_input() :: #{binary() => any()}.

%% Example:
%% shutdown_gateway_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type shutdown_gateway_output() :: #{binary() => any()}.

%% Example:
%% list_volumes_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Marker">> => string(),
%%   <<"VolumeInfos">> => list(volume_info()())
%% }
-type list_volumes_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% chap_info() :: #{
%%   <<"InitiatorName">> => string(),
%%   <<"SecretToAuthenticateInitiator">> => string(),
%%   <<"SecretToAuthenticateTarget">> => string(),
%%   <<"TargetARN">> => string()
%% }
-type chap_info() :: #{binary() => any()}.

%% Example:
%% add_upload_buffer_input() :: #{
%%   <<"DiskIds">> := list(string()()),
%%   <<"GatewayARN">> := string()
%% }
-type add_upload_buffer_input() :: #{binary() => any()}.

%% Example:
%% create_cached_iscsi_volume_output() :: #{
%%   <<"TargetARN">> => string(),
%%   <<"VolumeARN">> => string()
%% }
-type create_cached_iscsi_volume_output() :: #{binary() => any()}.

%% Example:
%% update_automatic_tape_creation_policy_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_automatic_tape_creation_policy_output() :: #{binary() => any()}.

%% Example:
%% automatic_tape_creation_policy_info() :: #{
%%   <<"AutomaticTapeCreationRules">> => list(automatic_tape_creation_rule()()),
%%   <<"GatewayARN">> => string()
%% }
-type automatic_tape_creation_policy_info() :: #{binary() => any()}.

%% Example:
%% update_chap_credentials_output() :: #{
%%   <<"InitiatorName">> => string(),
%%   <<"TargetARN">> => string()
%% }
-type update_chap_credentials_output() :: #{binary() => any()}.

%% Example:
%% retrieve_tape_archive_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"TapeARN">> := string()
%% }
-type retrieve_tape_archive_input() :: #{binary() => any()}.

%% Example:
%% delete_automatic_tape_creation_policy_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type delete_automatic_tape_creation_policy_output() :: #{binary() => any()}.

%% Example:
%% update_automatic_tape_creation_policy_input() :: #{
%%   <<"AutomaticTapeCreationRules">> := list(automatic_tape_creation_rule()()),
%%   <<"GatewayARN">> := string()
%% }
-type update_automatic_tape_creation_policy_input() :: #{binary() => any()}.

%% Example:
%% create_tapes_input() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"GatewayARN">> := string(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"NumTapesToCreate">> := integer(),
%%   <<"PoolId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TapeBarcodePrefix">> := string(),
%%   <<"TapeSizeInBytes">> := float(),
%%   <<"Worm">> => boolean()
%% }
-type create_tapes_input() :: #{binary() => any()}.

%% Example:
%% delete_gateway_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type delete_gateway_output() :: #{binary() => any()}.

%% Example:
%% nfs_file_share_info() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"BucketRegion">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"ClientList">> => list(string()()),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareARN">> => string(),
%%   <<"FileShareId">> => string(),
%%   <<"FileShareName">> => string(),
%%   <<"FileShareStatus">> => string(),
%%   <<"GatewayARN">> => string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"LocationARN">> => string(),
%%   <<"NFSFileShareDefaults">> => nfs_file_share_defaults(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"Path">> => string(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"Role">> => string(),
%%   <<"Squash">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VPCEndpointDNSName">> => string()
%% }
-type nfs_file_share_info() :: #{binary() => any()}.

%% Example:
%% file_system_association_info() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"EndpointNetworkConfiguration">> => endpoint_network_configuration(),
%%   <<"FileSystemAssociationARN">> => string(),
%%   <<"FileSystemAssociationStatus">> => string(),
%%   <<"FileSystemAssociationStatusDetails">> => list(file_system_association_status_detail()()),
%%   <<"GatewayARN">> => string(),
%%   <<"LocationARN">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type file_system_association_info() :: #{binary() => any()}.

%% Example:
%% describe_working_storage_output() :: #{
%%   <<"DiskIds">> => list(string()()),
%%   <<"GatewayARN">> => string(),
%%   <<"WorkingStorageAllocatedInBytes">> => float(),
%%   <<"WorkingStorageUsedInBytes">> => float()
%% }
-type describe_working_storage_output() :: #{binary() => any()}.

%% Example:
%% delete_cache_report_output() :: #{
%%   <<"CacheReportARN">> => string()
%% }
-type delete_cache_report_output() :: #{binary() => any()}.

%% Example:
%% create_stored_iscsi_volume_output() :: #{
%%   <<"TargetARN">> => string(),
%%   <<"VolumeARN">> => string(),
%%   <<"VolumeSizeInBytes">> => float()
%% }
-type create_stored_iscsi_volume_output() :: #{binary() => any()}.

%% Example:
%% tape_archive() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"KMSKey">> => string(),
%%   <<"PoolEntryDate">> => non_neg_integer(),
%%   <<"PoolId">> => string(),
%%   <<"RetentionStartDate">> => non_neg_integer(),
%%   <<"RetrievedTo">> => string(),
%%   <<"TapeARN">> => string(),
%%   <<"TapeBarcode">> => string(),
%%   <<"TapeCreatedDate">> => non_neg_integer(),
%%   <<"TapeSizeInBytes">> => float(),
%%   <<"TapeStatus">> => string(),
%%   <<"TapeUsedInBytes">> => float(),
%%   <<"Worm">> => boolean()
%% }
-type tape_archive() :: #{binary() => any()}.

%% Example:
%% file_system_association_summary() :: #{
%%   <<"FileSystemAssociationARN">> => string(),
%%   <<"FileSystemAssociationId">> => string(),
%%   <<"FileSystemAssociationStatus">> => string(),
%%   <<"GatewayARN">> => string()
%% }
-type file_system_association_summary() :: #{binary() => any()}.

%% Example:
%% attach_volume_output() :: #{
%%   <<"TargetARN">> => string(),
%%   <<"VolumeARN">> => string()
%% }
-type attach_volume_output() :: #{binary() => any()}.

%% Example:
%% update_maintenance_start_time_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_maintenance_start_time_output() :: #{binary() => any()}.

%% Example:
%% describe_availability_monitor_test_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type describe_availability_monitor_test_output() :: #{binary() => any()}.

%% Example:
%% list_tape_pools_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"PoolARNs">> => list(string()())
%% }
-type list_tape_pools_input() :: #{binary() => any()}.

%% Example:
%% describe_tape_archives_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"TapeArchives">> => list(tape_archive()())
%% }
-type describe_tape_archives_output() :: #{binary() => any()}.

%% Example:
%% update_nfs_file_share_input() :: #{
%%   <<"AuditDestinationARN">> => string(),
%%   <<"CacheAttributes">> => cache_attributes(),
%%   <<"ClientList">> => list(string()()),
%%   <<"DefaultStorageClass">> => string(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"FileShareARN">> := string(),
%%   <<"FileShareName">> => string(),
%%   <<"GuessMIMETypeEnabled">> => boolean(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"NFSFileShareDefaults">> => nfs_file_share_defaults(),
%%   <<"NotificationPolicy">> => string(),
%%   <<"ObjectACL">> => list(any()),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"Squash">> => string()
%% }
-type update_nfs_file_share_input() :: #{binary() => any()}.

%% Example:
%% set_smb_guest_password_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"Password">> := string()
%% }
-type set_smb_guest_password_input() :: #{binary() => any()}.

%% Example:
%% update_gateway_software_now_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_gateway_software_now_output() :: #{binary() => any()}.

%% Example:
%% update_bandwidth_rate_limit_schedule_input() :: #{
%%   <<"BandwidthRateLimitIntervals">> := list(bandwidth_rate_limit_interval()()),
%%   <<"GatewayARN">> := string()
%% }
-type update_bandwidth_rate_limit_schedule_input() :: #{binary() => any()}.

%% Example:
%% disassociate_file_system_output() :: #{
%%   <<"FileSystemAssociationARN">> => string()
%% }
-type disassociate_file_system_output() :: #{binary() => any()}.

%% Example:
%% refresh_cache_output() :: #{
%%   <<"FileShareARN">> => string(),
%%   <<"NotificationId">> => string()
%% }
-type refresh_cache_output() :: #{binary() => any()}.

%% Example:
%% smb_local_groups() :: #{
%%   <<"GatewayAdmins">> => list(string()())
%% }
-type smb_local_groups() :: #{binary() => any()}.

%% Example:
%% describe_bandwidth_rate_limit_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_bandwidth_rate_limit_input() :: #{binary() => any()}.

%% Example:
%% update_bandwidth_rate_limit_schedule_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_bandwidth_rate_limit_schedule_output() :: #{binary() => any()}.

%% Example:
%% describe_smb_file_shares_input() :: #{
%%   <<"FileShareARNList">> := list(string()())
%% }
-type describe_smb_file_shares_input() :: #{binary() => any()}.

%% Example:
%% describe_chap_credentials_input() :: #{
%%   <<"TargetARN">> := string()
%% }
-type describe_chap_credentials_input() :: #{binary() => any()}.

%% Example:
%% update_gateway_software_now_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type update_gateway_software_now_input() :: #{binary() => any()}.

%% Example:
%% update_smb_local_groups_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type update_smb_local_groups_output() :: #{binary() => any()}.

%% Example:
%% describe_tape_recovery_points_output() :: #{
%%   <<"GatewayARN">> => string(),
%%   <<"Marker">> => string(),
%%   <<"TapeRecoveryPointInfos">> => list(tape_recovery_point_info()())
%% }
-type describe_tape_recovery_points_output() :: #{binary() => any()}.

%% Example:
%% cache_attributes() :: #{
%%   <<"CacheStaleTimeoutInSeconds">> => integer()
%% }
-type cache_attributes() :: #{binary() => any()}.

%% Example:
%% create_tape_pool_output() :: #{
%%   <<"PoolARN">> => string()
%% }
-type create_tape_pool_output() :: #{binary() => any()}.

%% Example:
%% file_system_association_status_detail() :: #{
%%   <<"ErrorCode">> => string()
%% }
-type file_system_association_status_detail() :: #{binary() => any()}.

%% Example:
%% update_smb_security_strategy_input() :: #{
%%   <<"GatewayARN">> := string(),
%%   <<"SMBSecurityStrategy">> := list(any())
%% }
-type update_smb_security_strategy_input() :: #{binary() => any()}.

%% Example:
%% describe_working_storage_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_working_storage_input() :: #{binary() => any()}.

%% Example:
%% describe_upload_buffer_output() :: #{
%%   <<"DiskIds">> => list(string()()),
%%   <<"GatewayARN">> => string(),
%%   <<"UploadBufferAllocatedInBytes">> => float(),
%%   <<"UploadBufferUsedInBytes">> => float()
%% }
-type describe_upload_buffer_output() :: #{binary() => any()}.

%% Example:
%% list_tapes_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Marker">> => string(),
%%   <<"TapeARNs">> => list(string()())
%% }
-type list_tapes_input() :: #{binary() => any()}.

%% Example:
%% activate_gateway_input() :: #{
%%   <<"ActivationKey">> := string(),
%%   <<"GatewayName">> := string(),
%%   <<"GatewayRegion">> := string(),
%%   <<"GatewayTimezone">> := string(),
%%   <<"GatewayType">> => string(),
%%   <<"MediumChangerType">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TapeDriveType">> => string()
%% }
-type activate_gateway_input() :: #{binary() => any()}.

%% Example:
%% describe_cached_iscsi_volumes_output() :: #{
%%   <<"CachediSCSIVolumes">> => list(cached_iscsi_volume()())
%% }
-type describe_cached_iscsi_volumes_output() :: #{binary() => any()}.

%% Example:
%% describe_nfs_file_shares_input() :: #{
%%   <<"FileShareARNList">> := list(string()())
%% }
-type describe_nfs_file_shares_input() :: #{binary() => any()}.

%% Example:
%% disassociate_file_system_input() :: #{
%%   <<"FileSystemAssociationARN">> := string(),
%%   <<"ForceDelete">> => boolean()
%% }
-type disassociate_file_system_input() :: #{binary() => any()}.

%% Example:
%% delete_automatic_tape_creation_policy_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type delete_automatic_tape_creation_policy_input() :: #{binary() => any()}.

%% Example:
%% add_upload_buffer_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type add_upload_buffer_output() :: #{binary() => any()}.

%% Example:
%% update_chap_credentials_input() :: #{
%%   <<"InitiatorName">> := string(),
%%   <<"SecretToAuthenticateInitiator">> := string(),
%%   <<"SecretToAuthenticateTarget">> => string(),
%%   <<"TargetARN">> := string()
%% }
-type update_chap_credentials_input() :: #{binary() => any()}.

%% Example:
%% delete_bandwidth_rate_limit_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type delete_bandwidth_rate_limit_output() :: #{binary() => any()}.

%% Example:
%% create_cached_iscsi_volume_input() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"GatewayARN">> := string(),
%%   <<"KMSEncrypted">> => boolean(),
%%   <<"KMSKey">> => string(),
%%   <<"NetworkInterfaceId">> := string(),
%%   <<"SnapshotId">> => string(),
%%   <<"SourceVolumeARN">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetName">> := string(),
%%   <<"VolumeSizeInBytes">> := float()
%% }
-type create_cached_iscsi_volume_input() :: #{binary() => any()}.

%% Example:
%% describe_bandwidth_rate_limit_schedule_input() :: #{
%%   <<"GatewayARN">> := string()
%% }
-type describe_bandwidth_rate_limit_schedule_input() :: #{binary() => any()}.

%% Example:
%% delete_volume_output() :: #{
%%   <<"VolumeARN">> => string()
%% }
-type delete_volume_output() :: #{binary() => any()}.

%% Example:
%% set_smb_guest_password_output() :: #{
%%   <<"GatewayARN">> => string()
%% }
-type set_smb_guest_password_output() :: #{binary() => any()}.

%% Example:
%% cancel_cache_report_output() :: #{
%%   <<"CacheReportARN">> => string()
%% }
-type cancel_cache_report_output() :: #{binary() => any()}.

%% Example:
%% add_working_storage_input() :: #{
%%   <<"DiskIds">> := list(string()()),
%%   <<"GatewayARN">> := string()
%% }
-type add_working_storage_input() :: #{binary() => any()}.

%% Example:
%% update_smb_file_share_output() :: #{
%%   <<"FileShareARN">> => string()
%% }
-type update_smb_file_share_output() :: #{binary() => any()}.

%% Example:
%% refresh_cache_input() :: #{
%%   <<"FileShareARN">> := string(),
%%   <<"FolderList">> => list(string()()),
%%   <<"Recursive">> => boolean()
%% }
-type refresh_cache_input() :: #{binary() => any()}.

%% Example:
%% invalid_gateway_request_exception() :: #{
%%   <<"error">> => storage_gateway_error(),
%%   <<"message">> => string()
%% }
-type invalid_gateway_request_exception() :: #{binary() => any()}.

-type activate_gateway_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type add_cache_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type add_tags_to_resource_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type add_upload_buffer_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type add_working_storage_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type assign_tape_pool_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type associate_file_system_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type attach_volume_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type cancel_archival_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type cancel_cache_report_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type cancel_retrieval_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_cached_iscsi_volume_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_nfs_file_share_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_smb_file_share_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_snapshot_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error() | 
    service_unavailable_error().

-type create_snapshot_from_volume_recovery_point_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error() | 
    service_unavailable_error().

-type create_stored_iscsi_volume_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_tape_pool_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_tape_with_barcode_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type create_tapes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_automatic_tape_creation_policy_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_bandwidth_rate_limit_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_cache_report_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_chap_credentials_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_file_share_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_gateway_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_snapshot_schedule_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_tape_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_tape_archive_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_tape_pool_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type delete_volume_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_availability_monitor_test_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_bandwidth_rate_limit_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_bandwidth_rate_limit_schedule_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_cache_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_cache_report_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_cached_iscsi_volumes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_chap_credentials_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_file_system_associations_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_gateway_information_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_maintenance_start_time_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_nfs_file_shares_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_smb_file_shares_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_smb_settings_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_snapshot_schedule_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_stored_iscsi_volumes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_tape_archives_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_tape_recovery_points_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_tapes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_upload_buffer_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_vtl_devices_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type describe_working_storage_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type detach_volume_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type disable_gateway_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type disassociate_file_system_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type join_domain_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_automatic_tape_creation_policies_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_cache_reports_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_file_shares_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_file_system_associations_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_gateways_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_local_disks_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_tags_for_resource_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_tape_pools_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_tapes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_volume_initiators_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_volume_recovery_points_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type list_volumes_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type notify_when_uploaded_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type refresh_cache_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type remove_tags_from_resource_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type reset_cache_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type retrieve_tape_archive_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type retrieve_tape_recovery_point_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type set_local_console_password_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type set_smb_guest_password_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type shutdown_gateway_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type start_availability_monitor_test_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type start_cache_report_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type start_gateway_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_automatic_tape_creation_policy_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_bandwidth_rate_limit_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_bandwidth_rate_limit_schedule_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_chap_credentials_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_file_system_association_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_gateway_information_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_gateway_software_now_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_maintenance_start_time_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_nfs_file_share_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_smb_file_share_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_smb_file_share_visibility_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_smb_local_groups_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_smb_security_strategy_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_snapshot_schedule_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

-type update_vtl_device_type_errors() ::
    invalid_gateway_request_exception() | 
    internal_server_error().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates the gateway you previously deployed on your host.
%%
%% In the activation process,
%% you specify information such as the Amazon Web Services Region that you
%% want to use for
%% storing snapshots or tapes, the time zone for scheduled snapshots the
%% gateway snapshot
%% schedule window, an activation key, and a name for your gateway. The
%% activation process
%% also associates your gateway with your account. For more information, see
%% `UpdateGatewayInformation'.
%%
%% You must turn on the gateway VM before you can activate your gateway.
-spec activate_gateway(aws_client:aws_client(), activate_gateway_input()) ->
    {ok, activate_gateway_output(), tuple()} |
    {error, any()} |
    {error, activate_gateway_errors(), tuple()}.
activate_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_gateway(Client, Input, []).

-spec activate_gateway(aws_client:aws_client(), activate_gateway_input(), proplists:proplist()) ->
    {ok, activate_gateway_output(), tuple()} |
    {error, any()} |
    {error, activate_gateway_errors(), tuple()}.
activate_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateGateway">>, Input, Options).

%% @doc Configures one or more gateway local disks as cache for a gateway.
%%
%% This operation is
%% only supported in the cached volume, tape, and file gateway type (see How
%% Storage Gateway works (architecture):
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html.
%%
%% In the request, you specify the gateway Amazon Resource Name (ARN) to
%% which you want to
%% add cache, and one or more disk IDs that you want to configure as cache.
-spec add_cache(aws_client:aws_client(), add_cache_input()) ->
    {ok, add_cache_output(), tuple()} |
    {error, any()} |
    {error, add_cache_errors(), tuple()}.
add_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_cache(Client, Input, []).

-spec add_cache(aws_client:aws_client(), add_cache_input(), proplists:proplist()) ->
    {ok, add_cache_output(), tuple()} |
    {error, any()} |
    {error, add_cache_errors(), tuple()}.
add_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCache">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
%%
%% You use tags to add metadata to
%% resources, which you can use to categorize these resources. For example,
%% you can categorize
%% resources by purpose, owner, environment, or team. Each tag consists of a
%% key and a value,
%% which you define. You can add tags to the following Storage Gateway
%% resources:
%%
%% Storage gateways of all types
%%
%% Storage volumes
%%
%% Virtual tapes
%%
%% NFS and SMB file shares
%%
%% File System associations
%%
%% You can create a maximum of 50 tags for each resource. Virtual tapes and
%% storage volumes
%% that are recovered to a new gateway maintain their tags.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_input()) ->
    {ok, add_tags_to_resource_output(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_input(), proplists:proplist()) ->
    {ok, add_tags_to_resource_output(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Configures one or more gateway local disks as upload buffer for a
%% specified gateway.
%%
%% This operation is supported for the stored volume, cached volume, and tape
%% gateway
%% types.
%%
%% In the request, you specify the gateway Amazon Resource Name (ARN) to
%% which you want to
%% add upload buffer, and one or more disk IDs that you want to configure as
%% upload
%% buffer.
-spec add_upload_buffer(aws_client:aws_client(), add_upload_buffer_input()) ->
    {ok, add_upload_buffer_output(), tuple()} |
    {error, any()} |
    {error, add_upload_buffer_errors(), tuple()}.
add_upload_buffer(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_upload_buffer(Client, Input, []).

-spec add_upload_buffer(aws_client:aws_client(), add_upload_buffer_input(), proplists:proplist()) ->
    {ok, add_upload_buffer_output(), tuple()} |
    {error, any()} |
    {error, add_upload_buffer_errors(), tuple()}.
add_upload_buffer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddUploadBuffer">>, Input, Options).

%% @doc Configures one or more gateway local disks as working storage for a
%% gateway.
%%
%% This
%% operation is only supported in the stored volume gateway type. This
%% operation is deprecated
%% in cached volume API version 20120630. Use `AddUploadBuffer'
%% instead.
%%
%% Working storage is also referred to as upload buffer. You can also use the
%% `AddUploadBuffer' operation to add upload buffer to a stored volume
%% gateway.
%%
%% In the request, you specify the gateway Amazon Resource Name (ARN) to
%% which you want to
%% add working storage, and one or more disk IDs that you want to configure
%% as working
%% storage.
-spec add_working_storage(aws_client:aws_client(), add_working_storage_input()) ->
    {ok, add_working_storage_output(), tuple()} |
    {error, any()} |
    {error, add_working_storage_errors(), tuple()}.
add_working_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_working_storage(Client, Input, []).

-spec add_working_storage(aws_client:aws_client(), add_working_storage_input(), proplists:proplist()) ->
    {ok, add_working_storage_output(), tuple()} |
    {error, any()} |
    {error, add_working_storage_errors(), tuple()}.
add_working_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddWorkingStorage">>, Input, Options).

%% @doc Assigns a tape to a tape pool for archiving.
%%
%% The tape assigned to a pool is archived in
%% the S3 storage class that is associated with the pool. When you use your
%% backup application
%% to eject the tape, the tape is archived directly into the S3 storage class
%% (S3 Glacier or
%% S3 Glacier Deep Archive) that corresponds to the pool.
-spec assign_tape_pool(aws_client:aws_client(), assign_tape_pool_input()) ->
    {ok, assign_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, assign_tape_pool_errors(), tuple()}.
assign_tape_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_tape_pool(Client, Input, []).

-spec assign_tape_pool(aws_client:aws_client(), assign_tape_pool_input(), proplists:proplist()) ->
    {ok, assign_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, assign_tape_pool_errors(), tuple()}.
assign_tape_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignTapePool">>, Input, Options).

%% @doc Associate an Amazon FSx file system with the FSx File Gateway.
%%
%% After the
%% association process is complete, the file shares on the Amazon FSx file
%% system are
%% available for access through the gateway. This operation only supports the
%% FSx File Gateway
%% type.
-spec associate_file_system(aws_client:aws_client(), associate_file_system_input()) ->
    {ok, associate_file_system_output(), tuple()} |
    {error, any()} |
    {error, associate_file_system_errors(), tuple()}.
associate_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_file_system(Client, Input, []).

-spec associate_file_system(aws_client:aws_client(), associate_file_system_input(), proplists:proplist()) ->
    {ok, associate_file_system_output(), tuple()} |
    {error, any()} |
    {error, associate_file_system_errors(), tuple()}.
associate_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFileSystem">>, Input, Options).

%% @doc Connects a volume to an iSCSI connection and then attaches the volume
%% to the specified
%% gateway.
%%
%% Detaching and attaching a volume enables you to recover your data from one
%% gateway
%% to a different gateway without creating a snapshot. It also makes it
%% easier to move your
%% volumes from an on-premises gateway to a gateway hosted on an Amazon EC2
%% instance.
-spec attach_volume(aws_client:aws_client(), attach_volume_input()) ->
    {ok, attach_volume_output(), tuple()} |
    {error, any()} |
    {error, attach_volume_errors(), tuple()}.
attach_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_volume(Client, Input, []).

-spec attach_volume(aws_client:aws_client(), attach_volume_input(), proplists:proplist()) ->
    {ok, attach_volume_output(), tuple()} |
    {error, any()} |
    {error, attach_volume_errors(), tuple()}.
attach_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachVolume">>, Input, Options).

%% @doc Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
%% after the archiving
%% process is initiated.
%%
%% This operation is only supported in the tape gateway type.
-spec cancel_archival(aws_client:aws_client(), cancel_archival_input()) ->
    {ok, cancel_archival_output(), tuple()} |
    {error, any()} |
    {error, cancel_archival_errors(), tuple()}.
cancel_archival(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_archival(Client, Input, []).

-spec cancel_archival(aws_client:aws_client(), cancel_archival_input(), proplists:proplist()) ->
    {ok, cancel_archival_output(), tuple()} |
    {error, any()} |
    {error, cancel_archival_errors(), tuple()}.
cancel_archival(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelArchival">>, Input, Options).

%% @doc Cancels generation of a specified cache report.
%%
%% You can use this operation to manually
%% cancel an IN-PROGRESS report for any reason. This action changes the
%% report status from
%% IN-PROGRESS to CANCELLED. You can only cancel in-progress reports. If the
%% the report you
%% attempt to cancel is in FAILED, ERROR, or COMPLETED state, the cancel
%% operation returns an
%% error.
-spec cancel_cache_report(aws_client:aws_client(), cancel_cache_report_input()) ->
    {ok, cancel_cache_report_output(), tuple()} |
    {error, any()} |
    {error, cancel_cache_report_errors(), tuple()}.
cancel_cache_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_cache_report(Client, Input, []).

-spec cancel_cache_report(aws_client:aws_client(), cancel_cache_report_input(), proplists:proplist()) ->
    {ok, cancel_cache_report_output(), tuple()} |
    {error, any()} |
    {error, cancel_cache_report_errors(), tuple()}.
cancel_cache_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCacheReport">>, Input, Options).

%% @doc Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
%% to a gateway after
%% the retrieval process is initiated.
%%
%% The virtual tape is returned to the VTS. This operation
%% is only supported in the tape gateway type.
-spec cancel_retrieval(aws_client:aws_client(), cancel_retrieval_input()) ->
    {ok, cancel_retrieval_output(), tuple()} |
    {error, any()} |
    {error, cancel_retrieval_errors(), tuple()}.
cancel_retrieval(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_retrieval(Client, Input, []).

-spec cancel_retrieval(aws_client:aws_client(), cancel_retrieval_input(), proplists:proplist()) ->
    {ok, cancel_retrieval_output(), tuple()} |
    {error, any()} |
    {error, cancel_retrieval_errors(), tuple()}.
cancel_retrieval(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelRetrieval">>, Input, Options).

%% @doc Creates a cached volume on a specified cached volume gateway.
%%
%% This operation is only
%% supported in the cached volume gateway type.
%%
%% Cache storage must be allocated to the gateway before you can create a
%% cached volume.
%% Use the `AddCache' operation to add cache storage to a gateway.
%%
%% In the request, you must specify the gateway, size of the volume in bytes,
%% the iSCSI
%% target name, an IP address on which to expose the target, and a unique
%% client token. In
%% response, the gateway creates the volume and returns information about it.
%% This information
%% includes the volume Amazon Resource Name (ARN), its size, and the iSCSI
%% target ARN that
%% initiators can use to connect to the volume target.
%%
%% Optionally, you can provide the ARN for an existing volume as the
%% `SourceVolumeARN' for this cached volume, which creates an exact copy
%% of the
%% existing volume’s latest recovery point. The `VolumeSizeInBytes' value
%% must be
%% equal to or larger than the size of the copied volume, in bytes.
-spec create_cached_iscsi_volume(aws_client:aws_client(), create_cached_iscsi_volume_input()) ->
    {ok, create_cached_iscsi_volume_output(), tuple()} |
    {error, any()} |
    {error, create_cached_iscsi_volume_errors(), tuple()}.
create_cached_iscsi_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cached_iscsi_volume(Client, Input, []).

-spec create_cached_iscsi_volume(aws_client:aws_client(), create_cached_iscsi_volume_input(), proplists:proplist()) ->
    {ok, create_cached_iscsi_volume_output(), tuple()} |
    {error, any()} |
    {error, create_cached_iscsi_volume_errors(), tuple()}.
create_cached_iscsi_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCachediSCSIVolume">>, Input, Options).

%% @doc Creates a Network File System (NFS) file share on an existing S3 File
%% Gateway.
%%
%% In
%% Storage Gateway, a file share is a file system mount point backed by
%% Amazon S3
%% cloud storage. Storage Gateway exposes file shares using an NFS interface.
%% This operation
%% is only supported for S3 File Gateways.
%%
%% S3 File gateway requires Security Token Service (Amazon Web Services STS)
%% to be
%% activated to enable you to create a file share. Make sure Amazon Web
%% Services STS is
%% activated in the Amazon Web Services Region you are creating your S3 File
%% Gateway in. If
%% Amazon Web Services STS is not activated in the Amazon Web Services
%% Region, activate
%% it. For information about how to activate Amazon Web Services STS, see
%% Activating and
%% deactivating Amazon Web Services STS in an Amazon Web Services Region:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
%% in the
%% Identity and Access Management User Guide.
%%
%% S3 File Gateways do not support creating hard or symbolic links on a file
%% share.
-spec create_nfs_file_share(aws_client:aws_client(), create_nfs_file_share_input()) ->
    {ok, create_nfs_file_share_output(), tuple()} |
    {error, any()} |
    {error, create_nfs_file_share_errors(), tuple()}.
create_nfs_file_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_nfs_file_share(Client, Input, []).

-spec create_nfs_file_share(aws_client:aws_client(), create_nfs_file_share_input(), proplists:proplist()) ->
    {ok, create_nfs_file_share_output(), tuple()} |
    {error, any()} |
    {error, create_nfs_file_share_errors(), tuple()}.
create_nfs_file_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNFSFileShare">>, Input, Options).

%% @doc Creates a Server Message Block (SMB) file share on an existing S3
%% File Gateway.
%%
%% In
%% Storage Gateway, a file share is a file system mount point backed by
%% Amazon S3
%% cloud storage. Storage Gateway exposes file shares using an SMB interface.
%% This operation
%% is only supported for S3 File Gateways.
%%
%% S3 File Gateways require Security Token Service (Amazon Web Services STS)
%% to be
%% activated to enable you to create a file share. Make sure that Amazon Web
%% Services STS
%% is activated in the Amazon Web Services Region you are creating your S3
%% File Gateway in.
%% If Amazon Web Services STS is not activated in this Amazon Web Services
%% Region, activate
%% it. For information about how to activate Amazon Web Services STS, see
%% Activating and
%% deactivating Amazon Web Services STS in an Amazon Web Services Region:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
%% in the
%% Identity and Access Management User Guide.
%%
%% File gateways don't support creating hard or symbolic links on a file
%% share.
-spec create_smb_file_share(aws_client:aws_client(), create_smb_file_share_input()) ->
    {ok, create_smb_file_share_output(), tuple()} |
    {error, any()} |
    {error, create_smb_file_share_errors(), tuple()}.
create_smb_file_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_smb_file_share(Client, Input, []).

-spec create_smb_file_share(aws_client:aws_client(), create_smb_file_share_input(), proplists:proplist()) ->
    {ok, create_smb_file_share_output(), tuple()} |
    {error, any()} |
    {error, create_smb_file_share_errors(), tuple()}.
create_smb_file_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSMBFileShare">>, Input, Options).

%% @doc Initiates a snapshot of a volume.
%%
%% Storage Gateway provides the ability to back up point-in-time snapshots of
%% your
%% data to Amazon Simple Storage (Amazon S3) for durable off-site recovery,
%% and also
%% import the data to an Amazon Elastic Block Store (EBS) volume in Amazon
%% Elastic Compute
%% Cloud (EC2). You can take snapshots of your gateway volume on a scheduled
%% or ad hoc basis.
%% This API enables you to take an ad hoc snapshot. For more information, see
%% Editing a
%% snapshot schedule:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot.
%%
%% In the `CreateSnapshot' request, you identify the volume by providing
%% its
%% Amazon Resource Name (ARN). You must also provide description for the
%% snapshot. When
%% Storage Gateway takes the snapshot of specified volume, the snapshot and
%% description appears in the Storage Gateway console. In response, Storage
%% Gateway
%% returns you a snapshot ID. You can use this snapshot ID to check the
%% snapshot progress or
%% later use it when you want to create a volume from a snapshot. This
%% operation is only
%% supported in stored and cached volume gateway type.
%%
%% To list or delete a snapshot, you must use the Amazon EC2 API. For more
%% information,
%% see DescribeSnapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
%% or DeleteSnapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html
%% in the Amazon Elastic Compute Cloud API
%% Reference.
%%
%% Volume and snapshot IDs are changing to a longer length ID format. For
%% more
%% information, see the important note on the Welcome:
%% https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html
%% page.
-spec create_snapshot(aws_client:aws_client(), create_snapshot_input()) ->
    {ok, create_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_input(), proplists:proplist()) ->
    {ok, create_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Initiates a snapshot of a gateway from a volume recovery point.
%%
%% This operation is only
%% supported in the cached volume gateway type.
%%
%% A volume recovery point is a point in time at which all data of the volume
%% is consistent
%% and from which you can create a snapshot. To get a list of volume recovery
%% point for cached
%% volume gateway, use `ListVolumeRecoveryPoints'.
%%
%% In the `CreateSnapshotFromVolumeRecoveryPoint' request, you identify
%% the
%% volume by providing its Amazon Resource Name (ARN). You must also provide
%% a description for
%% the snapshot. When the gateway takes a snapshot of the specified volume,
%% the snapshot and
%% its description appear in the Storage Gateway console.
%% In response, the gateway returns
%% you a snapshot ID. You can use this snapshot ID to check the snapshot
%% progress or later use
%% it when you want to create a volume from a snapshot.
%%
%% To list or delete a snapshot, you must use the Amazon EC2 API. For more
%% information,
%% see DescribeSnapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
%% or DeleteSnapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html
%% in the Amazon Elastic Compute Cloud API
%% Reference.
-spec create_snapshot_from_volume_recovery_point(aws_client:aws_client(), create_snapshot_from_volume_recovery_point_input()) ->
    {ok, create_snapshot_from_volume_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_from_volume_recovery_point_errors(), tuple()}.
create_snapshot_from_volume_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_from_volume_recovery_point(Client, Input, []).

-spec create_snapshot_from_volume_recovery_point(aws_client:aws_client(), create_snapshot_from_volume_recovery_point_input(), proplists:proplist()) ->
    {ok, create_snapshot_from_volume_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_from_volume_recovery_point_errors(), tuple()}.
create_snapshot_from_volume_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotFromVolumeRecoveryPoint">>, Input, Options).

%% @doc Creates a volume on a specified gateway.
%%
%% This operation is only supported in the stored
%% volume gateway type.
%%
%% The size of the volume to create is inferred from the disk size. You can
%% choose to
%% preserve existing data on the disk, create volume from an existing
%% snapshot, or create an
%% empty volume. If you choose to create an empty gateway volume, then any
%% existing data on
%% the disk is erased.
%%
%% In the request, you must specify the gateway and the disk information on
%% which you are
%% creating the volume. In response, the gateway creates the volume and
%% returns volume
%% information such as the volume Amazon Resource Name (ARN), its size, and
%% the iSCSI target
%% ARN that initiators can use to connect to the volume target.
-spec create_stored_iscsi_volume(aws_client:aws_client(), create_stored_iscsi_volume_input()) ->
    {ok, create_stored_iscsi_volume_output(), tuple()} |
    {error, any()} |
    {error, create_stored_iscsi_volume_errors(), tuple()}.
create_stored_iscsi_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stored_iscsi_volume(Client, Input, []).

-spec create_stored_iscsi_volume(aws_client:aws_client(), create_stored_iscsi_volume_input(), proplists:proplist()) ->
    {ok, create_stored_iscsi_volume_output(), tuple()} |
    {error, any()} |
    {error, create_stored_iscsi_volume_errors(), tuple()}.
create_stored_iscsi_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorediSCSIVolume">>, Input, Options).

%% @doc Creates a new custom tape pool.
%%
%% You can use custom tape pool to enable tape retention
%% lock on tapes that are archived in the custom pool.
-spec create_tape_pool(aws_client:aws_client(), create_tape_pool_input()) ->
    {ok, create_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, create_tape_pool_errors(), tuple()}.
create_tape_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tape_pool(Client, Input, []).

-spec create_tape_pool(aws_client:aws_client(), create_tape_pool_input(), proplists:proplist()) ->
    {ok, create_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, create_tape_pool_errors(), tuple()}.
create_tape_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTapePool">>, Input, Options).

%% @doc Creates a virtual tape by using your own barcode.
%%
%% You write data to the virtual tape and
%% then archive the tape. A barcode is unique and cannot be reused if it has
%% already been used
%% on a tape. This applies to barcodes used on deleted tapes. This operation
%% is only supported
%% in the tape gateway type.
%%
%% Cache storage must be allocated to the gateway before you can create a
%% virtual tape.
%% Use the `AddCache' operation to add cache storage to a gateway.
-spec create_tape_with_barcode(aws_client:aws_client(), create_tape_with_barcode_input()) ->
    {ok, create_tape_with_barcode_output(), tuple()} |
    {error, any()} |
    {error, create_tape_with_barcode_errors(), tuple()}.
create_tape_with_barcode(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tape_with_barcode(Client, Input, []).

-spec create_tape_with_barcode(aws_client:aws_client(), create_tape_with_barcode_input(), proplists:proplist()) ->
    {ok, create_tape_with_barcode_output(), tuple()} |
    {error, any()} |
    {error, create_tape_with_barcode_errors(), tuple()}.
create_tape_with_barcode(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTapeWithBarcode">>, Input, Options).

%% @doc Creates one or more virtual tapes.
%%
%% You write data to the virtual tapes and then archive
%% the tapes. This operation is only supported in the tape gateway type.
%%
%% Cache storage must be allocated to the gateway before you can create
%% virtual tapes.
%% Use the `AddCache' operation to add cache storage to a gateway.
-spec create_tapes(aws_client:aws_client(), create_tapes_input()) ->
    {ok, create_tapes_output(), tuple()} |
    {error, any()} |
    {error, create_tapes_errors(), tuple()}.
create_tapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tapes(Client, Input, []).

-spec create_tapes(aws_client:aws_client(), create_tapes_input(), proplists:proplist()) ->
    {ok, create_tapes_output(), tuple()} |
    {error, any()} |
    {error, create_tapes_errors(), tuple()}.
create_tapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTapes">>, Input, Options).

%% @doc Deletes the automatic tape creation policy of a gateway.
%%
%% If you delete this policy, new
%% virtual tapes must be created manually. Use the Amazon Resource Name (ARN)
%% of the gateway
%% in your request to remove the policy.
-spec delete_automatic_tape_creation_policy(aws_client:aws_client(), delete_automatic_tape_creation_policy_input()) ->
    {ok, delete_automatic_tape_creation_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_automatic_tape_creation_policy_errors(), tuple()}.
delete_automatic_tape_creation_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_automatic_tape_creation_policy(Client, Input, []).

-spec delete_automatic_tape_creation_policy(aws_client:aws_client(), delete_automatic_tape_creation_policy_input(), proplists:proplist()) ->
    {ok, delete_automatic_tape_creation_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_automatic_tape_creation_policy_errors(), tuple()}.
delete_automatic_tape_creation_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutomaticTapeCreationPolicy">>, Input, Options).

%% @doc Deletes the bandwidth rate limits of a gateway.
%%
%% You can delete either the upload and
%% download bandwidth rate limit, or you can delete both. If you delete only
%% one of the
%% limits, the other limit remains unchanged. To specify which gateway to
%% work with, use the
%% Amazon Resource Name (ARN) of the gateway in your request. This operation
%% is supported only
%% for the stored volume, cached volume, and tape gateway types.
-spec delete_bandwidth_rate_limit(aws_client:aws_client(), delete_bandwidth_rate_limit_input()) ->
    {ok, delete_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, delete_bandwidth_rate_limit_errors(), tuple()}.
delete_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bandwidth_rate_limit(Client, Input, []).

-spec delete_bandwidth_rate_limit(aws_client:aws_client(), delete_bandwidth_rate_limit_input(), proplists:proplist()) ->
    {ok, delete_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, delete_bandwidth_rate_limit_errors(), tuple()}.
delete_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBandwidthRateLimit">>, Input, Options).

%% @doc Deletes the specified cache report and any associated tags from the
%% Storage Gateway database.
%%
%% You can only delete completed reports. If the status of the
%% report you attempt to delete still IN-PROGRESS, the delete operation
%% returns an error. You
%% can use `CancelCacheReport' to cancel an IN-PROGRESS report.
%%
%% `DeleteCacheReport' does not delete the report object from your Amazon
%% S3 bucket.
-spec delete_cache_report(aws_client:aws_client(), delete_cache_report_input()) ->
    {ok, delete_cache_report_output(), tuple()} |
    {error, any()} |
    {error, delete_cache_report_errors(), tuple()}.
delete_cache_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_report(Client, Input, []).

-spec delete_cache_report(aws_client:aws_client(), delete_cache_report_input(), proplists:proplist()) ->
    {ok, delete_cache_report_output(), tuple()} |
    {error, any()} |
    {error, delete_cache_report_errors(), tuple()}.
delete_cache_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheReport">>, Input, Options).

%% @doc Deletes Challenge-Handshake Authentication Protocol (CHAP)
%% credentials for a specified
%% iSCSI target and initiator pair.
%%
%% This operation is supported in volume and tape gateway
%% types.
-spec delete_chap_credentials(aws_client:aws_client(), delete_chap_credentials_input()) ->
    {ok, delete_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, delete_chap_credentials_errors(), tuple()}.
delete_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_chap_credentials(Client, Input, []).

-spec delete_chap_credentials(aws_client:aws_client(), delete_chap_credentials_input(), proplists:proplist()) ->
    {ok, delete_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, delete_chap_credentials_errors(), tuple()}.
delete_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChapCredentials">>, Input, Options).

%% @doc Deletes a file share from an S3 File Gateway.
%%
%% This operation is only supported for S3
%% File Gateways.
-spec delete_file_share(aws_client:aws_client(), delete_file_share_input()) ->
    {ok, delete_file_share_output(), tuple()} |
    {error, any()} |
    {error, delete_file_share_errors(), tuple()}.
delete_file_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_share(Client, Input, []).

-spec delete_file_share(aws_client:aws_client(), delete_file_share_input(), proplists:proplist()) ->
    {ok, delete_file_share_output(), tuple()} |
    {error, any()} |
    {error, delete_file_share_errors(), tuple()}.
delete_file_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileShare">>, Input, Options).

%% @doc Deletes a gateway.
%%
%% To specify which gateway to delete, use the Amazon Resource Name
%% (ARN) of the gateway in your request. The operation deletes the gateway;
%% however, it does
%% not delete the gateway virtual machine (VM) from your host computer.
%%
%% After you delete a gateway, you cannot reactivate it. Completed snapshots
%% of the gateway
%% volumes are not deleted upon deleting the gateway, however, pending
%% snapshots will not
%% complete. After you delete a gateway, your next step is to remove it from
%% your
%% environment.
%%
%% You no longer pay software charges after the gateway is deleted; however,
%% your
%% existing Amazon EBS snapshots persist and you will continue to be billed
%% for these
%% snapshots. You can choose to remove all remaining Amazon EBS snapshots by
%% canceling your
%% Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2
%% subscription, you
%% can delete your snapshots using the Amazon EC2 console. For more
%% information, see the
%% Storage Gateway detail
%% page: http://aws.amazon.com/storagegateway.
-spec delete_gateway(aws_client:aws_client(), delete_gateway_input()) ->
    {ok, delete_gateway_output(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_gateway(Client, Input, []).

-spec delete_gateway(aws_client:aws_client(), delete_gateway_input(), proplists:proplist()) ->
    {ok, delete_gateway_output(), tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGateway">>, Input, Options).

%% @doc Deletes a snapshot of a volume.
%%
%% You can take snapshots of your gateway volumes on a scheduled or ad hoc
%% basis. This API
%% action enables you to delete a snapshot schedule for a volume. For more
%% information, see
%% Backing up your
%% volumes:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html.
%% In the `DeleteSnapshotSchedule' request, you identify the
%% volume by providing its Amazon Resource Name (ARN). This operation is only
%% supported for
%% cached volume gateway types.
%%
%% To list or delete a snapshot, you must use the Amazon EC2 API. For more
%% information,
%% go to DescribeSnapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
%% in the Amazon Elastic Compute Cloud API Reference.
-spec delete_snapshot_schedule(aws_client:aws_client(), delete_snapshot_schedule_input()) ->
    {ok, delete_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_schedule_errors(), tuple()}.
delete_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_schedule(Client, Input, []).

-spec delete_snapshot_schedule(aws_client:aws_client(), delete_snapshot_schedule_input(), proplists:proplist()) ->
    {ok, delete_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_schedule_errors(), tuple()}.
delete_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotSchedule">>, Input, Options).

%% @doc Deletes the specified virtual tape.
%%
%% This operation is only supported in the tape gateway
%% type.
-spec delete_tape(aws_client:aws_client(), delete_tape_input()) ->
    {ok, delete_tape_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_errors(), tuple()}.
delete_tape(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tape(Client, Input, []).

-spec delete_tape(aws_client:aws_client(), delete_tape_input(), proplists:proplist()) ->
    {ok, delete_tape_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_errors(), tuple()}.
delete_tape(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTape">>, Input, Options).

%% @doc Deletes the specified virtual tape from the virtual tape shelf (VTS).
%%
%% This operation is
%% only supported in the tape gateway type.
-spec delete_tape_archive(aws_client:aws_client(), delete_tape_archive_input()) ->
    {ok, delete_tape_archive_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_archive_errors(), tuple()}.
delete_tape_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tape_archive(Client, Input, []).

-spec delete_tape_archive(aws_client:aws_client(), delete_tape_archive_input(), proplists:proplist()) ->
    {ok, delete_tape_archive_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_archive_errors(), tuple()}.
delete_tape_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTapeArchive">>, Input, Options).

%% @doc Delete a custom tape pool.
%%
%% A custom tape pool can only be deleted if there are no tapes
%% in the pool and if there are no automatic tape creation policies that
%% reference the custom
%% tape pool.
-spec delete_tape_pool(aws_client:aws_client(), delete_tape_pool_input()) ->
    {ok, delete_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_pool_errors(), tuple()}.
delete_tape_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tape_pool(Client, Input, []).

-spec delete_tape_pool(aws_client:aws_client(), delete_tape_pool_input(), proplists:proplist()) ->
    {ok, delete_tape_pool_output(), tuple()} |
    {error, any()} |
    {error, delete_tape_pool_errors(), tuple()}.
delete_tape_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTapePool">>, Input, Options).

%% @doc Deletes the specified storage volume that you previously created
%% using the `CreateCachediSCSIVolume' or `CreateStorediSCSIVolume'
%% API.
%%
%% This operation is only supported in the cached volume and stored volume
%% types. For stored
%% volume gateways, the local disk that was configured as the storage volume
%% is not deleted.
%% You can reuse the local disk to create another storage volume.
%%
%% Before you delete a volume, make sure there are no iSCSI connections to
%% the volume you
%% are deleting. You should also make sure there is no snapshot in progress.
%% You can use the
%% Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the
%% volume you are
%% deleting and check the snapshot status. For more information, go to
%% DescribeSnapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
%% in the Amazon Elastic Compute Cloud API
%% Reference.
%%
%% In the request, you must provide the Amazon Resource Name (ARN) of the
%% storage volume
%% you want to delete.
-spec delete_volume(aws_client:aws_client(), delete_volume_input()) ->
    {ok, delete_volume_output(), tuple()} |
    {error, any()} |
    {error, delete_volume_errors(), tuple()}.
delete_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_volume(Client, Input, []).

-spec delete_volume(aws_client:aws_client(), delete_volume_input(), proplists:proplist()) ->
    {ok, delete_volume_output(), tuple()} |
    {error, any()} |
    {error, delete_volume_errors(), tuple()}.
delete_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVolume">>, Input, Options).

%% @doc Returns information about the most recent high availability
%% monitoring test that was
%% performed on the host in a cluster.
%%
%% If a test isn't performed, the status and start
%% time in the response would be null.
-spec describe_availability_monitor_test(aws_client:aws_client(), describe_availability_monitor_test_input()) ->
    {ok, describe_availability_monitor_test_output(), tuple()} |
    {error, any()} |
    {error, describe_availability_monitor_test_errors(), tuple()}.
describe_availability_monitor_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_availability_monitor_test(Client, Input, []).

-spec describe_availability_monitor_test(aws_client:aws_client(), describe_availability_monitor_test_input(), proplists:proplist()) ->
    {ok, describe_availability_monitor_test_output(), tuple()} |
    {error, any()} |
    {error, describe_availability_monitor_test_errors(), tuple()}.
describe_availability_monitor_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailabilityMonitorTest">>, Input, Options).

%% @doc Returns the bandwidth rate limits of a gateway.
%%
%% By default, these limits are not set,
%% which means no bandwidth rate limiting is in effect. This operation is
%% supported only for
%% the stored volume, cached volume, and tape gateway types. To describe
%% bandwidth rate limits
%% for S3 file gateways, use `DescribeBandwidthRateLimitSchedule'.
%%
%% This operation returns a value for a bandwidth rate limit only if the
%% limit is set. If
%% no limits are set for the gateway, then this operation returns only the
%% gateway ARN in the
%% response body. To specify which gateway to describe, use the Amazon
%% Resource Name (ARN) of
%% the gateway in your request.
-spec describe_bandwidth_rate_limit(aws_client:aws_client(), describe_bandwidth_rate_limit_input()) ->
    {ok, describe_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, describe_bandwidth_rate_limit_errors(), tuple()}.
describe_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_bandwidth_rate_limit(Client, Input, []).

-spec describe_bandwidth_rate_limit(aws_client:aws_client(), describe_bandwidth_rate_limit_input(), proplists:proplist()) ->
    {ok, describe_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, describe_bandwidth_rate_limit_errors(), tuple()}.
describe_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBandwidthRateLimit">>, Input, Options).

%% @doc Returns information about the bandwidth rate limit schedule of a
%% gateway.
%%
%% By default,
%% gateways do not have bandwidth rate limit schedules, which means no
%% bandwidth rate limiting
%% is in effect. This operation is supported only for volume, tape and S3
%% file gateways. FSx
%% file gateways do not support bandwidth rate limits.
%%
%% This operation returns information about a gateway's bandwidth rate
%% limit schedule. A
%% bandwidth rate limit schedule consists of one or more bandwidth rate limit
%% intervals. A
%% bandwidth rate limit interval defines a period of time on one or more days
%% of the week,
%% during which bandwidth rate limits are specified for uploading,
%% downloading, or both.
%%
%% A bandwidth rate limit interval consists of one or more days of the week,
%% a start hour
%% and minute, an ending hour and minute, and bandwidth rate limits for
%% uploading and
%% downloading
%%
%% If no bandwidth rate limit schedule intervals are set for the gateway,
%% this operation
%% returns an empty response. To specify which gateway to describe, use the
%% Amazon Resource
%% Name (ARN) of the gateway in your request.
-spec describe_bandwidth_rate_limit_schedule(aws_client:aws_client(), describe_bandwidth_rate_limit_schedule_input()) ->
    {ok, describe_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, describe_bandwidth_rate_limit_schedule_errors(), tuple()}.
describe_bandwidth_rate_limit_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_bandwidth_rate_limit_schedule(Client, Input, []).

-spec describe_bandwidth_rate_limit_schedule(aws_client:aws_client(), describe_bandwidth_rate_limit_schedule_input(), proplists:proplist()) ->
    {ok, describe_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, describe_bandwidth_rate_limit_schedule_errors(), tuple()}.
describe_bandwidth_rate_limit_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBandwidthRateLimitSchedule">>, Input, Options).

%% @doc Returns information about the cache of a gateway.
%%
%% This operation is only supported in
%% the cached volume, tape, and file gateway types.
%%
%% The response includes disk IDs that are configured as cache, and it
%% includes the amount
%% of cache allocated and used.
-spec describe_cache(aws_client:aws_client(), describe_cache_input()) ->
    {ok, describe_cache_output(), tuple()} |
    {error, any()} |
    {error, describe_cache_errors(), tuple()}.
describe_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache(Client, Input, []).

-spec describe_cache(aws_client:aws_client(), describe_cache_input(), proplists:proplist()) ->
    {ok, describe_cache_output(), tuple()} |
    {error, any()} |
    {error, describe_cache_errors(), tuple()}.
describe_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCache">>, Input, Options).

%% @doc Returns information about the specified cache report, including
%% completion status and
%% generation progress.
-spec describe_cache_report(aws_client:aws_client(), describe_cache_report_input()) ->
    {ok, describe_cache_report_output(), tuple()} |
    {error, any()} |
    {error, describe_cache_report_errors(), tuple()}.
describe_cache_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_report(Client, Input, []).

-spec describe_cache_report(aws_client:aws_client(), describe_cache_report_input(), proplists:proplist()) ->
    {ok, describe_cache_report_output(), tuple()} |
    {error, any()} |
    {error, describe_cache_report_errors(), tuple()}.
describe_cache_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheReport">>, Input, Options).

%% @doc Returns a description of the gateway volumes specified in the
%% request.
%%
%% This operation is
%% only supported in the cached volume gateway types.
%%
%% The list of gateway volumes in the request must be from one gateway. In
%% the response,
%% Storage Gateway returns volume information sorted by volume Amazon
%% Resource Name
%% (ARN).
-spec describe_cached_iscsi_volumes(aws_client:aws_client(), describe_cached_iscsi_volumes_input()) ->
    {ok, describe_cached_iscsi_volumes_output(), tuple()} |
    {error, any()} |
    {error, describe_cached_iscsi_volumes_errors(), tuple()}.
describe_cached_iscsi_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cached_iscsi_volumes(Client, Input, []).

-spec describe_cached_iscsi_volumes(aws_client:aws_client(), describe_cached_iscsi_volumes_input(), proplists:proplist()) ->
    {ok, describe_cached_iscsi_volumes_output(), tuple()} |
    {error, any()} |
    {error, describe_cached_iscsi_volumes_errors(), tuple()}.
describe_cached_iscsi_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCachediSCSIVolumes">>, Input, Options).

%% @doc Returns an array of Challenge-Handshake Authentication Protocol
%% (CHAP) credentials
%% information for a specified iSCSI target, one for each target-initiator
%% pair.
%%
%% This
%% operation is supported in the volume and tape gateway types.
-spec describe_chap_credentials(aws_client:aws_client(), describe_chap_credentials_input()) ->
    {ok, describe_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, describe_chap_credentials_errors(), tuple()}.
describe_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_chap_credentials(Client, Input, []).

-spec describe_chap_credentials(aws_client:aws_client(), describe_chap_credentials_input(), proplists:proplist()) ->
    {ok, describe_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, describe_chap_credentials_errors(), tuple()}.
describe_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChapCredentials">>, Input, Options).

%% @doc Gets the file system association information.
%%
%% This operation is only supported for FSx
%% File Gateways.
-spec describe_file_system_associations(aws_client:aws_client(), describe_file_system_associations_input()) ->
    {ok, describe_file_system_associations_output(), tuple()} |
    {error, any()} |
    {error, describe_file_system_associations_errors(), tuple()}.
describe_file_system_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_system_associations(Client, Input, []).

-spec describe_file_system_associations(aws_client:aws_client(), describe_file_system_associations_input(), proplists:proplist()) ->
    {ok, describe_file_system_associations_output(), tuple()} |
    {error, any()} |
    {error, describe_file_system_associations_errors(), tuple()}.
describe_file_system_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystemAssociations">>, Input, Options).

%% @doc Returns metadata about a gateway such as its name, network
%% interfaces, time zone,
%% status, and software version.
%%
%% To specify which gateway to describe, use the Amazon Resource
%% Name (ARN) of the gateway in your request.
-spec describe_gateway_information(aws_client:aws_client(), describe_gateway_information_input()) ->
    {ok, describe_gateway_information_output(), tuple()} |
    {error, any()} |
    {error, describe_gateway_information_errors(), tuple()}.
describe_gateway_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_gateway_information(Client, Input, []).

-spec describe_gateway_information(aws_client:aws_client(), describe_gateway_information_input(), proplists:proplist()) ->
    {ok, describe_gateway_information_output(), tuple()} |
    {error, any()} |
    {error, describe_gateway_information_errors(), tuple()}.
describe_gateway_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGatewayInformation">>, Input, Options).

%% @doc Returns your gateway's maintenance window schedule information,
%% with values for
%% monthly or weekly cadence, specific day and time to begin maintenance, and
%% which types of
%% updates to apply.
%%
%% Time values returned are for the gateway's time zone.
-spec describe_maintenance_start_time(aws_client:aws_client(), describe_maintenance_start_time_input()) ->
    {ok, describe_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_start_time_errors(), tuple()}.
describe_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_start_time(Client, Input, []).

-spec describe_maintenance_start_time(aws_client:aws_client(), describe_maintenance_start_time_input(), proplists:proplist()) ->
    {ok, describe_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_start_time_errors(), tuple()}.
describe_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceStartTime">>, Input, Options).

%% @doc Gets a description for one or more Network File System (NFS) file
%% shares from an S3 File
%% Gateway.
%%
%% This operation is only supported for S3 File Gateways.
-spec describe_nfs_file_shares(aws_client:aws_client(), describe_nfs_file_shares_input()) ->
    {ok, describe_nfs_file_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_nfs_file_shares_errors(), tuple()}.
describe_nfs_file_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_nfs_file_shares(Client, Input, []).

-spec describe_nfs_file_shares(aws_client:aws_client(), describe_nfs_file_shares_input(), proplists:proplist()) ->
    {ok, describe_nfs_file_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_nfs_file_shares_errors(), tuple()}.
describe_nfs_file_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNFSFileShares">>, Input, Options).

%% @doc Gets a description for one or more Server Message Block (SMB) file
%% shares from a S3 File
%% Gateway.
%%
%% This operation is only supported for S3 File Gateways.
-spec describe_smb_file_shares(aws_client:aws_client(), describe_smb_file_shares_input()) ->
    {ok, describe_smb_file_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_smb_file_shares_errors(), tuple()}.
describe_smb_file_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_smb_file_shares(Client, Input, []).

-spec describe_smb_file_shares(aws_client:aws_client(), describe_smb_file_shares_input(), proplists:proplist()) ->
    {ok, describe_smb_file_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_smb_file_shares_errors(), tuple()}.
describe_smb_file_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSMBFileShares">>, Input, Options).

%% @doc Gets a description of a Server Message Block (SMB) file share
%% settings from a file
%% gateway.
%%
%% This operation is only supported for file gateways.
-spec describe_smb_settings(aws_client:aws_client(), describe_smb_settings_input()) ->
    {ok, describe_smb_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_smb_settings_errors(), tuple()}.
describe_smb_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_smb_settings(Client, Input, []).

-spec describe_smb_settings(aws_client:aws_client(), describe_smb_settings_input(), proplists:proplist()) ->
    {ok, describe_smb_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_smb_settings_errors(), tuple()}.
describe_smb_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSMBSettings">>, Input, Options).

%% @doc Describes the snapshot schedule for the specified gateway volume.
%%
%% The snapshot schedule
%% information includes intervals at which snapshots are automatically
%% initiated on the
%% volume. This operation is only supported in the cached volume and stored
%% volume
%% types.
-spec describe_snapshot_schedule(aws_client:aws_client(), describe_snapshot_schedule_input()) ->
    {ok, describe_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, describe_snapshot_schedule_errors(), tuple()}.
describe_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_schedule(Client, Input, []).

-spec describe_snapshot_schedule(aws_client:aws_client(), describe_snapshot_schedule_input(), proplists:proplist()) ->
    {ok, describe_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, describe_snapshot_schedule_errors(), tuple()}.
describe_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotSchedule">>, Input, Options).

%% @doc Returns the description of the gateway volumes specified in the
%% request.
%%
%% The list of
%% gateway volumes in the request must be from one gateway. In the response,
%% Storage Gateway returns volume information sorted by volume ARNs. This
%% operation is only
%% supported in stored volume gateway type.
-spec describe_stored_iscsi_volumes(aws_client:aws_client(), describe_stored_iscsi_volumes_input()) ->
    {ok, describe_stored_iscsi_volumes_output(), tuple()} |
    {error, any()} |
    {error, describe_stored_iscsi_volumes_errors(), tuple()}.
describe_stored_iscsi_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stored_iscsi_volumes(Client, Input, []).

-spec describe_stored_iscsi_volumes(aws_client:aws_client(), describe_stored_iscsi_volumes_input(), proplists:proplist()) ->
    {ok, describe_stored_iscsi_volumes_output(), tuple()} |
    {error, any()} |
    {error, describe_stored_iscsi_volumes_errors(), tuple()}.
describe_stored_iscsi_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorediSCSIVolumes">>, Input, Options).

%% @doc Returns a description of specified virtual tapes in the virtual tape
%% shelf (VTS).
%%
%% This
%% operation is only supported in the tape gateway type.
%%
%% If a specific `TapeARN' is not specified, Storage Gateway returns a
%% description of all virtual tapes found in the VTS associated with your
%% account.
-spec describe_tape_archives(aws_client:aws_client(), describe_tape_archives_input()) ->
    {ok, describe_tape_archives_output(), tuple()} |
    {error, any()} |
    {error, describe_tape_archives_errors(), tuple()}.
describe_tape_archives(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tape_archives(Client, Input, []).

-spec describe_tape_archives(aws_client:aws_client(), describe_tape_archives_input(), proplists:proplist()) ->
    {ok, describe_tape_archives_output(), tuple()} |
    {error, any()} |
    {error, describe_tape_archives_errors(), tuple()}.
describe_tape_archives(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapeArchives">>, Input, Options).

%% @doc Returns a list of virtual tape recovery points that are available for
%% the specified tape
%% gateway.
%%
%% A recovery point is a point-in-time view of a virtual tape at which all
%% the data on the
%% virtual tape is consistent. If your gateway crashes, virtual tapes that
%% have recovery
%% points can be recovered to a new gateway. This operation is only supported
%% in the tape
%% gateway type.
-spec describe_tape_recovery_points(aws_client:aws_client(), describe_tape_recovery_points_input()) ->
    {ok, describe_tape_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, describe_tape_recovery_points_errors(), tuple()}.
describe_tape_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tape_recovery_points(Client, Input, []).

-spec describe_tape_recovery_points(aws_client:aws_client(), describe_tape_recovery_points_input(), proplists:proplist()) ->
    {ok, describe_tape_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, describe_tape_recovery_points_errors(), tuple()}.
describe_tape_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapeRecoveryPoints">>, Input, Options).

%% @doc Returns a description of virtual tapes that correspond to the
%% specified Amazon Resource
%% Names (ARNs).
%%
%% If `TapeARN' is not specified, returns a description of the
%% virtual tapes associated with the specified gateway. This operation is
%% only supported for
%% the tape gateway type.
%%
%% The operation supports pagination. By default, the operation returns a
%% maximum of up to
%% 100 tapes. You can optionally specify the `Limit' field in the body to
%% limit the
%% number of tapes in the response. If the number of tapes returned in the
%% response is
%% truncated, the response includes a `Marker' field. You can use this
%% `Marker' value in your subsequent request to retrieve the next set of
%% tapes.
-spec describe_tapes(aws_client:aws_client(), describe_tapes_input()) ->
    {ok, describe_tapes_output(), tuple()} |
    {error, any()} |
    {error, describe_tapes_errors(), tuple()}.
describe_tapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tapes(Client, Input, []).

-spec describe_tapes(aws_client:aws_client(), describe_tapes_input(), proplists:proplist()) ->
    {ok, describe_tapes_output(), tuple()} |
    {error, any()} |
    {error, describe_tapes_errors(), tuple()}.
describe_tapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTapes">>, Input, Options).

%% @doc Returns information about the upload buffer of a gateway.
%%
%% This operation is supported
%% for the stored volume, cached volume, and tape gateway types.
%%
%% The response includes disk IDs that are configured as upload buffer space,
%% and it
%% includes the amount of upload buffer space allocated and used.
-spec describe_upload_buffer(aws_client:aws_client(), describe_upload_buffer_input()) ->
    {ok, describe_upload_buffer_output(), tuple()} |
    {error, any()} |
    {error, describe_upload_buffer_errors(), tuple()}.
describe_upload_buffer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_upload_buffer(Client, Input, []).

-spec describe_upload_buffer(aws_client:aws_client(), describe_upload_buffer_input(), proplists:proplist()) ->
    {ok, describe_upload_buffer_output(), tuple()} |
    {error, any()} |
    {error, describe_upload_buffer_errors(), tuple()}.
describe_upload_buffer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUploadBuffer">>, Input, Options).

%% @doc Returns a description of virtual tape library (VTL) devices for the
%% specified tape
%% gateway.
%%
%% In the response, Storage Gateway returns VTL device information.
%%
%% This operation is only supported in the tape gateway type.
-spec describe_vtl_devices(aws_client:aws_client(), describe_vtl_devices_input()) ->
    {ok, describe_vtl_devices_output(), tuple()} |
    {error, any()} |
    {error, describe_vtl_devices_errors(), tuple()}.
describe_vtl_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vtl_devices(Client, Input, []).

-spec describe_vtl_devices(aws_client:aws_client(), describe_vtl_devices_input(), proplists:proplist()) ->
    {ok, describe_vtl_devices_output(), tuple()} |
    {error, any()} |
    {error, describe_vtl_devices_errors(), tuple()}.
describe_vtl_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVTLDevices">>, Input, Options).

%% @doc Returns information about the working storage of a gateway.
%%
%% This operation is only
%% supported in the stored volumes gateway type. This operation is deprecated
%% in cached
%% volumes API version (20120630). Use DescribeUploadBuffer instead.
%%
%% Working storage is also referred to as upload buffer. You can also use the
%% DescribeUploadBuffer operation to add upload buffer to a stored volume
%% gateway.
%%
%% The response includes disk IDs that are configured as working storage, and
%% it includes
%% the amount of working storage allocated and used.
-spec describe_working_storage(aws_client:aws_client(), describe_working_storage_input()) ->
    {ok, describe_working_storage_output(), tuple()} |
    {error, any()} |
    {error, describe_working_storage_errors(), tuple()}.
describe_working_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_working_storage(Client, Input, []).

-spec describe_working_storage(aws_client:aws_client(), describe_working_storage_input(), proplists:proplist()) ->
    {ok, describe_working_storage_output(), tuple()} |
    {error, any()} |
    {error, describe_working_storage_errors(), tuple()}.
describe_working_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkingStorage">>, Input, Options).

%% @doc Disconnects a volume from an iSCSI connection and then detaches the
%% volume from the
%% specified gateway.
%%
%% Detaching and attaching a volume enables you to recover your data from
%% one gateway to a different gateway without creating a snapshot. It also
%% makes it easier to
%% move your volumes from an on-premises gateway to a gateway hosted on an
%% Amazon EC2
%% instance. This operation is only supported in the volume gateway type.
-spec detach_volume(aws_client:aws_client(), detach_volume_input()) ->
    {ok, detach_volume_output(), tuple()} |
    {error, any()} |
    {error, detach_volume_errors(), tuple()}.
detach_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_volume(Client, Input, []).

-spec detach_volume(aws_client:aws_client(), detach_volume_input(), proplists:proplist()) ->
    {ok, detach_volume_output(), tuple()} |
    {error, any()} |
    {error, detach_volume_errors(), tuple()}.
detach_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachVolume">>, Input, Options).

%% @doc Disables a tape gateway when the gateway is no longer functioning.
%%
%% For example, if your
%% gateway VM is damaged, you can disable the gateway so you can recover
%% virtual tapes.
%%
%% Use this operation for a tape gateway that is not reachable or not
%% functioning. This
%% operation is only supported in the tape gateway type.
%%
%% After a gateway is disabled, it cannot be enabled.
-spec disable_gateway(aws_client:aws_client(), disable_gateway_input()) ->
    {ok, disable_gateway_output(), tuple()} |
    {error, any()} |
    {error, disable_gateway_errors(), tuple()}.
disable_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_gateway(Client, Input, []).

-spec disable_gateway(aws_client:aws_client(), disable_gateway_input(), proplists:proplist()) ->
    {ok, disable_gateway_output(), tuple()} |
    {error, any()} |
    {error, disable_gateway_errors(), tuple()}.
disable_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableGateway">>, Input, Options).

%% @doc Disassociates an Amazon FSx file system from the specified gateway.
%%
%% After the
%% disassociation process finishes, the gateway can no longer access the
%% Amazon FSx
%% file system. This operation is only supported in the FSx File Gateway
%% type.
-spec disassociate_file_system(aws_client:aws_client(), disassociate_file_system_input()) ->
    {ok, disassociate_file_system_output(), tuple()} |
    {error, any()} |
    {error, disassociate_file_system_errors(), tuple()}.
disassociate_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_file_system(Client, Input, []).

-spec disassociate_file_system(aws_client:aws_client(), disassociate_file_system_input(), proplists:proplist()) ->
    {ok, disassociate_file_system_output(), tuple()} |
    {error, any()} |
    {error, disassociate_file_system_errors(), tuple()}.
disassociate_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFileSystem">>, Input, Options).

%% @doc Adds a file gateway to an Active Directory domain.
%%
%% This operation is only supported for
%% file gateways that support the SMB file protocol.
%%
%% Joining a domain creates an Active Directory computer account in the
%% default
%% organizational unit, using the gateway's Gateway ID as
%% the account name (for example, SGW-1234ADE). If your Active Directory
%% environment
%% requires that you pre-stage accounts to facilitate the join domain
%% process, you will
%% need to create this account ahead of time.
%%
%% To create the gateway's computer account in an organizational unit
%% other than the
%% default, you must specify the organizational unit when joining the domain.
-spec join_domain(aws_client:aws_client(), join_domain_input()) ->
    {ok, join_domain_output(), tuple()} |
    {error, any()} |
    {error, join_domain_errors(), tuple()}.
join_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    join_domain(Client, Input, []).

-spec join_domain(aws_client:aws_client(), join_domain_input(), proplists:proplist()) ->
    {ok, join_domain_output(), tuple()} |
    {error, any()} |
    {error, join_domain_errors(), tuple()}.
join_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"JoinDomain">>, Input, Options).

%% @doc Lists the automatic tape creation policies for a gateway.
%%
%% If there are no automatic tape
%% creation policies for the gateway, it returns an empty list.
%%
%% This operation is only supported for tape gateways.
-spec list_automatic_tape_creation_policies(aws_client:aws_client(), list_automatic_tape_creation_policies_input()) ->
    {ok, list_automatic_tape_creation_policies_output(), tuple()} |
    {error, any()} |
    {error, list_automatic_tape_creation_policies_errors(), tuple()}.
list_automatic_tape_creation_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automatic_tape_creation_policies(Client, Input, []).

-spec list_automatic_tape_creation_policies(aws_client:aws_client(), list_automatic_tape_creation_policies_input(), proplists:proplist()) ->
    {ok, list_automatic_tape_creation_policies_output(), tuple()} |
    {error, any()} |
    {error, list_automatic_tape_creation_policies_errors(), tuple()}.
list_automatic_tape_creation_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomaticTapeCreationPolicies">>, Input, Options).

%% @doc Returns a list of existing cache reports for all file shares
%% associated with your
%% Amazon Web Services account.
%%
%% This list includes all information provided by the
%% `DescribeCacheReport' action, such as report name, status, completion
%% progress, start time, end time, filters, and tags.
-spec list_cache_reports(aws_client:aws_client(), list_cache_reports_input()) ->
    {ok, list_cache_reports_output(), tuple()} |
    {error, any()} |
    {error, list_cache_reports_errors(), tuple()}.
list_cache_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cache_reports(Client, Input, []).

-spec list_cache_reports(aws_client:aws_client(), list_cache_reports_input(), proplists:proplist()) ->
    {ok, list_cache_reports_output(), tuple()} |
    {error, any()} |
    {error, list_cache_reports_errors(), tuple()}.
list_cache_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCacheReports">>, Input, Options).

%% @doc Gets a list of the file shares for a specific S3 File Gateway, or the
%% list of file
%% shares that belong to the calling Amazon Web Services account.
%%
%% This operation is only
%% supported for S3 File Gateways.
-spec list_file_shares(aws_client:aws_client(), list_file_shares_input()) ->
    {ok, list_file_shares_output(), tuple()} |
    {error, any()} |
    {error, list_file_shares_errors(), tuple()}.
list_file_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_file_shares(Client, Input, []).

-spec list_file_shares(aws_client:aws_client(), list_file_shares_input(), proplists:proplist()) ->
    {ok, list_file_shares_output(), tuple()} |
    {error, any()} |
    {error, list_file_shares_errors(), tuple()}.
list_file_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFileShares">>, Input, Options).

%% @doc Gets a list of `FileSystemAssociationSummary' objects.
%%
%% Each object contains a
%% summary of a file system association. This operation is only supported for
%% FSx File
%% Gateways.
-spec list_file_system_associations(aws_client:aws_client(), list_file_system_associations_input()) ->
    {ok, list_file_system_associations_output(), tuple()} |
    {error, any()} |
    {error, list_file_system_associations_errors(), tuple()}.
list_file_system_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_file_system_associations(Client, Input, []).

-spec list_file_system_associations(aws_client:aws_client(), list_file_system_associations_input(), proplists:proplist()) ->
    {ok, list_file_system_associations_output(), tuple()} |
    {error, any()} |
    {error, list_file_system_associations_errors(), tuple()}.
list_file_system_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFileSystemAssociations">>, Input, Options).

%% @doc Lists gateways owned by an Amazon Web Services account in an Amazon
%% Web Services Region
%% specified in the request.
%%
%% The returned list is ordered by gateway Amazon Resource Name
%% (ARN).
%%
%% By default, the operation returns a maximum of 100 gateways. This
%% operation supports
%% pagination that allows you to optionally reduce the number of gateways
%% returned in a
%% response.
%%
%% If you have more gateways than are returned in a response (that is, the
%% response returns
%% only a truncated list of your gateways), the response contains a marker
%% that you can
%% specify in your next request to fetch the next page of gateways.
-spec list_gateways(aws_client:aws_client(), list_gateways_input()) ->
    {ok, list_gateways_output(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).

-spec list_gateways(aws_client:aws_client(), list_gateways_input(), proplists:proplist()) ->
    {ok, list_gateways_output(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc Returns a list of the gateway's local disks.
%%
%% To specify which gateway to describe,
%% you use the Amazon Resource Name (ARN) of the gateway in the body of the
%% request.
%%
%% The request returns a list of all disks, specifying which are configured
%% as working
%% storage, cache storage, or stored volume or not configured at all. The
%% response includes a
%% `DiskStatus' field. This field can have a value of present (the disk
%% is
%% available to use), missing (the disk is no longer connected to the
%% gateway), or mismatch
%% (the disk node is occupied by a disk that has incorrect metadata or the
%% disk content is
%% corrupted).
-spec list_local_disks(aws_client:aws_client(), list_local_disks_input()) ->
    {ok, list_local_disks_output(), tuple()} |
    {error, any()} |
    {error, list_local_disks_errors(), tuple()}.
list_local_disks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_local_disks(Client, Input, []).

-spec list_local_disks(aws_client:aws_client(), list_local_disks_input(), proplists:proplist()) ->
    {ok, list_local_disks_output(), tuple()} |
    {error, any()} |
    {error, list_local_disks_errors(), tuple()}.
list_local_disks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLocalDisks">>, Input, Options).

%% @doc Lists the tags that have been added to the specified resource.
%%
%% This operation is
%% supported in storage gateways of all types.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists custom tape pools.
%%
%% You specify custom tape pools to list by specifying one or more
%% custom tape pool Amazon Resource Names (ARNs). If you don't specify a
%% custom tape pool ARN,
%% the operation lists all custom tape pools.
%%
%% This operation supports pagination. You can optionally specify the
%% `Limit'
%% parameter in the body to limit the number of tape pools in the response.
%% If the number of
%% tape pools returned in the response is truncated, the response includes a
%% `Marker' element that you can use in your subsequent request to
%% retrieve the
%% next set of tape pools.
-spec list_tape_pools(aws_client:aws_client(), list_tape_pools_input()) ->
    {ok, list_tape_pools_output(), tuple()} |
    {error, any()} |
    {error, list_tape_pools_errors(), tuple()}.
list_tape_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tape_pools(Client, Input, []).

-spec list_tape_pools(aws_client:aws_client(), list_tape_pools_input(), proplists:proplist()) ->
    {ok, list_tape_pools_output(), tuple()} |
    {error, any()} |
    {error, list_tape_pools_errors(), tuple()}.
list_tape_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTapePools">>, Input, Options).

%% @doc Lists virtual tapes in your virtual tape library (VTL) and your
%% virtual tape shelf
%% (VTS).
%%
%% You specify the tapes to list by specifying one or more tape Amazon
%% Resource Names
%% (ARNs). If you don't specify a tape ARN, the operation lists all
%% virtual tapes in both
%% your VTL and VTS.
%%
%% This operation supports pagination. By default, the operation returns a
%% maximum of up to
%% 100 tapes. You can optionally specify the `Limit' parameter in the
%% body to limit
%% the number of tapes in the response. If the number of tapes returned in
%% the response is
%% truncated, the response includes a `Marker' element that you can use
%% in your
%% subsequent request to retrieve the next set of tapes. This operation is
%% only supported in
%% the tape gateway type.
-spec list_tapes(aws_client:aws_client(), list_tapes_input()) ->
    {ok, list_tapes_output(), tuple()} |
    {error, any()} |
    {error, list_tapes_errors(), tuple()}.
list_tapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tapes(Client, Input, []).

-spec list_tapes(aws_client:aws_client(), list_tapes_input(), proplists:proplist()) ->
    {ok, list_tapes_output(), tuple()} |
    {error, any()} |
    {error, list_tapes_errors(), tuple()}.
list_tapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTapes">>, Input, Options).

%% @doc Lists iSCSI initiators that are connected to a volume.
%%
%% You can use this operation to
%% determine whether a volume is being used or not. This operation is only
%% supported in the
%% cached volume and stored volume gateway types.
-spec list_volume_initiators(aws_client:aws_client(), list_volume_initiators_input()) ->
    {ok, list_volume_initiators_output(), tuple()} |
    {error, any()} |
    {error, list_volume_initiators_errors(), tuple()}.
list_volume_initiators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volume_initiators(Client, Input, []).

-spec list_volume_initiators(aws_client:aws_client(), list_volume_initiators_input(), proplists:proplist()) ->
    {ok, list_volume_initiators_output(), tuple()} |
    {error, any()} |
    {error, list_volume_initiators_errors(), tuple()}.
list_volume_initiators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumeInitiators">>, Input, Options).

%% @doc Lists the recovery points for a specified gateway.
%%
%% This operation is only supported in
%% the cached volume gateway type.
%%
%% Each cache volume has one recovery point. A volume recovery point is a
%% point in time at
%% which all data of the volume is consistent and from which you can create a
%% snapshot or
%% clone a new cached volume from a source volume. To create a snapshot from
%% a volume recovery
%% point use the `CreateSnapshotFromVolumeRecoveryPoint' operation.
-spec list_volume_recovery_points(aws_client:aws_client(), list_volume_recovery_points_input()) ->
    {ok, list_volume_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, list_volume_recovery_points_errors(), tuple()}.
list_volume_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volume_recovery_points(Client, Input, []).

-spec list_volume_recovery_points(aws_client:aws_client(), list_volume_recovery_points_input(), proplists:proplist()) ->
    {ok, list_volume_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, list_volume_recovery_points_errors(), tuple()}.
list_volume_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumeRecoveryPoints">>, Input, Options).

%% @doc Lists the iSCSI stored volumes of a gateway.
%%
%% Results are sorted by volume ARN. The
%% response includes only the volume ARNs. If you want additional volume
%% information, use the
%% `DescribeStorediSCSIVolumes' or the `DescribeCachediSCSIVolumes'
%% API.
%%
%% The operation supports pagination. By default, the operation returns a
%% maximum of up to
%% 100 volumes. You can optionally specify the `Limit' field in the body
%% to limit
%% the number of volumes in the response. If the number of volumes returned
%% in the response is
%% truncated, the response includes a Marker field. You can use this Marker
%% value in your
%% subsequent request to retrieve the next set of volumes. This operation is
%% only supported in
%% the cached volume and stored volume gateway types.
-spec list_volumes(aws_client:aws_client(), list_volumes_input()) ->
    {ok, list_volumes_output(), tuple()} |
    {error, any()} |
    {error, list_volumes_errors(), tuple()}.
list_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_volumes(Client, Input, []).

-spec list_volumes(aws_client:aws_client(), list_volumes_input(), proplists:proplist()) ->
    {ok, list_volumes_output(), tuple()} |
    {error, any()} |
    {error, list_volumes_errors(), tuple()}.
list_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVolumes">>, Input, Options).

%% @doc Sends you notification through Amazon EventBridge when all files
%% written to your file
%% share have been uploaded to Amazon S3.
%%
%% Storage Gateway can send a notification through Amazon EventBridge when
%% all
%% files written to your file share up to that point in time have been
%% uploaded to Amazon S3. These files include files written to the file share
%% up to the time that you
%% make a request for notification. When the upload is done, Storage Gateway
%% sends you
%% notification through EventBridge. You can configure EventBridge to send
%% the
%% notification through event targets such as Amazon SNS or Lambda
%% function. This operation is only supported for S3 File Gateways.
%%
%% For more information, see Getting
%% file upload notification:
%% https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification
%% in the Amazon S3 File Gateway User
%% Guide.
-spec notify_when_uploaded(aws_client:aws_client(), notify_when_uploaded_input()) ->
    {ok, notify_when_uploaded_output(), tuple()} |
    {error, any()} |
    {error, notify_when_uploaded_errors(), tuple()}.
notify_when_uploaded(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_when_uploaded(Client, Input, []).

-spec notify_when_uploaded(aws_client:aws_client(), notify_when_uploaded_input(), proplists:proplist()) ->
    {ok, notify_when_uploaded_output(), tuple()} |
    {error, any()} |
    {error, notify_when_uploaded_errors(), tuple()}.
notify_when_uploaded(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyWhenUploaded">>, Input, Options).

%% @doc Refreshes the cached inventory of objects for the specified file
%% share.
%%
%% This operation
%% finds objects in the Amazon S3 bucket that were added, removed, or
%% replaced since
%% the gateway last listed the bucket's contents and cached the results.
%% This operation
%% does not import files into the S3 File Gateway cache storage. It only
%% updates the cached
%% inventory to reflect changes in the inventory of the objects in the S3
%% bucket. This
%% operation is only supported in the S3 File Gateway types.
%%
%% You can subscribe to be notified through an Amazon CloudWatch event when
%% your
%% `RefreshCache' operation completes. For more information, see Getting
%% notified about file operations:
%% https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification
%% in the Amazon S3 File Gateway User
%% Guide. This operation is Only supported for S3 File Gateways.
%%
%% When this API is called, it only initiates the refresh operation. When the
%% API call
%% completes and returns a success code, it doesn't necessarily mean that
%% the file
%% refresh has completed. You should use the refresh-complete notification to
%% determine that
%% the operation has completed before you check for new files on the gateway
%% file share. You
%% can subscribe to be notified through a CloudWatch event when your
%% `RefreshCache'
%% operation completes.
%%
%% Throttle limit: This API is asynchronous, so the gateway will accept no
%% more than two
%% refreshes at any time. We recommend using the refresh-complete CloudWatch
%% event
%% notification before issuing additional requests. For more information, see
%% Getting
%% notified about file operations:
%% https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification
%% in the Amazon S3 File Gateway User
%% Guide.
%%
%% Wait at least 60 seconds between consecutive RefreshCache API requests.
%%
%% If you invoke the RefreshCache API when two requests are already being
%% processed, any new request will cause an
%% `InvalidGatewayRequestException' error because too many requests
%% were sent to the server.
%%
%% The S3 bucket name does not need to be included when entering the list of
%% folders in
%% the FolderList parameter.
%%
%% For more information, see Getting
%% notified about file operations:
%% https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification
%% in the Amazon S3 File Gateway User
%% Guide.
-spec refresh_cache(aws_client:aws_client(), refresh_cache_input()) ->
    {ok, refresh_cache_output(), tuple()} |
    {error, any()} |
    {error, refresh_cache_errors(), tuple()}.
refresh_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_cache(Client, Input, []).

-spec refresh_cache(aws_client:aws_client(), refresh_cache_input(), proplists:proplist()) ->
    {ok, refresh_cache_output(), tuple()} |
    {error, any()} |
    {error, refresh_cache_errors(), tuple()}.
refresh_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshCache">>, Input, Options).

%% @doc Removes one or more tags from the specified resource.
%%
%% This operation is supported in
%% storage gateways of all types.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_input()) ->
    {ok, remove_tags_from_resource_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_input(), proplists:proplist()) ->
    {ok, remove_tags_from_resource_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Resets all cache disks that have encountered an error and makes the
%% disks available for
%% reconfiguration as cache storage.
%%
%% If your cache disk encounters an error, the gateway
%% prevents read and write operations on virtual tapes in the gateway. For
%% example, an error
%% can occur when a disk is corrupted or removed from the gateway. When a
%% cache is reset, the
%% gateway loses its cache storage. At this point, you can reconfigure the
%% disks as cache
%% disks. This operation is only supported in the cached volume and tape
%% types.
%%
%% If the cache disk you are resetting contains data that has not been
%% uploaded to
%% Amazon S3 yet, that data can be lost. After you reset cache disks, there
%% will
%% be no configured cache disks left in the gateway, so you must configure at
%% least one new
%% cache disk for your gateway to function properly.
-spec reset_cache(aws_client:aws_client(), reset_cache_input()) ->
    {ok, reset_cache_output(), tuple()} |
    {error, any()} |
    {error, reset_cache_errors(), tuple()}.
reset_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cache(Client, Input, []).

-spec reset_cache(aws_client:aws_client(), reset_cache_input(), proplists:proplist()) ->
    {ok, reset_cache_output(), tuple()} |
    {error, any()} |
    {error, reset_cache_errors(), tuple()}.
reset_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetCache">>, Input, Options).

%% @doc Retrieves an archived virtual tape from the virtual tape shelf (VTS)
%% to a tape gateway.
%%
%% Virtual tapes archived in the VTS are not associated with any gateway.
%% However after a tape
%% is retrieved, it is associated with a gateway, even though it is also
%% listed in the VTS,
%% that is, archive. This operation is only supported in the tape gateway
%% type.
%%
%% Once a tape is successfully retrieved to a gateway, it cannot be retrieved
%% again to
%% another gateway. You must archive the tape again before you can retrieve
%% it to another
%% gateway. This operation is only supported in the tape gateway type.
-spec retrieve_tape_archive(aws_client:aws_client(), retrieve_tape_archive_input()) ->
    {ok, retrieve_tape_archive_output(), tuple()} |
    {error, any()} |
    {error, retrieve_tape_archive_errors(), tuple()}.
retrieve_tape_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_tape_archive(Client, Input, []).

-spec retrieve_tape_archive(aws_client:aws_client(), retrieve_tape_archive_input(), proplists:proplist()) ->
    {ok, retrieve_tape_archive_output(), tuple()} |
    {error, any()} |
    {error, retrieve_tape_archive_errors(), tuple()}.
retrieve_tape_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveTapeArchive">>, Input, Options).

%% @doc Retrieves the recovery point for the specified virtual tape.
%%
%% This operation is only
%% supported in the tape gateway type.
%%
%% A recovery point is a point in time view of a virtual tape at which all
%% the data on the
%% tape is consistent. If your gateway crashes, virtual tapes that have
%% recovery points can be
%% recovered to a new gateway.
%%
%% The virtual tape can be retrieved to only one gateway. The retrieved tape
%% is
%% read-only. The virtual tape can be retrieved to only a tape gateway. There
%% is no charge
%% for retrieving recovery points.
-spec retrieve_tape_recovery_point(aws_client:aws_client(), retrieve_tape_recovery_point_input()) ->
    {ok, retrieve_tape_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, retrieve_tape_recovery_point_errors(), tuple()}.
retrieve_tape_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_tape_recovery_point(Client, Input, []).

-spec retrieve_tape_recovery_point(aws_client:aws_client(), retrieve_tape_recovery_point_input(), proplists:proplist()) ->
    {ok, retrieve_tape_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, retrieve_tape_recovery_point_errors(), tuple()}.
retrieve_tape_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveTapeRecoveryPoint">>, Input, Options).

%% @doc Sets the password for your VM local console.
%%
%% When you log in to the local console for
%% the first time, you log in to the VM with the default credentials. We
%% recommend that you
%% set a new password. You don't need to know the default password to set
%% a new
%% password.
-spec set_local_console_password(aws_client:aws_client(), set_local_console_password_input()) ->
    {ok, set_local_console_password_output(), tuple()} |
    {error, any()} |
    {error, set_local_console_password_errors(), tuple()}.
set_local_console_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_local_console_password(Client, Input, []).

-spec set_local_console_password(aws_client:aws_client(), set_local_console_password_input(), proplists:proplist()) ->
    {ok, set_local_console_password_output(), tuple()} |
    {error, any()} |
    {error, set_local_console_password_errors(), tuple()}.
set_local_console_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLocalConsolePassword">>, Input, Options).

%% @doc Sets the password for the guest user `smbguest'.
%%
%% The `smbguest'
%% user is the user when the authentication method for the file share is set
%% to
%% `GuestAccess'. This operation only supported for S3 File Gateways
-spec set_smb_guest_password(aws_client:aws_client(), set_smb_guest_password_input()) ->
    {ok, set_smb_guest_password_output(), tuple()} |
    {error, any()} |
    {error, set_smb_guest_password_errors(), tuple()}.
set_smb_guest_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_smb_guest_password(Client, Input, []).

-spec set_smb_guest_password(aws_client:aws_client(), set_smb_guest_password_input(), proplists:proplist()) ->
    {ok, set_smb_guest_password_output(), tuple()} |
    {error, any()} |
    {error, set_smb_guest_password_errors(), tuple()}.
set_smb_guest_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSMBGuestPassword">>, Input, Options).

%% @doc Shuts down a Tape Gateway or Volume Gateway.
%%
%% To specify which gateway to shut down, use
%% the Amazon Resource Name (ARN) of the gateway in the body of your request.
%%
%% This API action cannot be used to shut down S3 File Gateway or FSx File
%% Gateway.
%%
%% The operation shuts down the gateway service component running in the
%% gateway's
%% virtual machine (VM) and not the host VM.
%%
%% If you want to shut down the VM, it is recommended that you first shut
%% down the
%% gateway component in the VM to avoid unpredictable conditions.
%%
%% After the gateway is shutdown, you cannot call any other API except
%% `StartGateway', `DescribeGatewayInformation', and
%% `ListGateways'. For more information, see `ActivateGateway'.
%% Your applications cannot read from or write to the gateway's storage
%% volumes, and
%% there are no snapshots taken.
%%
%% When you make a shutdown request, you will get a `200 OK' success
%% response
%% immediately. However, it might take some time for the gateway to shut
%% down. You can call
%% the `DescribeGatewayInformation' API to check the status. For more
%% information, see `ActivateGateway'.
%%
%% If do not intend to use the gateway again, you must delete the gateway
%% (using `DeleteGateway') to no longer pay software charges associated
%% with the
%% gateway.
-spec shutdown_gateway(aws_client:aws_client(), shutdown_gateway_input()) ->
    {ok, shutdown_gateway_output(), tuple()} |
    {error, any()} |
    {error, shutdown_gateway_errors(), tuple()}.
shutdown_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    shutdown_gateway(Client, Input, []).

-spec shutdown_gateway(aws_client:aws_client(), shutdown_gateway_input(), proplists:proplist()) ->
    {ok, shutdown_gateway_output(), tuple()} |
    {error, any()} |
    {error, shutdown_gateway_errors(), tuple()}.
shutdown_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ShutdownGateway">>, Input, Options).

%% @doc Start a test that verifies that the specified gateway is configured
%% for High
%% Availability monitoring in your host environment.
%%
%% This request only initiates the test and
%% that a successful response only indicates that the test was started. It
%% doesn't
%% indicate that the test passed. For the status of the test, invoke the
%% `DescribeAvailabilityMonitorTest' API.
%%
%% Starting this test will cause your gateway to go offline for a brief
%% period.
-spec start_availability_monitor_test(aws_client:aws_client(), start_availability_monitor_test_input()) ->
    {ok, start_availability_monitor_test_output(), tuple()} |
    {error, any()} |
    {error, start_availability_monitor_test_errors(), tuple()}.
start_availability_monitor_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_availability_monitor_test(Client, Input, []).

-spec start_availability_monitor_test(aws_client:aws_client(), start_availability_monitor_test_input(), proplists:proplist()) ->
    {ok, start_availability_monitor_test_output(), tuple()} |
    {error, any()} |
    {error, start_availability_monitor_test_errors(), tuple()}.
start_availability_monitor_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAvailabilityMonitorTest">>, Input, Options).

%% @doc Starts generating a report of the file metadata currently cached by
%% an S3 File Gateway for a specific file share.
%%
%% You can use this report to identify and resolve
%% issues if you have files failing upload from your gateway to Amazon S3.
%% The report
%% is a CSV file containing a list of files which match the set of filter
%% parameters you
%% specify in the request.
%%
%% The Files Failing Upload flag is reset every 24
%% hours and during gateway reboot. If this report captures the files after
%% the reset, but
%% before they become flagged again, they will not be reported as Files
%% Failing Upload.
%%
%% The following requirements must be met to successfully generate a cache
%% report:
%%
%% You must have permissions to list the entire Amazon S3 bucket associated
%% with the specified file share.
%%
%% No other cache reports can currently be in-progress for the specified file
%% share.
%%
%% There must be fewer than 10 existing cache reports for the specified file
%% share.
%%
%% The gateway must be online and connected to Amazon Web Services.
%%
%% The root disk must have at least 20GB of free space when report generation
%% starts.
%%
%% You must specify at least one value for `InclusionFilters' or
%% `ExclusionFilters' in the request.
-spec start_cache_report(aws_client:aws_client(), start_cache_report_input()) ->
    {ok, start_cache_report_output(), tuple()} |
    {error, any()} |
    {error, start_cache_report_errors(), tuple()}.
start_cache_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_cache_report(Client, Input, []).

-spec start_cache_report(aws_client:aws_client(), start_cache_report_input(), proplists:proplist()) ->
    {ok, start_cache_report_output(), tuple()} |
    {error, any()} |
    {error, start_cache_report_errors(), tuple()}.
start_cache_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCacheReport">>, Input, Options).

%% @doc Starts a gateway that you previously shut down (see
%% `ShutdownGateway').
%%
%% After the gateway starts, you can then make other API calls, your
%% applications can read
%% from or write to the gateway's storage volumes and you will be able to
%% take snapshot
%% backups.
%%
%% When you make a request, you will get a 200 OK success response
%% immediately. However,
%% it might take some time for the gateway to be ready. You should call
%% `DescribeGatewayInformation' and check the status before making any
%% additional API calls. For more information, see `ActivateGateway'.
%%
%% To specify which gateway to start, use the Amazon Resource Name (ARN) of
%% the gateway in
%% your request.
-spec start_gateway(aws_client:aws_client(), start_gateway_input()) ->
    {ok, start_gateway_output(), tuple()} |
    {error, any()} |
    {error, start_gateway_errors(), tuple()}.
start_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_gateway(Client, Input, []).

-spec start_gateway(aws_client:aws_client(), start_gateway_input(), proplists:proplist()) ->
    {ok, start_gateway_output(), tuple()} |
    {error, any()} |
    {error, start_gateway_errors(), tuple()}.
start_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartGateway">>, Input, Options).

%% @doc Updates the automatic tape creation policy of a gateway.
%%
%% Use this to update the policy
%% with a new set of automatic tape creation rules. This is only supported
%% for tape
%% gateways.
%%
%% By default, there is no automatic tape creation policy.
%%
%% A gateway can have only one automatic tape creation policy.
-spec update_automatic_tape_creation_policy(aws_client:aws_client(), update_automatic_tape_creation_policy_input()) ->
    {ok, update_automatic_tape_creation_policy_output(), tuple()} |
    {error, any()} |
    {error, update_automatic_tape_creation_policy_errors(), tuple()}.
update_automatic_tape_creation_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_automatic_tape_creation_policy(Client, Input, []).

-spec update_automatic_tape_creation_policy(aws_client:aws_client(), update_automatic_tape_creation_policy_input(), proplists:proplist()) ->
    {ok, update_automatic_tape_creation_policy_output(), tuple()} |
    {error, any()} |
    {error, update_automatic_tape_creation_policy_errors(), tuple()}.
update_automatic_tape_creation_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutomaticTapeCreationPolicy">>, Input, Options).

%% @doc Updates the bandwidth rate limits of a gateway.
%%
%% You can update both the upload and
%% download bandwidth rate limit or specify only one of the two. If you
%% don't set a
%% bandwidth rate limit, the existing rate limit remains. This operation is
%% supported only for
%% the stored volume, cached volume, and tape gateway types. To update
%% bandwidth rate limits
%% for S3 file gateways, use `UpdateBandwidthRateLimitSchedule'.
%%
%% By default, a gateway's bandwidth rate limits are not set. If you
%% don't set
%% any limit, the gateway does not have any limitations on its bandwidth
%% usage and could
%% potentially use the maximum available bandwidth.
%%
%% To specify which gateway to update, use the Amazon Resource Name (ARN) of
%% the gateway in
%% your request.
-spec update_bandwidth_rate_limit(aws_client:aws_client(), update_bandwidth_rate_limit_input()) ->
    {ok, update_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, update_bandwidth_rate_limit_errors(), tuple()}.
update_bandwidth_rate_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bandwidth_rate_limit(Client, Input, []).

-spec update_bandwidth_rate_limit(aws_client:aws_client(), update_bandwidth_rate_limit_input(), proplists:proplist()) ->
    {ok, update_bandwidth_rate_limit_output(), tuple()} |
    {error, any()} |
    {error, update_bandwidth_rate_limit_errors(), tuple()}.
update_bandwidth_rate_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBandwidthRateLimit">>, Input, Options).

%% @doc Updates the bandwidth rate limit schedule for a specified gateway.
%%
%% By default, gateways
%% do not have bandwidth rate limit schedules, which means no bandwidth rate
%% limiting is in
%% effect. Use this to initiate or update a gateway's bandwidth rate
%% limit schedule. This
%% operation is supported for volume, tape, and S3 file gateways. S3 file
%% gateways support
%% bandwidth rate limits for upload only. FSx file gateways do not support
%% bandwidth rate
%% limits.
-spec update_bandwidth_rate_limit_schedule(aws_client:aws_client(), update_bandwidth_rate_limit_schedule_input()) ->
    {ok, update_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_bandwidth_rate_limit_schedule_errors(), tuple()}.
update_bandwidth_rate_limit_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bandwidth_rate_limit_schedule(Client, Input, []).

-spec update_bandwidth_rate_limit_schedule(aws_client:aws_client(), update_bandwidth_rate_limit_schedule_input(), proplists:proplist()) ->
    {ok, update_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_bandwidth_rate_limit_schedule_errors(), tuple()}.
update_bandwidth_rate_limit_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBandwidthRateLimitSchedule">>, Input, Options).

%% @doc Updates the Challenge-Handshake Authentication Protocol (CHAP)
%% credentials for a
%% specified iSCSI target.
%%
%% By default, a gateway does not have CHAP enabled; however, for
%% added security, you might use it. This operation is supported in the
%% volume and tape
%% gateway types.
%%
%% When you update CHAP credentials, all existing connections on the target
%% are closed
%% and initiators must reconnect with the new credentials.
-spec update_chap_credentials(aws_client:aws_client(), update_chap_credentials_input()) ->
    {ok, update_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, update_chap_credentials_errors(), tuple()}.
update_chap_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_chap_credentials(Client, Input, []).

-spec update_chap_credentials(aws_client:aws_client(), update_chap_credentials_input(), proplists:proplist()) ->
    {ok, update_chap_credentials_output(), tuple()} |
    {error, any()} |
    {error, update_chap_credentials_errors(), tuple()}.
update_chap_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateChapCredentials">>, Input, Options).

%% @doc Updates a file system association.
%%
%% This operation is only supported in the FSx File
%% Gateways.
-spec update_file_system_association(aws_client:aws_client(), update_file_system_association_input()) ->
    {ok, update_file_system_association_output(), tuple()} |
    {error, any()} |
    {error, update_file_system_association_errors(), tuple()}.
update_file_system_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_system_association(Client, Input, []).

-spec update_file_system_association(aws_client:aws_client(), update_file_system_association_input(), proplists:proplist()) ->
    {ok, update_file_system_association_output(), tuple()} |
    {error, any()} |
    {error, update_file_system_association_errors(), tuple()}.
update_file_system_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileSystemAssociation">>, Input, Options).

%% @doc Updates a gateway's metadata, which includes the gateway's
%% name, time zone,
%% and metadata cache size.
%%
%% To specify which gateway to update, use the Amazon Resource Name
%% (ARN) of the gateway in your request.
%%
%% For gateways activated after September 2, 2015, the gateway's ARN
%% contains the
%% gateway ID rather than the gateway name. However, changing the name of the
%% gateway has
%% no effect on the gateway's ARN.
-spec update_gateway_information(aws_client:aws_client(), update_gateway_information_input()) ->
    {ok, update_gateway_information_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_information_errors(), tuple()}.
update_gateway_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_information(Client, Input, []).

-spec update_gateway_information(aws_client:aws_client(), update_gateway_information_input(), proplists:proplist()) ->
    {ok, update_gateway_information_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_information_errors(), tuple()}.
update_gateway_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewayInformation">>, Input, Options).

%% @doc Updates the gateway virtual machine (VM) software.
%%
%% The request immediately triggers the
%% software update.
%%
%% When you make this request, you get a `200 OK' success response
%% immediately. However, it might take some time for the update to complete.
%% You can call
%% `DescribeGatewayInformation' to verify the gateway is in the
%% `STATE_RUNNING' state.
%%
%% A software update forces a system restart of your gateway. You can
%% minimize the
%% chance of any disruption to your applications by increasing your iSCSI
%% Initiators'
%% timeouts. For more information about increasing iSCSI Initiator timeouts
%% for Windows and
%% Linux, see Customizing your Windows iSCSI settings:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings
%% and Customizing your Linux iSCSI settings:
%% https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings,
%% respectively.
-spec update_gateway_software_now(aws_client:aws_client(), update_gateway_software_now_input()) ->
    {ok, update_gateway_software_now_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_software_now_errors(), tuple()}.
update_gateway_software_now(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_software_now(Client, Input, []).

-spec update_gateway_software_now(aws_client:aws_client(), update_gateway_software_now_input(), proplists:proplist()) ->
    {ok, update_gateway_software_now_output(), tuple()} |
    {error, any()} |
    {error, update_gateway_software_now_errors(), tuple()}.
update_gateway_software_now(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewaySoftwareNow">>, Input, Options).

%% @doc Updates a gateway's maintenance window schedule, with settings
%% for monthly or
%% weekly cadence, specific day and time to begin maintenance, and which
%% types of updates to
%% apply.
%%
%% Time configuration uses the gateway's time zone. You can pass values
%% for a complete
%% maintenance schedule, or update policy, or both. Previous values will
%% persist for whichever
%% setting you choose not to modify. If an incomplete or invalid maintenance
%% schedule is
%% passed, the entire request will be rejected with an error and no changes
%% will occur.
%%
%% A complete maintenance schedule must include values for both
%% `MinuteOfHour' and `HourOfDay', and either
%% `DayOfMonth'
%% or
%% `DayOfWeek'.
%%
%% We recommend keeping maintenance updates turned on, except in specific use
%% cases
%% where the brief disruptions caused by updating the gateway could
%% critically impact your
%% deployment.
-spec update_maintenance_start_time(aws_client:aws_client(), update_maintenance_start_time_input()) ->
    {ok, update_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, update_maintenance_start_time_errors(), tuple()}.
update_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_start_time(Client, Input, []).

-spec update_maintenance_start_time(aws_client:aws_client(), update_maintenance_start_time_input(), proplists:proplist()) ->
    {ok, update_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, update_maintenance_start_time_errors(), tuple()}.
update_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceStartTime">>, Input, Options).

%% @doc Updates a Network File System (NFS) file share.
%%
%% This operation is only supported in S3
%% File Gateways.
%%
%% To leave a file share field unchanged, set the corresponding input field
%% to
%% null.
%%
%% Updates the following file share settings:
%%
%% Default storage class for your S3 bucket
%%
%% Metadata defaults for your S3 bucket
%%
%% Allowed NFS clients for your file share
%%
%% Squash settings
%%
%% Write status of your file share
-spec update_nfs_file_share(aws_client:aws_client(), update_nfs_file_share_input()) ->
    {ok, update_nfs_file_share_output(), tuple()} |
    {error, any()} |
    {error, update_nfs_file_share_errors(), tuple()}.
update_nfs_file_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_nfs_file_share(Client, Input, []).

-spec update_nfs_file_share(aws_client:aws_client(), update_nfs_file_share_input(), proplists:proplist()) ->
    {ok, update_nfs_file_share_output(), tuple()} |
    {error, any()} |
    {error, update_nfs_file_share_errors(), tuple()}.
update_nfs_file_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNFSFileShare">>, Input, Options).

%% @doc Updates a Server Message Block (SMB) file share.
%%
%% This operation is only supported for S3
%% File Gateways.
%%
%% To leave a file share field unchanged, set the corresponding input field
%% to
%% null.
%%
%% File gateways require Security Token Service (Amazon Web Services STS) to
%% be
%% activated to enable you to create a file share. Make sure that Amazon Web
%% Services STS
%% is activated in the Amazon Web Services Region you are creating your file
%% gateway in. If
%% Amazon Web Services STS is not activated in this Amazon Web Services
%% Region, activate
%% it. For information about how to activate Amazon Web Services STS, see
%% Activating and
%% deactivating Amazon Web Services STS in an Amazon Web Services Region:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
%% in the
%% Identity and Access Management User Guide.
%%
%% File gateways don't support creating hard or symbolic links on a file
%% share.
-spec update_smb_file_share(aws_client:aws_client(), update_smb_file_share_input()) ->
    {ok, update_smb_file_share_output(), tuple()} |
    {error, any()} |
    {error, update_smb_file_share_errors(), tuple()}.
update_smb_file_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_smb_file_share(Client, Input, []).

-spec update_smb_file_share(aws_client:aws_client(), update_smb_file_share_input(), proplists:proplist()) ->
    {ok, update_smb_file_share_output(), tuple()} |
    {error, any()} |
    {error, update_smb_file_share_errors(), tuple()}.
update_smb_file_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSMBFileShare">>, Input, Options).

%% @doc Controls whether the shares on an S3 File Gateway are visible in a
%% net view or browse
%% list.
%%
%% The operation is only supported for S3 File Gateways.
-spec update_smb_file_share_visibility(aws_client:aws_client(), update_smb_file_share_visibility_input()) ->
    {ok, update_smb_file_share_visibility_output(), tuple()} |
    {error, any()} |
    {error, update_smb_file_share_visibility_errors(), tuple()}.
update_smb_file_share_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_smb_file_share_visibility(Client, Input, []).

-spec update_smb_file_share_visibility(aws_client:aws_client(), update_smb_file_share_visibility_input(), proplists:proplist()) ->
    {ok, update_smb_file_share_visibility_output(), tuple()} |
    {error, any()} |
    {error, update_smb_file_share_visibility_errors(), tuple()}.
update_smb_file_share_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSMBFileShareVisibility">>, Input, Options).

%% @doc Updates the list of Active Directory users and groups that have
%% special permissions for
%% SMB file shares on the gateway.
-spec update_smb_local_groups(aws_client:aws_client(), update_smb_local_groups_input()) ->
    {ok, update_smb_local_groups_output(), tuple()} |
    {error, any()} |
    {error, update_smb_local_groups_errors(), tuple()}.
update_smb_local_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_smb_local_groups(Client, Input, []).

-spec update_smb_local_groups(aws_client:aws_client(), update_smb_local_groups_input(), proplists:proplist()) ->
    {ok, update_smb_local_groups_output(), tuple()} |
    {error, any()} |
    {error, update_smb_local_groups_errors(), tuple()}.
update_smb_local_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSMBLocalGroups">>, Input, Options).

%% @doc Updates the SMB security strategy level for an Amazon S3 file
%% gateway.
%%
%% This
%% action is only supported for Amazon S3 file gateways.
%%
%% For information about configuring this setting using the Amazon Web
%% Services console,
%% see Setting a security level for your gateway:
%% https://docs.aws.amazon.com/filegateway/latest/files3/security-strategy.html
%% in the Amazon S3
%% File Gateway User Guide.
%%
%% A higher security strategy level can affect performance of the gateway.
-spec update_smb_security_strategy(aws_client:aws_client(), update_smb_security_strategy_input()) ->
    {ok, update_smb_security_strategy_output(), tuple()} |
    {error, any()} |
    {error, update_smb_security_strategy_errors(), tuple()}.
update_smb_security_strategy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_smb_security_strategy(Client, Input, []).

-spec update_smb_security_strategy(aws_client:aws_client(), update_smb_security_strategy_input(), proplists:proplist()) ->
    {ok, update_smb_security_strategy_output(), tuple()} |
    {error, any()} |
    {error, update_smb_security_strategy_errors(), tuple()}.
update_smb_security_strategy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSMBSecurityStrategy">>, Input, Options).

%% @doc Updates a snapshot schedule configured for a gateway volume.
%%
%% This operation is only
%% supported in the cached volume and stored volume gateway types.
%%
%% The default snapshot schedule for volume is once every 24 hours, starting
%% at the
%% creation time of the volume. You can use this API to change the snapshot
%% schedule
%% configured for the volume.
%%
%% In the request you must identify the gateway volume whose snapshot
%% schedule you want to
%% update, and the schedule information, including when you want the snapshot
%% to begin on a
%% day and the frequency (in hours) of snapshots.
-spec update_snapshot_schedule(aws_client:aws_client(), update_snapshot_schedule_input()) ->
    {ok, update_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_snapshot_schedule_errors(), tuple()}.
update_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot_schedule(Client, Input, []).

-spec update_snapshot_schedule(aws_client:aws_client(), update_snapshot_schedule_input(), proplists:proplist()) ->
    {ok, update_snapshot_schedule_output(), tuple()} |
    {error, any()} |
    {error, update_snapshot_schedule_errors(), tuple()}.
update_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshotSchedule">>, Input, Options).

%% @doc Updates the type of medium changer in a tape gateway.
%%
%% When you activate a tape gateway,
%% you select a medium changer type for the tape gateway. This operation
%% enables you to select
%% a different type of medium changer after a tape gateway is activated. This
%% operation is
%% only supported in the tape gateway type.
-spec update_vtl_device_type(aws_client:aws_client(), update_vtl_device_type_input()) ->
    {ok, update_vtl_device_type_output(), tuple()} |
    {error, any()} |
    {error, update_vtl_device_type_errors(), tuple()}.
update_vtl_device_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vtl_device_type(Client, Input, []).

-spec update_vtl_device_type(aws_client:aws_client(), update_vtl_device_type_input(), proplists:proplist()) ->
    {ok, update_vtl_device_type_output(), tuple()} |
    {error, any()} |
    {error, update_vtl_device_type_errors(), tuple()}.
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
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"storagegateway">>},
    Host = build_host(<<"storagegateway">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"StorageGateway_20130630.", Action/binary>>}
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
