%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Oracle Database@Amazon Web Services is an offering that enables you
%% to access Oracle Exadata infrastructure managed by Oracle Cloud
%% Infrastructure (OCI) inside Amazon Web Services data centers.
%%
%% You can migrate your Oracle Exadata workloads, establish low-latency
%% connectivity with applications running on Amazon Web Services, and
%% integrate with Amazon Web Services services. For example, you can run
%% application servers in a Virtual Private Cloud (VPC) and access an Oracle
%% Exadata system running in Oracle Database@Amazon Web Services. You can get
%% started with Oracle Database@Amazon Web Services by using the familiar
%% Amazon Web Services Management Console, APIs, or CLI.
%%
%% This interface reference for Oracle Database@Amazon Web Services contains
%% documentation for a programming or command line interface that you can use
%% to manage Oracle Database@Amazon Web Services. Oracle Database@Amazon Web
%% Services is asynchronous, which means that some interfaces might require
%% techniques such as polling or callback functions to determine when a
%% command has been applied. The reference structure is as follows.
%%
%% Oracle Database@Amazon Web Services API Reference
%%
%% For the alphabetical list of API actions, see API Actions:
%% https://docs.aws.amazon.com/odb/latest/APIReference/API_Operations.html.
%%
%% For the alphabetical list of data types, see Data Types:
%% https://docs.aws.amazon.com/odb/latest/APIReference/API_Types.html.
%%
%% For a list of common query parameters, see Common Parameters:
%% https://docs.aws.amazon.com/odb/latest/APIReference/CommonParameters.html.
%%
%% For descriptions of the error codes, see Common Errors:
%% https://docs.aws.amazon.com/odb/latest/APIReference/CommonErrors.html.
-module(aws_odb).

-export([accept_marketplace_registration/2,
         accept_marketplace_registration/3,
         associate_iam_role_to_resource/2,
         associate_iam_role_to_resource/3,
         create_autonomous_database/2,
         create_autonomous_database/3,
         create_autonomous_database_backup/2,
         create_autonomous_database_backup/3,
         create_autonomous_database_wallet/2,
         create_autonomous_database_wallet/3,
         create_cloud_autonomous_vm_cluster/2,
         create_cloud_autonomous_vm_cluster/3,
         create_cloud_exadata_infrastructure/2,
         create_cloud_exadata_infrastructure/3,
         create_cloud_vm_cluster/2,
         create_cloud_vm_cluster/3,
         create_odb_network/2,
         create_odb_network/3,
         create_odb_peering_connection/2,
         create_odb_peering_connection/3,
         delete_autonomous_database/2,
         delete_autonomous_database/3,
         delete_autonomous_database_backup/2,
         delete_autonomous_database_backup/3,
         delete_cloud_autonomous_vm_cluster/2,
         delete_cloud_autonomous_vm_cluster/3,
         delete_cloud_exadata_infrastructure/2,
         delete_cloud_exadata_infrastructure/3,
         delete_cloud_vm_cluster/2,
         delete_cloud_vm_cluster/3,
         delete_odb_network/2,
         delete_odb_network/3,
         delete_odb_peering_connection/2,
         delete_odb_peering_connection/3,
         disassociate_iam_role_from_resource/2,
         disassociate_iam_role_from_resource/3,
         failover_autonomous_database/2,
         failover_autonomous_database/3,
         get_autonomous_database/2,
         get_autonomous_database/3,
         get_autonomous_database_backup/2,
         get_autonomous_database_backup/3,
         get_autonomous_database_wallet_details/2,
         get_autonomous_database_wallet_details/3,
         get_cloud_autonomous_vm_cluster/2,
         get_cloud_autonomous_vm_cluster/3,
         get_cloud_exadata_infrastructure/2,
         get_cloud_exadata_infrastructure/3,
         get_cloud_exadata_infrastructure_unallocated_resources/2,
         get_cloud_exadata_infrastructure_unallocated_resources/3,
         get_cloud_vm_cluster/2,
         get_cloud_vm_cluster/3,
         get_db_node/2,
         get_db_node/3,
         get_db_server/2,
         get_db_server/3,
         get_oci_onboarding_status/2,
         get_oci_onboarding_status/3,
         get_odb_network/2,
         get_odb_network/3,
         get_odb_peering_connection/2,
         get_odb_peering_connection/3,
         initialize_service/2,
         initialize_service/3,
         list_autonomous_database_backups/2,
         list_autonomous_database_backups/3,
         list_autonomous_database_character_sets/2,
         list_autonomous_database_character_sets/3,
         list_autonomous_database_clones/2,
         list_autonomous_database_clones/3,
         list_autonomous_database_peers/2,
         list_autonomous_database_peers/3,
         list_autonomous_database_versions/2,
         list_autonomous_database_versions/3,
         list_autonomous_databases/2,
         list_autonomous_databases/3,
         list_autonomous_virtual_machines/2,
         list_autonomous_virtual_machines/3,
         list_cloud_autonomous_vm_clusters/2,
         list_cloud_autonomous_vm_clusters/3,
         list_cloud_exadata_infrastructures/2,
         list_cloud_exadata_infrastructures/3,
         list_cloud_vm_clusters/2,
         list_cloud_vm_clusters/3,
         list_db_nodes/2,
         list_db_nodes/3,
         list_db_servers/2,
         list_db_servers/3,
         list_db_system_shapes/2,
         list_db_system_shapes/3,
         list_gi_versions/2,
         list_gi_versions/3,
         list_odb_networks/2,
         list_odb_networks/3,
         list_odb_peering_connections/2,
         list_odb_peering_connections/3,
         list_system_versions/2,
         list_system_versions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         reboot_autonomous_database/2,
         reboot_autonomous_database/3,
         reboot_db_node/2,
         reboot_db_node/3,
         restore_autonomous_database/2,
         restore_autonomous_database/3,
         shrink_autonomous_database/2,
         shrink_autonomous_database/3,
         start_autonomous_database/2,
         start_autonomous_database/3,
         start_db_node/2,
         start_db_node/3,
         stop_autonomous_database/2,
         stop_autonomous_database/3,
         stop_db_node/2,
         stop_db_node/3,
         switchover_autonomous_database/2,
         switchover_autonomous_database/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_autonomous_database/2,
         update_autonomous_database/3,
         update_autonomous_database_backup/2,
         update_autonomous_database_backup/3,
         update_cloud_exadata_infrastructure/2,
         update_cloud_exadata_infrastructure/3,
         update_odb_network/2,
         update_odb_network/3,
         update_odb_peering_connection/2,
         update_odb_peering_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% autonomous_database_version_summary() :: #{
%%   <<"dbWorkload">> => list(any()),
%%   <<"details">> => [string()],
%%   <<"version">> => [string()]
%% }
-type autonomous_database_version_summary() :: #{binary() => any()}.

%% Example:
%% aws_encryption_key_configuration() :: #{
%%   <<"externalIdType">> => list(any()),
%%   <<"iamRoleArn">> => string(),
%%   <<"kmsKeyId">> => string()
%% }
-type aws_encryption_key_configuration() :: #{binary() => any()}.

%% Example:
%% encryption_summary() :: #{
%%   <<"encryptionKeyConfiguration">> => list(),
%%   <<"encryptionKeyProvider">> => list(any())
%% }
-type encryption_summary() :: #{binary() => any()}.

%% Example:
%% okv_encryption_key_configuration() :: #{
%%   <<"certificateDirectoryName">> => [string()],
%%   <<"certificateId">> => [string()],
%%   <<"directoryName">> => [string()],
%%   <<"okvKmsKey">> => [string()],
%%   <<"okvUri">> => [string()]
%% }
-type okv_encryption_key_configuration() :: #{binary() => any()}.

%% Example:
%% create_odb_network_output() :: #{
%%   <<"displayName">> => [string()],
%%   <<"odbNetworkId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_odb_network_output() :: #{binary() => any()}.

%% Example:
%% disassociate_iam_role_from_resource_output() :: #{

%% }
-type disassociate_iam_role_from_resource_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_backup_output() :: #{
%%   <<"autonomousDatabaseBackup">> => autonomous_database_backup()
%% }
-type get_autonomous_database_backup_output() :: #{binary() => any()}.

%% Example:
%% get_oci_onboarding_status_output() :: #{
%%   <<"autonomousDatabaseOciIntegrationIamRoles">> => list(oci_iam_role()),
%%   <<"existingTenancyActivationLink">> => [string()],
%%   <<"linkedOciCompartmentId">> => [string()],
%%   <<"linkedOciTenancyId">> => [string()],
%%   <<"newTenancyActivationLink">> => [string()],
%%   <<"ociIdentityDomain">> => oci_identity_domain(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionErrors">> => list(subscription_error())
%% }
-type get_oci_onboarding_status_output() :: #{binary() => any()}.

%% Example:
%% list_db_system_shapes_input() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_db_system_shapes_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_backups_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type list_autonomous_database_backups_input() :: #{binary() => any()}.

%% Example:
%% autonomous_database_apex() :: #{
%%   <<"apexVersion">> => [string()],
%%   <<"ordsVersion">> => [string()]
%% }
-type autonomous_database_apex() :: #{binary() => any()}.

%% Example:
%% get_cloud_exadata_infrastructure_output() :: #{
%%   <<"cloudExadataInfrastructure">> => cloud_exadata_infrastructure()
%% }
-type get_cloud_exadata_infrastructure_output() :: #{binary() => any()}.

%% Example:
%% list_db_servers_output() :: #{
%%   <<"dbServers">> => list(db_server_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_db_servers_output() :: #{binary() => any()}.

%% Example:
%% oci_dns_forwarding_config() :: #{
%%   <<"domainName">> => [string()],
%%   <<"ociDnsListenerIp">> => [string()]
%% }
-type oci_dns_forwarding_config() :: #{binary() => any()}.

%% Example:
%% get_oci_onboarding_status_input() :: #{

%% }
-type get_oci_onboarding_status_input() :: #{binary() => any()}.

%% Example:
%% accept_marketplace_registration_output() :: #{

%% }
-type accept_marketplace_registration_output() :: #{binary() => any()}.

%% Example:
%% get_cloud_autonomous_vm_cluster_output() :: #{
%%   <<"cloudAutonomousVmCluster">> => cloud_autonomous_vm_cluster()
%% }
-type get_cloud_autonomous_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% list_system_versions_input() :: #{
%%   <<"giVersion">> := [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"shape">> := [string()]
%% }
-type list_system_versions_input() :: #{binary() => any()}.

%% Example:
%% cloud_autonomous_vm_cluster_resource_details() :: #{
%%   <<"cloudAutonomousVmClusterId">> => string(),
%%   <<"unallocatedAdbStorageInTBs">> => [float()]
%% }
-type cloud_autonomous_vm_cluster_resource_details() :: #{binary() => any()}.

%% Example:
%% scheduled_operation_details() :: #{
%%   <<"dayOfWeek">> => day_of_week(),
%%   <<"scheduledStartTime">> => [string()],
%%   <<"scheduledStopTime">> => [string()]
%% }
-type scheduled_operation_details() :: #{binary() => any()}.

%% Example:
%% service_network_endpoint() :: #{
%%   <<"vpcEndpointId">> => [string()],
%%   <<"vpcEndpointType">> => list(any())
%% }
-type service_network_endpoint() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_peers_output() :: #{
%%   <<"autonomousDatabasePeers">> => list(autonomous_database_peer_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_peers_output() :: #{binary() => any()}.

%% Example:
%% subscription_error() :: #{
%%   <<"errorMessage">> => [string()]
%% }
-type subscription_error() :: #{binary() => any()}.

%% Example:
%% gi_version_summary() :: #{
%%   <<"version">> => [string()]
%% }
-type gi_version_summary() :: #{binary() => any()}.

%% Example:
%% list_db_nodes_output() :: #{
%%   <<"dbNodes">> => list(db_node_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_db_nodes_output() :: #{binary() => any()}.

%% Example:
%% cross_region_data_guard_configuration() :: #{
%%   <<"sourceAutonomousDatabaseArn">> => string()
%% }
-type cross_region_data_guard_configuration() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_character_sets_input() :: #{
%%   <<"characterSetType">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_character_sets_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% cloud_vm_cluster() :: #{
%%   <<"timeZone">> => [string()],
%%   <<"clusterName">> => [string()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"lastUpdateHistoryEntryId">> => [string()],
%%   <<"hostname">> => [string()],
%%   <<"nodeCount">> => [integer()],
%%   <<"iormConfigCache">> => exadata_iorm_config(),
%%   <<"odbNetworkId">> => string(),
%%   <<"domain">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"iamRoles">> => list(iam_role()),
%%   <<"storageSizeInGBs">> => [integer()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"dataCollectionOptions">> => data_collection_options(),
%%   <<"isSparseDiskgroupEnabled">> => [boolean()],
%%   <<"diskRedundancy">> => list(any()),
%%   <<"giVersion">> => [string()],
%%   <<"ociUrl">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"isLocalBackupEnabled">> => [boolean()],
%%   <<"sshPublicKeys">> => list(string()),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"listenerPort">> => [integer()],
%%   <<"scanIpIds">> => list([string()]()),
%%   <<"cloudExadataInfrastructureId">> => [string()],
%%   <<"cloudVmClusterId">> => string(),
%%   <<"cloudExadataInfrastructureArn">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"scanDnsRecordId">> => [string()],
%%   <<"shape">> => [string()],
%%   <<"scanDnsName">> => [string()],
%%   <<"cloudVmClusterArn">> => [string()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"vipIds">> => list([string()]()),
%%   <<"statusReason">> => [string()],
%%   <<"systemVersion">> => [string()],
%%   <<"percentProgress">> => [float()],
%%   <<"licenseModel">> => list(any())
%% }
-type cloud_vm_cluster() :: #{binary() => any()}.

%% Example:
%% delete_cloud_autonomous_vm_cluster_output() :: #{

%% }
-type delete_cloud_autonomous_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% transportable_tablespace() :: #{
%%   <<"ttsBundleUrl">> => [string()]
%% }
-type transportable_tablespace() :: #{binary() => any()}.

%% Example:
%% get_odb_network_output() :: #{
%%   <<"odbNetwork">> => odb_network()
%% }
-type get_odb_network_output() :: #{binary() => any()}.

%% Example:
%% create_odb_network_input() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"backupSubnetCidr">> => [string()],
%%   <<"clientSubnetCidr">> := [string()],
%%   <<"clientToken">> => string(),
%%   <<"crossRegionS3RestoreSourcesToEnable">> => list([string()]()),
%%   <<"customDomainName">> => [string()],
%%   <<"defaultDnsPrefix">> => [string()],
%%   <<"displayName">> := string(),
%%   <<"kmsAccess">> => list(any()),
%%   <<"kmsPolicyDocument">> => string(),
%%   <<"s3Access">> => list(any()),
%%   <<"s3PolicyDocument">> => string(),
%%   <<"stsAccess">> => list(any()),
%%   <<"stsPolicyDocument">> => string(),
%%   <<"tags">> => map(),
%%   <<"zeroEtlAccess">> => list(any())
%% }
-type create_odb_network_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_versions_output() :: #{
%%   <<"autonomousDatabaseVersions">> => list(autonomous_database_version_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_versions_output() :: #{binary() => any()}.

%% Example:
%% autonomous_database_wallet_details() :: #{
%%   <<"status">> => list(any()),
%%   <<"timeRotated">> => [non_neg_integer()]
%% }
-type autonomous_database_wallet_details() :: #{binary() => any()}.

