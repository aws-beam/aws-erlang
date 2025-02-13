%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon FSx is a fully managed service that makes it easy for storage
%% and
%% application administrators to launch and use shared file storage.
-module(aws_fsx).

-export([associate_file_system_aliases/2,
         associate_file_system_aliases/3,
         cancel_data_repository_task/2,
         cancel_data_repository_task/3,
         copy_backup/2,
         copy_backup/3,
         copy_snapshot_and_update_volume/2,
         copy_snapshot_and_update_volume/3,
         create_backup/2,
         create_backup/3,
         create_data_repository_association/2,
         create_data_repository_association/3,
         create_data_repository_task/2,
         create_data_repository_task/3,
         create_file_cache/2,
         create_file_cache/3,
         create_file_system/2,
         create_file_system/3,
         create_file_system_from_backup/2,
         create_file_system_from_backup/3,
         create_snapshot/2,
         create_snapshot/3,
         create_storage_virtual_machine/2,
         create_storage_virtual_machine/3,
         create_volume/2,
         create_volume/3,
         create_volume_from_backup/2,
         create_volume_from_backup/3,
         delete_backup/2,
         delete_backup/3,
         delete_data_repository_association/2,
         delete_data_repository_association/3,
         delete_file_cache/2,
         delete_file_cache/3,
         delete_file_system/2,
         delete_file_system/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_storage_virtual_machine/2,
         delete_storage_virtual_machine/3,
         delete_volume/2,
         delete_volume/3,
         describe_backups/2,
         describe_backups/3,
         describe_data_repository_associations/2,
         describe_data_repository_associations/3,
         describe_data_repository_tasks/2,
         describe_data_repository_tasks/3,
         describe_file_caches/2,
         describe_file_caches/3,
         describe_file_system_aliases/2,
         describe_file_system_aliases/3,
         describe_file_systems/2,
         describe_file_systems/3,
         describe_shared_vpc_configuration/2,
         describe_shared_vpc_configuration/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_storage_virtual_machines/2,
         describe_storage_virtual_machines/3,
         describe_volumes/2,
         describe_volumes/3,
         disassociate_file_system_aliases/2,
         disassociate_file_system_aliases/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         release_file_system_nfs_v3_locks/2,
         release_file_system_nfs_v3_locks/3,
         restore_volume_from_snapshot/2,
         restore_volume_from_snapshot/3,
         start_misconfigured_state_recovery/2,
         start_misconfigured_state_recovery/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_data_repository_association/2,
         update_data_repository_association/3,
         update_file_cache/2,
         update_file_cache/3,
         update_file_system/2,
         update_file_system/3,
         update_shared_vpc_configuration/2,
         update_shared_vpc_configuration/3,
         update_snapshot/2,
         update_snapshot/3,
         update_storage_virtual_machine/2,
         update_storage_virtual_machine/3,
         update_volume/2,
         update_volume/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% disk_iops_configuration() :: #{
%%   <<"Iops">> => float(),
%%   <<"Mode">> => list(any())
%% }
-type disk_iops_configuration() :: #{binary() => any()}.

%% Example:
%% file_system() :: #{
%%   <<"AdministrativeActions">> => list(administrative_action()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DNSName">> => string(),
%%   <<"FailureDetails">> => file_system_failure_details(),
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemType">> => list(any()),
%%   <<"FileSystemTypeVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LustreConfiguration">> => lustre_file_system_configuration(),
%%   <<"NetworkInterfaceIds">> => list(string()()),
%%   <<"OntapConfiguration">> => ontap_file_system_configuration(),
%%   <<"OpenZFSConfiguration">> => open_z_f_s_file_system_configuration(),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"StorageCapacity">> => integer(),
%%   <<"StorageType">> => list(any()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> => string(),
%%   <<"WindowsConfiguration">> => windows_file_system_configuration()
%% }
-type file_system() :: #{binary() => any()}.

%% Example:
%% create_file_cache_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"CopyTagsToDataRepositoryAssociations">> => boolean(),
%%   <<"DataRepositoryAssociations">> => list(file_cache_data_repository_association()()),
%%   <<"FileCacheType">> := list(any()),
%%   <<"FileCacheTypeVersion">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LustreConfiguration">> => create_file_cache_lustre_configuration(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"StorageCapacity">> := integer(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_file_cache_request() :: #{binary() => any()}.

%% Example:
%% copy_backup_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type copy_backup_response() :: #{binary() => any()}.

%% Example:
%% resource_does_not_support_tagging() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceARN">> => string()
%% }
-type resource_does_not_support_tagging() :: #{binary() => any()}.

%% Example:
%% delete_data_repository_association_response() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"DeleteDataInFileSystem">> => boolean(),
%%   <<"Lifecycle">> => list(any())
%% }
-type delete_data_repository_association_response() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"SnapshotId">> := string()
%% }
-type delete_snapshot_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_file_system_lustre_metadata_configuration() :: #{
%%   <<"Iops">> => integer(),
%%   <<"Mode">> => list(any())
%% }
-type create_file_system_lustre_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_user_or_group_quota() :: #{
%%   <<"Id">> => integer(),
%%   <<"StorageCapacityQuotaGiB">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type open_z_f_s_user_or_group_quota() :: #{binary() => any()}.

%% Example:
%% resource_not_found() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceARN">> => string()
%% }
-type resource_not_found() :: #{binary() => any()}.

%% Example:
%% snapshot_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type snapshot_not_found() :: #{binary() => any()}.

%% Example:
%% update_data_repository_association_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"ImportedFileChunkSize">> => integer(),
%%   <<"S3">> => s3_data_repository_configuration()
%% }
-type update_data_repository_association_request() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_client_configuration() :: #{
%%   <<"Clients">> => string(),
%%   <<"Options">> => list(string()())
%% }
-type open_z_f_s_client_configuration() :: #{binary() => any()}.

%% Example:
%% storage_virtual_machine_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type storage_virtual_machine_not_found() :: #{binary() => any()}.

%% Example:
%% create_file_system_windows_configuration() :: #{
%%   <<"ActiveDirectoryId">> => string(),
%%   <<"Aliases">> => list(string()()),
%%   <<"AuditLogConfiguration">> => windows_audit_log_create_configuration(),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_configuration(),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type create_file_system_windows_configuration() :: #{binary() => any()}.

%% Example:
%% auto_import_policy() :: #{
%%   <<"Events">> => list(list(any())())
%% }
-type auto_import_policy() :: #{binary() => any()}.

%% Example:
%% file_cache() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DNSName">> => string(),
%%   <<"DataRepositoryAssociationIds">> => list(string()()),
%%   <<"FailureDetails">> => file_cache_failure_details(),
%%   <<"FileCacheId">> => string(),
%%   <<"FileCacheType">> => list(any()),
%%   <<"FileCacheTypeVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LustreConfiguration">> => file_cache_lustre_configuration(),
%%   <<"NetworkInterfaceIds">> => list(string()()),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"StorageCapacity">> => integer(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type file_cache() :: #{binary() => any()}.

%% Example:
%% invalid_region() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_region() :: #{binary() => any()}.

%% Example:
%% aggregate_configuration() :: #{
%%   <<"Aggregates">> => list(string()()),
%%   <<"TotalConstituents">> => integer()
%% }
-type aggregate_configuration() :: #{binary() => any()}.

%% Example:
%% delete_volume_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"OntapConfiguration">> => delete_volume_ontap_configuration(),
%%   <<"OpenZFSConfiguration">> => delete_volume_open_z_f_s_configuration(),
%%   <<"VolumeId">> := string()
%% }
-type delete_volume_request() :: #{binary() => any()}.

%% Example:
%% describe_file_caches_response() :: #{
%%   <<"FileCaches">> => list(file_cache()()),
%%   <<"NextToken">> => string()
%% }
-type describe_file_caches_response() :: #{binary() => any()}.

%% Example:
%% update_svm_active_directory_configuration() :: #{
%%   <<"NetBiosName">> => string(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_configuration_updates()
%% }
-type update_svm_active_directory_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_export_path() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_export_path() :: #{binary() => any()}.

%% Example:
%% create_file_system_open_z_f_s_configuration() :: #{
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"CopyTagsToVolumes">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"EndpointIpAddressRange">> => string(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"ReadCacheConfiguration">> => open_z_f_s_read_cache_configuration(),
%%   <<"RootVolumeConfiguration">> => open_z_f_s_create_root_volume_configuration(),
%%   <<"RouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type create_file_system_open_z_f_s_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% start_misconfigured_state_recovery_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string()
%% }
-type start_misconfigured_state_recovery_request() :: #{binary() => any()}.

%% Example:
%% update_snapshot_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"SnapshotId">> := string()
%% }
-type update_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_file_system_ontap_configuration() :: #{
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"EndpointIpAddressRange">> => string(),
%%   <<"FsxAdminPassword">> => string(),
%%   <<"HAPairs">> => integer(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"RouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"ThroughputCapacityPerHAPair">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type create_file_system_ontap_configuration() :: #{binary() => any()}.

%% Example:
%% update_file_system_response() :: #{
%%   <<"FileSystem">> => file_system()
%% }
-type update_file_system_response() :: #{binary() => any()}.

%% Example:
%% create_snapshot_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeId">> := string()
%% }
-type create_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_svm_active_directory_configuration() :: #{
%%   <<"NetBiosName">> => string(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_configuration()
%% }
-type create_svm_active_directory_configuration() :: #{binary() => any()}.

%% Example:
%% file_cache_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type file_cache_failure_details() :: #{binary() => any()}.

%% Example:
%% nfs_data_repository_configuration() :: #{
%%   <<"AutoExportPolicy">> => auto_export_policy(),
%%   <<"DnsIps">> => list(string()()),
%%   <<"Version">> => list(any())
%% }
-type nfs_data_repository_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_network_settings() :: #{
%%   <<"InvalidRouteTableId">> => string(),
%%   <<"InvalidSecurityGroupId">> => string(),
%%   <<"InvalidSubnetId">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_network_settings() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Snapshots">> => list(snapshot()())
%% }
-type describe_snapshots_response() :: #{binary() => any()}.

%% Example:
%% create_file_system_response() :: #{
%%   <<"FileSystem">> => file_system()
%% }
-type create_file_system_response() :: #{binary() => any()}.

%% Example:
%% duration_since_last_access() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => float()
%% }
-type duration_since_last_access() :: #{binary() => any()}.

%% Example:
%% retention_period() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type retention_period() :: #{binary() => any()}.

%% Example:
%% describe_volumes_request() :: #{
%%   <<"Filters">> => list(volume_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VolumeIds">> => list(string()())
%% }
-type describe_volumes_request() :: #{binary() => any()}.

%% Example:
%% create_snapshot_response() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type create_snapshot_response() :: #{binary() => any()}.

%% Example:
%% autocommit_period() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type autocommit_period() :: #{binary() => any()}.

%% Example:
%% update_volume_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"OntapConfiguration">> => update_ontap_volume_configuration(),
%%   <<"OpenZFSConfiguration">> => update_open_z_f_s_volume_configuration(),
%%   <<"VolumeId">> := string()
%% }
-type update_volume_request() :: #{binary() => any()}.

%% Example:
%% delete_volume_ontap_configuration() :: #{
%%   <<"BypassSnaplockEnterpriseRetention">> => boolean(),
%%   <<"FinalBackupTags">> => list(tag()()),
%%   <<"SkipFinalBackup">> => boolean()
%% }
-type delete_volume_ontap_configuration() :: #{binary() => any()}.

%% Example:
%% missing_volume_configuration() :: #{
%%   <<"Message">> => string()
%% }
-type missing_volume_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_task_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_task_not_found() :: #{binary() => any()}.

%% Example:
%% backup_in_progress() :: #{
%%   <<"Message">> => string()
%% }
-type backup_in_progress() :: #{binary() => any()}.

%% Example:
%% describe_storage_virtual_machines_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StorageVirtualMachines">> => list(storage_virtual_machine()())
%% }
-type describe_storage_virtual_machines_response() :: #{binary() => any()}.

%% Example:
%% file_cache_nfs_configuration() :: #{
%%   <<"DnsIps">> => list(string()()),
%%   <<"Version">> => list(any())
%% }
-type file_cache_nfs_configuration() :: #{binary() => any()}.

%% Example:
%% windows_audit_log_configuration() :: #{
%%   <<"AuditLogDestination">> => string(),
%%   <<"FileAccessAuditLogLevel">> => list(any()),
%%   <<"FileShareAccessAuditLogLevel">> => list(any())
%% }
-type windows_audit_log_configuration() :: #{binary() => any()}.

%% Example:
%% administrative_action() :: #{
%%   <<"AdministrativeActionType">> => list(any()),
%%   <<"FailureDetails">> => administrative_action_failure_details(),
%%   <<"ProgressPercent">> => integer(),
%%   <<"RemainingTransferBytes">> => float(),
%%   <<"RequestTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TargetFileSystemValues">> => file_system(),
%%   <<"TargetSnapshotValues">> => snapshot(),
%%   <<"TargetVolumeValues">> => volume(),
%%   <<"TotalTransferBytes">> => float()
%% }
-type administrative_action() :: #{binary() => any()}.

%% Example:
%% copy_backup_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"CopyTags">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceBackupId">> := string(),
%%   <<"SourceRegion">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type copy_backup_request() :: #{binary() => any()}.

%% Example:
%% release_file_system_nfs_v3_locks_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string()
%% }
-type release_file_system_nfs_v3_locks_request() :: #{binary() => any()}.

%% Example:
%% update_ontap_volume_configuration() :: #{
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"JunctionPath">> => string(),
%%   <<"SecurityStyle">> => list(any()),
%%   <<"SizeInBytes">> => float(),
%%   <<"SizeInMegabytes">> => integer(),
%%   <<"SnaplockConfiguration">> => update_snaplock_configuration(),
%%   <<"SnapshotPolicy">> => string(),
%%   <<"StorageEfficiencyEnabled">> => boolean(),
%%   <<"TieringPolicy">> => tiering_policy()
%% }
-type update_ontap_volume_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% file_cache_creating() :: #{
%%   <<"CopyTagsToDataRepositoryAssociations">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DNSName">> => string(),
%%   <<"DataRepositoryAssociationIds">> => list(string()()),
%%   <<"FailureDetails">> => file_cache_failure_details(),
%%   <<"FileCacheId">> => string(),
%%   <<"FileCacheType">> => list(any()),
%%   <<"FileCacheTypeVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LustreConfiguration">> => file_cache_lustre_configuration(),
%%   <<"NetworkInterfaceIds">> => list(string()()),
%%   <<"OwnerId">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"StorageCapacity">> => integer(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> => string()
%% }
-type file_cache_creating() :: #{binary() => any()}.

