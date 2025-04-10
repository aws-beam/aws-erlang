%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS Ground Station API Reference.
%%
%% AWS Ground Station is a fully managed service that
%% enables you to control satellite communications, downlink and process
%% satellite data, and
%% scale your satellite operations efficiently and cost-effectively without
%% having
%% to build or manage your own ground station infrastructure.
-module(aws_groundstation).

-export([cancel_contact/3,
         cancel_contact/4,
         create_config/2,
         create_config/3,
         create_dataflow_endpoint_group/2,
         create_dataflow_endpoint_group/3,
         create_ephemeris/2,
         create_ephemeris/3,
         create_mission_profile/2,
         create_mission_profile/3,
         delete_config/4,
         delete_config/5,
         delete_dataflow_endpoint_group/3,
         delete_dataflow_endpoint_group/4,
         delete_ephemeris/3,
         delete_ephemeris/4,
         delete_mission_profile/3,
         delete_mission_profile/4,
         describe_contact/2,
         describe_contact/4,
         describe_contact/5,
         describe_ephemeris/2,
         describe_ephemeris/4,
         describe_ephemeris/5,
         get_agent_configuration/2,
         get_agent_configuration/4,
         get_agent_configuration/5,
         get_config/3,
         get_config/5,
         get_config/6,
         get_dataflow_endpoint_group/2,
         get_dataflow_endpoint_group/4,
         get_dataflow_endpoint_group/5,
         get_minute_usage/2,
         get_minute_usage/3,
         get_mission_profile/2,
         get_mission_profile/4,
         get_mission_profile/5,
         get_satellite/2,
         get_satellite/4,
         get_satellite/5,
         list_configs/1,
         list_configs/3,
         list_configs/4,
         list_contacts/2,
         list_contacts/3,
         list_dataflow_endpoint_groups/1,
         list_dataflow_endpoint_groups/3,
         list_dataflow_endpoint_groups/4,
         list_ephemerides/2,
         list_ephemerides/3,
         list_ground_stations/1,
         list_ground_stations/3,
         list_ground_stations/4,
         list_mission_profiles/1,
         list_mission_profiles/3,
         list_mission_profiles/4,
         list_satellites/1,
         list_satellites/3,
         list_satellites/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_agent/2,
         register_agent/3,
         reserve_contact/2,
         reserve_contact/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent_status/3,
         update_agent_status/4,
         update_config/4,
         update_config/5,
         update_ephemeris/3,
         update_ephemeris/4,
         update_mission_profile/3,
         update_mission_profile/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_configs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configs_request() :: #{binary() => any()}.


%% Example:
%% register_agent_response() :: #{
%%   <<"agentId">> => string()
%% }
-type register_agent_response() :: #{binary() => any()}.


%% Example:
%% antenna_downlink_demod_decode_config() :: #{
%%   <<"decodeConfig">> => decode_config(),
%%   <<"demodulationConfig">> => demodulation_config(),
%%   <<"spectrumConfig">> => spectrum_config()
%% }
-type antenna_downlink_demod_decode_config() :: #{binary() => any()}.


%% Example:
%% component_status_data() :: #{
%%   <<"bytesReceived">> => [float()],
%%   <<"bytesSent">> => [float()],
%%   <<"capabilityArn">> => string(),
%%   <<"componentType">> => string(),
%%   <<"dataflowId">> => string(),
%%   <<"packetsDropped">> => [float()],
%%   <<"status">> => list(any())
%% }
-type component_status_data() :: #{binary() => any()}.


%% Example:
%% create_config_request() :: #{
%%   <<"configData">> => list(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_config_request() :: #{binary() => any()}.


%% Example:
%% get_minute_usage_request() :: #{
%%   <<"month">> => integer(),
%%   <<"year">> => integer()
%% }
-type get_minute_usage_request() :: #{binary() => any()}.


%% Example:
%% list_configs_response() :: #{
%%   <<"configList">> => list(config_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_configs_response() :: #{binary() => any()}.


%% Example:
%% dependency_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"parameterName">> => [string()]
%% }
-type dependency_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% dataflow_endpoint_config() :: #{
%%   <<"dataflowEndpointName">> => [string()],
%%   <<"dataflowEndpointRegion">> => [string()]
%% }
-type dataflow_endpoint_config() :: #{binary() => any()}.

%% Example:
%% get_satellite_request() :: #{}
-type get_satellite_request() :: #{}.

%% Example:
%% describe_contact_request() :: #{}
-type describe_contact_request() :: #{}.


%% Example:
%% get_agent_configuration_response() :: #{
%%   <<"agentId">> => string(),
%%   <<"taskingDocument">> => [string()]
%% }
-type get_agent_configuration_response() :: #{binary() => any()}.


%% Example:
%% dataflow_detail() :: #{
%%   <<"destination">> => destination(),
%%   <<"errorMessage">> => [string()],
%%   <<"source">> => source()
%% }
-type dataflow_detail() :: #{binary() => any()}.

%% Example:
%% get_config_request() :: #{}
-type get_config_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% describe_contact_response() :: #{
%%   <<"contactId">> => string(),
%%   <<"contactStatus">> => list(any()),
%%   <<"dataflowList">> => list(dataflow_detail()()),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"errorMessage">> => [string()],
%%   <<"groundStation">> => [string()],
%%   <<"maximumElevation">> => elevation(),
%%   <<"missionProfileArn">> => string(),
%%   <<"postPassEndTime">> => [non_neg_integer()],
%%   <<"prePassStartTime">> => [non_neg_integer()],
%%   <<"region">> => [string()],
%%   <<"satelliteArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"tags">> => map(),
%%   <<"visibilityEndTime">> => [non_neg_integer()],
%%   <<"visibilityStartTime">> => [non_neg_integer()]
%% }
-type describe_contact_response() :: #{binary() => any()}.