%% Example:
%% start_db_node_output() :: #{
%%   <<"dbNodeId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type start_db_node_output() :: #{binary() => any()}.

%% Example:
%% db_node_summary() :: #{
%%   <<"additionalDetails">> => [string()],
%%   <<"backupIpId">> => [string()],
%%   <<"backupVnic2Id">> => [string()],
%%   <<"backupVnicId">> => [string()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dbNodeArn">> => string(),
%%   <<"dbNodeId">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServerId">> => string(),
%%   <<"dbSystemId">> => [string()],
%%   <<"faultDomain">> => [string()],
%%   <<"hostIpId">> => [string()],
%%   <<"hostname">> => [string()],
%%   <<"maintenanceType">> => list(any()),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"softwareStorageSizeInGB">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timeMaintenanceWindowEnd">> => [string()],
%%   <<"timeMaintenanceWindowStart">> => [string()],
%%   <<"totalCpuCoreCount">> => [integer()],
%%   <<"vnic2Id">> => [string()],
%%   <<"vnicId">> => [string()]
%% }
-type db_node_summary() :: #{binary() => any()}.

%% Example:
%% cross_region_disaster_recovery_configuration() :: #{
%%   <<"isReplicateAutomaticBackups">> => [boolean()],
%%   <<"remoteDisasterRecoveryType">> => list(any()),
%%   <<"sourceAutonomousDatabaseArn">> => string()
%% }
-type cross_region_disaster_recovery_configuration() :: #{binary() => any()}.

%% Example:
%% cloud_autonomous_vm_cluster_summary() :: #{
%%   <<"timeZone">> => [string()],
%%   <<"availableContainerDatabases">> => [integer()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"scanListenerPortNonTls">> => [integer()],
%%   <<"hostname">> => [string()],
%%   <<"nodeCount">> => [integer()],
%%   <<"odbNetworkId">> => string(),
%%   <<"domain">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"iamRoles">> => list(iam_role()),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => string(),
%%   <<"description">> => [string()],
%%   <<"isMtlsEnabledVmCluster">> => [boolean()],
%%   <<"ociUrl">> => [string()],
%%   <<"cpuCoreCountPerNode">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"nonProvisionableAutonomousContainerDatabases">> => [integer()],
%%   <<"scanListenerPortTls">> => [integer()],
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"exadataStorageInTBsLowestScaledValue">> => [float()],
%%   <<"reclaimableCpus">> => [float()],
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"totalContainerDatabases">> => [integer()],
%%   <<"cloudExadataInfrastructureArn">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"shape">> => [string()],
%%   <<"cpuPercentage">> => [float()],
%%   <<"provisionedCpus">> => [float()],
%%   <<"memoryPerOracleComputeUnitInGBs">> => [integer()],
%%   <<"provisionableAutonomousContainerDatabases">> => [integer()],
%%   <<"timeOrdsCertificateExpires">> => [non_neg_integer()],
%%   <<"autonomousDataStorageSizeInTBs">> => [float()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"cloudAutonomousVmClusterArn">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"autonomousDataStoragePercentage">> => [float()],
%%   <<"dataStorageSizeInGBs">> => [float()],
%%   <<"availableAutonomousDataStorageSizeInTBs">> => [float()],
%%   <<"provisionedAutonomousContainerDatabases">> => [integer()],
%%   <<"reservedCpus">> => [float()],
%%   <<"percentProgress">> => [float()],
%%   <<"cloudAutonomousVmClusterId">> => string(),
%%   <<"licenseModel">> => list(any()),
%%   <<"maxAcdsLowestScaledValue">> => [integer()],
%%   <<"timeDatabaseSslCertificateExpires">> => [non_neg_integer()],
%%   <<"availableCpus">> => [float()]
%% }
-type cloud_autonomous_vm_cluster_summary() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_wallet_output() :: #{
%%   <<"autonomousDatabaseWalletFile">> => binary()
%% }
-type create_autonomous_database_wallet_output() :: #{binary() => any()}.

%% Example:
%% create_cloud_autonomous_vm_cluster_input() :: #{
%%   <<"autonomousDataStorageSizeInTBs">> := [float()],
%%   <<"clientToken">> => string(),
%%   <<"cloudExadataInfrastructureId">> := string(),
%%   <<"cpuCoreCountPerNode">> := [integer()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"description">> => [string()],
%%   <<"displayName">> := string(),
%%   <<"isMtlsEnabledVmCluster">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"memoryPerOracleComputeUnitInGBs">> := [integer()],
%%   <<"odbNetworkId">> := string(),
%%   <<"scanListenerPortNonTls">> => [integer()],
%%   <<"scanListenerPortTls">> => [integer()],
%%   <<"tags">> => map(),
%%   <<"timeZone">> => [string()],
%%   <<"totalContainerDatabases">> := [integer()]
%% }
-type create_cloud_autonomous_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% reboot_db_node_output() :: #{
%%   <<"dbNodeId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type reboot_db_node_output() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_character_sets_output() :: #{
%%   <<"autonomousDatabaseCharacterSets">> => list(autonomous_database_character_set_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_character_sets_output() :: #{binary() => any()}.

%% Example:
%% autonomous_database_backup() :: #{
%%   <<"autonomousDatabaseBackupArn">> => string(),
%%   <<"autonomousDatabaseBackupId">> => string(),
%%   <<"autonomousDatabaseId">> => string(),
%%   <<"dbVersion">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"isAutomatic">> => [boolean()],
%%   <<"ocid">> => [string()],
%%   <<"retentionPeriodInDays">> => [integer()],
%%   <<"sizeInTBs">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timeAvailableTill">> => [non_neg_integer()],
%%   <<"timeEnded">> => [non_neg_integer()],
%%   <<"timeStarted">> => [non_neg_integer()],
%%   <<"type">> => list(any())
%% }
-type autonomous_database_backup() :: #{binary() => any()}.

%% Example:
%% delete_autonomous_database_output() :: #{

%% }
-type delete_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% list_system_versions_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"systemVersions">> => list(system_version_summary())
%% }
-type list_system_versions_output() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_clones_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_clones_input() :: #{binary() => any()}.

%% Example:
%% aws_encryption_key_configuration_input() :: #{
%%   <<"externalIdType">> => list(any()),
%%   <<"iamRoleArn">> => string(),
%%   <<"kmsKeyId">> => string()
%% }
-type aws_encryption_key_configuration_input() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_input() :: #{

%% }
-type get_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% restore_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type restore_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% zero_etl_access() :: #{
%%   <<"cidr">> => [string()],
%%   <<"status">> => list(any())
%% }
-type zero_etl_access() :: #{binary() => any()}.

%% Example:
%% autonomous_database_summary() :: #{
%%   <<"localDisasterRecoveryType">> => list(any()),
%%   <<"connectionUrls">> => autonomous_database_connection_urls(),
%%   <<"dataSafeStatus">> => list(any()),
%%   <<"customerContacts">> => list(customer_contact()),
%%   <<"maintenanceTargetComponent">> => [string()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"databaseEdition">> => list(any()),
%%   <<"allowlistedIps">> => list([string()]()),
%%   <<"timeMaintenanceEnd">> => [non_neg_integer()],
%%   <<"role">> => list(any()),
%%   <<"timeOfAutoRefreshStart">> => [non_neg_integer()],
%%   <<"refreshableMode">> => list(any()),
%%   <<"timeLocalDataGuardEnabled">> => [non_neg_integer()],
%%   <<"odbNetworkId">> => string(),
%%   <<"ocid">> => [string()],
%%   <<"availabilityZone">> => [string()],
%%   <<"autonomousDatabaseId">> => string(),
%%   <<"computeCount">> => [float()],
%%   <<"dbVersion">> => [string()],
%%   <<"dbToolsDetails">> => list(database_tool()),
%%   <<"byolComputeCountLimit">> => [integer()],
%%   <<"isBackupRetentionLocked">> => [boolean()],
%%   <<"backupRetentionPeriodInDays">> => [integer()],
%%   <<"availableUpgradeVersions">> => list([string()]()),
%%   <<"operationsInsightsStatus">> => list(any()),
%%   <<"localAdgAutoFailoverMaxDataLossLimit">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"longTermBackupSchedule">> => long_term_backup_schedule(),
%%   <<"isLocalDataGuardEnabled">> => [boolean()],
%%   <<"autoRefreshPointLagInSeconds">> => [integer()],
%%   <<"nextLongTermBackupTimeStamp">> => [non_neg_integer()],
%%   <<"timeOfLastRefresh">> => [non_neg_integer()],
%%   <<"isRefreshableClone">> => [boolean()],
%%   <<"standbyAllowlistedIpsSource">> => list(any()),
%%   <<"isRemoteDataGuardEnabled">> => [boolean()],
%%   <<"autonomousMaintenanceScheduleType">> => list(any()),
%%   <<"autonomousDatabaseArn">> => string(),
%%   <<"standbyAllowlistedIps">> => list([string()]()),
%%   <<"ociUrl">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"timeOfLastBackup">> => [non_neg_integer()],
%%   <<"cloneTableSpaceList">> => list([integer()]()),
%%   <<"status">> => list(any()),
%%   <<"resourcePoolLeaderId">> => [string()],
%%   <<"scheduledOperations">> => list(scheduled_operation_details()),
%%   <<"timeDataGuardRoleChanged">> => [non_neg_integer()],
%%   <<"inMemoryAreaInGBs">> => [integer()],
%%   <<"databaseType">> => list(any()),
%%   <<"failedDataRecoveryInSeconds">> => [integer()],
%%   <<"timeOfLastFailover">> => [non_neg_integer()],
%%   <<"allocatedStorageSizeInTBs">> => [float()],
%%   <<"isAutoScalingForStorageEnabled">> => [boolean()],
%%   <<"isReconnectCloneEnabled">> => [boolean()],
%%   <<"timeReclamationOfFreeAutonomousDatabase">> => [non_neg_integer()],
%%   <<"actualUsedDataStorageSizeInTBs">> => [float()],
%%   <<"standbyDb">> => database_standby_summary(),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"usedDataStorageSizeInGBs">> => [integer()],
%%   <<"privateEndpointLabel">> => [string()],
%%   <<"permissionLevel">> => list(any()),
%%   <<"ncharacterSet">> => [string()],
%%   <<"netServicesArchitecture">> => list(any()),
%%   <<"timeOfLastSwitchover">> => [non_neg_integer()],
%%   <<"autoRefreshFrequencyInSeconds">> => [integer()],
%%   <<"encryptionSummary">> => encryption_summary(),
%%   <<"dbName">> => [string()],
%%   <<"timeOfNextRefresh">> => [non_neg_integer()],
%%   <<"timeOfLastRefreshPoint">> => [non_neg_integer()],
%%   <<"remoteDisasterRecoveryConfiguration">> => disaster_recovery_configuration(),
%%   <<"resourcePoolSummary">> => resource_pool_summary(),
%%   <<"serviceConsoleUrl">> => [string()],
%%   <<"memoryPerOracleComputeUnitInGBs">> => [integer()],
%%   <<"refreshableStatus">> => list(any()),
%%   <<"timeDeletionOfFreeAutonomousDatabase">> => [non_neg_integer()],
%%   <<"timeDisasterRecoveryRoleChanged">> => [non_neg_integer()],
%%   <<"usedDataStorageSizeInTBs">> => [float()],
%%   <<"computeModel">> => list(any()),
%%   <<"dbWorkload">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"sqlWebDeveloperUrl">> => [string()],
%%   <<"connectionStringDetails">> => autonomous_database_connection_strings(),
%%   <<"timeUndeleted">> => [non_neg_integer()],
%%   <<"privateEndpoint">> => [string()],
%%   <<"peerDbIds">> => list([string()]()),
%%   <<"databaseManagementStatus">> => list(any()),
%%   <<"openMode">> => list(any()),
%%   <<"characterSet">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"localStandbyDb">> => database_standby_summary(),
%%   <<"dataStorageSizeInGBs">> => [integer()],
%%   <<"apexDetails">> => autonomous_database_apex(),
%%   <<"totalBackupStorageSizeInGBs">> => [float()],
%%   <<"sourceId">> => [string()],
%%   <<"percentProgress">> => [float()],
%%   <<"isMtlsConnectionRequired">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"privateEndpointIp">> => [string()],
%%   <<"isAutoScalingEnabled">> => [boolean()],
%%   <<"timeMaintenanceBegin">> => [non_neg_integer()],
%%   <<"timeUntilReconnectCloneEnabled">> => [non_neg_integer()],
%%   <<"provisionableCpus">> => list([integer()]())
%% }
-type autonomous_database_summary() :: #{binary() => any()}.

%% Example:
%% update_odb_peering_connection_input() :: #{
%%   <<"displayName">> => string(),
%%   <<"peerNetworkCidrsToBeAdded">> => list(string()),
%%   <<"peerNetworkCidrsToBeRemoved">> => list(string())
%% }
-type update_odb_peering_connection_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% clone_to_refreshable_configuration() :: #{
%%   <<"autoRefreshFrequencyInSeconds">> => [integer()],
%%   <<"autoRefreshPointLagInSeconds">> => [integer()],
%%   <<"cloneType">> => list(any()),
%%   <<"openMode">> => list(any()),
%%   <<"refreshableMode">> => list(any()),
%%   <<"sourceAutonomousDatabaseId">> => string(),
%%   <<"timeOfAutoRefreshStart">> => [non_neg_integer()]
%% }
-type clone_to_refreshable_configuration() :: #{binary() => any()}.

%% Example:
%% list_gi_versions_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"shape">> => [string()]
%% }
-type list_gi_versions_input() :: #{binary() => any()}.

%% Example:
%% start_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string()
%% }
-type start_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% oci_encryption_key_configuration() :: #{
%%   <<"kmsKeyId">> => [string()],
%%   <<"vaultId">> => [string()]
%% }
-type oci_encryption_key_configuration() :: #{binary() => any()}.

%% Example:
%% create_cloud_vm_cluster_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"cloudExadataInfrastructureId">> := string(),
%%   <<"clusterName">> => string(),
%%   <<"cpuCoreCount">> := [integer()],
%%   <<"dataCollectionOptions">> => data_collection_options(),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"displayName">> := string(),
%%   <<"giVersion">> := [string()],
%%   <<"hostname">> := string(),
%%   <<"isLocalBackupEnabled">> => [boolean()],
%%   <<"isSparseDiskgroupEnabled">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"odbNetworkId">> := string(),
%%   <<"scanListenerPortTcp">> => [integer()],
%%   <<"sshPublicKeys">> := list([string()]()),
%%   <<"systemVersion">> => [string()],
%%   <<"tags">> => map(),
%%   <<"timeZone">> => [string()]
%% }
-type create_cloud_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% create_odb_peering_connection_output() :: #{
%%   <<"displayName">> => [string()],
%%   <<"odbPeeringConnectionId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_odb_peering_connection_output() :: #{binary() => any()}.

%% Example:
%% list_db_nodes_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_db_nodes_input() :: #{binary() => any()}.

%% Example:
%% s3_access() :: #{
%%   <<"domainName">> => [string()],
%%   <<"ipv4Addresses">> => list([string()]()),
%%   <<"s3PolicyDocument">> => [string()],
%%   <<"status">> => list(any())
%% }
-type s3_access() :: #{binary() => any()}.