%% Example:
%% lustre_root_squash_configuration() :: #{
%%   <<"NoSquashNids">> => list(string()()),
%%   <<"RootSquash">> => string()
%% }
-type lustre_root_squash_configuration() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_nfs_export() :: #{
%%   <<"ClientConfigurations">> => list(open_z_f_s_client_configuration()())
%% }
-type open_z_f_s_nfs_export() :: #{binary() => any()}.

%% Example:
%% file_system_endpoints() :: #{
%%   <<"Intercluster">> => file_system_endpoint(),
%%   <<"Management">> => file_system_endpoint()
%% }
-type file_system_endpoints() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_and_update_volume_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"CopyStrategy">> => list(any()),
%%   <<"Options">> => list(list(any())()),
%%   <<"SourceSnapshotARN">> := string(),
%%   <<"VolumeId">> := string()
%% }
-type copy_snapshot_and_update_volume_request() :: #{binary() => any()}.

%% Example:
%% lifecycle_transition_reason() :: #{
%%   <<"Message">> => string()
%% }
-type lifecycle_transition_reason() :: #{binary() => any()}.

%% Example:
%% file_system_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type file_system_failure_details() :: #{binary() => any()}.

%% Example:
%% update_file_system_ontap_configuration() :: #{
%%   <<"AddRouteTableIds">> => list(string()()),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"FsxAdminPassword">> => string(),
%%   <<"HAPairs">> => integer(),
%%   <<"RemoveRouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"ThroughputCapacityPerHAPair">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type update_file_system_ontap_configuration() :: #{binary() => any()}.

%% Example:
%% storage_virtual_machine_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type storage_virtual_machine_filter() :: #{binary() => any()}.

%% Example:
%% associate_file_system_aliases_request() :: #{
%%   <<"Aliases">> := list(string()()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string()
%% }
-type associate_file_system_aliases_request() :: #{binary() => any()}.

%% Example:
%% create_open_z_f_s_origin_snapshot_configuration() :: #{
%%   <<"CopyStrategy">> => list(any()),
%%   <<"SnapshotARN">> => string()
%% }
-type create_open_z_f_s_origin_snapshot_configuration() :: #{binary() => any()}.

%% Example:
%% release_configuration() :: #{
%%   <<"DurationSinceLastAccess">> => duration_since_last_access()
%% }
-type release_configuration() :: #{binary() => any()}.

%% Example:
%% self_managed_active_directory_attributes() :: #{
%%   <<"DnsIps">> => list(string()()),
%%   <<"DomainName">> => string(),
%%   <<"FileSystemAdministratorsGroup">> => string(),
%%   <<"OrganizationalUnitDistinguishedName">> => string(),
%%   <<"UserName">> => string()
%% }
-type self_managed_active_directory_attributes() :: #{binary() => any()}.

%% Example:
%% cancel_data_repository_task_request() :: #{
%%   <<"TaskId">> := string()
%% }
-type cancel_data_repository_task_request() :: #{binary() => any()}.

%% Example:
%% delete_file_cache_response() :: #{
%%   <<"FileCacheId">> => string(),
%%   <<"Lifecycle">> => list(any())
%% }
-type delete_file_cache_response() :: #{binary() => any()}.

%% Example:
%% describe_file_system_aliases_response() :: #{
%%   <<"Aliases">> => list(alias()()),
%%   <<"NextToken">> => string()
%% }
-type describe_file_system_aliases_response() :: #{binary() => any()}.

%% Example:
%% delete_file_system_lustre_response() :: #{
%%   <<"FinalBackupId">> => string(),
%%   <<"FinalBackupTags">> => list(tag()())
%% }
-type delete_file_system_lustre_response() :: #{binary() => any()}.

%% Example:
%% data_repository_task_executing() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_task_executing() :: #{binary() => any()}.

%% Example:
%% file_system_endpoint() :: #{
%%   <<"DNSName">> => string(),
%%   <<"IpAddresses">> => list(string()())
%% }
-type file_system_endpoint() :: #{binary() => any()}.

%% Example:
%% delete_volume_open_z_f_s_configuration() :: #{
%%   <<"Options">> => list(list(any())())
%% }
-type delete_volume_open_z_f_s_configuration() :: #{binary() => any()}.

%% Example:
%% create_volume_from_backup_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"OntapConfiguration">> => create_ontap_volume_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_volume_from_backup_request() :: #{binary() => any()}.

%% Example:
%% self_managed_active_directory_configuration_updates() :: #{
%%   <<"DnsIps">> => list(string()()),
%%   <<"DomainName">> => string(),
%%   <<"FileSystemAdministratorsGroup">> => string(),
%%   <<"OrganizationalUnitDistinguishedName">> => string(),
%%   <<"Password">> => string(),
%%   <<"UserName">> => string()
%% }
-type self_managed_active_directory_configuration_updates() :: #{binary() => any()}.

%% Example:
%% tiering_policy() :: #{
%%   <<"CoolingPeriod">> => integer(),
%%   <<"Name">> => list(any())
%% }
-type tiering_policy() :: #{binary() => any()}.

%% Example:
%% svm_active_directory_configuration() :: #{
%%   <<"NetBiosName">> => string(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_attributes()
%% }
-type svm_active_directory_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_task_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_task_failure_details() :: #{binary() => any()}.

%% Example:
%% svm_endpoints() :: #{
%%   <<"Iscsi">> => svm_endpoint(),
%%   <<"Management">> => svm_endpoint(),
%%   <<"Nfs">> => svm_endpoint(),
%%   <<"Smb">> => svm_endpoint()
%% }
-type svm_endpoints() :: #{binary() => any()}.

%% Example:
%% backup_restoring() :: #{
%%   <<"FileSystemId">> => string(),
%%   <<"Message">> => string()
%% }
-type backup_restoring() :: #{binary() => any()}.

%% Example:
%% unsupported_operation() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation() :: #{binary() => any()}.

%% Example:
%% delete_volume_ontap_response() :: #{
%%   <<"FinalBackupId">> => string(),
%%   <<"FinalBackupTags">> => list(tag()())
%% }
-type delete_volume_ontap_response() :: #{binary() => any()}.

%% Example:
%% create_storage_virtual_machine_request() :: #{
%%   <<"ActiveDirectoryConfiguration">> => create_svm_active_directory_configuration(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string(),
%%   <<"Name">> := string(),
%%   <<"RootVolumeSecurityStyle">> => list(any()),
%%   <<"SvmAdminPassword">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_storage_virtual_machine_request() :: #{binary() => any()}.

%% Example:
%% disassociate_file_system_aliases_response() :: #{
%%   <<"Aliases">> => list(alias()())
%% }
-type disassociate_file_system_aliases_response() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_and_update_volume_response() :: #{
%%   <<"AdministrativeActions">> => list(administrative_action()()),
%%   <<"Lifecycle">> => list(any()),
%%   <<"VolumeId">> => string()
%% }
-type copy_snapshot_and_update_volume_response() :: #{binary() => any()}.

%% Example:
%% update_snaplock_configuration() :: #{
%%   <<"AuditLogVolume">> => boolean(),
%%   <<"AutocommitPeriod">> => autocommit_period(),
%%   <<"PrivilegedDelete">> => list(any()),
%%   <<"RetentionPeriod">> => snaplock_retention_period(),
%%   <<"VolumeAppendModeEnabled">> => boolean()
%% }
-type update_snaplock_configuration() :: #{binary() => any()}.

%% Example:
%% create_aggregate_configuration() :: #{
%%   <<"Aggregates">> => list(string()()),
%%   <<"ConstituentsPerAggregate">> => integer()
%% }
-type create_aggregate_configuration() :: #{binary() => any()}.

%% Example:
%% describe_backups_request() :: #{
%%   <<"BackupIds">> => list(string()()),
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_backups_request() :: #{binary() => any()}.

%% Example:
%% update_open_z_f_s_volume_configuration() :: #{
%%   <<"DataCompressionType">> => list(any()),
%%   <<"NfsExports">> => list(open_z_f_s_nfs_export()()),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RecordSizeKiB">> => integer(),
%%   <<"StorageCapacityQuotaGiB">> => integer(),
%%   <<"StorageCapacityReservationGiB">> => integer(),
%%   <<"UserAndGroupQuotas">> => list(open_z_f_s_user_or_group_quota()())
%% }
-type update_open_z_f_s_volume_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_task_status() :: #{
%%   <<"FailedCount">> => float(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ReleasedCapacity">> => float(),
%%   <<"SucceededCount">> => float(),
%%   <<"TotalCount">> => float()
%% }
-type data_repository_task_status() :: #{binary() => any()}.

%% Example:
%% update_file_system_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string(),
%%   <<"FileSystemTypeVersion">> => string(),
%%   <<"LustreConfiguration">> => update_file_system_lustre_configuration(),
%%   <<"OntapConfiguration">> => update_file_system_ontap_configuration(),
%%   <<"OpenZFSConfiguration">> => update_file_system_open_z_f_s_configuration(),
%%   <<"StorageCapacity">> => integer(),
%%   <<"StorageType">> => list(any()),
%%   <<"WindowsConfiguration">> => update_file_system_windows_configuration()
%% }
-type update_file_system_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% update_shared_vpc_configuration_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"EnableFsxRouteTableUpdatesFromParticipantAccounts">> => string()
%% }
-type update_shared_vpc_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_data_repository_association_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DeleteDataInFileSystem">> => boolean()
%% }
-type delete_data_repository_association_request() :: #{binary() => any()}.

%% Example:
%% active_directory_error() :: #{
%%   <<"ActiveDirectoryId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type active_directory_error() :: #{binary() => any()}.

%% Example:
%% delete_file_system_response() :: #{
%%   <<"FileSystemId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LustreResponse">> => delete_file_system_lustre_response(),
%%   <<"OpenZFSResponse">> => delete_file_system_open_z_f_s_response(),
%%   <<"WindowsResponse">> => delete_file_system_windows_response()
%% }
-type delete_file_system_response() :: #{binary() => any()}.

%% Example:
%% create_data_repository_association_response() :: #{
%%   <<"Association">> => data_repository_association()
%% }
-type create_data_repository_association_response() :: #{binary() => any()}.

%% Example:
%% associate_file_system_aliases_response() :: #{
%%   <<"Aliases">> => list(alias()())
%% }
-type associate_file_system_aliases_response() :: #{binary() => any()}.

%% Example:
%% invalid_source_kms_key() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_source_kms_key() :: #{binary() => any()}.

%% Example:
%% snaplock_configuration() :: #{
%%   <<"AuditLogVolume">> => boolean(),
%%   <<"AutocommitPeriod">> => autocommit_period(),
%%   <<"PrivilegedDelete">> => list(any()),
%%   <<"RetentionPeriod">> => snaplock_retention_period(),
%%   <<"SnaplockType">> => list(any()),
%%   <<"VolumeAppendModeEnabled">> => boolean()
%% }
-type snaplock_configuration() :: #{binary() => any()}.

%% Example:
%% delete_file_system_open_z_f_s_configuration() :: #{
%%   <<"FinalBackupTags">> => list(tag()()),
%%   <<"Options">> => list(list(any())()),
%%   <<"SkipFinalBackup">> => boolean()
%% }
-type delete_file_system_open_z_f_s_configuration() :: #{binary() => any()}.

%% Example:
%% create_file_system_lustre_configuration() :: #{
%%   <<"AutoImportPolicy">> => list(any()),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DriveCacheType">> => list(any()),
%%   <<"EfaEnabled">> => boolean(),
%%   <<"ExportPath">> => string(),
%%   <<"ImportPath">> => string(),
%%   <<"ImportedFileChunkSize">> => integer(),
%%   <<"LogConfiguration">> => lustre_log_create_configuration(),
%%   <<"MetadataConfiguration">> => create_file_system_lustre_metadata_configuration(),
%%   <<"PerUnitStorageThroughput">> => integer(),
%%   <<"RootSquashConfiguration">> => lustre_root_squash_configuration(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type create_file_system_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% delete_storage_virtual_machine_response() :: #{
%%   <<"Lifecycle">> => list(any()),
%%   <<"StorageVirtualMachineId">> => string()
%% }
-type delete_storage_virtual_machine_response() :: #{binary() => any()}.

%% Example:
%% invalid_data_repository_type() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_data_repository_type() :: #{binary() => any()}.

%% Example:
%% create_file_system_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemType">> := list(any()),
%%   <<"FileSystemTypeVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LustreConfiguration">> => create_file_system_lustre_configuration(),
%%   <<"OntapConfiguration">> => create_file_system_ontap_configuration(),
%%   <<"OpenZFSConfiguration">> => create_file_system_open_z_f_s_configuration(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"StorageCapacity">> => integer(),
%%   <<"StorageType">> => list(any()),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"WindowsConfiguration">> => create_file_system_windows_configuration()
%% }
-type create_file_system_request() :: #{binary() => any()}.

%% Example:
%% not_service_resource_error() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceARN">> => string()
%% }
-type not_service_resource_error() :: #{binary() => any()}.

%% Example:
%% delete_file_system_open_z_f_s_response() :: #{
%%   <<"FinalBackupId">> => string(),
%%   <<"FinalBackupTags">> => list(tag()())
%% }
-type delete_file_system_open_z_f_s_response() :: #{binary() => any()}.

