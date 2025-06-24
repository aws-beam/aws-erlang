%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkSpaces Instances provides an API framework for managing
%% virtual workspace environments across multiple AWS regions, enabling
%% programmatic creation and configuration of desktop infrastructure.
-module(aws_workspaces_instances).

-export([associate_volume/2,
         associate_volume/3,
         create_volume/2,
         create_volume/3,
         create_workspace_instance/2,
         create_workspace_instance/3,
         delete_volume/2,
         delete_volume/3,
         delete_workspace_instance/2,
         delete_workspace_instance/3,
         disassociate_volume/2,
         disassociate_volume/3,
         get_workspace_instance/2,
         get_workspace_instance/3,
         list_instance_types/2,
         list_instance_types/3,
         list_regions/2,
         list_regions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workspace_instances/2,
         list_workspace_instances/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% ena_srd_specification_request() :: #{
%%   <<"EnaSrdEnabled">> => [boolean()],
%%   <<"EnaSrdUdpSpecification">> => ena_srd_udp_specification_request()
%% }
-type ena_srd_specification_request() :: #{binary() => any()}.

%% Example:
%% instance_network_performance_options_request() :: #{
%%   <<"BandwidthWeighting">> => list(any())
%% }
-type instance_network_performance_options_request() :: #{binary() => any()}.

%% Example:
%% ec2_managed_instance() :: #{
%%   <<"InstanceId">> => [string()]
%% }
-type ec2_managed_instance() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag()()),
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% spot_market_options() :: #{
%%   <<"BlockDurationMinutes">> => integer(),
%%   <<"InstanceInterruptionBehavior">> => list(any()),
%%   <<"MaxPrice">> => string(),
%%   <<"SpotInstanceType">> => list(any()),
%%   <<"ValidUntilUtc">> => [non_neg_integer()]
%% }
-type spot_market_options() :: #{binary() => any()}.

%% Example:
%% instance_metadata_options_request() :: #{
%%   <<"HttpEndpoint">> => list(any()),
%%   <<"HttpProtocolIpv6">> => list(any()),
%%   <<"HttpPutResponseHopLimit">> => integer(),
%%   <<"HttpTokens">> => list(any()),
%%   <<"InstanceMetadataTags">> => list(any())
%% }
-type instance_metadata_options_request() :: #{binary() => any()}.

%% Example:
%% disassociate_volume_response() :: #{

%% }
-type disassociate_volume_response() :: #{binary() => any()}.

%% Example:
%% delete_volume_request() :: #{
%%   <<"VolumeId">> := string()
%% }
-type delete_volume_request() :: #{binary() => any()}.

%% Example:
%% instance_market_options_request() :: #{
%%   <<"MarketType">> => list(any()),
%%   <<"SpotOptions">> => spot_market_options()
%% }
-type instance_market_options_request() :: #{binary() => any()}.

%% Example:
%% associate_volume_response() :: #{

%% }
-type associate_volume_response() :: #{binary() => any()}.

%% Example:
%% create_workspace_instance_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ManagedInstance">> := managed_instance_request(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_workspace_instance_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_workspace_instances_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkspaceInstances">> => list(workspace_instance()())
%% }
-type list_workspace_instances_response() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_target() :: #{
%%   <<"CapacityReservationId">> => string(),
%%   <<"CapacityReservationResourceGroupArn">> => string()
%% }
-type capacity_reservation_target() :: #{binary() => any()}.

%% Example:
%% cpu_options_request() :: #{
%%   <<"AmdSevSnp">> => list(any()),
%%   <<"CoreCount">> => integer(),
%%   <<"ThreadsPerCore">> => integer()
%% }
-type cpu_options_request() :: #{binary() => any()}.

%% Example:
%% connection_tracking_specification_request() :: #{
%%   <<"TcpEstablishedTimeout">> => integer(),
%%   <<"UdpStreamTimeout">> => integer(),
%%   <<"UdpTimeout">> => integer()
%% }
-type connection_tracking_specification_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()()),
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% ipv6_prefix_specification_request() :: #{
%%   <<"Ipv6Prefix">> => string()
%% }
-type ipv6_prefix_specification_request() :: #{binary() => any()}.