%% Example:
%% odb_peering_connection() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"displayName">> => [string()],
%%   <<"odbNetworkArn">> => [string()],
%%   <<"odbPeeringConnectionArn">> => [string()],
%%   <<"odbPeeringConnectionId">> => string(),
%%   <<"odbPeeringConnectionType">> => [string()],
%%   <<"peerNetworkArn">> => [string()],
%%   <<"peerNetworkCidrs">> => list(string()),
%%   <<"percentProgress">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type odb_peering_connection() :: #{binary() => any()}.

%% Example:
%% list_autonomous_virtual_machines_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_virtual_machines_input() :: #{binary() => any()}.

%% Example:
%% autonomous_database_peer_summary() :: #{
%%   <<"autonomousDatabaseArn">> => string(),
%%   <<"autonomousDatabaseId">> => string(),
%%   <<"ocid">> => [string()],
%%   <<"region">> => [string()]
%% }
-type autonomous_database_peer_summary() :: #{binary() => any()}.

%% Example:
%% disaster_recovery_configuration() :: #{
%%   <<"disasterRecoveryType">> => list(any()),
%%   <<"isReplicateAutomaticBackups">> => [boolean()],
%%   <<"isSnapshotStandby">> => [boolean()],
%%   <<"timeSnapshotStandbyEnabledTill">> => [non_neg_integer()]
%% }
-type disaster_recovery_configuration() :: #{binary() => any()}.

%% Example:
%% reboot_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"isOnlineReboot">> => [boolean()]
%% }
-type reboot_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% list_odb_networks_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_odb_networks_input() :: #{binary() => any()}.

%% Example:
%% db_server_patching_details() :: #{
%%   <<"estimatedPatchDuration">> => [integer()],
%%   <<"patchingStatus">> => list(any()),
%%   <<"timePatchingEnded">> => [string()],
%%   <<"timePatchingStarted">> => [string()]
%% }
-type db_server_patching_details() :: #{binary() => any()}.

%% Example:
%% database_clone_configuration() :: #{
%%   <<"cloneType">> => list(any()),
%%   <<"sourceAutonomousDatabaseId">> => string()
%% }
-type database_clone_configuration() :: #{binary() => any()}.

%% Example:
%% get_cloud_exadata_infrastructure_unallocated_resources_input() :: #{
%%   <<"dbServers">> => list([string()]())
%% }
-type get_cloud_exadata_infrastructure_unallocated_resources_input() :: #{binary() => any()}.

%% Example:
%% delete_autonomous_database_backup_output() :: #{

%% }
-type delete_autonomous_database_backup_output() :: #{binary() => any()}.

%% Example:
%% list_odb_networks_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"odbNetworks">> => list(odb_network_summary())
%% }
-type list_odb_networks_output() :: #{binary() => any()}.

%% Example:
%% create_cloud_autonomous_vm_cluster_output() :: #{
%%   <<"cloudAutonomousVmClusterId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_cloud_autonomous_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% delete_odb_peering_connection_input() :: #{

%% }
-type delete_odb_peering_connection_input() :: #{binary() => any()}.

%% Example:
%% kms_access() :: #{
%%   <<"domainName">> => [string()],
%%   <<"ipv4Addresses">> => list([string()]()),
%%   <<"kmsPolicyDocument">> => [string()],
%%   <<"status">> => list(any())
%% }
-type kms_access() :: #{binary() => any()}.

%% Example:
%% exadata_iorm_config() :: #{
%%   <<"dbPlans">> => list(db_iorm_config()),
%%   <<"lifecycleDetails">> => [string()],
%%   <<"lifecycleState">> => list(any()),
%%   <<"objective">> => list(any())
%% }
-type exadata_iorm_config() :: #{binary() => any()}.

%% Example:
%% associate_iam_role_to_resource_input() :: #{
%%   <<"awsIntegration">> := list(any()),
%%   <<"iamRoleArn">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type associate_iam_role_to_resource_input() :: #{binary() => any()}.

%% Example:
%% autonomous_database() :: #{
%%   <<"localDisasterRecoveryType">> => list(any()),
%%   <<"connectionUrls">> => autonomous_database_connection_urls(),
%%   <<"dataSafeStatus">> => list(any()),
%%   <<"customerContacts">> => list(customer_contact()),
%%   <<"maintenanceTargetComponent">> => [string()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"databaseEdition">> => list(any()),
%%   <<"allowlistedIps">> => list([string()]()),
%%   <<"timeMaintenanceEnd">> => [non_neg_integer()],
%%   <<"role">> => list(any()),
%%   <<"timeOfAutoRefreshStart">> => [non_neg_integer()],
%%   <<"refreshableMode">> => list(any()),
%%   <<"timeLocalDataGuardEnabled">> => [non_neg_integer()],
%%   <<"odbNetworkId">> => string(),
%%   <<"ocid">> => [string()],
%%   <<"availabilityZone">> => [string()],
%%   <<"autonomousDatabaseId">> => string(),
%%   <<"computeCount">> => [float()],
%%   <<"dbVersion">> => [string()],
%%   <<"dbToolsDetails">> => list(database_tool()),
%%   <<"byolComputeCountLimit">> => [integer()],
%%   <<"isBackupRetentionLocked">> => [boolean()],
%%   <<"backupRetentionPeriodInDays">> => [integer()],
%%   <<"availableUpgradeVersions">> => list([string()]()),
%%   <<"operationsInsightsStatus">> => list(any()),
%%   <<"localAdgAutoFailoverMaxDataLossLimit">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"longTermBackupSchedule">> => long_term_backup_schedule(),
%%   <<"isLocalDataGuardEnabled">> => [boolean()],
%%   <<"autoRefreshPointLagInSeconds">> => [integer()],
%%   <<"nextLongTermBackupTimeStamp">> => [non_neg_integer()],
%%   <<"timeOfLastRefresh">> => [non_neg_integer()],
%%   <<"isRefreshableClone">> => [boolean()],
%%   <<"standbyAllowlistedIpsSource">> => list(any()),
%%   <<"isRemoteDataGuardEnabled">> => [boolean()],
%%   <<"autonomousMaintenanceScheduleType">> => list(any()),
%%   <<"autonomousDatabaseArn">> => string(),
%%   <<"standbyAllowlistedIps">> => list([string()]()),
%%   <<"ociUrl">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"timeOfLastBackup">> => [non_neg_integer()],
%%   <<"cloneTableSpaceList">> => list([integer()]()),
%%   <<"status">> => list(any()),
%%   <<"resourcePoolLeaderId">> => [string()],
%%   <<"scheduledOperations">> => list(scheduled_operation_details()),
%%   <<"timeDataGuardRoleChanged">> => [non_neg_integer()],
%%   <<"inMemoryAreaInGBs">> => [integer()],
%%   <<"databaseType">> => list(any()),
%%   <<"failedDataRecoveryInSeconds">> => [integer()],
%%   <<"timeOfLastFailover">> => [non_neg_integer()],
%%   <<"allocatedStorageSizeInTBs">> => [float()],
%%   <<"isAutoScalingForStorageEnabled">> => [boolean()],
%%   <<"isReconnectCloneEnabled">> => [boolean()],
%%   <<"timeReclamationOfFreeAutonomousDatabase">> => [non_neg_integer()],
%%   <<"actualUsedDataStorageSizeInTBs">> => [float()],
%%   <<"standbyDb">> => database_standby_summary(),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"usedDataStorageSizeInGBs">> => [integer()],
%%   <<"privateEndpointLabel">> => [string()],
%%   <<"permissionLevel">> => list(any()),
%%   <<"ncharacterSet">> => [string()],
%%   <<"netServicesArchitecture">> => list(any()),
%%   <<"timeOfLastSwitchover">> => [non_neg_integer()],
%%   <<"autoRefreshFrequencyInSeconds">> => [integer()],
%%   <<"encryptionSummary">> => encryption_summary(),
%%   <<"dbName">> => [string()],
%%   <<"timeOfNextRefresh">> => [non_neg_integer()],
%%   <<"timeOfLastRefreshPoint">> => [non_neg_integer()],
%%   <<"remoteDisasterRecoveryConfiguration">> => disaster_recovery_configuration(),
%%   <<"resourcePoolSummary">> => resource_pool_summary(),
%%   <<"serviceConsoleUrl">> => [string()],
%%   <<"memoryPerOracleComputeUnitInGBs">> => [integer()],
%%   <<"refreshableStatus">> => list(any()),
%%   <<"timeDeletionOfFreeAutonomousDatabase">> => [non_neg_integer()],
%%   <<"timeDisasterRecoveryRoleChanged">> => [non_neg_integer()],
%%   <<"usedDataStorageSizeInTBs">> => [float()],
%%   <<"computeModel">> => list(any()),
%%   <<"dbWorkload">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"sqlWebDeveloperUrl">> => [string()],
%%   <<"connectionStringDetails">> => autonomous_database_connection_strings(),
%%   <<"timeUndeleted">> => [non_neg_integer()],
%%   <<"privateEndpoint">> => [string()],
%%   <<"peerDbIds">> => list([string()]()),
%%   <<"databaseManagementStatus">> => list(any()),
%%   <<"openMode">> => list(any()),
%%   <<"characterSet">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"localStandbyDb">> => database_standby_summary(),
%%   <<"dataStorageSizeInGBs">> => [integer()],
%%   <<"apexDetails">> => autonomous_database_apex(),
%%   <<"totalBackupStorageSizeInGBs">> => [float()],
%%   <<"sourceId">> => [string()],
%%   <<"percentProgress">> => [float()],
%%   <<"isMtlsConnectionRequired">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"privateEndpointIp">> => [string()],
%%   <<"isAutoScalingEnabled">> => [boolean()],
%%   <<"timeMaintenanceBegin">> => [non_neg_integer()],
%%   <<"timeUntilReconnectCloneEnabled">> => [non_neg_integer()],
%%   <<"provisionableCpus">> => list([integer()]())
%% }
-type autonomous_database() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_wallet_details_input() :: #{
%%   <<"autonomousDatabaseId">> := string()
%% }
-type get_autonomous_database_wallet_details_input() :: #{binary() => any()}.

%% Example:
%% list_cloud_autonomous_vm_clusters_input() :: #{
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_autonomous_vm_clusters_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_clones_output() :: #{
%%   <<"autonomousDatabaseClones">> => list(autonomous_database_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_clones_output() :: #{binary() => any()}.

%% Example:
%% start_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type start_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% get_db_server_input() :: #{

%% }
-type get_db_server_input() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_cloud_exadata_infrastructure_input() :: #{

%% }
-type delete_cloud_exadata_infrastructure_input() :: #{binary() => any()}.

%% Example:
%% point_in_time_restore_configuration() :: #{
%%   <<"cloneTableSpaceList">> => list([integer()]()),
%%   <<"cloneType">> => list(any()),
%%   <<"sourceAutonomousDatabaseId">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"useLatestAvailableBackupTimestamp">> => [boolean()]
%% }
-type point_in_time_restore_configuration() :: #{binary() => any()}.

%% Example:
%% reboot_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type reboot_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% cloud_exadata_infrastructure_summary() :: #{
%%   <<"monthlyStorageServerVersion">> => [string()],
%%   <<"maxDataStorageInTBs">> => [float()],
%%   <<"maxMemoryInGBs">> => [integer()],
%%   <<"monthlyDbServerVersion">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"availabilityZone">> => [string()],
%%   <<"storageServerType">> => [string()],
%%   <<"computeCount">> => [integer()],
%%   <<"databaseServerType">> => [string()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"totalStorageSizeInGBs">> => [integer()],
%%   <<"customerContactsToSendToOCI">> => list(customer_contact()),
%%   <<"ociUrl">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"cpuCount">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"availableStorageSizeInGBs">> => [integer()],
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"cloudExadataInfrastructureArn">> => [string()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"shape">> => [string()],
%%   <<"maxDbNodeStorageSizeInGBs">> => [integer()],
%%   <<"nextMaintenanceRunId">> => [string()],
%%   <<"additionalStorageCount">> => [integer()],
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"activatedStorageCount">> => [integer()],
%%   <<"dbServerVersion">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"storageServerVersion">> => [string()],
%%   <<"lastMaintenanceRunId">> => [string()],
%%   <<"maxCpuCount">> => [integer()],
%%   <<"percentProgress">> => [float()],
%%   <<"storageCount">> => [integer()]
%% }
-type cloud_exadata_infrastructure_summary() :: #{binary() => any()}.

%% Example:
%% odb_peering_connection_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"displayName">> => [string()],
%%   <<"odbNetworkArn">> => [string()],
%%   <<"odbPeeringConnectionArn">> => [string()],
%%   <<"odbPeeringConnectionId">> => string(),
%%   <<"odbPeeringConnectionType">> => [string()],
%%   <<"peerNetworkArn">> => [string()],
%%   <<"peerNetworkCidrs">> => list(string()),
%%   <<"percentProgress">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type odb_peering_connection_summary() :: #{binary() => any()}.

%% Example:
%% get_odb_network_input() :: #{

%% }
-type get_odb_network_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_databases_output() :: #{
%%   <<"autonomousDatabases">> => list(autonomous_database_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_databases_output() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_backups_output() :: #{
%%   <<"autonomousDatabaseBackups">> => list(autonomous_database_backup_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_backups_output() :: #{binary() => any()}.

%% Example:
%% get_odb_peering_connection_input() :: #{

%% }
-type get_odb_peering_connection_input() :: #{binary() => any()}.

%% Example:
%% database_connection_string_profile() :: #{
%%   <<"consumerGroup">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"hostFormat">> => [string()],
%%   <<"isRegional">> => [boolean()],
%%   <<"protocol">> => [string()],
%%   <<"sessionMode">> => [string()],
%%   <<"syntaxFormat">> => [string()],
%%   <<"tlsAuthentication">> => [string()],
%%   <<"value">> => [string()]
%% }
-type database_connection_string_profile() :: #{binary() => any()}.

%% Example:
%% update_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% list_odb_peering_connections_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"odbNetworkId">> => string()
%% }
-type list_odb_peering_connections_input() :: #{binary() => any()}.

%% Example:
%% db_system_shape_summary() :: #{
%%   <<"areServerTypesSupported">> => [boolean()],
%%   <<"availableCoreCount">> => [integer()],
%%   <<"availableCoreCountPerNode">> => [integer()],
%%   <<"availableDataStorageInTBs">> => [integer()],
%%   <<"availableDataStoragePerServerInTBs">> => [integer()],
%%   <<"availableDbNodePerNodeInGBs">> => [integer()],
%%   <<"availableDbNodeStorageInGBs">> => [integer()],
%%   <<"availableMemoryInGBs">> => [integer()],
%%   <<"availableMemoryPerNodeInGBs">> => [integer()],
%%   <<"computeModel">> => list(any()),
%%   <<"coreCountIncrement">> => [integer()],
%%   <<"maxStorageCount">> => [integer()],
%%   <<"maximumNodeCount">> => [integer()],
%%   <<"minCoreCountPerNode">> => [integer()],
%%   <<"minDataStorageInTBs">> => [integer()],
%%   <<"minDbNodeStoragePerNodeInGBs">> => [integer()],
%%   <<"minMemoryPerNodeInGBs">> => [integer()],
%%   <<"minStorageCount">> => [integer()],
%%   <<"minimumCoreCount">> => [integer()],
%%   <<"minimumNodeCount">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"runtimeMinimumCoreCount">> => [integer()],
%%   <<"shapeFamily">> => [string()],
%%   <<"shapeType">> => list(any())
%% }
-type db_system_shape_summary() :: #{binary() => any()}.