%% Example:
%% storage_virtual_machine() :: #{
%%   <<"ActiveDirectoryConfiguration">> => svm_active_directory_configuration(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Endpoints">> => svm_endpoints(),
%%   <<"FileSystemId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LifecycleTransitionReason">> => lifecycle_transition_reason(),
%%   <<"Name">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"RootVolumeSecurityStyle">> => list(any()),
%%   <<"StorageVirtualMachineId">> => string(),
%%   <<"Subtype">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UUID">> => string()
%% }
-type storage_virtual_machine() :: #{binary() => any()}.

%% Example:
%% update_file_system_lustre_configuration() :: #{
%%   <<"AutoImportPolicy">> => list(any()),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"LogConfiguration">> => lustre_log_create_configuration(),
%%   <<"MetadataConfiguration">> => update_file_system_lustre_metadata_configuration(),
%%   <<"PerUnitStorageThroughput">> => integer(),
%%   <<"RootSquashConfiguration">> => lustre_root_squash_configuration(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type update_file_system_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% release_file_system_nfs_v3_locks_response() :: #{
%%   <<"FileSystem">> => file_system()
%% }
-type release_file_system_nfs_v3_locks_response() :: #{binary() => any()}.

%% Example:
%% svm_endpoint() :: #{
%%   <<"DNSName">> => string(),
%%   <<"IpAddresses">> => list(string()())
%% }
-type svm_endpoint() :: #{binary() => any()}.

%% Example:
%% delete_backup_response() :: #{
%%   <<"BackupId">> => string(),
%%   <<"Lifecycle">> => list(any())
%% }
-type delete_backup_response() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_file_system_configuration() :: #{
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"CopyTagsToVolumes">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"EndpointIpAddress">> => string(),
%%   <<"EndpointIpAddressRange">> => string(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"ReadCacheConfiguration">> => open_z_f_s_read_cache_configuration(),
%%   <<"RootVolumeId">> => string(),
%%   <<"RouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type open_z_f_s_file_system_configuration() :: #{binary() => any()}.

%% Example:
%% update_storage_virtual_machine_request() :: #{
%%   <<"ActiveDirectoryConfiguration">> => update_svm_active_directory_configuration(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"StorageVirtualMachineId">> := string(),
%%   <<"SvmAdminPassword">> => string()
%% }
-type update_storage_virtual_machine_request() :: #{binary() => any()}.

%% Example:
%% create_data_repository_association_request() :: #{
%%   <<"BatchImportMetaDataOnCreate">> => boolean(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataRepositoryPath">> := string(),
%%   <<"FileSystemId">> := string(),
%%   <<"FileSystemPath">> => string(),
%%   <<"ImportedFileChunkSize">> => integer(),
%%   <<"S3">> => s3_data_repository_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_data_repository_association_request() :: #{binary() => any()}.

%% Example:
%% describe_shared_vpc_configuration_request() :: #{

%% }
-type describe_shared_vpc_configuration_request() :: #{binary() => any()}.

%% Example:
%% invalid_per_unit_storage_throughput() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_per_unit_storage_throughput() :: #{binary() => any()}.

%% Example:
%% lustre_log_create_configuration() :: #{
%%   <<"Destination">> => string(),
%%   <<"Level">> => list(any())
%% }
-type lustre_log_create_configuration() :: #{binary() => any()}.

%% Example:
%% create_volume_response() :: #{
%%   <<"Volume">> => volume()
%% }
-type create_volume_response() :: #{binary() => any()}.

%% Example:
%% update_storage_virtual_machine_response() :: #{
%%   <<"StorageVirtualMachine">> => storage_virtual_machine()
%% }
-type update_storage_virtual_machine_response() :: #{binary() => any()}.

%% Example:
%% missing_file_cache_configuration() :: #{
%%   <<"Message">> => string()
%% }
-type missing_file_cache_configuration() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_file_cache_lustre_configuration() :: #{
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type update_file_cache_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% lustre_log_configuration() :: #{
%%   <<"Destination">> => string(),
%%   <<"Level">> => list(any())
%% }
-type lustre_log_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_destination_kms_key() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_destination_kms_key() :: #{binary() => any()}.

%% Example:
%% lustre_file_system_configuration() :: #{
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"DataRepositoryConfiguration">> => data_repository_configuration(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DriveCacheType">> => list(any()),
%%   <<"EfaEnabled">> => boolean(),
%%   <<"LogConfiguration">> => lustre_log_configuration(),
%%   <<"MetadataConfiguration">> => file_system_lustre_metadata_configuration(),
%%   <<"MountName">> => string(),
%%   <<"PerUnitStorageThroughput">> => integer(),
%%   <<"RootSquashConfiguration">> => lustre_root_squash_configuration(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type lustre_file_system_configuration() :: #{binary() => any()}.

%% Example:
%% describe_volumes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Volumes">> => list(volume()())
%% }
-type describe_volumes_response() :: #{binary() => any()}.

%% Example:
%% auto_export_policy() :: #{
%%   <<"Events">> => list(list(any())())
%% }
-type auto_export_policy() :: #{binary() => any()}.

%% Example:
%% restore_volume_from_snapshot_response() :: #{
%%   <<"AdministrativeActions">> => list(administrative_action()()),
%%   <<"Lifecycle">> => list(any()),
%%   <<"VolumeId">> => string()
%% }
-type restore_volume_from_snapshot_response() :: #{binary() => any()}.

%% Example:
%% file_system_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type file_system_not_found() :: #{binary() => any()}.

%% Example:
%% file_cache_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type file_cache_not_found() :: #{binary() => any()}.

%% Example:
%% missing_file_system_configuration() :: #{
%%   <<"Message">> => string()
%% }
-type missing_file_system_configuration() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% snaplock_retention_period() :: #{
%%   <<"DefaultRetention">> => retention_period(),
%%   <<"MaximumRetention">> => retention_period(),
%%   <<"MinimumRetention">> => retention_period()
%% }
-type snaplock_retention_period() :: #{binary() => any()}.

%% Example:
%% create_data_repository_task_request() :: #{
%%   <<"CapacityToRelease">> => float(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string(),
%%   <<"Paths">> => list(string()()),
%%   <<"ReleaseConfiguration">> => release_configuration(),
%%   <<"Report">> := completion_report(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> := list(any())
%% }
-type create_data_repository_task_request() :: #{binary() => any()}.

%% Example:
%% create_storage_virtual_machine_response() :: #{
%%   <<"StorageVirtualMachine">> => storage_virtual_machine()
%% }
-type create_storage_virtual_machine_response() :: #{binary() => any()}.

%% Example:
%% create_open_z_f_s_volume_configuration() :: #{
%%   <<"CopyTagsToSnapshots">> => boolean(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"NfsExports">> => list(open_z_f_s_nfs_export()()),
%%   <<"OriginSnapshot">> => create_open_z_f_s_origin_snapshot_configuration(),
%%   <<"ParentVolumeId">> => string(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RecordSizeKiB">> => integer(),
%%   <<"StorageCapacityQuotaGiB">> => integer(),
%%   <<"StorageCapacityReservationGiB">> => integer(),
%%   <<"UserAndGroupQuotas">> => list(open_z_f_s_user_or_group_quota()())
%% }
-type create_open_z_f_s_volume_configuration() :: #{binary() => any()}.

%% Example:
%% active_directory_backup_attributes() :: #{
%%   <<"ActiveDirectoryId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"ResourceARN">> => string()
%% }
-type active_directory_backup_attributes() :: #{binary() => any()}.

%% Example:
%% backup_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type backup_failure_details() :: #{binary() => any()}.

%% Example:
%% backup() :: #{
%%   <<"BackupId">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DirectoryInformation">> => active_directory_backup_attributes(),
%%   <<"FailureDetails">> => backup_failure_details(),
%%   <<"FileSystem">> => file_system(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"OwnerId">> => string(),
%%   <<"ProgressPercent">> => integer(),
%%   <<"ResourceARN">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"SizeInBytes">> => float(),
%%   <<"SourceBackupId">> => string(),
%%   <<"SourceBackupRegion">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => list(any()),
%%   <<"Volume">> => volume()
%% }
-type backup() :: #{binary() => any()}.

%% Example:
%% data_repository_association_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_association_not_found() :: #{binary() => any()}.

%% Example:
%% create_file_cache_lustre_configuration() :: #{
%%   <<"DeploymentType">> => list(any()),
%%   <<"MetadataConfiguration">> => file_cache_lustre_metadata_configuration(),
%%   <<"PerUnitStorageThroughput">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type create_file_cache_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% completion_report() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Format">> => list(any()),
%%   <<"Path">> => string(),
%%   <<"Scope">> => list(any())
%% }
-type completion_report() :: #{binary() => any()}.

%% Example:
%% backup_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type backup_not_found() :: #{binary() => any()}.

%% Example:
%% delete_volume_response() :: #{
%%   <<"Lifecycle">> => list(any()),
%%   <<"OntapResponse">> => delete_volume_ontap_response(),
%%   <<"VolumeId">> => string()
%% }
-type delete_volume_response() :: #{binary() => any()}.

%% Example:
%% data_repository_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_failure_details() :: #{binary() => any()}.

%% Example:
%% snapshot_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type snapshot_filter() :: #{binary() => any()}.

%% Example:
%% s3_data_repository_configuration() :: #{
%%   <<"AutoExportPolicy">> => auto_export_policy(),
%%   <<"AutoImportPolicy">> => auto_import_policy()
%% }
-type s3_data_repository_configuration() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_read_cache_configuration() :: #{
%%   <<"SizeGiB">> => integer(),
%%   <<"SizingMode">> => list(any())
%% }
-type open_z_f_s_read_cache_configuration() :: #{binary() => any()}.

%% Example:
%% create_ontap_volume_configuration() :: #{
%%   <<"AggregateConfiguration">> => create_aggregate_configuration(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"JunctionPath">> => string(),
%%   <<"OntapVolumeType">> => list(any()),
%%   <<"SecurityStyle">> => list(any()),
%%   <<"SizeInBytes">> => float(),
%%   <<"SizeInMegabytes">> => integer(),
%%   <<"SnaplockConfiguration">> => create_snaplock_configuration(),
%%   <<"SnapshotPolicy">> => string(),
%%   <<"StorageEfficiencyEnabled">> => boolean(),
%%   <<"StorageVirtualMachineId">> => string(),
%%   <<"TieringPolicy">> => tiering_policy(),
%%   <<"VolumeStyle">> => list(any())
%% }
-type create_ontap_volume_configuration() :: #{binary() => any()}.

%% Example:
%% update_file_system_windows_configuration() :: #{
%%   <<"AuditLogConfiguration">> => windows_audit_log_create_configuration(),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_configuration_updates(),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type update_file_system_windows_configuration() :: #{binary() => any()}.

%% Example:
%% describe_file_systems_request() :: #{
%%   <<"FileSystemIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_file_systems_request() :: #{binary() => any()}.

%% Example:
%% describe_data_repository_tasks_response() :: #{
%%   <<"DataRepositoryTasks">> => list(data_repository_task()()),
%%   <<"NextToken">> => string()
%% }
-type describe_data_repository_tasks_response() :: #{binary() => any()}.

%% Example:
%% create_data_repository_task_response() :: #{
%%   <<"DataRepositoryTask">> => data_repository_task()
%% }
-type create_data_repository_task_response() :: #{binary() => any()}.

%% Example:
%% ontap_volume_configuration() :: #{
%%   <<"AggregateConfiguration">> => aggregate_configuration(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"FlexCacheEndpointType">> => list(any()),
%%   <<"JunctionPath">> => string(),
%%   <<"OntapVolumeType">> => list(any()),
%%   <<"SecurityStyle">> => list(any()),
%%   <<"SizeInBytes">> => float(),
%%   <<"SizeInMegabytes">> => integer(),
%%   <<"SnaplockConfiguration">> => snaplock_configuration(),
%%   <<"SnapshotPolicy">> => string(),
%%   <<"StorageEfficiencyEnabled">> => boolean(),
%%   <<"StorageVirtualMachineId">> => string(),
%%   <<"StorageVirtualMachineRoot">> => boolean(),
%%   <<"TieringPolicy">> => tiering_policy(),
%%   <<"UUID">> => string(),
%%   <<"VolumeStyle">> => list(any())
%% }
-type ontap_volume_configuration() :: #{binary() => any()}.

%% Example:
%% describe_data_repository_associations_response() :: #{
%%   <<"Associations">> => list(data_repository_association()()),
%%   <<"NextToken">> => string()
%% }
-type describe_data_repository_associations_response() :: #{binary() => any()}.

%% Example:
%% bad_request() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"AdministrativeActions">> => list(administrative_action()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LifecycleTransitionReason">> => lifecycle_transition_reason(),
%%   <<"Name">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"SnapshotId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeId">> => string()
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% alias() :: #{
%%   <<"Lifecycle">> => list(any()),
%%   <<"Name">> => string()
%% }
-type alias() :: #{binary() => any()}.

%% Example:
%% delete_file_system_windows_configuration() :: #{
%%   <<"FinalBackupTags">> => list(tag()()),
%%   <<"SkipFinalBackup">> => boolean()
%% }
-type delete_file_system_windows_configuration() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% update_file_system_open_z_f_s_configuration() :: #{
%%   <<"AddRouteTableIds">> => list(string()()),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"CopyTagsToVolumes">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"ReadCacheConfiguration">> => open_z_f_s_read_cache_configuration(),
%%   <<"RemoveRouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type update_file_system_open_z_f_s_configuration() :: #{binary() => any()}.

%% Example:
%% ontap_file_system_configuration() :: #{
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"EndpointIpAddressRange">> => string(),
%%   <<"Endpoints">> => file_system_endpoints(),
%%   <<"FsxAdminPassword">> => string(),
%%   <<"HAPairs">> => integer(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"RouteTableIds">> => list(string()()),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"ThroughputCapacityPerHAPair">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type ontap_file_system_configuration() :: #{binary() => any()}.

%% Example:
%% volume() :: #{
%%   <<"AdministrativeActions">> => list(administrative_action()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FileSystemId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"LifecycleTransitionReason">> => lifecycle_transition_reason(),
%%   <<"Name">> => string(),
%%   <<"OntapConfiguration">> => ontap_volume_configuration(),
%%   <<"OpenZFSConfiguration">> => open_z_f_s_volume_configuration(),
%%   <<"ResourceARN">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeType">> => list(any())
%% }
-type volume() :: #{binary() => any()}.

%% Example:
%% create_file_cache_response() :: #{
%%   <<"FileCache">> => file_cache_creating()
%% }
-type create_file_cache_response() :: #{binary() => any()}.