%% Example:
%% update_config_request() :: #{
%%   <<"configData">> => list(),
%%   <<"name">> => string()
%% }
-type update_config_request() :: #{binary() => any()}.


%% Example:
%% register_agent_request() :: #{
%%   <<"agentDetails">> := agent_details(),
%%   <<"discoveryData">> := discovery_data(),
%%   <<"tags">> => map()
%% }
-type register_agent_request() :: #{binary() => any()}.


%% Example:
%% tracking_config() :: #{
%%   <<"autotrack">> => list(any())
%% }
-type tracking_config() :: #{binary() => any()}.


%% Example:
%% ephemeris_description() :: #{
%%   <<"ephemerisData">> => string(),
%%   <<"sourceS3Object">> => s3_object()
%% }
-type ephemeris_description() :: #{binary() => any()}.


%% Example:
%% spectrum_config() :: #{
%%   <<"bandwidth">> => frequency_bandwidth(),
%%   <<"centerFrequency">> => frequency(),
%%   <<"polarization">> => list(any())
%% }
-type spectrum_config() :: #{binary() => any()}.


%% Example:
%% socket_address() :: #{
%%   <<"name">> => [string()],
%%   <<"port">> => [integer()]
%% }
-type socket_address() :: #{binary() => any()}.


%% Example:
%% endpoint_details() :: #{
%%   <<"awsGroundStationAgentEndpoint">> => aws_ground_station_agent_endpoint(),
%%   <<"endpoint">> => dataflow_endpoint(),
%%   <<"healthReasons">> => list(list(any())()),
%%   <<"healthStatus">> => list(any()),
%%   <<"securityDetails">> => security_details()
%% }
-type endpoint_details() :: #{binary() => any()}.


%% Example:
%% get_config_response() :: #{
%%   <<"configArn">> => string(),
%%   <<"configData">> => list(),
%%   <<"configId">> => [string()],
%%   <<"configType">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"tags">> => map()
%% }
-type get_config_response() :: #{binary() => any()}.


%% Example:
%% ephemeris_item() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"ephemerisId">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"sourceS3Object">> => s3_object(),
%%   <<"status">> => list(any())
%% }
-type ephemeris_item() :: #{binary() => any()}.


%% Example:
%% ranged_socket_address() :: #{
%%   <<"name">> => string(),
%%   <<"portRange">> => integer_range()
%% }
-type ranged_socket_address() :: #{binary() => any()}.


%% Example:
%% antenna_uplink_config() :: #{
%%   <<"spectrumConfig">> => uplink_spectrum_config(),
%%   <<"targetEirp">> => eirp(),
%%   <<"transmitDisabled">> => [boolean()]
%% }
-type antenna_uplink_config() :: #{binary() => any()}.


%% Example:
%% ephemeris_meta_data() :: #{
%%   <<"ephemerisId">> => string(),
%%   <<"epoch">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"source">> => list(any())
%% }
-type ephemeris_meta_data() :: #{binary() => any()}.


%% Example:
%% uplink_echo_config() :: #{
%%   <<"antennaUplinkConfigArn">> => string(),
%%   <<"enabled">> => [boolean()]
%% }
-type uplink_echo_config() :: #{binary() => any()}.


%% Example:
%% ranged_connection_details() :: #{
%%   <<"mtu">> => [integer()],
%%   <<"socketAddress">> => ranged_socket_address()
%% }
-type ranged_connection_details() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"version">> => string()
%% }
-type s3_object() :: #{binary() => any()}.


%% Example:
%% config_list_item() :: #{
%%   <<"configArn">> => string(),
%%   <<"configId">> => [string()],
%%   <<"configType">> => list(any()),
%%   <<"name">> => [string()]
%% }
-type config_list_item() :: #{binary() => any()}.

%% Example:
%% cancel_contact_request() :: #{}
-type cancel_contact_request() :: #{}.


%% Example:
%% agent_details() :: #{
%%   <<"agentCpuCores">> => list([integer()]()),
%%   <<"agentVersion">> => string(),
%%   <<"componentVersions">> => list(component_version()()),
%%   <<"instanceId">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"reservedCpuCores">> => list([integer()]())
%% }
-type agent_details() :: #{binary() => any()}.


%% Example:
%% decode_config() :: #{
%%   <<"unvalidatedJSON">> => string()
%% }
-type decode_config() :: #{binary() => any()}.


%% Example:
%% reserve_contact_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"groundStation">> => string(),
%%   <<"missionProfileArn">> => string(),
%%   <<"satelliteArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"tags">> => map()
%% }
-type reserve_contact_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> => list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% aws_ground_station_agent_endpoint() :: #{
%%   <<"agentStatus">> => list(any()),
%%   <<"auditResults">> => list(any()),
%%   <<"egressAddress">> => connection_details(),
%%   <<"ingressAddress">> => ranged_connection_details(),
%%   <<"name">> => string()
%% }
-type aws_ground_station_agent_endpoint() :: #{binary() => any()}.

%% Example:
%% delete_config_request() :: #{}
-type delete_config_request() :: #{}.


%% Example:
%% list_dataflow_endpoint_groups_response() :: #{
%%   <<"dataflowEndpointGroupList">> => list(dataflow_endpoint_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_dataflow_endpoint_groups_response() :: #{binary() => any()}.


%% Example:
%% satellite_list_item() :: #{
%%   <<"currentEphemeris">> => ephemeris_meta_data(),
%%   <<"groundStations">> => list(string()()),
%%   <<"noradSatelliteID">> => integer(),
%%   <<"satelliteArn">> => string(),
%%   <<"satelliteId">> => string()
%% }
-type satellite_list_item() :: #{binary() => any()}.