%% Example:
%% get_db_node_output() :: #{
%%   <<"dbNode">> => db_node()
%% }
-type get_db_node_output() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% restore_from_backup_configuration() :: #{
%%   <<"autonomousDatabaseBackupId">> => string(),
%%   <<"cloneTableSpaceList">> => list([integer()]()),
%%   <<"cloneType">> => list(any())
%% }
-type restore_from_backup_configuration() :: #{binary() => any()}.

%% Example:
%% delete_autonomous_database_input() :: #{

%% }
-type delete_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_databases_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_databases_input() :: #{binary() => any()}.

%% Example:
%% associate_iam_role_to_resource_output() :: #{

%% }
-type associate_iam_role_to_resource_output() :: #{binary() => any()}.

%% Example:
%% list_cloud_vm_clusters_input() :: #{
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_vm_clusters_input() :: #{binary() => any()}.

%% Example:
%% autonomous_database_connection_urls() :: #{
%%   <<"apexUrl">> => [string()],
%%   <<"databaseTransformsUrl">> => [string()],
%%   <<"graphStudioUrl">> => [string()],
%%   <<"machineLearningNotebookUrl">> => [string()],
%%   <<"machineLearningUserManagementUrl">> => [string()],
%%   <<"mongoDbUrl">> => [string()],
%%   <<"ordsUrl">> => [string()],
%%   <<"spatialStudioUrl">> => [string()],
%%   <<"sqlDevWebUrl">> => [string()]
%% }
-type autonomous_database_connection_urls() :: #{binary() => any()}.

%% Example:
%% list_cloud_vm_clusters_output() :: #{
%%   <<"cloudVmClusters">> => list(cloud_vm_cluster_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_vm_clusters_output() :: #{binary() => any()}.

%% Example:
%% data_collection_options() :: #{
%%   <<"isDiagnosticsEventsEnabled">> => [boolean()],
%%   <<"isHealthMonitoringEnabled">> => [boolean()],
%%   <<"isIncidentLogsEnabled">> => [boolean()]
%% }
-type data_collection_options() :: #{binary() => any()}.

%% Example:
%% update_autonomous_database_backup_input() :: #{
%%   <<"retentionPeriodInDays">> => [integer()]
%% }
-type update_autonomous_database_backup_input() :: #{binary() => any()}.

%% Example:
%% cross_region_s3_restore_sources_access() :: #{
%%   <<"ipv4Addresses">> => list([string()]()),
%%   <<"region">> => [string()],
%%   <<"status">> => list(any())
%% }
-type cross_region_s3_restore_sources_access() :: #{binary() => any()}.

%% Example:
%% failover_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"peerDbArn">> => string()
%% }
-type failover_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% update_cloud_exadata_infrastructure_output() :: #{
%%   <<"cloudExadataInfrastructureId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_cloud_exadata_infrastructure_output() :: #{binary() => any()}.

%% Example:
%% delete_odb_peering_connection_output() :: #{

%% }
-type delete_odb_peering_connection_output() :: #{binary() => any()}.

%% Example:
%% autonomous_database_character_set_summary() :: #{
%%   <<"characterSet">> => [string()]
%% }
-type autonomous_database_character_set_summary() :: #{binary() => any()}.

%% Example:
%% delete_odb_network_output() :: #{

%% }
-type delete_odb_network_output() :: #{binary() => any()}.

%% Example:
%% get_cloud_exadata_infrastructure_unallocated_resources_output() :: #{
%%   <<"cloudExadataInfrastructureUnallocatedResources">> => cloud_exadata_infrastructure_unallocated_resources()
%% }
-type get_cloud_exadata_infrastructure_unallocated_resources_output() :: #{binary() => any()}.

%% Example:
%% get_cloud_exadata_infrastructure_input() :: #{

%% }
-type get_cloud_exadata_infrastructure_input() :: #{binary() => any()}.

%% Example:
%% delete_autonomous_database_backup_input() :: #{

%% }
-type delete_autonomous_database_backup_input() :: #{binary() => any()}.

%% Example:
%% get_cloud_vm_cluster_output() :: #{
%%   <<"cloudVmCluster">> => cloud_vm_cluster()
%% }
-type get_cloud_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% initialize_service_input() :: #{
%%   <<"ociIdentityDomain">> => [boolean()]
%% }
-type initialize_service_input() :: #{binary() => any()}.

%% Example:
%% delete_cloud_exadata_infrastructure_output() :: #{

%% }
-type delete_cloud_exadata_infrastructure_output() :: #{binary() => any()}.

%% Example:
%% update_odb_network_output() :: #{
%%   <<"displayName">> => [string()],
%%   <<"odbNetworkId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_odb_network_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% long_term_backup_schedule() :: #{
%%   <<"isDisabled">> => [boolean()],
%%   <<"repeatCadence">> => list(any()),
%%   <<"retentionPeriodInDays">> => [integer()],
%%   <<"timeOfBackup">> => [non_neg_integer()]
%% }
-type long_term_backup_schedule() :: #{binary() => any()}.

%% Example:
%% odb_network() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"backupSubnetCidr">> => [string()],
%%   <<"clientSubnetCidr">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"customDomainName">> => [string()],
%%   <<"defaultDnsPrefix">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"ec2PlacementGroupIds">> => list(string()),
%%   <<"managedServices">> => managed_services(),
%%   <<"ociDnsForwardingConfigs">> => list(oci_dns_forwarding_config()),
%%   <<"ociNetworkAnchorId">> => [string()],
%%   <<"ociNetworkAnchorUrl">> => [string()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ociVcnId">> => [string()],
%%   <<"ociVcnUrl">> => [string()],
%%   <<"odbNetworkArn">> => [string()],
%%   <<"odbNetworkId">> => string(),
%%   <<"peeredCidrs">> => list([string()]()),
%%   <<"percentProgress">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type odb_network() :: #{binary() => any()}.

%% Example:
%% update_odb_network_input() :: #{
%%   <<"crossRegionS3RestoreSourcesToDisable">> => list([string()]()),
%%   <<"crossRegionS3RestoreSourcesToEnable">> => list([string()]()),
%%   <<"displayName">> => string(),
%%   <<"kmsAccess">> => list(any()),
%%   <<"kmsPolicyDocument">> => string(),
%%   <<"peeredCidrsToBeAdded">> => list([string()]()),
%%   <<"peeredCidrsToBeRemoved">> => list([string()]()),
%%   <<"s3Access">> => list(any()),
%%   <<"s3PolicyDocument">> => string(),
%%   <<"stsAccess">> => list(any()),
%%   <<"stsPolicyDocument">> => string(),
%%   <<"zeroEtlAccess">> => list(any())
%% }
-type update_odb_network_input() :: #{binary() => any()}.

%% Example:
%% delete_cloud_autonomous_vm_cluster_input() :: #{

%% }
-type delete_cloud_autonomous_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% update_autonomous_database_backup_output() :: #{
%%   <<"autonomousDatabaseBackupId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_autonomous_database_backup_output() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% day_of_week() :: #{
%%   <<"name">> => list(any())
%% }
-type day_of_week() :: #{binary() => any()}.

%% Example:
%% odb_network_summary() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"backupSubnetCidr">> => [string()],
%%   <<"clientSubnetCidr">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"customDomainName">> => [string()],
%%   <<"defaultDnsPrefix">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"ec2PlacementGroupIds">> => list(string()),
%%   <<"managedServices">> => managed_services(),
%%   <<"ociDnsForwardingConfigs">> => list(oci_dns_forwarding_config()),
%%   <<"ociNetworkAnchorId">> => [string()],
%%   <<"ociNetworkAnchorUrl">> => [string()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ociVcnId">> => [string()],
%%   <<"ociVcnUrl">> => [string()],
%%   <<"odbNetworkArn">> => [string()],
%%   <<"odbNetworkId">> => string(),
%%   <<"peeredCidrs">> => list([string()]()),
%%   <<"percentProgress">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type odb_network_summary() :: #{binary() => any()}.

%% Example:
%% database_standby_summary() :: #{
%%   <<"availabilityDomain">> => [string()],
%%   <<"lagTimeInSeconds">> => [integer()],
%%   <<"maintenanceTargetComponent">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timeDataGuardRoleChanged">> => [non_neg_integer()],
%%   <<"timeDisasterRecoveryRoleChanged">> => [non_neg_integer()],
%%   <<"timeMaintenanceBegin">> => [non_neg_integer()],
%%   <<"timeMaintenanceEnd">> => [non_neg_integer()]
%% }
-type database_standby_summary() :: #{binary() => any()}.

%% Example:
%% db_server_summary() :: #{
%%   <<"autonomousVirtualMachineIds">> => list([string()]()),
%%   <<"autonomousVmClusterIds">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServerId">> => string(),
%%   <<"dbServerPatchingDetails">> => db_server_patching_details(),
%%   <<"displayName">> => [string()],
%%   <<"exadataInfrastructureId">> => [string()],
%%   <<"maxCpuCount">> => [integer()],
%%   <<"maxDbNodeStorageInGBs">> => [integer()],
%%   <<"maxMemoryInGBs">> => [integer()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"shape">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vmClusterIds">> => list([string()]())
%% }
-type db_server_summary() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_backup_input() :: #{

%% }
-type get_autonomous_database_backup_input() :: #{binary() => any()}.

%% Example:
%% stop_db_node_output() :: #{
%%   <<"dbNodeId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type stop_db_node_output() :: #{binary() => any()}.

%% Example:
%% create_cloud_exadata_infrastructure_input() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"clientToken">> => string(),
%%   <<"computeCount">> := [integer()],
%%   <<"customerContactsToSendToOCI">> => list(customer_contact()),
%%   <<"databaseServerType">> => string(),
%%   <<"displayName">> := string(),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"shape">> := string(),
%%   <<"storageCount">> := [integer()],
%%   <<"storageServerType">> => string(),
%%   <<"tags">> => map()
%% }
-type create_cloud_exadata_infrastructure_input() :: #{binary() => any()}.

%% Example:
%% autonomous_database_connection_strings() :: #{
%%   <<"allConnectionStrings">> => map(),
%%   <<"dedicated">> => [string()],
%%   <<"high">> => [string()],
%%   <<"low">> => [string()],
%%   <<"medium">> => [string()],
%%   <<"profiles">> => list(database_connection_string_profile())
%% }
-type autonomous_database_connection_strings() :: #{binary() => any()}.

%% Example:
%% list_db_servers_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_db_servers_input() :: #{binary() => any()}.

%% Example:
%% sts_access() :: #{
%%   <<"domainName">> => [string()],
%%   <<"ipv4Addresses">> => list([string()]()),
%%   <<"status">> => list(any()),
%%   <<"stsPolicyDocument">> => [string()]
%% }
-type sts_access() :: #{binary() => any()}.

%% Example:
%% database_tool() :: #{
%%   <<"computeCount">> => [float()],
%%   <<"isEnabled">> => [boolean()],
%%   <<"maxIdleTimeInMinutes">> => [integer()],
%%   <<"name">> => [string()]
%% }
-type database_tool() :: #{binary() => any()}.

%% Example:
%% initialize_service_output() :: #{

%% }
-type initialize_service_output() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_odb_peering_connections_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"odbPeeringConnections">> => list(odb_peering_connection_summary())
%% }
-type list_odb_peering_connections_output() :: #{binary() => any()}.

%% Example:
%% failover_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type failover_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% customer_contact() :: #{
%%   <<"email">> => string()
%% }
-type customer_contact() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_output() :: #{
%%   <<"autonomousDatabase">> => autonomous_database()
%% }
-type get_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% get_db_node_input() :: #{

%% }
-type get_db_node_input() :: #{binary() => any()}.

%% Example:
%% stop_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string()
%% }
-type stop_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% delete_odb_network_input() :: #{
%%   <<"deleteAssociatedResources">> := [boolean()]
%% }
-type delete_odb_network_input() :: #{binary() => any()}.

%% Example:
%% autonomous_virtual_machine_summary() :: #{
%%   <<"autonomousVirtualMachineId">> => string(),
%%   <<"clientIpAddress">> => [string()],
%%   <<"cloudAutonomousVmClusterId">> => [string()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServerDisplayName">> => [string()],
%%   <<"dbServerId">> => string(),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vmName">> => [string()]
%% }
-type autonomous_virtual_machine_summary() :: #{binary() => any()}.

%% Example:
%% oci_iam_role() :: #{
%%   <<"awsIntegration">> => list(any()),
%%   <<"iamRoleArn">> => string()
%% }
-type oci_iam_role() :: #{binary() => any()}.

%% Example:
%% iam_role() :: #{
%%   <<"awsIntegration">> => list(any()),
%%   <<"iamRoleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type iam_role() :: #{binary() => any()}.

%% Example:
%% create_cloud_exadata_infrastructure_output() :: #{
%%   <<"cloudExadataInfrastructureId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_cloud_exadata_infrastructure_output() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_cloud_exadata_infrastructures_output() :: #{
%%   <<"cloudExadataInfrastructures">> => list(cloud_exadata_infrastructure_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_exadata_infrastructures_output() :: #{binary() => any()}.

%% Example:
%% system_version_summary() :: #{
%%   <<"giVersion">> => [string()],
%%   <<"shape">> => [string()],
%%   <<"systemVersions">> => list([string()]())
%% }
-type system_version_summary() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_versions_input() :: #{
%%   <<"dbWorkload">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_versions_input() :: #{binary() => any()}.

%% Example:
%% managed_s3_backup_access() :: #{
%%   <<"ipv4Addresses">> => list([string()]()),
%%   <<"status">> => list(any())
%% }
-type managed_s3_backup_access() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% restore_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"timestamp">> := [non_neg_integer()]
%% }
-type restore_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% db_node() :: #{
%%   <<"additionalDetails">> => [string()],
%%   <<"backupIpId">> => [string()],
%%   <<"backupVnic2Id">> => [string()],
%%   <<"backupVnicId">> => [string()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dbNodeArn">> => string(),
%%   <<"dbNodeId">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServerId">> => string(),
%%   <<"dbSystemId">> => [string()],
%%   <<"faultDomain">> => [string()],
%%   <<"floatingIpAddress">> => [string()],
%%   <<"hostIpId">> => [string()],
%%   <<"hostname">> => [string()],
%%   <<"maintenanceType">> => list(any()),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"privateIpAddress">> => [string()],
%%   <<"softwareStorageSizeInGB">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timeMaintenanceWindowEnd">> => [string()],
%%   <<"timeMaintenanceWindowStart">> => [string()],
%%   <<"totalCpuCoreCount">> => [integer()],
%%   <<"vnic2Id">> => [string()],
%%   <<"vnicId">> => [string()]
%% }
-type db_node() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_backup_output() :: #{
%%   <<"autonomousDatabaseBackupId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_autonomous_database_backup_output() :: #{binary() => any()}.

%% Example:
%% oci_identity_domain() :: #{
%%   <<"accountSetupCloudFormationUrl">> => [string()],
%%   <<"ociIdentityDomainId">> => [string()],
%%   <<"ociIdentityDomainResourceUrl">> => [string()],
%%   <<"ociIdentityDomainUrl">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type oci_identity_domain() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% shrink_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type shrink_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% month() :: #{
%%   <<"name">> => list(any())
%% }
-type month() :: #{binary() => any()}.

%% Example:
%% get_db_server_output() :: #{
%%   <<"dbServer">> => db_server()
%% }
-type get_db_server_output() :: #{binary() => any()}.