%% Example:
%% create_file_system_from_backup_response() :: #{
%%   <<"FileSystem">> => file_system()
%% }
-type create_file_system_from_backup_response() :: #{binary() => any()}.

%% Example:
%% update_file_cache_response() :: #{
%%   <<"FileCache">> => file_cache()
%% }
-type update_file_cache_response() :: #{binary() => any()}.

%% Example:
%% describe_file_caches_request() :: #{
%%   <<"FileCacheIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_file_caches_request() :: #{binary() => any()}.

%% Example:
%% volume_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type volume_filter() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_create_root_volume_configuration() :: #{
%%   <<"CopyTagsToSnapshots">> => boolean(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"NfsExports">> => list(open_z_f_s_nfs_export()()),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RecordSizeKiB">> => integer(),
%%   <<"UserAndGroupQuotas">> => list(open_z_f_s_user_or_group_quota()())
%% }
-type open_z_f_s_create_root_volume_configuration() :: #{binary() => any()}.

%% Example:
%% create_volume_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"OntapConfiguration">> => create_ontap_volume_configuration(),
%%   <<"OpenZFSConfiguration">> => create_open_z_f_s_volume_configuration(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeType">> := list(any())
%% }
-type create_volume_request() :: #{binary() => any()}.

%% Example:
%% delete_file_cache_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileCacheId">> := string()
%% }
-type delete_file_cache_request() :: #{binary() => any()}.

%% Example:
%% describe_data_repository_tasks_request() :: #{
%%   <<"Filters">> => list(data_repository_task_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TaskIds">> => list(string()())
%% }
-type describe_data_repository_tasks_request() :: #{binary() => any()}.

%% Example:
%% service_limit_exceeded() :: #{
%%   <<"Limit">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% self_managed_active_directory_configuration() :: #{
%%   <<"DnsIps">> => list(string()()),
%%   <<"DomainName">> => string(),
%%   <<"FileSystemAdministratorsGroup">> => string(),
%%   <<"OrganizationalUnitDistinguishedName">> => string(),
%%   <<"Password">> => string(),
%%   <<"UserName">> => string()
%% }
-type self_managed_active_directory_configuration() :: #{binary() => any()}.

%% Example:
%% incompatible_region_for_multi_a_z() :: #{
%%   <<"Message">> => string()
%% }
-type incompatible_region_for_multi_a_z() :: #{binary() => any()}.

%% Example:
%% describe_data_repository_associations_request() :: #{
%%   <<"AssociationIds">> => list(string()()),
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_data_repository_associations_request() :: #{binary() => any()}.

%% Example:
%% data_repository_task() :: #{
%%   <<"CapacityToRelease">> => float(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureDetails">> => data_repository_task_failure_details(),
%%   <<"FileCacheId">> => string(),
%%   <<"FileSystemId">> => string(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"Paths">> => list(string()()),
%%   <<"ReleaseConfiguration">> => release_configuration(),
%%   <<"Report">> => completion_report(),
%%   <<"ResourceARN">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => data_repository_task_status(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TaskId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type data_repository_task() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% windows_audit_log_create_configuration() :: #{
%%   <<"AuditLogDestination">> => string(),
%%   <<"FileAccessAuditLogLevel">> => list(any()),
%%   <<"FileShareAccessAuditLogLevel">> => list(any())
%% }
-type windows_audit_log_create_configuration() :: #{binary() => any()}.

%% Example:
%% windows_file_system_configuration() :: #{
%%   <<"ActiveDirectoryId">> => string(),
%%   <<"Aliases">> => list(alias()()),
%%   <<"AuditLogConfiguration">> => windows_audit_log_configuration(),
%%   <<"AutomaticBackupRetentionDays">> => integer(),
%%   <<"CopyTagsToBackups">> => boolean(),
%%   <<"DailyAutomaticBackupStartTime">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"DiskIopsConfiguration">> => disk_iops_configuration(),
%%   <<"MaintenanceOperationsInProgress">> => list(list(any())()),
%%   <<"PreferredFileServerIp">> => string(),
%%   <<"PreferredSubnetId">> => string(),
%%   <<"RemoteAdministrationEndpoint">> => string(),
%%   <<"SelfManagedActiveDirectoryConfiguration">> => self_managed_active_directory_attributes(),
%%   <<"ThroughputCapacity">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type windows_file_system_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_task_ended() :: #{
%%   <<"Message">> => string()
%% }
-type data_repository_task_ended() :: #{binary() => any()}.

%% Example:
%% describe_file_systems_response() :: #{
%%   <<"FileSystems">> => list(file_system()()),
%%   <<"NextToken">> => string()
%% }
-type describe_file_systems_response() :: #{binary() => any()}.

%% Example:
%% describe_shared_vpc_configuration_response() :: #{
%%   <<"EnableFsxRouteTableUpdatesFromParticipantAccounts">> => string()
%% }
-type describe_shared_vpc_configuration_response() :: #{binary() => any()}.

%% Example:
%% data_repository_task_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type data_repository_task_filter() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_request() :: #{
%%   <<"Filters">> => list(snapshot_filter()()),
%%   <<"IncludeShared">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SnapshotIds">> => list(string()())
%% }
-type describe_snapshots_request() :: #{binary() => any()}.

%% Example:
%% file_cache_lustre_metadata_configuration() :: #{
%%   <<"StorageCapacity">> => integer()
%% }
-type file_cache_lustre_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% update_snapshot_response() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type update_snapshot_response() :: #{binary() => any()}.

%% Example:
%% file_cache_data_repository_association() :: #{
%%   <<"DataRepositoryPath">> => string(),
%%   <<"DataRepositorySubdirectories">> => list(string()()),
%%   <<"FileCachePath">> => string(),
%%   <<"NFS">> => file_cache_nfs_configuration()
%% }
-type file_cache_data_repository_association() :: #{binary() => any()}.

%% Example:
%% restore_volume_from_snapshot_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Options">> => list(list(any())()),
%%   <<"SnapshotId">> := string(),
%%   <<"VolumeId">> := string()
%% }
-type restore_volume_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% start_misconfigured_state_recovery_response() :: #{
%%   <<"FileSystem">> => file_system()
%% }
-type start_misconfigured_state_recovery_response() :: #{binary() => any()}.

%% Example:
%% volume_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type volume_not_found() :: #{binary() => any()}.

%% Example:
%% create_snaplock_configuration() :: #{
%%   <<"AuditLogVolume">> => boolean(),
%%   <<"AutocommitPeriod">> => autocommit_period(),
%%   <<"PrivilegedDelete">> => list(any()),
%%   <<"RetentionPeriod">> => snaplock_retention_period(),
%%   <<"SnaplockType">> => list(any()),
%%   <<"VolumeAppendModeEnabled">> => boolean()
%% }
-type create_snaplock_configuration() :: #{binary() => any()}.

%% Example:
%% describe_backups_response() :: #{
%%   <<"Backups">> => list(backup()()),
%%   <<"NextToken">> => string()
%% }
-type describe_backups_response() :: #{binary() => any()}.

%% Example:
%% delete_backup_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"ClientRequestToken">> => string()
%% }
-type delete_backup_request() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_origin_snapshot_configuration() :: #{
%%   <<"CopyStrategy">> => list(any()),
%%   <<"SnapshotARN">> => string()
%% }
-type open_z_f_s_origin_snapshot_configuration() :: #{binary() => any()}.

%% Example:
%% administrative_action_failure_details() :: #{
%%   <<"Message">> => string()
%% }
-type administrative_action_failure_details() :: #{binary() => any()}.

%% Example:
%% create_backup_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeId">> => string()
%% }
-type create_backup_request() :: #{binary() => any()}.

%% Example:
%% file_system_lustre_metadata_configuration() :: #{
%%   <<"Iops">> => integer(),
%%   <<"Mode">> => list(any())
%% }
-type file_system_lustre_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% delete_file_system_windows_response() :: #{
%%   <<"FinalBackupId">> => string(),
%%   <<"FinalBackupTags">> => list(tag()())
%% }
-type delete_file_system_windows_response() :: #{binary() => any()}.

%% Example:
%% update_shared_vpc_configuration_response() :: #{
%%   <<"EnableFsxRouteTableUpdatesFromParticipantAccounts">> => string()
%% }
-type update_shared_vpc_configuration_response() :: #{binary() => any()}.

%% Example:
%% incompatible_parameter_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Parameter">> => string()
%% }
-type incompatible_parameter_error() :: #{binary() => any()}.

%% Example:
%% backup_being_copied() :: #{
%%   <<"BackupId">> => string(),
%%   <<"Message">> => string()
%% }
-type backup_being_copied() :: #{binary() => any()}.

%% Example:
%% create_volume_from_backup_response() :: #{
%%   <<"Volume">> => volume()
%% }
-type create_volume_from_backup_response() :: #{binary() => any()}.

%% Example:
%% update_data_repository_association_response() :: #{
%%   <<"Association">> => data_repository_association()
%% }
-type update_data_repository_association_response() :: #{binary() => any()}.

%% Example:
%% disassociate_file_system_aliases_request() :: #{
%%   <<"Aliases">> := list(string()()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string()
%% }
-type disassociate_file_system_aliases_request() :: #{binary() => any()}.

%% Example:
%% delete_storage_virtual_machine_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"StorageVirtualMachineId">> := string()
%% }
-type delete_storage_virtual_machine_request() :: #{binary() => any()}.

%% Example:
%% describe_file_system_aliases_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_file_system_aliases_request() :: #{binary() => any()}.

%% Example:
%% invalid_import_path() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_import_path() :: #{binary() => any()}.

%% Example:
%% open_z_f_s_volume_configuration() :: #{
%%   <<"CopyStrategy">> => list(any()),
%%   <<"CopyTagsToSnapshots">> => boolean(),
%%   <<"DataCompressionType">> => list(any()),
%%   <<"DeleteClonedVolumes">> => boolean(),
%%   <<"DeleteIntermediateData">> => boolean(),
%%   <<"DeleteIntermediateSnaphots">> => boolean(),
%%   <<"DestinationSnapshot">> => string(),
%%   <<"NfsExports">> => list(open_z_f_s_nfs_export()()),
%%   <<"OriginSnapshot">> => open_z_f_s_origin_snapshot_configuration(),
%%   <<"ParentVolumeId">> => string(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"RecordSizeKiB">> => integer(),
%%   <<"RestoreToSnapshot">> => string(),
%%   <<"SourceSnapshotARN">> => string(),
%%   <<"StorageCapacityQuotaGiB">> => integer(),
%%   <<"StorageCapacityReservationGiB">> => integer(),
%%   <<"UserAndGroupQuotas">> => list(open_z_f_s_user_or_group_quota()()),
%%   <<"VolumePath">> => string()
%% }
-type open_z_f_s_volume_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_configuration() :: #{
%%   <<"AutoImportPolicy">> => list(any()),
%%   <<"ExportPath">> => string(),
%%   <<"FailureDetails">> => data_repository_failure_details(),
%%   <<"ImportPath">> => string(),
%%   <<"ImportedFileChunkSize">> => integer(),
%%   <<"Lifecycle">> => list(any())
%% }
-type data_repository_configuration() :: #{binary() => any()}.

%% Example:
%% data_repository_association() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"BatchImportMetaDataOnCreate">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataRepositoryPath">> => string(),
%%   <<"DataRepositorySubdirectories">> => list(string()()),
%%   <<"FailureDetails">> => data_repository_failure_details(),
%%   <<"FileCacheId">> => string(),
%%   <<"FileCachePath">> => string(),
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemPath">> => string(),
%%   <<"ImportedFileChunkSize">> => integer(),
%%   <<"Lifecycle">> => list(any()),
%%   <<"NFS">> => nfs_data_repository_configuration(),
%%   <<"ResourceARN">> => string(),
%%   <<"S3">> => s3_data_repository_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type data_repository_association() :: #{binary() => any()}.

%% Example:
%% source_backup_unavailable() :: #{
%%   <<"BackupId">> => string(),
%%   <<"Message">> => string()
%% }
-type source_backup_unavailable() :: #{binary() => any()}.

%% Example:
%% create_backup_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type create_backup_response() :: #{binary() => any()}.

%% Example:
%% update_file_cache_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileCacheId">> := string(),
%%   <<"LustreConfiguration">> => update_file_cache_lustre_configuration()
%% }
-type update_file_cache_request() :: #{binary() => any()}.

%% Example:
%% update_volume_response() :: #{
%%   <<"Volume">> => volume()
%% }
-type update_volume_response() :: #{binary() => any()}.

%% Example:
%% describe_storage_virtual_machines_request() :: #{
%%   <<"Filters">> => list(storage_virtual_machine_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StorageVirtualMachineIds">> => list(string()())
%% }
-type describe_storage_virtual_machines_request() :: #{binary() => any()}.

%% Example:
%% update_file_system_lustre_metadata_configuration() :: #{
%%   <<"Iops">> => integer(),
%%   <<"Mode">> => list(any())
%% }
-type update_file_system_lustre_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% delete_file_system_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemId">> := string(),
%%   <<"LustreConfiguration">> => delete_file_system_lustre_configuration(),
%%   <<"OpenZFSConfiguration">> => delete_file_system_open_z_f_s_configuration(),
%%   <<"WindowsConfiguration">> => delete_file_system_windows_configuration()
%% }
-type delete_file_system_request() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_response() :: #{
%%   <<"Lifecycle">> => list(any()),
%%   <<"SnapshotId">> => string()
%% }
-type delete_snapshot_response() :: #{binary() => any()}.