%% Example:
%% config_id_response() :: #{
%%   <<"configArn">> => string(),
%%   <<"configId">> => [string()],
%%   <<"configType">> => list(any())
%% }
-type config_id_response() :: #{binary() => any()}.


%% Example:
%% dataflow_endpoint_list_item() :: #{
%%   <<"dataflowEndpointGroupArn">> => string(),
%%   <<"dataflowEndpointGroupId">> => string()
%% }
-type dataflow_endpoint_list_item() :: #{binary() => any()}.


%% Example:
%% frequency() :: #{
%%   <<"units">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type frequency() :: #{binary() => any()}.


%% Example:
%% integer_range() :: #{
%%   <<"maximum">> => [integer()],
%%   <<"minimum">> => [integer()]
%% }
-type integer_range() :: #{binary() => any()}.


%% Example:
%% mission_profile_id_response() :: #{
%%   <<"missionProfileId">> => string()
%% }
-type mission_profile_id_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_mission_profiles_response() :: #{
%%   <<"missionProfileList">> => list(mission_profile_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_mission_profiles_response() :: #{binary() => any()}.


%% Example:
%% list_mission_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_mission_profiles_request() :: #{binary() => any()}.


%% Example:
%% update_agent_status_response() :: #{
%%   <<"agentId">> := string()
%% }
-type update_agent_status_response() :: #{binary() => any()}.


%% Example:
%% contact_data() :: #{
%%   <<"contactId">> => string(),
%%   <<"contactStatus">> => list(any()),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"errorMessage">> => [string()],
%%   <<"groundStation">> => [string()],
%%   <<"maximumElevation">> => elevation(),
%%   <<"missionProfileArn">> => string(),
%%   <<"postPassEndTime">> => [non_neg_integer()],
%%   <<"prePassStartTime">> => [non_neg_integer()],
%%   <<"region">> => [string()],
%%   <<"satelliteArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"tags">> => map(),
%%   <<"visibilityEndTime">> => [non_neg_integer()],
%%   <<"visibilityStartTime">> => [non_neg_integer()]
%% }
-type contact_data() :: #{binary() => any()}.


%% Example:
%% ground_station_data() :: #{
%%   <<"groundStationId">> => string(),
%%   <<"groundStationName">> => string(),
%%   <<"region">> => string()
%% }
-type ground_station_data() :: #{binary() => any()}.

%% Example:
%% get_mission_profile_request() :: #{}
-type get_mission_profile_request() :: #{}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"parameterName">> => [string()]
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% demodulation_config() :: #{
%%   <<"unvalidatedJSON">> => string()
%% }
-type demodulation_config() :: #{binary() => any()}.


%% Example:
%% contact_id_response() :: #{
%%   <<"contactId">> => string()
%% }
-type contact_id_response() :: #{binary() => any()}.


%% Example:
%% update_agent_status_request() :: #{
%%   <<"aggregateStatus">> := aggregate_status(),
%%   <<"componentStatuses">> := list(component_status_data()()),
%%   <<"taskId">> := string()
%% }
-type update_agent_status_request() :: #{binary() => any()}.


%% Example:
%% get_dataflow_endpoint_group_response() :: #{
%%   <<"contactPostPassDurationSeconds">> => integer(),
%%   <<"contactPrePassDurationSeconds">> => integer(),
%%   <<"dataflowEndpointGroupArn">> => string(),
%%   <<"dataflowEndpointGroupId">> => string(),
%%   <<"endpointsDetails">> => list(endpoint_details()()),
%%   <<"tags">> => map()
%% }
-type get_dataflow_endpoint_group_response() :: #{binary() => any()}.


%% Example:
%% aggregate_status() :: #{
%%   <<"signatureMap">> => map(),
%%   <<"status">> => list(any())
%% }
-type aggregate_status() :: #{binary() => any()}.


%% Example:
%% update_ephemeris_request() :: #{
%%   <<"enabled">> := [boolean()],
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type update_ephemeris_request() :: #{binary() => any()}.


%% Example:
%% ephemeris_id_response() :: #{
%%   <<"ephemerisId">> => string()
%% }
-type ephemeris_id_response() :: #{binary() => any()}.


%% Example:
%% dataflow_endpoint() :: #{
%%   <<"address">> => socket_address(),
%%   <<"mtu">> => [integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type dataflow_endpoint() :: #{binary() => any()}.


%% Example:
%% get_minute_usage_response() :: #{
%%   <<"estimatedMinutesRemaining">> => [integer()],
%%   <<"isReservedMinutesCustomer">> => [boolean()],
%%   <<"totalReservedMinuteAllocation">> => [integer()],
%%   <<"totalScheduledMinutes">> => [integer()],
%%   <<"upcomingMinutesScheduled">> => [integer()]
%% }
-type get_minute_usage_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_ephemeris_request() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"ephemeris">> => list(),
%%   <<"expirationTime">> => [non_neg_integer()],
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"priority">> => integer(),
%%   <<"satelliteId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_ephemeris_request() :: #{binary() => any()}.


%% Example:
%% dataflow_endpoint_group_id_response() :: #{
%%   <<"dataflowEndpointGroupId">> => string()
%% }
-type dataflow_endpoint_group_id_response() :: #{binary() => any()}.


%% Example:
%% component_version() :: #{
%%   <<"componentType">> => string(),
%%   <<"versions">> => list(string()())
%% }
-type component_version() :: #{binary() => any()}.


%% Example:
%% list_ground_stations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"satelliteId">> => string()
%% }
-type list_ground_stations_request() :: #{binary() => any()}.


%% Example:
%% list_ephemerides_response() :: #{
%%   <<"ephemerides">> => list(ephemeris_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_ephemerides_response() :: #{binary() => any()}.


%% Example:
%% source() :: #{
%%   <<"configDetails">> => list(),
%%   <<"configId">> => [string()],
%%   <<"configType">> => list(any()),
%%   <<"dataflowSourceRegion">> => [string()]
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% list_contacts_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"groundStation">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"missionProfileArn">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"satelliteArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"statusList">> => list(list(any())())
%% }
-type list_contacts_request() :: #{binary() => any()}.