%% Example:
%% start_db_node_input() :: #{

%% }
-type start_db_node_input() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% cloud_vm_cluster_summary() :: #{
%%   <<"timeZone">> => [string()],
%%   <<"clusterName">> => [string()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"lastUpdateHistoryEntryId">> => [string()],
%%   <<"hostname">> => [string()],
%%   <<"nodeCount">> => [integer()],
%%   <<"iormConfigCache">> => exadata_iorm_config(),
%%   <<"odbNetworkId">> => string(),
%%   <<"domain">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"iamRoles">> => list(iam_role()),
%%   <<"storageSizeInGBs">> => [integer()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"dataCollectionOptions">> => data_collection_options(),
%%   <<"isSparseDiskgroupEnabled">> => [boolean()],
%%   <<"diskRedundancy">> => list(any()),
%%   <<"giVersion">> => [string()],
%%   <<"ociUrl">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"isLocalBackupEnabled">> => [boolean()],
%%   <<"sshPublicKeys">> => list(string()),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"listenerPort">> => [integer()],
%%   <<"scanIpIds">> => list([string()]()),
%%   <<"cloudExadataInfrastructureId">> => [string()],
%%   <<"cloudVmClusterId">> => string(),
%%   <<"cloudExadataInfrastructureArn">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"scanDnsRecordId">> => [string()],
%%   <<"shape">> => [string()],
%%   <<"scanDnsName">> => [string()],
%%   <<"cloudVmClusterArn">> => [string()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"vipIds">> => list([string()]()),
%%   <<"statusReason">> => [string()],
%%   <<"systemVersion">> => [string()],
%%   <<"percentProgress">> => [float()],
%%   <<"licenseModel">> => list(any())
%% }
-type cloud_vm_cluster_summary() :: #{binary() => any()}.

%% Example:
%% db_iorm_config() :: #{
%%   <<"dbName">> => [string()],
%%   <<"flashCacheLimit">> => [string()],
%%   <<"share">> => [integer()]
%% }
-type db_iorm_config() :: #{binary() => any()}.

%% Example:
%% cloud_exadata_infrastructure() :: #{
%%   <<"monthlyStorageServerVersion">> => [string()],
%%   <<"maxDataStorageInTBs">> => [float()],
%%   <<"maxMemoryInGBs">> => [integer()],
%%   <<"monthlyDbServerVersion">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"availabilityZone">> => [string()],
%%   <<"storageServerType">> => [string()],
%%   <<"computeCount">> => [integer()],
%%   <<"databaseServerType">> => [string()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => [string()],
%%   <<"totalStorageSizeInGBs">> => [integer()],
%%   <<"customerContactsToSendToOCI">> => list(customer_contact()),
%%   <<"ociUrl">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"cpuCount">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"availableStorageSizeInGBs">> => [integer()],
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"cloudExadataInfrastructureArn">> => [string()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"shape">> => [string()],
%%   <<"maxDbNodeStorageSizeInGBs">> => [integer()],
%%   <<"nextMaintenanceRunId">> => [string()],
%%   <<"additionalStorageCount">> => [integer()],
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"activatedStorageCount">> => [integer()],
%%   <<"dbServerVersion">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"storageServerVersion">> => [string()],
%%   <<"lastMaintenanceRunId">> => [string()],
%%   <<"maxCpuCount">> => [integer()],
%%   <<"percentProgress">> => [float()],
%%   <<"storageCount">> => [integer()]
%% }
-type cloud_exadata_infrastructure() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_input() :: #{
%%   <<"databaseEdition">> => list(any()),
%%   <<"allowlistedIps">> => list([string()]()),
%%   <<"odbNetworkId">> => string(),
%%   <<"computeCount">> => [float()],
%%   <<"dbVersion">> => [string()],
%%   <<"dbToolsDetails">> => list(database_tool()),
%%   <<"byolComputeCountLimit">> => [float()],
%%   <<"isBackupRetentionLocked">> => [boolean()],
%%   <<"backupRetentionPeriodInDays">> => [integer()],
%%   <<"displayName">> => string(),
%%   <<"isLocalDataGuardEnabled">> => [boolean()],
%%   <<"encryptionKeyConfiguration">> => list(),
%%   <<"standbyAllowlistedIpsSource">> => list(any()),
%%   <<"customerContactsToSendToOCI">> => list(customer_contact()),
%%   <<"clientToken">> => string(),
%%   <<"autonomousMaintenanceScheduleType">> => list(any()),
%%   <<"standbyAllowlistedIps">> => list([string()]()),
%%   <<"resourcePoolLeaderId">> => string(),
%%   <<"scheduledOperations">> => list(scheduled_operation_details()),
%%   <<"isAutoScalingForStorageEnabled">> => [boolean()],
%%   <<"dataStorageSizeInTBs">> => [integer()],
%%   <<"privateEndpointLabel">> => [string()],
%%   <<"ncharacterSet">> => [string()],
%%   <<"tags">> => map(),
%%   <<"encryptionKeyProvider">> => list(any()),
%%   <<"dbName">> => [string()],
%%   <<"sourceConfiguration">> => list(),
%%   <<"resourcePoolSummary">> => resource_pool_summary(),
%%   <<"adminPassword">> => string(),
%%   <<"dbWorkload">> => list(any()),
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"characterSet">> => [string()],
%%   <<"source">> => list(any()),
%%   <<"dataStorageSizeInGBs">> => [integer()],
%%   <<"isMtlsConnectionRequired">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"privateEndpointIp">> => [string()],
%%   <<"isAutoScalingEnabled">> => [boolean()],
%%   <<"transportableTablespace">> => transportable_tablespace()
%% }
-type create_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% get_cloud_autonomous_vm_cluster_input() :: #{

%% }
-type get_cloud_autonomous_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% list_autonomous_virtual_machines_output() :: #{
%%   <<"autonomousVirtualMachines">> => list(autonomous_virtual_machine_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_virtual_machines_output() :: #{binary() => any()}.

%% Example:
%% stop_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type stop_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% list_cloud_exadata_infrastructures_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_exadata_infrastructures_input() :: #{binary() => any()}.

%% Example:
%% list_gi_versions_output() :: #{
%%   <<"giVersions">> => list(gi_version_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_gi_versions_output() :: #{binary() => any()}.

%% Example:
%% list_autonomous_database_peers_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_autonomous_database_peers_input() :: #{binary() => any()}.

%% Example:
%% stop_db_node_input() :: #{

%% }
-type stop_db_node_input() :: #{binary() => any()}.

%% Example:
%% list_db_system_shapes_output() :: #{
%%   <<"dbSystemShapes">> => list(db_system_shape_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_db_system_shapes_output() :: #{binary() => any()}.

%% Example:
%% db_server() :: #{
%%   <<"autonomousVirtualMachineIds">> => list([string()]()),
%%   <<"autonomousVmClusterIds">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"dbServerId">> => string(),
%%   <<"dbServerPatchingDetails">> => db_server_patching_details(),
%%   <<"displayName">> => [string()],
%%   <<"exadataInfrastructureId">> => [string()],
%%   <<"maxCpuCount">> => [integer()],
%%   <<"maxDbNodeStorageInGBs">> => [integer()],
%%   <<"maxMemoryInGBs">> => [integer()],
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"shape">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"vmClusterIds">> => list([string()]())
%% }
-type db_server() :: #{binary() => any()}.

%% Example:
%% disassociate_iam_role_from_resource_input() :: #{
%%   <<"awsIntegration">> := list(any()),
%%   <<"iamRoleArn">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type disassociate_iam_role_from_resource_input() :: #{binary() => any()}.

%% Example:
%% accept_marketplace_registration_input() :: #{
%%   <<"marketplaceRegistrationToken">> := [string()]
%% }
-type accept_marketplace_registration_input() :: #{binary() => any()}.

%% Example:
%% list_cloud_autonomous_vm_clusters_output() :: #{
%%   <<"cloudAutonomousVmClusters">> => list(cloud_autonomous_vm_cluster_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_cloud_autonomous_vm_clusters_output() :: #{binary() => any()}.

%% Example:
%% create_cloud_vm_cluster_output() :: #{
%%   <<"cloudVmClusterId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type create_cloud_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% resource_pool_summary() :: #{
%%   <<"availableComputeCapacity">> => [integer()],
%%   <<"availableStorageCapacityInTBs">> => [float()],
%%   <<"isDisabled">> => [boolean()],
%%   <<"poolSize">> => [integer()],
%%   <<"poolStorageSizeInTBs">> => [integer()],
%%   <<"totalComputeCapacity">> => [integer()]
%% }
-type resource_pool_summary() :: #{binary() => any()}.

%% Example:
%% autonomous_database_backup_summary() :: #{
%%   <<"autonomousDatabaseBackupArn">> => string(),
%%   <<"autonomousDatabaseBackupId">> => string(),
%%   <<"autonomousDatabaseId">> => string(),
%%   <<"dbVersion">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"isAutomatic">> => [boolean()],
%%   <<"ocid">> => [string()],
%%   <<"retentionPeriodInDays">> => [integer()],
%%   <<"sizeInTBs">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"timeAvailableTill">> => [non_neg_integer()],
%%   <<"timeEnded">> => [non_neg_integer()],
%%   <<"timeStarted">> => [non_neg_integer()],
%%   <<"type">> => list(any())
%% }
-type autonomous_database_backup_summary() :: #{binary() => any()}.

%% Example:
%% switchover_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"peerDbArn">> => string()
%% }
-type switchover_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_wallet_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"password">> := string(),
%%   <<"walletType">> => list(any())
%% }
-type create_autonomous_database_wallet_input() :: #{binary() => any()}.

%% Example:
%% get_autonomous_database_wallet_details_output() :: #{
%%   <<"autonomousDatabaseWalletDetails">> => autonomous_database_wallet_details()
%% }
-type get_autonomous_database_wallet_details_output() :: #{binary() => any()}.

%% Example:
%% managed_services() :: #{
%%   <<"crossRegionS3RestoreSourcesAccess">> => list(cross_region_s3_restore_sources_access()),
%%   <<"kmsAccess">> => kms_access(),
%%   <<"managedS3BackupAccess">> => managed_s3_backup_access(),
%%   <<"managedServicesIpv4Cidrs">> => list([string()]()),
%%   <<"resourceGatewayArn">> => string(),
%%   <<"s3Access">> => s3_access(),
%%   <<"serviceNetworkArn">> => string(),
%%   <<"serviceNetworkEndpoint">> => service_network_endpoint(),
%%   <<"stsAccess">> => sts_access(),
%%   <<"zeroEtlAccess">> => zero_etl_access()
%% }
-type managed_services() :: #{binary() => any()}.

%% Example:
%% get_cloud_vm_cluster_input() :: #{

%% }
-type get_cloud_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% shrink_autonomous_database_input() :: #{
%%   <<"autonomousDatabaseId">> := string()
%% }
-type shrink_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% maintenance_window() :: #{
%%   <<"customActionTimeoutInMins">> => [integer()],
%%   <<"daysOfWeek">> => list(day_of_week()),
%%   <<"hoursOfDay">> => list([integer()]()),
%%   <<"isCustomActionTimeoutEnabled">> => [boolean()],
%%   <<"leadTimeInWeeks">> => [integer()],
%%   <<"months">> => list(month()),
%%   <<"patchingMode">> => list(any()),
%%   <<"preference">> => list(any()),
%%   <<"skipRu">> => [boolean()],
%%   <<"weeksOfMonth">> => list([integer()]())
%% }
-type maintenance_window() :: #{binary() => any()}.

%% Example:
%% update_odb_peering_connection_output() :: #{
%%   <<"displayName">> => [string()],
%%   <<"odbPeeringConnectionId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_odb_peering_connection_output() :: #{binary() => any()}.

%% Example:
%% cloud_exadata_infrastructure_unallocated_resources() :: #{
%%   <<"cloudAutonomousVmClusters">> => list(cloud_autonomous_vm_cluster_resource_details()),
%%   <<"cloudExadataInfrastructureDisplayName">> => [string()],
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"exadataStorageInTBs">> => [float()],
%%   <<"localStorageInGBs">> => [integer()],
%%   <<"memoryInGBs">> => [integer()],
%%   <<"ocpus">> => [integer()]
%% }
-type cloud_exadata_infrastructure_unallocated_resources() :: #{binary() => any()}.

%% Example:
%% get_odb_peering_connection_output() :: #{
%%   <<"odbPeeringConnection">> => odb_peering_connection()
%% }
-type get_odb_peering_connection_output() :: #{binary() => any()}.

%% Example:
%% update_cloud_exadata_infrastructure_input() :: #{
%%   <<"maintenanceWindow">> => maintenance_window()
%% }
-type update_cloud_exadata_infrastructure_input() :: #{binary() => any()}.

%% Example:
%% create_autonomous_database_backup_input() :: #{
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"retentionPeriodInDays">> => [integer()],
%%   <<"tags">> => map()
%% }
-type create_autonomous_database_backup_input() :: #{binary() => any()}.

%% Example:
%% update_autonomous_database_input() :: #{
%%   <<"databaseEdition">> => list(any()),
%%   <<"allowlistedIps">> => list([string()]()),
%%   <<"timeOfAutoRefreshStart">> => [non_neg_integer()],
%%   <<"refreshableMode">> => list(any()),
%%   <<"computeCount">> => [float()],
%%   <<"dbVersion">> => [string()],
%%   <<"dbToolsDetails">> => list(database_tool()),
%%   <<"byolComputeCountLimit">> => [float()],
%%   <<"isBackupRetentionLocked">> => [boolean()],
%%   <<"backupRetentionPeriodInDays">> => [integer()],
%%   <<"localAdgAutoFailoverMaxDataLossLimit">> => [integer()],
%%   <<"displayName">> => string(),
%%   <<"longTermBackupSchedule">> => long_term_backup_schedule(),
%%   <<"peerDbId">> => string(),
%%   <<"autonomousDatabaseId">> := string(),
%%   <<"isLocalDataGuardEnabled">> => [boolean()],
%%   <<"encryptionKeyConfiguration">> => list(),
%%   <<"autoRefreshPointLagInSeconds">> => [integer()],
%%   <<"isRefreshableClone">> => [boolean()],
%%   <<"standbyAllowlistedIpsSource">> => list(any()),
%%   <<"customerContactsToSendToOCI">> => list(customer_contact()),
%%   <<"autonomousMaintenanceScheduleType">> => list(any()),
%%   <<"standbyAllowlistedIps">> => list([string()]()),
%%   <<"resourcePoolLeaderId">> => string(),
%%   <<"scheduledOperations">> => list(scheduled_operation_details()),
%%   <<"isAutoScalingForStorageEnabled">> => [boolean()],
%%   <<"isDisconnectPeer">> => [boolean()],
%%   <<"dataStorageSizeInTBs">> => [integer()],
%%   <<"privateEndpointLabel">> => [string()],
%%   <<"permissionLevel">> => list(any()),
%%   <<"autoRefreshFrequencyInSeconds">> => [integer()],
%%   <<"encryptionKeyProvider">> => list(any()),
%%   <<"dbName">> => [string()],
%%   <<"resourcePoolSummary">> => resource_pool_summary(),
%%   <<"adminPassword">> => string(),
%%   <<"dbWorkload">> => list(any()),
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"openMode">> => list(any()),
%%   <<"dataStorageSizeInGBs">> => [integer()],
%%   <<"isMtlsConnectionRequired">> => [boolean()],
%%   <<"licenseModel">> => list(any()),
%%   <<"privateEndpointIp">> => [string()],
%%   <<"isAutoScalingEnabled">> => [boolean()]
%% }
-type update_autonomous_database_input() :: #{binary() => any()}.