%% Example:
%% file_cache_lustre_configuration() :: #{
%%   <<"DeploymentType">> => list(any()),
%%   <<"LogConfiguration">> => lustre_log_configuration(),
%%   <<"MetadataConfiguration">> => file_cache_lustre_metadata_configuration(),
%%   <<"MountName">> => string(),
%%   <<"PerUnitStorageThroughput">> => integer(),
%%   <<"WeeklyMaintenanceStartTime">> => string()
%% }
-type file_cache_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% delete_file_system_lustre_configuration() :: #{
%%   <<"FinalBackupTags">> => list(tag()()),
%%   <<"SkipFinalBackup">> => boolean()
%% }
-type delete_file_system_lustre_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_data_repository_task_response() :: #{
%%   <<"Lifecycle">> => list(any()),
%%   <<"TaskId">> => string()
%% }
-type cancel_data_repository_task_response() :: #{binary() => any()}.

%% Example:
%% create_file_system_from_backup_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FileSystemTypeVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LustreConfiguration">> => create_file_system_lustre_configuration(),
%%   <<"OpenZFSConfiguration">> => create_file_system_open_z_f_s_configuration(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"StorageCapacity">> => integer(),
%%   <<"StorageType">> => list(any()),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"WindowsConfiguration">> => create_file_system_windows_configuration()
%% }
-type create_file_system_from_backup_request() :: #{binary() => any()}.

-type associate_file_system_aliases_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type cancel_data_repository_task_errors() ::
    data_repository_task_ended() | 
    internal_server_error() | 
    bad_request() | 
    unsupported_operation() | 
    data_repository_task_not_found().

-type copy_backup_errors() ::
    source_backup_unavailable() | 
    incompatible_parameter_error() | 
    incompatible_region_for_multi_a_z() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    backup_not_found() | 
    invalid_destination_kms_key() | 
    invalid_source_kms_key() | 
    unsupported_operation() | 
    invalid_region().

-type copy_snapshot_and_update_volume_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request().

-type create_backup_errors() ::
    incompatible_parameter_error() | 
    volume_not_found() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    unsupported_operation() | 
    backup_in_progress().

-type create_data_repository_association_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    unsupported_operation().

-type create_data_repository_task_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    unsupported_operation() | 
    data_repository_task_executing().

-type create_file_cache_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    missing_file_cache_configuration() | 
    invalid_per_unit_storage_throughput() | 
    invalid_network_settings().

-type create_file_system_errors() ::
    invalid_import_path() | 
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    missing_file_system_configuration() | 
    invalid_per_unit_storage_throughput() | 
    active_directory_error() | 
    invalid_network_settings() | 
    invalid_export_path().

-type create_file_system_from_backup_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    backup_not_found() | 
    missing_file_system_configuration() | 
    invalid_per_unit_storage_throughput() | 
    active_directory_error() | 
    invalid_network_settings().

-type create_snapshot_errors() ::
    volume_not_found() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request().

-type create_storage_virtual_machine_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    active_directory_error() | 
    unsupported_operation().

-type create_volume_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    unsupported_operation() | 
    missing_volume_configuration() | 
    storage_virtual_machine_not_found().

-type create_volume_from_backup_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    backup_not_found() | 
    file_system_not_found() | 
    missing_volume_configuration() | 
    storage_virtual_machine_not_found().

-type delete_backup_errors() ::
    backup_being_copied() | 
    incompatible_parameter_error() | 
    internal_server_error() | 
    bad_request() | 
    backup_not_found() | 
    backup_restoring() | 
    backup_in_progress().

-type delete_data_repository_association_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    data_repository_association_not_found().

-type delete_file_cache_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_cache_not_found().

-type delete_file_system_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type delete_snapshot_errors() ::
    internal_server_error() | 
    bad_request() | 
    snapshot_not_found().

-type delete_storage_virtual_machine_errors() ::
    incompatible_parameter_error() | 
    internal_server_error() | 
    bad_request() | 
    storage_virtual_machine_not_found().

-type delete_volume_errors() ::
    incompatible_parameter_error() | 
    volume_not_found() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request().

-type describe_backups_errors() ::
    volume_not_found() | 
    internal_server_error() | 
    bad_request() | 
    backup_not_found() | 
    file_system_not_found().

-type describe_data_repository_associations_errors() ::
    internal_server_error() | 
    bad_request() | 
    data_repository_association_not_found() | 
    file_system_not_found() | 
    invalid_data_repository_type().

-type describe_data_repository_tasks_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found() | 
    data_repository_task_not_found().

-type describe_file_caches_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_cache_not_found().

-type describe_file_system_aliases_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type describe_file_systems_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type describe_shared_vpc_configuration_errors() ::
    internal_server_error() | 
    bad_request().

-type describe_snapshots_errors() ::
    internal_server_error() | 
    bad_request() | 
    snapshot_not_found().

-type describe_storage_virtual_machines_errors() ::
    internal_server_error() | 
    bad_request() | 
    storage_virtual_machine_not_found().

-type describe_volumes_errors() ::
    volume_not_found() | 
    internal_server_error() | 
    bad_request().

-type disassociate_file_system_aliases_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type list_tags_for_resource_errors() ::
    internal_server_error() | 
    bad_request() | 
    not_service_resource_error() | 
    resource_not_found() | 
    resource_does_not_support_tagging().

-type release_file_system_nfs_v3_locks_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type restore_volume_from_snapshot_errors() ::
    volume_not_found() | 
    internal_server_error() | 
    bad_request().

-type start_misconfigured_state_recovery_errors() ::
    internal_server_error() | 
    bad_request() | 
    file_system_not_found().

-type tag_resource_errors() ::
    internal_server_error() | 
    bad_request() | 
    not_service_resource_error() | 
    resource_not_found() | 
    resource_does_not_support_tagging().

-type untag_resource_errors() ::
    internal_server_error() | 
    bad_request() | 
    not_service_resource_error() | 
    resource_not_found() | 
    resource_does_not_support_tagging().

-type update_data_repository_association_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    data_repository_association_not_found().

-type update_file_cache_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    file_cache_not_found() | 
    missing_file_cache_configuration() | 
    unsupported_operation().

-type update_file_system_errors() ::
    incompatible_parameter_error() | 
    service_limit_exceeded() | 
    internal_server_error() | 
    bad_request() | 
    missing_file_system_configuration() | 
    file_system_not_found() | 
    unsupported_operation() | 
    invalid_network_settings().

-type update_shared_vpc_configuration_errors() ::
    incompatible_parameter_error() | 
    internal_server_error() | 
    bad_request().

-type update_snapshot_errors() ::
    internal_server_error() | 
    bad_request() | 
    snapshot_not_found().

-type update_storage_virtual_machine_errors() ::
    incompatible_parameter_error() | 
    internal_server_error() | 
    bad_request() | 
    unsupported_operation() | 
    storage_virtual_machine_not_found().

-type update_volume_errors() ::
    incompatible_parameter_error() | 
    volume_not_found() | 
    internal_server_error() | 
    bad_request() | 
    missing_volume_configuration().

%%====================================================================
%% API
%%====================================================================

%% @doc Use this action to associate one or more Domain Name Server (DNS)
%% aliases with an existing Amazon FSx for Windows File Server file system.
%%
%% A file system can have a maximum of 50 DNS aliases associated with it at
%% any one time. If you try to
%% associate a DNS alias that is already associated with the file system, FSx
%% takes no action on that alias in the request.
%% For more information, see Working with DNS Aliases:
%% https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
%% and
%% Walkthrough 5: Using DNS aliases to access your file system:
%% https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html,
%% including
%% additional steps you must take to be able to access your file system using
%% a DNS alias.
%%
%% The system response shows the DNS aliases that
%% Amazon FSx is attempting to associate with the file system.
%% Use the API
%% operation to monitor the status of the aliases Amazon FSx is
%% associating with the file system.
-spec associate_file_system_aliases(aws_client:aws_client(), associate_file_system_aliases_request()) ->
    {ok, associate_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, associate_file_system_aliases_errors(), tuple()}.
associate_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_file_system_aliases(Client, Input, []).

-spec associate_file_system_aliases(aws_client:aws_client(), associate_file_system_aliases_request(), proplists:proplist()) ->
    {ok, associate_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, associate_file_system_aliases_errors(), tuple()}.
associate_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFileSystemAliases">>, Input, Options).

%% @doc Cancels an existing Amazon FSx for Lustre data repository task if
%% that task is in either the
%% `PENDING' or `EXECUTING' state.
%%
%% When you cancel an export task, Amazon FSx
%% does the following.
%%
%% Any files that FSx has already exported are not reverted.
%%
%% FSx continues to export any files that are in-flight when the cancel
%% operation is received.
%%
%% FSx does not export any files that have not yet been exported.
%%
%% For a release task, Amazon FSx will stop releasing files upon
%% cancellation. Any files that
%% have already been released will remain in the released state.
-spec cancel_data_repository_task(aws_client:aws_client(), cancel_data_repository_task_request()) ->
    {ok, cancel_data_repository_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_repository_task_errors(), tuple()}.
cancel_data_repository_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_repository_task(Client, Input, []).

-spec cancel_data_repository_task(aws_client:aws_client(), cancel_data_repository_task_request(), proplists:proplist()) ->
    {ok, cancel_data_repository_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_repository_task_errors(), tuple()}.
cancel_data_repository_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataRepositoryTask">>, Input, Options).

%% @doc Copies an existing backup within the same Amazon Web Services account
%% to another Amazon Web Services Region
%% (cross-Region copy) or within the same Amazon Web Services Region
%% (in-Region copy).
%%
%% You can have up to five
%% backup copy requests in progress to a single destination Region per
%% account.
%%
%% You can use cross-Region backup copies for cross-Region disaster recovery.
%% You can
%% periodically take backups and copy them to another Region so that in the
%% event of a
%% disaster in the primary Region, you can restore from backup and recover
%% availability
%% quickly in the other Region. You can make cross-Region copies only within
%% your Amazon Web Services partition. A partition is a grouping of Regions.
%% Amazon Web Services currently
%% has three partitions: `aws' (Standard Regions), `aws-cn' (China
%% Regions), and `aws-us-gov' (Amazon Web Services GovCloud [US]
%% Regions).
%%
%% You can also use backup copies to clone your file dataset to another
%% Region or within
%% the same Region.
%%
%% You can use the `SourceRegion' parameter to specify the Amazon Web
%% Services Region
%% from which the backup will be copied. For example, if you make the call
%% from the
%% `us-west-1' Region and want to copy a backup from the `us-east-2'
%% Region, you specify `us-east-2' in the `SourceRegion' parameter
%% to make a cross-Region copy. If you don't specify a Region, the backup
%% copy is
%% created in the same Region where the request is sent from (in-Region
%% copy).
%%
%% For more information about creating backup copies, see Copying backups:
%% https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups
%% in the Amazon FSx for Windows User Guide, Copying backups:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups
%% in the Amazon FSx for Lustre User
%% Guide, and Copying backups:
%% https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups
%% in the Amazon FSx for OpenZFS User
%% Guide.
-spec copy_backup(aws_client:aws_client(), copy_backup_request()) ->
    {ok, copy_backup_response(), tuple()} |
    {error, any()} |
    {error, copy_backup_errors(), tuple()}.
copy_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_backup(Client, Input, []).

-spec copy_backup(aws_client:aws_client(), copy_backup_request(), proplists:proplist()) ->
    {ok, copy_backup_response(), tuple()} |
    {error, any()} |
    {error, copy_backup_errors(), tuple()}.
copy_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyBackup">>, Input, Options).

