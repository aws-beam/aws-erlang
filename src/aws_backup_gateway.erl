%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Backup gateway
%%
%% Backup gateway connects Backup to your hypervisor, so you can
%% create, store, and restore backups of your virtual machines (VMs)
%% anywhere, whether
%% on-premises or in the VMware Cloud (VMC) on Amazon Web Services.
%%
%% Add on-premises resources by connecting to a hypervisor through a gateway.
%% Backup will automatically discover the resources in your hypervisor.
%%
%% Use Backup to assign virtual or on-premises resources to a backup plan, or
%% run
%% on-demand backups. Once you have backed up your resources, you can view
%% them and restore them
%% like any resource supported by Backup.
%%
%% To download the Amazon Web Services software to get started, navigate to
%% the Backup console, choose Gateways, then choose Create gateway.
-module(aws_backup_gateway).

-export([associate_gateway_to_server/2,
         associate_gateway_to_server/3,
         create_gateway/2,
         create_gateway/3,
         delete_gateway/2,
         delete_gateway/3,
         delete_hypervisor/2,
         delete_hypervisor/3,
         disassociate_gateway_from_server/2,
         disassociate_gateway_from_server/3,
         get_bandwidth_rate_limit_schedule/2,
         get_bandwidth_rate_limit_schedule/3,
         get_gateway/2,
         get_gateway/3,
         get_hypervisor/2,
         get_hypervisor/3,
         get_hypervisor_property_mappings/2,
         get_hypervisor_property_mappings/3,
         get_virtual_machine/2,
         get_virtual_machine/3,
         import_hypervisor_configuration/2,
         import_hypervisor_configuration/3,
         list_gateways/2,
         list_gateways/3,
         list_hypervisors/2,
         list_hypervisors/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_virtual_machines/2,
         list_virtual_machines/3,
         put_bandwidth_rate_limit_schedule/2,
         put_bandwidth_rate_limit_schedule/3,
         put_hypervisor_property_mappings/2,
         put_hypervisor_property_mappings/3,
         put_maintenance_start_time/2,
         put_maintenance_start_time/3,
         start_virtual_machines_metadata_sync/2,
         start_virtual_machines_metadata_sync/3,
         tag_resource/2,
         tag_resource/3,
         test_hypervisor_configuration/2,
         test_hypervisor_configuration/3,
         untag_resource/2,
         untag_resource/3,
         update_gateway_information/2,
         update_gateway_information/3,
         update_gateway_software_now/2,
         update_gateway_software_now/3,
         update_hypervisor/2,
         update_hypervisor/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% maintenance_start_time() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"DayOfWeek">> => integer(),
%%   <<"HourOfDay">> => integer(),
%%   <<"MinuteOfHour">> => integer()
%% }
-type maintenance_start_time() :: #{binary() => any()}.

%% Example:
%% put_bandwidth_rate_limit_schedule_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type put_bandwidth_rate_limit_schedule_output() :: #{binary() => any()}.

%% Example:
%% gateway_details() :: #{
%%   <<"GatewayArn">> => string(),
%%   <<"GatewayDisplayName">> => string(),
%%   <<"GatewayType">> => string(),
%%   <<"HypervisorId">> => string(),
%%   <<"LastSeenTime">> => non_neg_integer(),
%%   <<"MaintenanceStartTime">> => maintenance_start_time(),
%%   <<"NextUpdateAvailabilityTime">> => non_neg_integer(),
%%   <<"VpcEndpoint">> => string()
%% }
-type gateway_details() :: #{binary() => any()}.

%% Example:
%% put_hypervisor_property_mappings_input() :: #{
%%   <<"HypervisorArn">> := string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"VmwareToAwsTagMappings">> := list(vmware_to_aws_tag_mapping())
%% }
-type put_hypervisor_property_mappings_input() :: #{binary() => any()}.

%% Example:
%% update_hypervisor_output() :: #{
%%   <<"HypervisorArn">> => string()
%% }
-type update_hypervisor_output() :: #{binary() => any()}.

%% Example:
%% disassociate_gateway_from_server_input() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type disassociate_gateway_from_server_input() :: #{binary() => any()}.