%% Example:
%% switchover_autonomous_database_output() :: #{
%%   <<"autonomousDatabaseId">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type switchover_autonomous_database_output() :: #{binary() => any()}.

%% Example:
%% delete_cloud_vm_cluster_input() :: #{

%% }
-type delete_cloud_vm_cluster_input() :: #{binary() => any()}.

%% Example:
%% cloud_autonomous_vm_cluster() :: #{
%%   <<"timeZone">> => [string()],
%%   <<"availableContainerDatabases">> => [integer()],
%%   <<"odbNetworkArn">> => string(),
%%   <<"scanListenerPortNonTls">> => [integer()],
%%   <<"hostname">> => [string()],
%%   <<"nodeCount">> => [integer()],
%%   <<"odbNetworkId">> => string(),
%%   <<"domain">> => [string()],
%%   <<"ocid">> => [string()],
%%   <<"iamRoles">> => list(iam_role()),
%%   <<"memorySizeInGBs">> => [integer()],
%%   <<"displayName">> => string(),
%%   <<"description">> => [string()],
%%   <<"isMtlsEnabledVmCluster">> => [boolean()],
%%   <<"ociUrl">> => [string()],
%%   <<"cpuCoreCountPerNode">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"nonProvisionableAutonomousContainerDatabases">> => [integer()],
%%   <<"scanListenerPortTls">> => [integer()],
%%   <<"dataStorageSizeInTBs">> => [float()],
%%   <<"exadataStorageInTBsLowestScaledValue">> => [float()],
%%   <<"reclaimableCpus">> => [float()],
%%   <<"cloudExadataInfrastructureId">> => string(),
%%   <<"totalContainerDatabases">> => [integer()],
%%   <<"cloudExadataInfrastructureArn">> => string(),
%%   <<"dbNodeStorageSizeInGBs">> => [integer()],
%%   <<"shape">> => [string()],
%%   <<"cpuPercentage">> => [float()],
%%   <<"provisionedCpus">> => [float()],
%%   <<"memoryPerOracleComputeUnitInGBs">> => [integer()],
%%   <<"provisionableAutonomousContainerDatabases">> => [integer()],
%%   <<"timeOrdsCertificateExpires">> => [non_neg_integer()],
%%   <<"autonomousDataStorageSizeInTBs">> => [float()],
%%   <<"dbServers">> => list([string()]()),
%%   <<"computeModel">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"cpuCoreCount">> => [integer()],
%%   <<"ociResourceAnchorName">> => [string()],
%%   <<"cloudAutonomousVmClusterArn">> => [string()],
%%   <<"statusReason">> => [string()],
%%   <<"autonomousDataStoragePercentage">> => [float()],
%%   <<"dataStorageSizeInGBs">> => [float()],
%%   <<"availableAutonomousDataStorageSizeInTBs">> => [float()],
%%   <<"provisionedAutonomousContainerDatabases">> => [integer()],
%%   <<"reservedCpus">> => [float()],
%%   <<"percentProgress">> => [float()],
%%   <<"cloudAutonomousVmClusterId">> => string(),
%%   <<"licenseModel">> => list(any()),
%%   <<"maxAcdsLowestScaledValue">> => [integer()],
%%   <<"timeDatabaseSslCertificateExpires">> => [non_neg_integer()],
%%   <<"availableCpus">> => [float()]
%% }
-type cloud_autonomous_vm_cluster() :: #{binary() => any()}.

%% Example:
%% create_odb_peering_connection_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"odbNetworkId">> := string(),
%%   <<"peerNetworkCidrsToBeAdded">> => list(string()),
%%   <<"peerNetworkId">> := string(),
%%   <<"peerNetworkRouteTableIds">> => list(string()),
%%   <<"tags">> => map()
%% }
-type create_odb_peering_connection_input() :: #{binary() => any()}.

%% Example:
%% delete_cloud_vm_cluster_output() :: #{

%% }
-type delete_cloud_vm_cluster_output() :: #{binary() => any()}.

%% Example:
%% reboot_db_node_input() :: #{

%% }
-type reboot_db_node_input() :: #{binary() => any()}.

-type accept_marketplace_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type associate_iam_role_to_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_autonomous_database_backup_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_autonomous_database_wallet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_cloud_autonomous_vm_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_cloud_exadata_infrastructure_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_cloud_vm_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_odb_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_odb_peering_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_autonomous_database_backup_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cloud_autonomous_vm_cluster_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cloud_exadata_infrastructure_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cloud_vm_cluster_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_odb_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_odb_peering_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_iam_role_from_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type failover_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_autonomous_database_backup_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_autonomous_database_wallet_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cloud_autonomous_vm_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cloud_exadata_infrastructure_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cloud_exadata_infrastructure_unallocated_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cloud_vm_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_db_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_db_server_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_oci_onboarding_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_odb_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_odb_peering_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type initialize_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_autonomous_database_backups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_autonomous_database_character_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_autonomous_database_clones_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_autonomous_database_peers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_autonomous_database_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_autonomous_databases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_autonomous_virtual_machines_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_cloud_autonomous_vm_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_cloud_exadata_infrastructures_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cloud_vm_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_nodes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_servers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_system_shapes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_gi_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_odb_networks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_odb_peering_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_system_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type reboot_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reboot_db_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type restore_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type shrink_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_db_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type stop_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_db_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type switchover_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_autonomous_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_autonomous_database_backup_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_cloud_exadata_infrastructure_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_odb_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_odb_peering_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Registers the Amazon Web Services Marketplace token for your Amazon
%% Web Services account to activate your Oracle Database@Amazon Web Services
%% subscription.
-spec accept_marketplace_registration(aws_client:aws_client(), accept_marketplace_registration_input()) ->
    {ok, accept_marketplace_registration_output(), tuple()} |
    {error, any()} |
    {error, accept_marketplace_registration_errors(), tuple()}.
accept_marketplace_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_marketplace_registration(Client, Input, []).

-spec accept_marketplace_registration(aws_client:aws_client(), accept_marketplace_registration_input(), proplists:proplist()) ->
    {ok, accept_marketplace_registration_output(), tuple()} |
    {error, any()} |
    {error, accept_marketplace_registration_errors(), tuple()}.
accept_marketplace_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptMarketplaceRegistration">>, Input, Options).

%% @doc Associates an Amazon Web Services Identity and Access Management
%% (IAM) service role with a specified resource to enable Amazon Web Services
%% service integration.
-spec associate_iam_role_to_resource(aws_client:aws_client(), associate_iam_role_to_resource_input()) ->
    {ok, associate_iam_role_to_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_iam_role_to_resource_errors(), tuple()}.
associate_iam_role_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_iam_role_to_resource(Client, Input, []).

-spec associate_iam_role_to_resource(aws_client:aws_client(), associate_iam_role_to_resource_input(), proplists:proplist()) ->
    {ok, associate_iam_role_to_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_iam_role_to_resource_errors(), tuple()}.
associate_iam_role_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIamRoleToResource">>, Input, Options).

%% @doc Creates a new Autonomous Database.
-spec create_autonomous_database(aws_client:aws_client(), create_autonomous_database_input()) ->
    {ok, create_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_errors(), tuple()}.
create_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_autonomous_database(Client, Input, []).

-spec create_autonomous_database(aws_client:aws_client(), create_autonomous_database_input(), proplists:proplist()) ->
    {ok, create_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_errors(), tuple()}.
create_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutonomousDatabase">>, Input, Options).

%% @doc Creates a new backup of the specified Autonomous Database.
-spec create_autonomous_database_backup(aws_client:aws_client(), create_autonomous_database_backup_input()) ->
    {ok, create_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_backup_errors(), tuple()}.
create_autonomous_database_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_autonomous_database_backup(Client, Input, []).

-spec create_autonomous_database_backup(aws_client:aws_client(), create_autonomous_database_backup_input(), proplists:proplist()) ->
    {ok, create_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_backup_errors(), tuple()}.
create_autonomous_database_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutonomousDatabaseBackup">>, Input, Options).

%% @doc Creates a new wallet for the specified Autonomous Database.
-spec create_autonomous_database_wallet(aws_client:aws_client(), create_autonomous_database_wallet_input()) ->
    {ok, create_autonomous_database_wallet_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_wallet_errors(), tuple()}.
create_autonomous_database_wallet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_autonomous_database_wallet(Client, Input, []).

-spec create_autonomous_database_wallet(aws_client:aws_client(), create_autonomous_database_wallet_input(), proplists:proplist()) ->
    {ok, create_autonomous_database_wallet_output(), tuple()} |
    {error, any()} |
    {error, create_autonomous_database_wallet_errors(), tuple()}.
create_autonomous_database_wallet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutonomousDatabaseWallet">>, Input, Options).

%% @doc Creates a new Autonomous VM cluster in the specified Exadata
%% infrastructure.
-spec create_cloud_autonomous_vm_cluster(aws_client:aws_client(), create_cloud_autonomous_vm_cluster_input()) ->
    {ok, create_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_autonomous_vm_cluster_errors(), tuple()}.
create_cloud_autonomous_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cloud_autonomous_vm_cluster(Client, Input, []).

-spec create_cloud_autonomous_vm_cluster(aws_client:aws_client(), create_cloud_autonomous_vm_cluster_input(), proplists:proplist()) ->
    {ok, create_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_autonomous_vm_cluster_errors(), tuple()}.
create_cloud_autonomous_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCloudAutonomousVmCluster">>, Input, Options).

%% @doc Creates an Exadata infrastructure.
-spec create_cloud_exadata_infrastructure(aws_client:aws_client(), create_cloud_exadata_infrastructure_input()) ->
    {ok, create_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_exadata_infrastructure_errors(), tuple()}.