%% Example:
%% enclave_options_request() :: #{
%%   <<"Enabled">> => [boolean()]
%% }
-type enclave_options_request() :: #{binary() => any()}.

%% Example:
%% associate_volume_request() :: #{
%%   <<"Device">> := string(),
%%   <<"VolumeId">> := string(),
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type associate_volume_request() :: #{binary() => any()}.

%% Example:
%% credit_specification_request() :: #{
%%   <<"CpuCredits">> => list(any())
%% }
-type credit_specification_request() :: #{binary() => any()}.

%% Example:
%% get_workspace_instance_request() :: #{
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type get_workspace_instance_request() :: #{binary() => any()}.

%% Example:
%% ena_srd_udp_specification_request() :: #{
%%   <<"EnaSrdUdpEnabled">> => [boolean()]
%% }
-type ena_srd_udp_specification_request() :: #{binary() => any()}.

%% Example:
%% region() :: #{
%%   <<"RegionName">> => string()
%% }
-type region() :: #{binary() => any()}.

%% Example:
%% delete_workspace_instance_request() :: #{
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type delete_workspace_instance_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% ipv4_prefix_specification_request() :: #{
%%   <<"Ipv4Prefix">> => string()
%% }
-type ipv4_prefix_specification_request() :: #{binary() => any()}.

%% Example:
%% private_ip_address_specification() :: #{
%%   <<"Primary">> => [boolean()],
%%   <<"PrivateIpAddress">> => string()
%% }
-type private_ip_address_specification() :: #{binary() => any()}.

%% Example:
%% hibernation_options_request() :: #{
%%   <<"Configured">> => [boolean()]
%% }
-type hibernation_options_request() :: #{binary() => any()}.

%% Example:
%% disassociate_volume_request() :: #{
%%   <<"Device">> => string(),
%%   <<"DisassociateMode">> => list(any()),
%%   <<"VolumeId">> := string(),
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type disassociate_volume_request() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% private_dns_name_options_request() :: #{
%%   <<"EnableResourceNameDnsAAAARecord">> => [boolean()],
%%   <<"EnableResourceNameDnsARecord">> => [boolean()],
%%   <<"HostnameType">> => list(any())
%% }
-type private_dns_name_options_request() :: #{binary() => any()}.

%% Example:
%% get_workspace_instance_response() :: #{
%%   <<"EC2InstanceErrors">> => list(ec2_instance_error()()),
%%   <<"EC2ManagedInstance">> => ec2_managed_instance(),
%%   <<"ProvisionState">> => list(any()),
%%   <<"WorkspaceInstanceErrors">> => list(workspace_instance_error()()),
%%   <<"WorkspaceInstanceId">> => string()
%% }
-type get_workspace_instance_response() :: #{binary() => any()}.

%% Example:
%% workspace_instance() :: #{
%%   <<"EC2ManagedInstance">> => ec2_managed_instance(),
%%   <<"ProvisionState">> => list(any()),
%%   <<"WorkspaceInstanceId">> => string()
%% }
-type workspace_instance() :: #{binary() => any()}.

%% Example:
%% list_regions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_regions_request() :: #{binary() => any()}.

%% Example:
%% block_device_mapping_request() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"Ebs">> => ebs_block_device(),
%%   <<"NoDevice">> => string(),
%%   <<"VirtualName">> => string()
%% }
-type block_device_mapping_request() :: #{binary() => any()}.