%% Example:
%% get_bandwidth_rate_limit_schedule_output() :: #{
%%   <<"BandwidthRateLimitIntervals">> => list(bandwidth_rate_limit_interval()),
%%   <<"GatewayArn">> => string()
%% }
-type get_bandwidth_rate_limit_schedule_output() :: #{binary() => any()}.

%% Example:
%% put_bandwidth_rate_limit_schedule_input() :: #{
%%   <<"BandwidthRateLimitIntervals">> := list(bandwidth_rate_limit_interval()),
%%   <<"GatewayArn">> := string()
%% }
-type put_bandwidth_rate_limit_schedule_input() :: #{binary() => any()}.

%% Example:
%% virtual_machine() :: #{
%%   <<"HostName">> => string(),
%%   <<"HypervisorId">> => string(),
%%   <<"LastBackupDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type virtual_machine() :: #{binary() => any()}.

%% Example:
%% vmware_to_aws_tag_mapping() :: #{
%%   <<"AwsTagKey">> => string(),
%%   <<"AwsTagValue">> => string(),
%%   <<"VmwareCategory">> => string(),
%%   <<"VmwareTagName">> => string()
%% }
-type vmware_to_aws_tag_mapping() :: #{binary() => any()}.

%% Example:
%% get_hypervisor_property_mappings_input() :: #{
%%   <<"HypervisorArn">> := string()
%% }
-type get_hypervisor_property_mappings_input() :: #{binary() => any()}.

%% Example:
%% test_hypervisor_configuration_input() :: #{
%%   <<"GatewayArn">> := string(),
%%   <<"Host">> := string(),
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type test_hypervisor_configuration_input() :: #{binary() => any()}.

%% Example:
%% disassociate_gateway_from_server_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type disassociate_gateway_from_server_output() :: #{binary() => any()}.

%% Example:
%% test_hypervisor_configuration_output() :: #{

%% }
-type test_hypervisor_configuration_output() :: #{binary() => any()}.

%% Example:
%% get_hypervisor_property_mappings_output() :: #{
%%   <<"HypervisorArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"VmwareToAwsTagMappings">> => list(vmware_to_aws_tag_mapping())
%% }
-type get_hypervisor_property_mappings_output() :: #{binary() => any()}.

%% Example:
%% associate_gateway_to_server_input() :: #{
%%   <<"GatewayArn">> := string(),
%%   <<"ServerArn">> := string()
%% }
-type associate_gateway_to_server_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% get_bandwidth_rate_limit_schedule_input() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type get_bandwidth_rate_limit_schedule_input() :: #{binary() => any()}.

%% Example:
%% get_hypervisor_output() :: #{
%%   <<"Hypervisor">> => hypervisor_details()
%% }
-type get_hypervisor_output() :: #{binary() => any()}.

%% Example:
%% list_virtual_machines_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VirtualMachines">> => list(virtual_machine())
%% }
-type list_virtual_machines_output() :: #{binary() => any()}.

%% Example:
%% create_gateway_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type create_gateway_output() :: #{binary() => any()}.

%% Example:
%% gateway() :: #{
%%   <<"GatewayArn">> => string(),
%%   <<"GatewayDisplayName">> => string(),
%%   <<"GatewayType">> => string(),
%%   <<"HypervisorId">> => string(),
%%   <<"LastSeenTime">> => non_neg_integer()
%% }
-type gateway() :: #{binary() => any()}.

%% Example:
%% delete_hypervisor_output() :: #{
%%   <<"HypervisorArn">> => string()
%% }
-type delete_hypervisor_output() :: #{binary() => any()}.

%% Example:
%% get_hypervisor_input() :: #{
%%   <<"HypervisorArn">> := string()
%% }
-type get_hypervisor_input() :: #{binary() => any()}.

%% Example:
%% put_maintenance_start_time_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type put_maintenance_start_time_output() :: #{binary() => any()}.

%% Example:
%% update_gateway_information_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type update_gateway_information_output() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% update_hypervisor_input() :: #{
%%   <<"Host">> => string(),
%%   <<"HypervisorArn">> := string(),
%%   <<"LogGroupArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type update_hypervisor_input() :: #{binary() => any()}.