%% @doc Updates an existing volume by using a snapshot from another Amazon
%% FSx for OpenZFS file system.
%%
%% For more information, see on-demand data replication:
%% https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/on-demand-replication.html
%% in the Amazon FSx for OpenZFS User
%% Guide.
-spec copy_snapshot_and_update_volume(aws_client:aws_client(), copy_snapshot_and_update_volume_request()) ->
    {ok, copy_snapshot_and_update_volume_response(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_and_update_volume_errors(), tuple()}.
copy_snapshot_and_update_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot_and_update_volume(Client, Input, []).

-spec copy_snapshot_and_update_volume(aws_client:aws_client(), copy_snapshot_and_update_volume_request(), proplists:proplist()) ->
    {ok, copy_snapshot_and_update_volume_response(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_and_update_volume_errors(), tuple()}.
copy_snapshot_and_update_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshotAndUpdateVolume">>, Input, Options).

%% @doc Creates a backup of an existing Amazon FSx for Windows File Server
%% file
%% system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
%% volume, or Amazon FSx for OpenZFS file system.
%%
%% We recommend creating regular
%% backups so that you can restore a file system or volume from a backup if
%% an issue arises
%% with the original file system or volume.
%%
%% For Amazon FSx for Lustre file systems, you can create a backup only for
%% file
%% systems that have the following configuration:
%%
%% A Persistent deployment type
%%
%% Are not linked to a data repository
%%
%% For more information about backups, see the following:
%%
%% For Amazon FSx for Lustre, see Working with FSx for
%% Lustre backups:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html.
%%
%% For Amazon FSx for Windows, see Working with FSx for
%% Windows backups:
%% https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html.
%%
%% For Amazon FSx for NetApp ONTAP, see Working with FSx for NetApp
%% ONTAP backups:
%% https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html.
%%
%% For Amazon FSx for OpenZFS, see Working with FSx for OpenZFS backups:
%% https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html.
%%
%% If a backup with the specified client request token exists and the
%% parameters match,
%% this operation returns the description of the existing backup. If a backup
%% with the
%% specified client request token exists and the parameters don't match,
%% this operation
%% returns `IncompatibleParameterError'. If a backup with the specified
%% client
%% request token doesn't exist, `CreateBackup' does the following:
%%
%% Creates a new Amazon FSx backup with an assigned ID, and an initial
%% lifecycle state of `CREATING'.
%%
%% Returns the description of the backup.
%%
%% By using the idempotent operation, you can retry a `CreateBackup'
%% operation without the risk of creating an extra backup. This approach can
%% be useful when
%% an initial call fails in a way that makes it unclear whether a backup was
%% created. If
%% you use the same client request token and the initial call created a
%% backup, the
%% operation returns a successful result because all the parameters are the
%% same.
%%
%% The `CreateBackup' operation returns while the backup's lifecycle
%% state is
%% still `CREATING'. You can check the backup creation status by calling
%% the
%% DescribeBackups:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html
%% operation, which returns the backup state along with other
%% information.
-spec create_backup(aws_client:aws_client(), create_backup_request()) ->
    {ok, create_backup_response(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).

-spec create_backup(aws_client:aws_client(), create_backup_request(), proplists:proplist()) ->
    {ok, create_backup_response(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc Creates an Amazon FSx for Lustre data repository association (DRA).
%%
%% A data
%% repository association is a link between a directory on the file system
%% and
%% an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository
%% associations on a file system. Data repository associations are supported
%% on all FSx for Lustre 2.12 and 2.15 file systems, excluding
%% `scratch_1' deployment type.
%%
%% Each data repository association must have a unique Amazon FSx file
%% system directory and a unique S3 bucket or prefix associated with it. You
%% can configure a data repository association for automatic import only,
%% for automatic export only, or for both. To learn more about linking a
%% data repository to your file system, see
%% Linking your file system to an S3 bucket:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html.
%%
%% `CreateDataRepositoryAssociation' isn't supported
%% on Amazon File Cache resources. To create a DRA on Amazon File Cache,
%% use the `CreateFileCache' operation.
-spec create_data_repository_association(aws_client:aws_client(), create_data_repository_association_request()) ->
    {ok, create_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, create_data_repository_association_errors(), tuple()}.
create_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_repository_association(Client, Input, []).

-spec create_data_repository_association(aws_client:aws_client(), create_data_repository_association_request(), proplists:proplist()) ->
    {ok, create_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, create_data_repository_association_errors(), tuple()}.
create_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataRepositoryAssociation">>, Input, Options).

%% @doc Creates an Amazon FSx for Lustre data repository task.
%%
%% A `CreateDataRepositoryTask' operation will fail if a data
%% repository is not linked to the FSx file system.
%%
%% You use import and export data repository tasks to perform bulk operations
%% between your
%% FSx for Lustre file system and its linked data repositories. An example of
%% a data repository
%% task is exporting any data and metadata changes, including POSIX metadata,
%% to files, directories,
%% and symbolic links (symlinks) from your FSx file system to a linked data
%% repository.
%%
%% You use release data repository tasks to release data from your file
%% system for files that
%% are exported to S3. The metadata of released files remains on the file
%% system so users or applications
%% can still access released files by reading the files again, which will
%% restore data from
%% Amazon S3 to the FSx for Lustre file system.
%%
%% To learn more about data repository tasks, see
%% Data Repository Tasks:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html.
%% To learn more about linking a data repository to your file system, see
%% Linking your file system to an S3 bucket:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html.
-spec create_data_repository_task(aws_client:aws_client(), create_data_repository_task_request()) ->
    {ok, create_data_repository_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_repository_task_errors(), tuple()}.
create_data_repository_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_repository_task(Client, Input, []).

-spec create_data_repository_task(aws_client:aws_client(), create_data_repository_task_request(), proplists:proplist()) ->
    {ok, create_data_repository_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_repository_task_errors(), tuple()}.
create_data_repository_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataRepositoryTask">>, Input, Options).

%% @doc Creates a new Amazon File Cache resource.
%%
%% You can use this operation with a client request token in the request that
%% Amazon File Cache uses to ensure idempotent creation.
%% If a cache with the specified client request token exists and the
%% parameters
%% match, `CreateFileCache' returns the description of the existing
%% cache. If a cache with the specified client request token exists and the
%% parameters don't match, this call returns
%% `IncompatibleParameterError'.
%% If a file cache with the specified client request token doesn't exist,
%% `CreateFileCache' does the following:
%%
%% Creates a new, empty Amazon File Cache resource with an assigned ID, and
%% an initial lifecycle state of `CREATING'.
%%
%% Returns the description of the cache in JSON format.
%%
%% The `CreateFileCache' call returns while the cache's lifecycle
%% state is still `CREATING'. You can check the cache creation status
%% by calling the DescribeFileCaches:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html
%% operation, which returns the cache state
%% along with other information.
-spec create_file_cache(aws_client:aws_client(), create_file_cache_request()) ->
    {ok, create_file_cache_response(), tuple()} |
    {error, any()} |
    {error, create_file_cache_errors(), tuple()}.
create_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_cache(Client, Input, []).

-spec create_file_cache(aws_client:aws_client(), create_file_cache_request(), proplists:proplist()) ->
    {ok, create_file_cache_response(), tuple()} |
    {error, any()} |
    {error, create_file_cache_errors(), tuple()}.
create_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileCache">>, Input, Options).

%% @doc Creates a new, empty Amazon FSx file system.
%%
%% You can create the following supported
%% Amazon FSx file systems using the `CreateFileSystem' API operation:
%%
%% Amazon FSx for Lustre
%%
%% Amazon FSx for NetApp ONTAP
%%
%% Amazon FSx for OpenZFS
%%
%% Amazon FSx for Windows File Server
%%
%% This operation requires a client request token in the request that Amazon
%% FSx uses
%% to ensure idempotent creation. This means that calling the operation
%% multiple times with
%% the same client request token has no effect. By using the idempotent
%% operation, you can
%% retry a `CreateFileSystem' operation without the risk of creating an
%% extra
%% file system. This approach can be useful when an initial call fails in a
%% way that makes
%% it unclear whether a file system was created. Examples are if a transport
%% level timeout
%% occurred, or your connection was reset. If you use the same client request
%% token and the
%% initial call created a file system, the client receives success as long as
%% the
%% parameters are the same.
%%
%% If a file system with the specified client request token exists and the
%% parameters
%% match, `CreateFileSystem' returns the description of the existing file
%% system. If a file system with the specified client request token exists
%% and the
%% parameters don't match, this call returns
%% `IncompatibleParameterError'. If a
%% file system with the specified client request token doesn't exist,
%% `CreateFileSystem' does the following:
%%
%% Creates a new, empty Amazon FSx file system with an assigned ID, and
%% an initial lifecycle state of `CREATING'.
%%
%% Returns the description of the file system in JSON format.
%%
%% The `CreateFileSystem' call returns while the file system's
%% lifecycle
%% state is still `CREATING'. You can check the file-system creation
%% status
%% by calling the DescribeFileSystems:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
%% operation, which returns the file system state
%% along with other information.
-spec create_file_system(aws_client:aws_client(), create_file_system_request()) ->
    {ok, create_file_system_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_errors(), tuple()}.
create_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system(Client, Input, []).

-spec create_file_system(aws_client:aws_client(), create_file_system_request(), proplists:proplist()) ->
    {ok, create_file_system_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_errors(), tuple()}.
create_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystem">>, Input, Options).

%% @doc Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
%% Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx
%% backup.
%%
%% If a file system with the specified client request token exists and the
%% parameters
%% match, this operation returns the description of the file system. If a
%% file system
%% with the specified client request token exists but the parameters
%% don't match, this
%% call returns `IncompatibleParameterError'. If a file system with the
%% specified client request token doesn't exist, this operation does the
%% following:
%%
%% Creates a new Amazon FSx file system from backup with an assigned ID,
%% and an initial lifecycle state of `CREATING'.
%%
%% Returns the description of the file system.
%%
%% Parameters like the Active Directory, default share name, automatic
%% backup, and backup
%% settings default to the parameters of the file system that was backed up,
%% unless
%% overridden. You can explicitly supply other settings.
%%
%% By using the idempotent operation, you can retry a
%% `CreateFileSystemFromBackup' call without the risk of creating an
%% extra
%% file system. This approach can be useful when an initial call fails in a
%% way that makes
%% it unclear whether a file system was created. Examples are if a transport
%% level timeout
%% occurred, or your connection was reset. If you use the same client request
%% token and the
%% initial call created a file system, the client receives a success message
%% as long as the
%% parameters are the same.
%%
%% The `CreateFileSystemFromBackup' call returns while the file
%% system's
%% lifecycle state is still `CREATING'. You can check the file-system
%% creation status by calling the
%% DescribeFileSystems:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
%% operation, which returns the file system state along
%% with other information.
-spec create_file_system_from_backup(aws_client:aws_client(), create_file_system_from_backup_request()) ->
    {ok, create_file_system_from_backup_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_from_backup_errors(), tuple()}.
create_file_system_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system_from_backup(Client, Input, []).

-spec create_file_system_from_backup(aws_client:aws_client(), create_file_system_from_backup_request(), proplists:proplist()) ->
    {ok, create_file_system_from_backup_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_from_backup_errors(), tuple()}.
create_file_system_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystemFromBackup">>, Input, Options).

%% @doc Creates a snapshot of an existing Amazon FSx for OpenZFS volume.
%%
%% With
%% snapshots, you can easily undo file changes and compare file versions by
%% restoring the
%% volume to a previous version.
%%
%% If a snapshot with the specified client request token exists, and the
%% parameters
%% match, this operation returns the description of the existing snapshot. If
%% a snapshot
%% with the specified client request token exists, and the parameters
%% don't match, this
%% operation returns `IncompatibleParameterError'. If a snapshot with the
%% specified client request token doesn't exist, `CreateSnapshot'
%% does the
%% following:
%%
%% Creates a new OpenZFS snapshot with an assigned ID, and an initial
%% lifecycle
%% state of `CREATING'.
%%
%% Returns the description of the snapshot.
%%
%% By using the idempotent operation, you can retry a `CreateSnapshot'
%% operation without the risk of creating an extra snapshot. This approach
%% can be useful
%% when an initial call fails in a way that makes it unclear whether a
%% snapshot was
%% created. If you use the same client request token and the initial call
%% created a
%% snapshot, the operation returns a successful result because all the
%% parameters are the
%% same.
%%
%% The `CreateSnapshot' operation returns while the snapshot's
%% lifecycle state
%% is still `CREATING'. You can check the snapshot creation status by
%% calling
%% the DescribeSnapshots:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html
%% operation, which returns the snapshot state along with
%% other information.
-spec create_snapshot(aws_client:aws_client(), create_snapshot_request()) ->
    {ok, create_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_request(), proplists:proplist()) ->
    {ok, create_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP
%% file system.
-spec create_storage_virtual_machine(aws_client:aws_client(), create_storage_virtual_machine_request()) ->
    {ok, create_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, create_storage_virtual_machine_errors(), tuple()}.
create_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_storage_virtual_machine(Client, Input, []).

-spec create_storage_virtual_machine(aws_client:aws_client(), create_storage_virtual_machine_request(), proplists:proplist()) ->
    {ok, create_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, create_storage_virtual_machine_errors(), tuple()}.
create_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorageVirtualMachine">>, Input, Options).

%% @doc Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.
-spec create_volume(aws_client:aws_client(), create_volume_request()) ->
    {ok, create_volume_response(), tuple()} |
    {error, any()} |
    {error, create_volume_errors(), tuple()}.
create_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_volume(Client, Input, []).

-spec create_volume(aws_client:aws_client(), create_volume_request(), proplists:proplist()) ->
    {ok, create_volume_response(), tuple()} |
    {error, any()} |
    {error, create_volume_errors(), tuple()}.
create_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVolume">>, Input, Options).

%% @doc Creates a new Amazon FSx for NetApp ONTAP volume from an
%% existing Amazon FSx volume backup.
-spec create_volume_from_backup(aws_client:aws_client(), create_volume_from_backup_request()) ->
    {ok, create_volume_from_backup_response(), tuple()} |
    {error, any()} |
    {error, create_volume_from_backup_errors(), tuple()}.
create_volume_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_volume_from_backup(Client, Input, []).

-spec create_volume_from_backup(aws_client:aws_client(), create_volume_from_backup_request(), proplists:proplist()) ->
    {ok, create_volume_from_backup_response(), tuple()} |
    {error, any()} |
    {error, create_volume_from_backup_errors(), tuple()}.
create_volume_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVolumeFromBackup">>, Input, Options).

%% @doc Deletes an Amazon FSx backup.
%%
%% After deletion, the backup no longer exists, and
%% its data is gone.
%%
%% The `DeleteBackup' call returns instantly. The backup won't show
%% up in
%% later `DescribeBackups' calls.
%%
%% The data in a deleted backup is also deleted and can't be recovered by
%% any
%% means.
-spec delete_backup(aws_client:aws_client(), delete_backup_request()) ->
    {ok, delete_backup_response(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).

-spec delete_backup(aws_client:aws_client(), delete_backup_request(), proplists:proplist()) ->
    {ok, delete_backup_response(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes a data repository association on an Amazon FSx for Lustre
%% file system.
%%
%% Deleting the data repository association unlinks the
%% file system from the Amazon S3 bucket. When deleting a data repository
%% association, you have the option of deleting the data in the file system
%% that corresponds to the data repository association. Data repository
%% associations are supported on all FSx for Lustre 2.12 and 2.15 file
%% systems, excluding `scratch_1' deployment type.
-spec delete_data_repository_association(aws_client:aws_client(), delete_data_repository_association_request()) ->
    {ok, delete_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, delete_data_repository_association_errors(), tuple()}.
delete_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_repository_association(Client, Input, []).

-spec delete_data_repository_association(aws_client:aws_client(), delete_data_repository_association_request(), proplists:proplist()) ->
    {ok, delete_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, delete_data_repository_association_errors(), tuple()}.
delete_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataRepositoryAssociation">>, Input, Options).

%% @doc Deletes an Amazon File Cache resource.
%%
%% After deletion, the cache no longer exists, and its data
%% is gone.
%%
%% The `DeleteFileCache' operation returns while the cache has the
%% `DELETING' status. You can check the cache deletion status by
%% calling the DescribeFileCaches:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html
%% operation, which returns a list of caches in your
%% account. If you pass the cache ID for a deleted cache, the
%% `DescribeFileCaches' operation returns a `FileCacheNotFound'
%% error.
%%
%% The data in a deleted cache is also deleted and can't be recovered by
%% any means.
-spec delete_file_cache(aws_client:aws_client(), delete_file_cache_request()) ->
    {ok, delete_file_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_file_cache_errors(), tuple()}.
delete_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_cache(Client, Input, []).

-spec delete_file_cache(aws_client:aws_client(), delete_file_cache_request(), proplists:proplist()) ->
    {ok, delete_file_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_file_cache_errors(), tuple()}.
delete_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileCache">>, Input, Options).

%% @doc Deletes a file system.
%%
%% After deletion, the file system no longer exists, and its data
%% is gone. Any existing automatic backups and snapshots are also deleted.
%%
%% To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
%% volumes and storage virtual machines (SVMs) on the file system. Then
%% provide a
%% `FileSystemId' value to the `DeleteFileSystem' operation.
%%
%% By default, when you delete an Amazon FSx for Windows File Server file
%% system,
%% a final backup is created upon deletion. This final backup isn't
%% subject to the file
%% system's retention policy, and must be manually deleted.
%%
%% To delete an Amazon FSx for Lustre file system, first
%% unmount:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/unmounting-fs.html
%% it from every connected Amazon EC2 instance, then provide a
%% `FileSystemId'
%% value to the `DeleteFileSystem' operation. By default, Amazon FSx will
%% not
%% take a final backup when the `DeleteFileSystem' operation is invoked.
%% On file systems
%% not linked to an Amazon S3 bucket, set `SkipFinalBackup' to
%% `false'
%% to take a final backup of the file system you are deleting. Backups cannot
%% be enabled on S3-linked
%% file systems. To ensure all of your data is written back to S3 before
%% deleting your file system,
%% you can either monitor for the
%% AgeOfOldestQueuedMessage:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/monitoring-cloudwatch.html#auto-import-export-metrics
%% metric to be zero (if using automatic export) or you can run an
%% export data repository task:
%% https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repo-task-dra.html.
%% If you have automatic export enabled and want to use an export data
%% repository task, you have
%% to disable automatic export before executing the export data repository
%% task.
%%
%% The `DeleteFileSystem' operation returns while the file system has the
%% `DELETING' status. You can check the file system deletion status by
%% calling the DescribeFileSystems:
%% https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
%% operation, which returns a list of file systems in your
%% account. If you pass the file system ID for a deleted file system, the
%% `DescribeFileSystems' operation returns a `FileSystemNotFound'
%% error.
%%
%% If a data repository task is in a `PENDING' or `EXECUTING' state,
%% deleting an Amazon FSx for Lustre file system will fail with an HTTP
%% status
%% code 400 (Bad Request).
%%
%% The data in a deleted file system is also deleted and can't be
%% recovered by
%% any means.
-spec delete_file_system(aws_client:aws_client(), delete_file_system_request()) ->
    {ok, delete_file_system_response(), tuple()} |
    {error, any()} |
    {error, delete_file_system_errors(), tuple()}.
delete_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_system(Client, Input, []).

-spec delete_file_system(aws_client:aws_client(), delete_file_system_request(), proplists:proplist()) ->
    {ok, delete_file_system_response(), tuple()} |
    {error, any()} |
    {error, delete_file_system_errors(), tuple()}.
delete_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileSystem">>, Input, Options).

%% @doc Deletes an Amazon FSx for OpenZFS snapshot.
%%
%% After deletion, the snapshot no longer
%% exists, and its data is gone. Deleting a snapshot doesn't affect
%% snapshots stored in a
%% file system backup.
%%
%% The `DeleteSnapshot' operation returns instantly. The snapshot appears
%% with
%% the lifecycle status of `DELETING' until the deletion is complete.
-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request()) ->
    {ok, delete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).

-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request(), proplists:proplist()) ->
    {ok, delete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes an existing Amazon FSx for ONTAP storage virtual machine
%% (SVM).
%%
%% Prior
%% to deleting an SVM, you must delete all non-root volumes in the SVM,
%% otherwise the operation will fail.
-spec delete_storage_virtual_machine(aws_client:aws_client(), delete_storage_virtual_machine_request()) ->
    {ok, delete_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_virtual_machine_errors(), tuple()}.
delete_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_storage_virtual_machine(Client, Input, []).

-spec delete_storage_virtual_machine(aws_client:aws_client(), delete_storage_virtual_machine_request(), proplists:proplist()) ->
    {ok, delete_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_virtual_machine_errors(), tuple()}.
delete_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStorageVirtualMachine">>, Input, Options).

%% @doc Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
%% volume.
-spec delete_volume(aws_client:aws_client(), delete_volume_request()) ->
    {ok, delete_volume_response(), tuple()} |
    {error, any()} |
    {error, delete_volume_errors(), tuple()}.
delete_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_volume(Client, Input, []).

-spec delete_volume(aws_client:aws_client(), delete_volume_request(), proplists:proplist()) ->
    {ok, delete_volume_response(), tuple()} |
    {error, any()} |
    {error, delete_volume_errors(), tuple()}.
delete_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVolume">>, Input, Options).

%% @doc Returns the description of a specific Amazon FSx backup, if a
%% `BackupIds' value is provided for that backup.
%%
%% Otherwise, it returns all
%% backups owned by your Amazon Web Services account in the Amazon Web
%% Services Region of the
%% endpoint that you're calling.
%%
%% When retrieving all backups, you can optionally specify the
%% `MaxResults'
%% parameter to limit the number of backups in a response. If more backups
%% remain, Amazon FSx returns a `NextToken' value in the response. In
%% this case,
%% send a later request with the `NextToken' request parameter set to the
%% value
%% of the `NextToken' value from the last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% backups.
%% `DescribeBackups' is called first without a `NextToken' value.
%% Then the operation continues to be called with the `NextToken'
%% parameter set
%% to the value of the last `NextToken' value until a response has no
%% `NextToken' value.
%%
%% When using this operation, keep the following in mind:
%%
%% The operation might return fewer than the `MaxResults' value of
%% backup descriptions while still including a `NextToken'
%% value.
%%
%% The order of the backups returned in the response of one
%% `DescribeBackups' call and the order of the backups returned
%% across the responses of a multi-call iteration is unspecified.
-spec describe_backups(aws_client:aws_client(), describe_backups_request()) ->
    {ok, describe_backups_response(), tuple()} |
    {error, any()} |
    {error, describe_backups_errors(), tuple()}.
describe_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backups(Client, Input, []).

-spec describe_backups(aws_client:aws_client(), describe_backups_request(), proplists:proplist()) ->
    {ok, describe_backups_response(), tuple()} |
    {error, any()} |
    {error, describe_backups_errors(), tuple()}.
describe_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackups">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for Lustre or Amazon
%% File Cache
%% data repository associations, if one or more `AssociationIds' values
%% are provided in the request, or if filters are used in the request.
%%
%% Data repository
%% associations are supported on Amazon File Cache resources and all FSx for
%% Lustre
%% 2.12 and 2,15 file systems, excluding `scratch_1' deployment type.
%%
%% You can use filters to narrow the response to include just data repository
%% associations for specific file systems (use the `file-system-id'
%% filter with
%% the ID of the file system) or caches (use the `file-cache-id' filter
%% with
%% the ID of the cache), or data repository associations for a specific
%% repository type
%% (use the `data-repository-type' filter with a value of `S3'
%% or `NFS'). If you don't use filters, the response returns all data
%% repository associations owned by your Amazon Web Services account in the
%% Amazon Web Services Region
%% of the endpoint that you're calling.
%%
%% When retrieving all data repository associations, you can paginate the
%% response by using
%% the optional `MaxResults' parameter to limit the number of data
%% repository associations
%% returned in a response. If more data repository associations remain, a
%% `NextToken' value is returned in the response. In this case, send a
%% later
%% request with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
-spec describe_data_repository_associations(aws_client:aws_client(), describe_data_repository_associations_request()) ->
    {ok, describe_data_repository_associations_response(), tuple()} |
    {error, any()} |
    {error, describe_data_repository_associations_errors(), tuple()}.
describe_data_repository_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_repository_associations(Client, Input, []).

-spec describe_data_repository_associations(aws_client:aws_client(), describe_data_repository_associations_request(), proplists:proplist()) ->
    {ok, describe_data_repository_associations_response(), tuple()} |
    {error, any()} |
    {error, describe_data_repository_associations_errors(), tuple()}.
describe_data_repository_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataRepositoryAssociations">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for Lustre or Amazon
%% File Cache data repository tasks, if
%% one or more `TaskIds' values are provided in the request, or if
%% filters are used in the request.
%%
%% You can use filters to narrow the response to include just tasks for
%% specific file systems or caches,
%% or tasks in a specific lifecycle state. Otherwise, it returns all data
%% repository tasks owned
%% by your Amazon Web Services account in the Amazon Web Services Region of
%% the endpoint that you're calling.
%%
%% When retrieving all tasks, you can paginate the response by using the
%% optional `MaxResults'
%% parameter to limit the number of tasks returned in a response. If more
%% tasks remain,
%% a `NextToken' value is returned in the response. In this case, send a
%% later
%% request with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
-spec describe_data_repository_tasks(aws_client:aws_client(), describe_data_repository_tasks_request()) ->
    {ok, describe_data_repository_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_data_repository_tasks_errors(), tuple()}.
describe_data_repository_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_repository_tasks(Client, Input, []).

-spec describe_data_repository_tasks(aws_client:aws_client(), describe_data_repository_tasks_request(), proplists:proplist()) ->
    {ok, describe_data_repository_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_data_repository_tasks_errors(), tuple()}.
describe_data_repository_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataRepositoryTasks">>, Input, Options).

%% @doc Returns the description of a specific Amazon File Cache resource, if
%% a
%% `FileCacheIds' value is provided for that cache.
%%
%% Otherwise, it
%% returns descriptions of all caches owned by your Amazon Web Services
%% account in the
%% Amazon Web Services Region of the endpoint that you're calling.
%%
%% When retrieving all cache descriptions, you can optionally specify the
%% `MaxResults' parameter to limit the number of descriptions in a
%% response.
%% If more cache descriptions remain, the operation returns a
%% `NextToken' value in the response. In this case, send a later request
%% with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% cache
%% descriptions. `DescribeFileCaches' is called first without a
%% `NextToken'value. Then the operation continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken'.
%%
%% When using this operation, keep the following in mind:
%%
%% The implementation might return fewer than `MaxResults'
%% cache descriptions while still including a `NextToken'
%% value.
%%
%% The order of caches returned in the response of one
%% `DescribeFileCaches' call and the order of caches returned
%% across the responses of a multicall iteration is unspecified.
-spec describe_file_caches(aws_client:aws_client(), describe_file_caches_request()) ->
    {ok, describe_file_caches_response(), tuple()} |
    {error, any()} |
    {error, describe_file_caches_errors(), tuple()}.
describe_file_caches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_caches(Client, Input, []).

-spec describe_file_caches(aws_client:aws_client(), describe_file_caches_request(), proplists:proplist()) ->
    {ok, describe_file_caches_response(), tuple()} |
    {error, any()} |
    {error, describe_file_caches_errors(), tuple()}.
describe_file_caches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileCaches">>, Input, Options).

%% @doc Returns the DNS aliases that are associated with the specified Amazon
%% FSx for Windows File Server file system.
%%
%% A history of
%% all DNS aliases that have been associated with and disassociated from the
%% file system is available in the list of `AdministrativeAction'
%% provided in the `DescribeFileSystems' operation response.
-spec describe_file_system_aliases(aws_client:aws_client(), describe_file_system_aliases_request()) ->
    {ok, describe_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, describe_file_system_aliases_errors(), tuple()}.
describe_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_system_aliases(Client, Input, []).

-spec describe_file_system_aliases(aws_client:aws_client(), describe_file_system_aliases_request(), proplists:proplist()) ->
    {ok, describe_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, describe_file_system_aliases_errors(), tuple()}.
describe_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystemAliases">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx file systems, if a
%% `FileSystemIds' value is provided for that file system.
%%
%% Otherwise, it
%% returns descriptions of all file systems owned by your Amazon Web Services
%% account in the
%% Amazon Web Services Region of the endpoint that you're calling.
%%
%% When retrieving all file system descriptions, you can optionally specify
%% the
%% `MaxResults' parameter to limit the number of descriptions in a
%% response.
%% If more file system descriptions remain, Amazon FSx returns a
%% `NextToken' value in the response. In this case, send a later request
%% with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% file system
%% descriptions. `DescribeFileSystems' is called first without a
%% `NextToken'value. Then the operation continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken'.
%%
%% When using this operation, keep the following in mind:
%%
%% The implementation might return fewer than `MaxResults' file
%% system descriptions while still including a `NextToken'
%% value.
%%
%% The order of file systems returned in the response of one
%% `DescribeFileSystems' call and the order of file systems returned
%% across the responses of a multicall iteration is unspecified.
-spec describe_file_systems(aws_client:aws_client(), describe_file_systems_request()) ->
    {ok, describe_file_systems_response(), tuple()} |
    {error, any()} |
    {error, describe_file_systems_errors(), tuple()}.
describe_file_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_systems(Client, Input, []).

-spec describe_file_systems(aws_client:aws_client(), describe_file_systems_request(), proplists:proplist()) ->
    {ok, describe_file_systems_response(), tuple()} |
    {error, any()} |
    {error, describe_file_systems_errors(), tuple()}.
describe_file_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystems">>, Input, Options).

%% @doc Indicates whether participant accounts in your organization can
%% create Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that
%% are shared by a virtual
%% private cloud (VPC) owner.
%%
%% For more information, see Creating FSx for ONTAP file systems in shared
%% subnets:
%% https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/creating-file-systems.html#fsxn-vpc-shared-subnets.
-spec describe_shared_vpc_configuration(aws_client:aws_client(), describe_shared_vpc_configuration_request()) ->
    {ok, describe_shared_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_shared_vpc_configuration_errors(), tuple()}.
describe_shared_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_shared_vpc_configuration(Client, Input, []).

-spec describe_shared_vpc_configuration(aws_client:aws_client(), describe_shared_vpc_configuration_request(), proplists:proplist()) ->
    {ok, describe_shared_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_shared_vpc_configuration_errors(), tuple()}.
describe_shared_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSharedVpcConfiguration">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for OpenZFS snapshots,
%% if a
%% `SnapshotIds' value is provided.
%%
%% Otherwise, this operation returns all
%% snapshots owned by your Amazon Web Services account in the Amazon Web
%% Services Region of
%% the endpoint that you're calling.
%%
%% When retrieving all snapshots, you can optionally specify the
%% `MaxResults'
%% parameter to limit the number of snapshots in a response. If more backups
%% remain,
%% Amazon FSx returns a `NextToken' value in the response. In this
%% case, send a later request with the `NextToken' request parameter set
%% to the
%% value of `NextToken' from the last response.
%%
%% Use this operation in an iterative process to retrieve a list of your
%% snapshots.
%% `DescribeSnapshots' is called first without a `NextToken'
%% value. Then the operation continues to be called with the `NextToken'
%% parameter set to the value of the last `NextToken' value until a
%% response has
%% no `NextToken' value.
%%
%% When using this operation, keep the following in mind:
%%
%% The operation might return fewer than the `MaxResults' value of
%% snapshot descriptions while still including a `NextToken'
%% value.
%%
%% The order of snapshots returned in the response of one
%% `DescribeSnapshots' call and the order of backups returned across
%% the responses of a multi-call iteration is unspecified.
-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request()) ->
    {ok, describe_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).

-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request(), proplists:proplist()) ->
    {ok, describe_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Describes one or more Amazon FSx for NetApp ONTAP storage virtual
%% machines (SVMs).
-spec describe_storage_virtual_machines(aws_client:aws_client(), describe_storage_virtual_machines_request()) ->
    {ok, describe_storage_virtual_machines_response(), tuple()} |
    {error, any()} |
    {error, describe_storage_virtual_machines_errors(), tuple()}.
describe_storage_virtual_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage_virtual_machines(Client, Input, []).

-spec describe_storage_virtual_machines(aws_client:aws_client(), describe_storage_virtual_machines_request(), proplists:proplist()) ->
    {ok, describe_storage_virtual_machines_response(), tuple()} |
    {error, any()} |
    {error, describe_storage_virtual_machines_errors(), tuple()}.
describe_storage_virtual_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorageVirtualMachines">>, Input, Options).

%% @doc Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
%% OpenZFS volumes.
-spec describe_volumes(aws_client:aws_client(), describe_volumes_request()) ->
    {ok, describe_volumes_response(), tuple()} |
    {error, any()} |
    {error, describe_volumes_errors(), tuple()}.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).

-spec describe_volumes(aws_client:aws_client(), describe_volumes_request(), proplists:proplist()) ->
    {ok, describe_volumes_response(), tuple()} |
    {error, any()} |
    {error, describe_volumes_errors(), tuple()}.
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Use this action to disassociate, or remove, one or more Domain Name
%% Service (DNS) aliases
%% from an Amazon FSx for Windows File Server file system.
%%
%% If you attempt to disassociate a DNS alias that is not
%% associated with the file system, Amazon FSx responds with an HTTP status
%% code 400 (Bad Request). For more information, see
%% Working with DNS Aliases:
%% https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html.
%%
%% The system generated response showing the DNS aliases that
%% Amazon FSx is attempting to disassociate from the file system.
%% Use the API
%% operation to monitor the status of the aliases Amazon FSx is
%% disassociating with the file system.
-spec disassociate_file_system_aliases(aws_client:aws_client(), disassociate_file_system_aliases_request()) ->
    {ok, disassociate_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, disassociate_file_system_aliases_errors(), tuple()}.
disassociate_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_file_system_aliases(Client, Input, []).

-spec disassociate_file_system_aliases(aws_client:aws_client(), disassociate_file_system_aliases_request(), proplists:proplist()) ->
    {ok, disassociate_file_system_aliases_response(), tuple()} |
    {error, any()} |
    {error, disassociate_file_system_aliases_errors(), tuple()}.
disassociate_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFileSystemAliases">>, Input, Options).

%% @doc Lists tags for Amazon FSx resources.
%%
%% When retrieving all tags, you can optionally specify the `MaxResults'
%% parameter to limit the number of tags in a response. If more tags remain,
%% Amazon FSx
%% returns a `NextToken' value in the response. In this case, send a
%% later
%% request with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
%%
%% This action is used in an iterative process to retrieve a list of your
%% tags.
%% `ListTagsForResource' is called first without a
%% `NextToken'value. Then the action continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken'.
%%
%% When using this action, keep the following in mind:
%%
%% The implementation might return fewer than `MaxResults' file
%% system descriptions while still including a `NextToken'
%% value.
%%
%% The order of tags returned in the response of one
%% `ListTagsForResource' call and the order of tags returned across
%% the responses of a multi-call iteration is unspecified.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Releases the file system lock from an Amazon FSx for OpenZFS file
%% system.
-spec release_file_system_nfs_v3_locks(aws_client:aws_client(), release_file_system_nfs_v3_locks_request()) ->
    {ok, release_file_system_nfs_v3_locks_response(), tuple()} |
    {error, any()} |
    {error, release_file_system_nfs_v3_locks_errors(), tuple()}.
release_file_system_nfs_v3_locks(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_file_system_nfs_v3_locks(Client, Input, []).

-spec release_file_system_nfs_v3_locks(aws_client:aws_client(), release_file_system_nfs_v3_locks_request(), proplists:proplist()) ->
    {ok, release_file_system_nfs_v3_locks_response(), tuple()} |
    {error, any()} |
    {error, release_file_system_nfs_v3_locks_errors(), tuple()}.
release_file_system_nfs_v3_locks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseFileSystemNfsV3Locks">>, Input, Options).

%% @doc Returns an Amazon FSx for OpenZFS volume to the state saved by the
%% specified
%% snapshot.
-spec restore_volume_from_snapshot(aws_client:aws_client(), restore_volume_from_snapshot_request()) ->
    {ok, restore_volume_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_volume_from_snapshot_errors(), tuple()}.
restore_volume_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_volume_from_snapshot(Client, Input, []).

-spec restore_volume_from_snapshot(aws_client:aws_client(), restore_volume_from_snapshot_request(), proplists:proplist()) ->
    {ok, restore_volume_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_volume_from_snapshot_errors(), tuple()}.
restore_volume_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreVolumeFromSnapshot">>, Input, Options).

%% @doc After performing steps to repair the Active Directory configuration
%% of an FSx for Windows File Server file system, use this action to
%% initiate the process of Amazon FSx attempting to reconnect to the file
%% system.
-spec start_misconfigured_state_recovery(aws_client:aws_client(), start_misconfigured_state_recovery_request()) ->
    {ok, start_misconfigured_state_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_misconfigured_state_recovery_errors(), tuple()}.
start_misconfigured_state_recovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_misconfigured_state_recovery(Client, Input, []).

-spec start_misconfigured_state_recovery(aws_client:aws_client(), start_misconfigured_state_recovery_request(), proplists:proplist()) ->
    {ok, start_misconfigured_state_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_misconfigured_state_recovery_errors(), tuple()}.
start_misconfigured_state_recovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMisconfiguredStateRecovery">>, Input, Options).

%% @doc Tags an Amazon FSx resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc This action removes a tag from an Amazon FSx resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the configuration of an existing data repository association
%% on an Amazon FSx for Lustre file system.
%%
%% Data repository associations
%% are supported on all FSx for Lustre 2.12 and 2.15 file systems,
%% excluding `scratch_1' deployment type.
-spec update_data_repository_association(aws_client:aws_client(), update_data_repository_association_request()) ->
    {ok, update_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, update_data_repository_association_errors(), tuple()}.
update_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_repository_association(Client, Input, []).

-spec update_data_repository_association(aws_client:aws_client(), update_data_repository_association_request(), proplists:proplist()) ->
    {ok, update_data_repository_association_response(), tuple()} |
    {error, any()} |
    {error, update_data_repository_association_errors(), tuple()}.
update_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataRepositoryAssociation">>, Input, Options).

%% @doc Updates the configuration of an existing Amazon File Cache resource.
%%
%% You can update multiple properties in a single request.
-spec update_file_cache(aws_client:aws_client(), update_file_cache_request()) ->
    {ok, update_file_cache_response(), tuple()} |
    {error, any()} |
    {error, update_file_cache_errors(), tuple()}.
update_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_cache(Client, Input, []).

-spec update_file_cache(aws_client:aws_client(), update_file_cache_request(), proplists:proplist()) ->
    {ok, update_file_cache_response(), tuple()} |
    {error, any()} |
    {error, update_file_cache_errors(), tuple()}.
update_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileCache">>, Input, Options).

%% @doc Use this operation to update the configuration of an existing Amazon
%% FSx file
%% system.
%%
%% You can update multiple properties in a single request.
%%
%% For FSx for Windows File Server file systems, you can update the following
%% properties:
%%
%% `AuditLogConfiguration'
%%
%% `AutomaticBackupRetentionDays'
%%
%% `DailyAutomaticBackupStartTime'
%%
%% `SelfManagedActiveDirectoryConfiguration'
%%
%% `StorageCapacity'
%%
%% `StorageType'
%%
%% `ThroughputCapacity'
%%
%% `DiskIopsConfiguration'
%%
%% `WeeklyMaintenanceStartTime'
%%
%% For FSx for Lustre file systems, you can update the following
%% properties:
%%
%% `AutoImportPolicy'
%%
%% `AutomaticBackupRetentionDays'
%%
%% `DailyAutomaticBackupStartTime'
%%
%% `DataCompressionType'
%%
%% `FileSystemTypeVersion'
%%
%% `LogConfiguration'
%%
%% `LustreRootSquashConfiguration'
%%
%% `MetadataConfiguration'
%%
%% `PerUnitStorageThroughput'
%%
%% `StorageCapacity'
%%
%% `WeeklyMaintenanceStartTime'
%%
%% For FSx for ONTAP file systems, you can update the following
%% properties:
%%
%% `AddRouteTableIds'
%%
%% `AutomaticBackupRetentionDays'
%%
%% `DailyAutomaticBackupStartTime'
%%
%% `DiskIopsConfiguration'
%%
%% `FsxAdminPassword'
%%
%% `HAPairs'
%%
%% `RemoveRouteTableIds'
%%
%% `StorageCapacity'
%%
%% `ThroughputCapacity'
%%
%% `ThroughputCapacityPerHAPair'
%%
%% `WeeklyMaintenanceStartTime'
%%
%% For FSx for OpenZFS file systems, you can update the following
%% properties:
%%
%% `AddRouteTableIds'
%%
%% `AutomaticBackupRetentionDays'
%%
%% `CopyTagsToBackups'
%%
%% `CopyTagsToVolumes'
%%
%% `DailyAutomaticBackupStartTime'
%%
%% `DiskIopsConfiguration'
%%
%% `ReadCacheConfiguration'
%%
%% `RemoveRouteTableIds'
%%
%% `StorageCapacity'
%%
%% `ThroughputCapacity'
%%
%% `WeeklyMaintenanceStartTime'
-spec update_file_system(aws_client:aws_client(), update_file_system_request()) ->
    {ok, update_file_system_response(), tuple()} |
    {error, any()} |
    {error, update_file_system_errors(), tuple()}.
update_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_system(Client, Input, []).

-spec update_file_system(aws_client:aws_client(), update_file_system_request(), proplists:proplist()) ->
    {ok, update_file_system_response(), tuple()} |
    {error, any()} |
    {error, update_file_system_errors(), tuple()}.
update_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileSystem">>, Input, Options).

%% @doc Configures whether participant accounts in your organization can
%% create Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that
%% are shared by a virtual
%% private cloud (VPC) owner.
%%
%% For more information, see the Amazon FSx for NetApp ONTAP User
%% Guide:
%% https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html.
%%
%% We strongly recommend that participant-created Multi-AZ file systems in
%% the shared
%% VPC are deleted before you disable this feature. Once the feature is
%% disabled, these
%% file systems will enter a `MISCONFIGURED' state and behave like
%% Single-AZ
%% file systems. For more information, see Important considerations before
%% disabling shared VPC support for Multi-AZ file
%% systems:
%% https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html#disabling-maz-vpc-sharing.
-spec update_shared_vpc_configuration(aws_client:aws_client(), update_shared_vpc_configuration_request()) ->
    {ok, update_shared_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_shared_vpc_configuration_errors(), tuple()}.
update_shared_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_shared_vpc_configuration(Client, Input, []).

-spec update_shared_vpc_configuration(aws_client:aws_client(), update_shared_vpc_configuration_request(), proplists:proplist()) ->
    {ok, update_shared_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_shared_vpc_configuration_errors(), tuple()}.
update_shared_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSharedVpcConfiguration">>, Input, Options).

%% @doc Updates the name of an Amazon FSx for OpenZFS snapshot.
-spec update_snapshot(aws_client:aws_client(), update_snapshot_request()) ->
    {ok, update_snapshot_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_errors(), tuple()}.
update_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot(Client, Input, []).

-spec update_snapshot(aws_client:aws_client(), update_snapshot_request(), proplists:proplist()) ->
    {ok, update_snapshot_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_errors(), tuple()}.
update_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshot">>, Input, Options).

%% @doc Updates an FSx for ONTAP storage virtual machine (SVM).
-spec update_storage_virtual_machine(aws_client:aws_client(), update_storage_virtual_machine_request()) ->
    {ok, update_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, update_storage_virtual_machine_errors(), tuple()}.
update_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_storage_virtual_machine(Client, Input, []).

-spec update_storage_virtual_machine(aws_client:aws_client(), update_storage_virtual_machine_request(), proplists:proplist()) ->
    {ok, update_storage_virtual_machine_response(), tuple()} |
    {error, any()} |
    {error, update_storage_virtual_machine_errors(), tuple()}.
update_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStorageVirtualMachine">>, Input, Options).

%% @doc Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon
%% FSx for OpenZFS volume.
-spec update_volume(aws_client:aws_client(), update_volume_request()) ->
    {ok, update_volume_response(), tuple()} |
    {error, any()} |
    {error, update_volume_errors(), tuple()}.
update_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_volume(Client, Input, []).

-spec update_volume(aws_client:aws_client(), update_volume_request(), proplists:proplist()) ->
    {ok, update_volume_response(), tuple()} |
    {error, any()} |
    {error, update_volume_errors(), tuple()}.
update_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVolume">>, Input, Options).

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
    Client1 = Client#{service => <<"fsx">>},
    Host = build_host(<<"fsx">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSSimbaAPIService_v20180301.", Action/binary>>}
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