%% Example:
%% create_volume_response() :: #{
%%   <<"VolumeId">> => string()
%% }
-type create_volume_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Reason">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% managed_instance_request() :: #{
%%   <<"BlockDeviceMappings">> => list(block_device_mapping_request()()),
%%   <<"CapacityReservationSpecification">> => capacity_reservation_specification(),
%%   <<"CpuOptions">> => cpu_options_request(),
%%   <<"CreditSpecification">> => credit_specification_request(),
%%   <<"DisableApiStop">> => [boolean()],
%%   <<"EbsOptimized">> => [boolean()],
%%   <<"EnablePrimaryIpv6">> => [boolean()],
%%   <<"EnclaveOptions">> => enclave_options_request(),
%%   <<"HibernationOptions">> => hibernation_options_request(),
%%   <<"IamInstanceProfile">> => iam_instance_profile_specification(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceMarketOptions">> => instance_market_options_request(),
%%   <<"InstanceType">> => string(),
%%   <<"Ipv6AddressCount">> => integer(),
%%   <<"Ipv6Addresses">> => list(instance_ipv6_address()()),
%%   <<"KernelId">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LicenseSpecifications">> => list(license_configuration_request()()),
%%   <<"MaintenanceOptions">> => instance_maintenance_options_request(),
%%   <<"MetadataOptions">> => instance_metadata_options_request(),
%%   <<"Monitoring">> => run_instances_monitoring_enabled(),
%%   <<"NetworkInterfaces">> => list(instance_network_interface_specification()()),
%%   <<"NetworkPerformanceOptions">> => instance_network_performance_options_request(),
%%   <<"Placement">> => placement(),
%%   <<"PrivateDnsNameOptions">> => private_dns_name_options_request(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"RamdiskId">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SubnetId">> => string(),
%%   <<"TagSpecifications">> => list(tag_specification()()),
%%   <<"UserData">> => string()
%% }
-type managed_instance_request() :: #{binary() => any()}.

%% Example:
%% ebs_block_device() :: #{
%%   <<"Encrypted">> => [boolean()],
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => list(any())
%% }
-type ebs_block_device() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_specification() :: #{
%%   <<"CapacityReservationPreference">> => list(any()),
%%   <<"CapacityReservationTarget">> => capacity_reservation_target()
%% }
-type capacity_reservation_specification() :: #{binary() => any()}.

%% Example:
%% placement() :: #{
%%   <<"Affinity">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"HostId">> => string(),
%%   <<"HostResourceGroupArn">> => string(),
%%   <<"PartitionNumber">> => integer(),
%%   <<"Tenancy">> => list(any())
%% }
-type placement() :: #{binary() => any()}.

%% Example:
%% list_workspace_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProvisionStates">> => list(list(any())())
%% }
-type list_workspace_instances_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"RetryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_volume_response() :: #{

%% }
-type delete_volume_response() :: #{binary() => any()}.

%% Example:
%% delete_workspace_instance_response() :: #{

%% }
-type delete_workspace_instance_response() :: #{binary() => any()}.

%% Example:
%% create_workspace_instance_response() :: #{
%%   <<"WorkspaceInstanceId">> => string()
%% }
-type create_workspace_instance_response() :: #{binary() => any()}.

%% Example:
%% workspace_instance_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"ErrorMessage">> => [string()]
%% }
-type workspace_instance_error() :: #{binary() => any()}.

%% Example:
%% iam_instance_profile_specification() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type iam_instance_profile_specification() :: #{binary() => any()}.

%% Example:
%% tag_specification() :: #{
%%   <<"ResourceType">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type tag_specification() :: #{binary() => any()}.

%% Example:
%% list_instance_types_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_instance_types_request() :: #{binary() => any()}.

%% Example:
%% license_configuration_request() :: #{
%%   <<"LicenseConfigurationArn">> => string()
%% }
-type license_configuration_request() :: #{binary() => any()}.

%% Example:
%% instance_type_info() :: #{
%%   <<"InstanceType">> => string()
%% }
-type instance_type_info() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_volume_request() :: #{
%%   <<"AvailabilityZone">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Encrypted">> => [boolean()],
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SizeInGB">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"TagSpecifications">> => list(tag_specification()()),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeType">> => list(any())
%% }
-type create_volume_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"WorkspaceInstanceId">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"RetryAfterSeconds">> => [integer()],
%%   <<"ServiceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_error() :: #{
%%   <<"EC2ErrorCode">> => [string()],
%%   <<"EC2ErrorMessage">> => [string()],
%%   <<"EC2ExceptionType">> => [string()]
%% }
-type ec2_instance_error() :: #{binary() => any()}.