%% Example:
%% bandwidth_rate_limit_interval() :: #{
%%   <<"AverageUploadRateLimitInBitsPerSec">> => float(),
%%   <<"DaysOfWeek">> => list(integer()),
%%   <<"EndHourOfDay">> => integer(),
%%   <<"EndMinuteOfHour">> => integer(),
%%   <<"StartHourOfDay">> => integer(),
%%   <<"StartMinuteOfHour">> => integer()
%% }
-type bandwidth_rate_limit_interval() :: #{binary() => any()}.

%% Example:
%% list_gateways_output() :: #{
%%   <<"Gateways">> => list(gateway()),
%%   <<"NextToken">> => string()
%% }
-type list_gateways_output() :: #{binary() => any()}.

%% Example:
%% put_maintenance_start_time_input() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"DayOfWeek">> => integer(),
%%   <<"GatewayArn">> := string(),
%%   <<"HourOfDay">> := integer(),
%%   <<"MinuteOfHour">> := integer()
%% }
-type put_maintenance_start_time_input() :: #{binary() => any()}.

%% Example:
%% delete_gateway_input() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type delete_gateway_input() :: #{binary() => any()}.

%% Example:
%% hypervisor_details() :: #{
%%   <<"Host">> => string(),
%%   <<"HypervisorArn">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LastSuccessfulMetadataSyncTime">> => non_neg_integer(),
%%   <<"LatestMetadataSyncStatus">> => string(),
%%   <<"LatestMetadataSyncStatusMessage">> => string(),
%%   <<"LogGroupArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type hypervisor_details() :: #{binary() => any()}.

%% Example:
%% import_hypervisor_configuration_output() :: #{
%%   <<"HypervisorArn">> => string()
%% }
-type import_hypervisor_configuration_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% get_gateway_output() :: #{
%%   <<"Gateway">> => gateway_details()
%% }
-type get_gateway_output() :: #{binary() => any()}.

%% Example:
%% associate_gateway_to_server_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type associate_gateway_to_server_output() :: #{binary() => any()}.

%% Example:
%% import_hypervisor_configuration_input() :: #{
%%   <<"Host">> := string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"Name">> := string(),
%%   <<"Password">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"Username">> => string()
%% }
-type import_hypervisor_configuration_input() :: #{binary() => any()}.

%% Example:
%% list_virtual_machines_input() :: #{
%%   <<"HypervisorArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_virtual_machines_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% update_gateway_information_input() :: #{
%%   <<"GatewayArn">> := string(),
%%   <<"GatewayDisplayName">> => string()
%% }
-type update_gateway_information_input() :: #{binary() => any()}.

%% Example:
%% get_virtual_machine_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_virtual_machine_input() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_hypervisor_input() :: #{
%%   <<"HypervisorArn">> := string()
%% }
-type delete_hypervisor_input() :: #{binary() => any()}.

%% Example:
%% virtual_machine_details() :: #{
%%   <<"HostName">> => string(),
%%   <<"HypervisorId">> => string(),
%%   <<"LastBackupDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"VmwareTags">> => list(vmware_tag())
%% }
-type virtual_machine_details() :: #{binary() => any()}.

%% Example:
%% list_gateways_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_gateways_input() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% vmware_tag() :: #{
%%   <<"VmwareCategory">> => string(),
%%   <<"VmwareTagDescription">> => string(),
%%   <<"VmwareTagName">> => string()
%% }
-type vmware_tag() :: #{binary() => any()}.

%% Example:
%% list_hypervisors_output() :: #{
%%   <<"Hypervisors">> => list(hypervisor()),
%%   <<"NextToken">> => string()
%% }
-type list_hypervisors_output() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_gateway_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type delete_gateway_output() :: #{binary() => any()}.

%% Example:
%% create_gateway_input() :: #{
%%   <<"ActivationKey">> := string(),
%%   <<"GatewayDisplayName">> := string(),
%%   <<"GatewayType">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_gateway_input() :: #{binary() => any()}.

%% Example:
%% list_hypervisors_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hypervisors_input() :: #{binary() => any()}.

%% Example:
%% get_virtual_machine_output() :: #{
%%   <<"VirtualMachine">> => virtual_machine_details()
%% }
-type get_virtual_machine_output() :: #{binary() => any()}.

%% Example:
%% update_gateway_software_now_output() :: #{
%%   <<"GatewayArn">> => string()
%% }
-type update_gateway_software_now_output() :: #{binary() => any()}.