%% Example:
%% delete_ephemeris_request() :: #{}
-type delete_ephemeris_request() :: #{}.


%% Example:
%% mission_profile_list_item() :: #{
%%   <<"missionProfileArn">> => string(),
%%   <<"missionProfileId">> => string(),
%%   <<"name">> => string(),
%%   <<"region">> => string()
%% }
-type mission_profile_list_item() :: #{binary() => any()}.


%% Example:
%% o_e_m_ephemeris() :: #{
%%   <<"oemData">> => string(),
%%   <<"s3Object">> => s3_object()
%% }
-type o_e_m_ephemeris() :: #{binary() => any()}.


%% Example:
%% uplink_spectrum_config() :: #{
%%   <<"centerFrequency">> => frequency(),
%%   <<"polarization">> => list(any())
%% }
-type uplink_spectrum_config() :: #{binary() => any()}.

%% Example:
%% delete_mission_profile_request() :: #{}
-type delete_mission_profile_request() :: #{}.


%% Example:
%% list_contacts_response() :: #{
%%   <<"contactList">> => list(contact_data()()),
%%   <<"nextToken">> => string()
%% }
-type list_contacts_response() :: #{binary() => any()}.

%% Example:
%% delete_dataflow_endpoint_group_request() :: #{}
-type delete_dataflow_endpoint_group_request() :: #{}.


%% Example:
%% time_range() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type time_range() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"parameterName">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% get_satellite_response() :: #{
%%   <<"currentEphemeris">> => ephemeris_meta_data(),
%%   <<"groundStations">> => list(string()()),
%%   <<"noradSatelliteID">> => integer(),
%%   <<"satelliteArn">> => string(),
%%   <<"satelliteId">> => string()
%% }
-type get_satellite_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_satellites_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"satellites">> => list(satellite_list_item()())
%% }
-type list_satellites_response() :: #{binary() => any()}.

%% Example:
%% describe_ephemeris_request() :: #{}
-type describe_ephemeris_request() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% destination() :: #{
%%   <<"configDetails">> => list(),
%%   <<"configId">> => string(),
%%   <<"configType">> => list(any()),
%%   <<"dataflowDestinationRegion">> => [string()]
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% t_l_e_ephemeris() :: #{
%%   <<"s3Object">> => s3_object(),
%%   <<"tleData">> => list(t_l_e_data()())
%% }
-type t_l_e_ephemeris() :: #{binary() => any()}.


%% Example:
%% security_details() :: #{
%%   <<"roleArn">> => string(),
%%   <<"securityGroupIds">> => list([string()]()),
%%   <<"subnetIds">> => list([string()]())
%% }
-type security_details() :: #{binary() => any()}.


%% Example:
%% s3_recording_config() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"prefix">> => string(),
%%   <<"roleArn">> => string()
%% }
-type s3_recording_config() :: #{binary() => any()}.


%% Example:
%% list_ephemerides_request() :: #{
%%   <<"endTime">> := [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"satelliteId">> := string(),
%%   <<"startTime">> := [non_neg_integer()],
%%   <<"statusList">> => list(list(any())())
%% }
-type list_ephemerides_request() :: #{binary() => any()}.


%% Example:
%% s3_recording_details() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"keyTemplate">> => [string()]
%% }
-type s3_recording_details() :: #{binary() => any()}.


%% Example:
%% antenna_demod_decode_details() :: #{
%%   <<"outputNode">> => [string()]
%% }
-type antenna_demod_decode_details() :: #{binary() => any()}.


%% Example:
%% t_l_e_data() :: #{
%%   <<"tleLine1">> => string(),
%%   <<"tleLine2">> => string(),
%%   <<"validTimeRange">> => time_range()
%% }
-type t_l_e_data() :: #{binary() => any()}.


%% Example:
%% frequency_bandwidth() :: #{
%%   <<"units">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type frequency_bandwidth() :: #{binary() => any()}.


%% Example:
%% antenna_downlink_config() :: #{
%%   <<"spectrumConfig">> => spectrum_config()
%% }
-type antenna_downlink_config() :: #{binary() => any()}.


%% Example:
%% list_dataflow_endpoint_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dataflow_endpoint_groups_request() :: #{binary() => any()}.


%% Example:
%% eirp() :: #{
%%   <<"units">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type eirp() :: #{binary() => any()}.


%% Example:
%% list_ground_stations_response() :: #{
%%   <<"groundStationList">> => list(ground_station_data()()),
%%   <<"nextToken">> => string()
%% }
-type list_ground_stations_response() :: #{binary() => any()}.


%% Example:
%% get_mission_profile_response() :: #{
%%   <<"contactPostPassDurationSeconds">> => integer(),
%%   <<"contactPrePassDurationSeconds">> => integer(),
%%   <<"dataflowEdges">> => list(list(string()())()),
%%   <<"minimumViableContactDurationSeconds">> => integer(),
%%   <<"missionProfileArn">> => string(),
%%   <<"missionProfileId">> => string(),
%%   <<"name">> => string(),
%%   <<"region">> => string(),
%%   <<"streamsKmsKey">> => list(),
%%   <<"streamsKmsRole">> => string(),
%%   <<"tags">> => map(),
%%   <<"trackingConfigArn">> => string()
%% }
-type get_mission_profile_response() :: #{binary() => any()}.


%% Example:
%% connection_details() :: #{
%%   <<"mtu">> => [integer()],
%%   <<"socketAddress">> => socket_address()
%% }
-type connection_details() :: #{binary() => any()}.