%% Example:
%% list_regions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Regions">> => list(region()())
%% }
-type list_regions_response() :: #{binary() => any()}.

%% Example:
%% instance_maintenance_options_request() :: #{
%%   <<"AutoRecovery">> => list(any())
%% }
-type instance_maintenance_options_request() :: #{binary() => any()}.

%% Example:
%% list_instance_types_response() :: #{
%%   <<"InstanceTypes">> => list(instance_type_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_instance_types_response() :: #{binary() => any()}.

%% Example:
%% run_instances_monitoring_enabled() :: #{
%%   <<"Enabled">> => [boolean()]
%% }
-type run_instances_monitoring_enabled() :: #{binary() => any()}.

%% Example:
%% instance_ipv6_address() :: #{
%%   <<"Ipv6Address">> => string(),
%%   <<"IsPrimaryIpv6">> => [boolean()]
%% }
-type instance_ipv6_address() :: #{binary() => any()}.

%% Example:
%% instance_network_interface_specification() :: #{
%%   <<"AssociateCarrierIpAddress">> => [boolean()],
%%   <<"AssociatePublicIpAddress">> => [boolean()],
%%   <<"ConnectionTrackingSpecification">> => connection_tracking_specification_request(),
%%   <<"Description">> => string(),
%%   <<"DeviceIndex">> => integer(),
%%   <<"EnaSrdSpecification">> => ena_srd_specification_request(),
%%   <<"Groups">> => list(string()()),
%%   <<"InterfaceType">> => list(any()),
%%   <<"Ipv4PrefixCount">> => integer(),
%%   <<"Ipv4Prefixes">> => list(ipv4_prefix_specification_request()()),
%%   <<"Ipv6AddressCount">> => integer(),
%%   <<"Ipv6Addresses">> => list(instance_ipv6_address()()),
%%   <<"Ipv6PrefixCount">> => integer(),
%%   <<"Ipv6Prefixes">> => list(ipv6_prefix_specification_request()()),
%%   <<"NetworkCardIndex">> => integer(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"PrimaryIpv6">> => [boolean()],
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PrivateIpAddresses">> => list(private_ip_address_specification()()),
%%   <<"SecondaryPrivateIpAddressCount">> => integer(),
%%   <<"SubnetId">> => string()
%% }
-type instance_network_interface_specification() :: #{binary() => any()}.

-type associate_volume_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_volume_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_workspace_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_volume_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_volume_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_workspace_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_instance_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_regions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workspace_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches a volume to a WorkSpace Instance.
-spec associate_volume(aws_client:aws_client(), associate_volume_request()) ->
    {ok, associate_volume_response(), tuple()} |
    {error, any()} |
    {error, associate_volume_errors(), tuple()}.
associate_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_volume(Client, Input, []).

-spec associate_volume(aws_client:aws_client(), associate_volume_request(), proplists:proplist()) ->
    {ok, associate_volume_response(), tuple()} |
    {error, any()} |
    {error, associate_volume_errors(), tuple()}.
associate_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVolume">>, Input, Options).

%% @doc Creates a new volume for WorkSpace Instances.
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

%% @doc Launches a new WorkSpace Instance with specified configuration
%% parameters, enabling programmatic workspace deployment.
-spec create_workspace_instance(aws_client:aws_client(), create_workspace_instance_request()) ->
    {ok, create_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_instance_errors(), tuple()}.
create_workspace_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workspace_instance(Client, Input, []).

-spec create_workspace_instance(aws_client:aws_client(), create_workspace_instance_request(), proplists:proplist()) ->
    {ok, create_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_instance_errors(), tuple()}.
create_workspace_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkspaceInstance">>, Input, Options).

%% @doc Deletes a specified volume.
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