create_cloud_exadata_infrastructure(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cloud_exadata_infrastructure(Client, Input, []).

-spec create_cloud_exadata_infrastructure(aws_client:aws_client(), create_cloud_exadata_infrastructure_input(), proplists:proplist()) ->
    {ok, create_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_exadata_infrastructure_errors(), tuple()}.
create_cloud_exadata_infrastructure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCloudExadataInfrastructure">>, Input, Options).

%% @doc Creates a VM cluster on the specified Exadata infrastructure.
-spec create_cloud_vm_cluster(aws_client:aws_client(), create_cloud_vm_cluster_input()) ->
    {ok, create_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_vm_cluster_errors(), tuple()}.
create_cloud_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cloud_vm_cluster(Client, Input, []).

-spec create_cloud_vm_cluster(aws_client:aws_client(), create_cloud_vm_cluster_input(), proplists:proplist()) ->
    {ok, create_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cloud_vm_cluster_errors(), tuple()}.
create_cloud_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCloudVmCluster">>, Input, Options).

%% @doc Creates an ODB network.
-spec create_odb_network(aws_client:aws_client(), create_odb_network_input()) ->
    {ok, create_odb_network_output(), tuple()} |
    {error, any()} |
    {error, create_odb_network_errors(), tuple()}.
create_odb_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_odb_network(Client, Input, []).

-spec create_odb_network(aws_client:aws_client(), create_odb_network_input(), proplists:proplist()) ->
    {ok, create_odb_network_output(), tuple()} |
    {error, any()} |
    {error, create_odb_network_errors(), tuple()}.
create_odb_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOdbNetwork">>, Input, Options).

%% @doc Creates a peering connection between an ODB network and a VPC.
%%
%% A peering connection enables private connectivity between the networks for
%% application-tier communication.
-spec create_odb_peering_connection(aws_client:aws_client(), create_odb_peering_connection_input()) ->
    {ok, create_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, create_odb_peering_connection_errors(), tuple()}.
create_odb_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_odb_peering_connection(Client, Input, []).

-spec create_odb_peering_connection(aws_client:aws_client(), create_odb_peering_connection_input(), proplists:proplist()) ->
    {ok, create_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, create_odb_peering_connection_errors(), tuple()}.
create_odb_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOdbPeeringConnection">>, Input, Options).

%% @doc Deletes the specified Autonomous Database.
-spec delete_autonomous_database(aws_client:aws_client(), delete_autonomous_database_input()) ->
    {ok, delete_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, delete_autonomous_database_errors(), tuple()}.
delete_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_autonomous_database(Client, Input, []).

-spec delete_autonomous_database(aws_client:aws_client(), delete_autonomous_database_input(), proplists:proplist()) ->
    {ok, delete_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, delete_autonomous_database_errors(), tuple()}.
delete_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutonomousDatabase">>, Input, Options).

%% @doc Deletes the specified Autonomous Database backup.
-spec delete_autonomous_database_backup(aws_client:aws_client(), delete_autonomous_database_backup_input()) ->
    {ok, delete_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, delete_autonomous_database_backup_errors(), tuple()}.
delete_autonomous_database_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_autonomous_database_backup(Client, Input, []).

-spec delete_autonomous_database_backup(aws_client:aws_client(), delete_autonomous_database_backup_input(), proplists:proplist()) ->
    {ok, delete_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, delete_autonomous_database_backup_errors(), tuple()}.
delete_autonomous_database_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutonomousDatabaseBackup">>, Input, Options).

%% @doc Deletes an Autonomous VM cluster.
-spec delete_cloud_autonomous_vm_cluster(aws_client:aws_client(), delete_cloud_autonomous_vm_cluster_input()) ->
    {ok, delete_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_autonomous_vm_cluster_errors(), tuple()}.
delete_cloud_autonomous_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cloud_autonomous_vm_cluster(Client, Input, []).

-spec delete_cloud_autonomous_vm_cluster(aws_client:aws_client(), delete_cloud_autonomous_vm_cluster_input(), proplists:proplist()) ->
    {ok, delete_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_autonomous_vm_cluster_errors(), tuple()}.
delete_cloud_autonomous_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCloudAutonomousVmCluster">>, Input, Options).

%% @doc Deletes the specified Exadata infrastructure.
%%
%% Before you use this operation, make sure to delete all of the VM clusters
%% that are hosted on this Exadata infrastructure.
-spec delete_cloud_exadata_infrastructure(aws_client:aws_client(), delete_cloud_exadata_infrastructure_input()) ->
    {ok, delete_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_exadata_infrastructure_errors(), tuple()}.
delete_cloud_exadata_infrastructure(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cloud_exadata_infrastructure(Client, Input, []).

-spec delete_cloud_exadata_infrastructure(aws_client:aws_client(), delete_cloud_exadata_infrastructure_input(), proplists:proplist()) ->
    {ok, delete_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_exadata_infrastructure_errors(), tuple()}.
delete_cloud_exadata_infrastructure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCloudExadataInfrastructure">>, Input, Options).

%% @doc Deletes the specified VM cluster.
-spec delete_cloud_vm_cluster(aws_client:aws_client(), delete_cloud_vm_cluster_input()) ->
    {ok, delete_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_vm_cluster_errors(), tuple()}.
delete_cloud_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cloud_vm_cluster(Client, Input, []).

-spec delete_cloud_vm_cluster(aws_client:aws_client(), delete_cloud_vm_cluster_input(), proplists:proplist()) ->
    {ok, delete_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cloud_vm_cluster_errors(), tuple()}.
delete_cloud_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCloudVmCluster">>, Input, Options).

%% @doc Deletes the specified ODB network.
-spec delete_odb_network(aws_client:aws_client(), delete_odb_network_input()) ->
    {ok, delete_odb_network_output(), tuple()} |
    {error, any()} |
    {error, delete_odb_network_errors(), tuple()}.
delete_odb_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_odb_network(Client, Input, []).

-spec delete_odb_network(aws_client:aws_client(), delete_odb_network_input(), proplists:proplist()) ->
    {ok, delete_odb_network_output(), tuple()} |
    {error, any()} |
    {error, delete_odb_network_errors(), tuple()}.
delete_odb_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOdbNetwork">>, Input, Options).

%% @doc Deletes an ODB peering connection.
%%
%% When you delete an ODB peering connection, the underlying VPC peering
%% connection is also deleted.
-spec delete_odb_peering_connection(aws_client:aws_client(), delete_odb_peering_connection_input()) ->
    {ok, delete_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_odb_peering_connection_errors(), tuple()}.
delete_odb_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_odb_peering_connection(Client, Input, []).

-spec delete_odb_peering_connection(aws_client:aws_client(), delete_odb_peering_connection_input(), proplists:proplist()) ->
    {ok, delete_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_odb_peering_connection_errors(), tuple()}.
delete_odb_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOdbPeeringConnection">>, Input, Options).

%% @doc Disassociates an Amazon Web Services Identity and Access Management
%% (IAM) service role from a specified resource to disable Amazon Web
%% Services service integration.
-spec disassociate_iam_role_from_resource(aws_client:aws_client(), disassociate_iam_role_from_resource_input()) ->
    {ok, disassociate_iam_role_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_iam_role_from_resource_errors(), tuple()}.
disassociate_iam_role_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_iam_role_from_resource(Client, Input, []).

-spec disassociate_iam_role_from_resource(aws_client:aws_client(), disassociate_iam_role_from_resource_input(), proplists:proplist()) ->
    {ok, disassociate_iam_role_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_iam_role_from_resource_errors(), tuple()}.
disassociate_iam_role_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIamRoleFromResource">>, Input, Options).

%% @doc Initiates a failover of the specified Autonomous Database to a
%% standby peer database.
-spec failover_autonomous_database(aws_client:aws_client(), failover_autonomous_database_input()) ->
    {ok, failover_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, failover_autonomous_database_errors(), tuple()}.
failover_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_autonomous_database(Client, Input, []).

-spec failover_autonomous_database(aws_client:aws_client(), failover_autonomous_database_input(), proplists:proplist()) ->
    {ok, failover_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, failover_autonomous_database_errors(), tuple()}.
failover_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverAutonomousDatabase">>, Input, Options).

%% @doc Gets information about a specific Autonomous Database.
-spec get_autonomous_database(aws_client:aws_client(), get_autonomous_database_input()) ->
    {ok, get_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_errors(), tuple()}.
get_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_autonomous_database(Client, Input, []).

-spec get_autonomous_database(aws_client:aws_client(), get_autonomous_database_input(), proplists:proplist()) ->
    {ok, get_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_errors(), tuple()}.
get_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutonomousDatabase">>, Input, Options).

%% @doc Gets information about a specific Autonomous Database backup.
-spec get_autonomous_database_backup(aws_client:aws_client(), get_autonomous_database_backup_input()) ->
    {ok, get_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_backup_errors(), tuple()}.
get_autonomous_database_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_autonomous_database_backup(Client, Input, []).

-spec get_autonomous_database_backup(aws_client:aws_client(), get_autonomous_database_backup_input(), proplists:proplist()) ->
    {ok, get_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_backup_errors(), tuple()}.
get_autonomous_database_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutonomousDatabaseBackup">>, Input, Options).

%% @doc Gets the wallet details for the specified Autonomous Database.
-spec get_autonomous_database_wallet_details(aws_client:aws_client(), get_autonomous_database_wallet_details_input()) ->
    {ok, get_autonomous_database_wallet_details_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_wallet_details_errors(), tuple()}.
get_autonomous_database_wallet_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_autonomous_database_wallet_details(Client, Input, []).

-spec get_autonomous_database_wallet_details(aws_client:aws_client(), get_autonomous_database_wallet_details_input(), proplists:proplist()) ->
    {ok, get_autonomous_database_wallet_details_output(), tuple()} |
    {error, any()} |
    {error, get_autonomous_database_wallet_details_errors(), tuple()}.
get_autonomous_database_wallet_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutonomousDatabaseWalletDetails">>, Input, Options).

%% @doc Gets information about a specific Autonomous VM cluster.
-spec get_cloud_autonomous_vm_cluster(aws_client:aws_client(), get_cloud_autonomous_vm_cluster_input()) ->
    {ok, get_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_autonomous_vm_cluster_errors(), tuple()}.
get_cloud_autonomous_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_autonomous_vm_cluster(Client, Input, []).

-spec get_cloud_autonomous_vm_cluster(aws_client:aws_client(), get_cloud_autonomous_vm_cluster_input(), proplists:proplist()) ->
    {ok, get_cloud_autonomous_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_autonomous_vm_cluster_errors(), tuple()}.
get_cloud_autonomous_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudAutonomousVmCluster">>, Input, Options).

%% @doc Returns information about the specified Exadata infrastructure.
-spec get_cloud_exadata_infrastructure(aws_client:aws_client(), get_cloud_exadata_infrastructure_input()) ->
    {ok, get_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_exadata_infrastructure_errors(), tuple()}.
get_cloud_exadata_infrastructure(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_exadata_infrastructure(Client, Input, []).

-spec get_cloud_exadata_infrastructure(aws_client:aws_client(), get_cloud_exadata_infrastructure_input(), proplists:proplist()) ->
    {ok, get_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_exadata_infrastructure_errors(), tuple()}.
get_cloud_exadata_infrastructure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudExadataInfrastructure">>, Input, Options).

%% @doc Retrieves information about unallocated resources in a specified
%% Cloud Exadata Infrastructure.
-spec get_cloud_exadata_infrastructure_unallocated_resources(aws_client:aws_client(), get_cloud_exadata_infrastructure_unallocated_resources_input()) ->
    {ok, get_cloud_exadata_infrastructure_unallocated_resources_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_exadata_infrastructure_unallocated_resources_errors(), tuple()}.
get_cloud_exadata_infrastructure_unallocated_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_exadata_infrastructure_unallocated_resources(Client, Input, []).

-spec get_cloud_exadata_infrastructure_unallocated_resources(aws_client:aws_client(), get_cloud_exadata_infrastructure_unallocated_resources_input(), proplists:proplist()) ->
    {ok, get_cloud_exadata_infrastructure_unallocated_resources_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_exadata_infrastructure_unallocated_resources_errors(), tuple()}.
get_cloud_exadata_infrastructure_unallocated_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudExadataInfrastructureUnallocatedResources">>, Input, Options).

%% @doc Returns information about the specified VM cluster.
-spec get_cloud_vm_cluster(aws_client:aws_client(), get_cloud_vm_cluster_input()) ->
    {ok, get_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_vm_cluster_errors(), tuple()}.
get_cloud_vm_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_vm_cluster(Client, Input, []).

-spec get_cloud_vm_cluster(aws_client:aws_client(), get_cloud_vm_cluster_input(), proplists:proplist()) ->
    {ok, get_cloud_vm_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cloud_vm_cluster_errors(), tuple()}.
get_cloud_vm_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudVmCluster">>, Input, Options).

%% @doc Returns information about the specified DB node.
-spec get_db_node(aws_client:aws_client(), get_db_node_input()) ->
    {ok, get_db_node_output(), tuple()} |
    {error, any()} |
    {error, get_db_node_errors(), tuple()}.
get_db_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_node(Client, Input, []).

-spec get_db_node(aws_client:aws_client(), get_db_node_input(), proplists:proplist()) ->
    {ok, get_db_node_output(), tuple()} |
    {error, any()} |
    {error, get_db_node_errors(), tuple()}.
get_db_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbNode">>, Input, Options).

%% @doc Returns information about the specified database server.
-spec get_db_server(aws_client:aws_client(), get_db_server_input()) ->
    {ok, get_db_server_output(), tuple()} |
    {error, any()} |
    {error, get_db_server_errors(), tuple()}.
get_db_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_server(Client, Input, []).

-spec get_db_server(aws_client:aws_client(), get_db_server_input(), proplists:proplist()) ->
    {ok, get_db_server_output(), tuple()} |
    {error, any()} |
    {error, get_db_server_errors(), tuple()}.
get_db_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbServer">>, Input, Options).

%% @doc Returns the tenancy activation link and onboarding status for your
%% Amazon Web Services account.
-spec get_oci_onboarding_status(aws_client:aws_client(), get_oci_onboarding_status_input()) ->
    {ok, get_oci_onboarding_status_output(), tuple()} |
    {error, any()} |
    {error, get_oci_onboarding_status_errors(), tuple()}.
get_oci_onboarding_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_oci_onboarding_status(Client, Input, []).

-spec get_oci_onboarding_status(aws_client:aws_client(), get_oci_onboarding_status_input(), proplists:proplist()) ->
    {ok, get_oci_onboarding_status_output(), tuple()} |
    {error, any()} |
    {error, get_oci_onboarding_status_errors(), tuple()}.
get_oci_onboarding_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOciOnboardingStatus">>, Input, Options).

%% @doc Returns information about the specified ODB network.
-spec get_odb_network(aws_client:aws_client(), get_odb_network_input()) ->
    {ok, get_odb_network_output(), tuple()} |
    {error, any()} |
    {error, get_odb_network_errors(), tuple()}.
get_odb_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_odb_network(Client, Input, []).

-spec get_odb_network(aws_client:aws_client(), get_odb_network_input(), proplists:proplist()) ->
    {ok, get_odb_network_output(), tuple()} |
    {error, any()} |
    {error, get_odb_network_errors(), tuple()}.
get_odb_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOdbNetwork">>, Input, Options).

%% @doc Retrieves information about an ODB peering connection.
-spec get_odb_peering_connection(aws_client:aws_client(), get_odb_peering_connection_input()) ->
    {ok, get_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, get_odb_peering_connection_errors(), tuple()}.
get_odb_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_odb_peering_connection(Client, Input, []).

-spec get_odb_peering_connection(aws_client:aws_client(), get_odb_peering_connection_input(), proplists:proplist()) ->
    {ok, get_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, get_odb_peering_connection_errors(), tuple()}.
get_odb_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOdbPeeringConnection">>, Input, Options).

%% @doc Initializes the ODB service for the first time in an account.
-spec initialize_service(aws_client:aws_client(), initialize_service_input()) ->
    {ok, initialize_service_output(), tuple()} |
    {error, any()} |
    {error, initialize_service_errors(), tuple()}.
initialize_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    initialize_service(Client, Input, []).

-spec initialize_service(aws_client:aws_client(), initialize_service_input(), proplists:proplist()) ->
    {ok, initialize_service_output(), tuple()} |
    {error, any()} |
    {error, initialize_service_errors(), tuple()}.
initialize_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitializeService">>, Input, Options).

%% @doc Lists the backups of the specified Autonomous Database.
-spec list_autonomous_database_backups(aws_client:aws_client(), list_autonomous_database_backups_input()) ->
    {ok, list_autonomous_database_backups_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_backups_errors(), tuple()}.
list_autonomous_database_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_database_backups(Client, Input, []).

-spec list_autonomous_database_backups(aws_client:aws_client(), list_autonomous_database_backups_input(), proplists:proplist()) ->
    {ok, list_autonomous_database_backups_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_backups_errors(), tuple()}.
list_autonomous_database_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabaseBackups">>, Input, Options).

%% @doc Lists the available character sets for Autonomous Databases.
-spec list_autonomous_database_character_sets(aws_client:aws_client(), list_autonomous_database_character_sets_input()) ->
    {ok, list_autonomous_database_character_sets_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_character_sets_errors(), tuple()}.
list_autonomous_database_character_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_database_character_sets(Client, Input, []).

-spec list_autonomous_database_character_sets(aws_client:aws_client(), list_autonomous_database_character_sets_input(), proplists:proplist()) ->
    {ok, list_autonomous_database_character_sets_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_character_sets_errors(), tuple()}.
list_autonomous_database_character_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabaseCharacterSets">>, Input, Options).

%% @doc Lists the clones of the specified Autonomous Database.
-spec list_autonomous_database_clones(aws_client:aws_client(), list_autonomous_database_clones_input()) ->
    {ok, list_autonomous_database_clones_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_clones_errors(), tuple()}.
list_autonomous_database_clones(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_database_clones(Client, Input, []).

-spec list_autonomous_database_clones(aws_client:aws_client(), list_autonomous_database_clones_input(), proplists:proplist()) ->
    {ok, list_autonomous_database_clones_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_clones_errors(), tuple()}.
list_autonomous_database_clones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabaseClones">>, Input, Options).

%% @doc Lists the peer databases of the specified Autonomous Database.
-spec list_autonomous_database_peers(aws_client:aws_client(), list_autonomous_database_peers_input()) ->
    {ok, list_autonomous_database_peers_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_peers_errors(), tuple()}.
list_autonomous_database_peers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_database_peers(Client, Input, []).

-spec list_autonomous_database_peers(aws_client:aws_client(), list_autonomous_database_peers_input(), proplists:proplist()) ->
    {ok, list_autonomous_database_peers_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_peers_errors(), tuple()}.
list_autonomous_database_peers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabasePeers">>, Input, Options).

%% @doc Lists the available Oracle Database software versions for Autonomous
%% Databases.
-spec list_autonomous_database_versions(aws_client:aws_client(), list_autonomous_database_versions_input()) ->
    {ok, list_autonomous_database_versions_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_versions_errors(), tuple()}.
list_autonomous_database_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_database_versions(Client, Input, []).

-spec list_autonomous_database_versions(aws_client:aws_client(), list_autonomous_database_versions_input(), proplists:proplist()) ->
    {ok, list_autonomous_database_versions_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_database_versions_errors(), tuple()}.
list_autonomous_database_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabaseVersions">>, Input, Options).

%% @doc Returns information about the Autonomous Databases owned by your
%% Amazon Web Services account in the current Amazon Web Services Region.
-spec list_autonomous_databases(aws_client:aws_client(), list_autonomous_databases_input()) ->
    {ok, list_autonomous_databases_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_databases_errors(), tuple()}.
list_autonomous_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_databases(Client, Input, []).

-spec list_autonomous_databases(aws_client:aws_client(), list_autonomous_databases_input(), proplists:proplist()) ->
    {ok, list_autonomous_databases_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_databases_errors(), tuple()}.
list_autonomous_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousDatabases">>, Input, Options).

%% @doc Lists all Autonomous VMs in an Autonomous VM cluster.
-spec list_autonomous_virtual_machines(aws_client:aws_client(), list_autonomous_virtual_machines_input()) ->
    {ok, list_autonomous_virtual_machines_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_virtual_machines_errors(), tuple()}.
list_autonomous_virtual_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_autonomous_virtual_machines(Client, Input, []).

-spec list_autonomous_virtual_machines(aws_client:aws_client(), list_autonomous_virtual_machines_input(), proplists:proplist()) ->
    {ok, list_autonomous_virtual_machines_output(), tuple()} |
    {error, any()} |
    {error, list_autonomous_virtual_machines_errors(), tuple()}.
list_autonomous_virtual_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutonomousVirtualMachines">>, Input, Options).

%% @doc Lists all Autonomous VM clusters in a specified Cloud Exadata
%% infrastructure.
-spec list_cloud_autonomous_vm_clusters(aws_client:aws_client(), list_cloud_autonomous_vm_clusters_input()) ->
    {ok, list_cloud_autonomous_vm_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_autonomous_vm_clusters_errors(), tuple()}.
list_cloud_autonomous_vm_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cloud_autonomous_vm_clusters(Client, Input, []).

-spec list_cloud_autonomous_vm_clusters(aws_client:aws_client(), list_cloud_autonomous_vm_clusters_input(), proplists:proplist()) ->
    {ok, list_cloud_autonomous_vm_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_autonomous_vm_clusters_errors(), tuple()}.
list_cloud_autonomous_vm_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCloudAutonomousVmClusters">>, Input, Options).

%% @doc Returns information about the Exadata infrastructures owned by your
%% Amazon Web Services account.
-spec list_cloud_exadata_infrastructures(aws_client:aws_client(), list_cloud_exadata_infrastructures_input()) ->
    {ok, list_cloud_exadata_infrastructures_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_exadata_infrastructures_errors(), tuple()}.
list_cloud_exadata_infrastructures(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cloud_exadata_infrastructures(Client, Input, []).

-spec list_cloud_exadata_infrastructures(aws_client:aws_client(), list_cloud_exadata_infrastructures_input(), proplists:proplist()) ->
    {ok, list_cloud_exadata_infrastructures_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_exadata_infrastructures_errors(), tuple()}.
list_cloud_exadata_infrastructures(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCloudExadataInfrastructures">>, Input, Options).

%% @doc Returns information about the VM clusters owned by your Amazon Web
%% Services account or only the ones on the specified Exadata infrastructure.
-spec list_cloud_vm_clusters(aws_client:aws_client(), list_cloud_vm_clusters_input()) ->
    {ok, list_cloud_vm_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_vm_clusters_errors(), tuple()}.
list_cloud_vm_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cloud_vm_clusters(Client, Input, []).

-spec list_cloud_vm_clusters(aws_client:aws_client(), list_cloud_vm_clusters_input(), proplists:proplist()) ->
    {ok, list_cloud_vm_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_cloud_vm_clusters_errors(), tuple()}.
list_cloud_vm_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCloudVmClusters">>, Input, Options).

%% @doc Returns information about the DB nodes for the specified VM cluster.
-spec list_db_nodes(aws_client:aws_client(), list_db_nodes_input()) ->
    {ok, list_db_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_db_nodes_errors(), tuple()}.
list_db_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_nodes(Client, Input, []).

-spec list_db_nodes(aws_client:aws_client(), list_db_nodes_input(), proplists:proplist()) ->
    {ok, list_db_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_db_nodes_errors(), tuple()}.
list_db_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbNodes">>, Input, Options).

%% @doc Returns information about the database servers that belong to the
%% specified Exadata infrastructure.
-spec list_db_servers(aws_client:aws_client(), list_db_servers_input()) ->
    {ok, list_db_servers_output(), tuple()} |
    {error, any()} |
    {error, list_db_servers_errors(), tuple()}.
list_db_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_servers(Client, Input, []).

-spec list_db_servers(aws_client:aws_client(), list_db_servers_input(), proplists:proplist()) ->
    {ok, list_db_servers_output(), tuple()} |
    {error, any()} |
    {error, list_db_servers_errors(), tuple()}.
list_db_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbServers">>, Input, Options).

%% @doc Returns information about the shapes that are available for an
%% Exadata infrastructure.
-spec list_db_system_shapes(aws_client:aws_client(), list_db_system_shapes_input()) ->
    {ok, list_db_system_shapes_output(), tuple()} |
    {error, any()} |
    {error, list_db_system_shapes_errors(), tuple()}.
list_db_system_shapes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_system_shapes(Client, Input, []).

-spec list_db_system_shapes(aws_client:aws_client(), list_db_system_shapes_input(), proplists:proplist()) ->
    {ok, list_db_system_shapes_output(), tuple()} |
    {error, any()} |
    {error, list_db_system_shapes_errors(), tuple()}.
list_db_system_shapes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbSystemShapes">>, Input, Options).

%% @doc Returns information about Oracle Grid Infrastructure (GI) software
%% versions that are available for a VM cluster for the specified shape.
-spec list_gi_versions(aws_client:aws_client(), list_gi_versions_input()) ->
    {ok, list_gi_versions_output(), tuple()} |
    {error, any()} |
    {error, list_gi_versions_errors(), tuple()}.
list_gi_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gi_versions(Client, Input, []).

-spec list_gi_versions(aws_client:aws_client(), list_gi_versions_input(), proplists:proplist()) ->
    {ok, list_gi_versions_output(), tuple()} |
    {error, any()} |
    {error, list_gi_versions_errors(), tuple()}.
list_gi_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGiVersions">>, Input, Options).

%% @doc Returns information about the ODB networks owned by your Amazon Web
%% Services account.
-spec list_odb_networks(aws_client:aws_client(), list_odb_networks_input()) ->
    {ok, list_odb_networks_output(), tuple()} |
    {error, any()} |
    {error, list_odb_networks_errors(), tuple()}.
list_odb_networks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_odb_networks(Client, Input, []).

-spec list_odb_networks(aws_client:aws_client(), list_odb_networks_input(), proplists:proplist()) ->
    {ok, list_odb_networks_output(), tuple()} |
    {error, any()} |
    {error, list_odb_networks_errors(), tuple()}.
list_odb_networks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOdbNetworks">>, Input, Options).

%% @doc Lists all ODB peering connections or those associated with a specific
%% ODB network.
-spec list_odb_peering_connections(aws_client:aws_client(), list_odb_peering_connections_input()) ->
    {ok, list_odb_peering_connections_output(), tuple()} |
    {error, any()} |
    {error, list_odb_peering_connections_errors(), tuple()}.
list_odb_peering_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_odb_peering_connections(Client, Input, []).

-spec list_odb_peering_connections(aws_client:aws_client(), list_odb_peering_connections_input(), proplists:proplist()) ->
    {ok, list_odb_peering_connections_output(), tuple()} |
    {error, any()} |
    {error, list_odb_peering_connections_errors(), tuple()}.
list_odb_peering_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOdbPeeringConnections">>, Input, Options).

%% @doc Returns information about the system versions that are available for
%% a VM cluster for the specified `giVersion' and `shape'.
-spec list_system_versions(aws_client:aws_client(), list_system_versions_input()) ->
    {ok, list_system_versions_output(), tuple()} |
    {error, any()} |
    {error, list_system_versions_errors(), tuple()}.
list_system_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_system_versions(Client, Input, []).

-spec list_system_versions(aws_client:aws_client(), list_system_versions_input(), proplists:proplist()) ->
    {ok, list_system_versions_output(), tuple()} |
    {error, any()} |
    {error, list_system_versions_errors(), tuple()}.
list_system_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSystemVersions">>, Input, Options).

%% @doc Returns information about the tags applied to this resource.
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

%% @doc Reboots the specified Autonomous Database.
-spec reboot_autonomous_database(aws_client:aws_client(), reboot_autonomous_database_input()) ->
    {ok, reboot_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, reboot_autonomous_database_errors(), tuple()}.
reboot_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_autonomous_database(Client, Input, []).

-spec reboot_autonomous_database(aws_client:aws_client(), reboot_autonomous_database_input(), proplists:proplist()) ->
    {ok, reboot_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, reboot_autonomous_database_errors(), tuple()}.
reboot_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootAutonomousDatabase">>, Input, Options).

%% @doc Reboots the specified DB node in a VM cluster.
-spec reboot_db_node(aws_client:aws_client(), reboot_db_node_input()) ->
    {ok, reboot_db_node_output(), tuple()} |
    {error, any()} |
    {error, reboot_db_node_errors(), tuple()}.
reboot_db_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_node(Client, Input, []).

-spec reboot_db_node(aws_client:aws_client(), reboot_db_node_input(), proplists:proplist()) ->
    {ok, reboot_db_node_output(), tuple()} |
    {error, any()} |
    {error, reboot_db_node_errors(), tuple()}.
reboot_db_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDbNode">>, Input, Options).

%% @doc Restores the specified Autonomous Database to a point in time.
-spec restore_autonomous_database(aws_client:aws_client(), restore_autonomous_database_input()) ->
    {ok, restore_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, restore_autonomous_database_errors(), tuple()}.
restore_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_autonomous_database(Client, Input, []).

-spec restore_autonomous_database(aws_client:aws_client(), restore_autonomous_database_input(), proplists:proplist()) ->
    {ok, restore_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, restore_autonomous_database_errors(), tuple()}.
restore_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreAutonomousDatabase">>, Input, Options).

%% @doc Shrinks the storage of the specified Autonomous Database to reclaim
%% unused space.
-spec shrink_autonomous_database(aws_client:aws_client(), shrink_autonomous_database_input()) ->
    {ok, shrink_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, shrink_autonomous_database_errors(), tuple()}.
shrink_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    shrink_autonomous_database(Client, Input, []).

-spec shrink_autonomous_database(aws_client:aws_client(), shrink_autonomous_database_input(), proplists:proplist()) ->
    {ok, shrink_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, shrink_autonomous_database_errors(), tuple()}.
shrink_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ShrinkAutonomousDatabase">>, Input, Options).

%% @doc Starts the specified Autonomous Database.
-spec start_autonomous_database(aws_client:aws_client(), start_autonomous_database_input()) ->
    {ok, start_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, start_autonomous_database_errors(), tuple()}.
start_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_autonomous_database(Client, Input, []).

-spec start_autonomous_database(aws_client:aws_client(), start_autonomous_database_input(), proplists:proplist()) ->
    {ok, start_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, start_autonomous_database_errors(), tuple()}.
start_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutonomousDatabase">>, Input, Options).

%% @doc Starts the specified DB node in a VM cluster.
-spec start_db_node(aws_client:aws_client(), start_db_node_input()) ->
    {ok, start_db_node_output(), tuple()} |
    {error, any()} |
    {error, start_db_node_errors(), tuple()}.
start_db_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_node(Client, Input, []).

-spec start_db_node(aws_client:aws_client(), start_db_node_input(), proplists:proplist()) ->
    {ok, start_db_node_output(), tuple()} |
    {error, any()} |
    {error, start_db_node_errors(), tuple()}.
start_db_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDbNode">>, Input, Options).

%% @doc Stops the specified Autonomous Database.
-spec stop_autonomous_database(aws_client:aws_client(), stop_autonomous_database_input()) ->
    {ok, stop_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, stop_autonomous_database_errors(), tuple()}.
stop_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_autonomous_database(Client, Input, []).

-spec stop_autonomous_database(aws_client:aws_client(), stop_autonomous_database_input(), proplists:proplist()) ->
    {ok, stop_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, stop_autonomous_database_errors(), tuple()}.
stop_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutonomousDatabase">>, Input, Options).

%% @doc Stops the specified DB node in a VM cluster.
-spec stop_db_node(aws_client:aws_client(), stop_db_node_input()) ->
    {ok, stop_db_node_output(), tuple()} |
    {error, any()} |
    {error, stop_db_node_errors(), tuple()}.
stop_db_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_node(Client, Input, []).

-spec stop_db_node(aws_client:aws_client(), stop_db_node_input(), proplists:proplist()) ->
    {ok, stop_db_node_output(), tuple()} |
    {error, any()} |
    {error, stop_db_node_errors(), tuple()}.
stop_db_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDbNode">>, Input, Options).

%% @doc Performs a switchover of the specified Autonomous Database to a
%% standby peer database.
-spec switchover_autonomous_database(aws_client:aws_client(), switchover_autonomous_database_input()) ->
    {ok, switchover_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, switchover_autonomous_database_errors(), tuple()}.
switchover_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_autonomous_database(Client, Input, []).

-spec switchover_autonomous_database(aws_client:aws_client(), switchover_autonomous_database_input(), proplists:proplist()) ->
    {ok, switchover_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, switchover_autonomous_database_errors(), tuple()}.
switchover_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverAutonomousDatabase">>, Input, Options).

%% @doc Applies tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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

%% @doc Updates the properties of an Autonomous Database.
-spec update_autonomous_database(aws_client:aws_client(), update_autonomous_database_input()) ->
    {ok, update_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, update_autonomous_database_errors(), tuple()}.
update_autonomous_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_autonomous_database(Client, Input, []).

-spec update_autonomous_database(aws_client:aws_client(), update_autonomous_database_input(), proplists:proplist()) ->
    {ok, update_autonomous_database_output(), tuple()} |
    {error, any()} |
    {error, update_autonomous_database_errors(), tuple()}.
update_autonomous_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutonomousDatabase">>, Input, Options).

%% @doc Updates the properties of an Autonomous Database backup.
-spec update_autonomous_database_backup(aws_client:aws_client(), update_autonomous_database_backup_input()) ->
    {ok, update_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, update_autonomous_database_backup_errors(), tuple()}.
update_autonomous_database_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_autonomous_database_backup(Client, Input, []).

-spec update_autonomous_database_backup(aws_client:aws_client(), update_autonomous_database_backup_input(), proplists:proplist()) ->
    {ok, update_autonomous_database_backup_output(), tuple()} |
    {error, any()} |
    {error, update_autonomous_database_backup_errors(), tuple()}.
update_autonomous_database_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutonomousDatabaseBackup">>, Input, Options).

%% @doc Updates the properties of an Exadata infrastructure resource.
-spec update_cloud_exadata_infrastructure(aws_client:aws_client(), update_cloud_exadata_infrastructure_input()) ->
    {ok, update_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, update_cloud_exadata_infrastructure_errors(), tuple()}.
update_cloud_exadata_infrastructure(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cloud_exadata_infrastructure(Client, Input, []).

-spec update_cloud_exadata_infrastructure(aws_client:aws_client(), update_cloud_exadata_infrastructure_input(), proplists:proplist()) ->
    {ok, update_cloud_exadata_infrastructure_output(), tuple()} |
    {error, any()} |
    {error, update_cloud_exadata_infrastructure_errors(), tuple()}.
update_cloud_exadata_infrastructure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCloudExadataInfrastructure">>, Input, Options).

%% @doc Updates properties of a specified ODB network.
-spec update_odb_network(aws_client:aws_client(), update_odb_network_input()) ->
    {ok, update_odb_network_output(), tuple()} |
    {error, any()} |
    {error, update_odb_network_errors(), tuple()}.
update_odb_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_odb_network(Client, Input, []).

-spec update_odb_network(aws_client:aws_client(), update_odb_network_input(), proplists:proplist()) ->
    {ok, update_odb_network_output(), tuple()} |
    {error, any()} |
    {error, update_odb_network_errors(), tuple()}.
update_odb_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOdbNetwork">>, Input, Options).

%% @doc Modifies the settings of an Oracle Database@Amazon Web Services
%% peering connection.
%%
%% You can update the display name and add or remove CIDR blocks from the
%% peering connection.
-spec update_odb_peering_connection(aws_client:aws_client(), update_odb_peering_connection_input()) ->
    {ok, update_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, update_odb_peering_connection_errors(), tuple()}.
update_odb_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_odb_peering_connection(Client, Input, []).

-spec update_odb_peering_connection(aws_client:aws_client(), update_odb_peering_connection_input(), proplists:proplist()) ->
    {ok, update_odb_peering_connection_output(), tuple()} |
    {error, any()} |
    {error, update_odb_peering_connection_errors(), tuple()}.
update_odb_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOdbPeeringConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"odb">>},
    DefaultHost = build_host(<<"odb">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_ODB">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Odb.", Action/binary>>}
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