%% Example:
%% discovery_data() :: #{
%%   <<"capabilityArns">> => list(string()()),
%%   <<"privateIpAddresses">> => list(string()()),
%%   <<"publicIpAddresses">> => list(string()())
%% }
-type discovery_data() :: #{binary() => any()}.


%% Example:
%% describe_ephemeris_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"ephemerisId">> => string(),
%%   <<"invalidReason">> => list(any()),
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"satelliteId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"suppliedData">> => list(),
%%   <<"tags">> => map()
%% }
-type describe_ephemeris_response() :: #{binary() => any()}.


%% Example:
%% list_satellites_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_satellites_request() :: #{binary() => any()}.


%% Example:
%% create_dataflow_endpoint_group_request() :: #{
%%   <<"contactPostPassDurationSeconds">> => integer(),
%%   <<"contactPrePassDurationSeconds">> => integer(),
%%   <<"endpointDetails">> => list(endpoint_details()()),
%%   <<"tags">> => map()
%% }
-type create_dataflow_endpoint_group_request() :: #{binary() => any()}.


%% Example:
%% elevation() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type elevation() :: #{binary() => any()}.

%% Example:
%% get_dataflow_endpoint_group_request() :: #{}
-type get_dataflow_endpoint_group_request() :: #{}.

%% Example:
%% get_agent_configuration_request() :: #{}
-type get_agent_configuration_request() :: #{}.


%% Example:
%% create_mission_profile_request() :: #{
%%   <<"contactPostPassDurationSeconds">> => integer(),
%%   <<"contactPrePassDurationSeconds">> => integer(),
%%   <<"dataflowEdges">> => list(list(string()())()),
%%   <<"minimumViableContactDurationSeconds">> => integer(),
%%   <<"name">> => string(),
%%   <<"streamsKmsKey">> => list(),
%%   <<"streamsKmsRole">> => string(),
%%   <<"tags">> => map(),
%%   <<"trackingConfigArn">> => string()
%% }
-type create_mission_profile_request() :: #{binary() => any()}.


%% Example:
%% update_mission_profile_request() :: #{
%%   <<"contactPostPassDurationSeconds">> => integer(),
%%   <<"contactPrePassDurationSeconds">> => integer(),
%%   <<"dataflowEdges">> => list(list(string()())()),
%%   <<"minimumViableContactDurationSeconds">> => integer(),
%%   <<"name">> => string(),
%%   <<"streamsKmsKey">> => list(),
%%   <<"streamsKmsRole">> => string(),
%%   <<"trackingConfigArn">> => string()
%% }
-type update_mission_profile_request() :: #{binary() => any()}.

-type cancel_contact_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type create_config_errors() ::
    invalid_parameter_exception() | 
    resource_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type create_dataflow_endpoint_group_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type create_ephemeris_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type create_mission_profile_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type delete_config_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type delete_dataflow_endpoint_group_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type delete_ephemeris_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type delete_mission_profile_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type describe_contact_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type describe_ephemeris_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_agent_configuration_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_config_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_dataflow_endpoint_group_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_minute_usage_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_mission_profile_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_satellite_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_configs_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_contacts_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_dataflow_endpoint_groups_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_ephemerides_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_ground_stations_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_mission_profiles_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_satellites_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type list_tags_for_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type register_agent_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type reserve_contact_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type tag_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type untag_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type update_agent_status_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type update_config_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type update_ephemeris_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type update_mission_profile_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a contact with a specified contact ID.
-spec cancel_contact(aws_client:aws_client(), binary() | list(), cancel_contact_request()) ->
    {ok, contact_id_response(), tuple()} |
    {error, any()} |
    {error, cancel_contact_errors(), tuple()}.
cancel_contact(Client, ContactId, Input) ->
    cancel_contact(Client, ContactId, Input, []).

-spec cancel_contact(aws_client:aws_client(), binary() | list(), cancel_contact_request(), proplists:proplist()) ->
    {ok, contact_id_response(), tuple()} |
    {error, any()} |
    {error, cancel_contact_errors(), tuple()}.
cancel_contact(Client, ContactId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Config' with the specified `configData'
%% parameters.
%%
%% Only one type of `configData' can be specified.
-spec create_config(aws_client:aws_client(), create_config_request()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, create_config_errors(), tuple()}.
create_config(Client, Input) ->
    create_config(Client, Input, []).

-spec create_config(aws_client:aws_client(), create_config_request(), proplists:proplist()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, create_config_errors(), tuple()}.
create_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `DataflowEndpoint' group containing the specified list
%% of `DataflowEndpoint' objects.
%%
%% The `name' field in each endpoint is used in your mission profile
%% `DataflowEndpointConfig'
%% to specify which endpoints to use during a contact.
%%
%% When a contact uses multiple `DataflowEndpointConfig' objects, each
%% `Config'
%% must match a `DataflowEndpoint' in the same group.
-spec create_dataflow_endpoint_group(aws_client:aws_client(), create_dataflow_endpoint_group_request()) ->
    {ok, dataflow_endpoint_group_id_response(), tuple()} |
    {error, any()} |
    {error, create_dataflow_endpoint_group_errors(), tuple()}.
create_dataflow_endpoint_group(Client, Input) ->
    create_dataflow_endpoint_group(Client, Input, []).

-spec create_dataflow_endpoint_group(aws_client:aws_client(), create_dataflow_endpoint_group_request(), proplists:proplist()) ->
    {ok, dataflow_endpoint_group_id_response(), tuple()} |
    {error, any()} |
    {error, create_dataflow_endpoint_group_errors(), tuple()}.
create_dataflow_endpoint_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dataflowEndpointGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Ephemeris with the specified `EphemerisData'.
-spec create_ephemeris(aws_client:aws_client(), create_ephemeris_request()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, create_ephemeris_errors(), tuple()}.
create_ephemeris(Client, Input) ->
    create_ephemeris(Client, Input, []).

-spec create_ephemeris(aws_client:aws_client(), create_ephemeris_request(), proplists:proplist()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, create_ephemeris_errors(), tuple()}.
create_ephemeris(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ephemeris"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mission profile.
%%
%% `dataflowEdges' is a list of lists of strings. Each lower level list
%% of strings
%% has two elements: a from ARN and a to ARN.
-spec create_mission_profile(aws_client:aws_client(), create_mission_profile_request()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, create_mission_profile_errors(), tuple()}.
create_mission_profile(Client, Input) ->
    create_mission_profile(Client, Input, []).

-spec create_mission_profile(aws_client:aws_client(), create_mission_profile_request(), proplists:proplist()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, create_mission_profile_errors(), tuple()}.
create_mission_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/missionprofile"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Config'.
-spec delete_config(aws_client:aws_client(), binary() | list(), binary() | list(), delete_config_request()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, delete_config_errors(), tuple()}.
delete_config(Client, ConfigId, ConfigType, Input) ->
    delete_config(Client, ConfigId, ConfigType, Input, []).

-spec delete_config(aws_client:aws_client(), binary() | list(), binary() | list(), delete_config_request(), proplists:proplist()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, delete_config_errors(), tuple()}.
delete_config(Client, ConfigId, ConfigType, Input0, Options0) ->
    Method = delete,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataflow endpoint group.
-spec delete_dataflow_endpoint_group(aws_client:aws_client(), binary() | list(), delete_dataflow_endpoint_group_request()) ->
    {ok, dataflow_endpoint_group_id_response(), tuple()} |
    {error, any()} |
    {error, delete_dataflow_endpoint_group_errors(), tuple()}.
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input) ->
    delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input, []).