%% @doc Deletes the specified WorkSpace
-spec delete_workspace_instance(aws_client:aws_client(), delete_workspace_instance_request()) ->
    {ok, delete_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_instance_errors(), tuple()}.
delete_workspace_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workspace_instance(Client, Input, []).

-spec delete_workspace_instance(aws_client:aws_client(), delete_workspace_instance_request(), proplists:proplist()) ->
    {ok, delete_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_instance_errors(), tuple()}.
delete_workspace_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkspaceInstance">>, Input, Options).

%% @doc Detaches a volume from a WorkSpace Instance.
-spec disassociate_volume(aws_client:aws_client(), disassociate_volume_request()) ->
    {ok, disassociate_volume_response(), tuple()} |
    {error, any()} |
    {error, disassociate_volume_errors(), tuple()}.
disassociate_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_volume(Client, Input, []).

-spec disassociate_volume(aws_client:aws_client(), disassociate_volume_request(), proplists:proplist()) ->
    {ok, disassociate_volume_response(), tuple()} |
    {error, any()} |
    {error, disassociate_volume_errors(), tuple()}.
disassociate_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateVolume">>, Input, Options).

%% @doc Retrieves detailed information about a specific WorkSpace Instance.
-spec get_workspace_instance(aws_client:aws_client(), get_workspace_instance_request()) ->
    {ok, get_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, get_workspace_instance_errors(), tuple()}.
get_workspace_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workspace_instance(Client, Input, []).

-spec get_workspace_instance(aws_client:aws_client(), get_workspace_instance_request(), proplists:proplist()) ->
    {ok, get_workspace_instance_response(), tuple()} |
    {error, any()} |
    {error, get_workspace_instance_errors(), tuple()}.
get_workspace_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkspaceInstance">>, Input, Options).

%% @doc Retrieves a list of instance types supported by Amazon WorkSpaces
%% Instances, enabling precise workspace infrastructure configuration.
-spec list_instance_types(aws_client:aws_client(), list_instance_types_request()) ->
    {ok, list_instance_types_response(), tuple()} |
    {error, any()} |
    {error, list_instance_types_errors(), tuple()}.
list_instance_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_types(Client, Input, []).

-spec list_instance_types(aws_client:aws_client(), list_instance_types_request(), proplists:proplist()) ->
    {ok, list_instance_types_response(), tuple()} |
    {error, any()} |
    {error, list_instance_types_errors(), tuple()}.
list_instance_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceTypes">>, Input, Options).

%% @doc Retrieves a list of AWS regions supported by Amazon WorkSpaces
%% Instances, enabling region discovery for workspace deployments.
-spec list_regions(aws_client:aws_client(), list_regions_request()) ->
    {ok, list_regions_response(), tuple()} |
    {error, any()} |
    {error, list_regions_errors(), tuple()}.
list_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regions(Client, Input, []).

-spec list_regions(aws_client:aws_client(), list_regions_request(), proplists:proplist()) ->
    {ok, list_regions_response(), tuple()} |
    {error, any()} |
    {error, list_regions_errors(), tuple()}.
list_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegions">>, Input, Options).

%% @doc Retrieves tags for a WorkSpace Instance.
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

%% @doc Retrieves a collection of WorkSpaces Instances based on specified
%% filters.
-spec list_workspace_instances(aws_client:aws_client(), list_workspace_instances_request()) ->
    {ok, list_workspace_instances_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_instances_errors(), tuple()}.
list_workspace_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workspace_instances(Client, Input, []).

-spec list_workspace_instances(aws_client:aws_client(), list_workspace_instances_request(), proplists:proplist()) ->
    {ok, list_workspace_instances_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_instances_errors(), tuple()}.
list_workspace_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkspaceInstances">>, Input, Options).

%% @doc Adds tags to a WorkSpace Instance.
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

%% @doc Removes tags from a WorkSpace Instance.
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
    Client1 = Client#{service => <<"workspaces-instances">>},
    Host = build_host(<<"workspaces-instances">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"EUCMIFrontendAPIService.", Action/binary>>}
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