%% Example:
%% get_gateway_input() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type get_gateway_input() :: #{binary() => any()}.

%% Example:
%% start_virtual_machines_metadata_sync_input() :: #{
%%   <<"HypervisorArn">> := string()
%% }
-type start_virtual_machines_metadata_sync_input() :: #{binary() => any()}.

%% Example:
%% update_gateway_software_now_input() :: #{
%%   <<"GatewayArn">> := string()
%% }
-type update_gateway_software_now_input() :: #{binary() => any()}.

%% Example:
%% hypervisor() :: #{
%%   <<"Host">> => string(),
%%   <<"HypervisorArn">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type hypervisor() :: #{binary() => any()}.

%% Example:
%% put_hypervisor_property_mappings_output() :: #{
%%   <<"HypervisorArn">> => string()
%% }
-type put_hypervisor_property_mappings_output() :: #{binary() => any()}.

%% Example:
%% start_virtual_machines_metadata_sync_output() :: #{
%%   <<"HypervisorArn">> => string()
%% }
-type start_virtual_machines_metadata_sync_output() :: #{binary() => any()}.

-type associate_gateway_to_server_errors() ::
    conflict_exception().

-type delete_gateway_errors() ::
    resource_not_found_exception().

-type delete_hypervisor_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_gateway_from_server_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type get_bandwidth_rate_limit_schedule_errors() ::
    resource_not_found_exception().

-type get_gateway_errors() ::
    resource_not_found_exception().

-type get_hypervisor_errors() ::
    resource_not_found_exception().

-type get_hypervisor_property_mappings_errors() ::
    resource_not_found_exception().

-type get_virtual_machine_errors() ::
    resource_not_found_exception().

-type import_hypervisor_configuration_errors() ::
    access_denied_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type put_bandwidth_rate_limit_schedule_errors() ::
    resource_not_found_exception().

-type put_hypervisor_property_mappings_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_maintenance_start_time_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type start_virtual_machines_metadata_sync_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    resource_not_found_exception().

-type test_hypervisor_configuration_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_gateway_information_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type update_gateway_software_now_errors() ::
    resource_not_found_exception().

-type update_hypervisor_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a backup gateway with your server.
%%
%% After you complete the association process,
%% you can back up and restore your VMs through the gateway.
-spec associate_gateway_to_server(aws_client:aws_client(), associate_gateway_to_server_input()) ->
    {ok, associate_gateway_to_server_output(), tuple()} |
    {error, any()} |
    {error, associate_gateway_to_server_errors(), tuple()}.
associate_gateway_to_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_gateway_to_server(Client, Input, []).

-spec associate_gateway_to_server(aws_client:aws_client(), associate_gateway_to_server_input(), proplists:proplist()) ->
    {ok, associate_gateway_to_server_output(), tuple()} |
    {error, any()} |
    {error, associate_gateway_to_server_errors(), tuple()}.
associate_gateway_to_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateGatewayToServer">>, Input, Options).