-spec delete_dataflow_endpoint_group(aws_client:aws_client(), binary() | list(), delete_dataflow_endpoint_group_request(), proplists:proplist()) ->
    {ok, dataflow_endpoint_group_id_response(), tuple()} |
    {error, any()} |
    {error, delete_dataflow_endpoint_group_errors(), tuple()}.
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an ephemeris
-spec delete_ephemeris(aws_client:aws_client(), binary() | list(), delete_ephemeris_request()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, delete_ephemeris_errors(), tuple()}.
delete_ephemeris(Client, EphemerisId, Input) ->
    delete_ephemeris(Client, EphemerisId, Input, []).

-spec delete_ephemeris(aws_client:aws_client(), binary() | list(), delete_ephemeris_request(), proplists:proplist()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, delete_ephemeris_errors(), tuple()}.
delete_ephemeris(Client, EphemerisId, Input0, Options0) ->
    Method = delete,
    Path = ["/ephemeris/", aws_util:encode_uri(EphemerisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a mission profile.
-spec delete_mission_profile(aws_client:aws_client(), binary() | list(), delete_mission_profile_request()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, delete_mission_profile_errors(), tuple()}.
delete_mission_profile(Client, MissionProfileId, Input) ->
    delete_mission_profile(Client, MissionProfileId, Input, []).

-spec delete_mission_profile(aws_client:aws_client(), binary() | list(), delete_mission_profile_request(), proplists:proplist()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, delete_mission_profile_errors(), tuple()}.
delete_mission_profile(Client, MissionProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an existing contact.
-spec describe_contact(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId)
  when is_map(Client) ->
    describe_contact(Client, ContactId, #{}, #{}).

-spec describe_contact(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact(Client, ContactId, QueryMap, HeadersMap, []).

-spec describe_contact(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_contact_response(), tuple()} |
    {error, any()} |
    {error, describe_contact_errors(), tuple()}.
describe_contact(Client, ContactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing ephemeris.
-spec describe_ephemeris(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_ephemeris_response(), tuple()} |
    {error, any()} |
    {error, describe_ephemeris_errors(), tuple()}.
describe_ephemeris(Client, EphemerisId)
  when is_map(Client) ->
    describe_ephemeris(Client, EphemerisId, #{}, #{}).

-spec describe_ephemeris(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_ephemeris_response(), tuple()} |
    {error, any()} |
    {error, describe_ephemeris_errors(), tuple()}.
describe_ephemeris(Client, EphemerisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ephemeris(Client, EphemerisId, QueryMap, HeadersMap, []).

-spec describe_ephemeris(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ephemeris_response(), tuple()} |
    {error, any()} |
    {error, describe_ephemeris_errors(), tuple()}.
describe_ephemeris(Client, EphemerisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ephemeris/", aws_util:encode_uri(EphemerisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% For use by AWS Ground Station Agent and shouldn't be called directly.
%%
%% Gets the latest configuration information for a registered agent.
-spec get_agent_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_agent_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_agent_configuration_errors(), tuple()}.
get_agent_configuration(Client, AgentId)
  when is_map(Client) ->
    get_agent_configuration(Client, AgentId, #{}, #{}).

-spec get_agent_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_agent_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_agent_configuration_errors(), tuple()}.
get_agent_configuration(Client, AgentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_configuration(Client, AgentId, QueryMap, HeadersMap, []).

-spec get_agent_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_agent_configuration_errors(), tuple()}.
get_agent_configuration(Client, AgentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agent/", aws_util:encode_uri(AgentId), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `Config' information.
%%
%% Only one `Config' response can be returned.
-spec get_config(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_config_response(), tuple()} |
    {error, any()} |
    {error, get_config_errors(), tuple()}.
get_config(Client, ConfigId, ConfigType)
  when is_map(Client) ->
    get_config(Client, ConfigId, ConfigType, #{}, #{}).

-spec get_config(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_config_response(), tuple()} |
    {error, any()} |
    {error, get_config_errors(), tuple()}.
get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap, []).

-spec get_config(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_config_response(), tuple()} |
    {error, any()} |
    {error, get_config_errors(), tuple()}.
get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the dataflow endpoint group.
-spec get_dataflow_endpoint_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dataflow_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, get_dataflow_endpoint_group_errors(), tuple()}.
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId)
  when is_map(Client) ->
    get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, #{}, #{}).

-spec get_dataflow_endpoint_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dataflow_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, get_dataflow_endpoint_group_errors(), tuple()}.
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap, []).

-spec get_dataflow_endpoint_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dataflow_endpoint_group_response(), tuple()} |
    {error, any()} |
    {error, get_dataflow_endpoint_group_errors(), tuple()}.
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the number of reserved minutes used by account.
-spec get_minute_usage(aws_client:aws_client(), get_minute_usage_request()) ->
    {ok, get_minute_usage_response(), tuple()} |
    {error, any()} |
    {error, get_minute_usage_errors(), tuple()}.
get_minute_usage(Client, Input) ->
    get_minute_usage(Client, Input, []).

-spec get_minute_usage(aws_client:aws_client(), get_minute_usage_request(), proplists:proplist()) ->
    {ok, get_minute_usage_response(), tuple()} |
    {error, any()} |
    {error, get_minute_usage_errors(), tuple()}.
get_minute_usage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/minute-usage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a mission profile.
-spec get_mission_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_mission_profile_response(), tuple()} |
    {error, any()} |
    {error, get_mission_profile_errors(), tuple()}.
get_mission_profile(Client, MissionProfileId)
  when is_map(Client) ->
    get_mission_profile(Client, MissionProfileId, #{}, #{}).

-spec get_mission_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_mission_profile_response(), tuple()} |
    {error, any()} |
    {error, get_mission_profile_errors(), tuple()}.
get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap, []).

-spec get_mission_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_mission_profile_response(), tuple()} |
    {error, any()} |
    {error, get_mission_profile_errors(), tuple()}.
get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a satellite.
-spec get_satellite(aws_client:aws_client(), binary() | list()) ->
    {ok, get_satellite_response(), tuple()} |
    {error, any()} |
    {error, get_satellite_errors(), tuple()}.
get_satellite(Client, SatelliteId)
  when is_map(Client) ->
    get_satellite(Client, SatelliteId, #{}, #{}).

-spec get_satellite(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_satellite_response(), tuple()} |
    {error, any()} |
    {error, get_satellite_errors(), tuple()}.
get_satellite(Client, SatelliteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_satellite(Client, SatelliteId, QueryMap, HeadersMap, []).

-spec get_satellite(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_satellite_response(), tuple()} |
    {error, any()} |
    {error, get_satellite_errors(), tuple()}.
get_satellite(Client, SatelliteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/satellite/", aws_util:encode_uri(SatelliteId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `Config' objects.
-spec list_configs(aws_client:aws_client()) ->
    {ok, list_configs_response(), tuple()} |
    {error, any()} |
    {error, list_configs_errors(), tuple()}.
list_configs(Client)
  when is_map(Client) ->
    list_configs(Client, #{}, #{}).

-spec list_configs(aws_client:aws_client(), map(), map()) ->
    {ok, list_configs_response(), tuple()} |
    {error, any()} |
    {error, list_configs_errors(), tuple()}.
list_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configs(Client, QueryMap, HeadersMap, []).

-spec list_configs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configs_response(), tuple()} |
    {error, any()} |
    {error, list_configs_errors(), tuple()}.
list_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of contacts.
%%
%% If `statusList' contains AVAILABLE, the request must include
%% `groundStation', `missionprofileArn', and `satelliteArn'.
-spec list_contacts(aws_client:aws_client(), list_contacts_request()) ->
    {ok, list_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, Input) ->
    list_contacts(Client, Input, []).

-spec list_contacts(aws_client:aws_client(), list_contacts_request(), proplists:proplist()) ->
    {ok, list_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contacts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of `DataflowEndpoint' groups.
-spec list_dataflow_endpoint_groups(aws_client:aws_client()) ->
    {ok, list_dataflow_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_dataflow_endpoint_groups_errors(), tuple()}.
list_dataflow_endpoint_groups(Client)
  when is_map(Client) ->
    list_dataflow_endpoint_groups(Client, #{}, #{}).

-spec list_dataflow_endpoint_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_dataflow_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_dataflow_endpoint_groups_errors(), tuple()}.
list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap, []).

-spec list_dataflow_endpoint_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_dataflow_endpoint_groups_response(), tuple()} |
    {error, any()} |
    {error, list_dataflow_endpoint_groups_errors(), tuple()}.
list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataflowEndpointGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List existing ephemerides.
-spec list_ephemerides(aws_client:aws_client(), list_ephemerides_request()) ->
    {ok, list_ephemerides_response(), tuple()} |
    {error, any()} |
    {error, list_ephemerides_errors(), tuple()}.
list_ephemerides(Client, Input) ->
    list_ephemerides(Client, Input, []).

-spec list_ephemerides(aws_client:aws_client(), list_ephemerides_request(), proplists:proplist()) ->
    {ok, list_ephemerides_response(), tuple()} |
    {error, any()} |
    {error, list_ephemerides_errors(), tuple()}.
list_ephemerides(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ephemerides"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of ground stations.
-spec list_ground_stations(aws_client:aws_client()) ->
    {ok, list_ground_stations_response(), tuple()} |
    {error, any()} |
    {error, list_ground_stations_errors(), tuple()}.
list_ground_stations(Client)
  when is_map(Client) ->
    list_ground_stations(Client, #{}, #{}).

-spec list_ground_stations(aws_client:aws_client(), map(), map()) ->
    {ok, list_ground_stations_response(), tuple()} |
    {error, any()} |
    {error, list_ground_stations_errors(), tuple()}.
list_ground_stations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ground_stations(Client, QueryMap, HeadersMap, []).

-spec list_ground_stations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ground_stations_response(), tuple()} |
    {error, any()} |
    {error, list_ground_stations_errors(), tuple()}.
list_ground_stations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/groundstation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"satelliteId">>, maps:get(<<"satelliteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of mission profiles.
-spec list_mission_profiles(aws_client:aws_client()) ->
    {ok, list_mission_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_mission_profiles_errors(), tuple()}.
list_mission_profiles(Client)
  when is_map(Client) ->
    list_mission_profiles(Client, #{}, #{}).

-spec list_mission_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_mission_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_mission_profiles_errors(), tuple()}.
list_mission_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_mission_profiles(Client, QueryMap, HeadersMap, []).

-spec list_mission_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_mission_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_mission_profiles_errors(), tuple()}.
list_mission_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/missionprofile"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of satellites.
-spec list_satellites(aws_client:aws_client()) ->
    {ok, list_satellites_response(), tuple()} |
    {error, any()} |
    {error, list_satellites_errors(), tuple()}.
list_satellites(Client)
  when is_map(Client) ->
    list_satellites(Client, #{}, #{}).

-spec list_satellites(aws_client:aws_client(), map(), map()) ->
    {ok, list_satellites_response(), tuple()} |
    {error, any()} |
    {error, list_satellites_errors(), tuple()}.
list_satellites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_satellites(Client, QueryMap, HeadersMap, []).

-spec list_satellites(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_satellites_response(), tuple()} |
    {error, any()} |
    {error, list_satellites_errors(), tuple()}.
list_satellites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/satellite"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% For use by AWS Ground Station Agent and shouldn't be called directly.
%%
%% Registers a new agent with AWS Ground Station.
-spec register_agent(aws_client:aws_client(), register_agent_request()) ->
    {ok, register_agent_response(), tuple()} |
    {error, any()} |
    {error, register_agent_errors(), tuple()}.
register_agent(Client, Input) ->
    register_agent(Client, Input, []).

-spec register_agent(aws_client:aws_client(), register_agent_request(), proplists:proplist()) ->
    {ok, register_agent_response(), tuple()} |
    {error, any()} |
    {error, register_agent_errors(), tuple()}.
register_agent(Client, Input0, Options0) ->
    Method = post,
    Path = ["/agent"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Reserves a contact using specified parameters.
-spec reserve_contact(aws_client:aws_client(), reserve_contact_request()) ->
    {ok, contact_id_response(), tuple()} |
    {error, any()} |
    {error, reserve_contact_errors(), tuple()}.
reserve_contact(Client, Input) ->
    reserve_contact(Client, Input, []).

-spec reserve_contact(aws_client:aws_client(), reserve_contact_request(), proplists:proplist()) ->
    {ok, contact_id_response(), tuple()} |
    {error, any()} |
    {error, reserve_contact_errors(), tuple()}.
reserve_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns a tag to a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deassigns a resource tag.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% For use by AWS Ground Station Agent and shouldn't be called directly.
%%
%% Update the status of the agent.
-spec update_agent_status(aws_client:aws_client(), binary() | list(), update_agent_status_request()) ->
    {ok, update_agent_status_response(), tuple()} |
    {error, any()} |
    {error, update_agent_status_errors(), tuple()}.
update_agent_status(Client, AgentId, Input) ->
    update_agent_status(Client, AgentId, Input, []).

-spec update_agent_status(aws_client:aws_client(), binary() | list(), update_agent_status_request(), proplists:proplist()) ->
    {ok, update_agent_status_response(), tuple()} |
    {error, any()} |
    {error, update_agent_status_errors(), tuple()}.
update_agent_status(Client, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agent/", aws_util:encode_uri(AgentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the `Config' used when scheduling contacts.
%%
%% Updating a `Config' will not update the execution parameters
%% for existing future contacts scheduled with this `Config'.
-spec update_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_config_request()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, update_config_errors(), tuple()}.
update_config(Client, ConfigId, ConfigType, Input) ->
    update_config(Client, ConfigId, ConfigType, Input, []).

-spec update_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_config_request(), proplists:proplist()) ->
    {ok, config_id_response(), tuple()} |
    {error, any()} |
    {error, update_config_errors(), tuple()}.
update_config(Client, ConfigId, ConfigType, Input0, Options0) ->
    Method = put,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing ephemeris
-spec update_ephemeris(aws_client:aws_client(), binary() | list(), update_ephemeris_request()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, update_ephemeris_errors(), tuple()}.
update_ephemeris(Client, EphemerisId, Input) ->
    update_ephemeris(Client, EphemerisId, Input, []).

-spec update_ephemeris(aws_client:aws_client(), binary() | list(), update_ephemeris_request(), proplists:proplist()) ->
    {ok, ephemeris_id_response(), tuple()} |
    {error, any()} |
    {error, update_ephemeris_errors(), tuple()}.
update_ephemeris(Client, EphemerisId, Input0, Options0) ->
    Method = put,
    Path = ["/ephemeris/", aws_util:encode_uri(EphemerisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a mission profile.
%%
%% Updating a mission profile will not update the execution parameters
%% for existing future contacts.
-spec update_mission_profile(aws_client:aws_client(), binary() | list(), update_mission_profile_request()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, update_mission_profile_errors(), tuple()}.
update_mission_profile(Client, MissionProfileId, Input) ->
    update_mission_profile(Client, MissionProfileId, Input, []).

-spec update_mission_profile(aws_client:aws_client(), binary() | list(), update_mission_profile_request(), proplists:proplist()) ->
    {ok, mission_profile_id_response(), tuple()} |
    {error, any()} |
    {error, update_mission_profile_errors(), tuple()}.
update_mission_profile(Client, MissionProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"groundstation">>},
    Host = build_host(<<"groundstation">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