%% @doc Creates a backup gateway.
%%
%% After you create a gateway, you can associate it with a server
%% using the `AssociateGatewayToServer' operation.
-spec create_gateway(aws_client:aws_client(), create_gateway_input()) ->
    {ok, create_gateway_output(), tuple()} |
    {error, any()}.
create_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gateway(Client, Input, []).

-spec create_gateway(aws_client:aws_client(), create_gateway_input(), proplists:proplist()) ->
    {ok, create_gateway_output(), tuple()} |
    {error, any()}.
create_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGateway">>, Input, Options).

%% @doc Deletes a backup gateway.
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

%% @doc Deletes a hypervisor.
-spec delete_hypervisor(aws_client:aws_client(), delete_hypervisor_input()) ->
    {ok, delete_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, delete_hypervisor_errors(), tuple()}.
delete_hypervisor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hypervisor(Client, Input, []).

-spec delete_hypervisor(aws_client:aws_client(), delete_hypervisor_input(), proplists:proplist()) ->
    {ok, delete_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, delete_hypervisor_errors(), tuple()}.
delete_hypervisor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHypervisor">>, Input, Options).

%% @doc Disassociates a backup gateway from the specified server.
%%
%% After the disassociation process
%% finishes, the gateway can no longer access the virtual machines on the
%% server.
-spec disassociate_gateway_from_server(aws_client:aws_client(), disassociate_gateway_from_server_input()) ->
    {ok, disassociate_gateway_from_server_output(), tuple()} |
    {error, any()} |
    {error, disassociate_gateway_from_server_errors(), tuple()}.
disassociate_gateway_from_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_gateway_from_server(Client, Input, []).

-spec disassociate_gateway_from_server(aws_client:aws_client(), disassociate_gateway_from_server_input(), proplists:proplist()) ->
    {ok, disassociate_gateway_from_server_output(), tuple()} |
    {error, any()} |
    {error, disassociate_gateway_from_server_errors(), tuple()}.
disassociate_gateway_from_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateGatewayFromServer">>, Input, Options).

%% @doc Retrieves the bandwidth rate limit schedule for a specified gateway.
%%
%% By default, gateways do not have bandwidth rate limit schedules, which
%% means
%% no bandwidth rate limiting is in effect. Use this to get a gateway's
%% bandwidth rate limit schedule.
-spec get_bandwidth_rate_limit_schedule(aws_client:aws_client(), get_bandwidth_rate_limit_schedule_input()) ->
    {ok, get_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, get_bandwidth_rate_limit_schedule_errors(), tuple()}.
get_bandwidth_rate_limit_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bandwidth_rate_limit_schedule(Client, Input, []).

-spec get_bandwidth_rate_limit_schedule(aws_client:aws_client(), get_bandwidth_rate_limit_schedule_input(), proplists:proplist()) ->
    {ok, get_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, get_bandwidth_rate_limit_schedule_errors(), tuple()}.
get_bandwidth_rate_limit_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBandwidthRateLimitSchedule">>, Input, Options).

%% @doc By providing the ARN (Amazon Resource Name), this
%% API returns the gateway.
-spec get_gateway(aws_client:aws_client(), get_gateway_input()) ->
    {ok, get_gateway_output(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway(Client, Input, []).

-spec get_gateway(aws_client:aws_client(), get_gateway_input(), proplists:proplist()) ->
    {ok, get_gateway_output(), tuple()} |
    {error, any()} |
    {error, get_gateway_errors(), tuple()}.
get_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGateway">>, Input, Options).

%% @doc This action requests information about the specified hypervisor to
%% which the gateway will connect.
%%
%% A hypervisor is hardware, software, or firmware that creates and manages
%% virtual machines,
%% and allocates resources to them.
-spec get_hypervisor(aws_client:aws_client(), get_hypervisor_input()) ->
    {ok, get_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, get_hypervisor_errors(), tuple()}.
get_hypervisor(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hypervisor(Client, Input, []).

-spec get_hypervisor(aws_client:aws_client(), get_hypervisor_input(), proplists:proplist()) ->
    {ok, get_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, get_hypervisor_errors(), tuple()}.
get_hypervisor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHypervisor">>, Input, Options).

%% @doc This action retrieves the property mappings for the specified
%% hypervisor.
%%
%% A hypervisor property mapping displays the relationship of entity
%% properties
%% available from the on-premises hypervisor to the properties available in
%% Amazon Web Services.
-spec get_hypervisor_property_mappings(aws_client:aws_client(), get_hypervisor_property_mappings_input()) ->
    {ok, get_hypervisor_property_mappings_output(), tuple()} |
    {error, any()} |
    {error, get_hypervisor_property_mappings_errors(), tuple()}.
get_hypervisor_property_mappings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hypervisor_property_mappings(Client, Input, []).

-spec get_hypervisor_property_mappings(aws_client:aws_client(), get_hypervisor_property_mappings_input(), proplists:proplist()) ->
    {ok, get_hypervisor_property_mappings_output(), tuple()} |
    {error, any()} |
    {error, get_hypervisor_property_mappings_errors(), tuple()}.
get_hypervisor_property_mappings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHypervisorPropertyMappings">>, Input, Options).

%% @doc By providing the ARN (Amazon Resource Name), this API returns the
%% virtual machine.
-spec get_virtual_machine(aws_client:aws_client(), get_virtual_machine_input()) ->
    {ok, get_virtual_machine_output(), tuple()} |
    {error, any()} |
    {error, get_virtual_machine_errors(), tuple()}.
get_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_virtual_machine(Client, Input, []).

-spec get_virtual_machine(aws_client:aws_client(), get_virtual_machine_input(), proplists:proplist()) ->
    {ok, get_virtual_machine_output(), tuple()} |
    {error, any()} |
    {error, get_virtual_machine_errors(), tuple()}.
get_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVirtualMachine">>, Input, Options).

%% @doc Connect to a hypervisor by importing its configuration.
-spec import_hypervisor_configuration(aws_client:aws_client(), import_hypervisor_configuration_input()) ->
    {ok, import_hypervisor_configuration_output(), tuple()} |
    {error, any()} |
    {error, import_hypervisor_configuration_errors(), tuple()}.
import_hypervisor_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_hypervisor_configuration(Client, Input, []).

-spec import_hypervisor_configuration(aws_client:aws_client(), import_hypervisor_configuration_input(), proplists:proplist()) ->
    {ok, import_hypervisor_configuration_output(), tuple()} |
    {error, any()} |
    {error, import_hypervisor_configuration_errors(), tuple()}.
import_hypervisor_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHypervisorConfiguration">>, Input, Options).

%% @doc Lists backup gateways owned by an Amazon Web Services account in an
%% Amazon Web Services Region.
%%
%% The returned list is ordered by gateway Amazon Resource Name (ARN).
-spec list_gateways(aws_client:aws_client(), list_gateways_input()) ->
    {ok, list_gateways_output(), tuple()} |
    {error, any()}.
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).

-spec list_gateways(aws_client:aws_client(), list_gateways_input(), proplists:proplist()) ->
    {ok, list_gateways_output(), tuple()} |
    {error, any()}.
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc Lists your hypervisors.
-spec list_hypervisors(aws_client:aws_client(), list_hypervisors_input()) ->
    {ok, list_hypervisors_output(), tuple()} |
    {error, any()}.
list_hypervisors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hypervisors(Client, Input, []).

-spec list_hypervisors(aws_client:aws_client(), list_hypervisors_input(), proplists:proplist()) ->
    {ok, list_hypervisors_output(), tuple()} |
    {error, any()}.
list_hypervisors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHypervisors">>, Input, Options).

%% @doc Lists the tags applied to the resource identified by its Amazon
%% Resource Name
%% (ARN).
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

%% @doc Lists your virtual machines.
-spec list_virtual_machines(aws_client:aws_client(), list_virtual_machines_input()) ->
    {ok, list_virtual_machines_output(), tuple()} |
    {error, any()}.
list_virtual_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_machines(Client, Input, []).

-spec list_virtual_machines(aws_client:aws_client(), list_virtual_machines_input(), proplists:proplist()) ->
    {ok, list_virtual_machines_output(), tuple()} |
    {error, any()}.
list_virtual_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVirtualMachines">>, Input, Options).

%% @doc This action sets the bandwidth rate limit schedule for a specified
%% gateway.
%%
%% By default, gateways do not have a bandwidth rate limit schedule, which
%% means
%% no bandwidth rate limiting is in effect. Use this to initiate a
%% gateway's bandwidth rate limit schedule.
-spec put_bandwidth_rate_limit_schedule(aws_client:aws_client(), put_bandwidth_rate_limit_schedule_input()) ->
    {ok, put_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, put_bandwidth_rate_limit_schedule_errors(), tuple()}.
put_bandwidth_rate_limit_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_bandwidth_rate_limit_schedule(Client, Input, []).

-spec put_bandwidth_rate_limit_schedule(aws_client:aws_client(), put_bandwidth_rate_limit_schedule_input(), proplists:proplist()) ->
    {ok, put_bandwidth_rate_limit_schedule_output(), tuple()} |
    {error, any()} |
    {error, put_bandwidth_rate_limit_schedule_errors(), tuple()}.
put_bandwidth_rate_limit_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutBandwidthRateLimitSchedule">>, Input, Options).

%% @doc This action sets the property mappings for the specified hypervisor.
%%
%% A hypervisor property mapping displays the relationship of entity
%% properties
%% available from the on-premises hypervisor to the properties available in
%% Amazon Web Services.
-spec put_hypervisor_property_mappings(aws_client:aws_client(), put_hypervisor_property_mappings_input()) ->
    {ok, put_hypervisor_property_mappings_output(), tuple()} |
    {error, any()} |
    {error, put_hypervisor_property_mappings_errors(), tuple()}.
put_hypervisor_property_mappings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_hypervisor_property_mappings(Client, Input, []).

-spec put_hypervisor_property_mappings(aws_client:aws_client(), put_hypervisor_property_mappings_input(), proplists:proplist()) ->
    {ok, put_hypervisor_property_mappings_output(), tuple()} |
    {error, any()} |
    {error, put_hypervisor_property_mappings_errors(), tuple()}.
put_hypervisor_property_mappings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutHypervisorPropertyMappings">>, Input, Options).

%% @doc Set the maintenance start time for a gateway.
-spec put_maintenance_start_time(aws_client:aws_client(), put_maintenance_start_time_input()) ->
    {ok, put_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, put_maintenance_start_time_errors(), tuple()}.
put_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_maintenance_start_time(Client, Input, []).

-spec put_maintenance_start_time(aws_client:aws_client(), put_maintenance_start_time_input(), proplists:proplist()) ->
    {ok, put_maintenance_start_time_output(), tuple()} |
    {error, any()} |
    {error, put_maintenance_start_time_errors(), tuple()}.
put_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMaintenanceStartTime">>, Input, Options).

%% @doc This action sends a request to sync metadata across the specified
%% virtual machines.
-spec start_virtual_machines_metadata_sync(aws_client:aws_client(), start_virtual_machines_metadata_sync_input()) ->
    {ok, start_virtual_machines_metadata_sync_output(), tuple()} |
    {error, any()} |
    {error, start_virtual_machines_metadata_sync_errors(), tuple()}.
start_virtual_machines_metadata_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_virtual_machines_metadata_sync(Client, Input, []).

-spec start_virtual_machines_metadata_sync(aws_client:aws_client(), start_virtual_machines_metadata_sync_input(), proplists:proplist()) ->
    {ok, start_virtual_machines_metadata_sync_output(), tuple()} |
    {error, any()} |
    {error, start_virtual_machines_metadata_sync_errors(), tuple()}.
start_virtual_machines_metadata_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartVirtualMachinesMetadataSync">>, Input, Options).

%% @doc Tag the resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests your hypervisor configuration to validate that backup gateway
%% can connect with the
%% hypervisor and its resources.
-spec test_hypervisor_configuration(aws_client:aws_client(), test_hypervisor_configuration_input()) ->
    {ok, test_hypervisor_configuration_output(), tuple()} |
    {error, any()} |
    {error, test_hypervisor_configuration_errors(), tuple()}.
test_hypervisor_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_hypervisor_configuration(Client, Input, []).

-spec test_hypervisor_configuration(aws_client:aws_client(), test_hypervisor_configuration_input(), proplists:proplist()) ->
    {ok, test_hypervisor_configuration_output(), tuple()} |
    {error, any()} |
    {error, test_hypervisor_configuration_errors(), tuple()}.
test_hypervisor_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestHypervisorConfiguration">>, Input, Options).

%% @doc Removes tags from the resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a gateway's name.
%%
%% Specify which gateway to update using the Amazon Resource Name
%% (ARN) of the gateway in your request.
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
%% The request immediately triggers the software update.
%%
%% When you make this request, you get a `200 OK'
%% success response immediately. However, it might take some
%% time for the update to complete.
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

%% @doc Updates a hypervisor metadata, including its host, username, and
%% password.
%%
%% Specify which
%% hypervisor to update using the Amazon Resource Name (ARN) of the
%% hypervisor in your
%% request.
-spec update_hypervisor(aws_client:aws_client(), update_hypervisor_input()) ->
    {ok, update_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, update_hypervisor_errors(), tuple()}.
update_hypervisor(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hypervisor(Client, Input, []).

-spec update_hypervisor(aws_client:aws_client(), update_hypervisor_input(), proplists:proplist()) ->
    {ok, update_hypervisor_output(), tuple()} |
    {error, any()} |
    {error, update_hypervisor_errors(), tuple()}.
update_hypervisor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHypervisor">>, Input, Options).

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
    Client1 = Client#{service => <<"backup-gateway">>},
    Host = build_host(<<"backup-gateway">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"BackupOnPremises_v20210101.", Action/binary>>}
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
